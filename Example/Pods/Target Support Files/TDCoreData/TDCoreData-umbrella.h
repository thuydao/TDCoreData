#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "NSManagedObject+TDParse.h"
#import "TDCoreData.h"
#import "TDManagedObjectProtocol.h"

FOUNDATION_EXPORT double TDCoreDataVersionNumber;
FOUNDATION_EXPORT const unsigned char TDCoreDataVersionString[];

