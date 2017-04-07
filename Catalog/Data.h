//
//  Data.h
//  Catalog
//
//  Created by Vasilii on 06.04.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Data : NSObject

@property(strong, nonatomic) NSString *title;
@property(strong, nonatomic) NSString *text;
@property(strong, nonatomic) NSString *imageName;
@property(strong, nonatomic) NSString *category;
@property(strong, nonatomic) NSString *autor;

@property(strong, nonatomic) NSURL* link;

+(NSArray *) fetchData;

@end
