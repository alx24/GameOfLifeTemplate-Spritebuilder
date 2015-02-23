//
//  Creature.m
//  GameOfLife
//
//  Created by Macbook White on 23/02/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "Creature.h"

@implementation Creature


//instaciando um tipo de creature
- (instancetype)initCreature{
    
    self = [super initWithImageNamed:@"GameOfLifeAssets/Assets/bubble.png"];
    
    if (self){
        
        self.isAlive = NO;
    }
    
    return self;
}


- (void)setIsAlive:(BOOL)newState {
    
    // alterado pra novo estado
    
    _isAlive = newState;
    
    // definindo  visibilidade .
    self.visible = _isAlive;
    
    
}

@end
