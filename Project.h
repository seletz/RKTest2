//
//  Project.h
//  RKTest2
//
//  Created by Stephan Eletzhofer on 25.02.11.
//  Copyright 2011 Nexiles GmbH. All rights reserved.
//

#import <RestKit/RestKit.h>
#import <RestKit/CoreData/CoreData.h>


@interface Project :  RKManagedObject  
{
    NSSet *tasks;
}

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * text;
@property (nonatomic, retain) NSNumber * identifier;
@property (nonatomic, retain) NSSet * tasks;

@end



