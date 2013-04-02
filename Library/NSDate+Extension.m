//
//  NSDate+Extension.m
//  Library
//
//  Created by Lluís Gómez Hernando on 22/03/13.
//  Copyright (c) 2013 Lafosca. All rights reserved.
//

#import "NSDate+Extension.h"

@implementation NSDate (Extension)

+ (NSDate *) dateWithYear:(NSInteger)year Month:(NSInteger)month Day:(NSInteger)day
{
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    NSDate *date = [[NSDate alloc] init];
    NSDateComponents *dateComponents = [calendar components:(NSCalendarCalendarUnit | NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit) fromDate:date];
    [dateComponents setYear:year];
    [dateComponents setMonth:month];
    [dateComponents setDay:day];
    
    return [calendar dateFromComponents:dateComponents];
}

@end
