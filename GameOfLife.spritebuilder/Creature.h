//
//  Creature.h
//  GameOfLife
//
//  Created by Macbook White on 23/02/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "CCSprite.h"

@interface Creature : CCSprite


//amzena o estadu atul das criaturas.
@property (nonatomic, assign)BOOL isAlive;

// amazena  a quantidade de vida dos vizinhos.
@property (nonatomic, assign) NSInteger livingNeighbors;

// inicilizado das criaturas 

- (id)initCreature;

@end
