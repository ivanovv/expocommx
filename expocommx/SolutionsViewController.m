//
//  expocommSecondViewController.m
//  expocommx
//
//  Created by Victor Ivanov on 4/27/13.
//  Copyright (c) 2013 Victor Ivanov. All rights reserved.
//

#import "SolutionsViewController.h"
#import "Description.h"

@interface SolutionsViewController ()

@end

@implementation SolutionsViewController

NSMutableArray *solutions;

- (void)viewDidLoad
{
    [super viewDidLoad];
    solutions = [NSMutableArray arrayWithCapacity:30];
    Description *description = [[Description alloc] init];
    description.title = @"Мониторинг строительства объектов";
    description.description = @"Для эффективного и своевременного создания объектов в мировой практике активно ипользуются системы моделирования. Связь календарных планов, спектра работа, временной 3D модели с поступающей видеоинформацией с объекта позвоялет ответсвенным лицам следить за ходом строительства объекта.  Специализированное ПО позвляет проводить ретроспективных анализ проведенных работ.";
    [solutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Контроль и анализ проектных затрат";
    description.description = @"Контроль и анализ проектных затрат";
    [solutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Инженерная и телекоммуникационная инфраструктура";
    description.description = @"Инженерная и телекоммуникационная инфраструктура";
    [solutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Управление энергозатратами";
    [solutions addObject:description];
    
    
    description = [[Description alloc] init];
    description.title = @"Мониторинг грузовой и специальной техники";
    [solutions addObject:description];

    
    description = [[Description alloc] init];
    description.title = @"«Система  112»";
    [solutions addObject:description];

    
    description = [[Description alloc] init];
    description.title = @"Биометрический контроль доступа";
    [solutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Пространственное моделирование событий";
    [solutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Управление процессами и персоналом";
    [solutions addObject:description];
    
    
    
    /*solutions = [NSMutableArray arrayWithObjects: @"Мониторинг строительства объектов",
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
    */
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"navbar.png"] forBarMetrics:UIBarMetricsDefault];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [solutions count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView  dequeueReusableCellWithIdentifier:@"SolutionsCell"];
    
    cell.textLabel.numberOfLines = 0;
    cell.textLabel.lineBreakMode = UILineBreakModeWordWrap;
    Description *desc = [solutions objectAtIndex:indexPath.row];
    cell.textLabel.text = desc.title;
    
    return cell;
}

@end
