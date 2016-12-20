//
//  TDProtocol.h
//  CoreData
//
//  Created by tutitutituti on 12/19/16.
//  Copyright © 2016 td. All rights reserved.
//


@protocol TDManagedObjectProtocol <NSObject>

@required
+ (NSPredicate *)td_predicateWithDictionary:(NSDictionary *)dictionary;
- (void)td_updateWithDictionary:(NSDictionary *)dictionary;

@end
