//
//  PlayingCard.m
//  AssignmentOne
//
//  Created by Scott Brenner on 5/17/14.
//  Copyright (c) 2014 ScottBrenner. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

-(NSString *)contents{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

+(NSArray *)validSuits{
    // used to confirm a suit is valid.
    return @[@"♦︎", @"♥︎", @"♠︎", @"♣︎"];
}

+(NSUInteger)maxRank{
    // used to confirm a rank is valid.
    return [[self rankStrings] count] - 1;
}

-(void)setSuit:(NSString *) suit{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

-(NSString *)suit{
    // return the suit if if not nil or zero, else "?"
    return _suit ? _suit : @"?";
}

+(NSArray *)rankStrings{
    return @[@"0", @"A", @"1", @"2",@"3", @"4",@"5", @"6",@"7", @"8",@"9", @"10",@"J", @"Q",@"K"];
}



@end
