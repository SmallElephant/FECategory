//
//  ViewController.m
//  FECategory
//
//  Created by FlyElephant on 16/5/4.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "ViewController.h"
#import "NSDate+FEDateCompare.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //    NSInteger floor=;
    NSLog(@"%f",floor(10-100));
    
    NSLog(@"%@", NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES));
//    [self compareDate];
//    [self compareDate1];
//    [self compareDate2];
//    [self compareDate3];
//    [self compareDate4];
    [self compareDate5];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)compareDate{
    //FlyElephant
    NSDate *currentDate=[NSDate date];
    NSString *dateString = @"2016-05-04 16:59:00";
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    NSDate *mydate=[formatter dateFromString:dateString];
    NSComparisonResult result=[currentDate compare:mydate];
    switch (result) {
        case NSOrderedAscending: {
            NSLog(@"FlyElephant:%@--时间小于---%@",currentDate,mydate);
            break;
        }
        case NSOrderedSame: {
            NSLog(@"FlyElephant:%@--时间等于---%@",currentDate,mydate);
            break;
        }
        case NSOrderedDescending: {
            NSLog(@"FlyElephant:%@--时间大于---%@",currentDate,mydate);
            break;
        }
    }
    
}

-(void)compareDate1{
    NSDate *currentDate=[NSDate date];
    NSString *dateString = @"2016-06-05 16:59:00";
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    NSDate *mydate=[formatter dateFromString:dateString];
    
    NSCalendar *calendar=[NSCalendar new];
    NSComparisonResult result=[calendar compareDate:currentDate toDate:mydate toUnitGranularity:NSCalendarUnitDay];
    switch (result) {
        case NSOrderedAscending: {
            NSLog(@"%@--时间小于---%@",currentDate,mydate);
            break;
        }
        case NSOrderedSame: {
            NSLog(@"%@--时间等于---%@",currentDate,mydate);
            break;
        }
        case NSOrderedDescending: {
            NSLog(@"%@--时间大于---%@",currentDate,mydate);
            break;
        }
    }
}

-(void)compareDate2{
    unsigned int flags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSCalendar* calendar = [NSCalendar currentCalendar];
    NSString *dateString = @"2016-06-05 16:59:00";
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *mydate=[formatter dateFromString:dateString];
    
    NSDateComponents* components = [calendar components:flags fromDate:mydate];
    
    NSDate *dateOnly = [calendar dateFromComponents:components];
    NSLog(@"%@",dateOnly);
}

-(void)compareDate3{
    NSString *dateString = @"2016-05-05 16:59:00";
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    NSDate *mydate=[formatter dateFromString:dateString];
    BOOL today = [[NSCalendar currentCalendar] isDateInToday:mydate];
    if (today) {
        NSLog(@"是今天:%@",mydate);
    }else{
        NSLog(@"不是今天:%@",mydate);
    }
}

-(void)compareDate4{
    NSString *fromDateStr= @"2016-05-05 00:00:00";
    NSString *toDateStr= @"2016-05-05 8:59:00";
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *fromDate=[formatter dateFromString:fromDateStr];
    NSDate *toDate=[formatter dateFromString:toDateStr];
    toDate=[NSDate date];
    
    NSComparisonResult result=[fromDate compareDateByDay:[NSDate date]];
    switch (result) {
        case NSOrderedAscending: {
            NSLog(@"%@--时间小于---%@",fromDate,toDate);
            break;
        }
        case NSOrderedSame: {
            NSLog(@"%@--时间等于---%@",fromDate,toDate);
            break;
        }
        case NSOrderedDescending: {
            NSLog(@"%@--时间大于---%@",fromDate,toDate);
            break;
        }
    }
}

-(void)compareDate5{
    NSString *fromDateStr= @"2016-05-05 06:00:00";
    NSString *toDateStr= @"2016-05-05 8:59:00";
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *fromDate=[formatter dateFromString:fromDateStr];
    NSDate *toDate=[formatter dateFromString:toDateStr];
    if([fromDate isEqualTo:toDate]){
        NSLog(@"FlyElephant:%@---等于---%@",fromDate,toDate);
    }
    
    toDate=[[NSDate date] dateByAddingTimeInterval:60*60*100];
    if([fromDate isEarlierThan:toDate]){
        NSLog(@"FlyElephant:%@---小于---%@",fromDate,toDate);
    }
    toDate=[fromDate dateByAddingTimeInterval:60*60];
    if ([fromDate isEarlierOrEqual:toDate]) {
        NSLog(@"FlyElephant:%@---小于等于---%@",fromDate,toDate);
    }
    
    toDate=[[NSDate date] dateByAddingTimeInterval:-60*60*100];
    if([fromDate isLaterThan:toDate]){
        NSLog(@"FlyElephant:%@---大于---%@",fromDate,toDate);
    }
    
    toDate=[fromDate dateByAddingTimeInterval:-60*60];
    if ([fromDate isLaterThanOrEqual:toDate]) {
        NSLog(@"FlyElephant:%@---大于等于---%@",fromDate,toDate);
    }
}

@end

