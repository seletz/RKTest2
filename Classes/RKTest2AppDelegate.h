//
//  RKTest2AppDelegate.h
//  RKTest2
//
//  Created by Stephan Eletzhofer on 25.02.11.
//  Copyright 2011 Nexiles GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RKTest2AppDelegate : NSObject <UIApplicationDelegate, RKObjectLoaderDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

