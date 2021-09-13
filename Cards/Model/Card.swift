//
//  Card.swift
//  Cards
//
//  Created by Александр Касьянов on 06.09.2021.
//

import Foundation
import UIKit

//типы фигуры карт
enum CardType: CaseIterable {
    case circle
    case cross
    case square
    case fill
}

//цвета карт
enum CardColor: CaseIterable {
    case red
    case green
    case gray
    case black
    case brown
    case yellow
    case purple
    case orange
}

//игральная карточка
typealias Card = (type: CardType, color: CardColor)
