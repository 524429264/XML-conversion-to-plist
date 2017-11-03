//
//  ViewController.m
//  Test
//
//  Created by 田耀辉 on 2017/10/10.
//  Copyright © 2017年 田耀辉. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    NSString *path = @"/Users/tianyaohui/Desktop/Test/Test/area.json";
    NSURL *url=[NSURL fileURLWithPath:path];
    NSData *data = [[NSData alloc] initWithContentsOfURL:url];
    
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
//    NSLog(@"%@",dic);
    [dic writeToFile:@"/Users/tianyaohui/Desktop/area.plist" atomically:YES];
}




@end
