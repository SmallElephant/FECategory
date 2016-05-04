//
//  NSDate+FEDateCompare.h
//  FELabel
//
//  Created by FlyElephant on 16/5/4.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (FEDateCompare)

-(NSComparisonResult)compareDateByDay:(NSDate *)date;

-(BOOL)isLaterThanOrEqual:(NSDate *)date;

-(BOOL)isLaterThan:(NSDate *)date;

-(BOOL)isEarlierOrEqual:(NSDate *)date;

-(BOOL)isEarlierThan:(NSDate *)date;

-(BOOL)isEqualTo:(NSDate *)date;

@end
