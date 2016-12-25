//
//  GameType+Delta.swift
//  Delta
//
//  Created by Riley Testut on 12/22/16.
//  Copyright © 2016 Riley Testut. All rights reserved.
//

import DeltaCore

extension GameType
{
    static var supportedTypes: Set<GameType>
    {
        return [GameType.snes, GameType.gba]
    }
    
    static func gameType(forFileExtension fileExtension: String) -> GameType
    {
        let gameType: GameType
        
        switch fileExtension
        {
        case "smc", "sfc", "fig": gameType = GameType.snes
        case "gba": gameType = GameType.gba
        default: gameType = GameType.unknown
        }
        
        return gameType
    }
}