#import "DateHelper.h"

@implementation DateHelper

#pragma mark - First

-(NSString *)monthNameBy:(NSUInteger)monthNumber {
    
    NSString *monthNumberString = [@(monthNumber) stringValue];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    dateFormatter.dateFormat = @"L";
    NSDate *dateFromString = [dateFormatter dateFromString:monthNumberString];
    
    dateFormatter.dateFormat = @"LLLL";
    NSString *stringMonth = [dateFormatter stringFromDate:dateFromString];
    
    return stringMonth;
}

#pragma mark - Second

- (long)dayFromDate:(NSString *)date {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    dateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss'Z'";
    NSDate *dateFromString = [dateFormatter dateFromString:date];
    
    dateFormatter.dateFormat = @"dd";
    NSString *stringDay = [dateFormatter stringFromDate:dateFromString];
    
    return [stringDay longLongValue];
}

#pragma mark - Third

- (NSString *)getDayName:(NSDate*) date {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    dateFormatter.dateFormat = @"EE";
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"ru_RU"];
    
    NSString *weekDay = [dateFormatter stringFromDate:date];
    
    return weekDay;
}

#pragma mark - Fourth

- (BOOL)isDateInThisWeek:(NSDate *)date {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy-MM-dd";
    NSString *startDateString = @"2021-05-17";
    NSString *endDateString = @"2021-05-24";
    NSString *ourDateString = [dateFormatter stringFromDate:date];
        
    NSDate *startDate = [dateFormatter dateFromString:startDateString];
    NSDate *endDate = [dateFormatter dateFromString:endDateString];
    NSDate *ourDate = [dateFormatter dateFromString:ourDateString];

    if (([ourDate compare:startDate] == NSOrderedAscending) || ([ourDate compare:endDate] == NSOrderedDescending)) {
        return NO;
    }
    return YES;
}

@end
