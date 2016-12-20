//
//  NSManagedObject+TDParse.h
//  CoreData
//
//  Created by tutitutituti on 12/20/16.
//  Copyright © 2016 td. All rights reserved.
//

#import <CoreData/CoreData.h>
#import "TDManagedObjectProtocol.h"

extern NSString *const TDApplicationWillSaveToPersistentStore;
extern NSString *const TDApplicationDidSaveToPersistentStore;

@interface NSManagedObject () <TDManagedObjectProtocol>

@end

@interface NSManagedObject (TDParse)

#pragma mark - Query/Update
- (void)td_save;
- (void)td_delete;

#pragma mark - Parse
+ (instancetype)td_getObjectWithDictionary:(NSDictionary *)dictionary inContext:(NSManagedObjectContext *)context;
+ (instancetype)td_updateObjectWithDictionary:(NSDictionary *)dictionary inContext:(NSManagedObjectContext *)context;

@end
