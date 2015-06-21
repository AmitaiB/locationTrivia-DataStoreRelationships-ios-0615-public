//
//  FISAddTriviumViewController.m
//  locationTrivia-dataStore
//
//  Created by Amitai Blickstein on 6/21/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISAddTriviumViewController.h"
#import "FISLocationsDataStore.h"

@interface FISAddTriviumViewController ()
@property (nonatomic, strong) FISTrivia *triviumToAdd;
@property (weak, nonatomic) IBOutlet UITextField *addTriviumTextField;
- (IBAction)saveTriviumButtonTapped:(id)sender;
- (IBAction)cancelButtonTapped:(id)sender;

@end

@implementation FISAddTriviumViewController

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

- (IBAction)saveTriviumButtonTapped:(id)sender {
//    FISLocationsDataStore *locationStore = [FISLocationsDataStore sharedLocationsDataStore];
    FISTrivia *ourTriviaObject = [[FISTrivia alloc] initWithContent:self.triviumToAdd.content Likes:0];
    NSString *newTriviumText = self.addTriviumTextField.text;
    [ourTriviaObject setContent:newTriviumText];
    
    [self.trivia addObject:self.triviumToAdd];
    [self dismissViewControllerAnimated:YES completion:nil];
//Need to change the [NSArray of FISTrivia] in the location in the [NSArray of Locations] on Data Manager's
    
    
}

- (IBAction)cancelButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
