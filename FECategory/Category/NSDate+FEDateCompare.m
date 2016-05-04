//
//  NSDate+FEDateCompare.m
//  FELabel
//
//  Created by FlyElephant on 16/5/4.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "NSDate+FEDateCompare.h"

@implementation NSDate (FEDateCompare)

-(NSComparisonResult)compareDateByDay:(NSDate *)date{
    
    NSDate *fromDate=[self formatDateByComponent:self];
    NSDate *toDate=[self formatDateByComponent:date];
    
    NSComparisonResult result=[fromDate compare:toDate];
    switch (result) {
        case NSOrderedAscending: {
            return NSOrderedAscending;
            break;
        }
        case NSOrderedSame: {
            return NSOrderedSame;
            break;
        }
        case NSOrderedDescending: {
            return NSOrderedDescending;
            break;
        }
    }
}

-(BOOL)isLaterThanOrEqual:(NSDate *)date{
    NSDate *fromDate=[self formatDateByComponent:self];
    NSDate *toDate=[self formatDateByComponent:date];
    return !([fromDate compare:toDate]==NSOrderedAscending);
}

-(BOOL)isLaterThan:(NSDate *)date{
    NSDate *fromDate=[self formatDateByComponent:self];
    NSDate *toDate=[self formatDateByComponent:date];
    return ([fromDate compare:toDate]==NSOrderedDescending);
}

-(BOOL)isEarlierOrEqual:(NSDate *)date{
    NSDate *fromDate=[self formatDateByComponent:self];
    NSDate *toDate=[self formatDateByComponent:date];
    return !([fromDate compare:toDate]==NSOrderedDescending);
}

-(BOOL)isEarlierThan:(NSDate *)date{
    NSDate *fromDate=[self formatDateByComponent:self];
    NSDate *toDate=[self formatDateByComponent:date];
    return ([fromDate compare:toDate]==NSOrderedAscending);
}

-(BOOL)isEqualTo:(NSDate *)date{
    NSDate *fromDate=[self formatDateByComponent:self];
    NSDate *toDate=[self formatDateByComponent:date];
    return ([fromDate compare:toDate]==NSOrderedSame);
}

#pragma mark - private

-(NSDate *)formatDateByComponent:(NSDate *)date{
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDateComponents *components = [cal components:(NSCalendarUnitEra | NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay) fromDate:date];
    return [cal dateFromComponents:components];
}

@end
