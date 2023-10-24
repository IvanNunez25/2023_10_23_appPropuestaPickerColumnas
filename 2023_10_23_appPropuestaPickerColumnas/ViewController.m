//
//  ViewController.m
//  2023_10_23_appPropuestaPickerColumnas
//
//  Created by Ivanovicx Nuñez on 23/10/23.
//

#import "ViewController.h"

@interface ViewController (){
    
    NSArray *tipos;
    NSArray *productos_albums;
    NSArray *productos_lightsticks;
    NSArray *productos_gods;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    tipos = @[@"Album", @"Lightstick", @"Gods"];
    productos_albums = @[@"Fact Check", @"Golden Age", @"Red Summer", @"Reload", @"Rookie"];
    productos_lightsticks = @[@"GOT7", @"IVE", @"Red Velvet", @"Stray Kids", @"WayV", @"Xdinary Heroes"];
    productos_gods = @[@"28 Reasons", @"Birthday", @"Feel My Rhythm"];
    
    _pickerViewElementos.delegate = self;
    _pickerViewElementos.dataSource = self;
    
    _imageViewProductos.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@ - %@", tipos[0], productos_albums[0]]];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    if(component == 0){
        return tipos.count;
    } else {
        switch ([_pickerViewElementos selectedRowInComponent:0]) {
            case 0:
                return productos_albums.count;
                break;
                
            case 1:
                return productos_lightsticks.count;
                break;
                
            case 2:
                return productos_gods.count;
                break;
                
            default:
                return 0;
                break;
        }
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    if(component == 0){
        return tipos[row];
    } else {
        switch ([_pickerViewElementos selectedRowInComponent:0]) {
            case 0:
                return productos_albums[row];
                break;
                
            case 1:
                return productos_lightsticks[row];
                break;
                
            case 2:
                return productos_gods[row];
                break;
                
            default:
                return 0;
                break;
        }
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    if(component == 0)
        [_pickerViewElementos selectRow:0 inComponent:1 animated:YES];
    
    [_pickerViewElementos reloadComponent:1];
    
    switch ([_pickerViewElementos selectedRowInComponent:0]) {
        case 0:
            _imageViewProductos.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@ - %@", tipos[[_pickerViewElementos selectedRowInComponent:0]], productos_albums[[_pickerViewElementos selectedRowInComponent:1]]]];
            break;
            
        case 1:
            _imageViewProductos.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@ - %@", tipos[[_pickerViewElementos selectedRowInComponent:0]], productos_lightsticks[[_pickerViewElementos selectedRowInComponent:1]]]];
            break;
            
        case 2:
            _imageViewProductos.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@ - %@", tipos[[_pickerViewElementos selectedRowInComponent:0]], productos_gods[[_pickerViewElementos selectedRowInComponent:1]]]];
            break;
            
        default:
            break;
    }
    
}

@end
