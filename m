Return-Path: <clang-built-linux+bncBDOZ354D4ENRBBFW7CEAMGQEYCAGFPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id AC78A3F158F
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 10:49:09 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id 62-20020a3706410000b02903d2cdd9acf0sf3673226qkg.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 01:49:09 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1629362948; cv=pass;
        d=google.com; s=arc-20160816;
        b=0jkO9ZcY8/GUvkYcBf3K6fWuO/Wf6EA6YPxI8gGDLP4Ysp3BjJLshGge8g5GAbg4LN
         ScArJeag/USRPs5qCLwyOeMvSHEXDVnNWGBq5UU1qibaf014drT12IgqYYFhwMCUmyBX
         a3sKRn+AUVZydDqwoQT5VWc1wD8SvPWwV1ynPM6rOEqCTbczXGyokOUNwBqCrLneWUT/
         fg7pMGvp4WzCRBChzOtFxRH2kvgbDW9+dWmOmPlK6fsnXPgsEY5H0NT/yi9cCBfhjxvL
         zgS/bV6Uq5sLGQXC53vFpBX5kGtFz/ySJz9ikcR78R9G6SVepDUPOTE6+8FME6dXlWAT
         f+8w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:from:cc:to
         :content-language:references:subject:user-agent:date:message-id
         :sender:dkim-signature;
        bh=Y6+PlczK3nI70TGLp0Fku0NhSmaCYi9j8jJ18WoP7AY=;
        b=JN0XcRGuniYv1Zxx7pcUJRd/HnRRPHhRP8P4atRIM6eiT+gdKzXb8NAcnf117zssH2
         1yeeelqGsFLnSB6kVnvYLSFqck8RILLuLENvDlrkYCh2wFcO9WORF6HYKeoMGfGf8SHt
         gaXOhe+uPZe7Bh3MbEOmDyBj8VggFzJ99sL34YoqjhALHIt+SLXmAlDPSdqiwsiYxPhj
         lLEb5uNu6YCCgj1y6r6boss6yiV/VUmKS3FiojITaJC1ygFpGgJQ6UwxrvzAYKBL00t4
         Y/McH31qQyvUnk//dd3xHichsUeYVfo9Rb7mHywLgTV0GEFsoY5/3iQb9mQMgibLuI/9
         Y5Rg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=F1nGOsmV;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of yujie.liu@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=yujie.liu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:user-agent:subject:references
         :content-language:to:cc:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y6+PlczK3nI70TGLp0Fku0NhSmaCYi9j8jJ18WoP7AY=;
        b=lLPYhkThjC72qmCGfaymikPSrzDdVPkBFoD1kbC8L6/Yr2hyYwVed+O++Hp441VsgE
         P8aMR3qElUcvfWxmkNMviya4nEqeic/1D37k6s2uxD8wH+Tu0/P+XDWGWLnfsr9NPvu7
         OvoMouM2G9yOeJCOv7diPF/9ZbEeBxUrEymNG9vuzKJe72aqHxwFHY/sC4/1EbpAl6op
         LpTf1Eic3vhL18vyhMWZSBjqzDvwdYEPXatWI3sz3e1q6/dx+aClE6TwYZoFeabKED6l
         shZokHXr1jy0NB7O8vN8j1FqxvPjnyB52wWdz9r302pu6gqPewXgOaV5IUftybfhPYUr
         YJYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :references:content-language:to:cc:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y6+PlczK3nI70TGLp0Fku0NhSmaCYi9j8jJ18WoP7AY=;
        b=lB1J9ZKwbFxnwkkQsVLRq3uMQflZFIO/cqPDXl0ZfrloJY2qYC3MK1xyLYzlG++SlQ
         kWUXsm3dqxhDm0HLVRPQUr+JlV1Pq1EQY8sedADkK4rXgH+CTPX5BefS8j12Rvph2BFB
         iPFVBwpTZQyMR1CZlnK2muYEm3FMixlFH6F9tivKG1vJcwLOFRUY19MxPo3una8m6ZWP
         UA05VPib2GR1bYyFLicwcMsN4Gfn064LhPs1zzqYKQoCUdFg+TtXTrxItP78uaD0UD8R
         hItWEdlIf+jMGGZEXFJswSauPGRJMVJB7vs/Xlp3AWcznm6PLlgQFKb91+T3vJbXYOqp
         QVXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sr0itTk6embd+d2UoDLTcFyKvlqQTH3EahiAjXwz6CU4xsdez
	smIsgpy7OMdCB975MLnaryU=
X-Google-Smtp-Source: ABdhPJzWyw0+MQ/D1IG/gPhw9tmvQ67mZlUCyjf+bl/fyEEQGDT68Gg2vvqDWYUdPwQfKj3PggAMTQ==
X-Received: by 2002:a37:a596:: with SMTP id o144mr2637423qke.135.1629362948378;
        Thu, 19 Aug 2021 01:49:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:fb12:: with SMTP id c18ls1399836qvp.0.gmail; Thu, 19 Aug
 2021 01:49:07 -0700 (PDT)
X-Received: by 2002:a05:6214:5019:: with SMTP id jo25mr13350654qvb.23.1629362947698;
        Thu, 19 Aug 2021 01:49:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629362947; cv=pass;
        d=google.com; s=arc-20160816;
        b=bArIV3qryJfkB2r1QN76A0TXkmMWYTYs2nC2OXCSzjV5RG/+NTq203NAQco6PtpzIN
         2je+sM7Wx4+bf5psFBv6sPhg5fS09dtRemN535x7i7v5V2M8SdY/HAsvC1EGsaig1TFZ
         hdRwiXtlSzis7aTYK2m+2ZEhfELF4APOfVbuqGmrmyS6quy2VTsOoXUI+KnQdUtWQkUH
         Ag/i71/ArtxBW9WZFfj/MwMx8OEDw/NcVjKcFX3CwmUsB3bLBEL/vtkMvCpI5vKjlXQp
         nabtCtO7gENcgqaG6MoY25OH7nnoalTdpmhnKsi8gNBmm7lAu25wACCq0U2yURJtI8LI
         ukZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:from:cc:to:content-language:references
         :subject:user-agent:date:message-id:dkim-signature;
        bh=ssY+SsCCdLdi6/xsOTGI3dK5yJVQM84bbBRUTrFfKZI=;
        b=susnVligM0rIQudvElW5aJBO6myVWsmuJVwqZn7B20kmrF2z8IGFjl+RubjTBEHmrH
         EkC/StFHUYhMV9nMK9Ka8SxbjR4psk3B/9ueN2pUreMPWbcJCojX9T3JCI0Kj9y0BHn5
         516eh33Rx6X1gQDynvJWdUiiphu4FmPS1xR1L0YbnxmfSd9T/1JoJwhrm5ddPc10kKgB
         0Di9c75JpYlbh4W7enb6f/kCMQY4IHnEHn0ktG2TsCrobSqWS0cXhRJ6BatZC9kiBmkW
         f/WV+YdaVgt5B11LQNd/hNFl1gAUVLUfdSLLje8coeuyEbXq5MWnzIuBrqoRBRBUR1+q
         0ZSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=F1nGOsmV;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of yujie.liu@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=yujie.liu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id j8si145157qkk.0.2021.08.19.01.49.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 01:49:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of yujie.liu@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="216508647"
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; 
   d="gz'50?scan'50,208,50";a="216508647"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Aug 2021 01:49:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,334,1620716400"; 
   d="gz'50?scan'50,208,50";a="489210569"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by fmsmga008.fm.intel.com with ESMTP; 19 Aug 2021 01:49:04 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 19 Aug 2021 01:49:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 19 Aug 2021 01:49:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 19 Aug 2021 01:49:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GRwf2Vq+DIHpYe1JLXE41t5XNbmG/EMJ24Ml5cZdn3l+yLtpLuOoonyCbDs7kkkTpQcuCJ+TaTq3LtpwNSCiqhri3cEYZ2IKWzdX1Dqy+RRPj2ZiJ20crgp5XIIKB2jDlNK6naqhNFtbIZqBpImLH6IQmJtoDLUpq6FBI7nScn+4gAyeGdY3gWbztczdQDEzEAfrHnIoyk+S6fdkhVCFCZNgUGaa7CIYrrp7jPBM26NsSe2FW6/eDKL4yz/g/BXxlw8YvPpylFmx+qVgyZkvZ5VrmR196MElatkW07no0Rn6/QVjLw4jEyFaA5KZRjcDwmOpaA9OnN5lPV0aiqxX8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ssY+SsCCdLdi6/xsOTGI3dK5yJVQM84bbBRUTrFfKZI=;
 b=l5VkljAp6WnFmMBiiNRQchlctFUskzRHqKcZ8yYDBqDjr0HgUKOClne8aa6F/6QHHJwJKKsTS1qsYhYFFx0Jol1MylMjSDQbGH3TMAg+Wbyq7JaLKcIf50bl827EHvKZDQM/mTjHRsahh/Lw/gcQLna5+sv5Hl62pAzWhKHzbMGAQ00wkQcJp0MWnd3cYhM4y8B1tk1+E4FcbjRYV7DEKStTdJj78pQAI3Jzunl+7lDKkABlmlraX7CD08r5QblNM9E2V6FlTeVpwlgR2zotPOB2FJdOHNuciQFfIqwqnP5I/BA6Exu5jnJdoq/KSUZSL3vpptH4wIOS1deJtY2BCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5598.namprd11.prod.outlook.com (2603:10b6:a03:304::12)
 by SJ0PR11MB5645.namprd11.prod.outlook.com (2603:10b6:a03:3b9::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Thu, 19 Aug
 2021 08:49:02 +0000
Received: from SJ0PR11MB5598.namprd11.prod.outlook.com
 ([fe80::b9bb:3f44:3f2d:5a4f]) by SJ0PR11MB5598.namprd11.prod.outlook.com
 ([fe80::b9bb:3f44:3f2d:5a4f%9]) with mapi id 15.20.4415.024; Thu, 19 Aug 2021
 08:49:02 +0000
Content-Type: multipart/mixed; boundary="------------iE00CI0r7QFR3rl7NK9awliJ"
Message-ID: <81ade805-8f5d-f2db-b078-b6a6bcb1ac4d@intel.com>
Date: Thu, 19 Aug 2021 16:48:52 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.0
Subject: [kbuild-all] [linux-next:master 7181/8804] fs/fat/fat_test.c:23:8:
 warning: Excessive padding in 'struct fat_timestamp_testcase' (11 padding
 bytes, where 3 is optimal).
References: <202108191038.m196uAE1-lkp@intel.com>
Content-Language: en-US
To: David Gow <davidgow@google.com>
CC: <clang-built-linux@googlegroups.com>, <kbuild-all@lists.01.org>, "Linux
 Memory Management List" <linux-mm@kvack.org>, Shuah Khan
	<skhan@linuxfoundation.org>, Brendan Higgins <brendanhiggins@google.com>
From: kernel test robot <yujie.liu@intel.com>
In-Reply-To: <202108191038.m196uAE1-lkp@intel.com>
X-Forwarded-Message-Id: <202108191038.m196uAE1-lkp@intel.com>
X-ClientProxiedBy: HK2PR03CA0054.apcprd03.prod.outlook.com
 (2603:1096:202:17::24) To SJ0PR11MB5598.namprd11.prod.outlook.com
 (2603:10b6:a03:304::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.238.2.112] (192.198.142.21) by HK2PR03CA0054.apcprd03.prod.outlook.com (2603:1096:202:17::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.6 via Frontend Transport; Thu, 19 Aug 2021 08:48:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ef8fb5db-eb88-4318-91bb-08d962ee316b
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5645:
X-Microsoft-Antispam-PRVS: <SJ0PR11MB56453C44691BD3B62379FBFCFBC09@SJ0PR11MB5645.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2803;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VG9GV8WTdb9xYNxqbZ0+8SlTV/+A8BU7/hVEnMjpK6XaUKaSEffBgGQDxJetVQFl6yBWjTYM9cRR/W0ydf2AVGgNLKRASHKlT7SUPzK1cGW6qwmxypP/4lQO0vQDKdOuKUepnyj8uADwd0VNbzEmawEVr4g4fg8rioJoFiJv+Trcw0Rj1PdjH+SLyqPjoZcfTGlTdi/CXDtQxqi03r9T8iybUlVKQQrt5pVHxrrmOXH0mGAcOLVVZIPd9oxLZ4/Vqr+ACjozgHRRYlYvhyyvZ++U0qI7ti++IU+Q4J3wEYTCWO4cT01l20+tvWE1EX5hUVvlPfvAK2a+3gcCzF/iLABLIspg1yGAWiSu6mncoOWUK5KhPjXidmRkyDO+NY83GqT/kVvBhQXFHRHp3jLVof6FbkPerbgaFqMU6OEcPIGKybRTiMpDOvJZQ6Q1qL6gSWV12ek5/pMYi/x5L6B0+OOuP9MnL8AcuAzTL2a05+i+TX8qwqGaePE51J2T9B4E4LWR6ts/Qfs+nkutkH7oTHcV66x8olxgxm3XcagGYqeRYWgDXD9X0+/4dhWF4Oahwc+TG72OmAEyDYIRXCO0uCDW2AetZZZuhDaMIpt0x2uFs8ZB52u2G3nbsFzlO1jY27pZgruXvzRRaEVT70NWocRi58M+W7hofwy4Rj5gA7iVoYmxy9fnJKdBILw7WcgEhmzUUtAz3btVDCWte+yUHUJNNNAzuTR+sCtuPZ/lw8zIst+3EN5ZtwWls1l32AH2DvKq6jyVBbVL0KAE/yWfdUGo8w7n6ZQekuOUrrw/YD4qumd5KrQZliDv9jbJLl5g
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB5598.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(396003)(366004)(39860400002)(136003)(186003)(8676002)(38100700002)(16576012)(66576008)(33964004)(4326008)(316002)(6666004)(30864003)(2906002)(54906003)(26005)(36756003)(83380400001)(31686004)(956004)(6916009)(31696002)(478600001)(235185007)(8936002)(2616005)(66556008)(66476007)(966005)(86362001)(5660300002)(66946007)(6486002)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NXlUUGtCbEUxNjhGOSs0K3Y5MEt0NURUNWY2TWNzZ1krYVJkM25SblR3UFUr?=
 =?utf-8?B?QnAwV2k3Z09lbXdhTkNrY3BzdmtBMFdMZFREaEFzMnRDSVpLY1BtbDNKSlda?=
 =?utf-8?B?cmxvaGIxdDB4TnZxMWtZc3VMZGU5UVFDUldJU3NnazYrMkFVd0c5ZDhpZHRu?=
 =?utf-8?B?UjJDREhpWXFnS0Z6RWVYVHplTmFOVUZ3S1RJbVRsd1JUYVY5V3dMVmJjV0Ev?=
 =?utf-8?B?Y3g5dHQyQmdIYmU0Sy95czBoLzZzYkhwMDF3SCtFYXJoSnlkLzZGQnA2bEFL?=
 =?utf-8?B?VjB1QWtrSWNhcG9wbTVpVmRMcXN6OWQwZDJQYW5FYnNoMVlMbC9PQUZPU3d4?=
 =?utf-8?B?THB1QUl5UUpuckhkTFNzaEZjczRoWTAwMDVlWGtIYk43VXhZbVlyZ1ExY1R0?=
 =?utf-8?B?bE5JM1h0bXRSWnRzeEIrZkpKWkhhY0Z2cHB2VEFQZEZmalB1TWNLaXE2Vmpt?=
 =?utf-8?B?a2dUR3pkU2RYMWxGM0syNmFseHdwRVBlay9CdmNzcWFiNmFZUFQ3N1pNZmhm?=
 =?utf-8?B?T3phR2FZUUlLYlR2VUVEUE9MbnlYYzdZZkgyWTcyTUdTRGl4WkJmblhjbE1K?=
 =?utf-8?B?cXcxYmNteU5TTHAySXV3UjFGSmlGaTVnQXpJdEpROHZpQlFsckRGdUFWYXNR?=
 =?utf-8?B?NDd6T3FhN1U2WEMyVTBqSmE2b3M1Wnljd2poVkxDa1I1d2FVWVlUd2VDalNL?=
 =?utf-8?B?akdJUnJJb0VjeVVRS3B3cEVxSlZObVJFYWJ5NlB3T3dBWGpnVmQ1enlleVAv?=
 =?utf-8?B?b3hKZ0pnR3NHMENQMEhVbGtDTThZaG85ME9DbjhtT292VERSVnk1U1I2WlpH?=
 =?utf-8?B?MEJuTHRXUk5hSVozY1N5UDRHMHUvZGdrcVZSS0EvOU5NTWw4Y1QvaEpBYXB0?=
 =?utf-8?B?U0hpMjNnV091eGNzRHkwRENUME9TaWFCVCtpdlhNQm9va0lOWWdsbGNSREFt?=
 =?utf-8?B?d0h6N1lRUDBlbkRibXVaQ3RUMWl3dFk5TlQrV0JjSHZZdVRaNlFhcmFuVUE3?=
 =?utf-8?B?K1FtZlRMSGpoV2xHd1lEaUtuaHlIM0l4YVd4dDVsZlVWY1ROUzV3SWJoSFVt?=
 =?utf-8?B?TGRKM2owQ0FINmZWTWlXT0w5Y2RTMjFrM0NRUkM5bnBUdWZ4RnZWMnBoaUtL?=
 =?utf-8?B?bDFUQ0tNK04rQk1yY2JFRy9YMEtmWDZENFY0U1NUU2MvNlI1VExyZjlWL2Jr?=
 =?utf-8?B?ZFkxWnlkb1I2QXlFMTN1ZFlVeTRSejE3TjFMUi9kaGtlMUR2aFZiSzdVcGFo?=
 =?utf-8?B?aTlXUUtUWUV4a2R5U0tqNWZXZDkrTklRTEYzUU16SGNQSU9sNGpuQWozZzNt?=
 =?utf-8?B?dVEwYXhMTGRSRXVKVVZjYVl4Rnk4MnFNdHhPUExXRW1iS2hIc05KN2ovcjRH?=
 =?utf-8?B?QXRGM2tCaHVhc3h5b3ViSW5QQVpId1Y4NStTb3kyZzM5ZERhV1MwaGV0N0lE?=
 =?utf-8?B?c0ZiQ2ppbjVJZEJKQTFPKzQ1Y0swMDdKWEtqOHRVWlZDNFdYclFSd2VvQ0li?=
 =?utf-8?B?RGJTaytBZ0FTUVZscW9qSC9UTVFmS0VodGRCaUMrSXBNMENuY2ZQVU96N2k4?=
 =?utf-8?B?aVgyWll5RDVtSGlGS3VHZmNOWFp4VGFGd2FELzgrQWtNRCthNkZqR3ozOXRH?=
 =?utf-8?B?MzVDWEJKVVRETllWNUdNU1plbHQrN1c4ZWdyK1VNemxONGRYNmtkNDBidWZI?=
 =?utf-8?B?UEdQdVJDYlBjcXJDOUI2S2dleGhJSFJGbWt0cExzVjBGV1c0TFYvbjczZUVT?=
 =?utf-8?Q?Aql8ImjfpOU6s4xSozH5i8kGZBgjphbwPvP7uyJ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef8fb5db-eb88-4318-91bb-08d962ee316b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5598.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2021 08:49:02.4529
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hG7wA+rRpC/nUmjv3rpLCckJ6Gjacg80mEahk3u79PFtXrbEJE4rfsaQo8vcYrC6eyDAInjOrRN/O1Rj9tvVXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5645
X-OriginatorOrg: intel.com
X-Original-Sender: yujie.liu@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=F1nGOsmV;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of yujie.liu@intel.com designates 134.134.136.24 as
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

--------------iE00CI0r7QFR3rl7NK9awliJ
Content-Type: text/plain; charset="UTF-8"; format=flowed

tree: 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   f26c3abc432a2026ba9ee7767061a1f88aead6ec
commit: b0d4adaf3b3c4402d9c3b6186e02aa1e4f7985cd [7181/8804] fat: Add 
KUnit tests for checksums and timestamps
:::::: branch date: 19 hours ago
:::::: commit date: 5 days ago
config: riscv-randconfig-c006-20210818 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 
d2b574a4dea5b718e4386bf2e26af0126e5978ce)
reproduce (this is a W=1 build):
         wget 
https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross 
-O ~/bin/make.cross
         chmod +x ~/bin/make.cross
         # install riscv cross compiling tool for clang build
         # apt-get install binutils-riscv64-linux-gnu
         # 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=b0d4adaf3b3c4402d9c3b6186e02aa1e4f7985cd
         git remote add linux-next 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
         git fetch --no-tags linux-next master
         git checkout b0d4adaf3b3c4402d9c3b6186e02aa1e4f7985cd
         # save the attached .config to linux build tree
         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross 
ARCH=riscv clang-analyzer

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
            ^
    drivers/tty/serial/serial_core.c:2719:2: note: Returning from 
'uart_get_info'
            uart_get_info(port, &tmp);
            ^~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/tty/serial/serial_core.c:2720:9: note: 3rd function call 
argument is an uninitialized value
            return sprintf(buf, "0x%lX\n", (unsigned long)tmp.iomem_base);
                   ^                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/tty/serial/serial_core.c:2730:9: warning: 3rd function call 
argument is an uninitialized value [clang-analyzer-core.CallAndMessage]
            return sprintf(buf, "%d\n", tmp.iomem_reg_shift);
                   ^                    ~~~~~~~~~~~~~~~~~~~
    drivers/tty/serial/serial_core.c:2729:2: note: Calling 'uart_get_info'
            uart_get_info(port, &tmp);
            ^~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/tty/serial/serial_core.c:734:29: note: Left side of '&&' is 
false
            struct uart_state *state = container_of(port, struct 
uart_state, port);
                                       ^
    include/linux/kernel.h:495:61: note: expanded from macro 'container_of'
            BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) 
&&   \
                                                                       ^
    drivers/tty/serial/serial_core.c:734:29: note: Taking false branch
            struct uart_state *state = container_of(port, struct 
uart_state, port);
                                       ^
    include/linux/kernel.h:495:2: note: expanded from macro 'container_of'
            BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) 
&&   \
            ^
    include/linux/build_bug.h:39:37: note: expanded from macro 
'BUILD_BUG_ON_MSG'
    #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                        ^
    include/linux/compiler_types.h:328:2: note: expanded from macro 
'compiletime_assert'
            _compiletime_assert(condition, msg, __compiletime_assert_, 
__COUNTER__)
            ^
    include/linux/compiler_types.h:316:2: note: expanded from macro 
'_compiletime_assert'
            __compiletime_assert(condition, msg, prefix, suffix)
            ^
    include/linux/compiler_types.h:308:3: note: expanded from macro 
'__compiletime_assert'
                    if (!(condition)) 
     \
                    ^
    drivers/tty/serial/serial_core.c:734:29: note: Loop condition is 
false.  Exiting loop
            struct uart_state *state = container_of(port, struct 
uart_state, port);
                                       ^
    include/linux/kernel.h:495:2: note: expanded from macro 'container_of'
            BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) 
&&   \
            ^
    include/linux/build_bug.h:39:37: note: expanded from macro 
'BUILD_BUG_ON_MSG'
    #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                        ^
    include/linux/compiler_types.h:328:2: note: expanded from macro 
'compiletime_assert'
            _compiletime_assert(condition, msg, __compiletime_assert_, 
__COUNTER__)
            ^
    include/linux/compiler_types.h:316:2: note: expanded from macro 
'_compiletime_assert'
            __compiletime_assert(condition, msg, prefix, suffix)
            ^
    include/linux/compiler_types.h:306:2: note: expanded from macro 
'__compiletime_assert'
            do { 
     \
            ^
    drivers/tty/serial/serial_core.c:744:6: note: Assuming 'uport' is null
            if (!uport)
                ^~~~~~
    drivers/tty/serial/serial_core.c:744:2: note: Taking true branch
            if (!uport)
            ^
    drivers/tty/serial/serial_core.c:745:3: note: Control jumps to line 768
                    goto out;
                    ^
    drivers/tty/serial/serial_core.c:769:2: note: Returning without 
writing to 'retinfo->iomem_reg_shift'
            return ret;
            ^
    drivers/tty/serial/serial_core.c:2729:2: note: Returning from 
'uart_get_info'
            uart_get_info(port, &tmp);
            ^~~~~~~~~~~~~~~~~~~~~~~~~
    drivers/tty/serial/serial_core.c:2730:9: note: 3rd function call 
argument is an uninitialized value
            return sprintf(buf, "%d\n", tmp.iomem_reg_shift);
                   ^                    ~~~~~~~~~~~~~~~~~~~
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
    5 warnings generated.
 >> fs/fat/fat_test.c:23:8: warning: Excessive padding in 'struct 
fat_timestamp_testcase' (11 padding bytes, where 3 is optimal).
    Optimal fields order:
    ts,
    name,
    time_offset,
    time,
    date,
    cs,
    consider reordering the fields or adding explicit padding members 
[clang-analyzer-optin.performance.Padding]
    struct fat_timestamp_testcase {
    ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
    fs/fat/fat_test.c:23:8: note: Excessive padding in 'struct 
fat_timestamp_testcase' (11 padding bytes, where 3 is optimal). Optimal 
fields order: ts, name, time_offset, time, date, cs, consider reordering 
the fields or adding explicit padding members
    struct fat_timestamp_testcase {
    ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    6 warnings generated.
    fs/exfat/inode.c:148:3: warning: Value stored to 'clu_offset' is 
never read [clang-analyzer-deadcode.DeadStores]
                    clu_offset -= fclus;
                    ^             ~~~~~
    fs/exfat/inode.c:148:3: note: Value stored to 'clu_offset' is never read
                    clu_offset -= fclus;
                    ^             ~~~~~
    fs/exfat/inode.c:217:3: warning: Value stored to 'num_clusters' is 
never read [clang-analyzer-deadcode.DeadStores]
                    num_clusters += num_to_be_allocated;
                    ^               ~~~~~~~~~~~~~~~~~~~
    fs/exfat/inode.c:217:3: note: Value stored to 'num_clusters' is 
never read
                    num_clusters += num_to_be_allocated;
                    ^               ~~~~~~~~~~~~~~~~~~~
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    4 warnings generated.
    Suppressed 4 warnings (4 in non-user code).
    Use -header-filter=.* to display errors from all non-system headers. 
Use -system-headers to display errors from system headers as well.
    5 warnings generated.
    fs/exfat/dir.c:92:22: warning: The result of the right shift is 
undefined because the right operand is negative 
[clang-analyzer-core.UndefinedBinaryOperatorResult]
            clu_offset = dentry >> dentries_per_clu_bits;
                                ^
    fs/exfat/dir.c:232:2: note: Taking false branch
            if (!dir_emit_dots(filp, ctx))
            ^
    fs/exfat/dir.c:235:6: note: Assuming field 'pos' is equal to 
ITER_POS_FILLED_DOTS
            if (ctx->pos == ITER_POS_FILLED_DOTS) {
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    fs/exfat/dir.c:235:2: note: Taking true branch
            if (ctx->pos == ITER_POS_FILLED_DOTS) {
            ^
    fs/exfat/dir.c:240:2: note: Taking false branch
            if (cpos & (DENTRY_SIZE - 1)) {
            ^
    fs/exfat/dir.c:247:6: note: 'err' is 0
            if (err)
                ^~~
    fs/exfat/dir.c:247:2: note: Taking false branch
            if (err)
            ^
    fs/exfat/dir.c:250:6: note: Assuming field 'flags' is not equal to 
ALLOC_NO_FAT_CHAIN
            if (ei->flags == ALLOC_NO_FAT_CHAIN && cpos >= 
i_size_read(inode))
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    fs/exfat/dir.c:250:38: note: Left side of '&&' is false
            if (ei->flags == ALLOC_NO_FAT_CHAIN && cpos >= 
i_size_read(inode))
                                                ^
    fs/exfat/dir.c:253:8: note: Calling 'exfat_readdir'
            err = exfat_readdir(inode, &cpos, &de);
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    fs/exfat/dir.c:78:6: note: Assuming field 'type' is equal to TYPE_DIR
            if (ei->type != TYPE_DIR)
                ^~~~~~~~~~~~~~~~~~~~
    fs/exfat/dir.c:78:2: note: Taking false branch
            if (ei->type != TYPE_DIR)
            ^
    fs/exfat/dir.c:81:6: note: Assuming the condition is true
            if (ei->entry == -1)
                ^~~~~~~~~~~~~~~
    fs/exfat/dir.c:81:2: note: Taking true branch
            if (ei->entry == -1)
            ^
    fs/exfat/dir.c:88:26: note: '?' condition is false
            dentries_per_clu_bits = ilog2(dentries_per_clu);
                                    ^
    include/linux/log2.h:158:2: note: expanded from macro 'ilog2'
            __builtin_constant_p(n) ?       \
            ^
    fs/exfat/dir.c:88:26: note: '?' condition is true
            dentries_per_clu_bits = ilog2(dentries_per_clu);
                                    ^
    include/linux/log2.h:161:2: note: expanded from macro 'ilog2'
            (sizeof(n) <= 4) ?              \
            ^
    fs/exfat/dir.c:88:26: note: Calling '__ilog2_u32'
            dentries_per_clu_bits = ilog2(dentries_per_clu);
                                    ^
    include/linux/log2.h:162:2: note: expanded from macro 'ilog2'
            __ilog2_u32(n) :                \
            ^~~~~~~~~~~~~~
    include/linux/log2.h:24:2: note: Returning the value -1
            return fls(n) - 1;
            ^~~~~~~~~~~~~~~~~
    fs/exfat/dir.c:88:26: note: Returning from '__ilog2_u32'
            dentries_per_clu_bits = ilog2(dentries_per_clu);
                                    ^

vim +23 fs/fat/fat_test.c

b0d4adaf3b3c44 David Gow 2021-04-15  22
b0d4adaf3b3c44 David Gow 2021-04-15 @23  struct fat_timestamp_testcase {
b0d4adaf3b3c44 David Gow 2021-04-15  24  	const char *name;
b0d4adaf3b3c44 David Gow 2021-04-15  25  	struct timespec64 ts;
b0d4adaf3b3c44 David Gow 2021-04-15  26  	__le16 time;
b0d4adaf3b3c44 David Gow 2021-04-15  27  	__le16 date;
b0d4adaf3b3c44 David Gow 2021-04-15  28  	u8 cs;
b0d4adaf3b3c44 David Gow 2021-04-15  29  	int time_offset;
b0d4adaf3b3c44 David Gow 2021-04-15  30  };
b0d4adaf3b3c44 David Gow 2021-04-15  31

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/81ade805-8f5d-f2db-b078-b6a6bcb1ac4d%40intel.com.

--------------iE00CI0r7QFR3rl7NK9awliJ
Content-Type: application/gzip; name=".config.gz"
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--------------iE00CI0r7QFR3rl7NK9awliJ
Content-Type: text/plain; charset=UTF-8; name="Attached Message Part"
Content-Disposition: attachment; filename="Attached Message Part"
Content-Transfer-Encoding: base64

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCmtidWlsZCBt
YWlsaW5nIGxpc3QgLS0ga2J1aWxkQGxpc3RzLjAxLm9yZw0KVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBrYnVpbGQtbGVhdmVAbGlzdHMuMDEub3JnDQoNCg==

--------------iE00CI0r7QFR3rl7NK9awliJ--
