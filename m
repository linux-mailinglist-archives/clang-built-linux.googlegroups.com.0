Return-Path: <clang-built-linux+bncBAABB7WUZX7AKGQEAEZ75EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 183932D75F2
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 13:48:00 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id n3sf3818508otn.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 04:48:00 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607690878; cv=pass;
        d=google.com; s=arc-20160816;
        b=m3kTYqyyh5zaaqlkBP+E8RL3KHG3rXI11kVPz4SrZUo6ECBdrx9/Gof0RqxHU0c9FP
         WwjfTm6uVXVSXmzqAJ4tCzBVE+mYBrSSxoL2xPrT5mT7DiE2d4MgxJ0VwXplL/y3QsRV
         vCZrmR7KU1tLYvLeXOmuuev217ZsieHuKAg0YGH0GEysnmFmzNf1OXlSfQFcThqBqRK5
         Ml6mNhzRReJM393SBbhDA4FIujf3jnI5kOA3GYkZ5SXecxy8FMEOawnZSOvS5SeHD8LB
         vF5V8MgPP9LDVUJ6fRM+y7zJHq89I5AGt300P6Ce4Zpdj5/Y9ymYaHAaHO87ct66Ze9Z
         qp2Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=ROvIefXR+wm6fPnzwmdQio2Kyd6coWrxuHrZEAC4ov4=;
        b=hoavQMqACE+y4VNdEreQMn2kwktYlud8cNL+xB5SjjpdJWpe9E87QqmWoTLZ34P9PK
         8KaNfcKOJLsSqTc6ZWTXMSGo0HCJG/B/RaFqYTSQ/Wzus2rH4M4cQ4qxYhJd0ce9Vz59
         Ce7rt51pVFSdd8/VuJScU9e6xKTxzMYG+MnUXEyksjk3ve2C0yZ0TI3xXIHOU3Oj9nHK
         5Gg0CN5GaM/7xF6qngCbifttiSSJMIJs5eNfBCrjigzU47WfXIXYsb64p41PeIf5bRgo
         ektL6CsbkVNpNR0nj8XC1ZJAE+Qyw+z/WnwPiJFqVwmOzSSiBSOEJR7jilu1/yYSudsU
         GZhA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@digi.com header.s=selector1 header.b=nEpisFve;
       arc=pass (i=1 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass fromdomain=digi.com);
       spf=pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.206 as permitted sender) smtp.mailfrom=Pavana.Sharma@digi.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=digi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ROvIefXR+wm6fPnzwmdQio2Kyd6coWrxuHrZEAC4ov4=;
        b=YTUWYTs1+U/wfa68S+OSzKV42ixTREqDuheUzzxJePVUA5G148Z8u1ohE9yoPlFzQL
         rmiZn/5+tfGpSlYjv5O/8BreVvWlAyC71dRTQvPwOV8jv00AzZmCW6Fja7Z7EOk4P5OI
         FeBtOsuc58hafxQQ8hBAnyiRAFvQG4pKYsBX3LgsY39QNriSrIJ7Kpsej8JMdi+BUKfH
         D0U8nZvcgicQs9kenuyvEWddkIIt6C/+VoZSuWv4M5Wejpxm6Jt836txISfIyup7Gy5f
         UtOT4v2j4QanXWKvBiOab004l6stsOwOgZ3fZgElegaW0yGMUQUYY54JW1kg6yUC40yB
         rC+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ROvIefXR+wm6fPnzwmdQio2Kyd6coWrxuHrZEAC4ov4=;
        b=EpFV+vdoBcSiEo1dNzhDGyWrZRGu9YhEAH2KtZNESz/nWDHnTQxz1xT7HoaYd9Z17I
         qBWaT+XdHqIVn6R6cihj2+3C9FW1wLSuz8qv1A4Aa8n5acef/MCsgcFBSwWkdfYHa1Ua
         i0HmDsj4K5uRSHxJqpyjUOtkesUnhyJ6f7dAgmpIBArCkI7vYIJshAmAO16XJp8uo1KE
         2kleNPOXDfuZ7oQfjtcVk/FKHCJzhZoM0aX4EecFVZImgRCNJpT5eAgEYilG9BbZD/Ds
         XEhxnfDYYvH5npN9jQEhS7IS9iBcWHRUGUQW3QlkkZofQ/6Gwbu1fWvdo/7Qjki8LhpD
         1PcA==
X-Gm-Message-State: AOAM5327Sm+Xd/wECq4ddo9hGpzr8+jm5Ltf9aJP5Ibjry9naVlar0lA
	4KHSHv36RaJovyN6uG1Mm0Q=
X-Google-Smtp-Source: ABdhPJyBAk/tCff219Zys8PaOlliWmGehZ1P4rNI5zF4M4eaO6SuvuiwHYXRt8myENunr0r1tiYMIw==
X-Received: by 2002:a4a:2f91:: with SMTP id p139mr10016015oop.0.1607690878499;
        Fri, 11 Dec 2020 04:47:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cdc1:: with SMTP id d184ls2211537oig.10.gmail; Fri, 11
 Dec 2020 04:47:58 -0800 (PST)
X-Received: by 2002:aca:b20a:: with SMTP id b10mr8418699oif.75.1607690878124;
        Fri, 11 Dec 2020 04:47:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607690878; cv=pass;
        d=google.com; s=arc-20160816;
        b=EehHS5mQfKF1cluZM4bxO/m2ywrIKwYd20EYtkOx0UeVWaizIAd6kOhYIO1iwiHWav
         eLNZ0FVrQ47ZcNiDBdRx6eyMkOYwRoE+JudzgKDjYTetSQAIWK7/tXbuZYRaQuSvlKIu
         13HiiQ5Iid2sfMDl55C0+kZ+YKxLVjbJE5rD1o5dvr8bZsd+AaiNIyRoWRvJZH7ELnkN
         2Gfi8rktFczH6XC8tLep41cwJOFOS3m0R7fKXnMdHxhc0qbOBR6x36vJ/sjFFftEPQot
         1IydikmPIqF+oL7HPV1X3bpWSL0h9ZStIN+WxSpLkWxK5KCsggAd36W5WhDAfw6PPnql
         Lwgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=LfymOkPGRYsFGCG70nfzmuM7Ce9OU1eYh9HBsebD430=;
        b=GoFrTXW8l8DszP09VxphCzndTaSxXiw2LXbTtjk0E8PX7Z/LyBwv6676vxvWogGLKS
         wPPC3qqxlIvmyczDkMxktx25646MnRujlzoPjCA93JGKNPycBvjOxHfiTMi5ryVj88oU
         zABCm2NjQo53ONv7nfNavwlzc19zSjYh7EZRWWkW+rxW7C+BjWEZprM2EOspbI9C+dH7
         tNR2QomBX7DEvE3Haen4zukKNrkJ1ioC+bOV/Dguq/XA7GUjrB/i4q5Y12fOO4nJxzGA
         HmlR1O2CLGIDaYOyPhzAe263EWzrE5w/G8mP8VzEgE2sRqMVhQt1iYd/0CXODMLVglXJ
         RcvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@digi.com header.s=selector1 header.b=nEpisFve;
       arc=pass (i=1 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass fromdomain=digi.com);
       spf=pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.206 as permitted sender) smtp.mailfrom=Pavana.Sharma@digi.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=digi.com
Received: from outbound-ip24a.ess.barracuda.com (outbound-ip24a.ess.barracuda.com. [209.222.82.206])
        by gmr-mx.google.com with ESMTPS id u25si576747oic.0.2020.12.11.04.47.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 04:47:57 -0800 (PST)
Received-SPF: pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.206 as permitted sender) client-ip=209.222.82.206;
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2108.outbound.protection.outlook.com [104.47.70.108]) by mx10.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Fri, 11 Dec 2020 12:46:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JhaVYZv5MIGpW+qB31sk62PqTjki4UKl36mqwXjUlQMPZ/XLvsT5ZGr3f+A++V8RZYo6x0qWH5uCjq68cDSQYe0aln0rK7hcsEJ8/WIk3n3/ljxviRtOCqfU6RORxAKccCaq6zWqSU1wBpu6G0nVvFgYI6Za9DrvnCjybL4GoC3RBu70m+J7wKbHrJSKxSo/KWm1R9EcyPN1kC8oy1YgIo2HD1BpnFvC2LXWE/9mKSXRiFyoqJUKIdGImvBKNYbzVXgTxmOgSILM8ijshh2hQbbWltyBY89o3joIuVZwZ2gZdnrlnUzSO7jSjBQXx50U5PFnZoE9yzpZQxuQFtLHUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LfymOkPGRYsFGCG70nfzmuM7Ce9OU1eYh9HBsebD430=;
 b=hNLa2KTNGzq1fO7ucVOMLYGGLyMD74yTTUrcgG186giGsSRNIIOaGreCH8Gu65/iTfdKo8BvVMInfxQhpVcKLcEjDIMYIc5Y8ESATeP0x91e4j52NirAz6u7KbPOIbjZBmJzrsSt6YrT9pIUAQniUuoX8kBop7WSQlh4RS8pJIb1fY1VmJPkges8Mm8SSzEbT3S3kXMGPap7vwgRQVnpnsE2coTUzWrSjY9tqav3izWNII6xpA8Zez2ZKyvOt0qCrN1JMsYqZWBjB3ATnPey+Nij4oSDq/JyTNnVEY5d8pMUhZFd9j+EGhejWIe+MDLhimx+w+DXSgSpn8YJTDAx9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=digi.com; dmarc=pass action=none header.from=digi.com;
 dkim=pass header.d=digi.com; arc=none
Received: from MN2PR10MB4174.namprd10.prod.outlook.com (2603:10b6:208:1dd::21)
 by MN2PR10MB4176.namprd10.prod.outlook.com (2603:10b6:208:1da::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.13; Fri, 11 Dec
 2020 12:46:35 +0000
Received: from MN2PR10MB4174.namprd10.prod.outlook.com
 ([fe80::c8b6:2021:35a0:2365]) by MN2PR10MB4174.namprd10.prod.outlook.com
 ([fe80::c8b6:2021:35a0:2365%9]) with mapi id 15.20.3654.019; Fri, 11 Dec 2020
 12:46:35 +0000
From: "'Pavana Sharma' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: kuba@kernel.org
Cc: andrew@lunn.ch,
	ashkan.boldaji@digi.com,
	clang-built-linux@googlegroups.com,
	davem@davemloft.net,
	devicetree@vger.kernel.org,
	f.fainelli@gmail.com,
	gregkh@linuxfoundation.org,
	kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	lkp@intel.com,
	marek.behun@nic.cz,
	netdev@vger.kernel.org,
	pavana.sharma@digi.com,
	robh+dt@kernel.org,
	vivien.didelot@gmail.com
Subject: [net-next PATCH v12 1/4] dt-bindings: net: Add 5GBASER phy interface mode
Date: Fri, 11 Dec 2020 22:46:04 +1000
Message-Id: <dbad3456b9c80a7f53d64b608ab69e4d4e0b2151.1607685097.git.pavana.sharma@digi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1607685096.git.pavana.sharma@digi.com>
References: <cover.1607685096.git.pavana.sharma@digi.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [220.244.12.163]
X-ClientProxiedBy: SYBPR01CA0162.ausprd01.prod.outlook.com
 (2603:10c6:10:d::30) To MN2PR10MB4174.namprd10.prod.outlook.com
 (2603:10b6:208:1dd::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (220.244.12.163) by SYBPR01CA0162.ausprd01.prod.outlook.com (2603:10c6:10:d::30) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Fri, 11 Dec 2020 12:46:30 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4fd4bf31-45f3-4e2a-c1eb-08d89dd2cba5
X-MS-TrafficTypeDiagnostic: MN2PR10MB4176:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR10MB41762ED2AB2E95632BD9A5BA95CA0@MN2PR10MB4176.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CX2mhwV9gok+idFH4dUcizI1OElESsip1p166MnrD+zu+Asha4fAZJeg49EUqXlBGJplf1xGbz4CGCOCtJ3+TpI1Ys/riRr37/i1eMFRslTty9ZmtCVe9TQtFN46N1Hq0Nf4X7EPU0m/kFF09t6gqNqfPq+mGtatoOyC5tXM/OUciS96c8uNCunXg1mV4JMrhH3TmTtFb5/iu1WAqHk/aHz5RqTktdNkRy1FIKhl1ROM3QRnnAqalq0sqZHaUYkr23wVdSLIO9i7Lh1u6v0TVOTJYNca2LXc+8UNoFw4fuFzfWCQdxzxJZqtvPvpVK1pc/fhbOvqF6xN7bECG842pxo/zHjfPtsvqeXDVdlcmnAy3Pc9St03+AMSPclQRSHaUq1aWn0BH6kuEG5n00skz0l+Vt++VD1ukN8VD3IycNg=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR10MB4174.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(376002)(346002)(6506007)(36756003)(8676002)(4326008)(5660300002)(4744005)(6916009)(52116002)(66556008)(7416002)(66946007)(66476007)(6486002)(34490700003)(86362001)(69590400008)(16526019)(26005)(2906002)(6666004)(956004)(186003)(508600001)(8936002)(6512007)(44832011)(2616005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?6bS3UexjrRJW2afTEkxH3mXJ1UaaogP1ib4u6t75ZqWKFnm4vk3sc0TUalsb?=
 =?us-ascii?Q?zJrsHKATC63wVYFv+tsF10gkWqeckUA9sIDhuKvoZwumP9XYXNTTSOONeBAM?=
 =?us-ascii?Q?UVEJ4c021pfwZEFfnTuN9XBdJz0X4PTZMSRBWPr7Wp/ESCc5hM0hZPvcZ8IE?=
 =?us-ascii?Q?FYlJaJ+FMkqcytD9YXk+49CZDByjGVStHfoJLOepKi3ALK+NcS5x2mg62ZZj?=
 =?us-ascii?Q?yvwsKcLDXvSqa3RcdbuR5x/pJzUzeD7crNLiwiEY1wgAT+VAi5zsAi3A4UOO?=
 =?us-ascii?Q?2vqzH93d8148mVR0yvO+bTnKTYgswc7xQ4F1LVBVvS2nv817jeMwt2PRsGaA?=
 =?us-ascii?Q?32T0iE81Bo3x5WUY0UOouvS2wT4BPSONMfTd79XdW+PLkK9SMbV9NsjnODA8?=
 =?us-ascii?Q?Rg/AYJnhaaoNyOW/pJRy0eCeqkHahtOpaphQZqw7Gg6PEu9oqpuEurzAnrWd?=
 =?us-ascii?Q?Bl/X/jnvHaODzI2XaFW8w0Ys1RP7xhmZ9afgWGVACDxleDwL2ZzRuVoihoGq?=
 =?us-ascii?Q?FPWEEHSUECbr5JtRCsmEsVNiROjSmcX9PBoSUegetfDctlpk23m1vfRlSqPo?=
 =?us-ascii?Q?3W4IDBkMkd/IsrvKd8KzvxVDmv+SvtYjBRclwDJkSpMBjp3tk7MLIKd65Y0z?=
 =?us-ascii?Q?LsUFsNw6N+LAOiFSBzawjdF+Qu3ul2/gvGSTt0k9PXqbGc2EwE3YNJA1y091?=
 =?us-ascii?Q?APcwFk50d5DtLFms01H+dH0XDJn0TV89IjagupTbZanzQ9gLLwRx+waOxbko?=
 =?us-ascii?Q?OZmN5cKR8XTQ5MyDGE5UlAWDE8/oDlVF+a4hysxHImBOBTRexfCa7jqR8S5G?=
 =?us-ascii?Q?hLXHJQAR+2Zutoiw6vEgvqimSYvDjR8h0GDa21ey715kR29josRyIPjT+ymK?=
 =?us-ascii?Q?jnXJ74oHCerACNCfe3SBykeqpugOJOibSuqIn7A0ztkhSEeypSNP8ExRL1sa?=
 =?us-ascii?Q?Hgl8bjN9g2XbHyWcqrIDQOGGQCyLNi7QZA9aNYC3hPnwNnUP21s3GcYXcXUa?=
 =?us-ascii?Q?lGnI?=
X-OriginatorOrg: digi.com
X-MS-Exchange-CrossTenant-AuthSource: MN2PR10MB4174.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2020 12:46:35.6872
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: abb4cdb7-1b7e-483e-a143-7ebfd1184b9e
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fd4bf31-45f3-4e2a-c1eb-08d89dd2cba5
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ve4CWuYAdLbgp+qhL5G9uC6Ufh60NWjux6g2apK8BX+TMsPZeA7d1ok4+q9iuMQjsz0lHsHCehZzy5xKrWxD6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4176
X-BESS-ID: 1607690797-893018-7524-2766-1
X-BESS-VER: 2019.1_20201210.2155
X-BESS-Apparent-Source-IP: 104.47.70.108
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.228760 [from 
	cloudscan9-109.us-east-2a.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 MSGID_FROM_MTA_HEADER  META: Message-Id was added by a relay
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS112744 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, MSGID_FROM_MTA_HEADER
X-BESS-BRTS-Status: 1
X-Original-Sender: pavana.sharma@digi.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@digi.com header.s=selector1 header.b=nEpisFve;       arc=pass (i=1
 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass
 fromdomain=digi.com);       spf=pass (google.com: domain of
 pavana.sharma@digi.com designates 209.222.82.206 as permitted sender)
 smtp.mailfrom=Pavana.Sharma@digi.com;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=digi.com
X-Original-From: Pavana Sharma <pavana.sharma@digi.com>
Reply-To: Pavana Sharma <pavana.sharma@digi.com>
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

Add 5gbase-r PHY interface mode.

Signed-off-by: Pavana Sharma <pavana.sharma@digi.com>
---
 Documentation/devicetree/bindings/net/ethernet-controller.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-controller.yaml b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
index fdf709817218..34036902f577 100644
--- a/Documentation/devicetree/bindings/net/ethernet-controller.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
@@ -89,6 +89,7 @@ properties:
       - trgmii
       - 1000base-x
       - 2500base-x
+      - 5gbase-r
       - rxaui
       - xaui
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/dbad3456b9c80a7f53d64b608ab69e4d4e0b2151.1607685097.git.pavana.sharma%40digi.com.
