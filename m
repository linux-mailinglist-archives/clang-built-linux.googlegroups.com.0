Return-Path: <clang-built-linux+bncBDOZ354D4ENRB5W67GEAMGQEESQERLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F073F1BE3
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 16:49:27 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id o3-20020a625a030000b02903c9ba4d8a70sf3170435pfb.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 07:49:27 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1629384566; cv=pass;
        d=google.com; s=arc-20160816;
        b=zP02aEpm9Uii13snpEwQsEj8hjRKnKUCMnJ/UDgGn/YWQNugauNgHSvteYel+5Gks7
         Z0xc3HWvHXEyB0ThIvtQ7+BS4FbkV2XcZjDVLUW+BWrzJ0+SqKEnb5QVWJl7FVcC56dO
         hv5dtKSk6BtboA+b0tEp+XLDWR/WRFGJ7adsDamutj7cxEa6pqIGvBY03KUiNNOeKLb9
         rPD8tpzXsu4NsZQblozGPsv++amRreDlwF3EKcJM85ec7/S2+KjvgSmwojsgjaCL/6uH
         eff9vHJTI9fj727G85kof3Pzjz1BxQKgTZw65MUC7UNiWF2Px9ovMLfT3SUubkflUVm1
         vvfQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:date
         :message-id:sender:dkim-signature;
        bh=2akA9rNxFWsNzxyZkGQXx7XEpTN/x/L2pvbv3hNhnQY=;
        b=K4M0JnTQ59mhyDYOOF/edl9V8OuoF+71uj2M2Y52VrYIObxJSeMMHUfVnkY6h8oXfV
         OqzyzNM1lNl7h0m5qWQzw5NuyQDvL8ys1zcpkQW+6ZUkDiobtXUXIJXyQeA+KPrXso4H
         2X3BYFWE6HpI0KbhEmDg9NEIkolIJYISqbARukb1US1FVxawLrjZk70A2hcvuR+Ei47o
         I/EbUZVb4B45O4mh8veH1B6Jj+xUjdixJ8w3rI+CbZFp1ZgS/J3Kd1lwHAWinxffuRMj
         C/Gjb6mgumfmtQ7UGh6r0xKhvJerJKHgqz7PMPVzE/uiUpVj3z6M2y0t1PoeZQyNyZ84
         HkpA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=qdFK5pkH;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of yujie.liu@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=yujie.liu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:user-agent:subject:content-language:to:cc
         :references:from:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2akA9rNxFWsNzxyZkGQXx7XEpTN/x/L2pvbv3hNhnQY=;
        b=Zhkfa5BHvHCT1w3fqXH6hdsfPGmBiQDJRtbrxK3oJLZ0f+DbP9jtYKPCeO+zdD9Sr7
         +ksTjMDufExtDzbgrjiBVL3oEFva6eKiMVfZBgXQO/8e4EZysclhF5b88XOH5a0oM7gt
         C2TqKCO4iagAOuguj3ZBUS9iu6FWQvOsEaQ0kXYL9fJ+R1dsbGLOQ6SWW71NAUQ8zghh
         U7yM9o/EG0qEWiLifL31yr++Rskk8trlEq0SGu0x0GK7uK3Dh+CwysgZx9kALnpRkTeD
         v3E/fMudkqWGPm0pNyRkTLQSuRsrCrQn5ahfDqO3rheeGWVZxo5ny/NkGcJRS1jyTtdt
         eFoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2akA9rNxFWsNzxyZkGQXx7XEpTN/x/L2pvbv3hNhnQY=;
        b=LYG2WOdJUMmh5VMXQhJXPjARzzFg+V6bsHifVYQm8PCJ6xtCXush368tdEaYCy9ZEa
         A8NC+4xwPeH6xYVWBj6VQLAEleODZaGE06HWryQpMSJrssdWZ+C9HWQiTtKYYrQ2adjN
         YB13wPDHe7Rc1nbRGGYzW/X47LTlOFQyGYNyHAKb0FvC2E1d2L7nZNc0+8aq15PP8zDe
         CGtgDeU8D+lquYS3zk0bnz8luElKF3ed2mO25nvK/OtW7kLmXGPyppW3FA+zJRNlKqwv
         r7T5kbhso95svUWcv0gCQVs7MSU0v39GwQm6P/Ln+mH/DtTl40LpolkDry1FdCbK2Dpy
         FSQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303LqUy1ET2vPRmiTzP/RQARbTvEO9T2O0bhRAN4TRmgphfdxZs
	q8okSHBYshncjsxzDKjClc0=
X-Google-Smtp-Source: ABdhPJyiQXREZDrDAjJqJW+8e4ssgoMGjqozNGiqI9DB2fkpkHbDRaIN8c+jt2gv99a6FNh8ijHAjg==
X-Received: by 2002:a17:902:e04e:b029:12c:def4:56a3 with SMTP id x14-20020a170902e04eb029012cdef456a3mr12036492plx.76.1629384566549;
        Thu, 19 Aug 2021 07:49:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1cc2:: with SMTP id c185ls2327203pfc.2.gmail; Thu, 19
 Aug 2021 07:49:25 -0700 (PDT)
X-Received: by 2002:a62:878a:0:b029:3e0:7810:ec36 with SMTP id i132-20020a62878a0000b02903e07810ec36mr14962973pfe.4.1629384565852;
        Thu, 19 Aug 2021 07:49:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629384565; cv=pass;
        d=google.com; s=arc-20160816;
        b=SmnK/OcsC9tgKygUPQVsYyv4Xm0Ad5ngF6qQbvCIappNeJ9u1FtoU8dI+n6cuf1oPD
         plD5ydIysvqJC/6qU6Oh6LaegzAyID9ihMpouKb43GoJcL/RWWEwOUao9LH7my9uoAI8
         mKZ6rAuzTZBYykr9sIw0qo3Uf8f0EHuV35N7cqEe2qEpKjseWevv9dzhzE0NIGjYCxkr
         n5KX0svAlZZ39xupGq24A/97VaRs4NibSBES/ENLT+ZEE0f0eHrV8A8qvEH10O9uJqbi
         kMiVjdRPqRp12ACmIujP9qrY6QFmoQ+186edxnc0kwa4XR9OAbSWipsIBc4KXF0Pyism
         nfeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:date:message-id
         :dkim-signature;
        bh=JC+1M7sQJrxiKmB30G9dF2PLCmtA1eEgmxd6R0VCDQk=;
        b=TBxYtWPgB9dHNoKHqbEhGFjsWrbIKlhyDK9uTnLxt6RhpT0k1v21N1hFyL+xka/HyG
         pPV1u6gtDbgZcWvLfKgGK0zuLy9UW7QN3oBVEZEf8ueGZEX8jrhtJeXWDEmL+tWi3gje
         TdiLWEeE5l7TLj1x64orunpa5zsB+wxj7Qt6M3X6h8OfBZ7gaTZhXdYi1rVg+tVADgoB
         FS3AWUh8zn/E04rXMTlECrLG3/NHRWOTtbpy2VYfNeqnO0sXyTpMrUYrgSdoH2dd6ohn
         BWXTDYWWAL9sCSMVM+DSj58bMPjVEYDPqcHOYevR+CqtzNk08dgto41UOvxxZwGaHuwc
         WVMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=qdFK5pkH;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of yujie.liu@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=yujie.liu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id k15si189882pll.3.2021.08.19.07.49.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 07:49:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of yujie.liu@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="302156624"
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; 
   d="scan'208";a="302156624"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Aug 2021 07:49:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; 
   d="scan'208";a="489693148"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
  by fmsmga008.fm.intel.com with ESMTP; 19 Aug 2021 07:49:24 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 19 Aug 2021 07:49:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 19 Aug 2021 07:49:24 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 19 Aug 2021 07:49:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BUypdRguzqxpjgE0l+zsjqcsSbcI6hf79HNet3pjDbcgZwC7YckjWiUlRc5jd73v/ThxAthKrM6ZTI7OwKBxIhZh1pE/BY2Z5GdT/0ciO2dvfTRsBoJ9RdoLLgRdYlfN4TwaVNj6QhyDVZdW/OuA8IC3HFHIruTj11DJ2YJt8JsgDPgSIkw7DLKswiLEYbGmZSrjnBvM49+Me59F6Q1OAXyOWx5CGLBeQKH/y+6Qq9nL3WKhx/WRejyu3g9havNyT3GsH/m2HpJqkCYVeZFG3+7NfQfLLMK7EVYBrpCHH3nYtgnpRK+ppc/osDxabB7Ab/FGpKhRkU+Cgwlbip/ssg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JC+1M7sQJrxiKmB30G9dF2PLCmtA1eEgmxd6R0VCDQk=;
 b=VMf7LXD7FOLKfvcsopeUQfMBjZYT3Q8uCy2zvgUXkfeNPlfxco6SneDyhZFmKZ1FZ/uQWs33eNxXhXR+4ooiWg0R/YpKvUFDSdDfPb1ICHd4Gqh34rDsZDBWr9iDpgxr6QG38NCMdHKPre3+BHta7/35fa7OH4HhG/goV3o/RQDPXDEM28r8N/LropELbZB7oNjaWD2oiNPkNIJcZ905uenzYKK/iQ9H5kVdAPvjI07h5lKovvR5m9sAyYyTCL0oKf9Lsv7THU/ThfkFwRHyAFzCF2KBDz7sYfIdAvGdc/dpBE11HK4W0dEhdbw7Q/kzI83qeVhr/9m8sNc1+H1zIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5598.namprd11.prod.outlook.com (2603:10b6:a03:304::12)
 by SJ0PR11MB5613.namprd11.prod.outlook.com (2603:10b6:a03:3ab::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Thu, 19 Aug
 2021 14:49:22 +0000
Received: from SJ0PR11MB5598.namprd11.prod.outlook.com
 ([fe80::b9bb:3f44:3f2d:5a4f]) by SJ0PR11MB5598.namprd11.prod.outlook.com
 ([fe80::b9bb:3f44:3f2d:5a4f%9]) with mapi id 15.20.4415.024; Thu, 19 Aug 2021
 14:49:22 +0000
Message-ID: <422ade1b-8e88-d6dc-ae4e-799e729932b7@intel.com>
Date: Thu, 19 Aug 2021 22:49:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.0
Subject: Re: [kbuild] drivers/regulator/bd718x7-regulator.c:531:8: warning:
 Excessive padding in 'struct bd718xx_regulator_data' (8 padding bytes, where
 0 is optimal).
Content-Language: en-US
To: Matti Vaittinen <mazziesaccount@gmail.com>, Mark Brown
	<broonie@kernel.org>, Cristian Marussi <cristian.marussi@arm.com>
CC: <clang-built-linux@googlegroups.com>, <kbuild-all@lists.01.org>, "Linux
 Kernel Mailing List" <linux-kernel@vger.kernel.org>
References: <202108172206.9cbgvI53-lkp@intel.com>
 <4dabc78a-f9ee-4e7d-8bf3-ea1c6cef8530@intel.com>
 <CANhJrGOh+9PoMmsv-Q9petTV-hv9rv9nOitg0NCQHqXVXzJvvw@mail.gmail.com>
From: kernel test robot <yujie.liu@intel.com>
In-Reply-To: <CANhJrGOh+9PoMmsv-Q9petTV-hv9rv9nOitg0NCQHqXVXzJvvw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-ClientProxiedBy: HK2P15301CA0012.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::22) To SJ0PR11MB5598.namprd11.prod.outlook.com
 (2603:10b6:a03:304::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.2.125] (183.195.25.149) by HK2P15301CA0012.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.1 via Frontend Transport; Thu, 19 Aug 2021 14:49:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ed9464e2-e133-40e8-24e0-08d96320881e
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5613:
X-Microsoft-Antispam-PRVS: <SJ0PR11MB56132DBD2211455600E970D0FBC09@SJ0PR11MB5613.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TPHme0srsz/+DkJ0mVQmeCD0LYaGfsICLbjtTbPgUef7JPjlc9y0fTBsVrAOf5iHmhtbYZ4OF6axvAABciMALDevyMUZVDTmbpikMeiljz4aqSoPeZQikIEpSJaj+DcFQJDcm7JjPvxAcXu8ksSLiTpuwoEDAbcxeDCmeRFWYvNhZtwPjsTxaLW/KjrSXvBs7ame3DUohEsybnE4SyJr25TxnlsX8VuSWygvQfdWajn593nKir1NDgkEUCTmgrkJ9VTLZVdaGUeB2qrsbqTe0ixy/OFpQHeXkXOzVAfwofiwtT+edjSYP3zGUIYvdovlYLf0cBg7D5hAts7OaGEq3NWLeDrajkGAjLGKhcMBhiNrUqufhkLf7qIpKo5C4KZI/W3nqlh2Zq1oV4zIay6ycZYWgDywUq2MxzQGAtKBtCzWK7aiPIWGCtDH/HmLKZAAVqhdDgPyn2XQm0/mXdGWfFZDPMPFmUUZMkmx8I/OZ77mauRHN8C8eMvvD8mpatCzUwI87YmJ2qunqPY1pzxWR8LjdHy3bm/JiVu8zsISc44AvKJuMhPdLK4QoezddCmcwwfNTxOTwCj5dmw/dM2jY7q3rCDWaGw71EHlnFh+ah8G4EamJUuPqyP72IIT/K3LrYjkWVtQE0nDbfQ5SK3RF9QFds9RJgb4RIhmpJnjCQaGYMRw8dr/SF/6uwhT4+nWZPGVOE5nyS4P+jZn3aqZWWe+xgeklZ9b7d+yz8KwyMk=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB5598.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(396003)(39860400002)(136003)(376002)(83380400001)(2906002)(26005)(16576012)(66476007)(66556008)(53546011)(66946007)(5660300002)(6486002)(186003)(2616005)(956004)(36756003)(478600001)(31696002)(86362001)(8936002)(31686004)(4326008)(8676002)(6666004)(110136005)(38100700002)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWxEZW51K3B6ZzVtVTF3MittTHNMUGZsREltZ0gyK00zSDd4V0xGTVJBWmhO?=
 =?utf-8?B?LzZEYXJ5elJYdVltVkxsWW9zU2pGREtVOHVvSmJ6VmI5R1ZBaHNmMHdOMnJN?=
 =?utf-8?B?VnQrSERyZmh2QkhrcjNkbzAycmdKOFg5Vk9rZkhjTU5uanZmZ29WQWE2dWN2?=
 =?utf-8?B?VzYwV2ZOMGN1RmhwZEZEOVdLMUJxdXozSDd2cWRxQVVHZzlXWUVlVEs3aTlv?=
 =?utf-8?B?RUJvcEgwZDMwMERJV2FYSVRzbm13S21CZjdhaGRGTlBpUEp0RmNveWxEQkpq?=
 =?utf-8?B?NEdKNnZhK1NFTkYvOEZ2WE9nM1lXdldNaG5udUVnNkRTYUZzSVBjWjNYTG52?=
 =?utf-8?B?SzF3VEV4NkhZVGxVNXdqbGVENlBzc2ZnNFVFNVpGd0tvcmcxQklncVdDWFJD?=
 =?utf-8?B?MmdOaGxBYU94T3FpSC9SUEVUczZSUWJJRDV4TlVsZlRiUXhmamwyVmNhblpX?=
 =?utf-8?B?dDRDVndHTHhoTkZGZzJrc3JwQTF6cWFhMlRBZDhwbEhaSjBKTzVnY0N1ZGZG?=
 =?utf-8?B?SVg2SFlmTHpINzVZbjE3cm9SeHh6WEJJcmlvbkRMU0RBc054UE8vMkhYS3JD?=
 =?utf-8?B?VlExQTYvYzc5eDNhVC8rWkhlYUlLbm5mVldPMmhwSVFWMWRIZTJ2bTM0S1ZT?=
 =?utf-8?B?YUJUS0xaQ0pTbXltSExqb3B6OWJUcFRvTDIwNDVBaVcrY2g4S2kySUVrcUpx?=
 =?utf-8?B?bW5tQ0lBNnNoVGh1YVJHNkVRTGhYRnM0djdXdFQxWXFyQXFadWs0ZzhQSmVU?=
 =?utf-8?B?WmhnaUZ3OTZzcHpFM2RBNHFDQVB1eEt0ZEYwNXMzM1RCZ0tCTFlub1BTZGJT?=
 =?utf-8?B?TE9QS3ArY0lRc21BbXA2VXVnZDk4Qkk3K2o4cTF6RGxkTWc1V05TK08rMUJw?=
 =?utf-8?B?ZHZXOTYwaVNreHJBRDhPNmp1KzRXRGhybTJIWXJDWHowMDhmd094UU1uVThL?=
 =?utf-8?B?S0c1L1ZGTzRFYzUwZ2xacisxR0t0OGgzbFJVQnRJZ1UrZDVBVzl1bkxDenZl?=
 =?utf-8?B?TlhsL3ZMNktMeDJ6YnQ3dnNxL2sydmZlL0JsNmg4S3M1RE9qdUF3MDFSOXY5?=
 =?utf-8?B?WGdRYWxjZlRPRVBnZHN6NXIwZWE3Z3VnWUI2ejBxTWVJVU1qQ2QxdnNxK1Vy?=
 =?utf-8?B?TEZabldvdDJ6NGF5VTl3eldsV3A3NXlEeDJRSC9aeGY4TXhtMFIyNTZSZjVQ?=
 =?utf-8?B?amFVUkZUV2NzQzJ2WUEzYm9vOUI1NEIrSXZjQlJwNlJvSjVINEh5TWx1d2dz?=
 =?utf-8?B?cStrcENsUmNaMXNnb3Q4UkdTQWcxU0xxclA1eHBIVzRmWWlHZURRSFV0UkRQ?=
 =?utf-8?B?eFNIdkRqdFNyblJJejF6SVlYTVFYUDR2TGxXMEpsTjRiTlZIaEd3WXNXTmFt?=
 =?utf-8?B?WER0bm1tcFptY0FCdEpOc1JsT3lKSHEzK2Q4bTZmVUl2dEViTHBlNWlTakpI?=
 =?utf-8?B?NEk0RGtPbXBiL2V6bWdRYk50YXhSeVduTlNsQ1BvK1IxVmt6QWtTN01laTVr?=
 =?utf-8?B?b01yVGg0Zk13WWl5eElmUlIxU0N1anVGR3N0L2lRdnhNbWtQcm02ZUVxVUdG?=
 =?utf-8?B?Q2RmQllkbjFtS1c5ajVtQnVLb2N1dHN6TmlPREhCbGwrei9Xc2dLK1VTSGkv?=
 =?utf-8?B?cWNKaTM2UENQSld4Vk9MSm5OaGxhaG1NZ2JqSC9LT2YzanNqZXZsdllxbkZL?=
 =?utf-8?B?bTduY0gyNkR4TXNNaDRTYkdPMGtBQWk2aVRQN2MyUXRTL1c3ZzJmS1VIM0dC?=
 =?utf-8?Q?3A9fsm1EV3W49knYZ8qAAINyjOhxFEoyIclbgiR?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ed9464e2-e133-40e8-24e0-08d96320881e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5598.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2021 14:49:22.6910
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dxM7EJ5af7zFb53pfHl7GV79NVyGlc2lKrwHGTvyJjCjlwthV1emXlcxOtidL3338bFbgazcLbY5PpuumPeGrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5613
X-OriginatorOrg: intel.com
X-Original-Sender: yujie.liu@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=qdFK5pkH;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of yujie.liu@intel.com designates 192.55.52.43 as
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

Hi,

On 8/19/2021 1:34 PM, Matti Vaittinen wrote:
> Hi,
> 
> On Thu, Aug 19, 2021 at 6:26 AM kernel test robot <yujie.liu@intel.com> wrote:
>>   >> drivers/regulator/bd718x7-regulator.c:531:8: warning: Excessive
>> padding in 'struct bd718xx_regulator_data' (8 padding bytes, where 0 is
>> optimal).
>>      Optimal fields order:
>>      dvs,
>>      additional_inits,
>>      additional_init_amnt,
>>      init,
>>      desc,
>>      consider reordering the fields or adding explicit padding members
>> [clang-analyzer-optin.performance.Padding]
>>      struct bd718xx_regulator_data {
>>      ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
>>      drivers/regulator/bd718x7-regulator.c:531:8: note: Excessive padding
>> in 'struct bd718xx_regulator_data' (8 padding bytes, where 0 is
>> optimal). Optimal fields order: dvs, additional_inits,
>> additional_init_amnt, init, desc, consider reordering the fields or
>> adding explicit padding members
>>      struct bd718xx_regulator_data {
>>      ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
> 
> I don't have a good feeling about these checks. Especially when a
> struct is composed of other structs - which may be modified
> independently of the code we are looking at here. Any unrelated
> addition of a member to any of the structs (well, maybe not the one at
> the bottom). I guess fixing all the users of these structs when
> something changes would cause quite a churn of changes... What is
> expected to be done as a result from these mails?
> 
> Best Regards
>      -- Matti
> 

Sorry for bothering, we'll ignore struct padding warnings next time.

Best Regards,
Yujie Liu

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/422ade1b-8e88-d6dc-ae4e-799e729932b7%40intel.com.
