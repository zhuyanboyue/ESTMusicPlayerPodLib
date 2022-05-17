//
//  NSBundle+Custom.m
//  AFNetworking
//
//  Created by Mac Zhou on 2022/5/13.
//

#import "NSBundle+Custom.h"

@implementation NSBundle (Custom)

+ (NSBundle *)customBundle{
    return [self customBundle:@"ESMusicPodLib"];
}

+ (NSBundle *)customBundle:(NSString *)bundleName{
    static NSBundle *customBundle = nil;
    if (customBundle == nil) {
        NSBundle *containnerBundle = [NSBundle bundleForClass:[NSClassFromString(@"MusicViewController") class]];
        customBundle = [NSBundle bundleWithPath:[containnerBundle pathForResource:bundleName ofType:@"bundle"]];
    }
    return customBundle;
}

+(UIImage *)imageNamed:(NSString *)name{
    
    if (![name containsString:@"@2x"]) {
        name = [NSString stringWithFormat:@"%@%@",name,@"@2x"];
    }
    
    NSString *imagePath = [[self customBundle] pathForResource:name ofType:@"png"];
    return [UIImage imageWithContentsOfFile:imagePath];
}

+(UINib *)nibNamed:(NSString *)name{
    return [UINib nibWithNibName:name bundle:[self customBundle]];
}

+(UIStoryboard *)storyboardNamed:(NSString *)name{
    return [UIStoryboard storyboardWithName:name bundle:[self customBundle]];
}


+(NSString *)filePath:(NSString *)file extension:(NSString *)extension{
    return [[self customBundle] pathForResource:file ofType:extension];
}


@end
