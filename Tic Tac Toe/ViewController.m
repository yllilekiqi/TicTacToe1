//
//  ViewController.m
//  Tic Tac Toe
//
//  Created by Ylli L on 7/2/17.
//  Copyright © 2017 Ylli L. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *board;
@property (weak, nonatomic) IBOutlet UILabel *whoseTurn;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;
@property (weak, nonatomic) IBOutlet UIImageView *s1;
@property (weak, nonatomic) IBOutlet UIImageView *s2;
@property (weak, nonatomic) IBOutlet UIImageView *s3;
@property (weak, nonatomic) IBOutlet UIImageView *s4;
@property (weak, nonatomic) IBOutlet UIImageView *s5;
@property (weak, nonatomic) IBOutlet UIImageView *s6;
@property (weak, nonatomic) IBOutlet UIImageView *s7;
@property (weak, nonatomic) IBOutlet UIImageView *s8;
@property (weak, nonatomic) IBOutlet UIImageView *s9;
@end

@implementation ViewController

-(void)viewDidLoad{ [super viewDidLoad]; // shtimi imazheve
    oImg = [UIImage imageNamed:@"o.jpg"]; xImg = [UIImage imageNamed:@"x.jpg"];
    // vendose lojtarin number 1
    
    playerToken = 1;
    numriLevizjeve=0;
    baraz=false;
    // updatimi labelit
    _whoseTurn.text =@"X leviz i pari";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) updatePlayerInfo{
    if([self checkForWin]){
        UIAlertController * alert;
    if(!baraz)
    {
        NSString *mesazhi = @"Fitues eshte lojtari ";
        NSString *mesazhi2 = [mesazhi stringByAppendingString:[NSString stringWithFormat:@"%ld", playerToken]];
        
        
    alert= [UIAlertController
                                alertControllerWithTitle:@"Fitore"
                                message:mesazhi2
                                preferredStyle:UIAlertControllerStyleAlert];
    
    }
    else
    {
    alert   = [UIAlertController
                                     alertControllerWithTitle:@"Barazim"
                                     message:@"Loja ka perfunduar me barazim"
                                     preferredStyle:UIAlertControllerStyleAlert];
        baraz=false;
        
    }
    UIAlertAction* yesButton = [UIAlertAction
                                actionWithTitle:@"Ok"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    //qka ndodh kur klikohet yes
                                }];
    
    
    [alert addAction:yesButton];
    [self resetBoard];
    
    [self presentViewController:alert animated:YES completion:nil];
        return;
        
    
    }
    
    if(playerToken == 1) {
        playerToken = 2;
        _whoseTurn.text = @"Radha per O";
        NSLog(@"playerToken = %ld", (long)playerToken);
        numriLevizjeve++;
    }
    else if(playerToken == 2) { playerToken = 1; _whoseTurn.text =@"Radha per X";
        NSLog(@"playerToken = %ld", (long)playerToken);
        numriLevizjeve++;
    }
   
}


- (IBAction)buttonReset:(UIButton *)sender
{
    [self resetBoard];
}

- (IBAction)ResetoLojen:(id)sender {
    [self resetBoard];
}


-(void) resetBoard{
    /// fshirja imazheve te shfaqura tek katrorat
    _s1.image = NULL;
    _s2.image = NULL;
    _s3.image = NULL;
    _s4.image = NULL;
    _s5.image = NULL;
    _s6.image = NULL;
    _s7.image = NULL;
    _s8.image = NULL;
    _s9.image = NULL;
    // resetimi i labeles per lojtarin e ardhshem dhe numrit te lojtarit aktual
    playerToken= 1;
    numriLevizjeve=0;
    _whoseTurn.text = @"X leviz i pari";
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject];
    // ketu shikojm cili imazh esht klikuar
    bool katrori=false;
    if(CGRectContainsPoint([_s1 frame], [touch locationInView:self.view])){
        if(_s1.image!=xImg && _s1.image!=oImg){
        if(playerToken==1){ _s1.image = xImg; }
        if(playerToken==2){ _s1.image = oImg; }
            katrori=true;
        }
        else return;}
    if(CGRectContainsPoint([_s2 frame], [touch locationInView:self.view])){
        if(_s2.image!=xImg && _s2.image!=oImg){
        if(playerToken==1){ _s2.image = xImg; }
        if(playerToken==2){ _s2.image = oImg; }
        katrori=true;}
        else return;}
    if(CGRectContainsPoint([_s3 frame], [touch locationInView:self.view])){
        if(_s3.image!=xImg && _s3.image!=oImg){
        if(playerToken==1){ _s3.image = xImg; }
        if(playerToken==2){ _s3.image = oImg; }
        katrori=true;}
        else return;}
    if(CGRectContainsPoint([_s4 frame], [touch locationInView:self.view])){
        if(_s4.image!=xImg && _s4.image!=oImg){
        if(playerToken==1){ _s4.image = xImg; }
        if(playerToken==2){ _s4.image = oImg; }
        katrori=true;}
        else return;}
    if(CGRectContainsPoint([_s5 frame], [touch locationInView:self.view])){
        if(_s5.image!=xImg && _s5.image!=oImg){
        if(playerToken==1){ _s5.image = xImg; }
        if(playerToken==2){ _s5.image = oImg; }
        katrori=true;}
        else return;}
    if(CGRectContainsPoint([_s6 frame], [touch locationInView:self.view])){
        if(_s6.image!=xImg && _s6.image!=oImg){
        if(playerToken==1){ _s6.image = xImg; }
        if(playerToken==2){ _s6.image = oImg; }
        katrori=true;}
        else return;}
    if(CGRectContainsPoint([_s7 frame], [touch locationInView:self.view])){
        if(_s7.image!=xImg && _s7.image!=oImg){
        if(playerToken==1){ _s7.image = xImg; }
        if(playerToken==2){ _s7.image = oImg; }
        katrori=true;}
        else return;}
    if(CGRectContainsPoint([_s8 frame], [touch locationInView:self.view])){
        if(_s8.image!=xImg && _s8.image!=oImg){
        if(playerToken==1){ _s8.image = xImg; }
        if(playerToken==2){ _s8.image = oImg; }
        katrori=true;}
        else return;}
    if(CGRectContainsPoint([_s9 frame], [touch locationInView:self.view])){
        if(_s9.image!=xImg && _s9.image!=oImg){
        if(playerToken==1){ _s9.image = xImg; }
        if(playerToken==2){ _s9.image = oImg; }
        katrori=true;}
        else return;}
    if(katrori)
    [self updatePlayerInfo]; }



// validimi fitores
-(BOOL) checkForWin {
    // HORIZONTAL WINS
    
    if((_s1.image == _s2.image) && (_s1.image == _s3.image))
    {
        if(_s1.image != NULL)
        return YES;
    }
    if((_s4.image == _s5.image) && (_s4.image == _s6.image))
    {
        if(_s4.image != NULL)
        return YES;
    }
    if((_s7.image == _s8.image) && (_s7.image == _s9.image))
    {
        if(_s7.image != NULL)
            return YES;
    }
    // VERTICAL WINS
    if((_s1.image == _s4.image) && (_s1.image == _s7.image))
    {
        if(_s1.image != NULL)
            return YES;
    }
    if((_s2.image == _s5.image) && (_s5.image == _s8.image))
    {
        if(_s2.image != NULL)
            return YES;
    }
    if((_s3.image == _s6.image) && (_s6.image == _s9.image))
    {
        if(_s6.image != NULL)
        return YES;
      
    }
    // DIAGONALE
    if((_s1.image == _s5.image) && (_s5.image == _s9.image) && (_s1.image != NULL))
    {
        return YES;
    }
    if((_s3.image == _s5.image) && (_s5.image == _s7.image) && (_s3.image != NULL))
    {
        return YES;
    }
    //nese osht barazim
    if(numriLevizjeve==8)
    {
        baraz=true;
        return YES;
    }
    
    return NO; }


@end
