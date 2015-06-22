//
//  FISAddTriviaViewController.m
//  locationTrivia-dataStore
//
//  Created by Amitai Blickstein on 6/21/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISAddTriviaViewController.h"
#import "FISLocationsDataStore.h"
#import "FISLocation.h"

@interface FISAddTriviaViewController ()
@property (weak, nonatomic) IBOutlet UITextField *addThisTriviumTextField;
- (IBAction)saveButtonTapped:(id)sender;
- (IBAction)cancelButtonTapped:(id)sender;

@end

@implementation FISAddTriviaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveButtonTapped:(id)sender {
    FISLocationsDataStore *dataStore = [FISLocationsDataStore sharedLocationsDataStore];
    FISLocation *currentLocation = dataStore.locations[self.rowOfThisLocation];
    NSString *contentToAdd = self.addThisTriviumTextField.text;
    FISTrivia *triviumWithTheNewContent = [[FISTrivia alloc] initWithContent:contentToAdd Likes:0];
    [currentLocation.trivia addObject:triviumWithTheNewContent];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancelButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
