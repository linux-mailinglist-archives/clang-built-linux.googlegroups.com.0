Return-Path: <clang-built-linux+bncBAABBGER2T7QKGQEIIWN42I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1803A2EB701
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 01:47:21 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id c69sf723507vke.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 16:47:21 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1609894040; cv=pass;
        d=google.com; s=arc-20160816;
        b=vp0aX4pZIotSh6Ox4eKhga/7kaTk6eD4XCu/F5YLJgGIi2mHDJCWbSa8eh61n6mEMV
         gWFgSbi7f3AIKKQj4fRcK39dwCJcsRF3x2ZKuHnb1z1M+bRRWY8chfxkiAORDvLlD4xr
         3ufN2crt9Ie5kCpz0Dw3+C5K4+ZCQO7Wwk5TvDQ6/oB7EKFXHEAvRN+LlOFCDnn8x4xu
         UMHRGlxZo8fmS08bGD8l9JTkiPk+yr5aJCvig4Ee/mNg/Bcy+AxjaGwC+kXkQRwkOyWC
         Y90KxncweFU/9t8RiaFzVWzWd8dGiySl4j4NkdbLxArHgO5Soez7H5WKJTM+pACS6tsH
         Riyw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=7fC7aJwBFraW7kaKxxy/jBd1X6yFHnmS5fJk17CoPvc=;
        b=XceVVDVSlpAT+ehOsTmZicNEskzpoJErfdDiaN2/wt2JjAO2N9MHf+8e1u/wNUgNeS
         6F+VuamseBuk4LVOC/xi6imdUulfpaXq8/vmNtj6TvMi2fsX1ym8V2s/Con+/TJcxfG4
         G2ly0nSNkO4t8ypJrQhO3x09Ekd9UYSFw3PnJ+OIlNPRWwNHuH+8iLI1IkSKPKK66kBW
         5kEArSwvrMAqcUjTDVgSX3r0jkeQ/1octdSnyAX2T+ANTVPtDOfnWuAZtm/VezHCuvbz
         GuFslcOd8IeijdaygbtTS6qEZ3L6kH5O8FHNAp6gF9gohpwoIvc/JQXsuKWxmhB6Uhq8
         ypEg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@digi.com header.s=selector1 header.b=Ijy7ORJP;
       arc=pass (i=1 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass fromdomain=digi.com);
       spf=pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.220 as permitted sender) smtp.mailfrom=Pavana.Sharma@digi.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=digi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7fC7aJwBFraW7kaKxxy/jBd1X6yFHnmS5fJk17CoPvc=;
        b=f1lFlCDmqlhzg3FK0jdscGFyYWf9PL5jm0y23/+inf/gwwBN7W+RD+9szu9b225yvV
         NSdr+tjDSAfxWuH057WNFuuseap4YsprFwO5JXthLr6+9cfk0mdQgqiTETgGaon+YnGo
         2ZltQMYTxAZhyk8pcSU9DcZtl5Cq1XZyTHMkD7zE7wPMCsPHg+7Vm7s+jRGdweOztyuB
         DXYLUw3VToQLTWZFvJDw9Kk6FvfrP/EIA2K3USRgXV8yxeGgdlV/W1sojvtLxNAqELkE
         Jn2p2Sq2fnXnwTSmpnLlpRR4Z57d6g3V2tST92OOB4Q28DxAhEiF38Tp9uZiZRHCWlM0
         SZgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7fC7aJwBFraW7kaKxxy/jBd1X6yFHnmS5fJk17CoPvc=;
        b=o9ZnR3G+CikDLdWnHPd3pvb3wtiL2VObY3w9htQpkHxN6NtytFUv36LCJ2qmE6KsTv
         Jkvv+X9+Ccu05cFjl6D89gjdUN6sCQ4lYCbfqSZ5425fLx5ymK+Kke2iszrUHAsXfLuF
         brv3J30PjIGpmcCwBIx2FGhdSQR2a3TQsFjD4mugWuQvADodNWR4Vp4A+9fbiGOFC8TR
         yyBBSiTEv2dVPAJ+RbWDviQBsLZRvF44wTNBxLcCoVirN/5V5jlo48jP9FeTPInyESG2
         fsPypPw6+5jBZDnEUX/XBMBGErELZZT/L6kVvv0FaQhKdksul2I50EZ6LN3MYTOuYFv7
         BKtQ==
X-Gm-Message-State: AOAM5315aCpvTQKN27cTF+ecCBT0bvFfCYyodT0GlsG1VT+3+Ry8zI0R
	UqX+XVDkdjL4URhysD+3dwU=
X-Google-Smtp-Source: ABdhPJz0jb1jgXqj6QirCq2mo1mgEEdGXNgdYyfyXR8w5GNzFh0qKZxM8fSPgOgEBxgDA98MqZZF7w==
X-Received: by 2002:a05:6102:42:: with SMTP id k2mr1345490vsp.7.1609894040182;
        Tue, 05 Jan 2021 16:47:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:918f:: with SMTP id t137ls66781vkd.10.gmail; Tue, 05 Jan
 2021 16:47:19 -0800 (PST)
X-Received: by 2002:a1f:198f:: with SMTP id 137mr1891872vkz.2.1609894039851;
        Tue, 05 Jan 2021 16:47:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609894039; cv=pass;
        d=google.com; s=arc-20160816;
        b=CiKRCjg1yCipt3b0tKPP7RW+qaDvGiFk5io0DaYjzSW89VYJSUYbKToED07eYSbBWw
         F3W/4xteQrjVx1O9/exTCyoPHwQ5QwSjeMPuxSXpv2z5yp6x4HPS9vtuGyIEhc8D0/eF
         olnVmrVCQHoc9WShndHzWpH6tOo+Zy3CCgcMKOjwQZ4I3pFQ/lCWXySlZHAA3JGpRprA
         UlWtey6E2loPBFCAHTdZdAWyLcCinQmUZBcs/fe1bLjgrMdCsF6kvxfThgeDqfpko5ZE
         fxDjZjbux4hb6IcfdzYwGv6flPBC4xbPk/DwHNEcSGVMj5Y+kXRPxwGYqpjsTdh9VRAk
         1vDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=yqo1dE9QdBJUvSMtrejOQ0puwTtgybX0HX579OfuaMk=;
        b=nHpm6F3NHBth+sA7enYfVuJZ15JQs6FvteRRN+RHDZApA7cYeGHqvR2BZOU9ft7K42
         q1cnUwzdLGOxTkqe1p9f/8rFZr1sOdr4VkMTwvm5cLTg3S65IHS8QwMLjdR/Pen7luYd
         pjIoLat749zaVnaLtzqXtl5PGlbKDqz5hr/gYX4y3TlYHSAERM8wViQa65QMaOWVyjgs
         vLhUnqqGOQbNnpXOHUu6f4dvG7mflWkO9IMiMkTdmRHxanUuVowIK2aZCT/tp3XDg25Z
         W/Xa8LreyD+JgwQjQhCdiTnaJevqgPS//Y0FzfwhHy2aNj8L67nDOejKvL3vccUZqlW2
         akYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@digi.com header.s=selector1 header.b=Ijy7ORJP;
       arc=pass (i=1 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass fromdomain=digi.com);
       spf=pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.220 as permitted sender) smtp.mailfrom=Pavana.Sharma@digi.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=digi.com
Received: from outbound-ip23b.ess.barracuda.com (outbound-ip23b.ess.barracuda.com. [209.222.82.220])
        by gmr-mx.google.com with ESMTPS id r207si62381vkf.2.2021.01.05.16.47.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Jan 2021 16:47:19 -0800 (PST)
Received-SPF: pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.220 as permitted sender) client-ip=209.222.82.220;
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam08lp2046.outbound.protection.outlook.com [104.47.73.46]) by mx-outbound19-61.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Wed, 06 Jan 2021 00:46:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MinzF83sbA57sczMTp01HpXvhoQ0PYQqlS3AkM6UhWNmQeEKP9/OZWJ6gmUXeI2AWOUTT/T7x4Y0idhL82grlhW7fuId7jMghO+lm7RPslLOZE9vdFViE3P5/mTOgxAjUkpV5F+OQU0OVHh4XqnLasdoCXsxhRW+dyMK8dHzPo04buVCNtxj/GXqj66o0Gza57vBwIbK/Uu4prvJgdrX9eUY/fa2JND0Dl4981djMN5xiF0nDdOlc6aJWOTwWWupD48LZA7l2EsiKzA4YLyp5W2JQX0gDdp5kA1LiFSsFSTBdDRKIegcuazOrNvb1v3POTinQIolMy3KRbx9UJ7kaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yqo1dE9QdBJUvSMtrejOQ0puwTtgybX0HX579OfuaMk=;
 b=GRftUbbQivGE1JxTCUTgGfF1L94HgBDyWt14eNX4ZCQ0cnPsYCuSjblu0s8wRIivS9x5dpzTcrMqyaImtL5PNwQWIxVwPwP4m+1EGWBF5tfPAJbP8cMGDs+N4X5BwKs+XfS0Hal5axgt6VmFl5HvKqIGxJMEb3XmrAJ0ZyjMl5LmlPd3WBHwi1LH4kLdK4HaQQ4ZF9A6+McV3KQXS90VrrmB2BsLt4gArzaNbkwuI8/4u/11TPz2Otbl9WhaMvZ9SQN0MOhjxKhARVxi39VW3nOGc396vM5iq/5XLppUbLdKac6MaVZlLACm76sFTPQMUKjXb5QD+z6DaHJHnOn3HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=digi.com; dmarc=pass action=none header.from=digi.com;
 dkim=pass header.d=digi.com; arc=none
Received: from PH0PR10MB4693.namprd10.prod.outlook.com (2603:10b6:510:3c::12)
 by PH0PR10MB4711.namprd10.prod.outlook.com (2603:10b6:510:3c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Wed, 6 Jan
 2021 00:46:12 +0000
Received: from PH0PR10MB4693.namprd10.prod.outlook.com
 ([fe80::4060:f3f0:5449:c60e]) by PH0PR10MB4693.namprd10.prod.outlook.com
 ([fe80::4060:f3f0:5449:c60e%7]) with mapi id 15.20.3742.006; Wed, 6 Jan 2021
 00:46:12 +0000
From: "'Pavana Sharma' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: kabel@kernel.org
Cc: andrew@lunn.ch,
	ashkan.boldaji@digi.com,
	clang-built-linux@googlegroups.com,
	davem@davemloft.net,
	devicetree@vger.kernel.org,
	f.fainelli@gmail.com,
	gregkh@linuxfoundation.org,
	kbuild-all@lists.01.org,
	kuba@kernel.org,
	linux-kernel@vger.kernel.org,
	lkp@intel.com,
	netdev@vger.kernel.org,
	pavana.sharma@digi.com,
	robh+dt@kernel.org,
	vivien.didelot@gmail.com
Subject: [net-next PATCH v12 4/4] net: dsa: mv88e6xxx: Add support for mv88e6393x  family of Marvell
Date: Wed,  6 Jan 2021 10:45:30 +1000
Message-Id: <20210106004530.22197-1-pavana.sharma@digi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210105131343.4d0fff05@nic.cz>
References: <20210105131343.4d0fff05@nic.cz>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [60.240.77.49]
X-ClientProxiedBy: SYYP282CA0013.AUSP282.PROD.OUTLOOK.COM
 (2603:10c6:10:b4::23) To PH0PR10MB4693.namprd10.prod.outlook.com
 (2603:10b6:510:3c::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (60.240.77.49) by SYYP282CA0013.AUSP282.PROD.OUTLOOK.COM (2603:10c6:10:b4::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Wed, 6 Jan 2021 00:46:07 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ce016289-c745-41e5-bba8-08d8b1dc7725
X-MS-TrafficTypeDiagnostic: PH0PR10MB4711:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR10MB4711EC0D4DC1D730AD366AD595D00@PH0PR10MB4711.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lkT1d7jvUlexfuC5OwBxK8min7V9OKpEHjUHTUvlgEM01NucRFXcKHXsfDUEElH8i239Dd1ok+vLsBS6O7nHnFNR+DCbZcYMipFMFglh8vxSWy5JmCnSW6wxgZVx7TRGhv0+ueD+iNuSwOuLRhigGx2+ITFr6S6AXgoqZCsdtWKkZov2K9vfTIDZ3WT05KtHVAxwWGnVvB6PN2Jxbmw/4Tnb5kmz8Ql1ZTWYVcyWO6m3THhx/L+ngaGXufWlYKR751OpdHMeVg4sofLnhv9/IRIxZge2VOruO7v+uO2pcSbNfE+3E/Idjgjl3u25s2dD5EYp4RWMvoMoH13rsGn16LLa8E891sHFGHeLjc22IO4eOuHTii4DIKY9mCuiPoeV2AmvjRS/LMCjGQ8/0goUCKcyA91rr2ovmTDAdD9P9sP5wWqU5uXrBQiNQIbRI1eF
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4693.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(39850400004)(136003)(366004)(316002)(52116002)(44832011)(2906002)(83380400001)(6666004)(66556008)(558084003)(956004)(16526019)(478600001)(2616005)(26005)(186003)(36756003)(7416002)(6916009)(4326008)(8676002)(4270600006)(86362001)(1076003)(69590400011)(6486002)(6512007)(66476007)(6506007)(8936002)(5660300002)(66946007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?Or1DF8ZNVxpCfWZRs9ruPq8DKMByQ81Zcef1D8/PZ0m26M+fe5XylfJp+Z39?=
 =?us-ascii?Q?eWwxT2LJ5NuJzr0c3O62AoTXTXt7+9zHYlpn2cCB6FG7oHSd0Da2pGXZrHO/?=
 =?us-ascii?Q?cuyO3ZjFgU6J8LzOCsaaKNaQOvqmcvBPCz/fICwha5irLEA3Mk6vZCVeS+yX?=
 =?us-ascii?Q?ewtY0k9uShC6i5BndPRxCRWqSBj3piCIlgDA0EpzB6JxHjaC86nH6WXqdKi5?=
 =?us-ascii?Q?CYSN9ENTQtQk9XDQa2QHWDN8nNQUFtmFZjweO2ghucCDbYTRrwr9jfDBxHPQ?=
 =?us-ascii?Q?/IE0wYpkjxMX2BVcOGMB2EbKoc3WlwLseagRM/75O2OlAPACFg/viKBHbyg1?=
 =?us-ascii?Q?Q+32IOwuUZEsWk1wCVJr0s7yz3euWVvXYw6wPYaQ8VLBS5mR1QG9ebWfOWy0?=
 =?us-ascii?Q?zp/uJzAi/FsHeMb7wsGyjgDP55VoINyJt6wL0bav9foXgFFreldEnois4aJB?=
 =?us-ascii?Q?/NYyMIrN0MCcs7sqqGweqwn4YrXb6F+DSGLjLo/LDEFSzhxNMCGJJ7LTqGXn?=
 =?us-ascii?Q?PA7vzvj4bTRCPkBUCLsZRNHoo6F3qveT/25ID70/Y8HBgw1ntuUyKpO65f50?=
 =?us-ascii?Q?7nGyMJupl0BLP961HfAcy0BdPb3cSVkShjY7/MqwtIsxyxjC9m/wV8OhYZH9?=
 =?us-ascii?Q?f61VbhS+pdAcKuyTtwrUirDsTUbM0eM/1VURYTUajllQD+MIa0zfDTeO/ROy?=
 =?us-ascii?Q?oa7/yibAYSIEcYl4gz1cydyQGfLqFhJ9d2U1eRV8zZlrEgZzCKNXIvmZrj4u?=
 =?us-ascii?Q?lPB9mS5Z2jLkLtkdIuNj65TK96ndZnjQ8+bA1ikvprwU64x0tG9qmIN3dvOF?=
 =?us-ascii?Q?sU+TeBMpvYvE1FvZN7Vlmx9y3c6HHFoIj77BX6DXaqh6JoZT3kTjlrRA/ksj?=
 =?us-ascii?Q?qev9rr3ZeaxPnJP6vmsQbs1HLHBmULIdrdkCplnJmHiZHHv1w2JW3nmFAJkB?=
 =?us-ascii?Q?7V2J71KRMOWZHuFT4jeFP7rVE+TduIVaVSEqjQR+t48=3D?=
X-OriginatorOrg: digi.com
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4693.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2021 00:46:12.2051
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: abb4cdb7-1b7e-483e-a143-7ebfd1184b9e
X-MS-Exchange-CrossTenant-Network-Message-Id: ce016289-c745-41e5-bba8-08d8b1dc7725
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GGoDheddPOvz4mk1USoLysXt6w/pND1Q73/yVHG3gvLVXNBdM+4XZKsGTFnt3Fs2WksnBAdFgA7g/ZYIF//zvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4711
X-BESS-ID: 1609893973-104925-3140-47110-1
X-BESS-VER: 2019.1_20210105.1842
X-BESS-Apparent-Source-IP: 104.47.73.46
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.229342 [from 
	cloudscan22-130.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 MSGID_FROM_MTA_HEADER  META: Message-Id was added by a relay 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS112744 scores of KILL_LEVEL=7.0 tests=MSGID_FROM_MTA_HEADER, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
X-Original-Sender: pavana.sharma@digi.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@digi.com header.s=selector1 header.b=Ijy7ORJP;       arc=pass (i=1
 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass
 fromdomain=digi.com);       spf=pass (google.com: domain of
 pavana.sharma@digi.com designates 209.222.82.220 as permitted sender)
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

Thanks Marek for catching this.

I will have a closer look and update the patchset.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210106004530.22197-1-pavana.sharma%40digi.com.
