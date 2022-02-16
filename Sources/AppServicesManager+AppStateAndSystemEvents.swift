//
//  AppServicesManager+AppStateAndSystemEvents.swift
//  PluggableAppDelegate
//
//  Created by Mikhail Pchelnikov on 31/07/2018.
//  Copyright © 2018 Michael Pchelnikov. All rights reserved.
//

import UIKit

@available(iOS 10.0, *)
extension PluggableApplicationDelegate {

 
    open func applicationDidBecomeActive(_ application: UIApplication) {
        for service in _services {
            service.applicationDidBecomeActive?(application)
        }
    }


    open func applicationWillResignActive(_ application: UIApplication) {
        for service in _services {
            service.applicationWillResignActive?(application)
        }
    }


    open func applicationDidEnterBackground(_ application: UIApplication) {
        for service in _services {
            service.applicationDidEnterBackground?(application)
        }
    }


    open func applicationWillEnterForeground(_ application: UIApplication) {
        for service in _services {
            service.applicationWillEnterForeground?(application)
        }
    }


    open func applicationWillTerminate(_ application: UIApplication) {
        for service in _services {
            service.applicationWillTerminate?(application)
        }
    }


    open func applicationProtectedDataWillBecomeUnavailable(_ application: UIApplication) {
        for service in _services {
            service.applicationProtectedDataWillBecomeUnavailable?(application)
        }
    }


    open func applicationProtectedDataDidBecomeAvailable(_ application: UIApplication) {
        for service in _services {
            service.applicationProtectedDataDidBecomeAvailable?(application)
        }
    }


    open func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        for service in _services {
            service.applicationDidReceiveMemoryWarning?(application)
        }
    }


    open func applicationSignificantTimeChange(_ application: UIApplication) {
        for service in _services {
            service.applicationSignificantTimeChange?(application)
        }
    }
}
