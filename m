Return-Path: <clang-built-linux+bncBCZ3VI7JUMPBB57DUX7AKGQEOGK3AMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 978CF2CE279
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 00:17:12 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id w8sf4694450ybq.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 15:17:12 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607037431; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ab/Y+H1lDpsYZ/EvPelviNirTQjZuF6fapr/sPWuY7ELmvXHE+s3QZCzx9GS5G9fpt
         DeREXLLm+QUBk3MDawRXfei1MkyqtKKJcO/BqE7c05nrl3+twLoq97PEsUloD6PxeGXz
         7YEFoqhAv7Kd6hqj+tUxXYeZ+VvsV9dKJf8CA+M1jeHL6KWMsGSUfJYLOO5B4yuDGTSg
         g79VP4T0YypsOHbo9X+LR6jhLzwZXyVZMTRoXOB9FJsaQYNMbXBzjHMHwkePHJAzVNGu
         nBHtbJ1Mtyf6pj3juMRII8NM7vMEpwsIvfEujfksjoAEeEg0e8s46IPbgnGfjEhj1r61
         c1VA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=xj/7pLk4Nn5Nl6k9zN+zUH+DAe/wJEmHi6OrgeEIc4c=;
        b=Ca9WMmjsa6whqrmDrAzh2zmxhCLsNQobMpJOsh5DfeBZ3DKZ8rTvCaQlb23WiArAUU
         V7fFHL44KQwrML6z/hZOOM0+eMr3lcoKYb2QuIs09V4tq5n1ad7M7k9ynZta8Gg5X5Hb
         C31/tyhSAM1jz/1Tv9hR+wuC6N+1N9BxLtTtplMGgtaqZV6uPnoWy+4df0W8uWN0aJKU
         7TCGT9Urd3c/VexHDpoLFvU+z9yB5I6Mcd7SG5lJwJZ+bYhs2HTL+Dg0/dZXqcado0VC
         L+TPxyPReR2LGZkhFaIPm8gUIQEB6VcorRaQljfOGAd0x0w7PFX75Mb0xyH95LDGD1zI
         b6aA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b="AUPLKY/0";
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of vadimp@nvidia.com designates 216.228.121.65 as permitted sender) smtp.mailfrom=vadimp@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xj/7pLk4Nn5Nl6k9zN+zUH+DAe/wJEmHi6OrgeEIc4c=;
        b=nh85huAE5P0bz4CZ4axqeDrumiG7qT96qzh1sDVI28RIVgkEvhb6Cz1DhuVkhRtanW
         rIqv22o03lJOhPv6VPECfN0WGwbDUC+/keFEQgMDmF/ahWFmQXjoo95E6QFPL7cHATjN
         WoQkj/MZxgPQrEyx2RVO8e0oYttJbtl+v6yKiW3Ahi4Peqvw30wLw4qm6OPRHwrUI9IS
         LlmHkuA51SAga63eOlvJBA5dSymGZVUlJf01p451Re/VnpeM66DwoCbMap8Szb8ZNDXJ
         ntOecYTX3V+I+w+MXcDwMMzPzycqTYOAyCBljtRXOvRl9mtIf2j2Tmu91/tm37cJUPQQ
         oGdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xj/7pLk4Nn5Nl6k9zN+zUH+DAe/wJEmHi6OrgeEIc4c=;
        b=MXgIwAL6JENCt0LtcKmYQix1AZqnHmoD4sqM1Py4bOjdP+tqo7JGk0Y+qWNIQrBnc+
         ZcpMI3g6+qMmkXatw79fy5oMhbS7KJq7DLnxSdp6pa1NbVqyfkzlz8pmnFgvSmPholwW
         RRVnzjj3dw0HeybFMH+vMVVTs6TkA7KrrxdNEKvssBlnPRs68l5LMJ8j6lMujVtVo9DR
         //GxRzUei46tR4UIrBTDdlb+ktNT39KsT/2TKoHO1nrlutJYYKLFqmuyw2vm3Ts7Cj3g
         OkqsFYlL3BRoY52P3ztOJ/qzXLYUOjaGrcoXyPpSzxSDuiOxcdGt6HBx+5k1ao5atukU
         QTwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KpKtACYfqrBAhJwXv/ozArylBUQL3+uwfo9ct4E4rD2zeBmJ/
	1n9VaPoJn0SWLvHvYZR4ltw=
X-Google-Smtp-Source: ABdhPJzPf8MBue9aXyhMKdMydtDzXuDrRG5T8oh34INaFcziUmwjvcYgcTZ2//i7e8ReJx1MzCrgdQ==
X-Received: by 2002:a25:6801:: with SMTP id d1mr2038370ybc.9.1607037431471;
        Thu, 03 Dec 2020 15:17:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6908:: with SMTP id e8ls3565208ybc.9.gmail; Thu, 03 Dec
 2020 15:17:11 -0800 (PST)
X-Received: by 2002:a25:680d:: with SMTP id d13mr2376096ybc.92.1607037431012;
        Thu, 03 Dec 2020 15:17:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607037431; cv=pass;
        d=google.com; s=arc-20160816;
        b=apM4tb9hbYfgzuRSODydmo4+xaXU4mOpDbZjUvqb8ehGx6VfwQxhQ9Ad3SPf6JboXN
         tUAFOBlugKZiwn7pxNaHmDeL7DGs7S5SwuDg+TSzxNfbToTqKI8JtnHPAAoCr2JDJBIT
         qyCZPFrYmWmsIQhC/D29nFLxw/NI7NzHQWtlea2h0C3qsl3UU8qr8aHS8ttqhB0h8y7Q
         F5lWIpJXFjqHGmGX81N+fA7YqoA1rmFqLWFopg6lDI9j4T7wsvb62UPXryJaTWKwTy9u
         fu1PutG4uwE1Ym42I8Ya+fLkvQxHhQ/6Wj1QaCvXhvQ0W5K7OV1B8Cm2or4IiaKHznXB
         NibA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:mime-version:content-transfer-encoding
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from;
        bh=ZW9yuT+Q1cdqUVx35EXXs3sUuVIi2ZR7RcGAZCuDT5E=;
        b=A2dnj2VAFzT1KZniXthOBArwXFm6EA3RMcw+YGQ0yf/C4BLSpODDXu93bABGFXLyyc
         qlv+IaQz5qiKHWxcFv952zWvlStostDYoFQFXkYRoDOWmCHk4+KJe1f+JGkOJMyerNvj
         8mdxwHWlfJy5yXwCDi8Y6lUqaCxKDgCmLCGQtAwk9L/QuKNer/0GyaluEHNlfST1gXYh
         7DgF7y0mTiej3D5L3OOyB12Y5Y+9qeDH3kR/wMFwhRdBTlYcegLeYDM4NdcCPC7TQt/Y
         ZGQswszdH0gaLshIkVb/xAfe9N2Ns0ERYZWbULdsze3PGyQztMFHfOThX3vHMYraY7k+
         frNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b="AUPLKY/0";
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of vadimp@nvidia.com designates 216.228.121.65 as permitted sender) smtp.mailfrom=vadimp@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqnvemgate26.nvidia.com (hqnvemgate26.nvidia.com. [216.228.121.65])
        by gmr-mx.google.com with ESMTPS id y4si82167ybr.2.2020.12.03.15.17.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 15:17:11 -0800 (PST)
Received-SPF: pass (google.com: domain of vadimp@nvidia.com designates 216.228.121.65 as permitted sender) client-ip=216.228.121.65;
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate26.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
	id <B5fc971f60000>; Thu, 03 Dec 2020 15:17:10 -0800
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 3 Dec
 2020 23:17:08 +0000
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.54) by
 HQMAIL107.nvidia.com (172.20.187.13) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Thu, 3 Dec 2020 23:17:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ik6KdDn8YW9/0OlJXSB7hN8GKN4w60exY8OCT1Z5u5g5+UNwBnRNQIYOdoFhAF1fm0pOUXt/zIxeTFP8isqhEs6a406GVWbxP+GELHz3AGc5K3r61aqV6Q2+PrDz5ppV0TQa4dfSo5X5cYGxe7Y5kw7Ub4G1OUbqQNSjIBmF8/et6ldkm5vpxWYl3EyKbzS+83Cd0DTf71pCuKvwDf/XuuTiBux9bOFie+tvD1RACdGSXwp844e7VZLkk16NdJTy/3s7lp6e0JzBdKanoNjuFK4nyGQVhyYPOKhpAfdXnfaBRa+qmVqYrP1B0PY76tAB+bfD+KPhAH+bVfB0IY/ceQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZW9yuT+Q1cdqUVx35EXXs3sUuVIi2ZR7RcGAZCuDT5E=;
 b=Rj5A9AH5fiMXuC75olyx2kxoLyho8y9FmlrnHxrPEnpZo/7+XVoOr0EnctDYlclQ5HjTdp/eJJKnNA0fgJTBOxvAlJVQE3RuPzapetydAu1p7Xpc3ofkT+rj7CSYd150H7qbAnwxVYeazId8MAE9zxXfMo6nSD8BgTR3ozJid5/VRBzfpieF6z4LVRdYmXIkS0xdO2NRCHZ2jJa/wjRe6XEknV2ekh0bsdrjDeBNgqoyvlMkNgeghMWI2HD3nQfH+1ZoLK+SqHMj4yrNHZZh5t6SB25qaXs4zsS9fLLQ82HYhlzgiVaMOET0lPpORwG4ZQsrgmH42Yu9U07A0hFZEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DM6PR12MB3898.namprd12.prod.outlook.com (2603:10b6:5:1c6::18)
 by DM6PR12MB2666.namprd12.prod.outlook.com (2603:10b6:5:4d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.31; Thu, 3 Dec
 2020 23:17:07 +0000
Received: from DM6PR12MB3898.namprd12.prod.outlook.com
 ([fe80::80c1:3479:15b6:a7a2]) by DM6PR12MB3898.namprd12.prod.outlook.com
 ([fe80::80c1:3479:15b6:a7a2%6]) with mapi id 15.20.3611.031; Thu, 3 Dec 2020
 23:17:07 +0000
From: Vadim Pasternak <vadimp@nvidia.com>
To: Arnd Bergmann <arnd@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
	"Mark Gross" <mgross@linux.intel.com>, Nathan Chancellor
	<natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>
CC: Arnd Bergmann <arnd@arndb.de>, Andy Shevchenko
	<andriy.shevchenko@linux.intel.com>, Michael Shych <michaelsh@mellanox.com>,
	"platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] platform/x86: mlx-platform: remove an unused variable
Thread-Topic: [PATCH] platform/x86: mlx-platform: remove an unused variable
Thread-Index: AQHWycQJ+tzIskPouEih6zwvYYhQc6nmAPMg
Date: Thu, 3 Dec 2020 23:17:07 +0000
Message-ID: <DM6PR12MB38987FFE8C575364D7FE3AF0AFF20@DM6PR12MB3898.namprd12.prod.outlook.com>
References: <20201203223105.1195709-1-arnd@kernel.org>
In-Reply-To: <20201203223105.1195709-1-arnd@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [46.117.169.59]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f4dcc74f-6565-4120-98a2-08d897e18da0
x-ms-traffictypediagnostic: DM6PR12MB2666:
x-microsoft-antispam-prvs: <DM6PR12MB266618A43FAF466677B79B0BAFF20@DM6PR12MB2666.namprd12.prod.outlook.com>
x-ms-exchange-transport-forked: True
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KbA3LK3LIUbGYG2xk7SlOy1Gb7UvI1dkGCFe1hR1wanWwMSp2wHs/eP7nPVbFtBV4UU1sRWqnXv4/4uDOu+h0FhqxTWroAwV+0YMF4/3Ve7Ww5tXh4tz/jSto7KwdAL0/ESE/JmoOmAnO46C6SgZdyCsxi8rVLu/Xt20bVmSAza61n9meJIfFp3TJf872J/DUuC4V4Ta7kz+uGO0/l1tbTpiAdv0DXZiBjgvQtVXPIG6eJRKett4cH9RlVp3jVT8yafec+k0G6AOPX571N7ggru42IepL8HodS+Zxhc708w/Myw7FlM46O61excPaWr9Ib2qPmAr3u4DJtJ8avzjQg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB3898.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(39860400002)(396003)(376002)(136003)(366004)(186003)(9686003)(5660300002)(55016002)(4326008)(52536014)(7416002)(76116006)(86362001)(110136005)(66446008)(66476007)(66556008)(64756008)(66946007)(316002)(8676002)(33656002)(8936002)(2906002)(54906003)(7696005)(71200400001)(6506007)(53546011)(26005)(83380400001)(478600001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?M2VOTzY90QlrVl+q80+nd9rosmB2fgyjCLMSR6jpn42GtP8zmRo2RsOrTdhw?=
 =?us-ascii?Q?Gkzo3d1OyIiuwSd7GbCFvtfCs+1NqsLiOj/YUFXOMuvkonahqas2aiutyiej?=
 =?us-ascii?Q?0LBjXY90/eJabuoppPJWUgaSRcdyl1ujvzdWs5HRNoieCPvBj+Ozw34+aQx2?=
 =?us-ascii?Q?lB6rZ0FIg/ZsXTVjw4UktGTv9yy/UWB612ktX8o97FQeFe2DSbwbSbKlFV0L?=
 =?us-ascii?Q?2MLSeuNnlSsmddF4BQE6akoMeTJ1vW5EPMgwiY4EjARuAVDs1K8xl2lp0Gd3?=
 =?us-ascii?Q?cppzKbwX355lCC86frgH4it9QwuuMHrCGWUNo+KRZ6q804NfbfZo7KiWgCDN?=
 =?us-ascii?Q?SdPiQKLKVuB+P5IDu39l/ehCyON30EXgZ4RuLbLsBybvtsO2lUf20NJ3l6gY?=
 =?us-ascii?Q?e/2s8zbFoQ+VJ7L6Bkd7LPBEUnSYhcCKbMgeLaHbQTBapI5Aj4zYkoqNCfMa?=
 =?us-ascii?Q?qNMvYi9UqdaPTHpxZZHT6xlUGbXIHZXflrr5gX6Iy49OAGIIuD+K8UPPxLW6?=
 =?us-ascii?Q?kv7ltcDvHqiH2K364EgwwpNXithQ4NuqFTyTxxPXTTP4RRoccjsRVOdgdrlA?=
 =?us-ascii?Q?WvvgjNWWYHxV+ZvUAtm5r0LlgerDSMFvlTz3OIMJ9ngqgHWjoPL8HMk/QuYU?=
 =?us-ascii?Q?VCQQENg0PVz+f3KSpUaH3G5sATceyeI1nDoai6zhK21JU0tZOLr04BlDRWqr?=
 =?us-ascii?Q?Zk2aF0vB3y9VvLauZ9MBNYfAyrN7hcJae8DRiziGL8okguRZX9G0OanSrUIr?=
 =?us-ascii?Q?5kmlxFgLjCqmv5eEMJhBpgY1k4D5mLxSRL+HZWSuxjdCOE/p4qdGRiAui/72?=
 =?us-ascii?Q?jw+1gB9Acf2Hsz8pf6ifyJCwELyHpSF89IJzw00xbPDeSKLe5ByRgeqnGcC8?=
 =?us-ascii?Q?/IrYgblVc+HbNU4uatWJ0Xp8jCU9JRdIxRPt2wAxF6xlg8qBoDZ8FrUfalme?=
 =?us-ascii?Q?fyl1NGaWuNyeEWixQRqPJZMUC10N0RGAtiWzB8HDWkM=3D?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB3898.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4dcc74f-6565-4120-98a2-08d897e18da0
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2020 23:17:07.1443
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kEwdWZKXCAaVJ0dWSdO25mqM3w1JbfTYJ4TMB79HuwFA2J740N5yGtDcFysl5J68BpVmv2jlvoYIW5ogba7YEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB2666
X-OriginatorOrg: Nvidia.com
X-Original-Sender: vadimp@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b="AUPLKY/0";       arc=pass (i=1
 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of
 vadimp@nvidia.com designates 216.228.121.65 as permitted sender)
 smtp.mailfrom=vadimp@nvidia.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
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
> Sent: Friday, December 04, 2020 12:31 AM
> To: Vadim Pasternak <vadimp@nvidia.com>; Hans de Goede
> <hdegoede@redhat.com>; Mark Gross <mgross@linux.intel.com>; Nathan
> Chancellor <natechancellor@gmail.com>; Nick Desaulniers
> <ndesaulniers@google.com>
> Cc: Arnd Bergmann <arnd@arndb.de>; Andy Shevchenko
> <andriy.shevchenko@linux.intel.com>; Michael Shych
> <michaelsh@mellanox.com>; platform-driver-x86@vger.kernel.org; linux-
> kernel@vger.kernel.org; clang-built-linux@googlegroups.com
> Subject: [PATCH] platform/x86: mlx-platform: remove an unused variable
> 
> From: Arnd Bergmann <arnd@arndb.de>

Acked-by: Vadim Pasternak <vadimp@nvidia.com>

> 
> The only reference to the mlxplat_mlxcpld_psu[] array got removed, so there is
> now a warning from clang:
> 
> drivers/platform/x86/mlx-platform.c:322:30: error: variable
> 'mlxplat_mlxcpld_psu' is not needed and will not be emitted [-Werror,-
> Wunneeded-internal-declaration]
> static struct i2c_board_info mlxplat_mlxcpld_psu[] = {
> 
> Remove the array as well and adapt the ARRAY_SIZE() call accordingly.
> 
> Fixes: 912b341585e3 ("platform/x86: mlx-platform: Remove PSU EEPROM from
> MSN274x platform configuration")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/platform/x86/mlx-platform.c | 13 ++-----------
>  1 file changed, 2 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/platform/x86/mlx-platform.c b/drivers/platform/x86/mlx-
> platform.c
> index 598f44558764..6a634b72bfc2 100644
> --- a/drivers/platform/x86/mlx-platform.c
> +++ b/drivers/platform/x86/mlx-platform.c
> @@ -319,15 +319,6 @@ static struct i2c_mux_reg_platform_data
> mlxplat_extended_mux_data[] = {  };
> 
>  /* Platform hotplug devices */
> -static struct i2c_board_info mlxplat_mlxcpld_psu[] = {
> -	{
> -		I2C_BOARD_INFO("24c02", 0x51),
> -	},
> -	{
> -		I2C_BOARD_INFO("24c02", 0x50),
> -	},
> -};
> -
>  static struct i2c_board_info mlxplat_mlxcpld_pwr[] = {
>  	{
>  		I2C_BOARD_INFO("dps460", 0x59),
> @@ -456,7 +447,7 @@ static struct mlxreg_core_item
> mlxplat_mlxcpld_default_items[] = {
>  		.aggr_mask = MLXPLAT_CPLD_AGGR_PSU_MASK_DEF,
>  		.reg = MLXPLAT_CPLD_LPC_REG_PSU_OFFSET,
>  		.mask = MLXPLAT_CPLD_PSU_MASK,
> -		.count = ARRAY_SIZE(mlxplat_mlxcpld_psu),
> +		.count =
> ARRAY_SIZE(mlxplat_mlxcpld_default_psu_items_data),
>  		.inversed = 1,
>  		.health = false,
>  	},
> @@ -495,7 +486,7 @@ static struct mlxreg_core_item
> mlxplat_mlxcpld_comex_items[] = {
>  		.aggr_mask = MLXPLAT_CPLD_AGGR_MASK_CARRIER,
>  		.reg = MLXPLAT_CPLD_LPC_REG_PSU_OFFSET,
>  		.mask = MLXPLAT_CPLD_PSU_MASK,
> -		.count = ARRAY_SIZE(mlxplat_mlxcpld_psu),
> +		.count =
> ARRAY_SIZE(mlxplat_mlxcpld_default_psu_items_data),
>  		.inversed = 1,
>  		.health = false,
>  	},
> --
> 2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/DM6PR12MB38987FFE8C575364D7FE3AF0AFF20%40DM6PR12MB3898.namprd12.prod.outlook.com.
