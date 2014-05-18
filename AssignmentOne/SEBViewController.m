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
@property (strong, nonatomic) playingCardDeck *theDeck;

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
        [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"] forState:normal];
        [sender setTitle:@"" forState:normal];
        NSLog(@"in touchInCard, with title");
    }else{
        [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"] forState:normal];
        NSLog(@"in touchInCard, without title");
//        playingCardDeck *theJunkDeck = [[playingCardDeck alloc]init];
//        NSLog(@"The junk deck %@",theJunkDeck);
        
        PlayingCard *theCard = [self.theDeck drawRandomCard];
        
        [sender setTitle:[theCard contents] forState:normal];
    }
//    NSLog(@"got to the end of touchInCard");
    self.flipCount++;
}

- (void) setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
//    NSLog(@"Flip count set to %d", self.flipCount);
}


- (playingCardDeck *) theDeck{
    if (!_theDeck){
        _theDeck = [[playingCardDeck alloc] init];
        NSLog(@"just instantiantiated theDeck, lazily.  See:%@", _theDeck);
    }
    
//    for (PlayingCard *theCard in self.theDeck) {
//        NSLog(@"Card: %@", theCard);
//    }
    return _theDeck;
}

@end
