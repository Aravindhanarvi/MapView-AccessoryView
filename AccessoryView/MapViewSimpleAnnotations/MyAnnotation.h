
//  MyAnnotation.h
//  MapViewSimpleAnnotations
//  Created by Aravindhan P on 24/03/16.
//  Copyright © 2016 Aravindhan P. All rights reserved.

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MyAnnotation : NSObject<MKAnnotation> {
    
}

- (id)initWithCityName:(NSString *)aCityName citySubTitle:(NSString *)aCitySubTitle andCityCoordinate:(CLLocationCoordinate2D)aCoordinate;
@property (nonatomic, copy) NSString *cityName;
@property (nonatomic, copy) NSString *citySubTitle;
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

@end
