//
//  Goverment.m
//  Notification
//
//  Created by Alexey Baryshnikov on 21.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "Goverment.h"

NSString *const GovermentTaxLevelDidChangeNotification = @"GovermentTaxLevelDidChangeNotification";
NSString *const GovermentSalaryDidChangeNotification = @"GovermentSalaryDidChangeNotification";
NSString *const GovermentPensoinDidChangeNotification = @"GovermentPensoinDidChangeNotification";
NSString *const GovermentAvgPriceDidChangeNotification = @"GovermentAvgPriceDidChangeNotification";

NSString *const GovermentTaxLevelDidChangeUserInfoKey = @"GovermentTaxLevelDidChangeUserInfoKey";
NSString *const GovermentSalaryDidChangeUserInfoKey = @"GovermentSalaryDidChangeUserInfoKey";
NSString *const GovermentPensoinDidChangeUserInfoKey = @"GovermentPensoinDidChangeUserInfoKey";
NSString *const GovermentAvgPriceDidChangeUserInfoKey = @"GovermentAvgPriceDidChangeUserInfoKey";

@implementation Goverment

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.taxLevel = 5;
        self.salary = 1000;
        self.pension = 500;
        self.avgPrice = 10;
    }
    return self;
}

- (void)setSalary:(double)salary {
    _salary = salary;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithDouble:salary] forKey:GovermentSalaryDidChangeUserInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:GovermentSalaryDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
    
};
- (void)setPension:(double)pension {
    _pension = pension;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithDouble:pension] forKey:GovermentPensoinDidChangeUserInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:GovermentPensoinDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
    
};
- (void)setAvgPrice:(double)avgPrice {
    _avgPrice = avgPrice;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithDouble:avgPrice] forKey:GovermentAvgPriceDidChangeUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GovermentAvgPriceDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
    
};
- (void)setTaxLevel:(double)taxLevel {
    _taxLevel = taxLevel;
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithDouble:taxLevel] forKey:GovermentTaxLevelDidChangeUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GovermentTaxLevelDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
};


@end
