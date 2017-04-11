//
//  DetailViewController.m
//  Catalog
//
//  Created by Vasilii on 06.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setDetail:(Data *)detail {
    
    _detail = detail;
}

-(void) reloadData {
    
    if (!_detail) {
        return;
    }
    //self.navigationItem.title = _detail.title;
    self.titleLabel.text = _detail.title;
    self.imageView.image = [UIImage imageNamed:_detail.imageName];
    self.textView.text = _detail.text;
    
    CGRect contentViewFrame = _contentView.frame;
    contentViewFrame.size.height += _textView.contentSize.height - _textView.frame.size.height;
    _contentView.frame = contentViewFrame;
    _scrollView.contentSize = _contentView.frame.size;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
