//
//  Info.h
//  Catalog
//
//  Created by Vasilii on 11.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Info : NSObject

@property(strong, nonatomic) NSString *title;
@property(strong, nonatomic) NSString *text;
@property(strong, nonatomic) NSString *imageName;
@property(strong, nonatomic) NSString *category;
@property(strong, nonatomic) NSString *autor;

@property(strong, nonatomic) NSURL* link;

+(NSArray *) fetchInfo;

@end
