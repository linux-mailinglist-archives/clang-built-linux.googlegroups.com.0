Return-Path: <clang-built-linux+bncBCLNXFWLUMKBBS6G72LAMGQELBGJ7YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id B98C9580EC4
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jul 2022 10:18:20 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id o8-20020adfa108000000b0021e903fb612sf618904wro.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jul 2022 01:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:user-agent:subject:content-language:to:cc
         :references:from:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3Kq0tECLcol2z3vc/sc/ptqF+z9ohPYrATZw07T4Lhc=;
        b=buBTI725VjFPIep0psf2XxacbCBMR8M6mYXt7mf0ueTERUIVDNi3xRfZrT9xbpUdKE
         YFi/uMSu0RqolvZlpage914/gw6m6npzia4Ecdu7Q2xXMDneARe+UaII+K7PA8XzcwBt
         1Ua5rlqcA7Z5wBr5IZuAUknZyfR9Q2BnVGTidGlzuQeDyyKfsVE8sFKGPGGInhsXlYxF
         noaoXdyBqt1njUDHrMx+1AHvlOpdiyIVlHdcEtkJTksLUu0EVleh1D52QhkgsalykxG/
         kjTY6Dk+Flr6J0Cb6MUq29vM7OS6eSZtWTklsqizWR0kh4TR3U0/i9iCNdURyO8pRXDu
         I9MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3Kq0tECLcol2z3vc/sc/ptqF+z9ohPYrATZw07T4Lhc=;
        b=E+aEnAFzHuXk6e9xaEGD+Sr6BxtX0lFc4TtFrppvEFZqqDtW5cNw05F9P3KPO9nF0t
         4+Kp3ai2PEDYKcVXrQwGQHjGXRdzDstCLjxw59xj0gTU53r1IA4SWMLFppl/Bs7eV1RR
         pVqtMD77/ovFd7rAT0N8MutsUlwMg44toMmHh89PmakqE03F4aEms3i2TqaH51Iu9dgT
         tKY0FkIqs4/0q7kkumaxAu7LQPNDwVwkxQ8y2hVanMCd4y78zxQEsIj+c82bmlym8f8w
         wZsRJwY284MDW0ILok85jq9r2uSuZ5dYoPxmi0aBZRnsEqZyQjbT62Atzvhi+irOtlme
         CwNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora9XzLtojKdkNzi40pbjfyrOqGqgPquZzN5qtV9ekgwr1ERuOT1N
	DQMef42yBN5MV40BD/EF9RA=
X-Google-Smtp-Source: AGRyM1srjMzlxVcmXJvz/6nHdGu/7xCAdn9u0BBZvgITsHPsaT3Q04QtSIJtsEL4VpxB3NuMvy0ZOw==
X-Received: by 2002:a05:600c:4c25:b0:3a3:6752:f761 with SMTP id d37-20020a05600c4c2500b003a36752f761mr4439821wmp.43.1658823500143;
        Tue, 26 Jul 2022 01:18:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ed47:0:b0:21d:668b:3503 with SMTP id u7-20020adfed47000000b0021d668b3503ls2721434wro.2.-pod-prod-gmail;
 Tue, 26 Jul 2022 01:18:18 -0700 (PDT)
X-Received: by 2002:a05:6000:1090:b0:21e:504b:87cf with SMTP id y16-20020a056000109000b0021e504b87cfmr10258874wrw.279.1658823498877;
        Tue, 26 Jul 2022 01:18:18 -0700 (PDT)
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id t25-20020a7bc3d9000000b003a32bc7d078si387791wmj.0.2022.07.26.01.18.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Jul 2022 01:18:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of nirmoy.das@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="288650203"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; 
   d="scan'208";a="288650203"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jul 2022 01:18:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; 
   d="scan'208";a="575395733"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by orsmga006.jf.intel.com with ESMTP; 26 Jul 2022 01:18:16 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 01:18:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 01:18:16 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 01:18:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eA3w9sdbRAH9aiF6fIBIjn9VoVTWwyfL6ktKfzFNchm2QZMl/IM3Gem0EbdSC2FGB2z7MWj57Jss2G2QhhXjs0HCgaouxnzG4qsXGiWoiqheI+ykBfudYWUGg96ArcBM5hlf55LeTFB1lX0G4oBiow6bEGPQHXON6Hq1xXw2frCnFCMxKj50ZnWNxZj+N4aDnMXale6wRMwrEzXT1sPbqLOdK4TiHmulBUVRZYfDmPbMU4yb4woTuf/jiEFRrL6Nqx1agfMoFgcoHbFH9lkXzWPamzEc8wxkM7CqkchmUBL6Ok6FLKi/v1CgM/EbzCMuBeTOrY9+XgJs2gv5v1a/ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E1/5IN8Fvs+rjBqrLgpt2S1L/JSbtNRy7vmLCt2U5aA=;
 b=ZfFiNGlZSrpwSxis0Qk6uHDwnTMYvotImH1t0VhBTdRUOwGIMQWR9mC6yn34IS6r7i7z8SMGX/qpbano+I/tpTjeP1ngC3IZNUZnBVgyFX+iFhG7o6Mjfd5aCJVXzn5zg5EkBKp36Hr1dThx3tmGVm+Wcew/9p2q3eRTdhhTo5ltcOSHOmypftOBcrvow/626DYZss7/suEPiAzt/UWxFvTl42iNY84gLwA1LhHOglSJ/aF7RrVlauOeJAC4xf6dJnaTRpVCQFWtisLn/fHHDFe31Fd04Ap6yDGIFjB0b/DxGshG6acEbFKDhUXGlp7K2c5Xm/0aUJdv+a9K8GltZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by MWHPR1101MB2207.namprd11.prod.outlook.com (2603:10b6:301:58::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Tue, 26 Jul
 2022 08:18:14 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::3d0f:2102:5483:18e]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::3d0f:2102:5483:18e%5]) with mapi id 15.20.5458.025; Tue, 26 Jul 2022
 08:18:13 +0000
Message-ID: <e9bc1d85-31dc-580b-f710-d59d692f79b1@intel.com>
Date: Tue, 26 Jul 2022 10:18:08 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [next] clang: drivers/gpu/drm/i915/gt/intel_region_lmem.c:94:23:
 error: result of comparison of constant 4294967296 with expression of type
 'resource_size_t' (aka 'unsigned int') is always false
 [-Werror,-Wtautological-constant-out-of-range-compare]
Content-Language: en-US
To: Naresh Kamboju <naresh.kamboju@linaro.org>, Linux-Next Mailing List
	<linux-next@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
	<regressions@lists.linux.dev>, <lkft-triage@lists.linaro.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
CC: Matthew Auld <matthew.auld@intel.com>, Stephen Rothwell
	<sfr@canb.auug.org.au>, Nathan Chancellor <nathan@kernel.org>
References: <CA+G9fYuH+Jo3xFypJc8+F6juT783StO=oe0P9ZMMLE7nM0bQJg@mail.gmail.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <CA+G9fYuH+Jo3xFypJc8+F6juT783StO=oe0P9ZMMLE7nM0bQJg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: LO4P123CA0454.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1aa::9) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c33509b8-8e24-422c-2b4a-08da6edf6262
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2207:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fLxQgPv6IKH1NPGMITjqevzGxoKM/yvCsVDWX7ghUkMaqwaKhvhRDhmnybMGTN8Q5/5eJiHfAjuBztTaEwvC2C5R0DURIAm5Qr2YT9BeleNYPUgNLe1fHaZn3nkG4amBqgm7G9X56NsjcAaNUwEApj3PC7X1UcPZE5tXbF2lqMGd+lYD1djgiPkAnbiEYrWowboGfrLpEHdJYTPa23JIGDv9AQntKTOnpkqln0V1J/xLzkZQkstE91z5JKKwF26RI5a8qAQvpkgIGvU7Ev6OwOj5iW73QJwaCMc+335ajL/5wkxGCvp+mSFZDDZ6bbQN3q0F3/UwL7jGChCN83FOXtyo66JZTltKs3DE86i3lz4/lNpMuNYUa1FhNf5j/EL0TD/6VpGnwT+rnXJE54ouH2Fu+n+nDtFzjg6CmswDc7GzzROsoHKRa5i48q6Xx9TqFapuqLHmWwn6AxgwdRip5nJHE+A8AG0S2Cl1KAz3zPa6GC2z52uAVpsA5RM6HkrPmobaTXsSixBQGCHZTOLfn3oY4XUPrXgiVb3k5k2PwiQ3ZJ0+pdBZX6ETs1pm2vxGQFJOoXAkTBwJo2UQQV1uwvJeWW7GZ3YEtV/Mpa+1EhXKlI9Mk/B1OZtcUWcrgKWCngRigbws9hblFWAPTh1DyFkCiziAU5S959t0VCTmJ+ZLfFoXYlHBVmVvRFQpmnWJQTLXmzS3D7ao/iCSrsLaBcqTew/6yOsa9yT2WZQ6ih3dycrqqPQrf7eP1c6cNWy1S8eholqkINKtc3bZT28l93efNNvigzTuyoHolWnPPWUNMRoyzSM+GSGjA3XvESq55nUVUVkFP6v6ulRDqeMkTfeWdAUYoqKee+AFBl8fmlHmFwPMEiIyzRBpPBWlFTTh
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR11MB2961.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(39860400002)(376002)(136003)(396003)(366004)(346002)(38100700002)(2906002)(31696002)(31686004)(82960400001)(86362001)(110136005)(66476007)(66946007)(54906003)(26005)(8676002)(6666004)(4326008)(66556008)(36756003)(478600001)(8936002)(966005)(6512007)(6506007)(316002)(2616005)(186003)(41300700001)(5660300002)(53546011)(6486002)(219693005)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TmtvR3plL2tvOXBIMmVsaFBkNDZuZUIvaFJVbEVLTzRGamNsc01DVEdhaUVi?=
 =?utf-8?B?RWRsUk0rWHhaNFpWcUpTbGlaN0dkSy9ITkxvNGx5VU52T1NXaE9sR2ZlUURy?=
 =?utf-8?B?WHNoTnRRSFMxSGN3QkdVK2hNckhzNGlNYlhCbGRYWjdKWGhpZTB2WWVQM2xS?=
 =?utf-8?B?WEtrRjEzUGRJU1FXb2VaSGxSZE1iYytab1hHS1pCb2xIQmZ3aTJGNDNkS2E3?=
 =?utf-8?B?QVduZjFTcnVoN1BQSldnUC9IUHphZ2JacGIyRkhleDV6Nk55bmxsQ0FLMDdR?=
 =?utf-8?B?NHBqVVRwajBDUS93MVFzNXVNQ2NZckVIdC9kemtMOWN6Qnp3NVU5SkZqSm9J?=
 =?utf-8?B?MlAwRWtxZnhnc2VnS3AzYnR2UWdKU2wwdXVZbzEzaHpzUzkvcGlTakFMSFp1?=
 =?utf-8?B?TXo1U3pmb1FiTDZ0Z2JEODFDeG44ejNUbTB2a3U0QXUxOTNhZXZUTm1aeEF2?=
 =?utf-8?B?ZGh0TTFoNW1MLytCWXVEZUN1NnVKYnBMUkxpdjAvYnQrWmk0L0kvaGhWc1dG?=
 =?utf-8?B?d1Z5WS85cSt4Z2c1M3ovc1ArZDZmNXJvUE5yQzhUMTZhaTBLU294Z1pMcys1?=
 =?utf-8?B?N2phOVNmL3lxbklKd1F5Qy9zcjc4Sko1dDZycWwyRGkzTG1IYVJhd2w4cVNR?=
 =?utf-8?B?bkFDNUg1NDVpR01pd1VVMHJFVXVKMEoreXpBajV5SlczREJtQTdzMURoQ1FZ?=
 =?utf-8?B?WHFySUhHNFpobVdDTmlKTjhQS0g5b1JheE5XNVU5VW14UCsyS0MyZFc3S0ha?=
 =?utf-8?B?eU5rSVh1SUN0S0dkcGJRd3FIVWs0V1BnakZoYVVpcVE5dGFaM0RlQklKbXlr?=
 =?utf-8?B?Q296RkJmV3h3VWZ4ekMzRFdDc0ZSanVZRjdjOXRZMWxmNnYvdDl0YWtlWWZU?=
 =?utf-8?B?YkVxL2hVa3lLeFg4TFBPWFdMYmtKNUFiZ25vTkN0UThMZVVuOHVxb3JEOGVC?=
 =?utf-8?B?R2RWNXVLU2hRV0ozZmRybjZnS3Y5anpXL0FQd2dFc2VEOGw1Mi9VMmtLd0dK?=
 =?utf-8?B?blFBM3VQalI3T0U2NEJZakVNdlpkZDhKdVJhUVpEM1lkUVFCcTVsZU1meFlt?=
 =?utf-8?B?ZDVVVDlKTEVCRzZ4RmlKZm03K2RxL2NUV2xia04vQm4wd0V1Z0l3dHBTY2NL?=
 =?utf-8?B?UFB5ZnUyVWpQOEVZZEkzSHpGZXM5V2JkU2FMMHFqZWRJQnA4QUJMa01RSmlm?=
 =?utf-8?B?SmpYcW0vSFVoTDNYeGg1TUdkR3FMTFZZTkxjU0JUZ081UjAvdEgrZ1luWnJ6?=
 =?utf-8?B?clJmTVJ5VzRYR0R0TXM2UUl1aUM1aE5aaGs5Zy9TSzU1dXBSZjBUWTMxR3B5?=
 =?utf-8?B?aXZIdXJTTHZrbXhIdndYYVFINEJOZnJlQjlXQWtnUk96N0svTGJYQVBaQnI0?=
 =?utf-8?B?Y0J2Z3RiSkxFNndqNXljR0dXSzhNRGtQWVpKSkpKZEM4WXJDemFlOEpFRW16?=
 =?utf-8?B?YlkxVStyNEEzTUFNYXZtQ2hFQ3VGNG4yWlF6c1E2VUJ4MnZ5OXJhT0d6TDZN?=
 =?utf-8?B?SmtzMnRhWWFNeHVEVUd6dFRCemxyRnlENjEwUDVWaGV4T3R0c21wMlNMZnZ2?=
 =?utf-8?B?Z1UxOUdxenlUdkIyaFIxb2RIaUFWSzl4Znp5YXV4TkRGcTdHM0hhcDNrN043?=
 =?utf-8?B?M2N2YlE3TG9xeEtvak1HUHozLzdpTWw2RGxsd2NCdjFxaEV4N3VITWNUcW9h?=
 =?utf-8?B?U2FsR3BuR2MzUUpteGc0eTd0THNkcGEzRDd6THFwOGJ4VkQ3MkZ2Z2dENW1D?=
 =?utf-8?B?WG5uQXd3ekFqRTlCWEwwa1hiUTNtSDRsTFE3K2NEd1JVM211WWszdW14cGNt?=
 =?utf-8?B?TGkvak50UUNtUldnbUVMbFJIOWg3dUlOUlFINDRwRHlvNkJNaWxuQ2xyb0Vz?=
 =?utf-8?B?cW1IclM1MWpmcWc3czI3eWdzRTRnSC8vQVBVWCt3azhUMGR3ay9nN3oyMy8v?=
 =?utf-8?B?MzNEaU5iSW5MRHh6Z3g0WEZJSVIzZVRjQ0FFRE1pZHhBQklHS3d3aEZkN2o2?=
 =?utf-8?B?bk9OeEp5UGI4MVdOaXhlcXFVQXViS2FBRHRjSGVGMGRRWkNreGhhNnYwN0xJ?=
 =?utf-8?B?eGlzTkhFaTF6TEFjcFBOZ1pjVG5ndTdXTVdISmZOdVBJRERwK0VLd2hVLzdl?=
 =?utf-8?Q?cE0GFK9nq+bmc8r2BOCcKvFiX?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c33509b8-8e24-422c-2b4a-08da6edf6262
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2022 08:18:13.5584
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OrFRSfU1nPn7YzI7yz435Tv1s3ibuhIDR+YUHdUqLUogOHdKvXHuK/Vba2Lhs/yF3K6uk91Q1PX3UYSDGgECNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2207
X-OriginatorOrg: intel.com
X-Original-Sender: nirmoy.das@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b="dtZT/hLg";       arc=fail
 (signature failed);       spf=pass (google.com: domain of nirmoy.das@intel.com
 designates 134.134.136.24 as permitted sender) smtp.mailfrom=nirmoy.das@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Hi Naresh,


Thanks for your email. This is a oversight from me. I will send a patch 
to disable pci resize on 32bit machine.


Thanks,

Nirmoy

On 7/26/2022 8:58 AM, Naresh Kamboju wrote:
> The Linux next-20220725 i386 clang builds failed due this build error,
>
> Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
>
> Regressions found on i386:
>
>     - build-clang-11-defconfig
>     - build-clang-14-lkftconfig
>     - build-clang-13-defconfig
>     - build-clang-12-defconfig
>     - build-clang-13-lkftconfig
>     - build-clang-12-lkftconfig
>     - build-clang-14-defconfig
>
> Steps to reproduce:
> -------------------
> tuxmake --runtime podman \
>          --target-arch i386 \
>          --toolchain clang-14 \
>          --kconfig
> https://builds.tuxbuild.com/2CQwgxqR0lJKwPMl2LxaDTNwsq0/config \
>            LLVM=1 \
>            LLVM_IAS=1
>
> Build error log:
> -----------------
> make --silent --keep-going --jobs=8
> O=/home/tuxbuild/.cache/tuxmake/builds/1/build LLVM=1 LLVM_IAS=1
> ARCH=i386 CROSS_COMPILE=i686-linux-gnu- 'HOSTCC=sccache clang'
> 'CC=sccache clang'
> drivers/gpu/drm/i915/gt/intel_region_lmem.c:94:23: error: result of
> comparison of constant 4294967296 with expression of type
> 'resource_size_t' (aka 'unsigned int') is always false
> [-Werror,-Wtautological-constant-out-of-range-compare]
>                      root_res->start > 0x100000000ull)
>                      ~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~
> 1 error generated.
> make[5]: *** [scripts/Makefile.build:250:
> drivers/gpu/drm/i915/gt/intel_region_lmem.o] Error 1
> make[5]: Target '__build' not remade because of errors.
>
>
> Build link:
> https://builds.tuxbuild.com/2CQwgxqR0lJKwPMl2LxaDTNwsq0/
>
>
> --
> Linaro LKFT
> https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e9bc1d85-31dc-580b-f710-d59d692f79b1%40intel.com.
