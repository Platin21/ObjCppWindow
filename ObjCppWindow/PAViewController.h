#import <AppKit/AppKit.h>

@interface PAViewController : NSObject <NSApplicationDelegate,NSWindowDelegate>
@property NSMenu* mainMenu;
@property NSWindow* win;

-(id) init;

-(void) applicationDidFinishLaunching:(NSNotification *)notification;

/*-(void) applicationWillTerminate:(NSNotification *)notification;*/

-(BOOL) windowShouldClose:(NSWindow *)sender;

@end
