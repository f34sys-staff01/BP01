//
//  ViewController.m
//  BargainPrice
//
//  Created by Staff on 2016/03/04.
//  Copyright © 2016年 staff. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()


@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)MyTextField:(id)sender {
    int kakaku = [[_inputprice text] intValue];
    
    switch([_MySegment selectedSegmentIndex]){
        case 0:
            kakaku = kakaku * (1.f - 0.05f);
            break;
        case 1:
            kakaku = kakaku * (1.f - 0.15f);
            break;
        case 2:
            kakaku = kakaku * (1.f - 0.2f);
            break;
        case 3:
            kakaku = kakaku * (1.f - 0.3f);
            break;
        case 4:
            kakaku = kakaku * (1.f - 0.4f);
            break;
        default:
            break;
    }
    
    [_MyLabel setText:[NSString stringWithFormat:@"%d", kakaku]];;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    if (_inputprice.isFirstResponder) {
        [_inputprice resignFirstResponder];
    }

    else {
        [_inputprice becomeFirstResponder];
    }
}

- (IBAction)buttonValueChanged:(id)sender{
    float discount_value = 0.0f;
    
    int selected_index = [_MySegment selectedSegmentIndex];
    switch(selected_index){
        case 0:
            discount_value =  0.05f;
            break;
        case 1:
            discount_value =  0.15f;
            break;
        case 2:
            discount_value =  0.2f;
            break;
        case 3:
            discount_value =  0.3f;
            break;
        case 4:
            discount_value =  0.4f;
            break;
        default:
            break;
    }
    [_DiscountSlider setValue:discount_value animated:YES];
    [_waribiki setText:[NSString stringWithFormat:@"%d", (int)(discount_value * 100.f)]];
    int price_original = [[_MyLabel text]intValue];
    if(price_original > 0){
        [_zeikomi setText:[NSString stringWithFormat:@"%d", (int)(1.08 * price_original)]];
    }
}
       

-(IBAction)sliderValueChanged:(id)sender{
    float discount_value = (int)([(UISlider*)sender value] * 20) / 20.f;
    if(discount_value == 0.05f){
        [_MySegment setSelectedSegmentIndex:0];
    }
    else if(discount_value == 0.15f){
        [_MySegment setSelectedSegmentIndex:1];
    }
    else if(discount_value == 0.2f){
        [_MySegment setSelectedSegmentIndex:2];
    }
    else if(discount_value == 0.3f){
        [_MySegment setSelectedSegmentIndex:3];
    }
    else if(discount_value == 0.4f){
        [_MySegment setSelectedSegmentIndex:4];
    }
    else{
        [_MySegment setSelectedSegmentIndex:-1];
    }
    [_waribiki setText:[NSString stringWithFormat:@"%d", (int)(discount_value * 100.f)]];
    int price_original = [[_MyLabel text]intValue];
    if(price_original > 0){
        [_zeikomi setText:[NSString stringWithFormat:@"%d", (int)(1.08 * price_original)]];
    }
    int kakaku = [[_inputprice text] intValue];
    kakaku = kakaku * (1.f - (discount_value));

        [_MyLabel setText:[NSString stringWithFormat:@"%d", kakaku]];;
}


-(IBAction)escapeButtonPush:(id)sender{
    [_MyLabel endEditing:YES];
}

@end
