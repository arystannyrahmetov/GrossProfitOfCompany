#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда
////////////////////////////////////////////////////////////////////////////////
// ПЕРЕМЕННЫЕ МОДУЛЯ

////////////////////////////////////////////////////////////////////////////////
// ПРОГРАММНЫЙ ИНТЕРФЕЙС

#Область ПрограммныйИнтерфейс

Функция СведенияОВнешнейОбработке() Экспорт
	
	ПараметрыРегистрации = ДополнительныеОтчетыИОбработки.СведенияОВнешнейОбработке("1.0.0.1");
	
	ПараметрыРегистрации.Информация 	= НСтр("ru = 'Валовая прибыль по номенклатуре'");
	ПараметрыРегистрации.Вид 			= ДополнительныеОтчетыИОбработкиКлиентСервер.ВидОбработкиДополнительныйОтчет();
	ПараметрыРегистрации.Версия 		= "1.0.0.0";
	ПараметрыРегистрации.Наименование 	= НСтр("ru = 'Валовая прибыль по номенклатуре'");
	
	Команда = ПараметрыРегистрации.Команды.Добавить();
	Команда.Представление 				= НСтр("ru = 'Валовая прибыль по номенклатуре'");
	Команда.Идентификатор 				= "ВаловаяПрибыльПоНоменклатуре";
	Команда.Использование 				= ДополнительныеОтчетыИОбработкиКлиентСервер.ТипКомандыОткрытиеФормы();
	Команда.ПоказыватьОповещение 		= Истина;
        
    Возврат ПараметрыРегистрации;
                                       
КонецФункции

#КонецОбласти
////////////////////////////////////////////////////////////////////////////////
// ОБРАБОТЧИКИ СОБЫТИЙ


////////////////////////////////////////////////////////////////////////////////
// СЛУЖЕБНЫЕ ПРОЦЕДУРЫ И ФУНКЦИИ

////////////////////////////////////////////////////////////////////////////////
// ОПЕРАТОРЫ ОСНОВНОЙ ПРОГРАММЫ

#КонецЕсли 