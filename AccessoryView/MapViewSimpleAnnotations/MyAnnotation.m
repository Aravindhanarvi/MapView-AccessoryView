
//  MyAnnotation.m
//  MapViewSimpleAnnotations
//  Created by Aravindhan P on 24/03/16.
//  Copyright © 2016 Aravindhan P. All rights reserved.

#import "MyAnnotation.h"

@implementation MyAnnotation

- (id)initWithCityName:(NSString *)aCityName citySubTitle:(NSString *)aCitySubTitle andCityCoordinate:(CLLocationCoordinate2D)aCoordinate {

    if ((self = [super init])) {

        _cityName = aCityName;
        _citySubTitle = aCitySubTitle;
        _coordinate = aCoordinate;
    }
    return self;
}


- (NSString *)title {

    return _cityName;
}


- (NSString *)subtitle {
    
    return _citySubTitle;
}

@end
