//
//  AppDelegate.h
//  IOConnectCallScalarMethod_Issue_AppleFB
//
//  Created by William Gustafson on 5/10/21.
//

#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>
#import <IOKit/pwr_mgt/IOPMLib.h>
#import <Cocoa/Cocoa.h>
#import <IOKit/pwr_mgt/IOPM.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    IOPMAssertionID su_system_Id;
    IOPMAssertionID su_display_Id;
    IOPMAssertionID tr_system_Id;
    IOPMAssertionID tr_display_Id;
}
@end

