//
//  main.m
//  timeAfterTime
//
//  Created by Laurence Wingo on 12/9/12.
//  Copyright (c) 2012 Laurence Wingo. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        
        NSDate *now = [NSDate date];
        double seconds = [now timeIntervalSince1970];
        double hourly = [now timeIntervalSinceNow];
        NSLog(@"It has been %f seconds since the start of 1970 %f.", seconds, hourly);
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1986];
        [comps setMonth:1];
        [comps setDay:1];
        [comps setHour:12];
        [comps setMinute:35];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        double LaurenceTimeHere = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"Laurence you have been around for %f.", LaurenceTimeHere);
        
        
        NSTimeZone *decaturTimeZone = [NSTimeZone systemTimeZone];
        
        NSLog(@"The timezone of my computer is %@", decaturTimeZone);
        
        BOOL zoneChecker = [decaturTimeZone isDaylightSavingTime];
        
        if (zoneChecker) {
            NSLog(@"Right on its daylightsavings time");}
            else 
            { NSLog(@"Fuck no it aint daylight savings time");}
        
            
        NSHost *wingsComputer = [NSHost currentHost];
        
        NSLog(@"Here is your information sir: %@", wingsComputer.localizedName);
        
        
        
        NSDate *rightNow = [NSDate date];
        NSDate *tommorrowFuck = [rightNow dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterdayGGHHONNE = [rightNow dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        NSArray *dateList = [[NSArray alloc] initWithObjects:rightNow, tommorrowFuck, yesterdayGGHHONNE, nil];
        NSLog(@"There are %lu dates", [dateList count]);
        
        NSString *bagels = [[NSString alloc] initWithFormat:@"bagels"];
        NSString *greenBeans = [[NSString alloc] initWithFormat:@"green beans"];
        NSString *blueberrys = [[NSString alloc] initWithFormat:@"blueberrys rasberrys"];
        
        NSArray *groceryList = [[NSArray alloc] initWithObjects:bagels, greenBeans, blueberrys, nil];
        
        
        NSUInteger groceriesToBuy = [groceryList count];
        for (int i = 0; i < groceriesToBuy; i++) {
            NSString *q = [groceryList objectAtIndex:i];
            
            NSLog(@"Here is the grocery list biiyytttcheeessee: %@", q);
        }
        
        
        NSLog(@"Here is my grocery list: %@", groceryList);
        
                                 
                                 
                                 
    return 0;
}
}

