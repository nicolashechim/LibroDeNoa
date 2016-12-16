//
//  ViewController.h
//  LibroDeNoa
//
//  Created by IVAN MOLERA on 26/11/14.
//  Copyright (c) 2014 UAB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    BOOL troncClicked;
}

@property (strong, nonatomic) IBOutlet UIImageView *tiet_cos;
@property (strong, nonatomic) IBOutlet UIImageView *tieta_cos;
@property (strong, nonatomic) IBOutlet UIView *carlota;
@property (strong, nonatomic) IBOutlet UIImageView *carlota_bici;
@property (strong, nonatomic) IBOutlet UILabel *subtitulo;
- (IBAction)buttonTietBafarade:(id)sender;
- (IBAction)buttonTietaBafarade:(id)sender;
- (IBAction)buttonCarlotaBafarade:(id)sender;
- (IBAction)buttonMerliBafarade:(id)sender;


@property (strong, nonatomic) IBOutlet UIImageView *imgViewTietBafarade;
@property (strong, nonatomic) IBOutlet UIImageView *imgViewTietaBafarade;
@property (strong, nonatomic) IBOutlet UIImageView *imgViewCarlotaBafarade;
@property (strong, nonatomic) IBOutlet UIImageView *imgViewMerliBafarade;
@property (strong, nonatomic) IBOutlet UILabel *labelTietBafarade;
@property (strong, nonatomic) IBOutlet UILabel *labelTietaBafarade;
@property (strong, nonatomic) IBOutlet UILabel *labelCarlotaBafarade;
@property (strong, nonatomic) IBOutlet UILabel *labelMerliBafarade;

- (IBAction)clickTronc:(id)sender;


@end

