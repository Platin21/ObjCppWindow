//
//  main.mm
//  ObjCppWindow
//
//  Created by Armin Hamar on 19.11.17.
//  Copyright © 2017 Armin Hamar. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "PAViewController.h"

int main(int argc, const char * argv[])
{
    NSApplication* myApp = NSApplication.sharedApplication;
    PAViewController* viewController = [[PAViewController alloc] init];
    myApp.mainMenu = viewController.mainMenu;
    myApp.delegate = viewController;
    [myApp run];
    return 0;
};
