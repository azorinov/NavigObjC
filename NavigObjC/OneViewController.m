//
//  OneViewController.m
//  NavigObjC
//
//  Created by Alexander Zorinov on 2023-09-27.
//

#import "OneViewController.h"
#import "TwoViewController.h"

@interface OneViewController ()
- (IBAction)openPopover:(id)sender;
- (IBAction)showTwo:(id)sender;
- (IBAction)openAlert:(id)sender;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *bookmarks;
@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)openAlert:(id)sender {
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"Tennis"
                                 message:@"Do you want to play tennis?"
                                 preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* yesButton = [UIAlertAction
                                actionWithTitle:@"Yes"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
        ///block/closure
    }];
    UIAlertAction* noButton = [UIAlertAction
                               actionWithTitle:@"Cancel"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
        ///block/closure
    }];
    [alert addAction:yesButton];
    [alert addAction:noButton];
    
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)showTwo:(id)sender {
    [self showViewController:[[TwoViewController alloc] init] sender:self];
}

- (IBAction)openPopover:(id)sender {
    UIViewController *popViewController = [UIViewController new];
    popViewController.view.backgroundColor = [UIColor blueColor];
    popViewController.preferredContentSize = CGSizeMake(300, 300);
    popViewController.modalPresentationStyle = UIModalPresentationPopover;
    popViewController.popoverPresentationController.delegate = self;
    [self presentViewController:popViewController animated:true completion:nil];
}

#pragma mark - <UIPopoverPresentationControllerDelegate>
- (UIModalPresentationStyle) adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller {
    return UIModalPresentationNone;
}

- (void)prepareForPopoverPresentation:(UIPopoverPresentationController *)popoverPresentationController {
    popoverPresentationController.permittedArrowDirections = UIPopoverArrowDirectionAny;
    popoverPresentationController.barButtonItem = self.bookmarks;
}

- (void)presentationControllerDidDismiss:(UIPopoverPresentationController *)popoverPresentationController {
    NSLog(@"Popover Dismissed!");
}

@end
