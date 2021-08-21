Return-Path: <clang-built-linux+bncBDOZ354D4ENRBWEGQKEQMGQER2R2F6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 737E23F38BC
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Aug 2021 06:38:49 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id k17-20020a17090aaa11b02901788cbc8832sf6995790pjq.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 21:38:49 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1629520728; cv=pass;
        d=google.com; s=arc-20160816;
        b=ieG+Drd5rU57SpF/Qm0+GXWdfZIexx6sCQdsXDc22DkeqoSonrjRY0gUO4QvqQnwhf
         I4TRFTdB6VZIE9Mz9kVGCSqGLcTn/FoxYRQExI5Z4w43o5xw2/uA0VuvpiPRZ3agaTip
         XnhCkxl6Pd4/EXXZmYWH9VPb8pfiU/1Xc/vo4llfl0CMO3Fu5cfLJHchlwcop3gNSB97
         fpiv35zwY8Ur/eBzrBcbU5F7aoNfuFQzJAAEKR7qIcAP3NpN88g+LZo+4NSpJHN3VCaH
         ks+QyYSOe7jV5XykWv/pGj61ry3QVe4IWawRQzR0M1J53ohMIq2kMAqgfJtgyx/Na7rh
         W9QA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=oa0YfV3VYxRo5VdaPzQpj/hmQIlAlSxXG+8hq7DZD2E=;
        b=ftX1ywtxzAbInqxatiLE1dpEmOi2+nTa3jdb1uy62haBLMTf5FmF8/QMvkfzSbCQHO
         JZVjDqVgGU6waEzarElZ/pDte0zsXKyOLmC1S85tKvcdmvbP9u2VP25vkifMyBAPS17G
         jC/oUY71LcNnQG51WRAv/e7091z1zBF/8LP2HZOD2R+ZHFIHsef+MxVqIhzMiA1ZMrhc
         wD1S80YYQ+FwvO4+PRXMJNrte/IkqfdD8LxM0heXHA689XaFKAX+XYJRIMRbvYyUtVkf
         +Bop9DpU8B9FA3UF8TewOVxseb1+9UgZOmREMH6fXkxijQ9I4ppEt4ZU7F/rOAIVQdHl
         WaKQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=S8IYKtfN;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of yujie.liu@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=yujie.liu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:user-agent:subject:content-language:to:cc
         :references:from:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oa0YfV3VYxRo5VdaPzQpj/hmQIlAlSxXG+8hq7DZD2E=;
        b=qsW9VhKY2XufvoIXI+elQHoZllLneo3tXOKVDoIsrOp5eFqtw3svwbw1NKmh7mSzrx
         rwdF/Dzh4fRXTEqLqg2V4K6LFEsUVC+iQbyFDZyhwmd0iGgc9XZPKT9WWYrwaOh27NiI
         JgEG3SQCuvz2HLmIqjYotirnN3GDrTMubxhXgqum4HFP4LiCoJudG9mu20TVwFF9QhMH
         n65W+A2f5+lTvtRusogqCBj3/6KXR4DD2BpSn65ZEJKpP5UZFLLhSUdX/ToIuELIaY39
         u4k+/B6jBeh7Xs3uvTi1EBEvFdmOp4Nt0Ke5GxqowJ1jQze/ejQdgSS6C+M8F0jCXZGx
         40lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oa0YfV3VYxRo5VdaPzQpj/hmQIlAlSxXG+8hq7DZD2E=;
        b=WAHu5bisrA8f//8sOLZItifMQGzQWKZ9QfsTOrhfG6wB32MFjb1LX/YXRDvcvoXK7E
         fhYnWPBvijUMXunQPfGgu4uvihOjb0DbnY/xMl8buWzMjY6OXfUaoOyW5AC3SuyjF0if
         RFHK4SIJWjKxmrF+MezbaNLVo5Md7ZhyJYFKke56en3F6qWCsffYFbN9qOLL66o35h7l
         86AWWyw+oHe0fi38HAWG1NZBtMSJ5uqAY4rxCOYIJol0fcQqoXhevQkRE8wKq9RD+gVF
         8kZXnuw90CPtoGh+l91rTFpJCpHCKvTYLqOZpjRVShsN+j+qMq0Wv/cIPUuvwR9ICMnS
         OX6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+Rc4qPtlc1jZsUvcaDsIXOFVhtptrO6Huug1fvffg97VQWGfK
	tqbZqB2h+nLNpmDHPtoS+D8=
X-Google-Smtp-Source: ABdhPJzY80hb9923BzUwi+0t5euEa4WvXquxSpwV0rZmkAIhDvqVsGDozuUNl8U4Tef2GchZs9N1kQ==
X-Received: by 2002:a17:902:c94b:b0:130:ad84:990a with SMTP id i11-20020a170902c94b00b00130ad84990amr6449569pla.1.1629520728134;
        Fri, 20 Aug 2021 21:38:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:848e:: with SMTP id c14ls5538763plo.1.gmail; Fri, 20
 Aug 2021 21:38:47 -0700 (PDT)
X-Received: by 2002:a17:90a:a67:: with SMTP id o94mr885276pjo.215.1629520727602;
        Fri, 20 Aug 2021 21:38:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629520727; cv=pass;
        d=google.com; s=arc-20160816;
        b=VcrJwIvb29e0gCyuZk2GGW6rbTvTkJug+NoX0wksmMKc+T01gy4xTzMu0LRkrnn1Ym
         8hCdUkKwObyfc6UY6SdcUnnpnyLOr5If9k1HeUOjDax3GQgX/tUyjz2c0rOwzYeIXJfc
         hbScxlX0qVqRVgdQVMkq2mXz0sdqZJmNC3NEk54fcck7CTAmf6BQ+m1SUm7mzTuW5Hya
         80YJCs81tAbyLyQwQsAia+ZG08knKkg4ahEXMwKugQ4cHeYtzZhQtKRKXE3nVXQrSwqF
         SMR+bpCF3Dvq9dURTViHGfUC+JcstU+ZqPG8991DC8rdBrrqVo+5WA972tXNJIpszaYl
         6FiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature;
        bh=JxthdGIF/uWY9mgIDw2Kem9RImitvxoFb/6M36hW5x8=;
        b=D0fFLzAI9/Ou3m+bYzf9/9nerSxjIuMJdFPsUVMLvg4i45mWCqXLUbimGIFm7oDOOU
         24t4/98JbV3AeIA3Vp/BbKmoaCbxLwEPzg+WwevFAwkrEXOUHUsWva4RtxzJeQTlS2Bm
         gxL7+Kx2mrF8e8KP5R5ET8d4VLiGvhpsBO1bSsZRVUZaozERU+Vbf+nzSUDjOCQlZJvG
         Rv0Cpoz9BAef3SVHHDdORtP0Enyk5a7n2aNHlnQksw4mzSl52XIokJ22VtG56SBdh3SU
         OpF8H5qaz33o0SYMa4Z3cVw3gx7+JhuoAWG7E+l8N7YP/Hna5s6X7KQ88k+xUDPEm9bF
         tggg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=S8IYKtfN;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of yujie.liu@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=yujie.liu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id r7si636305pjp.0.2021.08.20.21.38.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Aug 2021 21:38:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of yujie.liu@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-IronPort-AV: E=McAfee;i="6200,9189,10082"; a="204018839"
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; 
   d="scan'208";a="204018839"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Aug 2021 21:38:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; 
   d="scan'208";a="463577809"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by orsmga007.jf.intel.com with ESMTP; 20 Aug 2021 21:38:46 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 20 Aug 2021 21:38:45 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 20 Aug 2021 21:38:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 20 Aug 2021 21:38:45 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 20 Aug 2021 21:38:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I5L8cM4DD8awj58FFJv68tNsR+YeOBhH4pEaW5wHJ9zJSLRP04Zf1UPEkx/UDBB8n8RBbsiC1lHTcR5Xl5+CoKyhj14b8NtWr47DparNuvwAX93xkMlHb8nnagKczNdVHfirvjVYgyS/71tju2N+S1OTenV73a4Y3N4sZHUwCxWTeZKC222xJBE/o3J69esT0juZ+a0TCSf3ktg6mUlCXtnaVZn2xWwH+zV7eiQ2VhT51MV54ukex3beqrZ4WkLOIDvtGxu3vN9f7c3QPb+qsrWa7JrWAoVy2fkjwDkuEdIVmXiG2LZhmj4PV6kdYjwAuXgLz9zycT8rjHMYFrTgDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JxthdGIF/uWY9mgIDw2Kem9RImitvxoFb/6M36hW5x8=;
 b=lHFCkTi/FCgpmAJknzBjvYon4Q3zcN+USXz6FHcmw+8mP0hqjjq0CcV80s9gZNT8OvZtzxWUSFla1gMz7XlmgLPkTW/2mK0d5V1O3+FceNtY/azYTAj3l21EJbLcEIclpntApbC+Ij1T9exMkE7Yymxw4foQw7+kQqXtaJ6sLAwk8eoa2rNrMNqV8dIN1KAJoOGiuBscaRRcLGWphkKG9yovr/GXsbFHFw5vOuwo5RDnT6BNNPlczXHLra2T9zoyUm4kzl1oUf/eGENxjgCrk/BZnOXhCzAqD6SDNeSTdKCLUOpPO28vGi2TE3wVeRXFmn4HPWEtidIVkWf0QbW2JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5598.namprd11.prod.outlook.com (2603:10b6:a03:304::12)
 by SJ0PR11MB5662.namprd11.prod.outlook.com (2603:10b6:a03:3af::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Sat, 21 Aug
 2021 04:38:44 +0000
Received: from SJ0PR11MB5598.namprd11.prod.outlook.com
 ([fe80::b9bb:3f44:3f2d:5a4f]) by SJ0PR11MB5598.namprd11.prod.outlook.com
 ([fe80::b9bb:3f44:3f2d:5a4f%9]) with mapi id 15.20.4436.019; Sat, 21 Aug 2021
 04:38:44 +0000
Message-ID: <5cf8d0df-0fb7-5b91-53b2-9ceadbc23a7b@intel.com>
Date: Sat, 21 Aug 2021 12:38:35 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.0.1
Subject: Re: [kbuild] drivers/regulator/bd718x7-regulator.c:531:8: warning:
 Excessive padding in 'struct bd718xx_regulator_data' (8 padding bytes, where
 0 is optimal).
Content-Language: en-US
To: Mark Brown <broonie@kernel.org>
CC: Matti Vaittinen <mazziesaccount@gmail.com>, Cristian Marussi
	<cristian.marussi@arm.com>, <clang-built-linux@googlegroups.com>,
	<kbuild-all@lists.01.org>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>
References: <202108172206.9cbgvI53-lkp@intel.com>
 <4dabc78a-f9ee-4e7d-8bf3-ea1c6cef8530@intel.com>
 <CANhJrGOh+9PoMmsv-Q9petTV-hv9rv9nOitg0NCQHqXVXzJvvw@mail.gmail.com>
 <422ade1b-8e88-d6dc-ae4e-799e729932b7@intel.com>
 <20210819152353.GN4177@sirena.org.uk>
From: kernel test robot <yujie.liu@intel.com>
In-Reply-To: <20210819152353.GN4177@sirena.org.uk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: HK2PR0401CA0022.apcprd04.prod.outlook.com
 (2603:1096:202:2::32) To SJ0PR11MB5598.namprd11.prod.outlook.com
 (2603:10b6:a03:304::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.2.125] (183.195.25.149) by HK2PR0401CA0022.apcprd04.prod.outlook.com (2603:1096:202:2::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Sat, 21 Aug 2021 04:38:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7e7f10a9-c6f3-4532-b11c-08d9645d8ea6
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5662:
X-Microsoft-Antispam-PRVS: <SJ0PR11MB566291BCB24D04D71B458AEAFBC29@SJ0PR11MB5662.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ANauXG7K9PAPZk8muWuxEufRK/ozVai3zj9OHwyDD/9wDnRC9w6wt1Vma5Gm2aTBxJbibj6J1YfqcZzbsxsQbQ8DohDSy1fydGGNXN0bLcgEyOw95Nzi7HZiKxZjvtxcvPeLMcqbprsos0UXTwkofGcXaOHpop1LTRmtHEzzolulSmnLBUEEJPsahPoZ+xmqCE5WmUKBB+nlvPHCimQsCXRQb6zzzbl0zuMfjU1jJVMMyxCbSSW0RRfCF0j92jP7KhRxEpr4Nq0qAWl+etX+DSjnXYIWHrFFXuqFRIsYtMJJ7rqRO3fkVzmqmcyZR6sUd9mpGOs6BRXAnye14hLfFjgkxgK6nAtskNzAfXW286BFROBpadgSIAnrYVscxLHvkuhGD4yDgXvtnGMN/lHOUjdmf6tPdkeze2HVY1tEbpQSolN2/kl2IHHDtBJlstBK8a35FYamIgEf8wkKBMJjYNBtiB35w8CgVlkDWzikfZQ80WQ5979MFZRi4oL2+Em2H4JK+zpHK83ztMqy5VAzGunc8lnmxzVV+1eBPGkLMQg/RnM5UyWmbBw3m3MRXmvobvwRHkmFZht0vqll2EyufIN/CwRqV320C58oHJ8vZq9J++C/LPcSOlFSXSx8P16GMtjKLtyDCcEoFwysiOHfzmq+Al8KdpC8HngasgmfHm/a+/4iB1oF+iRy0MpcL3UaScq9Bv/JK928/4Fm2UohrxGbgvOcBBpf4OR8jM8+5Pg=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB5598.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(136003)(39860400002)(346002)(376002)(478600001)(956004)(316002)(6486002)(66476007)(54906003)(38100700002)(16576012)(66556008)(8676002)(2616005)(53546011)(6666004)(86362001)(2906002)(66946007)(6916009)(4326008)(31696002)(83380400001)(8936002)(36756003)(5660300002)(31686004)(4744005)(26005)(186003)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Sm1iZWliK2hXaW1udE43OVFOWXZNR3pkNlRPTzIrMzQ5Wk4rOEZjYVJ0YjBX?=
 =?utf-8?B?SlFBSlRWWVNTQ1krSDJPczRQOUVzelhmM0hWenpnN2tHTXlsR01rNnNQcTF2?=
 =?utf-8?B?ck9oQ3hZUWZ5OGxERVNXSzZmc3EyZy9UeEJ5WldqNVR2OVdjaFhFZFd6RW9n?=
 =?utf-8?B?NytkOVRpek1ia1VBRW4wblliQjVOdWQ3ZDJGNGRQbFkxa1BpNmJNcmg0Mzhi?=
 =?utf-8?B?TmZrQ3BVSlNSRU8vUEZ6dHVDc0xtYjlIM3A2eEdrbXRxVEJmNmxmZXFoYkJE?=
 =?utf-8?B?QVdzZUw0VWhtUkdFR1ZuSHJmNzV1U2tOdCs3WFlkTWx6eTFKU0I1WFJVVGRX?=
 =?utf-8?B?L1ZPUENMWkNKd1RFVHJVUjAzMVVFMFRZcno4UTFwSTVsMjNKUWtyeTVTWmJi?=
 =?utf-8?B?YjM1RzhpRFA1ODNYSWZQcXd3UDIyRGpTSW9sbWlKcHJOZEU5RXYzWkxMTmJJ?=
 =?utf-8?B?K3VtYXkza2pxRk9EUEpHWWtmVks0L1JNZ0xCeUN1UE9xdTVySGJkZEl5VUVC?=
 =?utf-8?B?d3ZkZE9IZXJHdGR6V203NUZwUGdJbXk0RW9vL2xuT1pDY2lyTXRqMXRFdDkv?=
 =?utf-8?B?WU1rdDhwZEplby9TQ05ucWJHY2tZNVFZSlFuRlM3ZTJyMTllSkpmSE9lQzJM?=
 =?utf-8?B?bjdZUlVZb2NNNnVJaWVCQ2pJbGFnYVZhZjlJcUgrZkYvZDlDMXkxZlk3WWNE?=
 =?utf-8?B?ME9rWmN6VzN6ZFB5RmlON0YwSGJnQSs4OXZSdlV1QzgydVc3Y1ZJdlQxSW96?=
 =?utf-8?B?TUp4U2RUaTFsZitkZ3dvaDNRc2NMMy9CRUNyMXFZTnljR0RpSHo1SURZOUFk?=
 =?utf-8?B?akFnNm94M3NWencvT2lycEFJQWw5aVU1K3FaSHFRK29NTUJjSHVlWUlNbGhY?=
 =?utf-8?B?Q3p5Z2V5b29QVjZkVHA1V0ZpT1ZnQjlnSjI2cEZOU3FMaUZaQ1JXSk1RN1RT?=
 =?utf-8?B?RnM0bjFZR0tOOWNnZFV1UDVFNHdHeWtXalVmU3gzTmUrR0k1dS8xY1l5WW5u?=
 =?utf-8?B?Z2dqNmVlTENKaUVEYVZCU3JGZHhQOElVMkhLdUJMQ29ZdzdMbjZIWDVScitW?=
 =?utf-8?B?U0pEOTNVSWlZNjhNR203UUJTcWw5ZG9yLzlpYkxHZzF6TjkwZkJIUHBGNDdB?=
 =?utf-8?B?RWxVU3dTUVZGWnpLVVV3eXkzOWZzbEFMMitJdEhEdnBkejRhUW9xc1RVVnBm?=
 =?utf-8?B?ZUQ2Wlhsb21lbTlLUVhqdnNOMFJoZlFYZ1MxaFo0TmpoNjVGYzFwWkxWS2dn?=
 =?utf-8?B?YTh4QzhGaTlTK2M3azJ3OUZMYktCbmtkWXQybS84OCtRYWdxcU16MytmUXlt?=
 =?utf-8?B?cy9tOXJQQm1COGhmQ1hNMC96VW1pZExwYUtobzJOcExMcWpaVFdNU29WZGRT?=
 =?utf-8?B?QVd2VmpzbWkvZWdkMnBtNUlGOUtRemZZRCtYUXo1NlRtR2IrNnBzV1YxTmFL?=
 =?utf-8?B?aUN1N3pXeUZxZXZuMFUxMkdWN3JzdUdCOVlab3haVG4yUld0R2VnYVc5VHVj?=
 =?utf-8?B?R1Y3M2drNlY5WlVRZml3L0Q0ODRrSGM3UFVGR1VhblFEQXJYUXRYa2hmNXJ1?=
 =?utf-8?B?bzRhNlgwMERpZlFmMzZ1M04yYXh4VVRlLzRKQjBnaG14a3hsTlU4b2dMM2Jn?=
 =?utf-8?B?ai9IMVVOMXc5eS9rZWgrVGU3TmdXeHdEMzhNSGVSQVhKNjhzS3NCSFY0MHZv?=
 =?utf-8?B?S0NIck9VS0VyelFyVjlUVlZBVjh6bWRVaytUMHhHRXZCSVF2QlQ0bjJZek9B?=
 =?utf-8?Q?jcy9rN+o122KKQQ43elFIJGEOyPoV4QS4zHAP7s?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e7f10a9-c6f3-4532-b11c-08d9645d8ea6
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5598.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2021 04:38:44.2250
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YszwBBHtaoU7gKM0LBoMjfmZmKr3yNNBp8qLoYIjbmwJqggBFqYIdRYdQxJ6umbuEfNhLsgBcRUbtTAdtDBHjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5662
X-OriginatorOrg: intel.com
X-Original-Sender: yujie.liu@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=S8IYKtfN;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of yujie.liu@intel.com designates 134.134.136.126 as
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

Hi Mark,

On 8/19/2021 11:23 PM, Mark Brown wrote:
> On Thu, Aug 19, 2021 at 10:49:13PM +0800, kernel test robot wrote:
> 
>> Sorry for bothering, we'll ignore struct padding warnings next time.
> 
> I think the warnings are useful, it's just that they're not important
> for all structs.  If the struct was getting allocated a lot it could be
> pointing out an issue that makes a real difference.  I'm not sure it s
> realistic for automation to figure it out for itself so it's better to
> send them even if they get ignored a lot.
> 

It's not very practical for automation to figure out how many copies of 
a struct would be created and how much space would be saved in total by 
adjusting struct padding.

For similar warnings in the future, we'll make an effort to do manual 
check first, and send out reports that we think are worthy of notice.

Best Regards,
Yujie Liu

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5cf8d0df-0fb7-5b91-53b2-9ceadbc23a7b%40intel.com.
