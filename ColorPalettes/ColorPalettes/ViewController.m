//
//  ViewController.m
//  ColorPalettes
//
//  Created by Lourenço Marinho on 19/04/16.
//  Copyright © 2016 BEPiD. All rights reserved.
//

#import "ViewController.h"

#define UIColorFromRGB(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >>  8))/255.0 \
blue:((float)((rgbValue & 0x0000FF) >>  0))/255.0 \
alpha:1.0]

@interface ViewController ()

@property (nonatomic, strong) NSArray<NSNumber *> *colors;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.colors = @[@0xEA3556, @0x61D2D6, @0xEDE5E2, @0xED146F, @0xEDDE45, @0x9BF0E9];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Nova" style:UIBarButtonItemStylePlain target:self action:@selector(change:)];
}

#pragma mark - Table View Data Source Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.colors.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    NSInteger hex = self.colors[indexPath.row + 3].integerValue;
    cell.backgroundColor = UIColorFromRGB(hex);
    
    return cell;
}

#pragma mark - Table View Delegate Methods

// TODO: Adicionar o método tableView:didSelectRowAtIndexPath:
// TODO: Ao tocar em uma cor exibir o Hex dessa cor em um alerta.

#pragma mark - Button Actions Methods

- (void)changePallete:(UIBarButtonItem *)sender {
    NSArray<NSNumber *> *otherColors1 = @[@0xDD577A, @0xFFF0CF, @0xFE5A27, @0x49AEC0, @0x131723];
    NSArray<NSNumber *> *otherColors2 = @[@0xECE7ED, @0xDCC9B8, @0xBB9F7A, @0x744F3F, @0x000000, @0xE43F11];
    NSArray<NSNumber *> *otherColors3 = @[@0xBCAEAD, @0xA27D74, @0x434446, @0x86ABD7];
    NSArray<NSNumber *> *otherColors4 = @[@0xAE0006, @0x5A2541, @0x777394, @0x585CA6, @0xC60F01];
    NSArray<NSNumber *> *otherColors5 = @[@0x36273C, @0xFEF671, @0xF7AACA, @0x4EA255];
    NSArray<NSNumber *> *otherColors6 = @[@0xF1F2EA, @0xDA9586, @0x7B4F60, @0xCFAF86];
    NSArray *otherColors = @[otherColors1, otherColors2, otherColors3, otherColors4, otherColors5, otherColors6];
    
    // TODO: Trocar as cores da Table View aleatoriamente.
}

#pragma mark - Memory Management Methods

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
