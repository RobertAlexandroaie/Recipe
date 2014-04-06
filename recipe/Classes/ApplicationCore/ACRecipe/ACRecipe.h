//
//  Recipe.h
//  recipe
//
//  Created by Alex on 4/6/13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ACRecipe : NSObject

- (id)initWithName:(NSString *)name description:(NSString *)description andPhotoName:(NSString *)photoName;

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *description;
@property (nonatomic, strong) NSString *photoName;

@end
