//
//  Task.h
//  RKTest2
//
//  Created by Stephan Eletzhofer on 28.02.11.
//  Copyright 2011 Nexiles GmbH. All rights reserved.
//

#import <RestKit/RestKit.h>
#import <RestKit/CoreData/CoreData.h>

@class Project;

@interface Task :  RKManagedObject  
{
}

@property (nonatomic, retain) NSNumber * done;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSNumber * identifier;
@property (nonatomic, retain) NSString * desc;
@property (nonatomic, retain) Project * project;

@end



