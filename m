Return-Path: <clang-built-linux+bncBCN77QHK3UIBBB63RSDQMGQEF5P2HUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6F13BC150
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Jul 2021 18:04:25 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id t5-20020a17090a4485b029016f7fcb8a3dsf203031pjg.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Jul 2021 09:04:25 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1625501064; cv=pass;
        d=google.com; s=arc-20160816;
        b=c2uW6uujsLgLNO1PyqqiRbGZYlqLo+FmHCDUB4VaWEpWcGJJ98PG5d9sVfKf91heAw
         CICtjO57wxmlRg7OjfRy/QPhlFmOqnywN3e5w35B2tbT4/VQ/Wvz3cN09c7rPglDFG7i
         4i8lkAHmO6p+l9A8YCzX7mbF5rZ61DUHWtOSBOpXDd4juIA9eFrT4PxGwnG315DBxwo/
         DCNNA4gmOt9du8HR/1RK/wu9XOXHW3Ebz263StcoVSg5laQ5Cwiiu1SbHy+G2Pad2NT0
         hRlmbXex8ch9hNceOX4O8QYt/mi0WxNnlEiSQa4yR0RtJs2ExLWj6TaW2+q5KpsT2YNV
         AEuw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=Q+8/++WIOR0reUUmu+1US4lvpYr00y9uKQ76wMe0gLs=;
        b=lgpiDr/sjoRF+vV4RESuwOFkvM1l4Ix9KaLE8pGzPaYcYZ+o17E6TNRpfM3NoGx4JN
         4iX4RI4yxdNDnfFqnNgeVjJum+PO/Xuh5tZgK6YcrBDUZgnz8N9FNCmwmIZCTaqZctj+
         2SWwLON5/Slx5+JKQ5iacp+iBnDgAmtP8PPB6Dco+ZzGKP047J957PZW04Q/lOZYFpAb
         a4Tz1fTptrNDoh4PF0OrpmiQLVB9VyHUlmNdWfWoZ/NSc3N6SivluMnubmhkBsq3yQmS
         UOXvJrZB/Q+/c/Jc802dhSwxa3/7b5g2xHblNGF+Cbty1byiAc4468DRow5R0+83uq21
         NThw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=GJexAfqo;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.101.73 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q+8/++WIOR0reUUmu+1US4lvpYr00y9uKQ76wMe0gLs=;
        b=RVkABtwRWr3rjnUs2L2ennFE5qhwPnlp4s71GGRByVz8qmQs9YuhrK70ZFRP6bcEIT
         bgJcwhCb+zaWUKSR/lnlSRdNuo9DYDmLGWX6A/qsE/r8bM1L1QyqUv7YTfA++M8BAOTv
         JyH+fKqN7cpouWv/iipWwGIMrVy43ioUeUM+LQn72UNLpxXDWItWdL6oyXYUEIIT9X0e
         E17JH5j4XlQRvYzICB3got/4BinqSn9DP6GjaAzN3tz6xh5vU8W5ecgL4c/351Un9Yic
         otwEWtBGRg1HgjjiuIUA45tJj0w5UpeXyVa3mczSEI37pOTVz5KwYMYojzx1qr80SXlw
         yAfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Q+8/++WIOR0reUUmu+1US4lvpYr00y9uKQ76wMe0gLs=;
        b=fKAg5YmQRhjNByjjWsEUW3GQIM+3k8PXNvYlg+se8pX/LQFNjxoLx4mlGh9US+gewS
         o1xL2squE8HMCYI13pdrCq4Iau7tOEM0UCutPIC+Roi+uCZM5an0yFzuc6KHqCyNQ79j
         DdKGdgg+QdpcpuydJN7yvSInQZ4XYGrt0SUd1CNAyXvZoRAFnJ60NzoTUCRSknaFR/6m
         P0GMubjjwP7y1o0PIiTJEkNSlJ30jqKbSdyjix+Ol0e4ujdKQPIFFGE9NU70GkjubQzL
         tKFWP2eLNl6v6EfCAxYftgyxC8fNpFLpDkSS2cwAAnJWnjZNNgjfUkZvRyEx35x/eOXC
         1T8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532upXJ7uRc6vx9A3+GnK/LkZMoW7wx2yYZMcN2l8hS9KuDFPiec
	GrKVkOXqLMwb8jnj/MXjFzE=
X-Google-Smtp-Source: ABdhPJydprgtD/9MqzD17R8Ifke3c6F6YXjLeQcLvAiT21WSSjsgWLXtoeRqftATlHn3xy036bRzBQ==
X-Received: by 2002:a17:90a:974c:: with SMTP id i12mr16482903pjw.158.1625501064125;
        Mon, 05 Jul 2021 09:04:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e802:: with SMTP id u2ls9389831plg.9.gmail; Mon, 05
 Jul 2021 09:04:23 -0700 (PDT)
X-Received: by 2002:a17:90a:fa93:: with SMTP id cu19mr15974161pjb.220.1625501063480;
        Mon, 05 Jul 2021 09:04:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625501063; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gm3a1VIM5spGTUJOTF6NkIVuSqiWbPBy/YEAIUlIhq0DrVrkPOAMgmeYDddzRShJFg
         3aSZiYh1YjZW9xw/hzVijekasJy0MpPgxg/VjuvkimGGqBCMDylVyd5OI5Ly3Mc/3GZs
         8OnaPLoQPZYWbbZ4UWYXWUO08wmRz+NPLIYyb7iiTZH3JCmkYtjXTd9QVsBhSdskNBaq
         5u2Tsl5WPfTFgg63RPi0uQIgVMEuQFaoVUYYSxg70JGkL2Rd2uNosWmQLC2xMQPIMBpR
         /Gc+K5ZPyEQKslm4959GHo7EJ9nsTsrKs7uh4rUXmBbnD9eZ+AXhwdHnHOk2lCRft/ZI
         iTxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eum/geYwECBhocPfwhd/KefEF0/Nc0iwwnZJsWJg6LQ=;
        b=tL6iZOeb2+pbhFrxm8mJE/4nRsC1A0eao8DVJcTJ3+w/ZCL2BBduiXidOFp81g1z3p
         +kDm5YMa6m/ROq2pPIagoMGLXBupABrr532BDOO2uE27/6aMHC2LWT+sxZ8o0GD4iZwB
         gf8PrG0L4vF46vV13NO5k8ApYFOKjiXhb45TSJxOxw48J45RlHurB++O8U7Lyj8jaQ+V
         pkk+OZcnrLhZJxw8bdsd+UbTIO4MVUEW0UcUOnD3mybqk3Bwv5ji7UltftQuCFpJp6/t
         HB7fIlmW0YVzqfn7DE1JdN7rWPTrbz5KnwNUYARci6U9bJW6ZwlTjotrSTNmKfj5OA1+
         +Plw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=GJexAfqo;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.101.73 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (mail-mw2nam08on2073.outbound.protection.outlook.com. [40.107.101.73])
        by gmr-mx.google.com with ESMTPS id t1si1628200pgj.4.2021.07.05.09.04.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Jul 2021 09:04:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.101.73 as permitted sender) client-ip=40.107.101.73;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jt3e7b2/02BIVaMKOEay96UA9hGOffU/1QvI0faG67tD4YH5OZS1+qX+vTd4TC0Da6SjEZYBRrfoqfoU7hOZc1erCvQPDLG3lmFaHlwmwX6pWk2YtTgsV/f43jx2SMsB61dywU917BJLhERk6ecylF9Zey8TNrMMbkC4afEuIOlPB2TF1BN5DS5iLeZARD7fA3UTwsFnHA5ZhcwBTSxzPzs2VfrnsjKQFnxom24j5q09Fe6fZMWQVJ5S4rcIq0MQNLcfBdRABpXGyl3pByhLZZU3OHZorAHg69bB5VxzWxnEd7RW9kCdBT+P/ME2D2J5NF1ISIGRAQQoS7mS06oo3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eum/geYwECBhocPfwhd/KefEF0/Nc0iwwnZJsWJg6LQ=;
 b=Q03HZRoaMZb3h+GvsqBV6/HqXBTTQ7IsejtccVM5+jLRSXcLGL2YVFkR9p6jb3RDhHcfZ5IBG0ggvAD2DUy5ITXgYQUbkUB+qmEM5VfvwmS4mOJyjXDwudL8mRR1PwZZSRYUyEdI/u2A9cswqMtiY4oGCivmTX9a9iwBS2AJ+zMJKzPrKQYBSbxpajysVSobHQ74ezS+sEfgbQaao4m44HORiAI86+fuJAv9VSpX2qVlp7lMVJUzVrQX2vOW8axY1y05/vpYnluZpE7y0qJvlhaqDX7fU9XMF4yqSm7l99yH6oPkt9BI+WKxqLmYetVlt2Qe72R9x2vUx9DWwkwVaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL0PR12MB5524.namprd12.prod.outlook.com (2603:10b6:208:1cd::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.23; Mon, 5 Jul
 2021 16:04:22 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d017:af2f:7049:5482]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d017:af2f:7049:5482%4]) with mapi id 15.20.4287.033; Mon, 5 Jul 2021
 16:04:22 +0000
Date: Mon, 5 Jul 2021 13:04:21 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: kernel test robot <lkp@intel.com>,
	Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
	Mustafa Ismail <mustafa.ismail@intel.com>
Cc: Shiraz Saleem <shiraz.saleem@intel.com>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: Re: drivers/infiniband/hw/irdma/uk.c:934:6: warning: variable
 'total_size' set but not used
Message-ID: <20210705160421.GS4459@nvidia.com>
References: <202107020917.rzVg3a4q-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202107020917.rzVg3a4q-lkp@intel.com>
X-Originating-IP: [47.55.113.94]
X-ClientProxiedBy: BL0PR02CA0131.namprd02.prod.outlook.com
 (2603:10b6:208:35::36) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mlx.ziepe.ca (47.55.113.94) by BL0PR02CA0131.namprd02.prod.outlook.com (2603:10b6:208:35::36) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.23 via Frontend Transport; Mon, 5 Jul 2021 16:04:22 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1m0R53-003r0c-KU; Mon, 05 Jul 2021 13:04:21 -0300
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7f52f34f-3ec6-44d4-4bfd-08d93fce8dd2
X-MS-TrafficTypeDiagnostic: BL0PR12MB5524:
X-Microsoft-Antispam-PRVS: <BL0PR12MB5524A1977A37EB77DC9D3A91C21C9@BL0PR12MB5524.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kxwkcsGeNebMl4e2CJFjxRVvDZp+yem1LyhyzW5yT5QkZHvKnHxqcax7FbTd/LoEkuLnoot0fdQeHCOV9koYd8oShNPV2lDL8D7MKTm8YgvhxTiggFmbnX5EF8YDU/9o2WctTgjigAyQip5BgnQdasgcYXuWyTdDAw0Ul0orm8UpBncyHw3jj1uBbgjYLEf9MELb3qUYqFosHP28ZqOj3GAG05+VhVxu/gbJ2IN1nQA1d9ng+iTEf0geaMY/LK5b6e2+UNQm4c1cDZYCR10t3RE6LTOifi4cH5p1riwnNVBoHto5oVnIYZnIZZkR1bAPFOqPW7D+D9O9Ap0rtgY2MqvuDUBfSwU4bWgbNZgAEX35Ojw7EFVyDuT52Vapf15sY1JlsjjcD/YTqVzDRI/ki+RHU7qm0+XlpNTdQwm0KywIQF2BK1HHh4AAxXccbPPySSGKfg46TY1McVt/U+AjPP/eLZVswGupyKR8EKtXrS8QgHeKlpgkfOmKSCQedOqYjpMZI24A9uF6C7cTwmIe6F+qaFXQpm4jfKgPz770LYbV4DfgF0dXismeTcZp1zrgQM5VDJo6aUK/3vPn/sIm+TF7473bqsSxShKvLRnT06tE3NWLgXkPKcjOnAmKUYzOKlrv66sHaUQdQ3a7HKdSB8OLEHotEk52pQFB97AU68vjimvaUQ9Zh81238knHy/z2d4WdYAzYjLRuvZ8UKaF7PDniuEvDYwIfxVQTxBRT3D+lt7kvL9w7Kd/7KIx+QAg1tjVW/zqJUXq24jz2a2VpQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(39860400002)(376002)(136003)(366004)(396003)(66946007)(186003)(33656002)(66476007)(1076003)(9746002)(9786002)(316002)(66556008)(83380400001)(8676002)(36756003)(26005)(38100700002)(2906002)(2616005)(5660300002)(86362001)(966005)(8936002)(4326008)(478600001)(426003)(110136005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6rjHccsEHs3aHhIMNFqcKE823bzCVhmQWOWMN1xXGjsi2AppLt8cqCbgx0du?=
 =?us-ascii?Q?gG6OAyKhAinex2oI/menRGgXP0Mx+6s4wdQbRQ6Iz4CS4WkfCFpjBxGs/Muo?=
 =?us-ascii?Q?vFCnl7eDPAhPiPa2cLfP7Hiz3abrL1Dby9yl1UZBuJTOnzFugLXEeixeG/+L?=
 =?us-ascii?Q?7atsRyVZop/HRhZk6QV7eTgSlzXpd2r9g3ltR67QQ6Wf2zDdj5xDS0FaKO9x?=
 =?us-ascii?Q?JpcG4WjRF7qSLiWvHeuRIIgmoXC8DlkfOXDfa3QyDqJeFNcv2/wK5masRyc/?=
 =?us-ascii?Q?IFYrDq8xOsU2ekAGVo2LKFCfRz4nEntm8E8RaOS2tFP2aS/puX/mkFWsNtmU?=
 =?us-ascii?Q?FalSN67jcSwnBLM/7NdARgeWWd4cazQAbS9SDZmqC24WCK5cw9TSDfGfrlJn?=
 =?us-ascii?Q?pe57IotKG8WIiX+Yhe2sOJZYyvNXp+vQ2FZ75CsO5pL6hLHSLA/mLBTzkY+u?=
 =?us-ascii?Q?1Z5BUs6k0U1hW7oKzaiBFkDQFybTsC/X/hf71aIjmuoOwTv4jIH54rRo/m8W?=
 =?us-ascii?Q?QtX3X86X+9UBaFsyJkC2vvrExfAmQ54U4tQrC/k0pa7SXmQcq+mYIfRoxJ7/?=
 =?us-ascii?Q?nojQswwrTNByKDeZEdzL/Wgbh/p26YKWH0/I8e8Fjkn8Sje4t48DEjf+nidd?=
 =?us-ascii?Q?BLu3jiEw5wibbm7UfSzh9EhQD9TvlcZj5TuSOw8sJxQKyHZAG/btpBODZZhR?=
 =?us-ascii?Q?ucnFEB9vy/X6ldO+9c55OQxYRFSR/d3h2Xutm3LoZQlXFuMTDUP0eEfCOEVJ?=
 =?us-ascii?Q?pgbJ+WqAQ+6DcyxvBE7sAsQDVDA0Jip1pn9K441WEVYLURobUtnpJEwNQgjO?=
 =?us-ascii?Q?dLzOQfC0/+65RcjGnaB1iyE8nWeIzagsu4+ZME8qBSn/FeBxVd14WDChGMfB?=
 =?us-ascii?Q?T6nxhLmb8zcXwALBAskKiL72IdyAoDlGbnA7OBS8kOytkFiwCcx/SkgTroMV?=
 =?us-ascii?Q?1ExOq5GIH6CFH8qOLVIPyD+/6Y3IBXLMR9YkUzi07ZCvrkKwLyEokso3RxR7?=
 =?us-ascii?Q?fPuqK4D1DP5IsWsCScL1d+KLose7gNwMFcvHnw1LVF9FSjtpRl1LhcRdjkwO?=
 =?us-ascii?Q?nCubrz0UDvanyg3VgjcEZbBB3h42V9MhLtt4rYcYdLnll9Maeo0IDcQjdUb0?=
 =?us-ascii?Q?BpKUkcRmTJwRSWada8lYL45h/wFfTWsdlsJktHJE9GijAhT2xAshJUBjDrNk?=
 =?us-ascii?Q?xE+gGBnHAGKsC9kvn5Iii7kCj0KPdg/NH94WK1w//DS5eKWOlZDyEjW2G5DS?=
 =?us-ascii?Q?hvUo7m2y6LCvwY3pCD1PeBkvywCtwhP2ZzeUSlEO48uf5rDFSzxjZaGMs/PS?=
 =?us-ascii?Q?OdquGBDfuTQif80032cBbEpX?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f52f34f-3ec6-44d4-4bfd-08d93fce8dd2
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2021 16:04:22.6391
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qxihEjEX69WySyaEe3j5zJLzi0uWfRTKmhr8B3aA0XGID73yXqZ6/H0Jv+tiyosQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB5524
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=GJexAfqo;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.101.73 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Fri, Jul 02, 2021 at 09:15:24AM +0800, kernel test robot wrote:
> Hi Shiraz,
> 
> First bad commit (maybe != root cause):
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   e04360a2ea01bf42aa639b65aad81f502e896c7f
> commit: fa0cf568fd76550c1ddb806c03a65a1a4a1ea909 RDMA/irdma: Add irdma Kconfig/Makefile and remove i40iw
> date:   4 weeks ago
> config: arm-randconfig-r005-20210701 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e7e71e9454ed76c1b3d8140170b5333c28bef1be)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=fa0cf568fd76550c1ddb806c03a65a1a4a1ea909
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout fa0cf568fd76550c1ddb806c03a65a1a4a1ea909
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/infiniband/hw/irdma/uk.c:934:6: warning: variable 'total_size' set but not used [-Wunused-but-set-variable]
>            u32 total_size = 0, wqe_idx, i, byte_off;
>                ^
>    1 warning generated.

Yes, Tatyana please send a patch

Thanks,
Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210705160421.GS4459%40nvidia.com.
