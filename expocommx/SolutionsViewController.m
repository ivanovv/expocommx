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
    description.description = @"Для эффективного и своевременного создания объектов в мировой практике активно иcпользуются системы моделирования. Связь календарных планов, спектра работа, временной 3D модели с поступающей видеоинформацией с объекта позволяет ответственным лицам следить за ходом строительства объекта.  Специализированное ПО позволяет проводить ретроспективных анализ проведенных работ.";
    [solutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Контроль и анализ проектных затрат";
    description.description = @"Создание крупного спортивного объекта и подготовка к масштабному мероприятию  требует эффективного управления финансовыми потоками. Современные информационные бизнес-приложения позволяют вести анализ стоимости инвестиций, проводить многофакторный анализ отклонений стоимости проектов, проводить сравнительный анализ финансовых сценариев. Такие системы полезны как при реализации масштабных государственных программ, так и больших инвестиционных коммерческих проектов.";
    [solutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Инженерная и телекоммуникационная инфраструктура";
    description.description = @"Футбольный стадион, как и любой крупный инфраструктурный объект, требует бесперебойного электропитания, с целью гарантированного  поддержания в работоспособном состоянии всех систем жизнеобеспечения, в т.ч. комплексных систем безопасности и  оповещения.  Дизельный роторный ИБП  защищает от сбоев электропитания и обеспечивает бесперебойную и непрерывную подачу электроэнергии. Преимуществом этого вида ИБП является его компактные размеры, высокая надежность.";
    [solutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Управление энергозатратами";
    description.description = @"Затраты на энергообеспечение - она из ключевых статей расходов спортивного комплекса. Автоматизированные системы технического и коммерческого учета электроэнергии обеспечивают дистанционный сбор и обработку данных об энергетических потоках в электросети стадиона и потреблении энергии в реальном времени. Интеграция систем учета со специализированным программных обеспечением позволяет отслеживать потребление электроэнергии различными системами стадиона, выявлять нерациональное использование электроэнергии и сокращать расходы до 20%. Аналогичные решения уже активно применяются как энергетическими компаниями, так и крупными энергоемкими промышленными  предприятиями.";
    [solutions addObject:description];
    
    
    description = [[Description alloc] init];
    description.title = @"Мониторинг грузовой и специальной техники";
    description.description = @"Решение НИКА позволяет решать любые  задачи, связанные с контролем эксплуатации любых удаленных объектов, местонахождения подвижных объектов  с использованием беспроводных сетей связи (WiFi, GSM, CDMA)  и спутниковых навигационных систем (ГЛОНАСС / GPS). Решение доказало свою эффективность в контроле движения автомобилей, осуществляющих съемку спортивных мероприятий.";
    [solutions addObject:description];

    
    description = [[Description alloc] init];
    description.title = @"«Система  112»";
    description.description = @"Массовое скопление людей во время спортивных мероприятий требует высокой готовности различных экстренных служб. В случае чрезвычайной ситуации "Система 112" обеспечивает скоординированную помощь всех экстренных служб: оператор 112 регистрирует и направляет событие в службы экстренного реагирования, и система выбирает ближайшие службы и их состав в зависимости от характера ЧП. Службы экстренного реагирования получают полное описание происшествия и высылают подготовленные бригады. «Система 112», которая интегрирована с внешними источниками данных, такими, как система «ЭРА ГЛОНАСС», что делает ее по-настоящему эффективной и оперативной.";
    [solutions addObject:description];

    
    description = [[Description alloc] init];
    description.title = @"Биометрический контроль доступа";
    description.description = @"Стадион – охраняемый инфраструктурный объект, который требует усиленных мер по контролю доступа и обеспечению безопасности, в том числе контртеррористической.  Для обеспечения гарантированного контроля доступа используются комплексные системы безопасности, включающие в себя различные варианты турникетов, металлодетекторов, систем биометрического распознавания.";
    [solutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Пространственное моделирование событий";
    description.description = @"Система представляет собой набор специализированных модулей, предназначенных для комплексного решения широкого спектра задач, связанных с управлением и обслуживанием стадиона, обеспечения безопасности крупных спортивных комплексов";
    [solutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Управление процессами и персоналом";
    description.description = @"Эффективно организовать такой сложный процесс как международное спортивное мероприятие может обеспечить система управления бизнес-процессами и заданиями. Фиксация задачи по проведению матча автоматически раздает задания десяткам служб с указанием сроков исполнения. Аналогичные системы помогают управлять процессами в финансовых институтах, на транспорте, в государственно управлении. В частности, положительные результаты показал опыт внедрения системы в ГУ МВД г. Москвы.";
    [solutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Ncloud";
    description.description = @"Построение и предоставление вычислительной инфраструктуры для информационных систем и бизнес приложений с использованием облачного подхода. Ключевые характеристики: доступность сервисов и приложений через сеть, самообслуживание при заказе и автоматизация развертывания сервисов, управление вычислительными мощностями и учет используемых ресурсов.";
    [solutions addObject:description];
    
    
    description = [[Description alloc] init];
    description.title = @"Универсальная карта участника";
    description.description = @"Решение представляет собой семейство продуктов, обеспечивающих тарификацию различных видов услуг и биллинг, управление услугами абонентов бонусными кампаниями и т.д. Решение включает в себя более 20 систем с широчайшей функциональностью. Например, интегрировать на единой карте болельщика различные услуги: оплата транспортных расходов, входных билетов на домашние матчи, скидки и другие привилегии для держателей карты. Решение также может быть использовано в телекоммуникационной отрасли, ТЭК, госсекторе, на транспорте и т.д.";
    [solutions addObject:description];

    description = [[Description alloc] init];
    description.title = @"Портал общественной безопасности";
    description.description = @"Информирование и консультационное обслуживание болельщиков, приезжих туристов и местных жителей по вопросам безопасности и сохранности их жизни, здоровья, имущества для обеспечения личной и общественной безопасности во время проведения крупных спортивных мероприятий. Любой человек (болельщик, турист, специалист, житель) может зарегистрироваться на Портале для получения дополнительных и индивидуальных сервисов. На главной странице Портала размещены ссылки на статьи, содержащие информацию по самым актуальным темам и вопросам, а все имеющиеся статьи можно просмотреть в рубрике 'что делать, если'. Будут созданы инциденты спортивной тематике или имеющие к ней отношение.";
    [solutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Система анализа статистических данных";
    description.description = @"Информационно-аналитическая платформа  решает задачи эффективного хранения  и обработки неограниченных объёмов неструктурированных или слабосвязанных данных.  Демонстрация работы через пользовательский интерфейс BI-приложения  от Qlickview. Крупное спортивное событие - это всегда огромный поток информации, накапливающихся в сотнях различных информационных систем и приложений. Современные решения анализа больших объемов данных (Big Data) позволяют собирать структурированную и неструктурированную информацию с различных источников, анализировать ее и представлять удобном и наглядном виде. Например, консолидировать информацию по результатам всех футбольных матчей чемпионатов мира годы и  в считанные секунды получить ответ на самый необычный аналитический запрос в графическом виде. Так же технологии Big Data внедряются в крупнейших банках, телеком компаниях для анализа поведения потребителей, формирования эксклюзивных продуктов и услуг.";
    [solutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Сервисы облачной видеоаналитики";
    description.description = @"Системы видеонаблюдения, необходимые для обеспечения безопасности, в обязательном порядке присутствуют на всех крупных спортивных аренах.  Данные системы позволяют в оперативном режиме фиксировать различные виды правонарушений и хулиганских выходок, идентифицировать посетителей в потоковом режиме и реагировать на различные события такие, как нарушение охраняемых зон, акты вандализма, пожар и прочее.";
    [solutions addObject:description];
    
    description = [[Description alloc] init];
    description.title = @"Удаленный мониторинг автопарка";
    description.description = @"НИКА позволяет решать любые  задачи, связанные с контролем эксплуатации любых удаленных объектов, местонахождения подвижных объектов  с использованием беспроводных сетей связи (WiFi, GSM, CDMA)  и спутниковых навигационных систем (ГЛОНАСС / GPS). Решение доказало свою эффективность в контроле движения автомобилей, осуществляющих съемку спортивных мероприятий.";
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
