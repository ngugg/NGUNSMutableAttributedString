//
//  ViewController.m
//  NGUMutableAttributedString
//
//  Created by 周文刚 on 2017/3/8.
//  Copyright © 2017年 周文刚. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) NSMutableAttributedString *str;
@property (weak, nonatomic) UILabel *label;

@property (weak, nonatomic) IBOutlet UILabel *label2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self demo];
}

- (void)demo {
    
    NSMutableAttributedString *mattr = [[NSMutableAttributedString alloc] initWithString:@"123456789"];
    
 //   [mattr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:30] range:NSMakeRange(0, 4)];
    self.label2.attributedText = mattr;
    self.str = mattr;
    NSLog(@"1 == %@",NSStringFromCGRect(self.label2.bounds));
//    UILabel *label = [[UILabel alloc]init];
//    self.label = label;
//    label.attributedText = mattr;
//    label.frame = CGRectMake(20,200, 400, 100);
//    label.numberOfLines = 0;
// //   [label sizeToFit];
//    [self.view addSubview:label];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self demo4];
}
- (void)demo4 {
    //添加一个属性
//    [self.str addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:30] range:NSMakeRange(0, 3)];
//    self.label2.attributedText = self.str;
    
    //添加多个属性
    
//    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
//    [dict setObject:[UIFont systemFontOfSize:30] forKey:NSFontAttributeName];
//    [dict setObject:[UIColor redColor] forKey:NSForegroundColorAttributeName];
//    [self.str addAttributes:dict range:NSMakeRange(0, 4)];
//    self.label2.attributedText = self.str;
    
    //移除某个属性
//    [self.str removeAttribute:NSFontAttributeName range:NSMakeRange(1, 1)];
//    self.label2.attributedText = self.str;
    
 //   NSLog(@"%@",[self.str attributedSubstringFromRange:NSMakeRange(0, 3)]);
    NSAttributedString *haha = [[NSAttributedString alloc]initWithString:@"haha" attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14]}];
  //  [self.str appendAttributedString:haha];
    
   // [self.str insertAttributedString:haha atIndex:3];
 //   [self.str replaceCharactersInRange:NSMakeRange(1, 3) withString:@"000"];
    [self.str replaceCharactersInRange:NSMakeRange(0, 3) withAttributedString:haha];
    
    self.label2.attributedText = self.str;
}

//替换某个范围的字符串
- (void)demo1 {
    [self.str replaceCharactersInRange:NSMakeRange(4, 4) withString:@"哈哈"];
    self.label.attributedText = self.str;
}
//删除某个范围的字符串
- (void)demo2 {
    [self.str deleteCharactersInRange:NSMakeRange(0, 3)];
    self.label.attributedText = self.str;
}
//设置多个属性
- (void)demo3 {
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:[UIFont systemFontOfSize:30] forKey:NSFontAttributeName];
    [dict setObject:[UIColor redColor] forKey:NSForegroundColorAttributeName];
    [self.str setAttributes:dict range:NSMakeRange(2, 5)];
  //  self.label.attributedText = self.str;
    self.label2.attributedText = self.str;
    NSLog(@"2 == %@",NSStringFromCGRect(self.label2.bounds));
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
