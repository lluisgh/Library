//
//  NSDate+Extension.h
//  Library
//
//  Created by Lluís Gómez Hernando on 22/03/13.
//  Copyright (c) 2013 Lafosca. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Extension)

+ (NSDate *) dateWithYear:(NSInteger)year Month:(NSInteger)month Day:(NSInteger)day;

- (NSString *)stringWithDayMonthYear;

@end
