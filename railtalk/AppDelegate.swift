//
//  AppDelegate.swift
//  railtalk
//
//  Created by Jeremy Molayem on 1/18/16.
//  Copyright © 2016 Jeremy Molayem. All rights reserved.
//

import UIKit
import Wit
import AVFoundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        do {
            // Override point for customization after application launch.
            
            //        // Override point for customization after application launch.
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayAndRecord)
        } catch _ {
        }
        do {
            try AVAudioSession.sharedInstance().setActive(true)
        } catch _ {
        }
        
        Wit.sharedInstance().accessToken = "UQ7PFPWHJYKREQHV7ZLF5QFL63XQMX2I"
        //enabling detectSpeechStop will automatically stop listening the microphone when the user stop  talking
        Wit.sharedInstance().detectSpeechStop = WITVadConfig.DetectSpeechStop
        
        //        [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryPlayAndRecord error:nil];
        //        [[AVAudioSession sharedInstance] setActive:YES error:nil];
        //
        //        [Wit sharedInstance].accessToken = @"YOUR_ACCESS_TOKEN"; // replace xxx by your Wit.AI access token
        //        [Wit sharedInstance].detectSpeechStop = WITVadConfigDetectSpeechStop;
        return true
    }
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}