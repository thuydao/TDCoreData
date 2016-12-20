//
//  NSManagedObject+TDParse.m
//  CoreData
//
//  Created by tutitutituti on 12/20/16.
//  Copyright © 2016 td. All rights reserved.
//

#import "NSManagedObject+TDParse.h"
#import <MagicalRecord/MagicalRecord.h>


NSString *const TDApplicationWillSaveToPersistentStore = @"TDApplicationWillSaveToPersistentStore";
NSString *const TDApplicationDidSaveToPersistentStore  = @"TDApplicationDidSaveToPersistentStore";

@implementation NSManagedObject (TDParse)
#pragma mark - Query/Update
- (void)td_save
{
    [[NSNotificationCenter defaultCenter] postNotificationName:TDApplicationWillSaveToPersistentStore object:self.managedObjectContext];

    [self.managedObjectContext MR_saveToPersistentStoreWithCompletion:^(BOOL contextDidSave, NSError * _Nullable error)
    {

        [[NSNotificationCenter defaultCenter] postNotificationName:TDApplicationDidSaveToPersistentStore object:self.managedObjectContext];
    }];
}

- (void)td_delete
{
    [self MR_deleteEntityInContext:self.managedObjectContext];
}


#pragma mark - Parse
+ (instancetype)td_getObjectWithDictionary:(NSDictionary *)dictionary inContext:(NSManagedObjectContext *)context
{
    @try {
        id obj = [self MR_findFirstWithPredicate:[self td_predicateWithDictionary:dictionary] inContext:context];
        if (!obj)
        {
            obj = [self MR_createEntityInContext:context];
        }

        return  obj;
    }
    @catch (NSException *exception)
    {
        NSLog(@"exception: %@",[exception description]);
        return nil;
    }
}

+ (instancetype)td_updateObjectWithDictionary:(NSDictionary *)dictionary inContext:(NSManagedObjectContext *)context
{
    @try {

        NSManagedObject *obj = [self td_getObjectWithDictionary:dictionary inContext:context];

        [obj td_updateWithDictionary:dictionary];

        [obj td_save];

        return obj;
    }
    @catch (NSException *exception)
    {
        NSLog(@"exception: %@",[exception description]);
        return nil;
    }

}

@end
