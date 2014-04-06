//
//  ACRecipeManager.m
//  recipe
//
//  Created by Robert on 4/13/13.
//  Copyright (c) 2013 Alex. All rights reserved.
//

#import "ACRecipeManager.h"

@interface ACRecipeManager (){
    
}
@end

@implementation ACRecipeManager
#pragma mark - sharedInstance
+ (id)sharedInstance{
    static id master = nil;
    
     @synchronized (self) {
        if(master == nil) {
            master = [[self alloc] init];
        }
    }
    return master;
}

#pragma mark - init
- (id)init {
    if([super init]) {
        
    }
    return self;
}

@end
