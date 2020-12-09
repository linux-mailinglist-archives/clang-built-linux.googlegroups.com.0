Return-Path: <clang-built-linux+bncBAABB4FVYH7AKGQEZCTWCTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 690872D3A07
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 06:04:50 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id f19sf379728pgm.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 21:04:50 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1607490288; cv=pass;
        d=google.com; s=arc-20160816;
        b=JSlG3UGeHN5isULHWTearZUSTr7CW02X9uGp4v7NsmTvlQyuUss3U7SCYmnDysVk4M
         1KhakM2jCiZ56ANSGpQgwGM4MHbBdzKKrDchIpXW3voiUF89e9w05Fy5Vqr86nPxB5ja
         TVLsEQT2spzxeWJ7XHgPc5vHWPg7dFzzX6sN0OKg2Dj8f+7Od6d7Jl1b06ZHQCzHdjc4
         9BPnJtoZVKuqfGQBB+v35e9ASEjyj+uJTqm5VBjJ5GtkuHtyto72TC3E1MCQMTB7mt1Z
         0eXhM/+qi/e8rCvuVK872jR3uagBIfUsDweDd610SCKw+9NeUqnL7jldfOt4nt8Sp0fA
         ddjg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=9hPPc7G83BjzmjLMqLFjxIEqSHC6VSntrk+OpoeiyFQ=;
        b=iiBHIsGM6zNqCInHSW8pvjJ6h0Mrk/Wa25d6LGGXgP/tZURmw9O/Az5J81j87qk4gw
         FXDwdaPqc3Mo+AbdwvriCgzvRDkhaxPTWDR2pZTJNsY2twwuypn4qNcUMkppX+vQeM5S
         CBTM6OYUNIcFknXDtxD0ISCYJmVH6X4tAmj9ccPBhGmtWV/rQ/AJWi5gDPiLGgtgoQVj
         4v5OfUJ+2iA4ZITD8/Ns8IwOkQHjF7/0K0onMHXoNvfK9+AEkfhVYM7w20sgTZaMZ6v7
         +twqA86SZD9tEN6lxNk4p9rwad0MlN6iX0tQ0vlD6T3wwGXT9kfZTUjeDRp4Vl2lHJMl
         8BNw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@digi.com header.s=selector1 header.b=CLxiSqGm;
       arc=pass (i=1 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass fromdomain=digi.com);
       spf=pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.205 as permitted sender) smtp.mailfrom=Pavana.Sharma@digi.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=digi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9hPPc7G83BjzmjLMqLFjxIEqSHC6VSntrk+OpoeiyFQ=;
        b=CiRRQ+bN9plVxEbTNY3yFvakfHlP9SY39Z6Ydj26WxCBWOLSnoyFpQdCwzX5SGD3u+
         qwqNH29cxiEB24dpI7R9UZhjymXVtYOPHtX1cSZzJ8pKEK9kET85ZSlThPU33dWCHPW6
         cwDiNM8iyiot+zbrC4zVMyE7HYnIxmDTest7nWnFcivLPp3PKNukkJ8eOzpLOATlg30I
         geaDg3UdEvhaI86BdKheC3GotLhjj2nYh/g32OqGybBbvbqecneTJPC+j2Z+9MDWxh8i
         f2ZGFxjdAEp6uIYfq5bjL1nHk3k63KDgEphmCP1jfWkFqas0OeWGpluhoGq7glufydpp
         l2nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9hPPc7G83BjzmjLMqLFjxIEqSHC6VSntrk+OpoeiyFQ=;
        b=TZRjQZyfBHuDOBP4TY4lzh33pMTjhSEZVoBq13/TOH1RLgtsPJJhzCFoLtjZqS6kn3
         aoxI1LHf8cBkNS1Kn9dqjk78SXJv9dkRadCBicxDaMYE5FnRUx4CNwlMkE3dtr29Wps4
         N7ZSkjtxuBds7UK0a3NxiPGHSHCouWgDG1zGwiolNOak+uH+W0cE/rb7ZUZcwi15OX5v
         uN+ckwWjQBHh6P9trR6q+4ZRgeD4mabkJRbigb68UvS3U4g8kfMtPDKGt0wKw7/oPv2v
         vq6vSNfk2AwXvSI9YFQ7D6YcISIFFkpzvVglIgNkI4Si0hk6/6k3YnKL0Iq38qgnMLrX
         6J+g==
X-Gm-Message-State: AOAM5301ar1uQUB6JyHNC5lkajbUelg1gcZz+BeSt1z77ty+i7gNeUBV
	g1uY4RUmmKTGI9ddXMVoRsg=
X-Google-Smtp-Source: ABdhPJxn0s1E8lwx30dvUmWB4Yv7OYXff36KkNasuP+7mtEV3Fe8uSOWzP3ZWBoqYylJLxG10C21ew==
X-Received: by 2002:a17:90a:bf16:: with SMTP id c22mr644664pjs.11.1607490288622;
        Tue, 08 Dec 2020 21:04:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:490c:: with SMTP id p12ls221406pgs.1.gmail; Tue, 08 Dec
 2020 21:04:48 -0800 (PST)
X-Received: by 2002:a62:5e81:0:b029:197:baa5:1792 with SMTP id s123-20020a625e810000b0290197baa51792mr752612pfb.80.1607490288062;
        Tue, 08 Dec 2020 21:04:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607490288; cv=pass;
        d=google.com; s=arc-20160816;
        b=mn/pjyZyVTtALL90YPRbAaQhnUUHa2YtMk/uJnrtqFlDmcrH7SKY2LqKNZUpfWCNfh
         8xu56gH64DBL1lDT5g2sB3eN6wPmTrqVQHYupm1SWBLfqhJnTYGv6WENV4nHmyC5uTuU
         zKLGqFRA5EEioOJq4LZVb9RYOQ9u19O0mxscOB96KB3NOWa4v3pgsRfnhXsN+5KUERmg
         1pW0YCTnFsF3HSO7jgr3qt43OT9Lz/CN/02n2wWATdYGL5Rls264ylIXQ2DmsZsUK9Ce
         31mKSkeLvNQJqFsacNrqlizOJOa38Bgn3bxZDL8Iw8RkL8w2/+fxa2D+nipZDTgm8mm4
         Odgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=vGCEsld9BN8Q0YZQvexI1UNFDDZ6jGwAXNatMyy7p0w=;
        b=GrZV4t7BsL24/UK49t0m9qBNCVZvdEPyBB0Ux5VFZ3fKZdpd+UOtkVCZuFX2UxJoYC
         D7vS/WrBYU10jS2jgmEUfBTO9/BHcB4h0/u9YHpacXueKvIoOTCoSwl/eJlZMZnq5jXS
         avkE33IDsxqZ/FvRfyzYy4E/tTOQjlaagms3pOOAMHaw4PQ5he36qPIAY+OonXHcfmcj
         srQ8oMiXTK9QZk7pqep9Z5FSEbU1DOZRd/0YXszTAMSl9hV6ByfOGiraM8gLDISp15tB
         P5YvXaWLeU5SbFC+lM0NItBKBB0y9WIwcsgam/4Afya3UMVacRNJUi9CvXXRxaO4Z5Am
         f+iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@digi.com header.s=selector1 header.b=CLxiSqGm;
       arc=pass (i=1 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass fromdomain=digi.com);
       spf=pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.205 as permitted sender) smtp.mailfrom=Pavana.Sharma@digi.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=digi.com
Received: from outbound-ip23a.ess.barracuda.com (outbound-ip23a.ess.barracuda.com. [209.222.82.205])
        by gmr-mx.google.com with ESMTPS id f14si26171pfe.3.2020.12.08.21.04.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Dec 2020 21:04:47 -0800 (PST)
Received-SPF: pass (google.com: domain of pavana.sharma@digi.com designates 209.222.82.205 as permitted sender) client-ip=209.222.82.205;
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2173.outbound.protection.outlook.com [104.47.58.173]) by mx3.us-east-2a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Wed, 09 Dec 2020 05:03:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BCzax2ZfJMzq9oQnTAC1s0D6erwTFZJlUyhyKg9BJPglpG1ae/UcrYGbljtyeIqAOfUjZfWzqb7Me8+J/ORirJR7abV9QO+8yAiqyMm8xMmWWCXIHFURFvKvXQfqY3808Ef5taJ8oIA8JgH2TT9tYdTRcbJL5w6kYNQ8zFrHJYod7Ak0QRTUwjynQG5Fn4x+I1WyWTnigc3nU985M1lnmSuzGUjLynspV/4JxNDjIVbjEPzBGVBZfmm9NNqNc+OD0w9qLK+zcwqClSvmsN/fZ/VLAVas/v4zkDm82H4oqdP/ZI1bDC3jrhVDlPvRQBd/NWaQomKyLdc975j2IECk+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vGCEsld9BN8Q0YZQvexI1UNFDDZ6jGwAXNatMyy7p0w=;
 b=VQYIT38O7NvG9UpLSpLx8wec/OjS8rwlzXGXw2c/gwgOowxfhvyCtGkKHgL5YC72c7oW+TtO9/TBJ0fmE8v5CE0xmGaTUJhqElkgLfsWj4nk1yBOdgWB7Ufgq8QWhjxyFmIwsuPLN8pUlXweGnPy4V1+f5n8c2Xw96kuVWJdOsUIvwx/aJBKkKhIsVI0DZxbRGGsabsh9mZNsb5tcnzgsKuoQfVnyvN3/NGb38gNkzWMb2hLeF36Jl81WPSHDVPZrsrVKNdV8peMzLQplLFCzNqWsn4C3rVr4NwiJ63/IEUHnVnmg09122cIwLgwjNfCzibHGN+EDHC8kM7Vcu8u9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=digi.com; dmarc=pass action=none header.from=digi.com;
 dkim=pass header.d=digi.com; arc=none
Received: from MN2PR10MB4174.namprd10.prod.outlook.com (2603:10b6:208:1dd::21)
 by MN2PR10MB4336.namprd10.prod.outlook.com (2603:10b6:208:15f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12; Wed, 9 Dec
 2020 05:03:30 +0000
Received: from MN2PR10MB4174.namprd10.prod.outlook.com
 ([fe80::c8b6:2021:35a0:2365]) by MN2PR10MB4174.namprd10.prod.outlook.com
 ([fe80::c8b6:2021:35a0:2365%9]) with mapi id 15.20.3654.013; Wed, 9 Dec 2020
 05:03:30 +0000
From: "'Pavana Sharma' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: andrew@lunn.ch
Cc: ashkan.boldaji@digi.com,
	clang-built-linux@googlegroups.com,
	davem@davemloft.net,
	devicetree@vger.kernel.org,
	f.fainelli@gmail.com,
	gregkh@linuxfoundation.org,
	kbuild-all@lists.01.org,
	kuba@kernel.org,
	linux-kernel@vger.kernel.org,
	lkp@intel.com,
	marek.behun@nic.cz,
	netdev@vger.kernel.org,
	pavana.sharma@digi.com,
	robh+dt@kernel.org,
	vivien.didelot@gmail.com
Subject: [PATCH v11 0/4] Add support for mv88e6393x family of Marvell
Date: Wed,  9 Dec 2020 15:02:54 +1000
Message-Id: <cover.1607488953.git.pavana.sharma@digi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201120015436.GC1804098@lunn.ch>
References: <20201120015436.GC1804098@lunn.ch>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [203.111.5.166]
X-ClientProxiedBy: SY3PR01CA0136.ausprd01.prod.outlook.com
 (2603:10c6:0:1b::21) To MN2PR10MB4174.namprd10.prod.outlook.com
 (2603:10b6:208:1dd::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (203.111.5.166) by SY3PR01CA0136.ausprd01.prod.outlook.com (2603:10c6:0:1b::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 9 Dec 2020 05:03:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6b39a672-7454-467f-636e-08d89bffc59d
X-MS-TrafficTypeDiagnostic: MN2PR10MB4336:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR10MB4336DD67AA4A4EF0B896695E95CC0@MN2PR10MB4336.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WA0gsdCx9/51/ci4kxWCsqbEIXx6ZhxhXCRnJjPakZxlEVCIsI2atIfj9wlvtVUgd/dtjUVBx1ogzvpAVX9VRRhMY2bH8EJ/kGxt/8ch1DexAUZISwUjzTAADl8wRjVulGyh4CvAXW2TH7z1LzcxUxVL/JxSKVDmDu1TNqGInJPV68LxCeNQciXuqTsF/dSP6ycZdUY/e1aURddmHaXfatCCeEA8YsGq2KuHWrRboJ9bSkaLM3hd8e3U3DbHdQOc/YXzeqLsGU3LC43Cg6lbErDj3nGcOHIoNUjioszfuPBGxXPmJgPuBFTUJZ2A6A+tEN7eu+BZMmIw5Ri/i2wsNRSTeWfRYbIFNIG0akP+TDMBHE2zQIsNZJxAzrtAVcLKGpW55xlybfqEZICsOuzfwlzIgWdR0VI1jv3QQsWR1ws=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR10MB4174.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(136003)(376002)(4744005)(2906002)(34490700003)(66556008)(66946007)(8936002)(83380400001)(8676002)(6666004)(66476007)(5660300002)(508600001)(86362001)(186003)(52116002)(4326008)(36756003)(69590400008)(2616005)(6506007)(26005)(956004)(7416002)(44832011)(16526019)(6916009)(6486002)(6512007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?ei/1G9tpjIeRMP+qMMYNrKMi2JHo1vAedn1MXsC+98BW3K8pvwzruk7KI3F/?=
 =?us-ascii?Q?bfSwMfZ/GD35VEF3h0tWzFqP93pHDgQQ3Y5y9PUjojInpWKU5c2IMyqmNFZq?=
 =?us-ascii?Q?Mroh5NkRXvaOpHdBm6q0DW7zLwgfvbvt2C/66mDWKjNikTRpB9eeahVanMFf?=
 =?us-ascii?Q?z/yelZ47UKDJkLZ95HadnS65WyeC2QYWedULhNhpHqVvSDPAp4dspCR7mLNu?=
 =?us-ascii?Q?AJ2YBT0dNSPkoURcf53DyJ4VFLVtO8v1upx8f4KtE9vz7V7U4XL8KKYTYVwu?=
 =?us-ascii?Q?7CZg1yUS199v17T521O4r4rYj7tzHQpKoFJndF58sAdAi9nJsaddA7hq7ymw?=
 =?us-ascii?Q?sNDI6e92B1M8CyY6XCaMpsCGz588cS0Sj0V+iOgFxQw2gi98tzXlfRXUxj1n?=
 =?us-ascii?Q?R/HVGJsFUrffrTaWKboC2UonP/o7bc6BDvk2tmetztd9jEC/zzJMH5XeeMbS?=
 =?us-ascii?Q?Vgm6mPRaAIGHqyFADgy6/krNAl9kXZy03D2k0PuPURSy1S0hUl1J2Y1xoBtq?=
 =?us-ascii?Q?2KyymzoOn6meQqYdIE8pqXydkyyaK9DWkHrOdb2/D/a51DEYFrWGSRw7B/Gk?=
 =?us-ascii?Q?5ASkAGYA6pvdMRAONieAAMzUqcsj21p6UCOiQ7Y2fWSgGqQ0QtjwKBHXbu3Y?=
 =?us-ascii?Q?XFv7Srjrtdr3VoVFJXJihZx4w9loSPoytH0b1hZDqh0nYyk3MEI6kMiw+vu3?=
 =?us-ascii?Q?QGxktkgd7OKc5v6YxccncoPiOGTxFu62cNW7fkkD6O3XNdp3kW2LJTfqeDZB?=
 =?us-ascii?Q?pKHiYdBUhWWxhtX2lyAHwpAAsmkJG0mUQq2CsM5TzFOAMrepw15tBQFHyyLZ?=
 =?us-ascii?Q?QwL9w9eyqf9EFsweXl+8GHH5Jssby9sGBX8ElcDpv2tMEW15ILAYAX2ztvhg?=
 =?us-ascii?Q?ADVRKVdZDyibo4AhU8+OGKgnagLUhClOzbLgHEZ7qLoEJt3OoHdROijk2Phq?=
 =?us-ascii?Q?pLHL54nHMZiww1Ugi6jMoWwu0gt7VkoR7PNgMRufrMkp+Qg6FSGGXdlJ56ju?=
 =?us-ascii?Q?ae0N?=
X-OriginatorOrg: digi.com
X-MS-Exchange-CrossTenant-AuthSource: MN2PR10MB4174.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2020 05:03:30.6580
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: abb4cdb7-1b7e-483e-a143-7ebfd1184b9e
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b39a672-7454-467f-636e-08d89bffc59d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XSx9/UKbnIMD+SgX81mbbMb03Fn4YxNQRTF//8OGqefmFAkMjFp25clEHlWUX7857VODMGUpSKpP7FYLdgbQ1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR10MB4336
X-BESS-ID: 1607490211-893004-26535-28755-1
X-BESS-VER: 2019.1_20201208.2330
X-BESS-Apparent-Source-IP: 104.47.58.173
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.228709 [from 
	cloudscan21-38.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 MSGID_FROM_MTA_HEADER  META: Message-Id was added by a relay
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS112744 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, MSGID_FROM_MTA_HEADER
X-BESS-BRTS-Status: 1
X-Original-Sender: pavana.sharma@digi.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@digi.com header.s=selector1 header.b=CLxiSqGm;       arc=pass (i=1
 spf=pass spfdomain=digi.com dkim=pass dkdomain=digi.com dmarc=pass
 fromdomain=digi.com);       spf=pass (google.com: domain of
 pavana.sharma@digi.com designates 209.222.82.205 as permitted sender)
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

Updated patchset after incorporating feedback.

Pavana Sharma (4):
  dt-bindings: net: Add 5GBASER phy interface mode
  net: phy: Add 5GBASER interface mode
  net: dsa: mv88e6xxx: Change serdes lane parameter type  from u8 type
    to int
  net: dsa: mv88e6xxx: Add support for mv88e6393x family of Marvell

 .../bindings/net/ethernet-controller.yaml     |   2 +
 drivers/net/dsa/mv88e6xxx/chip.c              | 164 +++++++++-
 drivers/net/dsa/mv88e6xxx/chip.h              |  20 +-
 drivers/net/dsa/mv88e6xxx/global1.h           |   2 +
 drivers/net/dsa/mv88e6xxx/global2.h           |   8 +
 drivers/net/dsa/mv88e6xxx/port.c              | 238 +++++++++++++-
 drivers/net/dsa/mv88e6xxx/port.h              |  43 ++-
 drivers/net/dsa/mv88e6xxx/serdes.c            | 299 +++++++++++++++---
 drivers/net/dsa/mv88e6xxx/serdes.h            |  93 ++++--
 include/linux/phy.h                           |   5 +
 10 files changed, 783 insertions(+), 91 deletions(-)

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cover.1607488953.git.pavana.sharma%40digi.com.
