//
//  HomeTableViewDataSource.m
//  MyDemo
//
//  Created by 王飞 on 2018/8/25.
//  Copyright © 2018年 王飞. All rights reserved.
//

#import "HomeTableViewDataSource.h"
#import <UIKit/UIKit.h>
#import "Log.h"
#import "FactoryViewController.h"
//@interface HomeTableViewDataSource ()<
//UITableViewDataSource,
//UITableViewDelegate>
//
//
//@end
@implementation HomeTableViewDataSource

    -(id) initWithNames : (NSMutableArray*) names andDes:(NSMutableArray*) details ;
    {
        self = [super init] ;
        if ( self ) {
            _arrayName = names;
            _arrayDetail = details;
        }
        return self ;
    }

#pragma mark - UITableViewDataSource
    - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
        [Log mulMessage:@"num:", [NSString stringWithFormat:@"%d",[_arrayDetail count]], nil];
        return [_arrayName count];
    }
//    - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//        return 1;
//    }
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ///设置标识符
    static NSString * str = @"cellStr";
    ///<2.>复用机制:如果一个页面显示7个cell，系统则会创建8个cell,当用户向下滑动到第8个cell时，第一个cell进入复用池等待复用。
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:str];
    ///<3.>新建cell
    if (cell == nil) {
        //副标题样式
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:str];
    }
    ///<4.>设置单元格上显示的文字信息
//    if (indexPath.section == 0) {
//        cell.textLabel.text = [NSString stringWithFormat:@"第一个分区--%@",[self.arrayDS objectAtIndex:indexPath.row]];
//    } else {
//        cell.textLabel.text = [NSString stringWithFormat:@"第二个分区--%@",[self.arrayDS objectAtIndex:indexPath.row]];
//    }
    [Log mulMessage:@"  name =  ",[_arrayName objectAtIndex:indexPath.row], nil];
    cell.textLabel.text = [_arrayName objectAtIndex:indexPath.row];
    cell.detailTextLabel.text =  [_arrayDetail objectAtIndex:indexPath.row];
    
    return cell;
}

/**
 *  由于表格的样式设置成plain样式,但是不能说明当前的表格不显示分区
 */
//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//
//    if (section == 0) {
//        return @"分区一";
//    }else {
//        return @"分区二";
//    }
//}




#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSString *selectCellStr = cell.textLabel.text;
    [Log mulMessage:@"click ",selectCellStr, nil];
    FactoryViewController *f = [[FactoryViewController alloc]init];
    [self jumpTo:f];
   
}
    // 即将显示tableviewcell时调用
    - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
        
    }
    
    // 即将显示header时调用，在cell之后调用
- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section NS_AVAILABLE_IOS(6_0){
    
}
    
    // 即将显示footer时调用，在header之后调用
- (void)tableView:(UITableView *)tableView willDisplayFooterView:(UIView *)view forSection:(NSInteger)section NS_AVAILABLE_IOS(6_0){
    
}
    
    // 在删除cell之后调用，停止显示cell的时候调用,界面不显示cell时。
- (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath*)indexPath NS_AVAILABLE_IOS(6_0){
    
}
    
    // 停止显示header的时候调用
- (void)tableView:(UITableView *)tableView didEndDisplayingHeaderView:(UIView *)view forSection:(NSInteger)section NS_AVAILABLE_IOS(6_0){
    
}
    
    // 停止显示footer的时候调用
- (void)tableView:(UITableView *)tableView didEndDisplayingFooterView:(UIView *)view forSection:(NSInteger)section NS_AVAILABLE_IOS(6_0){
    
}
-(void)jumpTo:(UIViewController*) view{
    [self.controller presentViewController:view animated:false completion:nil];
}
@end



