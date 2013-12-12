//
//  MapViewController.m
//  Tangy
//
//  Created by Inspiring on 12/12/13.
//  Copyright (c) 2013 inspiring.pt. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    // 1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 38.7069;
    zoomLocation.longitude= -9.1356;
    
    // 2
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 40, 40);
    
    MKPointAnnotation *lisboa = [[MKPointAnnotation alloc]init];
    
    lisboa.coordinate = zoomLocation;
    lisboa.title = @"Jane Doe";
    lisboa.subtitle = @"I'm here!!!";
    
    
    [self.mapView addAnnotation:lisboa];
    
    [_mapView setRegion:viewRegion animated:YES];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
