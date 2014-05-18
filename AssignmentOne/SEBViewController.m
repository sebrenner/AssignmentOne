//
//  SEBViewController.m
//  AssignmentOne
//
//  Created by Scott Brenner on 5/17/14.
//  Copyright (c) 2014 ScottBrenner. All rights reserved.
//

#import "SEBViewController.h"

@interface SEBViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;

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
    }else{
        [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"] forState:normal];
        [sender setTitle:@"A♣️" forState:normal];
    }
    NSLog(@"got to the end of touchInCard");
    self.flipCount++;
    
}

- (void) setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"Flip count set to %d", self.flipCount);
}


@end
