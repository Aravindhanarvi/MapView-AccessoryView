
//  AppDelegate.h
//  MapViewSimpleAnnotations
//  Created by Aravindhan P on 24/03/16.
//  Copyright © 2016 Aravindhan P. All rights reserved.

#import <Cocoa/Cocoa.h>
#import <MapKit/MapKit.h>
#import "LeftAccessoryView.h"

@interface AppDelegate : NSObject <NSApplicationDelegate, MKMapViewDelegate> {
    
    IBOutlet MKMapView *myMapView;
    
    IBOutlet LeftAccessoryView *leftAccessoryView;
}


@end

