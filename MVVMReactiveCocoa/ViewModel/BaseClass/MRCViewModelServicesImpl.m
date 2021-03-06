//
//  MRCViewModelServicesImpl.m
//  MVVMReactiveCocoa
//
//  Created by leichunfeng on 14/12/27.
//  Copyright (c) 2014年 leichunfeng. All rights reserved.
//

#import "MRCViewModelServicesImpl.h"
#import "MRCRepositoryServiceImpl.h"
#import "MRCAppStoreServiceImpl.h"

@implementation MRCViewModelServicesImpl

@synthesize client = _client;
@synthesize repositoryService = _repositoryService;
@synthesize appStoreService = _appStoreService;

- (instancetype)init {
    self = [super init];
    if (self) {
        _repositoryService = MRCRepositoryServiceImpl.new;
        _appStoreService   = MRCAppStoreServiceImpl.new;
    }
    return self;
}

- (void)pushViewModel:(id<MRCViewModelProtocol>)viewModel animated:(BOOL)animated {}

- (void)popViewModelAnimated:(BOOL)animated {}

- (void)popToRootViewModelAnimated:(BOOL)animated {}

- (void)presentViewModel:(id<MRCViewModelProtocol>)viewModel animated:(BOOL)animated completion:(VoidBlock)completion {}

- (void)dismissViewModelAnimated:(BOOL)animated completion:(VoidBlock)completion {}

- (void)resetRootViewModel:(id<MRCViewModelProtocol>)viewModel {}

@end
