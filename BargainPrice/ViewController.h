//
//  ViewController.h
//  BargainPrice
//
//  Created by Staff on 2016/03/04.
//  Copyright © 2016年 staff. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *inputprice;

@property (weak, nonatomic) IBOutlet UISegmentedControl *MySegment;

@property (weak, nonatomic) IBOutlet UILabel *MyLabel;

@property (weak, nonatomic) IBOutlet UISlider *DiscountSlider;

@property (weak, nonatomic) IBOutlet UILabel *waribiki;

@property (weak, nonatomic) IBOutlet UILabel *zeikomi;

@end

