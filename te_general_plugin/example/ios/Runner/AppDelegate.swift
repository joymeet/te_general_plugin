import AppsFlyerLib
import Flutter
import GoogleAdsOnDeviceConversion
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  private let kODCFirstLaunchTimeKey = "odc_first_launch_time"
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    var googleCoInfo: String = ""
    let ud = UserDefaults.standard
    var t = ud.double(forKey: kODCFirstLaunchTimeKey)
    if t <= 0 {
      t = Date().timeIntervalSince1970
      ud.set(t, forKey: kODCFirstLaunchTimeKey)
      ud.synchronize()
    }
    let firstLaunchDate = Date(timeIntervalSince1970: t)
    ConversionManager.sharedInstance.setFirstLaunchTime(firstLaunchDate)
    ConversionManager.sharedInstance.fetchAggregateConversionInfo(
      for: .installation
    ) { aggregateConversionInfo, error in
      guard error == nil else { return }
      guard let info = aggregateConversionInfo else { return }
      guard info.count > 0 else { return }
      googleCoInfo = info
    }
    AppsFlyerLib.shared().appsFlyerDevKey = "SQYKmpZwJgStzdcCoXMA7"
    AppsFlyerLib.shared().appleAppID = "6758079156"
    AppsFlyerLib.shared().waitForATTUserAuthorization(timeoutInterval: 60)
    AppsFlyerLib.shared().delegate = self

    UNUserNotificationCenter.current().delegate = self
    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) {
      granted, error in
      if granted {
        print("通知权限已授权")
        DispatchQueue.main.async {
          application.registerForRemoteNotifications()
        }
      } else {
        print("通知权限被拒绝: \(error?.localizedDescription ?? "")")
      }
    }
    let checkController: FlutterViewController =
      window?.rootViewController as! FlutterViewController
    let checkChannel = FlutterMethodChannel(
      name: "fecheckStatus", binaryMessenger: checkController.binaryMessenger)
    checkChannel.setMethodCallHandler { (call, result) in
      if call.method == "febeginAppflyer" {
        AppsFlyerLib.shared().start()
        result(self.flyerUID())
      } else if call.method == "feTimeZ" {
        result(TimeZone.current.identifier)
      } else if call.method == "fegetIDFV" {
        result(UIDevice.current.identifierForVendor?.uuidString)
      } else if call.method == "fegetCurr" {
        result(self.isCurrentRegionChina())
      } else if call.method == "fetejdtdgdgtga" {
        result(googleCoInfo)
      }
    }
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  override func application(
    _ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data
  ) {
    let tokenBytes = deviceToken.map { $0 }
    var tokenString = ""
    for byte in tokenBytes {
      tokenString += String(format: "%02x", byte)
    }
    print("APNS Device Token: \(tokenString)")
    let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
    let channel = FlutterMethodChannel(
      name: "requirePushToken", binaryMessenger: controller.binaryMessenger)
    channel.invokeMethod("requirePushTokenReceived", arguments: tokenString)
  }
  func isCurrentRegionChina() -> Bool {
    let currentRegionCode = Locale.current.regionCode
    return currentRegionCode == "CN" || currentRegionCode == "HK" || currentRegionCode == "TW"
      || currentRegionCode == "MO"
  }

  func flyerUID() -> String {
    return AppsFlyerLib.shared().getAppsFlyerUID()
  }
}

extension AppDelegate: AppsFlyerLibDelegate {

  override func application(
    _ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]
  ) -> Bool {
    AppsFlyerLib.shared().handleOpen(url, options: options)
    return true
  }

  override func application(
    _ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any
  ) -> Bool {
    AppsFlyerLib.shared().handleOpen(
      url, sourceApplication: sourceApplication, withAnnotation: annotation)
    return true
  }

  override func application(
    _ application: UIApplication, continue userActivity: NSUserActivity,
    restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void
  ) -> Bool {
    AppsFlyerLib.shared().continue(userActivity, restorationHandler: nil)
    return true
  }

  func onConversionDataFail(_ error: Error) {
    // 处理转换数据失败
    print("AppsFlyer 转换数据失败: \(error.localizedDescription)")
  }

  func onConversionDataSuccess(_ conversionInfo: [AnyHashable: Any]) {

  }
}
