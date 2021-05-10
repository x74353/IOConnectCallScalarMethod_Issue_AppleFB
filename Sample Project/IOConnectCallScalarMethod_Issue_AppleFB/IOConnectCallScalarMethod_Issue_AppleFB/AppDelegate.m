//
//  AppDelegate.m
//  IOConnectCallScalarMethod_Issue_AppleFB
//
//  Created by William Gustafson on 5/10/21.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [_window setLevel:NSFloatingWindowLevel];
    [_window makeKeyAndOrderFront:nil];
}

// ------------------------------- > START CLOSED-DISPLAY MODE

- (IBAction) enableCDM: (id) sender
{
    NSLog(@"CDM will be enabled");
    
    io_connect_t connection = IO_OBJECT_NULL;
    io_service_t pmRootDomain = IOServiceGetMatchingService(kIOMasterPortDefault, IOServiceMatching("IOPMrootDomain"));
    
    IOServiceOpen (pmRootDomain, current_task(), 0, &connection);
    RootDomain_SetDisableClamShellSleep(connection, YES);
    IOServiceClose(connection);
    
    NSLog(@"CDM has been enabled");
}

- (IBAction) disableCDM: (id) sender
{
    NSLog(@"CDM will be disabled");
    
    io_connect_t connection = IO_OBJECT_NULL;
    io_service_t pmRootDomain = IOServiceGetMatchingService(kIOMasterPortDefault, IOServiceMatching("IOPMrootDomain"));
    
    IOServiceOpen (pmRootDomain, current_task(), 0, &connection);
    RootDomain_SetDisableClamShellSleep(connection, NO);
    IOServiceClose(connection);
    
    NSLog(@"CDM has been disabled");
}

IOReturn RootDomain_SetDisableClamShellSleep (io_connect_t root_domain_connection, bool disable)
{
    uint32_t num_outputs = 0;
    uint32_t input_count = 1;
    uint64_t input[input_count];
    input[0] = (uint64_t) { disable ? 1 : 0 };

    return IOConnectCallScalarMethod(root_domain_connection, kPMSetClamshellSleepState, input, input_count, NULL, &num_outputs);
}

// ------------------------------- > END CLOSED-DISPLAY MODE


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
