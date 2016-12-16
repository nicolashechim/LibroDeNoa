//
//  ViewController.m
//  LibroDeNoa
//
//  Created by IVAN MOLERA on 26/11/14.
//  Copyright (c) 2014 UAB. All rights reserved.
//

#import "ViewController.h"
#import "SoundManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString* audioNarrador = NSLocalizedString(@"AudioNarrador", nil);
    
    [[SoundManager sharedManager] playMusic:@"BG04.07_hort.mp3"];
    [[SoundManager sharedManager] playMusic: [NSString stringWithFormat:@"%@",audioNarrador] looping: NO];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(notificationCallback:)
                                                 name:nil
                                               object:nil];
    
    [_subtitulo setText: NSLocalizedString(@"SubtituloNarrador", nil)];
    [self configTietNormal];
    [self configTietaNormal];
    [self configCarlotaNormal];
    [self startCarlotaBiciMovingAnimation];
    [_tiet_cos startAnimating];
    [_tieta_cos startAnimating];
    [_carlota_bici startAnimating];
    
}

- (void) configTietNormal {
    
    troncClicked = NO;
    
    UIImage *tiet1 = [UIImage imageNamed:@"01_tiet_copet_destral1.png"];
    UIImage *tiet2 = [UIImage imageNamed:@"01_tiet_estatic.png"];
    
    NSArray *images = [[NSArray alloc] initWithObjects:tiet1, tiet2, nil];
    
    [_tiet_cos setAnimationImages:images];
    [_tiet_cos setAnimationRepeatCount:0];
    [_tiet_cos setAnimationDuration:2.0f];
}

- (void) configTietaNormal {
    
    UIImage *tieta1 = [UIImage imageNamed:@"01_tieta_estatica.png"];
    UIImage *tieta2 = [UIImage imageNamed:@"01_tieta_Regant_01.png"];
    UIImage *tieta3 = [UIImage imageNamed:@"01_tieta_Regant_02.png"];
    
    NSArray *images = [[NSArray alloc] initWithObjects:tieta1, tieta2, tieta3, nil];
    
    [_tieta_cos setAnimationImages:images];
    [_tieta_cos setAnimationRepeatCount:2];
    [_tieta_cos setAnimationDuration:2.0f];
}

- (void) configCarlotaNormal {
    
    UIImage *carlotaBici1 = [UIImage imageNamed:@"01_Carlota_bici01.png"];
    UIImage *carlotaBici2 = [UIImage imageNamed:@"01_Carlota_bici02.png"];
    UIImage *carlotaBici3 = [UIImage imageNamed:@"01_Carlota_bici03.png"];
    UIImage *carlotaBici4 = [UIImage imageNamed:@"01_Carlota_bici04.png"];
    UIImage *carlotaBici5 = [UIImage imageNamed:@"01_Carlota_bici05.png"];
    UIImage *carlotaBici6 = [UIImage imageNamed:@"01_Carlota_bici06.png"];
    UIImage *carlotaBici7 = [UIImage imageNamed:@"01_Carlota_bici07.png"];
    UIImage *carlotaBici8 = [UIImage imageNamed:@"01_Carlota_bici08.png"];
    UIImage *carlotaBici9 = [UIImage imageNamed:@"01_Carlota_bici09.png"];
    UIImage *carlotaBici10 = [UIImage imageNamed:@"01_Carlota_bici10.png"];
    UIImage *carlotaBici11= [UIImage imageNamed:@"01_Carlota_bici11.png"];
    UIImage *carlotaBici12 = [UIImage imageNamed:@"01_Carlota_bici12.png"];
    UIImage *carlotaBici13 = [UIImage imageNamed:@"01_Carlota_bici13.png"];
    UIImage *carlotaBici14 = [UIImage imageNamed:@"01_Carlota_bici14.png"];
    
    NSArray *images = [[NSArray alloc] initWithObjects: carlotaBici1, carlotaBici2,
                       carlotaBici3, carlotaBici4, carlotaBici5, carlotaBici6,
                       carlotaBici7, carlotaBici8, carlotaBici9, carlotaBici10,
                       carlotaBici11, carlotaBici12, carlotaBici13, carlotaBici14,
                       nil];
    
    [_carlota_bici setAnimationImages:images];
    [_carlota_bici setAnimationRepeatCount:2];
    [_carlota_bici setAnimationDuration:2.5f];
}

- (void) startCarlotaBiciMovingAnimation {
    CGRect beginRect = CGRectMake(0,
                                0,
                                _carlota.frame.size.width,
                                _carlota.frame.size.height);
    
    CGRect endRect = CGRectMake(self.view.bounds.size.width/2 - _carlota.frame.size.width/3,
                                0,
                                _carlota.frame.size.width,
                                _carlota.frame.size.height);
    [_carlota setFrame: beginRect];
    [UIView beginAnimations: nil context: nil];
    [UIView setAnimationDuration: 5.0f];
    [_carlota setFrame: endRect];
    [UIView commitAnimations];
}

- (void) showBafarade: (UIView*) bafarade andLabel: (UILabel*) label {
    [UIView beginAnimations: nil context: nil];
    [UIView setAnimationDelay: 0];
    [bafarade setHidden:FALSE];
    [label setHidden:FALSE];
    [NSTimer scheduledTimerWithTimeInterval: 3 target: self selector:@selector(hideBafarade:) userInfo:@{@"bafarade" : bafarade, @"label" : label}  repeats:YES];
    [UIView commitAnimations];
}

- (void) hideBafarade: (NSTimer *) timer {
    id bafarade = timer.userInfo[@"bafarade"];
    id label = timer.userInfo[@"label"];
    [UIView beginAnimations: @"Fade In" context:nil];
    [UIView setAnimationDelay:0];
    [UIView setAnimationDuration:.5];
    [bafarade setHidden:TRUE];
    [label setHidden:TRUE];
    [UIView commitAnimations];
}

- (void) configTietTronc {
    
    troncClicked = YES;

    UIImage *tiet1 = [UIImage imageNamed:@"01_tiet_Partint_tronc1.png"];
    UIImage *tiet2 = [UIImage imageNamed:@"01_tiet_Partint_tronc2.png"];
    UIImage *tiet3 = [UIImage imageNamed:@"01_tiet_Partint_tronc3.png"];
    
    NSArray *images = [[NSArray alloc] initWithObjects:tiet1, tiet2, tiet3, nil];
    
    [_tiet_cos setAnimationImages:images];
    [_tiet_cos setAnimationRepeatCount:1];
    [_tiet_cos setAnimationDuration:1.5f];
}

- (IBAction)clickTronc:(id)sender {

    if(!troncClicked) {
        [_tiet_cos stopAnimating];
    
        [self configTietTronc];
    
        [_tiet_cos startAnimating];
    
        [[SoundManager sharedManager] prepareToPlayWithSound:@"copfusta_tiet2.mp3"];
        [[SoundManager sharedManager] playSound:@"copfusta_tiet2.mp3"];
    }
}

- (void) notificationCallback:(NSNotification *)notification {
    
    if([[notification name] isEqualToString:SoundDidFinishPlayingNotification]) {
        Sound *sonido = (Sound*) [notification object];
        
        if([sonido.name isEqualToString:@"copfusta_tiet2.mp3"]) {
            [self configTietNormal];
            [_tiet_cos startAnimating];
        }
    }
}

- (void) viewDidAppear:(BOOL)animated {
    [self startCarlotaBiciMovingAnimation];
    [_carlota_bici startAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonTietBafarade:(id)sender {
    [_labelTietBafarade setText: NSLocalizedString(@"BafaradesTiet", nil)];
    [self showBafarade: _imgViewTietBafarade andLabel: _labelTietBafarade];
}

- (IBAction)buttonTietaBafarade:(id)sender {
    [_labelTietaBafarade setText: NSLocalizedString(@"BafaradesTieta", nil)];
    [self showBafarade: _imgViewTietaBafarade andLabel: _labelTietaBafarade];
}

- (IBAction)buttonCarlotaBafarade:(id)sender {
    [_labelCarlotaBafarade setText: NSLocalizedString(@"BafaradesCarlotaBici", nil)];
    [self showBafarade: _imgViewCarlotaBafarade andLabel: _labelCarlotaBafarade];
}

- (IBAction)buttonMerliBafarade:(id)sender {
    [_labelMerliBafarade setText: NSLocalizedString(@"BafaradesMerli", nil)];
    [self showBafarade: _imgViewMerliBafarade andLabel: _labelMerliBafarade];
}
@end
