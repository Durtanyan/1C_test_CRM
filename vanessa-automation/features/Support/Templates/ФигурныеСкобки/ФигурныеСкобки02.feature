﻿# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA42_Тестовые_фичи

@tree
@IgnoreOnCIMainBuild




Функциональность: ФигурныеСкобки02
 


Сценарий: ФигурныеСкобки02
	И я проверяю или создаю для справочника "Справочник1" объекты:
		| 'Ссылка'                                                                                          | 'ПометкаУдаления' | 'Наименование' |
		| '{"e1cib/data/Catalog.Справочник1?ref=" + СтрЗаменить(Новый УникальныйИдентификатор(), "-", "")}' | 'Ложь'            | 'Тест'         |

	