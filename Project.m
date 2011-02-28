// 
//  Project.m
//  RKTest2
//
//  Created by Stephan Eletzhofer on 25.02.11.
//  Copyright 2011 Nexiles GmbH. All rights reserved.
//

#import "Project.h"


@implementation Project 

@dynamic name;
@dynamic text;
@dynamic identifier;
@dynamic tasks;

#pragma mark RKObjectMappable methods

+ (NSDictionary*)elementToPropertyMappings {
	return [NSDictionary dictionaryWithKeysAndObjects:
			@"id", @"identifier",
			@"name", @"name",
			@"text", @"text",
			nil];
}

+ (NSDictionary*)elementToRelationshipMappings {
	return [NSDictionary dictionaryWithKeysAndObjects:
			@"tasks", @"tasks",
            nil];
}

+ (NSString*)primaryKeyProperty {
	return @"identifier";
}

- (NSString*)description {
	return [NSString stringWithFormat:@"<Project id=%@ name=%@ text=%@ tasks: %@>", self.identifier, self.name, self.text, self.tasks];
}


@end
