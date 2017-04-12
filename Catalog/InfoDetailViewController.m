//
//  InfoDetailViewController.m
//  Catalog
//
//  Created by Vasilii on 12.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "InfoDetailViewController.h"

@interface InfoDetailViewController ()

@end

@implementation InfoDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self reloadInfoData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setInfoDetail:(Info *)InfoDetail {
    _InfoDetail = InfoDetail;
}

-(void) reloadInfoData {
    if (!_InfoDetail) {
        return;
    }
    self.navigationItem.title = _InfoDetail.title;
    self.titleText.text = _InfoDetail.title;
    self.textInfoView.text = _InfoDetail.text;
    
    CGRect contentInfoView = _contentInfoView.frame;
    contentInfoView.size.height += _textInfoView.contentSize.height - _textInfoView.frame.size.height;
    _contentInfoView.frame = contentInfoView;
    _scrollInfoView.contentSize = _contentInfoView.frame.size;
    
}

@end
