//
//  playingCardDeck.m
//  AssignmentOne
//
//  Created by Scott Brenner on 5/17/14.
//  Copyright (c) 2014 ScottBrenner. All rights reserved.
//

#import "playingCardDeck.h"
#import "PlayingCard.h"

@implementation playingCardDeck

-(instancetype)init{
    NSLog(@"initializing a playingCardDeck.");
    self = [super init];
    
    if (self){
        for (NSString *suit in [PlayingCard validSuits]){
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
                NSLog(@"Created card: %@", card.contents);
            }
        }
    }
//    NSLog(@"here is the playingCardDeck: %@", self);
//    NSLog(@"the card in playingCardDeck: %@", [self drawRandomCard].contents);
    NSLog(@"In playingcarddeck init.  Size of deck: %d", [self count]);

    return self;
}

@end
