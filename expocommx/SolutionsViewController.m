//
//  expocommSecondViewController.m
//  expocommx
//
//  Created by Victor Ivanov on 4/27/13.
//  Copyright (c) 2013 Victor Ivanov. All rights reserved.
//

#import "SolutionsViewController.h"

@interface SolutionsViewController ()

@end

@implementation SolutionsViewController

NSArray *tableData;

- (void)viewDidLoad
{
    [super viewDidLoad];
    tableData = [NSArray arrayWithObjects: @"Мониторинг строительства объектов",
                 @"Контроль и анализ проектных затрат",
                 @"Инженерная и телекоммуникационная инфраструктура",
                 @"Управление энергозатратами",
                 @"Мониторинг грузовой и специальной техники",
                 @"«Система  112»",
                 @"Биометрический контроль доступа",
                 @"Пространственное моделирование событий",
                 @"Управление процессами и персоналом",
                 @"Ncloud", @"Универсальная карта участника",
                 @"Портал общественной безопасности",
                 @"Система анализа статистических данных",
                 @"Сервисы облачной видеоаналитики",
                 @"Удаленный мониторинг автопарка", nil ];
    
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"navbar.png"] forBarMetrics:UIBarMetricsDefault];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tableData count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"SimpleTableItem";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.numberOfLines = 0;
    //cell.textLabel.font
    cell.textLabel.lineBreakMode = UILineBreakModeWordWrap;
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    
    return cell;
}

@end
