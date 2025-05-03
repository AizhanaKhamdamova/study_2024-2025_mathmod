---
## Front matter
lang: ru-RU
title: Проект. Этап № 3
subtitle: Неравновесная агрегация, фрактальные кластеры
author:
  - Ощепков Дмитрий, Алади Принц, Хамдамова Айжана, Козлов Всеволод
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 21 марта 2025

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
---

# Информация

## Докладчики

**НФИбд-01-22:**
  * Ощепков Дмитрий
  * Хамдамова Айжана
  * Козлов Всеволод
  * Алади Принц
  


# Вводная часть

## Актуальность

Существуют разнообразные физические процессы, основная черта которых --- неравновесная агрегация:

- образование частиц сажи
- выращивание кристаллов соли
- распространение воды в нефти

## Цель и задачи

**Цель работы**

Исследовать модель агрегации, ограниченной диффузией(DLA).

**Задачи**

- Построить модель агрегации, ограниченной диффузией
- Найти размерность, получившихся кластеров
- Построить график зависимости числа частиц в кластере от радиуса агирации

## Объект и предмет исследования

- Модель DLA, BA, CLA, CCA
- Фрактальная размерность
- График зависимости числа частиц в кластере от радиуса агирации

## Материалы и методы

- Язык программирования Julia

# Теоретическое описание задачи

## Фрактальная размерность

$$
d = \lim_{\epsilon \rightarrow 0}(\dfrac{ln(N(\epsilon))}{ln(\dfrac{1}{\epsilon})})
$$

$$
ln(N(\epsilon)) = D ln(R) + b,
$$

где $D$ – фрактальная размерность, $N(\epsilon)$ – число частиц на расстоянии меньшем чем $R$, $R$ – радиус.

## Агрегация, ограниченная диффузией

**Агрегация, ограниченная диффузией (diffusion-limited aggregation, DLA)** --- первая модель агрегации, представляющая собой шумный рост, ограниченный диффузией.

# Практическая реализация

## Описание алгоритма 

![Блок-схема алгоритма модели DLA](image/алгоритм_DLA.png){#fig:001 width=27%}

## Случайное блуждане

Обозначим $v^u = (0,1)$ , $v^d = (0,-1)$, $v^r = (1,0)$, $v^l = (-1,0)$ - шаг на 1 вверх, вниз, влево, вправо соответственно.

$\{S_n\}$ -- ряд, описывающий случайное блуждание, $* = u, d, r, l$, $n$ -- количество шагов

$$
S_n = \sum^n_{i=1}{v_n^*}, 
$$

$$
P(v_{i+1} = v_n^*) = \dfrac{1}{4}
$$

# Результаты

## DLA кластер(Diffusion-Limited Aggregation)


![DLA кластер](image/DLA.bmp){#fig:002 width=70%}

## DLA кластер(Diffusion-Limited Aggregation)


![DLA кластер](image/DLA2.bmp){#fig:002 width=70%}

## DLA кластер(Diffusion-Limited Aggregation)


![DLA кластер](image/DLA3.bmp){#fig:002 width=70%}

## DLA кластер(Diffusion-Limited Aggregation)

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![DLA кластер](image/DLA.png){#fig:002 width=100%}

:::
::: {.column width="50%"}

![DLA кластер](image/DLA2.png){#fig:003 width=100%}

:::
::::::::::::::


## BA(Ballistic Aggregation)

![BA кластер](image/BA.bmp){#fig:002 width=70%}

## BA(Ballistic Aggregation)

![BA кластер](image/BA2.bmp){#fig:002 width=70%}


## BA(Ballistic Aggregation)

![BA кластер](image/BA.png){#fig:002 width=100%}


## CLA кластер

![CLA кластер](image/CLA.bmp){#fig:002 width=70%}


## CLA кластер

![CLA кластер](image/CLA2.bmp){#fig:002 width=70%}


## CLA кластер

![CLA кластер](image/CLA3.bmp){#fig:002 width=70%}



## CLA кластер(Chemically Limited Aggregationcluster)



![CLA кластер](image/CLA.png){#fig:002 width=100%}




## CCA(Cluster-Cluster Aggregation)

![CCA кластер](image/CCA.bmp){#fig:002 width=70%}

## CCA(Cluster-Cluster Aggregation)

![CCA кластер](image/CCA2.bmp){#fig:002 width=70%}

## CCA(Cluster-Cluster Aggregation)

![CCA кластер](image/CCA3.bmp){#fig:002 width=70%}

## CCA(Cluster-Cluster Aggregation)

![CCA кластер](image/CCA.png){#fig:002 width=100%}

## Фрактальная размерность

При построении 17 моделей с ограничением по радиусу от 130 до 290 получили $D = 1.717$.

![График зависимости числа частиц в кластере от радиуса гирации](image/Dim.png){#fig:004 width=60%}

# Заключение

## Выводы

- Построены модели DLA, BA, CLA, CCA
- Найдена фрактальная размерность, получившихся кластеров DLA
- Построен график зависимости числа частиц в кластере от радиуса гирации DLA

## Список литературы

1. Медведев Д.А. и др. Моделирование физических процессов и явлений на ПК: Учеб. пособие. Новосибирск: Новосиб. гос. ун-т, 2010. 101 с.
2. Sander L.M. Diffusion-limited aggregation: A kinetic critical phenomenon? Contemporary Physics, 2000.