//
//  FISAddTriviumViewController.h
//  locationTrivia-dataStore
//
//  Created by Amitai Blickstein on 6/21/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISLocation.h"

@interface FISAddTriviumViewController : UIViewController

//  Adds the trivium by setter-ing the location's trivia array.
@property (nonatomic, strong) FISLocation *ourLocation;

@end
