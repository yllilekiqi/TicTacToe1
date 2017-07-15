//
//  ViewController.h
//  Tic Tac Toe
//
//  Created by Ylli L on 7/2/17.
//  Copyright © 2017 Ylli L. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIImage * xImg;
    IBOutlet UIImage * oImg;
    bool baraz;
    NSInteger playerToken;
    NSInteger numriLevizjeve;
}


-(IBAction)buttonReset:(UIButton *)sender;
- (IBAction)ResetoLojen:(id)sender;

-(void) updatePlayerInfo;
-(void) resetBoard;
-(BOOL) checkForWin;

@end



