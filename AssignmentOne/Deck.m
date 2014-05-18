//
//  Deck.m
//  AssignmentOne
//
//  Created by Scott Brenner on 5/17/14.
//  Copyright (c) 2014 ScottBrenner. All rights reserved.
//

#import "Deck.h"

@interface Deck()

@property (strong, nonatomic) NSMutableArray *cards;

@end

@implementation Deck

-(void)addCard: (Card *)card atTop:(BOOL)atTop{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}
-(void)addCard: (Card *)card{
    [self addCard: card atTop:YES];
}


-(Card *)drawRandomCard{
    Card *randomCard = nil;
    NSLog(@"In drawRandom.  Size of deck: %d", [self.cards count]);
    
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        NSLog(@"here is a random card: %@", randomCard.contents);
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
}

@end
