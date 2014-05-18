//
//  SEBViewController.m
//  AssignmentOne
//
//  Created by Scott Brenner on 5/17/14.
//  Copyright (c) 2014 ScottBrenner. All rights reserved.
//

#import "SEBViewController.h"
#import "Deck.h"
#import "playingCardDeck.h"
#import "PlayingCard.h"


@interface SEBViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;

@end

@implementation SEBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchInCard:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        // User is looking at the front of the card, so show back.
        [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"] forState:normal];
        [sender setTitle:@"" forState:normal];
        NSLog(@"in touchInCard, with title");
    }else{
        // User is looking at the back of the card, so show front.
        [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"] forState:normal];
        // draw a random card
        Card *card = [self.deck drawRandomCard];
        if (card) {
            NSLog(@"User drew: %@", card.contents);
            // set title to contents of card
            [sender setTitle:card.contents forState:normal];
        }else{
            [sender setTitle:@"No more cards." forState:normal];
            [sender setBackgroundImage:nil forState:normal];
            sender.enabled = NO;
        }
    }
    self.flipCount++;
}

- (void) setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
//    NSLog(@"Flip count set to %d", self.flipCount);
}


- (Deck*) deck{
    if (!_deck){
        _deck = [[playingCardDeck alloc] init];
        NSLog(@"just instantiantiated theDeck, lazily.  See:%@", _deck);
    }
    return _deck;
}

@end
