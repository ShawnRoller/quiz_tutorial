//
//  ViewController.m
//  Quiz
//
//  Created by Shawn Roller on 1/19/14.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    questions = [[NSMutableArray alloc] init];
    answers = [[NSMutableArray alloc] init];
    
    [questions addObject:@"What is the capital of NJ?"];
    [answers addObject:@"Trenton"];
    
    [questions addObject:@"What is the fourth dimension?"];
    [answers addObject:@"Spacetime"];
    
    [questions addObject:@"How long has it been since the Eagles have been in the Super Bowl?"];
    [answers addObject:@"9 years"];
}

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    NSLog(@"in the init");
//    if (self){
//        
//        NSLog(@"in the if");
//        
//        questions = [[NSMutableArray alloc] init];
//        answers = [[NSMutableArray alloc] init];
//        
//        [questions addObject:@"What is the capital of NJ?"];
//        [answers addObject:@"Trenton"];
//        
//        [questions addObject:@"What is the fourth dimension?"];
//        [answers addObject:@"Spacetime"];
//        
//        [questions addObject:@"How long has it been since the Eagles have been in the Super Bowl?"];
//        [answers addObject:@"9 years"];
//    }
//    return self;
//}

- (IBAction)showQuestion:(id)sender
{
    currentQuestionIndex++;
    
    if (currentQuestionIndex == [questions count]) {
        currentQuestionIndex = 0;
    }
    
    int questionsCount = [questions count];
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    NSLog(@"Total questions is %i", questionsCount);
    NSLog(@"Current question Index is %i", currentQuestionIndex);
    NSLog(@"Current question is %@", question);
    
    [questionField setText:question];
    
    [answerField setText:@"???"];
}

- (IBAction)showAnswer:(id)sender
{
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    NSLog(@"Current answer is %@", answer);
    
    [answerField setText:answer];
}
@end
