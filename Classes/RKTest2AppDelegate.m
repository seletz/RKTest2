//
//  RKTest2AppDelegate.m
//  RKTest2
//
//  Created by Stephan Eletzhofer on 25.02.11.
//  Copyright 2011 Nexiles GmbH. All rights reserved.
//

#include <RestKit/RestKit.h>
#include <RestKit/ObjectMapping/ObjectMapping.h>
#include <RestKit/CoreData/CoreData.h>

#import "RKTest2AppDelegate.h"
#import "Project.h"
#import "Task.h"

@implementation RKTest2AppDelegate

@synthesize window;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    NSLog(@"%s", __func__);

    // Initialize RestKit
    RKObjectManager *objectManager = [RKObjectManager objectManagerWithBaseURL:@"http://127.0.0.1:8080"];

    // Initialize object store
    objectManager.objectStore = [[[RKManagedObjectStore alloc] initWithStoreFilename:@"RKTest2.sqlite"] autorelease];

    RKDynamicRouter *router =  (RKDynamicRouter *)objectManager.router;
    //[router routeClass: [Project class] toResourcePath: @"/projects/(identifier)"];
    //[router routeClass: [Task class] toResourcePath: @"/tasks/(identifier)"];
    [router routeClass: [Project class] toResourcePath: @"/projects"];
    [router routeClass: [Task class] toResourcePath: @"/tasks"];

    
    [objectManager loadObjectsAtResourcePath:@"/tasks"
                               objectClass:[Task class]
                                  delegate:self];

    [objectManager loadObjectsAtResourcePath:@"/projects"
                                 objectClass:[Project class]
                                    delegate:self];
    
    //[objectManager loadObjectsAtResourcePath:@"/projects/1"
                                 //objectClass:[Project class]
                                    //delegate:self];

    [self.window makeKeyAndVisible];    
    return YES;
}

#pragma mark -
#pragma mark RKObjectLoaderDelegate methods

- (void)objectLoader:(RKObjectLoader*)objectLoader didLoadObjects:(NSArray*)objects
{
    NSLog(@"%s", __func__);
    NSLog(@"%s: objects=%@", __func__, objects);
}

- (void)objectLoader:(RKObjectLoader*)objectLoader didFailWithError:(NSError*)error
{
    NSLog(@"%s", __func__);
    NSLog(@"%s: error=%@", __func__, error);
    
    UIAlertView* alert = [[[UIAlertView alloc] initWithTitle:@"Error" message:[error localizedDescription] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] autorelease];
    [alert show];
}



#pragma mark -
#pragma mark Memory management


- (void)dealloc {
    [window release];
    [super dealloc];
}

@end

// vim: set sw=4 ts=4 expandtab:
