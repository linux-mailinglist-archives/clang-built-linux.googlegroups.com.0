Return-Path: <clang-built-linux+bncBAABBKMV4KCAMGQE723B6FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC603779B9
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 03:21:45 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id s7-20020adfc5470000b0290106eef17cbdsf6744468wrf.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 09 May 2021 18:21:45 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1620609705; cv=pass;
        d=google.com; s=arc-20160816;
        b=ozGVCUJBKW7NcEBKokyz642NVoNw7wFXf5giC4WMB35OIa0iwyCV+XsbAAyq8T2D2T
         0MfsbTb+2JCPnxqwLiGs4c3a2Ls4EKbj0TvmlwrAeNlszVeok0guDRcifMu0uwzNW/O1
         Blh5SMzBFr4qNRSyHF2eDtftVpP8EybkoLyaB9VFIfBPFpJX+euAnCjoZ0CETXVW5oiC
         hq3/CrGEqlZO9ywrZuqEpRrwzbgwUpnHH0p/xug78MTiaHAwM0Ll4BMsopBqX8PR4n/I
         XJkS21r+uYi3WwFBIaobYTHPGdZ/XdT6TaevCp/kiIR7JYLwk/l6Cu2zlQFu4bdghvZt
         cQLA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :in-reply-to:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=qgevpSJ92LBNMCrYPsD9DQ9BzNxmyRUDwOqhyBswUgU=;
        b=vSberA2CA9mN/OUqiV0nP7+cPFp3v2eJ+P0CuWmewFK7Kdk6o/6nyXQDlOI9LfcPFj
         cO6wcgEL1nzCs7GJeY5cMTKVQZOlKdKKJECX9xm7/0VpWMY2yfssCGKuz7sqeBbSiJjz
         xHYqlva0UqSOTb01ebslRzHnmJ4OOhhQRJjGqwFE7tsroX8SoUg9c3GS+p9uo5jZO3nn
         Cx5lJgvCyYMgd/vJcLRtq/+1rrjEzgRTuqwRqnRAoSAfLDSwQiqiC3dTZhW9djwiNwAs
         ErdX+9t2R23tNuEJzCxO3lxu2Ao9W1W0IK+O6ViuWUKmLlnKL9oCkNlGXntcxlGSU/kN
         ZKOA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@NXP1.onmicrosoft.com header.s=selector2-NXP1-onmicrosoft-com header.b=JxnlB+nw;
       arc=pass (i=1 spf=pass spfdomain=oss.nxp.com dkim=pass dkdomain=oss.nxp.com dmarc=pass fromdomain=oss.nxp.com);
       spf=pass (google.com: domain of peng.fan@oss.nxp.com designates 40.107.20.50 as permitted sender) smtp.mailfrom=peng.fan@oss.nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qgevpSJ92LBNMCrYPsD9DQ9BzNxmyRUDwOqhyBswUgU=;
        b=k09fE2X4nEoPBod8d13JAdcdMFiyVGjReMOI2JwpeteDWT4FHLCAGghniSjN0y14Q1
         SHIdFDMXfl5D5TRVrRwN6Qec3Yq9aXw64pVBfkTyLPpDagSFyT/4I3TYUu6yVGQoOBaf
         Jmbn9hoQE4YReByfWKqVJuAof3/m370jaLv5VWgmLIEmremKUHq7AZcjrqDhfchN3cbF
         2RkwNcbHU2ipoVFMQM2eMGDaCuHl6977jFXxtzYKSVp6EKQVvDuzpz8PCn0ebivGely4
         HCPaDwRA8+AS1SQ07nOCyvwwVJCRH/XfiDx6GDdpS2zgHBvlKlm3hswEi9+x7P/O2bXW
         8FPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qgevpSJ92LBNMCrYPsD9DQ9BzNxmyRUDwOqhyBswUgU=;
        b=m+BhI6mVq0ZfXezsrc+25/jo8r1nz6ZBkXeG0KrVWmT0spzY7nxqWC5DRNlE0GK99u
         +XbuzBVzMmhLC856Eo82HmTND234g3bVwxmIuV17V7h4opbD+f00QlKGH3EcK3oioWUX
         UNqBdRCIMYBKcRJOJaN+TwjOfTqAQbjmdEUFAawqhzmFNYDYVOX5szWDR3gDEnPXO6py
         CFgepbiJZb2tvy2DGr5nv1GO6Ap4WM9p9/5qs+StjT0UY86H9fAHRerk/OBVkrS9DzPj
         zxcBPPI0X8QcMHfNTReBa0Zcgo0UVfHMyNzBlgCD+o+a7K9KAyQwn0aCUidKlJil772v
         COpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HS2SDQC4ke+VRd8I1054tdh1mpnMzWrLhDqG4yisAMQr4wJXx
	iQEIBDgtBkxRt5ccJxjhc20=
X-Google-Smtp-Source: ABdhPJw/qRTSY2fu2/0qTvpZ8AJ8VXwrMyoWpY0DbvCFYTfet2OlCDeAlFdzyLmkfNpclbqkrP3R7w==
X-Received: by 2002:a5d:6085:: with SMTP id w5mr28310903wrt.14.1620609705468;
        Sun, 09 May 2021 18:21:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fb47:: with SMTP id c7ls7281571wrs.0.gmail; Sun, 09 May
 2021 18:21:44 -0700 (PDT)
X-Received: by 2002:a5d:64c1:: with SMTP id f1mr28446927wri.146.1620609704785;
        Sun, 09 May 2021 18:21:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620609704; cv=pass;
        d=google.com; s=arc-20160816;
        b=mjfACtGQ05xxvN7ar8ItmbGr0ssDqYtBSdtmcleSCulf6EoA8ngRLBSeT9V5R9bJRR
         YdL5HmO3pe/n7ON/syfnDs7ftpJfuqIS/cy/y7R88OavCY+t45LbknCj+YRoz93jNC7d
         6ShAtoGnCxPGp5Yd/1Ljn+ybQ6X+CUOQOW5AaE7cA2cRg9skkBVUHSEv2EZrcEXAQBp6
         4AISQM/jKS1E+OWFV0bIk8O+U/ZyEpkHyiVXXaVumApKN8aGEwxFXAr4fq5wRTw8UhDi
         xFl7gSlTknQD/BQJ67ArZ06linaj4Cznj/bM7x9mAJkNZyuPM4jFCtNugoLVZqjDtDYe
         CKlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=+JwGZjhoyLxUkGZ5W8SlioCzl8bVqsyn7MJmqtd2Lrs=;
        b=Okq7lwhPxY5UN6srkSexV0glASt1+TZyvmQ1IHPkVV4A2jJJte9U2439V15YzS7G90
         N/hFALkUA/GMCBlUOYHfQBHHZr1aStnWoAKaJRN7HrB7oQvgrcTfXChvJ71VlF0+VEGM
         2X5nmhqLuxKavMjk/rIbWHrUOOUFvH/M4KP15O7TZhYOXrQu6gpeoDFHzy3Hmn+KgvZA
         yVBy09qzw3P1oeDJZidoIcEFdyQqXKslTlU/RGbHNkYelIGrtuyJrR1vWgP32zYzK8py
         VcPZBFZ0KjHv/y/weDQZXo7YZT5t6GVwIXt0UzuzwLQTbDNXN0GYXYFsnv594maHm95V
         Mk4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@NXP1.onmicrosoft.com header.s=selector2-NXP1-onmicrosoft-com header.b=JxnlB+nw;
       arc=pass (i=1 spf=pass spfdomain=oss.nxp.com dkim=pass dkdomain=oss.nxp.com dmarc=pass fromdomain=oss.nxp.com);
       spf=pass (google.com: domain of peng.fan@oss.nxp.com designates 40.107.20.50 as permitted sender) smtp.mailfrom=peng.fan@oss.nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2050.outbound.protection.outlook.com. [40.107.20.50])
        by gmr-mx.google.com with ESMTPS id d11si461673wmb.0.2021.05.09.18.21.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 May 2021 18:21:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of peng.fan@oss.nxp.com designates 40.107.20.50 as permitted sender) client-ip=40.107.20.50;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lwhTuI0k7BqTpDu3RGuGp5EIp8ZYjlIhl7PigqG8BN/jXU2X1oriFKbSWZNE0G8ikU/i+HytqfAJwxwGkJeA1TjJdhH0KmlbBPUxihjhbCqfdUzhCBvbXLYCWmO1Ool/3A7YzFvDgTXrUIGBDF07fY2XjjstONayWpqXxL/avTmZyCMg0Vm8pLAsYJcVKEaWLdDThsHDCg+yVP+h6SOXOOlXm2Zt+nH8dJAbJcu1gb2J+7NxlkFcS6TC5XhQHtCSxr8Fqw3OVWuLFgCYWEw3bE/CtIuYcfmIRrjZYYrZ4PosyViAdlyC6P0RRYjmR2b8oruYrHCt9jqJ/6ssHPqMKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+JwGZjhoyLxUkGZ5W8SlioCzl8bVqsyn7MJmqtd2Lrs=;
 b=Y46KMiwMEsf0t0HMOj4oh7gFIitB6dizJ731wOA2+bFPk65OyN0tKzZ4gp1H4TShjXv64cMZGtIES+kfO0rUnwoZ+FSsOixrZTwkiAdrVNf+93BTvsiCOtkJB4iWhC2KgowEZezvO5IHZHdoVDeXzJPQGE2GURXY5gm9HrLJvULk7cD6Pml1TFIYoZ3z9RjivGBEJRWX4J05JU4ATpFCbVTf+Qvhv14Zl+edgRSlcXygvCM3o5zwLjzeemHXZhAHHRowMU5l14dBIgYLxkNp9+7rzQJbKc4ftxH+e3BWk5HtYedasWw94BU01KtRgqyH/xypc3WxBjPRDZidldFSLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DBBPR04MB7593.eurprd04.prod.outlook.com (2603:10a6:10:20c::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25; Mon, 10 May
 2021 01:21:41 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::45b9:c993:87ec:9a64]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::45b9:c993:87ec:9a64%8]) with mapi id 15.20.4108.031; Mon, 10 May 2021
 01:21:41 +0000
Subject: Re: [PATCH 3/4] mailbox: imx: add xSR/xCR register array
To: kernel test robot <lkp@intel.com>, jassisinghbrar@gmail.com,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 o.rempel@pengutronix.de
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 kernel@pengutronix.de, festevam@gmail.com, aisheng.dong@nxp.com,
 linux-imx@nxp.com, devicetree@vger.kernel.org
References: <20210507101926.25631-4-peng.fan@oss.nxp.com>
 <202105080008.OslMjdrl-lkp@intel.com>
From: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Message-ID: <a56ec818-9352-b88f-0fd4-756bb46b642b@oss.nxp.com>
Date: Mon, 10 May 2021 09:21:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <202105080008.OslMjdrl-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR02CA0038.apcprd02.prod.outlook.com
 (2603:1096:3:18::26) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.193.102.190] (119.31.174.71) by SG2PR02CA0038.apcprd02.prod.outlook.com (2603:1096:3:18::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25 via Frontend Transport; Mon, 10 May 2021 01:21:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 86497b2b-dc8f-4d5d-3f1a-08d91351f6fe
X-MS-TrafficTypeDiagnostic: DBBPR04MB7593:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB759398EE7E33739404142771C9549@DBBPR04MB7593.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9cnU9OqKhI9HXZq6O2zhpTLb7WjnZeHVz1YcMnpqYf5sRTuYR5w8kPayPv6c77JGnFchBzZhkP+hO5I7LNnw4YX54/fSybzLvKK6GMh0ABqAZa3o/u/HQCfu0oVNq/EGCGjHe6jyPBgLDQAmNX8szprZXrHneZvD3gjtsCjDCZxSAnnTCb0ra9heH/Jk3blR6PqHdv8Q1DH6STIomaF4UqUq9Ku9HckVLvZmQ/EFblNmFItZfFPdRP+Wpx5NjEA5hDUP6tDdKxGgt0sf1hdCioz/gaQGXA7zdqtx6kcDeBqK/+B2UYpNSX1El3G067lYzpkthkGz4F5lCGPXNmdJ5pF2k3QSQ2u+RvP7IzGAeaToWrDj5QpkWAMsjzzcaAGm4xE5lAjeNEY116qb47kOWerY4meqsh8TCfHHg8KyVza8fcaRl3gIpduOF9Z/403RJ0U6dHtLzQ9UynUsTHfH+PhbTNAU6h6gh4Kc5Qs2NlV/C2FYt2ejhlD21D/Murr+e9LxGsnzZUwnF85uhNG/mox7DuL27CI9mmEQfPzf5HtPc7l4sGYMKmDoIO5GS4Y2m9Kl3fxoFKjmDfXtqkjiG6rJEwAyucGuAX74thVXm0WrVbS3QZeXDQSDhZWm9a1oNbm1UITMsYbytCUEHeM+0Le7Ewr3pjE3ykKrhTF98t9QOhCy2EFkFvMBIxvZbRwow3GLxqqLEkzjGpNZo7TiDYhRsccTfqb/DTfrohzSXqvgDm/BzGZzApb01KCfJ8s3Oned0qy10ajeC07C6uJOjBHh7313r1KWcojmbgw5FHQN+fVGG6oDODVnSElDjxFAZU/O3iaU0kB2VMURWgsJNA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB6PR0402MB2760.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(346002)(396003)(376002)(136003)(86362001)(52116002)(53546011)(31686004)(38350700002)(38100700002)(6666004)(966005)(8676002)(4326008)(6486002)(31696002)(26005)(8936002)(2906002)(7416002)(478600001)(30864003)(5660300002)(956004)(15650500001)(2616005)(66476007)(66946007)(66556008)(16576012)(186003)(16526019)(83380400001)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?Windows-1252?Q?i5OBVOl44X4xP0xAnC1T8lOqVnCcnc8GQOdAm/hPeu0451zVBHvh6NO8?=
 =?Windows-1252?Q?6z9XF2XopSreV3MPcdSuLB6WzTCy05bM33vFqbpQtoh2eYF3mq2+QGIh?=
 =?Windows-1252?Q?LLuB3pjuxo5rE5cO09uD+nnCxrYvMnLjAt9iXezKk7V7po31P0tb7dnT?=
 =?Windows-1252?Q?RpE5qHGrYx1xA0AFsV3PeTNgw0hezi6Z0RDWgZURkMqXtqc5BXkizdmb?=
 =?Windows-1252?Q?GkJaDgRfWy4HHNxesDjVwpqMy4FKZZ4Bk9iGQLgSv9Egl4FCHoFdFi9r?=
 =?Windows-1252?Q?McwiM/Bvt2cbYWkAB3g8ca9ku8vgXOgvRMHoTPCfhVds8bdc6BIXBNJc?=
 =?Windows-1252?Q?nMjfgVD7e/7WW3IqgO08AGgxctcRSuc30wgmgwntvdm7U4EAPhoaLTLn?=
 =?Windows-1252?Q?jBr2djuh5aOCm4w2EGKcwOUfZeNuQpZ/QzkMBJK8rfrKHGQ35XeNpRBh?=
 =?Windows-1252?Q?beWaOJ/d1RmXNIHJASp6+8h/w32lmbD46L4ZCpgR8ZqWfEpN/KvG1dMh?=
 =?Windows-1252?Q?hPsYdiX6bLoHgCashdy71A75NBiKIwBTeRE6/iBM56B8T126RB4kjxH7?=
 =?Windows-1252?Q?u7NHUb1nlL99e92e2WLBfZCAOVrMUGw1UFpDvnzcaj87l7h/4abRnhMY?=
 =?Windows-1252?Q?6ITdfprCYBJqGj4ABxtQxsaa1zgDMP3NXROZ3BZjGlv2p95ttba5qJPQ?=
 =?Windows-1252?Q?Zc+xG+S1a9WB5G00Iz1WL81hXh54Sk7UqvWyhvdt91e3EPI60esvTzyD?=
 =?Windows-1252?Q?sRUeGGbyV4uQ/hKQGXpQG5yKo9yr+ao8m5XOSvkav6mQdIsayHjrFj9N?=
 =?Windows-1252?Q?23B6SOpoKt+DV1bKXpmyahx3ubri523qvUvQBH92LYPaIUNZFH5veHmy?=
 =?Windows-1252?Q?JN+yW6HareNmZHc6WGHzwcuHQUIe4Ay5LpblyFq96tOTqn7paEhFzEjI?=
 =?Windows-1252?Q?OAqWDx/SKOwom6xesLBbovzGg1nFyhrid8ZCTTftaqGwuEmeNmO4e6+V?=
 =?Windows-1252?Q?6gXT1ppGch3z+lGx4eAWnqt+9ITCWoLM3dyCA54FSkgNpzO989WP+uY9?=
 =?Windows-1252?Q?1gVi+yfrBve04oBumyk+GCD4aYyxJh6BUVNLLb1CYcLAozRCqAePBJPG?=
 =?Windows-1252?Q?r/jCd3LsyrMxUc1k9YkRNtT8H5OXgGiuCriP8kQa9pNKpDeYAWz8Sbx6?=
 =?Windows-1252?Q?NX26JPIIpMMpCs7Gf6XBXACTYffJFbcFAJNyXBs+UVeHsQI9nTbKfy2e?=
 =?Windows-1252?Q?A8ym56Y89tGfq3wEL1qvk0xxj3cQzqjC2Be2oIHxNiebETX6+/+ytnS1?=
 =?Windows-1252?Q?H8Qj6RByhW7t5Iage6+ci/xtRWFCMJVFxQiufag0pCVBtGiJKfMgSgfK?=
 =?Windows-1252?Q?Y6MqpDTR19giVML/yVCSnq8hg+LdW1naYqmdGxQFyhaLVhIb7pt0znLc?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86497b2b-dc8f-4d5d-3f1a-08d91351f6fe
X-MS-Exchange-CrossTenant-AuthSource: DB6PR0402MB2760.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2021 01:21:40.9490
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TsoSVmkytnYx0/EPoEGb8xC/yVyu3paxISxRkg1XIbEVTsM3tinkmcAUkLFUJpC/BwMysKUVbQPFViITLmqDvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7593
X-Original-Sender: peng.fan@oss.nxp.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@NXP1.onmicrosoft.com header.s=selector2-NXP1-onmicrosoft-com
 header.b=JxnlB+nw;       arc=pass (i=1 spf=pass spfdomain=oss.nxp.com
 dkim=pass dkdomain=oss.nxp.com dmarc=pass fromdomain=oss.nxp.com);
       spf=pass (google.com: domain of peng.fan@oss.nxp.com designates
 40.107.20.50 as permitted sender) smtp.mailfrom=peng.fan@oss.nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
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



On 2021/5/8 0:08, kernel test robot wrote:
> Hi "Peng,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on shawnguo/for-next]
> [also build test WARNING on robh/for-next v5.12 next-20210507]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Peng-Fan-OSS/mailbox-imx-add-i-MX8ULP-MU-support/20210507-174948
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git for-next
> config: powerpc-randconfig-r023-20210507 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a3a8a1a15b524d91b5308db68e9d293b34cd88dd)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install powerpc cross compiling tool for clang build
>          # apt-get install binutils-powerpc-linux-gnu
>          # https://github.com/0day-ci/linux/commit/356d43252930991aad1353a96361380a7f17f98c
>          git remote add linux-review https://github.com/0day-ci/linux
>          git fetch --no-tags linux-review Peng-Fan-OSS/mailbox-imx-add-i-MX8ULP-MU-support/20210507-174948
>          git checkout 356d43252930991aad1353a96361380a7f17f98c
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>     __do_insb
>     ^
>     arch/powerpc/include/asm/io.h:556:56: note: expanded from macro '__do_insb'
>     #define __do_insb(p, b, n)      readsb((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from drivers/mailbox/imx-mailbox.c:8:
>     In file included from include/linux/interrupt.h:11:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:45:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>     DEF_PCI_AC_NORET(insw, (unsigned long p, void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                     __do_##name al;

This should be common powerpc issue?

Regards,
Peng.

                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:186:1: note: expanded from here
>     __do_insw
>     ^
>     arch/powerpc/include/asm/io.h:557:56: note: expanded from macro '__do_insw'
>     #define __do_insw(p, b, n)      readsw((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from drivers/mailbox/imx-mailbox.c:8:
>     In file included from include/linux/interrupt.h:11:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:47:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>     DEF_PCI_AC_NORET(insl, (unsigned long p, void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:188:1: note: expanded from here
>     __do_insl
>     ^
>     arch/powerpc/include/asm/io.h:558:56: note: expanded from macro '__do_insl'
>     #define __do_insl(p, b, n)      readsl((PCI_IO_ADDR)_IO_BASE+(p), (b), (n))
>                                            ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from drivers/mailbox/imx-mailbox.c:8:
>     In file included from include/linux/interrupt.h:11:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:49:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>     DEF_PCI_AC_NORET(outsb, (unsigned long p, const void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:190:1: note: expanded from here
>     __do_outsb
>     ^
>     arch/powerpc/include/asm/io.h:559:58: note: expanded from macro '__do_outsb'
>     #define __do_outsb(p, b, n)     writesb((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                             ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from drivers/mailbox/imx-mailbox.c:8:
>     In file included from include/linux/interrupt.h:11:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:51:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>     DEF_PCI_AC_NORET(outsw, (unsigned long p, const void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:192:1: note: expanded from here
>     __do_outsw
>     ^
>     arch/powerpc/include/asm/io.h:560:58: note: expanded from macro '__do_outsw'
>     #define __do_outsw(p, b, n)     writesw((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                             ~~~~~~~~~~~~~~~~~~~~~^
>     In file included from drivers/mailbox/imx-mailbox.c:8:
>     In file included from include/linux/interrupt.h:11:
>     In file included from include/linux/hardirq.h:10:
>     In file included from arch/powerpc/include/asm/hardirq.h:6:
>     In file included from include/linux/irq.h:20:
>     In file included from include/linux/io.h:13:
>     In file included from arch/powerpc/include/asm/io.h:619:
>     arch/powerpc/include/asm/io-defs.h:53:1: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>     DEF_PCI_AC_NORET(outsl, (unsigned long p, const void *b, unsigned long c),
>     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/include/asm/io.h:616:3: note: expanded from macro 'DEF_PCI_AC_NORET'
>                     __do_##name al;                                 \
>                     ^~~~~~~~~~~~~~
>     <scratch space>:194:1: note: expanded from here
>     __do_outsl
>     ^
>     arch/powerpc/include/asm/io.h:561:58: note: expanded from macro '__do_outsl'
>     #define __do_outsl(p, b, n)     writesl((PCI_IO_ADDR)_IO_BASE+(p),(b),(n))
>                                             ~~~~~~~~~~~~~~~~~~~~~^
>>> drivers/mailbox/imx-mailbox.c:278:2: warning: variable 'val' is used uninitialized whenever switch default is taken [-Wsometimes-uninitialized]
>             default:
>             ^~~~~~~
>     drivers/mailbox/imx-mailbox.c:282:7: note: uninitialized use occurs here
>             if (!val)
>                  ^~~
>     drivers/mailbox/imx-mailbox.c:257:9: note: initialize the variable 'val' to silence this warning
>             u32 val, ctrl;
>                    ^
>                     = 0
>     drivers/mailbox/imx-mailbox.c:608:2: error: member reference base type 'int' is not a structure or union
>             .xRR    = 0x10
>             ^~~~
>     drivers/mailbox/imx-mailbox.c:609:2: error: member reference base type 'int' is not a structure or union
>             .xSR    = {0x20, 0x20, 0x20, 0x20},
>             ^~~~
>     drivers/mailbox/imx-mailbox.c:609:9: error: expected expression
>             .xSR    = {0x20, 0x20, 0x20, 0x20},
>                       ^
>     13 warnings and 3 errors generated.
> 
> 
> vim +/val +278 drivers/mailbox/imx-mailbox.c
> 
> 2bb7005696e224 Oleksij Rempel 2018-08-03  251
> 2bb7005696e224 Oleksij Rempel 2018-08-03  252  static irqreturn_t imx_mu_isr(int irq, void *p)
> 2bb7005696e224 Oleksij Rempel 2018-08-03  253  {
> 2bb7005696e224 Oleksij Rempel 2018-08-03  254  	struct mbox_chan *chan = p;
> 2bb7005696e224 Oleksij Rempel 2018-08-03  255  	struct imx_mu_priv *priv = to_imx_mu_priv(chan->mbox);
> 2bb7005696e224 Oleksij Rempel 2018-08-03  256  	struct imx_mu_con_priv *cp = chan->con_priv;
> 63b383575c388f Peng Fan       2020-03-19  257  	u32 val, ctrl;
> 2bb7005696e224 Oleksij Rempel 2018-08-03  258
> 2bb7005696e224 Oleksij Rempel 2018-08-03  259  	switch (cp->type) {
> 2bb7005696e224 Oleksij Rempel 2018-08-03  260  	case IMX_MU_TYPE_TX:
> 356d4325293099 Peng Fan       2021-05-07  261  		ctrl = imx_mu_read(priv, priv->dcfg->xCR[IMX_MU_TCR]);
> 356d4325293099 Peng Fan       2021-05-07  262  		val = imx_mu_read(priv, priv->dcfg->xSR[IMX_MU_TSR]);
> 2bb7005696e224 Oleksij Rempel 2018-08-03  263  		val &= IMX_MU_xSR_TEn(cp->idx) &
> 2bb7005696e224 Oleksij Rempel 2018-08-03  264  			(ctrl & IMX_MU_xCR_TIEn(cp->idx));
> 2bb7005696e224 Oleksij Rempel 2018-08-03  265  		break;
> 2bb7005696e224 Oleksij Rempel 2018-08-03  266  	case IMX_MU_TYPE_RX:
> 356d4325293099 Peng Fan       2021-05-07  267  		ctrl = imx_mu_read(priv, priv->dcfg->xCR[IMX_MU_RCR]);
> 356d4325293099 Peng Fan       2021-05-07  268  		val = imx_mu_read(priv, priv->dcfg->xSR[IMX_MU_RSR]);
> 2bb7005696e224 Oleksij Rempel 2018-08-03  269  		val &= IMX_MU_xSR_RFn(cp->idx) &
> 2bb7005696e224 Oleksij Rempel 2018-08-03  270  			(ctrl & IMX_MU_xCR_RIEn(cp->idx));
> 2bb7005696e224 Oleksij Rempel 2018-08-03  271  		break;
> 2bb7005696e224 Oleksij Rempel 2018-08-03  272  	case IMX_MU_TYPE_RXDB:
> 356d4325293099 Peng Fan       2021-05-07  273  		ctrl = imx_mu_read(priv, priv->dcfg->xCR[IMX_MU_GCR]);
> 356d4325293099 Peng Fan       2021-05-07  274  		val = imx_mu_read(priv, priv->dcfg->xSR[IMX_MU_GSR]);
> 2bb7005696e224 Oleksij Rempel 2018-08-03  275  		val &= IMX_MU_xSR_GIPn(cp->idx) &
> 2bb7005696e224 Oleksij Rempel 2018-08-03  276  			(ctrl & IMX_MU_xCR_GIEn(cp->idx));
> 2bb7005696e224 Oleksij Rempel 2018-08-03  277  		break;
> 2bb7005696e224 Oleksij Rempel 2018-08-03 @278  	default:
> 2bb7005696e224 Oleksij Rempel 2018-08-03  279  		break;
> 2bb7005696e224 Oleksij Rempel 2018-08-03  280  	}
> 2bb7005696e224 Oleksij Rempel 2018-08-03  281
> 2bb7005696e224 Oleksij Rempel 2018-08-03  282  	if (!val)
> 2bb7005696e224 Oleksij Rempel 2018-08-03  283  		return IRQ_NONE;
> 2bb7005696e224 Oleksij Rempel 2018-08-03  284
> 2bb7005696e224 Oleksij Rempel 2018-08-03  285  	if (val == IMX_MU_xSR_TEn(cp->idx)) {
> 356d4325293099 Peng Fan       2021-05-07  286  		imx_mu_xcr_rmw(priv, IMX_MU_TCR, 0, IMX_MU_xCR_TIEn(cp->idx));
> 2bb7005696e224 Oleksij Rempel 2018-08-03  287  		mbox_chan_txdone(chan, 0);
> 2bb7005696e224 Oleksij Rempel 2018-08-03  288  	} else if (val == IMX_MU_xSR_RFn(cp->idx)) {
> 63b383575c388f Peng Fan       2020-03-19  289  		priv->dcfg->rx(priv, cp);
> 2bb7005696e224 Oleksij Rempel 2018-08-03  290  	} else if (val == IMX_MU_xSR_GIPn(cp->idx)) {
> 356d4325293099 Peng Fan       2021-05-07  291  		imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx), priv->dcfg->xSR[IMX_MU_GSR]);
> 2bb7005696e224 Oleksij Rempel 2018-08-03  292  		mbox_chan_received_data(chan, NULL);
> 2bb7005696e224 Oleksij Rempel 2018-08-03  293  	} else {
> 2bb7005696e224 Oleksij Rempel 2018-08-03  294  		dev_warn_ratelimited(priv->dev, "Not handled interrupt\n");
> 2bb7005696e224 Oleksij Rempel 2018-08-03  295  		return IRQ_NONE;
> 2bb7005696e224 Oleksij Rempel 2018-08-03  296  	}
> 2bb7005696e224 Oleksij Rempel 2018-08-03  297
> 2bb7005696e224 Oleksij Rempel 2018-08-03  298  	return IRQ_HANDLED;
> 2bb7005696e224 Oleksij Rempel 2018-08-03  299  }
> 2bb7005696e224 Oleksij Rempel 2018-08-03  300
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a56ec818-9352-b88f-0fd4-756bb46b642b%40oss.nxp.com.
