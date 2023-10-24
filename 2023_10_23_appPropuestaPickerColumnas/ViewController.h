//
//  ViewController.h
//  2023_10_23_appPropuestaPickerColumnas
//
//  Created by Ivanovicx Nuñez on 23/10/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

/* Picker view */
@property (weak, nonatomic) IBOutlet UIPickerView *pickerViewElementos;

/* Image view */
@property (weak, nonatomic) IBOutlet UIImageView *imageViewProductos;

@end

