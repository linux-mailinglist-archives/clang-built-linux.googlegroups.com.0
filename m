Return-Path: <clang-built-linux+bncBD7NFPN34UMRBOPM5GAAMGQEYFOQR5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A9B30D707
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 11:08:58 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id g24sf14105099ljj.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 02:08:58 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1612346937; cv=pass;
        d=google.com; s=arc-20160816;
        b=OCP/bDS0Ii3oO9txL3MYXKppQbYyoxhZWY619E5uqX1mhvsdAHy+GBzBN6jLvNT3So
         6ITJnYIEMbVGaHpWWAuwL3KLdk0/ZdqAeyxS7RxrPRDW2a5JZdDW7SQnizFOQLJPT+L3
         hrXKuWCUpTND5q1Es/OF6Mslcp6XAWdpsC1E4GNMdCzyjoZwuc72z9L/9Fn9wMAPmFbY
         ldYHzEwvLj5ByQNqYQb0TuJBQnNiodwcp5n8f9tueJUmt6i12hjMOvgVB5jFZL646a2e
         tlS8fuMLpWEo+5rlW1aDE/tIuGrJtX5zYy97gTz9ySaOXTRIMkOplfBa8jZqcKZqNUJo
         4hwQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:original-authentication-results
         :mime-version:content-transfer-encoding:nodisclaimer
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=7rYJxYazxr/NA5GNjiU/FwLW2pOOPH2UJpa+iPp712U=;
        b=NOxVDBoGUZmFOsfAWRP71T7zecWZIR5fquCo1P+BB1Mm3jsAMzeh9NCdsstLoz2jlG
         nTY5+WJPWAvfmNLxvmbf9AKLbebFJaEqIiOramZ9Sw2NjYQgQIyMHkYHy50s2641+p12
         iPRVZJpYoiZh08siLMKT9qbG688tZW+6slQ0AIpWrq7VOYCaCidHEd28S5gq9YeiH6Yc
         hhPr5qWcPCdNkvpzk8r0OdQdNJuWLR0MBEGER8kDxYxJ5s75oNid5358s8Lc1ODD9QVH
         isqWffH3T98+rnU1Rhmggcm+FAm7AV5BeUEyr0oNDYCxG+dUeShrU8VIejBAlCdAfcbI
         vK7Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=cdfJ05k1;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=cdfJ05k1;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of peter.smith@arm.com designates 40.107.21.61 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :nodisclaimer:content-transfer-encoding:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7rYJxYazxr/NA5GNjiU/FwLW2pOOPH2UJpa+iPp712U=;
        b=r38cAreczrJj8t7of13WlyetnY2wEsvWSQpSUJ/R7igcNDCMwBl8TCSB2wiyLz3Y+i
         s4YCkwX/CF9ZH6/IPudV1N+o6Ey8mpEncLjhBK/YJV7cOlCAir960NU8x6KPuXYb5V+3
         pX1WiIPCu57YGKoK7uDP8Ez3xX6lBamLXqPzDEC/Fqdr2G7FLmfM1YZUNvGELSJlMScQ
         t9mCNgaG6xDyPKy4WJUPmq+f8JjI8giPPtA1VVBZ0U//ILCC/wrhZa12gzN1SSlQEoLb
         pUHzql9xF9RTr+KKhQLkyLPNsq2hPIFjK/vPhZej8rtl1lwtqY2WKneJxuXrkC8WGOTj
         mMjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:nodisclaimer:content-transfer-encoding
         :mime-version:original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7rYJxYazxr/NA5GNjiU/FwLW2pOOPH2UJpa+iPp712U=;
        b=eDXaLq3RmE3xe8iF2pNsFIlZvlUQIxW9WU422x8YTzWfUS+oD0wrGzYiw1u1kjvFox
         ZjMFXUvZqrpYkjoCUx+aBpdzYSnJEWEK09QQhD7f5pmPddMYIWf90bWrShSw35HNz0AW
         IrmWv5ucGG522gHTwHSHiiEJJNVOXGghTExbC+1FpALrXs6vvx7+ZVpf0aPbHeCVJJLo
         Z8ancTv3uZVfo//x62PSrV1ldCc4BmW1lna+Nq0pfSrQOueAg4KGQgANeCn5cr8/atBf
         QnqQ3r2ufp0ftopfwyY/DiF1FkvVB93t201x2+Qjay94pndNcXAQubOntsgFY578M0NS
         PvvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328krHkGodndKNq3u/1HbpoEOT0B2N5dQQwhlRiSiIWUJtTdFeU
	NND2siwuuVsIHxP3EpPh4cU=
X-Google-Smtp-Source: ABdhPJymsldAUq5q09sY5ASBGQ8c4RiuKP8l+NQYpuEKk41QX93tnwlJ6Wnp0xlYhd2/zf7cQ8+iJw==
X-Received: by 2002:ac2:5312:: with SMTP id c18mr1380945lfh.318.1612346937470;
        Wed, 03 Feb 2021 02:08:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8850:: with SMTP id z16ls275615ljj.4.gmail; Wed, 03 Feb
 2021 02:08:56 -0800 (PST)
X-Received: by 2002:a2e:9613:: with SMTP id v19mr1236866ljh.135.1612346936536;
        Wed, 03 Feb 2021 02:08:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612346936; cv=pass;
        d=google.com; s=arc-20160816;
        b=0CzXSKowWV0t6nk1mTDyj7B8ViyEhN+c2exaPgGcdF6y880rr2vKmFSuVlVAlwChbv
         FQk+alkSurTBfAadzrO4qKbvp7zWhef9BV3+oXL9CAVB60hiUaaLBy7NOj8ZaV0MQQ3Q
         xOLLU7Nd7LlEvXYHB0TyF4/WZtUw4Ne1HzZZG6YlpzDudEfGNdX9UQkUTAwp8uO3di98
         nnvRxLNPiQScr4dd2lv6Kj9+hAoc2keoMDdvxpOmT1dKGsjMF8JwyXJMyckwp4zqWF5a
         URXgc6tkp67S/y9O2xf13toEJobQgrRFmw5OVhYNdjnuGYkzH9qb1r/htdrLvCJSBLGR
         jzmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=original-authentication-results:mime-version
         :content-transfer-encoding:nodisclaimer
         :authentication-results-original:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature:dkim-signature;
        bh=7FcuYCofILzclw5XkjuDy79kkKzPy9j+foP1Pl0QLHE=;
        b=X53jQibH/TQk35HCp/OcDb4xCblxI3g04HWvnBbyuCpO9p2I1E5dlH+yXJpw4o947S
         i2dlZ/KzRsecuKlvqWmwrkiEaUdgFPSlmAKhK96rlfrjIuL2v1I1Ld0x7gb3PhxJp9aP
         IPZ05OjWuzYA+XIIRkJs2+VUi0OSs6o3GUAA8HlrcueCJylFiQCA1czq5kOlviVU6ALF
         SknaTYYh+SWi95QUnLf09tq1hIG6cMbQN+9EV2kTshnqA6o98Kpj+4ppEsxybrmDso6y
         3jgvHCZ0N4m1rEGbWRmXX6WrepFnNe/ZxNfISvbZzrcpbM9CvT6vOpYavCjANjO4mSBt
         YWYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=cdfJ05k1;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=cdfJ05k1;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of peter.smith@arm.com designates 40.107.21.61 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2061.outbound.protection.outlook.com. [40.107.21.61])
        by gmr-mx.google.com with ESMTPS id h19si53963lfl.4.2021.02.03.02.08.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 02:08:56 -0800 (PST)
Received-SPF: pass (google.com: domain of peter.smith@arm.com designates 40.107.21.61 as permitted sender) client-ip=40.107.21.61;
Received: from AM6PR04CA0030.eurprd04.prod.outlook.com (2603:10a6:20b:92::43)
 by DBBPR08MB4693.eurprd08.prod.outlook.com (2603:10a6:10:d7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.17; Wed, 3 Feb
 2021 10:08:37 +0000
Received: from AM5EUR03FT029.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:92:cafe::3c) by AM6PR04CA0030.outlook.office365.com
 (2603:10a6:20b:92::43) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.20 via Frontend
 Transport; Wed, 3 Feb 2021 10:08:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; googlegroups.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;googlegroups.com; dmarc=pass action=none
 header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT029.mail.protection.outlook.com (10.152.16.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3784.11 via Frontend Transport; Wed, 3 Feb 2021 10:08:36 +0000
Received: ("Tessian outbound 8418c949a3fa:v71"); Wed, 03 Feb 2021 10:08:36 +0000
X-CR-MTA-TID: 64aa7808
Received: from 3eac11ef882e.2
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id A4D2C560-3081-4636-82A4-16E83FD24813.1;
	Wed, 03 Feb 2021 10:08:31 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 3eac11ef882e.2
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 03 Feb 2021 10:08:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RB8lT1rEl4GrPW+6x0kk6SPNQHiZUcZNmsS9qgPQ7HnfOGQWVmsuX/AG4OvMKiPgbTdjyvzdocDYYVtTf0jDkflOhdE4A1EtDk7A99XjddxnQPa8AYGXGUSycgWyOyfdBgtIobcO8p6zQ/lvRU7lR95TUPazQgITnNdgaUwjrbZI04RmJAc8nK70knoE/GEZ6EyDFECf7WquV8srux9ZhScHEtUOGMIWq46szpxOB6zM2Y9rkwWFqCXkOzm36B1TAkdYTurvjulk6FoYaXJHjXOr2Zdnzb0u5dVrvNmho28tleF78/FHVCy1M4M9vMwvJQ1MAArXZ+VZgIBF7Lb7nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7FcuYCofILzclw5XkjuDy79kkKzPy9j+foP1Pl0QLHE=;
 b=l1e/zva6ZhpMgbPFyG+sQIUrqjv3l4bLa4FBBy+e10RFnrmVhVzKsmU3LGCSkPG3tnG93c7HXnA9sLkgL0UGYAvJsj9NMeMWNDddHqY3s8cGFwmrRapm10gRYoNamF/GPj/o2MXzJokZiDYC+DuaSoR4Mxexs2nLd991aK5/rTyKdkKZ4JMOzHlViMUYXZecGsZbOsId3sVCkUSUFDdnusgAWvSGxlNUa9ocyEBXFkxm/us7YiENj4GFO/R72v6I5jQbAbzk8JUjPAZYBIbQNNLldhnu0LkcebUl+RLx1CvTe1WZNLTxcT3iVEl26XvbMUwxpS2WbKrH5kCJThCE1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Received: from VI1PR08MB3198.eurprd08.prod.outlook.com (2603:10a6:803:49::20)
 by VI1PR0802MB2430.eurprd08.prod.outlook.com (2603:10a6:800:b1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.20; Wed, 3 Feb
 2021 10:08:26 +0000
Received: from VI1PR08MB3198.eurprd08.prod.outlook.com
 ([fe80::7c6b:e979:e3b2:abeb]) by VI1PR08MB3198.eurprd08.prod.outlook.com
 ([fe80::7c6b:e979:e3b2:abeb%7]) with mapi id 15.20.3805.026; Wed, 3 Feb 2021
 10:08:24 +0000
From: Peter Smith <Peter.Smith@arm.com>
To: Arnd Bergmann <arnd@kernel.org>, Nathan Chancellor <nathan@kernel.org>
CC: Catalin Marinas <Catalin.Marinas@arm.com>, Will Deacon <will@kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Nick
 Desaulniers <ndesaulniers@google.com>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH] arm64: Make CPU_BIG_ENDIAN depend on !LD_IS_LLD
Thread-Topic: [PATCH] arm64: Make CPU_BIG_ENDIAN depend on !LD_IS_LLD
Thread-Index: AQHW+aQ6VkaIqc08EkKfOjb8LuFdtapGK3ZA
Date: Wed, 3 Feb 2021 10:08:24 +0000
Message-ID: <VI1PR08MB31986E54164FA3293AA737E1F8B49@VI1PR08MB3198.eurprd08.prod.outlook.com>
References: <20210202022441.1451389-1-nathan@kernel.org>
 <CAK8P3a2864oSVkhaYynoadyYMcYDh0LvDDFSJ2D8OTHSszuSQA@mail.gmail.com>
 <20210202195133.GA1481999@localhost>
 <CAK8P3a19W2ejs8mtHrf6Nd6BVG8u5fM4BZB+neVEWdOmGCbLbw@mail.gmail.com>
In-Reply-To: <CAK8P3a19W2ejs8mtHrf6Nd6BVG8u5fM4BZB+neVEWdOmGCbLbw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 010875FA393928418D50D38AA7869D3D.0
x-checkrecipientchecked: true
x-originating-ip: [81.104.142.31]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 8c0b8450-6c8b-4086-6f16-08d8c82babf0
x-ms-traffictypediagnostic: VI1PR0802MB2430:|DBBPR08MB4693:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DBBPR08MB4693786C193FE3A1F594BE1DF8B49@DBBPR08MB4693.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: r4B+OS+69BlI8oYgYvdV9Fy1nwE+TcWq2FL4BCC30ZWykGkL5xTgYbb0VBhkiGI+IL4AFV1WaKA0OR3XF9WMDnASVE4/ZI+GPbIEls5GJ32o17iKy/5hSRW862hWlLkpmtkJgjSlWb+6dCkrw6ZhW8ZCu4hM9vTNpN4+AwhhiiddaVpFWZA6kp9NX5E0wGsCVz+13AEX/1729o978S/60XYiw5P7pJZGUTd/u9pdBOVWDGTHSjCA3+uoq4B90uADm9jBrRBHzMurpeFe9PhDiQhQpXLlIUsOzCHteNyqfHY/SkV0NZNEyQDsLe82kUnU2RhToIcfy0dqA1gfvbmtkbDfZp7b8V3Uht3Mz3cc5zBmQSPgdxatiM5mGUTwb3VZx743WJVDdh4r8iGwtNx1/7VhTHBRVW81KbO6ESl43vO+sS8WPqOFHlfq58RpK50Mui4pY2eHUg1I28krOFJY6/sh5G6FsI4PJy40woIDEPWtCVIfFH5CJ/ryzhMeTPuqklQrrr7xFm+sYtF+Ssajl46qquo2hn7TJM8wdAgrtCXaZgS6TxQePp9Xj+M4P+lDwXgil8ZDxf+xSPQhtSXqRD3eZBtdXI/IpCPDIpEEIuI=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR08MB3198.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(366004)(396003)(39860400002)(346002)(136003)(83380400001)(33656002)(52536014)(86362001)(2906002)(5660300002)(55016002)(66446008)(64756008)(66556008)(66476007)(66946007)(8936002)(76116006)(186003)(26005)(7696005)(966005)(4326008)(71200400001)(6506007)(53546011)(54906003)(110136005)(8676002)(9686003)(316002)(478600001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?Wk1nenVZK3Z6Q2czNU9PaDVTTW9YeVBMalRmd1FMWXJ0VnB3bElkSUttRzE0?=
 =?utf-8?B?K092NXlUU0lpcGtWQ3NkQ3dqajkranlsaVluTkdIcFMrSjJCUGZQRFZuWkto?=
 =?utf-8?B?bXkyZFdLbU95UnFTUWpnV3lDdTNueGZ5bGUrT2RJVTVqeTV0NGw5MVJPMEdS?=
 =?utf-8?B?bEdqRS9wZ2J2WmFlR3YzdGxnMkRUYjJreDROWTFrOXQwYnBvcDIxOVc1NnZS?=
 =?utf-8?B?Zk1VTyt3U2d4VFZPdGowa0FHZVQ2U2ZXcitCMkUyMFJxQVFObE5rN1lLcEhK?=
 =?utf-8?B?T2RVakJXZmZSTmxLcFc0ZDZFdVEvbU4vQTFhQXd3V2RUTXdrUExNYk1xb2F0?=
 =?utf-8?B?SCtDckhENVZ3ak1INDMxdFUwcWVZME0vdGdHLzY5dHpJTVkreis2VS90SC9k?=
 =?utf-8?B?YmFQakR4aUJoY2FmWDVZcnF6dUpDRVNJUVNia0J0TW5ZeG8vOExybUVPV04x?=
 =?utf-8?B?bzJTQXhBTHNEZER4UXprcUdNa3AwUHFHL3d0L2swQnFuTFR0WUNtRHFQaUhr?=
 =?utf-8?B?TkxtY3ZSQ2hUQ0djUlJvWC8rZ2ZzWnZUZWd1dlgweVJycFVocHhrNDh4bjlz?=
 =?utf-8?B?NkRtMXFzWmo5ZWNZWTFkMEVpNDB3YXl2Mml5MENTRnhmeEVMYTlKbkczc3Nl?=
 =?utf-8?B?MjR5aXpQQlpKY2Y0ZUl3RzlkSENCQ2Y3c0ZPbUNQRmg4UTYrU1lwSEMwTFdH?=
 =?utf-8?B?VTUrWktvRzZwMmg2VjBTWHY4UTgrRm03MVZxektZZDZJRjBRcDE1cXpvNFE3?=
 =?utf-8?B?N3BTaGVseHNGYkJsMUZOaExBV0JCUzVvMnFuM2lydDBMaFA5MWR1cFZRdmd1?=
 =?utf-8?B?ejJtY3RMekdwa1ZVemFkc1ZNV00vWEhqZmdVZjl6TlRQVXhoTWQwajF6ZzNN?=
 =?utf-8?B?TWs5Y3R5UHlCS0tFOEpMUlNNVjg2aDlrcjFmc0QxS0J1VTlBekFUNlFoOWxn?=
 =?utf-8?B?cHlwMGJ3TEdMZnZJdkxYWlNaTjhJTlNqcjRyaHRuRUV1TnZWRDJ1cUx0TTM3?=
 =?utf-8?B?WFlzbmdVaDNXUzlzb25keTlwd25Ea1EySHgrckE4U2tIZm5jeUhwVFZmTzZE?=
 =?utf-8?B?Q3JGcXhZSDNTSW9lcGxpVUpHVXFFd1ZpR3ljL1ZzUWRxaytleG9YWHRpRytO?=
 =?utf-8?B?eGYyZjAvdGZIWHM2dzVmT1JJYnJVMGhqZWNMdGRrYlJlU2V1UDI4Y1lPMmZo?=
 =?utf-8?B?MkdNNlNWcnlkY2ovNkQ0UUZUenA1S2IvUmUyY3kzZkVMd0FxTXBpYWxLbGgv?=
 =?utf-8?B?L0l6b3pFMTN2cUdscVQzMkYyMEwya2l0ZkNSZ2ZhQ0VqY21qSEorQzR2OTVE?=
 =?utf-8?B?bVJMMW43OW1pL3hSL2lsVGVvc1FoMGQzQWVBOXk0NE9PTkFjVTU3Z3kra2VW?=
 =?utf-8?B?WkJrR1dLSE40NHB2NllVNVNvQTdsM2UxZVlMTjI3SGh3bmtCcmROUEdzcUxn?=
 =?utf-8?Q?2OECoXR/?=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0802MB2430
Original-Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT029.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: ecdf156e-c554-4640-aa6d-08d8c82ba4ef
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DHLQxmRO0MdtOMyV/S/VVi96KHUNrtDf4V3ghIBkIc+fmuQ3fLZQvUCZ4zda9iXKHXHsJHzqzqXthQeVx/EL6z0Uglm808Av1UM+nGLfp6z9A9/5C6U/lDZkNkbU+LgL2r2F8A1dUrPeelu2an+PIRp3dJ+bFxyUM55AXXOvoOgvEVRpoY7jsY9erVKqQNX16QGMeICheixlGMbWZ6BwrADpoY8QfuTnW91SvLWP0roPRNJwgP8axDfuaIQcZel0X+CqsDcVA0nzRSaDi0MhjWCrCClldZw64V/SVeAi+UMEAH2OjnLgcwLM5HWLRklagmjai1yGuCaAHklPYrfQJ1QGugffe34WIA/UnCPbVqVj+89WbtWtC2oQe9MmUXbK5OdLSeJ2h/Tbf/P10yZeSAoSisfblphxXm9f/V4Hn6Vijq0pft8S6jOI7jGsPMOU4OHsnVLt2lHXhxZqTEKjjRcIqahoEWgBItdkzwCsXZQZWwx8tQ6B0BHAqnCTRTxzwyC8M15e+SVpPmT7RYvhwauSttX53Th7lmWNdLwN5MiBt7QD0Y0QtPHelhpupIuIlyrzi/HXXwHbVY0cNxgMgL7Q+9Ey5blunvTBpwE+oRtolbpnOQ+ZQSKOXyEAQ4vJUGFrC0Pxh3jpdbvJ0eJWWnPJ9lm0JviTgEwZ5cHy64ZRAGBU4QjksSOr/QihpdvWyC6t6b7xLTv9yrrsqu8TlYG0YfnnzRKAyuiMlTBMvZM=
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(4636009)(396003)(136003)(39860400002)(346002)(376002)(36840700001)(46966006)(82310400003)(70586007)(26005)(82740400003)(336012)(36860700001)(81166007)(316002)(107886003)(52536014)(33656002)(8936002)(356005)(70206006)(83380400001)(55016002)(4326008)(6506007)(53546011)(2906002)(5660300002)(54906003)(8676002)(110136005)(7696005)(47076005)(186003)(9686003)(478600001)(966005)(86362001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2021 10:08:36.6125
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c0b8450-6c8b-4086-6f16-08d8c82babf0
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: AM5EUR03FT029.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4693
X-Original-Sender: peter.smith@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com
 header.b=cdfJ05k1;       dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=cdfJ05k1;       arc=pass
 (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass
 fromdomain=arm.com);       spf=pass (google.com: domain of
 peter.smith@arm.com designates 40.107.21.61 as permitted sender)
 smtp.mailfrom=Peter.Smith@arm.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
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



> -----Original Message-----
> From: Arnd Bergmann <arnd@kernel.org>
> Sent: 02 February 2021 20:44
> To: Nathan Chancellor <nathan@kernel.org>
> Cc: Catalin Marinas <Catalin.Marinas@arm.com>; Will Deacon
> <will@kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>; linu=
x-
> kernel@vger.kernel.org; Nick Desaulniers <ndesaulniers@google.com>;
> clang-built-linux <clang-built-linux@googlegroups.com>; Arnd Bergmann
> <arnd@arndb.de>; Peter Smith <Peter.Smith@arm.com>
> Subject: Re: [PATCH] arm64: Make CPU_BIG_ENDIAN depend on !LD_IS_LLD
>=20
> On Tue, Feb 2, 2021 at 8:51 PM Nathan Chancellor <nathan@kernel.org>
> wrote:
> > On Tue, Feb 02, 2021 at 09:04:34AM +0100, Arnd Bergmann wrote:
> > > On Tue, Feb 2, 2021 at 3:25 AM Nathan Chancellor <nathan@kernel.org>
> wrote:
> > > >
> > > > Similar to commit 28187dc8ebd9 ("ARM: 9025/1: Kconfig:
> > > > CPU_BIG_ENDIAN depends on !LD_IS_LLD"), ld.lld does not support
> > > > aarch64 big endian, leading to the following build error when
> > > > CONFIG_CPU_BIG_ENDIAN is
> > > > selected:
> > > >
> > > > ld.lld: error: unknown emulation: aarch64linuxb
> > >
> > > While this is the original error message I reported, I think it
> > > would be better to explain that lld actually does support linking
> > > big-endian kernels but they don't boot, for unknown reasons.
> >
> > That statement seems to contradict what Peter Smith says:
> >
> > https://github.com/ClangBuiltLinux/linux/issues/1288#issuecomment-7706
> > 93582
> >
> > https://reviews.llvm.org/D58655#1410282
>=20
> Right, adding Peter to Cc for clarification. Peter, what I can tell from
> experiments is that lld behaves just you describe it should, and (aside f=
rom
> the command like flag handling) like ld.bfd, so I'm not sure if there are=
 any
> known deficiencies or just minor bugs when dealing with the kernel.
>=20

If an emulation (-m) is present then current LLD maps all known Arm and AAr=
ch emulations to little endian
https://github.com/llvm/llvm-project/blob/main/lld/ELF/Driver.cpp#L147=20

In this case we'll get an error message with a big-endian object.
ld.lld: error: be.o is incompatible with aarch64linux

If there are no emulations present then LLD will auto-detect big-endian fro=
m the first object file.
https://github.com/llvm/llvm-project/blob/main/lld/ELF/Driver.cpp#L1467

This will switch the generic LLD write functions to write big-endian. This =
will mean that any write to instructions will need to use explicit write32l=
e and any data relocations will need to use write32/write64 as appropriate =
and not use the explicit le versions. The relocations for instructions look=
 to be using explicit le writes as we'd want them to. I've spotted at least=
 one case of using write64le for what looks like data
https://github.com/llvm/llvm-project/blob/main/lld/ELF/Arch/AArch64.cpp#L19=
8

I've not know anyone try LLD on big-endian before so there are no known def=
iciencies. I expect that without an active search and tests there will be s=
ome problems. I think every write will need looking at, if it is to instruc=
tions it needs to explicitly use le, if to data (that could be either littl=
e or big endian) it must not force little endian.

Peter


> FWIW, I have now built a big-endian musl C library and a helloworld binar=
y,
> which I linked with ld.lld and successfully tested using qemu-aarch64_be-
> static
>=20
>       Arnd
>=20
> > > I can send a patch to address the build error and mark big-endian as
> > > "depends on !LD_IS_LLD || COMPILE_TEST" to reflect that and help
> > > with randconfig testing.
> >
> > I have no strong opinion on handling this though.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/VI1PR08MB31986E54164FA3293AA737E1F8B49%40VI1PR08MB3198.eu=
rprd08.prod.outlook.com.
