//
//  Deck.h
//  AssignmentOne
//
//  Created by Scott Brenner on 5/17/14.
//  Copyright (c) 2014 ScottBrenner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard: (Card *)card atTop:(BOOL)atTop;
-(void)addCard: (Card *)card;

-(Card *)drawRandomCard;

@end
