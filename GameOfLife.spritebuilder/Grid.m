//
//  Grid.m
//  GameOfLife
//
//  Created by Macbook White on 23/02/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "Grid.h"
#import "Creature.h"



// estas sao variaveis  que nao podem ser alterada.

static const int GRID_ROWS = 8;
static const int GRID_COLUMNS = 10;

@implementation Grid{
    
    // criando colunas e celulas.
    NSMutableArray *_gridArray;
    float _celWidth;
    float _celHeight;
    
    
}


-(void)onEnter{
    
    [super onEnter];
    
    [self setupGrid];
    
    self.userInteractionEnabled = YES;
    
}


- (void)setupGrid
{
    // divide the grid's size by the number of columns/rows to figure out the right width and height of each cell
    _celWidth = self.contentSize.width / GRID_COLUMNS;
    _celHeight = self.contentSize.height / GRID_ROWS;
    
    float x = 0;
    float y = 0;
    
    // initialize the array as a blank NSMutableArray
    _gridArray = [NSMutableArray array];
    
    // initialize Creatures
    for (int i = 0; i < GRID_ROWS; i++) {
        // this is how you create two dimensional arrays in Objective-C. You put arrays into arrays.
        _gridArray[i] = [NSMutableArray array];
        x = 0;
        
        for (int j = 0; j < GRID_COLUMNS; j++) {
            Creature *creature = [[Creature alloc] initCreature];
            creature.anchorPoint = ccp(0, 0);
            creature.position = ccp(x, y);
            [self addChild:creature];
            
            // this is shorthand to access an array inside an array
            _gridArray[i][j] = creature;
            
            // make creatures visible to test this method, remove this once we know we have filled the grid properly
            creature.isAlive = YES;
            
            x+=_celWidth;
        }
        
        y += _celHeight;
    }
}

/*-(void)setupGrid{
    
    // Dividir o tamanho da rede pelo número de colunas / linhas para descobrir a largura direita e altura de cada célula
    
    _cellWidht = self.contentSize.width / GRID_COLUMNS;
    _cellHeight = self.contentSize.height /GRID_ROWNS;
    
    float x = 0;
    float y = 0;
    
    // inicializando o array em branco
    
    _gridArray = [NSMutableArray array];
    
    // inicializando criaturas
    
    for (int i = 0;  i < GRID_ROWNS; i++){
        
        // Isto é como você criar arrays bidimensionais em Objective-C. Você coloca matrizes em matrizes.
        
        _gridArray[i] = [NSMutableArray array];
        x = 0;
    
    for ( int j = 0; j < GRID_COLUMNS; j++){
        
        
        Creature *creature = [[Creature alloc]initCreature];
        creature.anchorPoint = ccp(0,0);
        creature.position = ccp(y, x);
        [self addChild:creature];
        
        // Isto é uma abreviação para acessar uma matriz dentro de um array
        
        _gridArray[i][j] = creature;
        
        // Fazer criaturas visíveis para testar este método, remover isto uma vez que sabemos que têm enchido a grade corretamente
        
        creature.isAlive = YES;
        
        x+=  _cellWidht;
    }
        y += _cellHeight;
     
   }

}
 */

@end


































