Return-Path: <clang-built-linux+bncBD32FTH3UILRBW5WX7ZAKGQE2VGXWYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 359B5167E9F
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 14:30:04 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id s13sf1018903wru.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 05:30:04 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1582291804; cv=pass;
        d=google.com; s=arc-20160816;
        b=BAV58408WZR0K7OEzTmKVot82vOntCB53XGa/MMMwL7uYgV3wUbsE3wFnn9vuBz+Kf
         2XXm6ee4+EOTZ2kWnLQedJHVCyxydAYj65rQV3SrrODvY0eaVVObivqHps5woP1Hqg+h
         YzhfeE7eeszrIBN62DFUhRvoq9tNEXCOErUThj4Ox4rt+8WsvzQhakzKiA1UlVwbnx8Z
         UDeijRRgffKxDNSIkEZz+xCwleZ8CT6thg+I+8i2DSXEJtjeGAN7qUCT4fM7p3CyX5Ca
         vmKsQk6Rb0k4Ibgv3gAKOKQHBcXRMrYOPk7Zur9ngj+F655EsTRYAppU/9YT6cuiMsG9
         UdKg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=bCvSAvLFjGOM8vYQkB4lt6OBAVX83YbuAdvJ0R2YVpA=;
        b=uu0NLnT+8NIEEpmeLEGDIEEf8iZZCCqwdvsNcQMw3c2N7IR97EmG9KTSlcW2WtiEak
         nrc14JbigXGXI2t5V/RpvSz2VParL/c+aXoS9fvoUvLyTlLuaL37uSDnfw8uiBGwQnhO
         smw6+pLX80VbeLORe18MaHQIkcG1llanB3SqwvoKoGk0LjyDQla7jydg34lC3wRZ0P9x
         Tn1Zrj7SsXqwbvZJ6DG01ELuoTcqIhaYT8zHd9SEMgvPcE1LlSUuj7koeTt9476lGVAU
         8pjNa+XbmoCbJIQgi2RDyGRfpvc5cD1qm5S87zWQfzAZNUWGywA7BpdAFWX2k+kX4wM3
         UQMg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Mellanox.com header.s=selector1 header.b=jFP4gHow;
       arc=pass (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of jgg@mellanox.com designates 40.107.5.71 as permitted sender) smtp.mailfrom=jgg@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bCvSAvLFjGOM8vYQkB4lt6OBAVX83YbuAdvJ0R2YVpA=;
        b=P1W01QTko5QH/4FtG87kn2BL/Cv6srZKolTh7m6gt4z8RR04Xn77+iwHBa/99eJ9lE
         k+L9f9aoKbqws4DGw5Yj3dQR+voO/2e2SmFpK2iSr6Z242fWJkwBoWb+75O3mb/d0Na+
         GUc4PJTmWjhSqk77AzX3Yu89wKqZIzPtqW2OdEj2ceoHBOXKFlw3oYDAdyS1B4LbanrE
         J5OrHXQFGJFNRGRe0tELnjkD80PVWdWmK6g4kVJbL/JG/Jf6SVcsMX8mLVCfpBkTjD2b
         HbK+iwGOY7619yOnvPDZqiecqus6caNnn/qj5jofoF2WNS9FGmJJ3PerV5uorJ7o7Bza
         GDOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bCvSAvLFjGOM8vYQkB4lt6OBAVX83YbuAdvJ0R2YVpA=;
        b=XEEx1Opi7ypval+XkDiBqJjDyoFoQfPtDYKdau8DjXOtEk4Vmm91Ph4h84WqTkcWWF
         XOv2zVmBXNVj2YeYOQKvielAc5L7rBNZkS7X2o2Rb74gSRbz4AazEcKAOR+htxqyUoGD
         f5vYnDr/TaJPqz+DDmOj+osVr+nnmRt9qDTcTJfOuceULpARPo/A9V9IpPnEYv6G0yn+
         pqMrqv+2f1jqCVwA42BupfchSSlS0iII0ddXR6XllNmxROyW0lJ8EAbUqXYPy9qGrpiK
         CN+PGvomAsLJZgZOE/Ye5zKoYRVXG4lxBazMg+vV8r41NBloZLaMeKtuFkQStLpjmpaX
         NmNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVRhhprRUzewJ7cJ2yjfcCSkPgiUS6uZgRZfspXlxCbXcobJ5lw
	Sgwv35hIOYddAtfDEcW/az0=
X-Google-Smtp-Source: APXvYqzNhdWgRrFGr22eWp/8lwzY10eKUafxR5XHy5z12Ad0a0XojVorYzjZs1H4I52yApgo7QaGjA==
X-Received: by 2002:a1c:7c18:: with SMTP id x24mr4140927wmc.185.1582291803836;
        Fri, 21 Feb 2020 05:30:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c10e:: with SMTP id w14ls906179wmi.0.gmail; Fri, 21 Feb
 2020 05:30:02 -0800 (PST)
X-Received: by 2002:a05:600c:230d:: with SMTP id 13mr4087785wmo.13.1582291802933;
        Fri, 21 Feb 2020 05:30:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582291802; cv=pass;
        d=google.com; s=arc-20160816;
        b=mbUyLkGMfB9v5UGe8XYzLX4eQNXy/6z2PVQIcywx+njHNtiC1ExZ4xf+Px8HwsDhaO
         YJqbbJlSo9oysnyfMlR7pLHUW0XBnU9ZDiGsjlmTI6kxddnYvZAyzUOzxvdZaATJHON6
         XnEY2ZjZaLKMNJl5P1ZCJpx/HIK1NcrAMuC/WgH5FrKa9dz3AdskmT/djE0t0HvKsbgc
         wJ0JrZojX3kJTgicuC4nC1fW9p82VkNkJu720B4E5TB+DqsDWYURk2oTYb73znFpEBI4
         zQ3ZAAnRgpvLd1dKvqFLfT4XRasQ19lJcLiKyw8vmHXPFiKTNyWB14hQpVxmOzk/ogue
         xk+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=S2lG73Dfc9pfN5uo2c0xlXXVl4G5Z7jyD3WkW2m+CuA=;
        b=tltmVQ22laeLjN0Z/3zgBzwYqoG5Kj4vshGyyytDsT3FloRjssztUDBI8EQZuV1AvK
         sLtvSCclx+QOUPEAV9tBfLRYlkhX3YNhj3DUT6sRvM0eUXZ907vAldHMUK0cnrubsadV
         A+CnrVdyLUo9qix0VOee50O59Wr2TD6yyzW3fD64dsogk7ji1O9E2tBoHT/RUvWeXtKd
         JnPFOtK5MHbBpKOdwVbm9GEyNRVsh8aHPaI5gt2ubebW0q1+Mq/x0xVDGbGRlZC89YJI
         aOtZx9FnJ1Rf6vT7wAEzzK/ezy12bYkEI9O8VBtdMwop6RgeOl79fT6W/xtL+Uu1c9j5
         pw9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Mellanox.com header.s=selector1 header.b=jFP4gHow;
       arc=pass (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com dmarc=pass fromdomain=mellanox.com);
       spf=pass (google.com: domain of jgg@mellanox.com designates 40.107.5.71 as permitted sender) smtp.mailfrom=jgg@mellanox.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
Received: from EUR03-VE1-obe.outbound.protection.outlook.com (mail-eopbgr50071.outbound.protection.outlook.com. [40.107.5.71])
        by gmr-mx.google.com with ESMTPS id t131si71929wmb.1.2020.02.21.05.30.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Feb 2020 05:30:02 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@mellanox.com designates 40.107.5.71 as permitted sender) client-ip=40.107.5.71;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cGlu7G02+7eVdC+5vujdqfdxzLTPzu/f7zfVgoc9p5hxRA0a6zOwXweC1P8MiJZGrDEYN/AUw1Qj3qyDUMBhSVSD/0D+uORjDZVeGJ5wofSw8sRVCdXsq2/4Xsac83S7z+a/yLaS+htsn7cWaDmatSlGenlNMkPNg2zyIkpKZNLsvnwecY0AUQVbKMRK2gsxfl4YJFjKBB/HEBftUhZi7uEnbEVNNvO/zIw4+VJ7uwKSkNrPHn2dMFN6nktuKX3BO1yCgqXzapNfitq2/WO2LBpaiE/x9fqZN6sbVJ2O6ud1uEXICZ1A3p4BlbCwe+R9oED4L1VB+NSJ38SKZt5HDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S2lG73Dfc9pfN5uo2c0xlXXVl4G5Z7jyD3WkW2m+CuA=;
 b=OjcfPAFiEPJO9Waopdisj2CnwThsgIgIOX4QtaLJlnDOJKD2KYZTjWaoY3U3l2KZNLvLzdrHFLQ7RwacexlMMg1Bcyq95vYR757LNq9jc/yPsLvg29epSptPhpXJUQc3sziaEP+OuUI0eyyTKMqB9dJkh5QxKadlpWhqC5MgldzDpY7cNibgHKOF1+WvPnq+HycEGi0ntdT9e88c18+74iCC6i/47nIYGMhPC52ofAwmc+YInGdB7aGeZS2bH1sln9s1EbSyApwC/6g3J6GzRhDF0YEYx1WCpaBpWrlteaixkdJEz0yFnH4AXyoDkUR6CUo6G2yM5oIOMMZSQ02Exw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com (52.133.14.15) by
 VI1PR05MB5392.eurprd05.prod.outlook.com (20.177.201.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Fri, 21 Feb 2020 13:30:01 +0000
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::1c00:7925:d5c6:d60d]) by VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::1c00:7925:d5c6:d60d%7]) with mapi id 15.20.2729.033; Fri, 21 Feb 2020
 13:30:01 +0000
Received: from mlx.ziepe.ca (142.68.57.212) by BL0PR02CA0046.namprd02.prod.outlook.com (2603:10b6:207:3d::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.18 via Frontend Transport; Fri, 21 Feb 2020 13:30:00 +0000
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)	(envelope-from <jgg@mellanox.com>)	id 1j58NP-0008Cb-9D; Fri, 21 Feb 2020 09:29:55 -0400
From: Jason Gunthorpe <jgg@mellanox.com>
To: Nathan Chancellor <natechancellor@gmail.com>
CC: Saeed Mahameed <saeedm@mellanox.com>, Leon Romanovsky <leon@kernel.org>,
	Aya Levin <ayal@mellanox.com>, Moshe Shemesh <moshe@mellanox.com>, Jiri Pirko
	<jiri@mellanox.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH net-next] net/mlx5: Fix header guard in rsc_dump.h
Thread-Topic: [PATCH net-next] net/mlx5: Fix header guard in rsc_dump.h
Thread-Index: AQHV6LsE8xwjf/8iO0OS/aKAEPk75Q==
Date: Fri, 21 Feb 2020 13:30:00 +0000
Message-ID: <20200221132955.GG31668@ziepe.ca>
References: <20200221052437.2884-1-natechancellor@gmail.com>
In-Reply-To: <20200221052437.2884-1-natechancellor@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BL0PR02CA0046.namprd02.prod.outlook.com
 (2603:10b6:207:3d::23) To VI1PR05MB4141.eurprd05.prod.outlook.com
 (2603:10a6:803:44::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [142.68.57.212]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a54afecd-6743-4f9b-899c-08d7b6d226e1
x-ms-traffictypediagnostic: VI1PR05MB5392:|VI1PR05MB5392:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB5392E510BFA3FCAFA044A067CF120@VI1PR05MB5392.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:38;
x-forefront-prvs: 0320B28BE1
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(39850400004)(366004)(189003)(199004)(64756008)(4326008)(66556008)(66476007)(52116002)(5660300002)(66446008)(4744005)(26005)(186003)(6916009)(71200400001)(9686003)(6666004)(478600001)(66946007)(1076003)(8676002)(81156014)(8936002)(81166006)(33656002)(86362001)(9786002)(316002)(36756003)(54906003)(2906002)(9746002)(24400500001);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR05MB5392;H:VI1PR05MB4141.eurprd05.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1AGz9pcePRLGylvwO/satUiJ+bKfP5JBpECL7xVOTrMrSO4SXOIaMwTkoEGTR+PDQPm3ZL0ygQZ7S9eKw0kF5jikRhMWig+hKFWsOEM/rcu0muhrdKyDaLuZwYgPpsKAoPDF+S7GM/b7bB9ydgp071hnE+yQRrvv7ec0p4KcOp8n7MfMpQh1+CC4I2tXtwLLfJK7eHVT7PhX9RtpdMz4gQEchyuKUN7mDS4zvadwzKHyjlYYRbq0/W7RcsyJNQLtRupJMJa0nnbVZ7obVvhWdL0H7DSuOdBK2d9eyoCV0UGp+/Wg4T9hMwQDGQwSRHuQ9zNIiasj74wCw45qwcjVHsdjKQrwgBdD/Tv5vPz8PX1RSyeYAyJ9q1yI0wDb7bfyfGF6oGX7oQ+FdN0SpRiz4TTZoE8MpqsLq90Y+BR4xz0/Y8Yl88T7WCUIlZGJ+TakZ21o0lhgiZwWkSYzvLc3H1QF/e4GHoXyrUXLa/uGbq8nHMdX5yZwfyxGGtQILs9k
x-ms-exchange-antispam-messagedata: ivPDiEgcpKZJYKSOIwatorFmjCqfs9P21oVV2A+ei5D5qGOFUbFRUv0SGUwTS2cPEOiT/fl1Cbg7r9Y9eT6RuS8gGsP1gNgF7SWLI5KWf5YCJUbAtc76/Rj9+BK2dEJ2/JrrCccQYgYGDX9Hw1nQKw==
Content-Type: text/plain; charset="UTF-8"
Content-ID: <48F8E0500442464EACAB3B57E17FCEF9@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a54afecd-6743-4f9b-899c-08d7b6d226e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2020 13:30:01.0345
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: izA57u8IGLIut9rYxTsq7q4UxIUNwEAa0S1TAghrF2OCm+c4IZwSFCY/8u3NW/4uEAiIOd4sChBLEIhECoFJbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5392
X-Original-Sender: jgg@mellanox.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Mellanox.com header.s=selector1 header.b=jFP4gHow;       arc=pass
 (i=1 spf=pass spfdomain=mellanox.com dkim=pass dkdomain=mellanox.com
 dmarc=pass fromdomain=mellanox.com);       spf=pass (google.com: domain of
 jgg@mellanox.com designates 40.107.5.71 as permitted sender)
 smtp.mailfrom=jgg@mellanox.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mellanox.com
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

On Thu, Feb 20, 2020 at 10:24:37PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
>  In file included from
>  ../drivers/net/ethernet/mellanox/mlx5/core/main.c:73:
>  ../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:4:9: warning:
>  '__MLX5_RSC_DUMP_H' is used as a header guard here, followed by #define
>  of a different macro [-Wheader-guard]
>  #ifndef __MLX5_RSC_DUMP_H
>          ^~~~~~~~~~~~~~~~~
>  ../drivers/net/ethernet/mellanox/mlx5/core/diag/rsc_dump.h:5:9: note:
>  '__MLX5_RSC_DUMP__H' is defined here; did you mean '__MLX5_RSC_DUMP_H'?
>  #define __MLX5_RSC_DUMP__H
>          ^~~~~~~~~~~~~~~~~~
>          __MLX5_RSC_DUMP_H
>  1 warning generated.

Wow, that is a neat warning

Reviewed-by: Jason Gunthorpe <jgg@mellanox.com>

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200221132955.GG31668%40ziepe.ca.
