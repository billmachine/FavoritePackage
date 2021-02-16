//
//  FetchFavoriteUseCase.swift
//  OfflineAppTest
//
//  Created by Ahmad Billi Afandi on 15/01/21.
//  Copyright © 2021 nostratech. All rights reserved.
//

import RxSwift
import GamePackage

public protocol FetchFavoriteUseCase {
    func execute(requestValue: FetchFavoriteUseCaseRequestValue) -> Observable<[GameDomain]>
}

public struct FetchFavoriteUseCaseRequestValue {
    public init(){}
}

public final class DefaultFetchFavoriteUseCase {
    
    private let favoriteRepository: FavoriteRepository
    
     public init(favoriteRepository: FavoriteRepository) {
        self.favoriteRepository = favoriteRepository
    }
    
}

extension DefaultFetchFavoriteUseCase:FetchFavoriteUseCase {
    public func execute(requestValue: FetchFavoriteUseCaseRequestValue) -> Observable<[GameDomain]> {
        favoriteRepository.getFavorites()
    }
    
}
