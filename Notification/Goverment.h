//
//  Goverment.h
//  Notification
//
//  Created by Alexey Baryshnikov on 21.05.2020.
//  Copyright © 2020 Alexey Baryshnikov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

extern NSString *const GovermentTaxLevelDidChangeNotification;
extern NSString *const GovermentSalaryDidChangeNotification;
extern NSString *const GovermentPensoinDidChangeNotification;
extern NSString *const GovermentAvgPriceDidChangeNotification;

extern NSString *const GovermentTaxLevelDidChangeUserInfoKey;
extern NSString *const GovermentSalaryDidChangeUserInfoKey;
extern NSString *const GovermentPensoinDidChangeUserInfoKey;
extern NSString *const GovermentAvgPriceDidChangeUserInfoKey;

@interface Goverment : NSObject

@property (assign, nonatomic) double taxLevel;
@property (assign, nonatomic) double salary;
@property (assign, nonatomic) double pension;
@property (assign, nonatomic) double avgPrice;

@end

NS_ASSUME_NONNULL_END
