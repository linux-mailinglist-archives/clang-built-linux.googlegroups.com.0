Return-Path: <clang-built-linux+bncBDWMT3UBYINRBOPZTGBAMGQE6QQJ74Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB50331768
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Mar 2021 20:36:26 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id a137sf4473994qkb.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Mar 2021 11:36:26 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1615232185; cv=pass;
        d=google.com; s=arc-20160816;
        b=zGjDcWjLP2IpE+TDPBpposmCDBBDP0jfo2uA1FMerY7Q5HWlkGui+qtZkZl8T6Vht2
         Yve10phBqeOGusDGeT53jIZQNOxFsXITVwymbYic9PEtVZBLFfeifUqIplNne5xU0ZNE
         VydnCdCG5AHP6hrHvf6wauf6F06KLMnXmpGaghLe8U5ej+YBvlz93qt3CSzROBkZ+8b2
         0EkoMbudRzTRyo5XnF8SKROt/QfB6VP8IrUc9Vdn7YGNdINncyzMVsk58pixiQLSyw3x
         JuepObH7C0hMtGF+5eg16E9hArLynBqgPb8ju2SHciRDNsRVYzUFEXmNPnTUfBOMIQt/
         xKFA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=06iLK2IwURRC0+U3Tm7qMYSuZHaklng0sox5rd+zDRQ=;
        b=ybn1dXRDaPNnOdR4idE0B5zRf11LZG0s+TFDFGm03SmzZeJzXwlx5qE35zOigaNgeC
         lhm//flJRUPvL8KybLOR+n4JXQoUwN05XaDnfp04/FN833eTtPxXNiuyL4VdPurlObTi
         sz1P8mpP86Dk2bDchN0mHr0qaTuG/lICPFY1C27+Mt6dWmCEndLxz8q3KbDTEY3AfNxT
         9fhyUEKRfv9AP3feHbeKYBrHpgqzMUQtjxwVh5iob/S/nsK8Il/4MTB8LbAoPEdcTirB
         Z0vpwe0lGUQrchgwgCnG2GC9gk6HtKmLog8zQmnT/5T/qekxDaGWO0XUFHHD1F1LwJ+z
         /R4w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector1 header.b=agUq1mDN;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of ziy@nvidia.com designates 40.107.236.83 as permitted sender) smtp.mailfrom=ziy@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=06iLK2IwURRC0+U3Tm7qMYSuZHaklng0sox5rd+zDRQ=;
        b=lo3yt3ZI4ZO1qJqw5/L7GOql9byiAQQPEzm7zcf1UN8TfbthQ8+ux8dWJRcm2uLImo
         jy5O3RYuqQW330V/Es3pClowfVREPXYdUMe85zVbxvfIpUuOfAwhDr2I2EzPP0MNp75C
         EEB6bXw/ZomguYvZ/NwjBjGg60P7b4gWsUopgOexzAs3P4VZZTv82QsfSovuN+AU1aDV
         T2hc48kgXmrkw8BwLNpxwLREOx1E/H4aqP7cSyLyCgk8sgPJ4VD5Fs74z+nI5ZR8TRUL
         fYg9CV3pWqsW4tdDDk4VgA/5vZ2VzYK02kP5KcDPiJ3V2TAm7a5bCEjU05jq+D4EJwIR
         vSdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=06iLK2IwURRC0+U3Tm7qMYSuZHaklng0sox5rd+zDRQ=;
        b=ICYyg4WvwW0xX8/fRlNy0Aj4iZl0CvjceCKmJaBDjUjvxioLwzxZYgCbPTeuA+2ef0
         0XWXkRCLLXpHbdVzOWjDwYACIJZREgK/l0Gq5Rh5p6BMq+rt7eOd5pfFpZy2Ush0DXmN
         38K/c4ofNBLuWCt+IVcuWhQnB0wsN/upgf/TnflUa7iRD8AUe5CMk0jYgJrfFl8dV+dl
         jl7LlydgVT/Hv6YmRtEwkqKEs5ty3egAsTNm0IKGerWPZKPFZ01QS1tPctCq46VaFwyU
         AJXOqI3/ncFnsksuJqOsvItk/ZbhVFn3kV1kB2iZW82Ed5Pg8RPL3+YVJ3QXk/KNzRNd
         PuWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LSRZh/1Jp1ffHx0SGvdWBt6pyK1J3WssnQsuezkyePqQlMzjh
	gz1Usow9leNt7hHQq7y3KbU=
X-Google-Smtp-Source: ABdhPJzmMEVTRCwEHC/TXZ6VbHcMcE4fdqWggwoJJtUAvwthwxSx7GDUfO1FIcld9JGFCtvz/Qutgg==
X-Received: by 2002:ac8:5e4c:: with SMTP id i12mr6409777qtx.250.1615232185241;
        Mon, 08 Mar 2021 11:36:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5e47:: with SMTP id i7ls7065365qtx.6.gmail; Mon, 08 Mar
 2021 11:36:24 -0800 (PST)
X-Received: by 2002:ac8:4b7b:: with SMTP id g27mr3190108qts.220.1615232184775;
        Mon, 08 Mar 2021 11:36:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615232184; cv=pass;
        d=google.com; s=arc-20160816;
        b=AOUqyEUrTiZOhXCRVs4ABbw3r2JRte6SVYPlatMdQuLfC6fgWTl4HL1/++37SYjWbL
         9vAlA7rIR2miFmJ7+pV5C7fSiQfqmd79wJ81b/yxl77p/K5KP+DTbqNvbdNzVmhSh/AV
         6i3zpFlVKSO6K3YdIzISV/jdqvIgjASdesOxF8Ya7Lmsb2pEUTp07t9FgwrHa067IghM
         oXxXD4yi9sWXsaT3MGtCaJsFxZdqYlUsqX0bSbWtcoSk9Na14MN16qKX9Fl81+fjvefv
         bJHgdQLtyNvcTm733dSdG1DAGb66Z3Km57fdnJoK6cWz2iA0X3Q+g41mhBQlROvQEKXq
         lP4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=nMmGzNa88CZ+ydmodCQdp47CX2fRI7AXWPIJIha5X2o=;
        b=QZkSOV7i7WaJZmRO4X7zmWTR5xzqjpnFiYorUQJz8YkxUN50aMLA+/tahZxOpT7dtL
         PyWfD43Xay8NQr7TgmHl4vv944UWRw6InOell6Hk46Xe+/BhB/fiy6NxduHtZiNJCFpd
         vJkmYn8Vm+ir7oKlZTMX7GjwAkPiojEf5MQ4zxaJcAl9idq97urPxiJpBfn7OOW5u1cD
         /SmpyXfEXX8pNYWQzSLX1+lBT9o6l0ELvl683u4kI44Na87gM0eT+UYx8oYBaXT7hdWy
         FoHE1pwgFCu9X4oHIw0s92hukSwGosYsOmBh7rClcKLIi8ND1KvSAXj3E/mQFRXDiDvi
         JWyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector1 header.b=agUq1mDN;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of ziy@nvidia.com designates 40.107.236.83 as permitted sender) smtp.mailfrom=ziy@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2083.outbound.protection.outlook.com. [40.107.236.83])
        by gmr-mx.google.com with ESMTPS id h28si873286qkl.1.2021.03.08.11.36.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Mar 2021 11:36:24 -0800 (PST)
Received-SPF: pass (google.com: domain of ziy@nvidia.com designates 40.107.236.83 as permitted sender) client-ip=40.107.236.83;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bqF4U8331Rr+a5hTWnCPK4kvmcb4TaSGAbk00CPn2AfejOL/2gIXEB1Z4FYHjxPiwoEYzzk7p4FSJjRAHMg2fG4mCLvPsNbYCzIMUcEw2nTYl1xX1Rqaq5wfdDXj18h1rDRLR3k3dCqkU8HGnpJ+TFmdap/Xb4PXqbRVCKlPkNb4AhwO1yU4w0x6HqGbzHT91q/k2KbzfuKCffV4emK0k+vNfyepWcvg+s2t6QK80OAiufrwWjwvh2Wdvag8HV70DygU/y7WDtZ6iC9Ch3Gk+R5vqWYFBMRNMB3u++gAYVuBiDeA8E2Al1IFYaIvfDNfL1TBqkv8zBkECU8OQYiv2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nMmGzNa88CZ+ydmodCQdp47CX2fRI7AXWPIJIha5X2o=;
 b=XrPOHggSy+U+MkGPmcR620ysNkvwKsxa2/At7n4D1BbaHTk3hyONV4iJV1Jo6yYN07/P0aj5QToZssmvBD/8l+RCP8LwRJhURw6tMvqW2XXbyGcQY4imPbTjNOSxe0bY/Sr7jptJDlpxu0VE5UnOHtMF5EdZZ7976AlKSwJwY447j25bwsHhMYLUwX4TCRz4ZaAIU3in1lapFUNDE6DBANicBI8Inc/TJOWcGOnWTklQbE9MXv0osFyP/klYH2Tzv1XjYVltTEH0FWIJb4XhQMXrFjw2duagZzVg8/NbX+Aq/lbS8HmWrKpRXRqTmxC7LnSrOLfizTSIVLjMi6ZIzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from MN2PR12MB3823.namprd12.prod.outlook.com (2603:10b6:208:168::26)
 by BL0PR12MB4611.namprd12.prod.outlook.com (2603:10b6:208:8e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Mon, 8 Mar
 2021 19:36:23 +0000
Received: from MN2PR12MB3823.namprd12.prod.outlook.com
 ([fe80::a1b1:5d8:47d7:4b60]) by MN2PR12MB3823.namprd12.prod.outlook.com
 ([fe80::a1b1:5d8:47d7:4b60%7]) with mapi id 15.20.3890.038; Mon, 8 Mar 2021
 19:36:23 +0000
From: "Zi Yan" <ziy@nvidia.com>
To: "kernel test robot" <lkp@intel.com>
Cc: "Zi Yan" <zi.yan@sent.com>, linux-mm@kvack.org, kbuild-all@01.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
 "Andrew Morton" <akpm@linux-foundation.org>,
 "Shuah Khan" <skhan@linuxfoundation.org>,
 "John Hubbard" <jhubbard@nvidia.com>, "Sandipan Das" <sandipan@linux.ibm.com>
Subject: Re: [PATCH] mm: huge_memory: a new debugfs interface for splitting
 THP tests.
Date: Mon, 08 Mar 2021 14:36:18 -0500
X-Mailer: MailMate (1.14r5757)
Message-ID: <6D152AE0-2B5D-412C-94E8-170116E94C82@nvidia.com>
In-Reply-To: <202103090339.GV1I1C6V-lkp@intel.com>
References: <20210308152221.28555-1-zi.yan@sent.com>
 <202103090339.GV1I1C6V-lkp@intel.com>
Content-Type: multipart/signed;
 boundary="=_MailMate_D4FAF53E-EB45-4AB5-BF48-29686776AF15_=";
 micalg=pgp-sha512; protocol="application/pgp-signature"
X-Originating-IP: [216.228.112.22]
X-ClientProxiedBy: MN2PR12CA0025.namprd12.prod.outlook.com
 (2603:10b6:208:a8::38) To MN2PR12MB3823.namprd12.prod.outlook.com
 (2603:10b6:208:168::26)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.2.50.237] (216.228.112.22) by MN2PR12CA0025.namprd12.prod.outlook.com (2603:10b6:208:a8::38) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17 via Frontend Transport; Mon, 8 Mar 2021 19:36:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e14a571b-4f55-45b5-fc88-08d8e269750b
X-MS-TrafficTypeDiagnostic: BL0PR12MB4611:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BL0PR12MB46113C2119F74BA61E0B9E61C2939@BL0PR12MB4611.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kv2v4wveLxCYXpIDSwvreBA150jsBkAaTJFJCLtzMZwC8P2FOLpQ2fKEUBZ6XgNlfAZm28/ZQuD6oV1QnJdtTHPtXj1UeHcTEbJmf4DhcthCywe0HD4Jd3Z/N/ftyQ1b4Hz29STLRvrIAN58LdvbSMUjmRTocGcclZzaVxC2Ew9KkCaWGpHkQalBBoKGHrHY2YPfiEB/4cSnkDT3dXp/o/DX2jGgaT/o3OgDkno0+hIr6fG0NyrgFUZD7l5phSXeGktlWki6ZS4S7cTtORNdHLObN7MDQAelXhXt8Ok8mJEAkvSf8u88tN63LZ69XhxTrmElu3A4pXp96L6W+0DcGtrZObr8ffqejxgG6rlNvMNNHp3i9cMFTx13HJfGJTFJLfWcij5SEXWkkC//ddbI2OULNQLJLo6WsvaDqnDJQJ/j3uBi3BZ+cAf70fB4tQT77Dz8+srWwxeA+L1j1AUbF6//zdfE+RQxHbSZT1ohhMeLfzYeOweFUUUYPau/LyMeT+66nmgeGgjki6LGtj/LEq8q0I6efldN5z2S9lhVZ4Jecao0N8O0xUU0X8qXVHo2h2d7mws5QJI2b4uWNGU12AbWJ7LBlehJ5EC6SKnOZ85sYWSHt3qhgORvfzjuV/yJEy934CSamlHx77ceHX/NYgqv5yYxuZ4FTDZETecAmB99Bqq8Fy3qYKDNAFFrvVDxaqDdyZsdFV+yPo4q+eo7bA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3823.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(366004)(136003)(39860400002)(396003)(66556008)(8676002)(66946007)(2906002)(2616005)(66476007)(33964004)(956004)(966005)(86362001)(7416002)(16576012)(8936002)(54906003)(235185007)(16526019)(316002)(26005)(6666004)(6486002)(36756003)(33656002)(5660300002)(478600001)(53546011)(4326008)(186003)(6916009)(14583001)(45980500001)(72826003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?MkdpeEwvVExuU1VKbjQvN2VFT2FUQmozeUZIMWptRDdHRXRyK3VGY1crU0Z1?=
 =?utf-8?B?NEZSSC9rQnhoWU1CREtsQWt3Qll0QWNINE44ZG91M0tzblUvdEx4RkRoKzFh?=
 =?utf-8?B?T0FUbjVZQXJIUnpQYjRHR2xKdFQvMWZkN2hoc29JU1dDWjQzQnErY1VLV1Z1?=
 =?utf-8?B?K3g4SitxVDBWcG5JYi84NTlibGl1OGJUczhNZlNIaDNYZEEyOTBMaXc3MDZh?=
 =?utf-8?B?ZGcvM05kRDdTVDBqZlZTQnJ1L3VaVmtzeUZya3lEbzNkbGNWbm1za3lXOFR5?=
 =?utf-8?B?VjlLUWtKQ1piK1hWN3QvaFZpaEpqdXRzbmwvbGJUOC90Q253UHU4NXZNMDZO?=
 =?utf-8?B?QU0vQ2RYZDcxdzlMOWJ2aXpmZFFFcDdJKzBWMWszTlh0TzBjcDhBRjA3STMx?=
 =?utf-8?B?VUFpMUtHeEQvbWs3ZzVRdnNSSE4xbnFBNmE0VXAzZ3J5b3hMY3JIOFN1cHdq?=
 =?utf-8?B?Q2UvN2o2N3dJRmZvOHdlcHRNOVBEK1VPVCs0ZStWeGozZG5kTEgvOW1XZWN2?=
 =?utf-8?B?NHVYVkNHRmtiWXREak5XdTV1RDdFSzNpdFZ1V3ZLM1hYR2N0QlR2N0ZPQUI5?=
 =?utf-8?B?NnZnVVcrN2Rzc0ZJU0NTVlNyUHlkc1ZwdEJXZHM5QStTTm1XR0JGendIT0F6?=
 =?utf-8?B?TGZmZk05OG9xUjJtM0h0K1FKUHI1bUR4Ym9BWTFDOHpwL0ZnNWJ6Ujh5dno2?=
 =?utf-8?B?REthc3U4dmFWY2JJaTNxZzZRZ0ZjTzBKTEx6MTBjMGNKTUlrd2EwZE1Zenlp?=
 =?utf-8?B?anNOQXovem10akhHWGc3Mjlkck8xTHp2MVptOFcxbDYwWGhETytSSnhEZFJa?=
 =?utf-8?B?YlZoSlNjbkIyaHdtUGEySTRzci9jTzBERnhzdHppWDdVV09VY0dESlM3bmtt?=
 =?utf-8?B?cWhLSGl4bEJLU1FNWnR3citDYVdMMllZUEoxTCt0RTVBWXhVcE8xZXpheHJC?=
 =?utf-8?B?UytXR0dsSVhFRWRyVGhKejhuUmgreEIvVWUvUEtEQUlyckVFYkpkd25rbFp1?=
 =?utf-8?B?cEpTc2V5UlFXR3pmSW8xTkxUWUJtNjd4cFcwKytUVkZDWitOSWM2VlBDWXkr?=
 =?utf-8?B?Q3N4aGNlUEl6VXhqeWo0bmxmaExUb3FyQUtrbGFiUDQwZW5hYUVvY3FHSzFq?=
 =?utf-8?B?WFdsTHVWb0t0b2IzK3R0WnFSa3NYSy9RblVkb3F4Sy9TaTdOTFNicGtqNDVx?=
 =?utf-8?B?WTJDQlBRYzlXdkZEZUsxK215VDh5VVNGQXJ1U05MYVM1aWtCNkZKZ1lYY3dz?=
 =?utf-8?B?M3FieTBDN2tQODljampnRWhuVVBDcTlIdEd1bk5ucFRac0FrMmhqM3hUT1Vu?=
 =?utf-8?B?bUVXYmRyQk5pWFhYMVZubGJ4ZENpcS95eElmek1SNHFENzNPaHBQeXRvTTUx?=
 =?utf-8?B?WnFIVHNVdTR5MUNMSDhlZFhNdWx1em1zQjh6NmtZMTFQOXhDUTZSdzZodE1V?=
 =?utf-8?B?dXZNMithL3JrMDkxWEhlbFQ0OEFwZ2tXeURINGJsZFhQWTl2Uy9QZVBQU0Ra?=
 =?utf-8?B?a09Ha0VMVDBDV2trZ1FhZkdybFNvZEw0TUdPTWtYZjNQeVR6R0hLMGNCWEdu?=
 =?utf-8?B?V0swbkVOK3pmMm8wb3VpdnJTQWlLRkRyUWYzTS93UE1DcGJRL1M2bWVqRVNy?=
 =?utf-8?B?QVR6RFRXeno2L2ZBVXdVVDcvQ0RGcWttdGtTQmZ1M0VhczkrMi8rb01kMGZw?=
 =?utf-8?B?ci94VG5yVXozenFJWDR3OTNoS2hXVVo2b2xJU0NKT1RmZ0VxUzJ4SmU3U2tp?=
 =?utf-8?Q?tQkEJlmNKfVpjLcVNWExWcez5HSCuKUkz8zIU3G?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e14a571b-4f55-45b5-fc88-08d8e269750b
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3823.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2021 19:36:23.7837
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3Ef3MN9/kAwWBnInl27FvwWWatI5n1y/lYePJhiiMnv7MNK5ycyk6Z681lvpPVtI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB4611
X-Original-Sender: ziy@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector1 header.b=agUq1mDN;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of ziy@nvidia.com
 designates 40.107.236.83 as permitted sender) smtp.mailfrom=ziy@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
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

--=_MailMate_D4FAF53E-EB45-4AB5-BF48-29686776AF15_=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 8 Mar 2021, at 14:23, kernel test robot wrote:

> Hi Zi,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on kselftest/next]
> [also build test ERROR on linux/master linus/master v5.12-rc2 next-202103=
05]
> [cannot apply to hnaz-linux-mm/master]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Zi-Yan/mm-huge_memory-a-=
new-debugfs-interface-for-splitting-THP-tests/20210308-232339
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/shuah/linux-kself=
test.git next
> config: x86_64-randconfig-a015-20210308 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 3a11=
a41795bec548e91621caaa4cc00fc31b2212)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/961321af55684845ebc1e13=
e4c4e7c0da14a476a
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Zi-Yan/mm-huge_memory-a-new-debu=
gfs-interface-for-splitting-THP-tests/20210308-232339
>         git checkout 961321af55684845ebc1e13e4c4e7c0da14a476a
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Dx86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>>> mm/huge_memory.c:3026:40: error: implicit declaration of function 'vma_=
migratable' [-Werror,-Wimplicit-function-declaration]
>                    if (!vma || addr < vma->vm_start || !vma_migratable(vm=
a))
>                                                         ^
>    1 error generated.

There is no need to call vma_migratable() here. Will remove it.

Thanks for catching it.


=E2=80=94
Best Regards,
Yan Zi

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/6D152AE0-2B5D-412C-94E8-170116E94C82%40nvidia.com.

--=_MailMate_D4FAF53E-EB45-4AB5-BF48-29686776AF15_=
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename=signature.asc
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQJDBAEBCgAtFiEEh7yFAW3gwjwQ4C9anbJR82th+ooFAmBGfLIPHHppeUBudmlk
aWEuY29tAAoJEJ2yUfNrYfqKRtoP/RtSID4HJj42BI1lr2hudHNeTMKv58OByW4A
Sw3xU/HwUyRgJk1CdBZmsLd/zx1g4z9iVEg6NgUTo7HCSI1wZxBadKVvuHmUUp8S
/th40tmUJF9lXHzvCBRxLUFKsa+ICImUn68Wnvkvo4c8aQ92vMkwbM10ZcPuidW9
dUbt5+SVeAl1IHOZ4Bq5kGwecgV/kr5l/SHGu3Tl03dZ0mel/shHYjjqsHjwdrzB
2+j/JtuOB4biJJR25KKlijgCidOdVlDFC2pz+RFCB3ABMw13zU14yRS9Hek6VoSy
5DuOtzWLlLhSUKE2Y0ODy2GVagek8jp0vuPrb8EhMCVUYueKS4dkD/6O0s5Gd1SZ
nEUPvvNFjVSjmSgRyNkY1y5qWhKZcoJhHiNhjMdezEVk2+OBblbqSEwYAFxTlCAs
Ze9Z9++w1GeZ68ufw67XKXeLLA/pgwROUDi4RhMsS5qKvLkEJbKTBGFR3JErqvyT
1MrNWlpGW24Et+pqcoubpZeyzTdKi4riIke2lYiAtDfAoIz9dLmsg7G8kJk+LC19
wTefRNkdS56xqJ7L26it6ax1vP2FecCP7vbyz5CU93+CEbzcAL5i13BQyC0uYiDe
BJMKxEOumKPvVnsEvGgUIMaRsaMLtd8WTgqqKW2XxieBqMVhv5RCFOqaGF9U3kJH
FpR/yBm5
=mjm/
-----END PGP SIGNATURE-----

--=_MailMate_D4FAF53E-EB45-4AB5-BF48-29686776AF15_=--
