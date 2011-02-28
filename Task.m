// 
//  Task.m
//  RKTest2
//
//  Created by Stephan Eletzhofer on 28.02.11.
//  Copyright 2011 Nexiles GmbH. All rights reserved.
//

#import "Task.h"
#import "Project.h"

@implementation Task 

@dynamic done;
@dynamic title;
@dynamic identifier;
@dynamic desc;
@dynamic project;

+ (NSDictionary*)elementToPropertyMappings {
	return [NSDictionary dictionaryWithKeysAndObjects:
			@"id", @"identifier",
			@"title", @"title",
			@"description", @"desc",
            @"done", @"done",
			nil];
}

+ (NSDictionary*)elementToRelationshipMappings {
	return [NSDictionary dictionaryWithKeysAndObjects:
			@"project", @"project",
            nil];
}

+ (NSString*)primaryKeyProperty {
	return @"identifier";
}

- (NSString*)description {
	return [NSString stringWithFormat:@"<Task id=%@ title=%@ done=%@>", self.identifier, self.title, self.done];
}


@end
