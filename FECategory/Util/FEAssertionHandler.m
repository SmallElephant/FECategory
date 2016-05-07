//
//  FEAssertionHandler.m
//  FECategory
//
//  Created by FlyElephant on 16/5/5.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

#import "FEAssertionHandler.h"

@implementation FEAssertionHandler

-(void)handleFailureInMethod:(SEL)selector object:(id)object file:(NSString *)fileName lineNumber:(NSInteger)line description:(NSString *)format, ...{
    NSLog(@"FlyElephant-FEAssertionHandler: Method %@ for object %@ in %@--line:%li", NSStringFromSelector(selector), object, fileName, (long)line);
}

-(void)handleFailureInFunction:(NSString *)functionName file:(NSString *)fileName lineNumber:(NSInteger)line description:(NSString *)format, ...{
    NSLog(@"FlyElephant-FEAssertionHandler:Function (%@) in %@--line:%li", functionName, fileName, (long)line);
}

@end
