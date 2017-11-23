#import "PAViewController.h"

#define APP_NAME @"TEST"

@implementation PAViewController

-(id)init
{
    self.win = [[NSWindow alloc] initWithContentRect: CGRectMake(0, 0, 600, 800)
                                           styleMask: NSWindowStyleMaskClosable |
                                                      NSWindowStyleMaskMiniaturizable |
                                                      NSWindowStyleMaskResizable |
                                                      NSWindowStyleMaskTitled
                                             backing: NSBackingStoreBuffered
                                               defer:NO
                                              screen:NSScreen.screens[0]];
    
    self.mainMenu = [[NSMenu alloc] initWithTitle:APP_NAME];
    
    return self;
};

-(void) applicationDidFinishLaunching:(NSNotification *)notification
{
    const NSString* InterfaceColor = [NSUserDefaults.standardUserDefaults stringForKey:@"AppleInterfaceStyle"] ? @"Dark" : @"Light";
    
    if([InterfaceColor isEqual: @"Dark"])
    {
        /*
        I miss this code here if someone wants add this! from the swift version
        */
        self.win.appearance = [NSAppearance appearanceNamed:NSAppearanceNameVibrantDark];
    }
    
    self.win.opaque = NO;
    [self.win center];
    self.win.acceptsMouseMovedEvents = YES;
    self.win.releasedWhenClosed = YES;
    [self.win makeKeyAndOrderFront:self];
    self.win.menu = self.mainMenu;
    self.win.title = APP_NAME;
    
    NSMenuItem* prefrenceMenuItem = [[NSMenuItem alloc] initWithTitle:@"Application" action:nil keyEquivalent:@""];
    NSMenu* prefrencePane = [[NSMenu alloc]init];
    
    [prefrencePane addItemWithTitle:@"Quit" action:@selector(terminate:) keyEquivalent:@"q"];
    [self.mainMenu addItem: prefrenceMenuItem];
    prefrenceMenuItem.submenu = prefrencePane;
};

/*
-(void) applicationWillTerminate:(NSNotification *)notification
{
    
};
*/

-(BOOL) windowShouldClose:(NSWindow *)sender
{
    [NSApplication.sharedApplication terminate:self];
    return true;
};

@end
