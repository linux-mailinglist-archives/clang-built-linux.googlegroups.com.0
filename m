Return-Path: <clang-built-linux+bncBDOZ354D4ENRBZ4566EAMGQEXDPCCJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8D43F118A
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 05:24:25 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id n15-20020a1f720f000000b00286ccc62b9fsf814550vkc.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 20:24:25 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1629343464; cv=pass;
        d=google.com; s=arc-20160816;
        b=zC3GZQ5hf5ipabTOcR/BDTS6VD2PdayTBRqMev4XVgb1TELLIa2WkZ16CTFZqK8dKA
         /eqSxFwTZmllOba6iubinWvZ/I9ZNBbez6kS+8ZXicPoTYgAOSdnieoUc+HTy9MTSqPs
         vvmwKg19nCRUAQA0czg3QFS+ml8LGDDM0sNN+fLPX1c9fGwjZzOpm/YI5CUyhIiPub80
         MfDV68UAIPt1lHXpFGAIvDH2JGpWP19PXkT5GKmlpBiZ+pUPF1A+Sia9pttSBIZuhth/
         nP/z7pZbGX4MLmR8Y9oSzU0sg/uaDTowgweBctzWkHSzmkcxImSbxHYoVXTwMhsct08W
         JpAQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:from:cc:to
         :content-language:references:subject:user-agent:date:message-id
         :sender:dkim-signature;
        bh=//NrWuISy9uOop91PjZ6zvJ06vFgZtbPiDNnJwbJS00=;
        b=I2Ut2/M4DknwIOj7luvqHvBpCJLaTC+pxyeZHe32kZToM9IToStRl/xsC3sPp30yO+
         5ePjh6LiElIxVTnnlP+Z1ImGDEkfvEAVqZPbFQO6niswXAEA4TqyPMeFMF3wPboG3o3Z
         +xJmWLksnF+5B6cf+O+oM3WSOJK5REVM4nYDOs4Sciitq6y4eyVfkXW2srJdkgVA001t
         pacxcdQk2nKace3PRoVWGJgDmfZZuHi+kEv33agCqzensAajy5q2Bp+89rSPJ0oeoRol
         JfXadh4QK3fzl35MuAx8FB0J8lNz5spDd+fCpqw7k+QlH9pDcC+iq/Rhnsqp9bZdhM8u
         0IIQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b="xBMp8p/4";
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of yujie.liu@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=yujie.liu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:user-agent:subject:references
         :content-language:to:cc:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=//NrWuISy9uOop91PjZ6zvJ06vFgZtbPiDNnJwbJS00=;
        b=aJcVdm37UJxkEAQ9TxBoqfAwFpfIVlPkVx5xg3WiBl8ZENknt06efF8fdpGATqZrnt
         Bz2d0sHhlctBLxLZTMDhDIQ09TsjfoXfkxKGWM6kw3qxtJi3Nta4OCMrfwDlIhs8teg6
         etD+XvhSsAExtFet92yweOLzJGtYuhPtWdufPIvooesMjNplNKP3NxfNDyvWj3PixmID
         R2EOPZhTvFVrfg4EzjXXM/LuICk7rAKqq5pAi55UAWBM25mhf1+DyPEO+8a6LZDgt1lt
         2phYCrfeod05/Mmyahopbw5VwWbuP6HlFrJWxAW+IHraQUFNzFWE2ETpniTaRgX4ApTB
         Zd1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :references:content-language:to:cc:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=//NrWuISy9uOop91PjZ6zvJ06vFgZtbPiDNnJwbJS00=;
        b=inMPbJn0aZ4qH3kXeKxdPJh8nh9G4yUpk2biFCNvS2HBpAhJSg5l2KXQM/8cIGrPlb
         CzWLYzqsszJtdflBdOJGvuYhXTp+a64G7LC/DtLVlTgUZDZJCIR19JE24maysdYn9jIj
         3f8a/G5NviqyxlHFo6r//ioRcgJFnpM7PAXpH6vGNLeClmu6+LhF4SqoZDpyfNS4PETz
         gtp9OdqV0YW7+kFP4leCfh3eC6lzNUPfIoU9YjgIVGPFDjO2pazUzAjH/ovJJNpE3ZE5
         wc5cwvyzk7Pl9/uOGvnx82ucb+SGUE8TKHQROX6g9a5J8QczSwcgLkowAbt6jPCITW3j
         EApw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532MUYtjvXqVBZ7AyxaJHSdo+6+Dd9jydC62I3PJeab0UYy+JhNw
	VknYRSvkShozeq8YwJwxYGA=
X-Google-Smtp-Source: ABdhPJyZC/Fw+yjiLfvt56RWK69oz4HPN4qOraQOfeI4TwMM3/5FHvNi720PcqD6+fkTZkpfVxhMWw==
X-Received: by 2002:a67:f4c6:: with SMTP id s6mr10602237vsn.57.1629343464101;
        Wed, 18 Aug 2021 20:24:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:b246:: with SMTP id s6ls786289vsh.1.gmail; Wed, 18 Aug
 2021 20:24:23 -0700 (PDT)
X-Received: by 2002:a05:6102:3181:: with SMTP id c1mr10625028vsh.45.1629343463207;
        Wed, 18 Aug 2021 20:24:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629343463; cv=pass;
        d=google.com; s=arc-20160816;
        b=yejrQaZ/0L6SUib/m0hwMnFJG1UY6JdiD7t2Ehc5ViZ1MUb0qFbfu62OQVKjGBUcEU
         byc6+QZ7Q543MHD1zQzwlJBb4WnTYNBCEKw1pIjEVShCWfJQcZ3T4ibSynJ59r5uh3Uf
         UPz5FUyNXZa46ZH2hLtx08ZKHVB46dHL4JFVcpDlmlMARYYqMd5EZ+KTkIMFj8r2y9/n
         nWmS+xzB+lc7KObkv7hQG3faBuJQEbiOKRBASG1E7RYgCeEDSbuxUdA+Zc1+/j58T2o3
         /TEQ6/OG9MXpamfGoqbfEMdZgw7Ar8Lic2zBoZdv9x3+dfNZOrFd/7VC8uJ60Iabm35I
         qTRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:from:cc:to:content-language:references
         :subject:user-agent:date:message-id:dkim-signature;
        bh=P2ZoMMxuL1vvALUaECH4D7MQMhc4+3ALU1tAEngMKmQ=;
        b=f5seJniL7Egi5dYEGXCaWSEN5phZLFfEAsBoUlH483tGY+SyaBR54VVuVOeOJ0Jn1y
         UNwU2IcAHZVuPKpTikORdraP/9o6a8IHRW0JUHpV+T7SGdrv/N+IhEmmd1/3VCbK/SCB
         D7Vk61teu7N25cSBRW2iSAiCkhhRUV6+Hibs2sqHE2fjQEl123QLx1njBz5RK/o/FIiG
         3n121zsPn+IdannVW8nH62rjIfq9Q4idb+IW1YNSPchcI4VNKxYzJstgmLzh3iQcIvdH
         HnjzkHxT5C1CXmI2asl15+azrC8esmPzTIBQRv4l4Uy29ax94tBkOzGiAc5gKlaFZWfm
         uZsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b="xBMp8p/4";
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of yujie.liu@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=yujie.liu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id z25si110632uae.0.2021.08.18.20.24.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 20:24:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of yujie.liu@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="196057183"
X-IronPort-AV: E=Sophos;i="5.84,333,1620716400"; 
   d="gz'50?scan'50,208,50";a="196057183"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2021 20:24:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,333,1620716400"; 
   d="gz'50?scan'50,208,50";a="471761023"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by orsmga008.jf.intel.com with ESMTP; 18 Aug 2021 20:24:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 18 Aug 2021 20:24:20 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 18 Aug 2021 20:24:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 18 Aug 2021 20:24:19 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 18 Aug 2021 20:24:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ML27ApwdrBNIkYHwX134ukFmtCvUZjnHn+XPyvb9rrpWKZZl2ZHWr72beOD/yccaEWfrPF4BTOv8rLpXNjhXKeKcRtnSuRPWyuCNO41W1UFQEtS3btLidmMRH4Gx8RSwRcTNt/51qZS5jp/VMtRPOpNQbs5Z1YkIUX2sw0YRB9T05YEUqM3WA9o2WV7t1yk7HdICRBE8MP68FByCcnVP3JJkbNfv9ejpj3oWOKNFPpM8pAaamAC7H6d7R2Xaw3ipVQj9wt8DrhE5Oty6Lo6s9Tpz3eeURztg+Qe8589ap5S4wY8dJhoNz7FPFbR1W5JRSoWSrvyh6diWJwz4lYluAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P2ZoMMxuL1vvALUaECH4D7MQMhc4+3ALU1tAEngMKmQ=;
 b=R/a8c/4S76h/O6rq7BUMwKAexzfY1Vymf/xl4gCiqEv6RczB1xD0JeTgB2Vv8mL/AG9T003nzXbceoFSrdC2mJM3qVeP4W30RoEcLggylDnJPpNTU2usBcoQDEqlc2NnwrU7njU8FtJ7LZcpU8XGdBA7PWgpUw5dsWCOCqwpwPQAiQy2HZktTJp/3XW9dV8XqNb1MZNmvRv+VNBHP8DzdBHzOz/FAqQRz6SJR8pS93TqxNquQjbrbSQ8HdawnfrX32KjArP5RB36womgqrz/7ePsG/tvDQi4W440OwvBB/PH1ZK7PoklDrm3q6sTwXKKpCVidCzEKKr59a+PgmWLng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5598.namprd11.prod.outlook.com (2603:10b6:a03:304::12)
 by SJ0PR11MB5662.namprd11.prod.outlook.com (2603:10b6:a03:3af::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.15; Thu, 19 Aug
 2021 03:24:10 +0000
Received: from SJ0PR11MB5598.namprd11.prod.outlook.com
 ([fe80::b9bb:3f44:3f2d:5a4f]) by SJ0PR11MB5598.namprd11.prod.outlook.com
 ([fe80::b9bb:3f44:3f2d:5a4f%9]) with mapi id 15.20.4415.024; Thu, 19 Aug 2021
 03:24:10 +0000
Content-Type: multipart/mixed; boundary="------------Cjv1thce9NBqRRXY16uyrKAv"
Message-ID: <4dabc78a-f9ee-4e7d-8bf3-ea1c6cef8530@intel.com>
Date: Thu, 19 Aug 2021 11:24:02 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.0
Subject: [kbuild] drivers/regulator/bd718x7-regulator.c:531:8: warning:
 Excessive padding in 'struct bd718xx_regulator_data' (8 padding bytes, where
 0 is optimal).
References: <202108172206.9cbgvI53-lkp@intel.com>
Content-Language: en-US
To: Cristian Marussi <cristian.marussi@arm.com>
CC: <clang-built-linux@googlegroups.com>, <kbuild-all@lists.01.org>,
	<linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>
From: kernel test robot <yujie.liu@intel.com>
In-Reply-To: <202108172206.9cbgvI53-lkp@intel.com>
X-Forwarded-Message-Id: <202108172206.9cbgvI53-lkp@intel.com>
X-ClientProxiedBy: HK2PR0401CA0001.apcprd04.prod.outlook.com
 (2603:1096:202:2::11) To SJ0PR11MB5598.namprd11.prod.outlook.com
 (2603:10b6:a03:304::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.238.2.112] (192.198.143.21) by HK2PR0401CA0001.apcprd04.prod.outlook.com (2603:1096:202:2::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Thu, 19 Aug 2021 03:24:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c726974b-e466-431d-3e1f-08d962c0cf2a
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5662:
X-Microsoft-Antispam-PRVS: <SJ0PR11MB5662ABD03207C3F350133398FBC09@SJ0PR11MB5662.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FS72LFI8uMFPxhqzwlxfPFJ0E6VP1nXSK4c8W4eM/fkSwKKLbdVbTBlSVau9xgQ/GTjFULyTvcRQxNoZojLNPoxwCw+fL+LxluaV29qxNfHjMLGXCMUirbUJ2ENvXUGDyNBg+JX1xg2e3e8CAO8jzLIKM1wnxJYSWVXHz+ZNXh9ohW4MGo6ySrnDdL7kJhwnDj5KklgJ1bV/Aj2PAbBevOcmH/lEWxx9VCQ9Fe0xawfmRKiEbO4etntGx2m3VQvazrY4+y3g0mXqpb17Lnhao6Mr0+bb+3cKM0+4TzsGGEOnVHQg7OUelTZ2fstKXnLkY57y3GvROoc9IXaGqTx/obb+NoJ8c56sxIXUDsDVDQygGvAChQ85cKQuknihtoAD/XfsG4Xz/UZ+ze63yoAhAe202UqLm1ZLqHVHNW3syF1fWBd+lXhgXPcg8lvGTXL6bs8B72RTLmoFTR9KL94ibsZcfaP9Jn5iFJhik8T/6mT9gfQFPGfNcqVl8A2af6NkZeblYCEwn9ENvYtyaShCNt/diO0v4IX+6FHNwT58UNYDmGxmTJFYOrzL08jk6PAGUcyVCG6HyabB54aKq1wllzWAkyj84sdCzoWQkvlvt2WLm9lAn1s+qtPCgEpmo9GBUUosu1QlqJvSoOMYRBm89lILZ+xTME2+6vzXPCUSRfSCAsckLp9pfR/+O59cvWcHmZcWmCp1gatkg5qv/B2L/DjIxaWrOPzdA9/rtyC6j67yNTtNI5NHCHYgkGSi1x6I7mj6mpzDuwkrMNyoMy1ONEiW9vY2TqGD5263IBZL1gIIRDoMkduc+OnH0oVl6QHT
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB5598.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(376002)(39860400002)(366004)(346002)(396003)(36756003)(66946007)(8676002)(478600001)(86362001)(6666004)(956004)(38100700002)(33964004)(2906002)(31696002)(31686004)(83380400001)(2616005)(235185007)(186003)(8936002)(4326008)(30864003)(316002)(16576012)(5660300002)(6486002)(66476007)(66556008)(66616009)(26005)(966005)(6916009)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b3lGbXE5T1pxYUNxbll2aU5NbnQzZ1M3TXM0WXgvVStkTzBUUjAvNU1jZWZN?=
 =?utf-8?B?aHRsdk9aQmFQVFRXblltRTg5clFFVjU4Z3NGaC9CNU5ISnN6QzVCR3NJdjBo?=
 =?utf-8?B?ZS9La1RsNG1ibjBTRmswK3dWSGF1ZTlxMGwxYytENjdKSXFXOXFVTVROZlJ0?=
 =?utf-8?B?VFBNQ0N2QWRnRGVNRjNCeExFWUttRGlIbEN6Y3E5a0h0aGNFRkdRVG9GMCtY?=
 =?utf-8?B?QTlKVFFTSWVxbWRmSnd1bVQ5dGVHUFo1QWRsOHFNOXkreC9Xd0FicDFUaDFa?=
 =?utf-8?B?azZLUjN1RzZBeE1MREwwSlY0ejQzZjJNZWRUSjZwYVRoUEdCMmg4eTFndHpO?=
 =?utf-8?B?Z0E1WStBbHhFZ0hMaXpRUE5aRTZDNllPR0JNajA0TklPb201WFBScTBVMVFE?=
 =?utf-8?B?RDFHK3pLN2VzTHNaRTNMckpmYW5vSllVeWFHSXlMNXFTSWFWZWxOSzVUZkNk?=
 =?utf-8?B?ZlVNemptSU1yVlg1ZnByZXVXVFdQWE04M09RTUw4eTI4QU9XTU1pRkx1dXpv?=
 =?utf-8?B?STM1YVFnelhkTndsZjBEMEYwN1BhTHJJZW9kZnVTeXFPcGR1ZXowaThjSWpK?=
 =?utf-8?B?NnIxZHhlSjlFRnlaM05MS2xsU1d2cG1hcHpHWXA4eUM1ZG9JbEpUMm9KSno0?=
 =?utf-8?B?cldLcE1vbjhvZFh4R016bVNaRXI4NUtRdEtQNVB2RzZWVDFHWXNzVkkzdzR1?=
 =?utf-8?B?S1E4SWFYQ3hsaXd1ejZjaWM0aG53Tmk2S2Yvb0xhSy9ScmJoS1pWa0pTZGsx?=
 =?utf-8?B?cFp4dEo3cjRZZWNaWHprK1ArQ1FTLzc0VEdSOHhtdG1VckdjSW5DNkpvcmY0?=
 =?utf-8?B?K2JwdlBEV2hrMzFFUCtMR0lFdm5vTU45Tno2ZEk2cEFlSTVUMms2TjlWMzh4?=
 =?utf-8?B?eTRkMXJXYVZXWnIvZmVUU0YrOUpvQ0swMXhjN3ROd3dHQ3BXOFZKSFVRaGdj?=
 =?utf-8?B?WnYrTUgxSXp3NndnTE9TbDR0ZXowUDJWSlRlNmgxRlFtR0ZKUjRkOVVEaUMv?=
 =?utf-8?B?NC9LZEpEcHhCMHJtbU5YbUp0aDJ6SitVZlp6TUFKVFQ3VjMzK2E1WDduQ25X?=
 =?utf-8?B?Tm1NR3hPQnlESGV3b1FTVlp4WE1zbXRtd1FvSThERHRDdDMzL0RZM0QxTmw0?=
 =?utf-8?B?VmtzTnlaRlV0OXZodVlIQXNoVDQrRmpGdDBINWs0WWMzb0pNOWRxQjJVTlJB?=
 =?utf-8?B?MlBtR0JmcmVBRExCdXRlOUkxdFlzc2YwK1RNbVFITUdXZnhKeXA5MzNLVzBI?=
 =?utf-8?B?czFGWEFlcDBvdFlBcG4vQ080ejNiMitBUWlUVEMvUm52Tk00aE9ya1J3SldL?=
 =?utf-8?B?QzV3bjVIc1NVY3BRRmFVdGx5ejNTSEhySEVNNWVZeFVtNVdMVXdvMjR0ZndI?=
 =?utf-8?B?b00vQkgzS1J6OXcwSmpPMklCOG5SUUJQaVV1NGowSHBTTTM2bWpXZGNuV05i?=
 =?utf-8?B?VjdOb01GZjZzZ0paLzJqS1V5OEV6elJLSzFnQlBvZCt0cDdscTgzdkRaNmRI?=
 =?utf-8?B?QStsMXpjb0FZZUpSaWhocXdIRk9FWTB5Z0RtS084d21yUW9FUXdReGZlQWFN?=
 =?utf-8?B?T1YxTklJbDVHOThoNW5GMkZLQkw0cEQva1FLazAwN2duQnpiV3JCT2Vqai94?=
 =?utf-8?B?d3VaaFlybk1DZ3doUW84NldiMERTcFFVbmF4QVMrZzhQaUpTTWowYUFHTTJ6?=
 =?utf-8?B?dldIR3lHNGRSUi9kbWFRMDdJS2ZBNldxYWt0RUJTck5xMVJDQkxCRHMyN3c5?=
 =?utf-8?Q?/AuhsYr72ruEd/1rwxj59bwaDalnhLUHhriIUYW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c726974b-e466-431d-3e1f-08d962c0cf2a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5598.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2021 03:24:10.2159
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lPHvs+nfW6WNjP78YxczJ14VolOQ2+PykuXyVGaL4iTRPtaGWSxTZ8bbTTc/1q4BBU5nhAeHrbmh2F0S3qAqvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5662
X-OriginatorOrg: intel.com
X-Original-Sender: yujie.liu@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b="xBMp8p/4";       arc=pass (i=1 spf=pass spfdomain=intel.com
 dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of yujie.liu@intel.com designates 192.55.52.136 as
 permitted sender) smtp.mailfrom=yujie.liu@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

--------------Cjv1thce9NBqRRXY16uyrKAv
Content-Type: text/plain; charset="UTF-8"; format=flowed

tree: 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   794c7931a2428a656551f2179e6a093233a6e0aa
commit: e7095c35abfc5a5d566941a87434c0fd5ffb570f regulator: core: add 
of_match_full_name boolean flag
date:   9 months ago
:::::: branch date: 12 hours ago
:::::: commit date: 9 months ago
config: arm-randconfig-c002-20210816 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 
44d0a99a12ec7ead4d2f5ef649ba05b40f6d463d)
reproduce (this is a W=1 build):
         wget 
https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross 
-O ~/bin/make.cross
         chmod +x ~/bin/make.cross
         # install arm cross compiling tool for clang build
         # apt-get install binutils-arm-linux-gnueabi
         # 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=e7095c35abfc5a5d566941a87434c0fd5ffb570f
         git remote add linus 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
         git fetch --no-tags linus master
         git checkout e7095c35abfc5a5d566941a87434c0fd5ffb570f
         # save the attached .config to linux build tree
         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross 
ARCH=arm clang-analyzer

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    2 warnings generated.
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    5 warnings generated.
    drivers/regulator/as3722-regulator.c:46:8: warning: Excessive 
padding in 'struct as3722_register_mapping' (14 padding bytes, where 2 
is optimal).
    Optimal fields order:
    name,
    sname,
    n_voltages,
    enable_reg,
    control_reg,
    sleep_ctrl_reg,
    regulator_id,
    vsel_reg,
    vsel_mask,
    enable_mask,
    mode_mask,
    sleep_ctrl_mask,
    consider reordering the fields or adding explicit padding members 
[clang-analyzer-optin.performance.Padding]
    struct as3722_register_mapping {
    ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/regulator/as3722-regulator.c:46:8: note: Excessive padding 
in 'struct as3722_register_mapping' (14 padding bytes, where 2 is 
optimal). Optimal fields order: name, sname, n_voltages, enable_reg, 
control_reg, sleep_ctrl_reg, regulator_id, vsel_reg, vsel_mask, 
enable_mask, mode_mask, sleep_ctrl_mask, consider reordering the fields 
or adding explicit padding members
    struct as3722_register_mapping {
    ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    5 warnings generated.
 >> drivers/regulator/bd718x7-regulator.c:531:8: warning: Excessive 
padding in 'struct bd718xx_regulator_data' (8 padding bytes, where 0 is 
optimal).
    Optimal fields order:
    dvs,
    additional_inits,
    additional_init_amnt,
    init,
    desc,
    consider reordering the fields or adding explicit padding members 
[clang-analyzer-optin.performance.Padding]
    struct bd718xx_regulator_data {
    ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
    drivers/regulator/bd718x7-regulator.c:531:8: note: Excessive padding 
in 'struct bd718xx_regulator_data' (8 padding bytes, where 0 is 
optimal). Optimal fields order: dvs, additional_inits, 
additional_init_amnt, init, desc, consider reordering the fields or 
adding explicit padding members
    struct bd718xx_regulator_data {
    ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    2 warnings generated.
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    2 warnings generated.
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    2 warnings generated.
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    2 warnings generated.
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    2 warnings generated.
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    2 warnings generated.
    Suppressed 2 warnings (2 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    drivers/gpu/drm/drm_self_refresh_helper.c:85:3: warning: Value 
stored to 'ret' is never read [clang-analyzer-deadcode.DeadStores]
                    ret = -ENOMEM;
                    ^     ~~~~~~~
    drivers/gpu/drm/drm_self_refresh_helper.c:85:3: note: Value stored 
to 'ret' is never read
                    ret = -ENOMEM;
                    ^     ~~~~~~~
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    drivers/gpu/drm/drm_fb_helper.c:156:24: warning: Value stored to 
'helper' during its initialization is never read 
[clang-analyzer-deadcode.DeadStores]
            struct drm_fb_helper *helper = info->par;
                                  ^~~~~~   ~~~~~~~~~
    drivers/gpu/drm/drm_fb_helper.c:156:24: note: Value stored to 
'helper' during its initialization is never read
            struct drm_fb_helper *helper = info->par;
                                  ^~~~~~   ~~~~~~~~~
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    3 warnings generated.
    Suppressed 3 warnings (3 in non-user code).

vim +531 drivers/regulator/bd718x7-regulator.c

ba08799e90b593 drivers/regulator/bd71837-regulator.c Matti Vaittinen 
2018-05-30  525
494edd266b945f drivers/regulator/bd71837-regulator.c Matti Vaittinen 
2018-09-14  526  struct reg_init {
494edd266b945f drivers/regulator/bd71837-regulator.c Matti Vaittinen 
2018-09-14  527  	unsigned int reg;
494edd266b945f drivers/regulator/bd71837-regulator.c Matti Vaittinen 
2018-09-14  528  	unsigned int mask;
494edd266b945f drivers/regulator/bd71837-regulator.c Matti Vaittinen 
2018-09-14  529  	unsigned int val;
494edd266b945f drivers/regulator/bd71837-regulator.c Matti Vaittinen 
2018-09-14  530  };
494edd266b945f drivers/regulator/bd71837-regulator.c Matti Vaittinen 
2018-09-14 @531  struct bd718xx_regulator_data {
494edd266b945f drivers/regulator/bd71837-regulator.c Matti Vaittinen 
2018-09-14  532  	struct regulator_desc desc;
21b72156ede8b7 drivers/regulator/bd718x7-regulator.c Matti Vaittinen 
2020-01-20  533  	const struct rohm_dvs_config dvs;
494edd266b945f drivers/regulator/bd71837-regulator.c Matti Vaittinen 
2018-09-14  534  	const struct reg_init init;
494edd266b945f drivers/regulator/bd71837-regulator.c Matti Vaittinen 
2018-09-14  535  	const struct reg_init *additional_inits;
494edd266b945f drivers/regulator/bd71837-regulator.c Matti Vaittinen 
2018-09-14  536  	int additional_init_amnt;
494edd266b945f drivers/regulator/bd71837-regulator.c Matti Vaittinen 
2018-09-14  537  };
494edd266b945f drivers/regulator/bd71837-regulator.c Matti Vaittinen 
2018-09-14  538

:::::: The code at line 531 was first introduced by commit
:::::: 494edd266b945f36908184433dd36eda1719cdb0 regulator/mfd: Support 
ROHM BD71847 power management IC

:::::: TO: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
:::::: CC: Mark Brown <broonie@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


_______________________________________________
kbuild mailing list -- kbuild@lists.01.org
To unsubscribe send an email to kbuild-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4dabc78a-f9ee-4e7d-8bf3-ea1c6cef8530%40intel.com.

--------------Cjv1thce9NBqRRXY16uyrKAv
Content-Type: application/gzip; name=".config.gz"
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
NaaFR8n5l5EcE9oV/UAx9P/2tX8C/bsBAA==

--------------Cjv1thce9NBqRRXY16uyrKAv--
