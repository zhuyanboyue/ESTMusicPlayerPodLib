//
//  NSBundle+Custom.h
//  AFNetworking
//
//  Created by Mac Zhou on 2022/5/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (Custom)

+ (NSBundle *)customBundle;

+ (NSBundle *)customBundle:(NSString *)bundleName;

+(UIImage *)imageNamed:(NSString *)name;

+(UINib *)nibNamed:(NSString *)name;

+(UIStoryboard *)storyboardNamed:(NSString *)name;

+(NSString *)filePath:(NSString *)file extension:(NSString *)extension;

@end

NS_ASSUME_NONNULL_END
