Return-Path: <clang-built-linux+bncBCZ3VI7JUMPBBZXLXD7AKGQEIAF5FJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E2F2D12CD
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Dec 2020 15:02:15 +0100 (CET)
Received: by mail-vs1-xe3f.google.com with SMTP id z15sf2254282vso.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 06:02:15 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607349734; cv=pass;
        d=google.com; s=arc-20160816;
        b=FpN0pbYEZFRKZb/1ZyLY4N3R27u+2kQV2hbqKSa9oSP+Et9ZY46iyzqMsGlmdHEo5e
         3Gsg8ZNP3yUU5iRveNEqiKnPTqi9dxe2E58rlHnMfjRnNMTOEHPkv7kqcn9swfyRyX+l
         RNYUu4vzLq4Z3yJ/F4x8K+mfPoVQbTzPopkueRpQkoJfTWfhiP13zjbackmGh4kvvOVW
         1KH6FeaD1Cw5J/E/cdIpwJx+Id4NyG4LHNk0praqydiUivVvh6Z3ECH/M5AWFo7nPAbF
         D1UJQM+CI86gG7qNT5I7P+rou05OYrR6A37lY1GERLbt1und8HmPnEEX0DBRV++m+Qg8
         vjBg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=+//WavCfPzx9OEXgGJsDL0XrwHhcfIsPBNeoSAuBj3E=;
        b=WbV4gSpoqPGpAd7p+RGQNyzeUC6vRrIdBiIerWRdBytX7r0uP8bKzNEUtm4lESlbUg
         rVEsdc9G/G/xF+cDarj/TlSG8q15CUlhnm7WCDuigMMPQeRFII9Rqyor9KbrLEFL2+Xg
         sZQ0Glg1cSMHM7f19RlmsF9jBtYTLrHo5XKElayxJC0mhq72X8q/BuBPtierXUn1PAYh
         NjyG0lZtrJPa1B4zCazpi/AJIBDR6kWNQLeDPlgoPKQng5+v9bxqGhyg3jH4YZjMtt0T
         ShFuptkTFy6HqLudngqgZIX6FU3BqCz94igLTfAWlnGJ4HcwLE9DXZtXWbQW6OMdLY7+
         N5GQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=LqTmzS5e;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of vadimp@nvidia.com designates 216.228.121.143 as permitted sender) smtp.mailfrom=vadimp@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+//WavCfPzx9OEXgGJsDL0XrwHhcfIsPBNeoSAuBj3E=;
        b=lgy7KLD7JD3VX+W8ctBUcZKTAMdqBlVLpr31zafrxkLYq2PBd3OHbZf7vER+1qpC7F
         s21yBec6Og6QYpDC1MnOUGvmDn+q1yWO5kYMUdn5KApXQVEWg0epx2yLffvBZKufe39L
         z9Yuiq2rQHVWNtm3gafK71I1kznhRskBgpRNgAmNpEz3ULt8DRT/dUXMRP/AqEqrRBhs
         ilbRzRzjH778IIGi8zlVTjvEp3AAgbD0yL4lQCKtAYhsQ6ZFQD32o57oTf9BBmq7DJIc
         qYk+YzLgKiyuwoOH765kiqwOQ45yzSqWl6GUSi/VCydd0k9fkM4vwnMD2rk1/79B6oHC
         11xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+//WavCfPzx9OEXgGJsDL0XrwHhcfIsPBNeoSAuBj3E=;
        b=gkMqq1wbM/AdIBTDrY1km5Nj2lOFVKa/Stq4kxdIVuBBczNzGzfH+ZyRlCblxZKw3e
         DfQEHu9+YStRTBbQ6Jxl2B31Swcn51KfQtICFeI3j3+g4k+cKfg3RXHrDW8sZpI1B+r1
         pi7mq0TKuL6hDDrKJUPE1MvmJD7uFoR3Uuu4CUKsbJzPpM5FHTEx+RenNKVZK4hDH3PD
         +SsAKYUxn4+jX3q/6krz74RYbPX58xLioXFur9PEr4SitevWEXe9kRfDd0iSTdmGazfv
         9mGYt5h1L2J2GJx2K3qGaApqiB0Sm24rlNDupCZsi4ZcdmYQ84cSzCdp5vjC8vLyCeub
         mBnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531s8MKg68/mjhD6hsPAaRCHOAjOPXfP3Ap+n4VRTwtrTTgV/9tk
	wS2WDzG+vhCdjav5Izy0hCo=
X-Google-Smtp-Source: ABdhPJxIpj0zkwbIOJDf+5iBaV10WsAHEzupAzNHQp15/grlxi4JqGqlMj9Om18qEEEUxASevkNNLg==
X-Received: by 2002:a67:fd88:: with SMTP id k8mr2375487vsq.17.1607349734655;
        Mon, 07 Dec 2020 06:02:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f315:: with SMTP id p21ls2156623vsf.6.gmail; Mon, 07 Dec
 2020 06:02:14 -0800 (PST)
X-Received: by 2002:a67:c209:: with SMTP id i9mr12544269vsj.6.1607349734168;
        Mon, 07 Dec 2020 06:02:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607349734; cv=pass;
        d=google.com; s=arc-20160816;
        b=TZyN3Qd4woiOYDkisFOtfMPwR3cKt4QbRKty2md77/Tczf6+BXog3Feqt8+C2+7VcQ
         7sbx0aQ0KDaZEKm4V1YLi19dxo2/FTwe8o50qNtdiP5PKuTIFMzewTFVi8mLNo8EWtSQ
         LiYTj+EgX4azQgBdBaGgWySjfI2Nbosi1kHymHoKZ5+C4KDsPRV7L8hzOQ0VUUe2zjUe
         TjltKXjrm8rzreo4qVIUgD0WR+wo+an7djlgr6NjFVwwbsl+4Nz01G6ZZdfPUJOzLW9y
         cLFFxxlej5vn3YiUk0zDexPo8MW7JgsvWV2jMiA1lgluJ8EHU8EKc5WP6gOj6BDUJe4c
         Eciw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:mime-version:content-transfer-encoding
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from;
        bh=JMz74d6hnklfIbToT8zpBfQjFAnr/VPXQ3je5FztQHU=;
        b=FbZYm6zf84yw5GLLqwLYr6bjb3ifFiwZvmBUYKWFST9aeI5tcthSuBtUtZh5gK8zXw
         /Fy1ptaxrBs+tCw/NThrKwQnATvgPtpdm76FCPgSSVvwLmbfsv9N7gDNSGS3mbVNCC4f
         WDceXGN06XuqmMmtdlNTBryqy8RFQV85Ret+omQT4iJmR0V52v0nlhdLnLjeyxZV+MpA
         xi049ehpqnGxMa14AnHPiLBIFG/zeICyLu9UAC5hSY3QvLGfiyzTH2ZGuSoHxl1xRYJz
         rkGOsgd7e5ZjlkC1GElYDyXFQ+aCMYB/mMeJVCcTCZRLoBPdrcoivn0LfyojpYtHwKCC
         kZfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nvidia.com header.s=n1 header.b=LqTmzS5e;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of vadimp@nvidia.com designates 216.228.121.143 as permitted sender) smtp.mailfrom=vadimp@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from hqnvemgate24.nvidia.com (hqnvemgate24.nvidia.com. [216.228.121.143])
        by gmr-mx.google.com with ESMTPS id e2si1020182vkk.0.2020.12.07.06.02.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Dec 2020 06:02:14 -0800 (PST)
Received-SPF: pass (google.com: domain of vadimp@nvidia.com designates 216.228.121.143 as permitted sender) client-ip=216.228.121.143;
Received: from hqmail.nvidia.com (Not Verified[216.228.121.13]) by hqnvemgate24.nvidia.com (using TLS: TLSv1.2, AES256-SHA)
	id <B5fce35e50001>; Mon, 07 Dec 2020 06:02:13 -0800
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 7 Dec
 2020 14:02:08 +0000
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by HQMAIL107.nvidia.com (172.20.187.13) with Microsoft SMTP Server (TLS) id
 15.0.1473.3 via Frontend Transport; Mon, 7 Dec 2020 14:02:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M9QDaW7OmTgH34G6Qwa52ePheounEl/Me4sQ260VYmFn3QkUGC6OfkU7pRr+zxT8l49kpocNnUktMAD5Wod+lGAdyMxYB48H18YC8lA2s7+ideStz127+F8isRcQzmT7TdVCF5IJkJ9mEwExDoIQuRauN8NBwUK+hZgUAHC9iU/Namx3rO+gXf+iifTm0kh6Kg+lcV8NpRWdhcjgeYZT7csIlkpGZmoXjZ2ih/H5A3oOJgPOJcPfBReFbh5cUz98A2haWJ5UafAlWhULR6qxYKNI611fW4otS+FVK5WbVFdl8my0bD3P05RoPXosHKZrf1ID/U/2AnpjYzhBVR53qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JMz74d6hnklfIbToT8zpBfQjFAnr/VPXQ3je5FztQHU=;
 b=Hy7fA1KMeMZMJh3G8f/apDgA2Wxht7cZXdKN/ybZW/BsTUQvG5es65InSnVjlTj5bg76ImArJ4UBJ1aA74sO81Aj9RiF0XstvndKdDZv7CykNFzT664OKnBZVka64B4LgdDD9vyG1y5x3Wg5W9caHQi+6WSkss8AAnR9BDaaxnCFLiIFjndkPh83W8QxEAxOz2yFDn2RPpzOI7G3HvRTCkyNRseGtCyWdloQcZmWnwFp2pccZDrNVBNaxjVN5pg7+cBbwn7Ujiwu8tRLEhc21+s2wHZYF0UhaOFhi5Rhu6GXrP+Ksbtip6QjogTwWrX+XG4wCzCwIO6MzdIdyTYC6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DM6PR12MB3898.namprd12.prod.outlook.com (2603:10b6:5:1c6::18)
 by DM5PR12MB1930.namprd12.prod.outlook.com (2603:10b6:3:10d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Mon, 7 Dec
 2020 14:02:07 +0000
Received: from DM6PR12MB3898.namprd12.prod.outlook.com
 ([fe80::80c1:3479:15b6:a7a2]) by DM6PR12MB3898.namprd12.prod.outlook.com
 ([fe80::80c1:3479:15b6:a7a2%6]) with mapi id 15.20.3632.022; Mon, 7 Dec 2020
 14:02:07 +0000
From: Vadim Pasternak <vadimp@nvidia.com>
To: Hans de Goede <hdegoede@redhat.com>, Arnd Bergmann <arnd@kernel.org>,
	"Mark Gross" <mgross@linux.intel.com>, Nathan Chancellor
	<natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>
CC: Arnd Bergmann <arnd@arndb.de>, Andy Shevchenko
	<andriy.shevchenko@linux.intel.com>, Michael Shych <michaelsh@mellanox.com>,
	"platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] platform/x86: mlx-platform: remove an unused variable
Thread-Topic: [PATCH] platform/x86: mlx-platform: remove an unused variable
Thread-Index: AQHWycQJ+tzIskPouEih6zwvYYhQc6nrrTCAgAACKgA=
Date: Mon, 7 Dec 2020 14:02:07 +0000
Message-ID: <DM6PR12MB3898268DE033A52828D7297DAFCE0@DM6PR12MB3898.namprd12.prod.outlook.com>
References: <20201203223105.1195709-1-arnd@kernel.org>
 <64393b7e-ba81-1545-dfe8-bc3567dd534b@redhat.com>
In-Reply-To: <64393b7e-ba81-1545-dfe8-bc3567dd534b@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [46.117.169.59]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f80cfdcd-002c-47e1-5b20-08d89ab8af00
x-ms-traffictypediagnostic: DM5PR12MB1930:
x-microsoft-antispam-prvs: <DM5PR12MB1930E81D68BA81BA91CB8FF5AFCE0@DM5PR12MB1930.namprd12.prod.outlook.com>
x-ms-exchange-transport-forked: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tKi5Ow/Zx0I3thPRFb9jKjbJgerg9Zc+mqEmzjnI8Mi88pIyK9JBqx92S4HgDtiBefvXT0XUeM2NDBS5u4ixHO1TGH4iWxD6QNFSm6wUUU6O1yHYHsOY3r5WA7lI9f/2Zsc3roKGyO9/enKth5PWUuongg/mAW/nuVTZYJyiGXBecSpZ+5tcHJxBUCTTMHAt/2j1tyBzGOtwoy6QqeUiHk8Lqb4HhWYeYtbB3ZnDyj6ALp7DWkkt8ZNuiSelHifavOf8SfXGwbDUTLHXKi6ioF+RGnxHb0RuMTWhy+OsUVkfigPS+wYrs2VPKH9rvX693DF1tVI9bU6VopTCD+0+JLgqc3FnWkyisC3K5vtUXx+AjP391azZ/CI9ObrcTkaP/1nNurJrtALktZPkVOGNrw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB3898.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(376002)(136003)(396003)(39860400002)(8936002)(2906002)(966005)(55016002)(9686003)(316002)(7696005)(26005)(53546011)(54906003)(64756008)(110136005)(66476007)(76116006)(66446008)(6506007)(66946007)(66556008)(8676002)(7416002)(71200400001)(52536014)(186003)(5660300002)(33656002)(478600001)(86362001)(83380400001)(4326008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?OXd3VHVpdjBUM1dVT2ViNTZVWFJOeUZudC96cDZ2Y3BEYm5Na3N5K1RCbUNj?=
 =?utf-8?B?a0YwRFM5SHRweEFkY0ZZbGhIUmJmS29lWkJBankraGNJZHpoVWp1eW1kYjdy?=
 =?utf-8?B?UnkzYjN1QmUvM3FSMnpmaTBRR3NtNXUwQ0N2YnhCQU9yejhRWnUwVHJFZmtn?=
 =?utf-8?B?eGNncDNxa3VBYm9XbFhHUmwyRG1IbTM1YjR1Z1FjUHovcklHZm5KZit2T1Qz?=
 =?utf-8?B?YzZ0QzVMZm12Y1Fnam9ibW5zL1N3VVlyVE52UFVsR0xrY2hIVGRxeDRHSzdG?=
 =?utf-8?B?YVNTRlNrcmk5T1dBbGM5UnlSQTZUWDg2OU8xMGZwZ1VxRWtQVUp2M1hhK1l6?=
 =?utf-8?B?VCtaaGlGK2RSNm82UXRZN3h5dHhaL0pzNEMwY0xFTEV1OXAzejFqVFA4Y2g3?=
 =?utf-8?B?Mnpxb3BYQW9WSnJiMXZkTk13VGNLbXZDYmZoZVNTalgwVlNCSHdrVEh2OEYw?=
 =?utf-8?B?RkVRR3Frb0huRGkxWnpGZCtidFdFYkRiYXhwbHlvTUg2UllKSHh6djJiUlNI?=
 =?utf-8?B?YTZISndTWWprSWdqYXBSVFBhUVlvR3hES2p4L2tNUGZnZ2RRS29lSllMdEh0?=
 =?utf-8?B?cVBCWnQ2dUY2N1czNUlqbXBML2UyUnFEWVEyMElSOStUTjlBVG55ZzVSODBl?=
 =?utf-8?B?b2ZEMkNWMnlNcVRQT2ZRYUNpcDQzczQ3V0tuT3FSOCtlOWRGdEI4eXk1MVEw?=
 =?utf-8?B?b1lHOVFKN0pmQ2d2S3d5KzM1UU5TYVpoMFZhZFZRVlpvd05WL05oMzZDbzdI?=
 =?utf-8?B?RXd6Y0cyRHU5ZWZKQlZ5TGNEMDlEOWpHejZpQnp4ZThLaXJNQ0swM0tkeDBH?=
 =?utf-8?B?ZmxJN1BqdWt6VmpvL0JQNnRTOHBXNU85MGhjcUFaelJDQ3lycjIxbGNIRmZU?=
 =?utf-8?B?NXllcTFQNlhsQzF6U2RqbGYxMFp1YUFtUlA3bTVmVzBvTkc0UURiUUM4S0kr?=
 =?utf-8?B?cTZUMmdvUDNQU2lpOWlrWTRoSXZ1MkN4L0xUK0JhRFRHMzlIYUFEUTljS0Ix?=
 =?utf-8?B?MS92K2ZuL056U2FMenA0L0s4bldFUE4vck1kcFRudi9QOHFnYzV6OFpwbitJ?=
 =?utf-8?B?VkgxWlIwYXpXc21pQnlsWUNkOEtVcXFoOEJlK3BLTWpBZHpOaEhCTHlkbHlr?=
 =?utf-8?B?K29lSWtycWFGNUh4anlaVEhhVDVKUUFwTzcwNHg1eWszWmkvMlVwL0pGVmRI?=
 =?utf-8?B?YktJeVBsQ2RORFRXcDl3ZWNMeU9iMjkrdno0MTZyYnhxZnB3OVJHTCtiVUda?=
 =?utf-8?B?aWo4TUxsNmVlTUlBcjZWSVI5N0dlSkVQT0orYkhkMU1TYkRjMGc1VVdVRERV?=
 =?utf-8?Q?0x63HBoS3EKtM=3D?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB3898.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f80cfdcd-002c-47e1-5b20-08d89ab8af00
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2020 14:02:07.2461
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C+JIZNRzm31wKhHa5T6BL6CPrL9s5nT6n8TqiP3lEb4uGWAwgUZhjV0BckIe8dRkMqAPpNIq4VkgafXQuGj8tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1930
X-OriginatorOrg: Nvidia.com
X-Original-Sender: vadimp@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nvidia.com header.s=n1 header.b=LqTmzS5e;       arc=pass (i=1
 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of
 vadimp@nvidia.com designates 216.228.121.143 as permitted sender)
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
> From: Hans de Goede <hdegoede@redhat.com>
> Sent: Monday, December 07, 2020 3:54 PM
> To: Arnd Bergmann <arnd@kernel.org>; Vadim Pasternak
> <vadimp@nvidia.com>; Mark Gross <mgross@linux.intel.com>; Nathan
> Chancellor <natechancellor@gmail.com>; Nick Desaulniers
> <ndesaulniers@google.com>
> Cc: Arnd Bergmann <arnd@arndb.de>; Andy Shevchenko
> <andriy.shevchenko@linux.intel.com>; Michael Shych
> <michaelsh@mellanox.com>; platform-driver-x86@vger.kernel.org; linux-
> kernel@vger.kernel.org; clang-built-linux@googlegroups.com
> Subject: Re: [PATCH] platform/x86: mlx-platform: remove an unused variable
> 
> Hi,
> 
> On 12/3/20 11:30 PM, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > The only reference to the mlxplat_mlxcpld_psu[] array got removed, so
> > there is now a warning from clang:
> >
> > drivers/platform/x86/mlx-platform.c:322:30: error: variable
> > 'mlxplat_mlxcpld_psu' is not needed and will not be emitted
> > [-Werror,-Wunneeded-internal-declaration]
> > static struct i2c_board_info mlxplat_mlxcpld_psu[] = {
> >
> > Remove the array as well and adapt the ARRAY_SIZE() call accordingly.
> >
> > Fixes: 912b341585e3 ("platform/x86: mlx-platform: Remove PSU EEPROM
> > from MSN274x platform configuration")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> Thank you for your patch.
> 
> Note that there are 4 more cases where the foo1 and foo2 in:
> .data = foo1 and .count = ARRAY_SIZE(foo2) are not the same.
> 
> There are 2 cases where .count is set to ARRAY_SIZE(mlxplat_mlxcpld_pwr)
> instead of to ARRAY_SIZE(mlxplat_mlxcpld_default_pwr_items_data)
> 
> and there are 2 cases where .count is set to ARRAY_SIZE(mlxplat_mlxcpld_fan)
> instead of to ARRAY_SIZE(mlxplat_mlxcpld_default_fan_items_data)
> 
> If one of the MLX people can provide a patch fixing this then that would be
> great.

Hi,

I'll provide a patch.

Thanks,
Vadim.

> 
> ###
> 
> I've applied this patch to my review-hans  branch:
> https://git.kernel.org/pub/scm/linux/kernel/git/pdx86/platform-drivers-
> x86.git/log/?h=review-hans
> 
> Note it will show up in my review-hans branch once I've pushed my local
> branch there, which might take a while.
> 
> Once I've run some tests on this branch the patches there will be added to the
> platform-drivers-x86/for-next branch and eventually will be included in the
> pdx86 pull-request to Linus for the next merge-window.
> 
> Regards,
> 
> Hans
> 
> 
> 
> 
> 
> > ---
> >  drivers/platform/x86/mlx-platform.c | 13 ++-----------
> >  1 file changed, 2 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/platform/x86/mlx-platform.c
> > b/drivers/platform/x86/mlx-platform.c
> > index 598f44558764..6a634b72bfc2 100644
> > --- a/drivers/platform/x86/mlx-platform.c
> > +++ b/drivers/platform/x86/mlx-platform.c
> > @@ -319,15 +319,6 @@ static struct i2c_mux_reg_platform_data
> > mlxplat_extended_mux_data[] = {  };
> >
> >  /* Platform hotplug devices */
> > -static struct i2c_board_info mlxplat_mlxcpld_psu[] = {
> > -	{
> > -		I2C_BOARD_INFO("24c02", 0x51),
> > -	},
> > -	{
> > -		I2C_BOARD_INFO("24c02", 0x50),
> > -	},
> > -};
> > -
> >  static struct i2c_board_info mlxplat_mlxcpld_pwr[] = {
> >  	{
> >  		I2C_BOARD_INFO("dps460", 0x59),
> > @@ -456,7 +447,7 @@ static struct mlxreg_core_item
> mlxplat_mlxcpld_default_items[] = {
> >  		.aggr_mask = MLXPLAT_CPLD_AGGR_PSU_MASK_DEF,
> >  		.reg = MLXPLAT_CPLD_LPC_REG_PSU_OFFSET,
> >  		.mask = MLXPLAT_CPLD_PSU_MASK,
> > -		.count = ARRAY_SIZE(mlxplat_mlxcpld_psu),
> > +		.count =
> ARRAY_SIZE(mlxplat_mlxcpld_default_psu_items_data),
> >  		.inversed = 1,
> >  		.health = false,
> >  	},
> > @@ -495,7 +486,7 @@ static struct mlxreg_core_item
> mlxplat_mlxcpld_comex_items[] = {
> >  		.aggr_mask = MLXPLAT_CPLD_AGGR_MASK_CARRIER,
> >  		.reg = MLXPLAT_CPLD_LPC_REG_PSU_OFFSET,
> >  		.mask = MLXPLAT_CPLD_PSU_MASK,
> > -		.count = ARRAY_SIZE(mlxplat_mlxcpld_psu),
> > +		.count =
> ARRAY_SIZE(mlxplat_mlxcpld_default_psu_items_data),
> >  		.inversed = 1,
> >  		.health = false,
> >  	},
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/DM6PR12MB3898268DE033A52828D7297DAFCE0%40DM6PR12MB3898.namprd12.prod.outlook.com.
