
//  AppDelegate.m
//  MapViewSimpleAnnotations
//  Created by Aravindhan P on 24/03/16.
//  Copyright © 2016 Aravindhan P. All rights reserved.

#import "AppDelegate.h"
#import "MyAnnotation.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    CLLocationCoordinate2D startCoord = CLLocationCoordinate2DMake(37.361426, -93.515625);
    MKCoordinateRegion adjustedRegion = [myMapView regionThatFits:MKCoordinateRegionMakeWithDistance(startCoord, 100000, 100000)];
    [myMapView setRegion:adjustedRegion animated:NO];
    
    CLLocationCoordinate2D missouriCoordinate;
    missouriCoordinate.latitude = 37.361426;
    missouriCoordinate.longitude = -93.515625;
    
    MyAnnotation *annotation = [[MyAnnotation alloc] initWithCityName:@"Missouri" citySubTitle:@" " andCityCoordinate:missouriCoordinate];
    
    [myMapView addAnnotation:annotation];
    myMapView.delegate = self;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation {
    
    static NSString *identifier = @"MyLocation";
    
    MKPinAnnotationView *annotationView = (MKPinAnnotationView *) [mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
    if (annotationView == nil) {
        
        annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
    }
    else {
        
        annotationView.annotation = annotation;
    }
    
    annotationView.enabled = YES;
    annotationView.canShowCallout = YES;
    annotationView.animatesDrop = YES;
    annotationView.leftCalloutAccessoryView = leftAccessoryView;
    
    return annotationView;
}
@end
