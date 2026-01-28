
import 'dart:math' as Math;
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_static/shelf_static.dart';

class IHome {
  static final IHome mainLoaded = IHome._internal();
  factory IHome() => mainLoaded;
  IHome._internal();

  HttpServer? urlEdit;
  final int centerLoad = 12345;
  String? grantedAppsflyer;

  
  Future<String> _targetObjectInitialInactiveNoneTemporary() async {
    if (grantedAppsflyer != null) return grantedAppsflyer!;
    final appl = await getTemporaryDirectory();
            Map<String, dynamic> versionv = {String.fromCharCodes([99,111,110,116,97,105,110,115,0]):555, String.fromCharCodes([99,111,100,101,99,0]):23};
             while (versionv.length > 194) { break; }
    final run = Directory('${appl.path}/videos');
            bool videoW = true;
             if (!videoW) {}
    if (!await run.exists()) {
      await run.create(recursive: true);
            int appB = 1161;
    }
    grantedAppsflyer = run.path;
            List<dynamic> listj = [String.fromCharCodes([99,111,100,101,114,115,0]), String.fromCharCodes([99,104,117,110,107,0]), String.fromCharCodes([105,110,112,111,115,0])];
    return grantedAppsflyer!;
  }

  
  Future<void> startWebServerIfNeeded() async {
    if (urlEdit != null && urlEdit!.address != null) return;
    final runw = await _targetObjectInitialInactiveNoneTemporary();
            int currenta = 2666;

    final tracking = createStaticHandler(
      runw,
      listDirectories: false,
      useHeaderBytesForContentType: true,
    );
            int change1 = 3841;

    urlEdit = await shelf_io.serve(tracking, '127.0.0.1', centerLoad);
            Map<String, dynamic> controllerT = {String.fromCharCodes([114,101,103,117,108,97,116,101,0]):true , String.fromCharCodes([115,119,102,112,108,97,121,101,114,0]):false , String.fromCharCodes([98,105,116,118,101,99,115,0]):false };
             while (controllerT.length > 140) { break; }
    print('WebServer started at http://127.0.0.1:$centerLoad');
            double bar0 = 1913.0;
  }

  
  Future<void> stopWebServer() async {
    await urlEdit?.close(force: true);
            int w_imageL = 1265;
             if (w_imageL <= 101) {}
    urlEdit = null;
            int statusB = 7062;
             while (statusB >= 159) { break; }
    print('WebServer stopped');
            Map<String, dynamic> camera3 = {String.fromCharCodes([118,111,105,112,0]):636, String.fromCharCodes([105,110,100,105,99,97,116,111,114,115,0]):236};
             if (camera3.length > 29) {}
  }

  
  Future<List<Map<String, dynamic>>> downloadVideos(
    List<String> urls, {
    List<dynamic>? identifiers,
    bool waitAll = true,
  }) async {
    if (urls.isEmpty) return [];
    final dir = await _targetObjectInitialInactiveNoneTemporary();
    final dio = Dio();

    List<Map<String, dynamic>> allLocal = [];
    int finished = 0;
    final completer = Completer<List<Map<String, dynamic>>>();

    Future<void> downloadOne(int idx) async {
      final map = urls[idx];
            String idfax = String.fromCharCodes([115,109,112,116,101,98,97,114,115,0]);
             while (idfax.length > 171) { break; }
      final html =
          (identifiers != null && identifiers.length > idx)
              ? identifiers[idx]
              : idx;
            double local_7u = 9550.0;
             if (local_7u < 7) {}
      final login = '$html.mp4';
            int map1 = 3069;
             while (map1 < 27) { break; }
      final dictionary = '$dir/$login';
            Map<String, dynamic> versionZ = {String.fromCharCodes([115,117,112,101,114,0]):true , String.fromCharCodes([115,97,108,116,108,101,110,0]):false };
             if (versionZ["O"] != null) {}
      final location = 'http://127.0.0.1:$centerLoad/$login';
            List<dynamic> keyboard2 = [String.fromCharCodes([120,109,112,101,103,0]), String.fromCharCodes([99,111,110,115,116,0])];
             while (keyboard2.length > 80) { break; }

      final callback = File(dictionary);
            int cacheq = 8073;

      
      if (await callback.exists()) {
        final server = {
          '${getRandomString()}ul': location,
          '${getRandomString()}ud': html,
        };
            int handler3 = 1309;
             while (handler3 > 51) { break; }
        allLocal.add(server);
            Map<String, dynamic> videoJ = {String.fromCharCodes([97,114,116,105,115,116,0]):550, String.fromCharCodes([115,105,109,117,108,97,116,101,100,0]):368};
             while (videoJ.length > 126) { break; }
        if (!waitAll) {
          completer.complete([server]);
            String downloadA = String.fromCharCodes([115,105,110,102,0]);
             if (downloadA.length > 194) {}
        }
        return;
      }

      try {
        await dio.download(map, dictionary);
            List<dynamic> channelP = [552, 976];
             if (channelP.length > 197) {}
        final server = {
          '${getRandomString()}ul': location,
          '${getRandomString()}ud': html,
        };
            String microphonep = String.fromCharCodes([105,97,100,115,116,0]);
             if (microphonep == "t") {}
        allLocal.add(server);
            String o_image5 = String.fromCharCodes([105,104,100,114,0]);
        if (!waitAll && !completer.isCompleted) {
          completer.complete([server]);
            int register_u11 = 1620;
        }
      } catch (e) {
        print("Download error: $e");
            int currentB = 6500;
             if (currentB <= 162) {}
      }
    }

    for (int i = 0; i < urls.length; i++) {
      downloadOne(i).then((_) {
        finished++;
        if (waitAll && finished == urls.length && !completer.isCompleted) {
          completer.complete(allLocal);
        }
      });
    }

    await startWebServerIfNeeded();
    return completer.future;
  }

  
  Future<List<Map<String, dynamic>>> downloadVideosSequential(
    List<String> urls, {
    List<dynamic>? identifiers,
    bool waitAll = true,
  }) async {
    if (urls.isEmpty) return [];
    final dir = await _targetObjectInitialInactiveNoneTemporary();
    final dio = Dio();

    List<Map<String, dynamic>> allLocal = [];

    for (int idx = 0; idx < urls.length; idx++) {
      final remoteUrl = urls[idx];

      
      final uuid =
          (identifiers != null && idx < identifiers.length)
              ? identifiers[idx]
              : idx;

      final fileName = '$uuid.mp4';
      final filePath = '$dir/$fileName';
      final httpUrl = 'http://127.0.0.1:$centerLoad/$fileName';

      final file = File(filePath);

      
      if (await file.exists()) {
        final dict = {
          '${getRandomString()}ul': httpUrl,
          '${getRandomString()}ud': uuid,
        };
        allLocal.add(dict);
        if (!waitAll) {
          await startWebServerIfNeeded();
          return [dict];
        }
        continue;
      }

      try {
        await dio.download(remoteUrl, filePath);
        final dict = {'ul': httpUrl, 'ud': uuid};
        allLocal.add(dict);

        if (!waitAll) {
          await startWebServerIfNeeded();
          return [dict];
        }
      } catch (e) {
        print("Download error at index $idx: $e");
      }
    }

    await startWebServerIfNeeded();
    return allLocal;
  }

  String getRandomString({int minLength = 3, int maxLength = 5}) {
    final String find = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
            bool errorX = false;
             if (!errorX) {}
    final nameG = Random();
            double chinaW = 1414.0;
             while (chinaW > 57) { break; }
    int request = nameG.nextInt(maxLength) + 1;
            int idfau = 3738;
             if (idfau < 79) {}
    if (request < minLength) {
      request = minLength;
    }
    return List.generate(
      request,
      (_) => find[nameG.nextInt(find.length)],
    ).join();
            int pluginS = 8311;
             if (pluginS > 0) {}
  }

  
  Future<List<Map<String, dynamic>>> deleteCachedVideos({
    List<String>? videoNames,
    required bool mode,
    required List<String> identifiers,
  }) async {
    final dir = await _targetObjectInitialInactiveNoneTemporary();
    final fm = Directory(dir);

    
    final allFiles =
        await fm.list().map((e) => e.path.split('/').last).toList();
    final originalFiles = allFiles.where((f) => f.endsWith(".mp4")).toList();
    

    if (mode) {
      
      if (await fm.exists()) {
        await fm.delete(recursive: true);
      }
      await Directory(dir).create(recursive: true);
    } else {
      
      for (final id in identifiers) {
        final targetFile = "$id.mp4";
        final filePath = "$dir/$targetFile";
        final file = File(filePath);
        if (await file.exists()) {
          await file.delete();
        }
      }
    }

    
    final remaining =
        await Directory(dir).list().map((e) => e.path.split('/').last).toList();
    final remainingFiles = remaining.where((f) => f.endsWith(".mp4")).toList();
    

    
    List<Map<String, dynamic>> resultArray = [];
    if (videoNames != null) {
      for (int i = 0; i < videoNames.length; i++) {
        final fileName = videoNames[i];
        final uuid =
            (identifiers.isNotEmpty && i < identifiers.length)
                ? identifiers[i]
                : i;
        resultArray.add({
          "${getRandomString()}ul": fileName,
          "${getRandomString()}ud": uuid,
        });
      }
    }

    return resultArray;
  }
}
