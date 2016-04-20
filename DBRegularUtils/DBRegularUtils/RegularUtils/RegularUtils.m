//
//  RegularUtils.m
//  UimBank
//
//  Created by Jdb on 15/11/16.
//  Copyright © 2015年 Cheney Chan. All rights reserved.
//

#import "RegularUtils.h"

@implementation RegularUtils
#pragma 正则匹配手机号
+ (BOOL)checkTelNumber:(NSString *) telNumber
{
    NSString *MOBILE = @"^1[34578]\\d{9}$";
    
    NSPredicate *regexTestMobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",MOBILE];
    /*
    if ([regexTestMobile evaluateWithObject:self]) {
        
        return YES;
        
    }else {
        
        return NO;
        
    }*/
    return [regexTestMobile evaluateWithObject:telNumber];
}


#pragma 正则匹配用户密码6-18位数字和字母组合
+ (BOOL)checkPassword:(NSString *) password
{
    NSString *passWordRegex = @"^[a-zA-Z0-9]{6,18}+$";
    
    NSPredicate *passWordPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",passWordRegex];
    
    return [passWordPredicate evaluateWithObject:password];
    
}

#pragma 正则匹配用户姓名,20位的中文或英文
+ (BOOL)checkUserName : (NSString *) userName
{
    NSString *nicknameRegex = @"^[\u4e00-\u9fa5]{4,8}$";
    
    NSPredicate *passWordPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",nicknameRegex];
    
    return [passWordPredicate evaluateWithObject:userName];
    
}


#pragma 正则匹配用户身份证号14或17位
+ (BOOL)checkUserIdCard: (NSString *) idCard
{
    BOOL flag;
    
    if (idCard.length <= 0) {
        
        flag = NO;
        
        return flag;
        
    }
    
    NSString *regex2 = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    
    NSPredicate *identityCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    
    return [identityCardPredicate evaluateWithObject:idCard];

}

+ (BOOL)checkUserCode: (NSString *) Code{
    BOOL flag;
    
    if (Code.length <= 0) {
        
        flag = NO;
        
        return flag;
        
    }
    
    NSString *regex2 = @"^\\d{4}$";
    
    NSPredicate *identityCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    
    return [identityCardPredicate evaluateWithObject:Code];
}

@end
