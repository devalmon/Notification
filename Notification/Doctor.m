//
//  Doctor.m
//  Notification
//
//  Created by Alexey Baryshnikov on 22.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import "Doctor.h"
#import "Goverment.h"

@implementation Doctor

#pragma mark - Initialization


- (instancetype)init
{
    self = [super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(salaryChangedNotification:)
                                                     name:GovermentSalaryDidChangeNotification
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(avgPriceChangedNotification:)
                                                     name:GovermentAvgPriceDidChangeNotification
                                                   object:nil];
    }
    return self;
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - Notifications

- (void) salaryChangedNotification: (NSNotification *) notification {
    NSNumber *value = [notification.userInfo objectForKey:GovermentSalaryDidChangeUserInfoKey];
    
    double salary = [value doubleValue];
    
    if (salary < self.salary) {
        NSLog(@"Doctors are not happy");
    } else {
        NSLog(@"Hurray! increase! now i've payed %@", value);
    }
    
    self.salary = salary;
}

- (void) avgPriceChangedNotification: (NSNotification *) notification {
    NSNumber *priceValue = [notification.userInfo objectForKey:GovermentAvgPriceDidChangeUserInfoKey];
    double avgPrice = [priceValue doubleValue];
    
    NSLog(@"Now average price is %f", avgPrice);
    
    self.avgPirce = avgPrice;
}

@end
