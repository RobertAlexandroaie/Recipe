//
//  Recipe.m
//  recipe
//
//  Created by Alex on 4/6/13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import "ACRecipe.h"

@implementation ACRecipe

- (id)initWithName:(NSString *)name description:(NSString *)description andPhotoName:(NSString *)photoName{
    self = [self init];
    self.name = name;
    self.description = description;
    self.photoName = photoName;
    return self;
}

@end
