//
//  RegularUtils.h
//  UimBank
//  正则表达式集成
//  Created by Jdb on 15/11/16.
//  Copyright © 2015年 Cheney Chan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RegularUtils : NSObject
#pragma 正则匹配手机号
+ (BOOL)checkTelNumber:(NSString *) telNumber;
#pragma 正则匹配用户密码6-18位数字和字母组合
+ (BOOL)checkPassword:(NSString *) password;
#pragma 正则匹配用户姓名,20位的中文或英文
+ (BOOL)checkUserName : (NSString *) userName;
#pragma 正则匹配用户身份证号
+ (BOOL)checkUserIdCard: (NSString *) idCard;
#pragma 正则匹配验证码为4位数字
+ (BOOL)checkUserCode: (NSString *) Code;
@end
