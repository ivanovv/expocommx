//
//  expocommSecondViewController.m
//  expocommx
//
//  Created by Victor Ivanov on 4/27/13.
//  Copyright (c) 2013 Victor Ivanov. All rights reserved.
//

#import "SolutionsViewController.h"
#import "SolutionViewController.h"
#import "Description.h"
#import "CustomCellBackground.h"

@interface SolutionsViewController ()

@end

@implementation SolutionsViewController
int rowNumber;
int sectionNumber;
NSMutableArray *firstSectionSolutions;
NSMutableArray *secondSectionSolutions;
NSMutableArray *thirdSectionSolutions;

NSMutableArray *listOfItems;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    listOfItems = [[NSMutableArray alloc] init];
    
    firstSectionSolutions = [NSMutableArray arrayWithCapacity:30];
    
    //Возведение и эксплуатация социальных и спортивных объектов
    Description *description = [[Description alloc] init];
    description.title = @"Мониторинг строительства объектов";
    description.description = @"Для эффективного и своевременного создания объектов в мировой практике активно иcпользуются системы моделирования. Связь календарных планов, спектра работа, временной 3D модели с поступающей видеоинформацией с объекта позволяет ответственным лицам следить за ходом строительства объекта.  Специализированное ПО позволяет проводить ретроспективных анализ проведенных работ.";
    description.imgNumber = 1;
    [firstSectionSolutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Контроль и анализ проектных затрат";
    description.description = @"Создание крупного спортивного объекта и подготовка к масштабному мероприятию  требует эффективного управления финансовыми потоками. Современные информационные бизнес-приложения позволяют вести анализ стоимости инвестиций, проводить многофакторный анализ отклонений стоимости проектов, проводить сравнительный анализ финансовых сценариев. Такие системы полезны как при реализации масштабных государственных программ, так и больших инвестиционных коммерческих проектов.";
    description.imgNumber = 2;
    [firstSectionSolutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Инженерная и телекоммуникационная инфраструктура";
    description.description = @"Футбольный стадион, как и любой крупный инфраструктурный объект, требует бесперебойного электропитания, с целью гарантированного  поддержания в работоспособном состоянии всех систем жизнеобеспечения, в т.ч. комплексных систем безопасности и  оповещения.  Дизельный роторный ИБП  защищает от сбоев электропитания и обеспечивает бесперебойную и непрерывную подачу электроэнергии. Преимуществом этого вида ИБП является его компактные размеры, высокая надежность.";
    description.imgNumber = 3;
    [firstSectionSolutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Управление энергозатратами";
    description.description = @"Затраты на энергообеспечение - она из ключевых статей расходов спортивного комплекса. Автоматизированные системы технического и коммерческого учета электроэнергии обеспечивают дистанционный сбор и обработку данных об энергетических потоках в электросети стадиона и потреблении энергии в реальном времени. Интеграция систем учета со специализированным программных обеспечением позволяет отслеживать потребление электроэнергии различными системами стадиона, выявлять нерациональное использование электроэнергии и сокращать расходы до 20%. Аналогичные решения уже активно применяются как энергетическими компаниями, так и крупными энергоемкими промышленными  предприятиями.";
    description.imgNumber = 4;
    [firstSectionSolutions addObject:description];    
    
    description = [[Description alloc] init];
    description.title = @"Мониторинг грузовой и специальной техники";
    description.description = @"Решение НИКА позволяет решать любые  задачи, связанные с контролем эксплуатации любых удаленных объектов, местонахождения подвижных объектов  с использованием беспроводных сетей связи (WiFi, GSM, CDMA)  и спутниковых навигационных систем (ГЛОНАСС / GPS). Решение доказало свою эффективность в контроле движения автомобилей, осуществляющих съемку спортивных мероприятий.";
    description.imgNumber = 5;
    [firstSectionSolutions addObject:description];

    //Обеспечение безопасности и координация работ
    secondSectionSolutions = [NSMutableArray arrayWithCapacity:30];
    description = [[Description alloc] init];
    description.title = @"«Система 112»";
    description.description = @"Массовое скопление людей во время спортивных мероприятий требует высокой готовности различных экстренных служб. В случае чрезвычайной ситуации 'Система 112' обеспечивает скоординированную помощь всех экстренных служб: оператор 112 регистрирует и направляет событие в службы экстренного реагирования, и система выбирает ближайшие службы и их состав в зависимости от характера ЧП. Службы экстренного реагирования получают полное описание происшествия и высылают подготовленные бригады. «Система 112», которая интегрирована с внешними источниками данных, такими, как система «ЭРА ГЛОНАСС», что делает ее по-настоящему эффективной и оперативной.";
    description.imgNumber = 6;
    [secondSectionSolutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Биометрический контроль доступа";
    description.description = @"Стадион – охраняемый инфраструктурный объект, который требует усиленных мер по контролю доступа и обеспечению безопасности, в том числе контртеррористической.  Для обеспечения гарантированного контроля доступа используются комплексные системы безопасности, включающие в себя различные варианты турникетов, металлодетекторов, систем биометрического распознавания.";
    description.imgNumber = 7;
    [secondSectionSolutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Пространственное моделирование событий";
    description.description = @"Система представляет собой набор специализированных модулей, предназначенных для комплексного решения широкого спектра задач, связанных с управлением и обслуживанием стадиона, обеспечения безопасности крупных спортивных комплексов";
    description.imgNumber = 8;
    [secondSectionSolutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Управление процессами и персоналом";
    description.description = @"Эффективно организовать такой сложный процесс как международное спортивное мероприятие может обеспечить система управления бизнес-процессами и заданиями. Фиксация задачи по проведению матча автоматически раздает задания десяткам служб с указанием сроков исполнения. Аналогичные системы помогают управлять процессами в финансовых институтах, на транспорте, в государственно управлении. В частности, положительные результаты показал опыт внедрения системы в ГУ МВД г. Москвы.";
    description.imgNumber = 9;
    [secondSectionSolutions addObject:description];
    
    //Сервисы для участников
    thirdSectionSolutions = [NSMutableArray arrayWithCapacity:30];
    
    description = [[Description alloc] init];
    description.title = @"Ncloud";
    description.description = @"Построение и предоставление вычислительной инфраструктуры для информационных систем и бизнес приложений с использованием облачного подхода. Ключевые характеристики: доступность сервисов и приложений через сеть, самообслуживание при заказе и автоматизация развертывания сервисов, управление вычислительными мощностями и учет используемых ресурсов.";
    description.imgNumber = 10;
    [thirdSectionSolutions addObject:description];    
    
    description = [[Description alloc] init];
    description.title = @"Универсальная карта участника";
    description.description = @"Решение представляет собой семейство продуктов, обеспечивающих тарификацию различных видов услуг и биллинг, управление услугами абонентов бонусными кампаниями и т.д. Решение включает в себя более 20 систем с широчайшей функциональностью. Например, интегрировать на единой карте болельщика различные услуги: оплата транспортных расходов, входных билетов на домашние матчи, скидки и другие привилегии для держателей карты. Решение также может быть использовано в телекоммуникационной отрасли, ТЭК, госсекторе, на транспорте и т.д.";
    description.imgNumber = 11;
    [thirdSectionSolutions addObject:description];

    description = [[Description alloc] init];
    description.title = @"Портал общественной безопасности";
    description.description = @"Информирование и консультационное обслуживание болельщиков, приезжих туристов и местных жителей по вопросам безопасности и сохранности их жизни, здоровья, имущества для обеспечения личной и общественной безопасности во время проведения крупных спортивных мероприятий. Любой человек (болельщик, турист, специалист, житель) может зарегистрироваться на Портале для получения дополнительных и индивидуальных сервисов. На главной странице Портала размещены ссылки на статьи, содержащие информацию по самым актуальным темам и вопросам, а все имеющиеся статьи можно просмотреть в рубрике 'что делать, если'. Будут созданы инциденты спортивной тематике или имеющие к ней отношение.";
    description.imgNumber = 12;
    [thirdSectionSolutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Система анализа статистических данных";
    description.description = @"Информационно-аналитическая платформа  решает задачи эффективного хранения  и обработки неограниченных объёмов неструктурированных или слабосвязанных данных.  Демонстрация работы через пользовательский интерфейс BI-приложения  от Qlickview. Крупное спортивное событие - это всегда огромный поток информации, накапливающихся в сотнях различных информационных систем и приложений. Современные решения анализа больших объемов данных (Big Data) позволяют собирать структурированную и неструктурированную информацию с различных источников, анализировать ее и представлять удобном и наглядном виде. Например, консолидировать информацию по результатам всех футбольных матчей чемпионатов мира годы и  в считанные секунды получить ответ на самый необычный аналитический запрос в графическом виде. Так же технологии Big Data внедряются в крупнейших банках, телеком компаниях для анализа поведения потребителей, формирования эксклюзивных продуктов и услуг.";
    description.imgNumber = 13;
    [thirdSectionSolutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Сервисы облачной видеоаналитики";
    description.description = @"Системы видеонаблюдения, необходимые для обеспечения безопасности, в обязательном порядке присутствуют на всех крупных спортивных аренах.  Данные системы позволяют в оперативном режиме фиксировать различные виды правонарушений и хулиганских выходок, идентифицировать посетителей в потоковом режиме и реагировать на различные события такие, как нарушение охраняемых зон, акты вандализма, пожар и прочее.";
    description.imgNumber = 14;
    [thirdSectionSolutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Удаленный мониторинг автопарка";
    description.description = @"НИКА позволяет решать любые  задачи, связанные с контролем эксплуатации любых удаленных объектов, местонахождения подвижных объектов  с использованием беспроводных сетей связи (WiFi, GSM, CDMA)  и спутниковых навигационных систем (ГЛОНАСС / GPS). Решение доказало свою эффективность в контроле движения автомобилей, осуществляющих съемку спортивных мероприятий.";
    description.imgNumber = 15;
    [thirdSectionSolutions addObject:description];
    
    
    NSDictionary *firstSectionSolutionsDict = [NSDictionary dictionaryWithObject:firstSectionSolutions forKey:@"Solutions"];
    NSDictionary *secondSectionSolutionsDict = [NSDictionary dictionaryWithObject:secondSectionSolutions forKey:@"Solutions"];
    NSDictionary *thirdSectionSolutionsDict = [NSDictionary dictionaryWithObject:thirdSectionSolutions forKey:@"Solutions"]; 
    
    [listOfItems addObject:firstSectionSolutionsDict];
    [listOfItems addObject:secondSectionSolutionsDict];
    [listOfItems addObject:thirdSectionSolutionsDict];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
 
    //Number of rows it should expect should be based on the section
    NSDictionary *dictionary = [listOfItems objectAtIndex:section];
    NSArray *array = [dictionary objectForKey:@"Solutions"];
    return [array count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView { 
    return [listOfItems count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView  dequeueReusableCellWithIdentifier:@"SolutionsCell"];
    
    
    NSDictionary *dictionary = [listOfItems objectAtIndex:indexPath.section];
    NSArray *array = [dictionary objectForKey:@"Solutions"];
    Description *desc = [array objectAtIndex:indexPath.row];
    
    cell.textLabel.numberOfLines = 0;
    cell.textLabel.lineBreakMode = UILineBreakModeWordWrap;
    cell.textLabel.text = desc.title;    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
 {
     rowNumber = indexPath.row;
     sectionNumber = indexPath.section;
     [self performSegueWithIdentifier:@"solution" sender:self];
 }

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"solution"])
    {
        NSDictionary *dictionary = [listOfItems objectAtIndex:sectionNumber];
        NSArray *array = [dictionary objectForKey:@"Solutions"];
        Description *desc = [array objectAtIndex:rowNumber];
        
        self.navigationItem.backBarButtonItem.title = @"Решения";
    
        SolutionViewController *transferViewController = segue.destinationViewController;
        [transferViewController setDescription: desc];
    }
}

- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 55.0;
}




- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    // create the parent view that will hold header Label
	UIView* customView = [[CustomCellBackground alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 55.0)];
    //customView.backgroundColor = [UIColor clearColor];

	
	// create the button object
	UILabel * headerLabel = [[UILabel alloc] initWithFrame:CGRectZero];
	headerLabel.backgroundColor = [UIColor clearColor];
	headerLabel.opaque = NO;
	headerLabel.textColor = [UIColor whiteColor];
	headerLabel.font = [UIFont systemFontOfSize:18];
    headerLabel.numberOfLines = 0;
    headerLabel.lineBreakMode = UILineBreakModeWordWrap;
	headerLabel.frame = CGRectMake(8.0, 6.0, 310.0, 44.0);
    
    switch(section){
        case 0:
            headerLabel.text = @"Возведение и эксплуатация социальных и спортивных объектов";
            break;
        case 1:
            headerLabel.text = @"Обеспечение безопасности и координация работ";
            break;
        case 2:
            headerLabel.text = @"Сервисы для участников";
            break;
    }
    
	[customView addSubview:headerLabel];
    
	
    return customView;
}

@end
