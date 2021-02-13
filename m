Return-Path: <clang-built-linux+bncBAABBGVDTWAQMGQEXX4NQKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 011D531A9D5
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Feb 2021 05:12:10 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id v6sf897214lji.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 20:12:10 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1613189530; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ndbv3GyxGgCGYExn21Z4h/28/QmwgprzPLG90m/E6EPx6bqOwmPg6+hPU5Rr6TqjdW
         rigXY75AxDBJgXZkhBbuUYmkpGXdXxwSwrEBi48szjge0K8fBxUQHshpxGvMKNXKwcDL
         IFSMKRdbgpi5rKf1uJbowipewj7c9NrwF8eQd1t32cWGtmzrrkMNbDDJrNH/ehTe5+kD
         6Qm2XowB5QZ8WOyzibDU0+RhwCyDqEUebz7sAhVoIvLdPom2QnSuRQwbDCpxW04z4lSQ
         FQyU4jPMwMdd1XBowCq6By1fL0RI24jtr1dKCV/xttyGEt5v2y9gsQbs66qLhmIWZ5rj
         mBLA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:original-authentication-results
         :mime-version:content-transfer-encoding:nodisclaimer
         :content-language:accept-language:in-reply-to:references:message-id
         :date:importance:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=Wxmh/kX5ou6MusR50YV6Vh7DTPd6RdFZOeZpd3pKRBs=;
        b=ZyhsS8zp3kET49ADeNZcF4FG4FIZ370IaIhmTjv8GaWZl0FdVwEL30737bNOMCnaKQ
         wjYip56gu03/KKeDkGdILN6tjDDb4Nk55TRSoItSVrfhmaOVQak+6qSxSbbFlXQ+AIvo
         nlxaaZGFJ2xtvGhWk0kNkprWv62P2y0DgNKpLxxbhudS+cXbJeSaaWr6b+16zGXyrM83
         dyIYQlIESVho5Rnfw7gyy1vITC0E+mCbdhgSAlrCWCQx5TakqRPZ0nfKdLI0RbC8/0A5
         nl9U0dkmf/DSSbehgH5+E8g2Qxi7vzGT6PKfbu88/tBOi8Guyo/Z0XBijbeuLPTtKdtu
         nLEA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=g6CT8XMu;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=g6CT8XMu;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of jianlin.lv@arm.com designates 40.107.21.58 as permitted sender) smtp.mailfrom=Jianlin.Lv@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:importance:date
         :message-id:references:in-reply-to:accept-language:content-language
         :nodisclaimer:content-transfer-encoding:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Wxmh/kX5ou6MusR50YV6Vh7DTPd6RdFZOeZpd3pKRBs=;
        b=AdpXNL3R8XyLYO1HbxRVzCxFNL1O7dJeK+ONIjkEjYDLBU27iXufkXcB1RsQ7hfYrM
         B+14KNMAQGJUvKn9m1J3OZP6x8JLvAPALwOmcbIm25gv8sZ7tjsmsG8lGNRtCtqDNozP
         c8D9gTx0WyKm6z1fIm1fzmIqpEl+leLiSs/4S4tXMGkJU/XM0h3cXMnN2E3mUkwUi/FA
         +XFtelUYl18Ni3W5ik3X9ZXrQh7hMOG54drsEftdpWbJaymgHDu3N5oEUB7R2Nn3ralc
         fK6U6NEotUDvXEEKa9MYmRIjvaRLLVwgIZz/mnXc7ilDOh0BiDluU03vefm8oaa6KnEu
         Sxqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:importance:date:message-id:references:in-reply-to
         :accept-language:content-language:nodisclaimer
         :content-transfer-encoding:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wxmh/kX5ou6MusR50YV6Vh7DTPd6RdFZOeZpd3pKRBs=;
        b=gF2q9CFOpmOpvaPcnOhL0nwMVwX+s6LdCQB/dCi9RLC64Vu+OfP207eI7Qb6ebeumb
         9jDsr96czzvjwlS4ptXEI2jngqyfiHzY1S741Jz4DqaHwuLuUWIZbgs6RZanGsFDDvBS
         UZfuPcy8h9cj23WoZHr07KF6lxZfnLCtBpvd47BxMlJBmLbhOoEpRudansk+M5NVYyrk
         JgF38vKhNpS87qAlLFhPt9kz6gilVm/9orIccCoGLDPBUsfcQwpxP8qkY8nALLtLpi9s
         sfJ0DOOClMCftJfTlHJqfiU3aSpwM1Fju32ccOwOHDysffEUTvciI1xo6tQfu3SPwN61
         GT0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BBWYW7XbQKpdEkCAjQMsf/Y5w17fcw8SjGYt5dRdeytizWQiJ
	69JzpzzFxApYADndrCgxEFk=
X-Google-Smtp-Source: ABdhPJxRefLeYVJRABjhlPi5gEV9o7J99smo+tylHr/DcbMpJvI5K8Hq5VT72EaT9wbBU1TkKCjWLA==
X-Received: by 2002:a2e:90f:: with SMTP id 15mr3424472ljj.7.1613189530425;
        Fri, 12 Feb 2021 20:12:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6d4:: with SMTP id u20ls1884207lff.1.gmail; Fri, 12
 Feb 2021 20:12:09 -0800 (PST)
X-Received: by 2002:a19:8b09:: with SMTP id n9mr2973735lfd.117.1613189529464;
        Fri, 12 Feb 2021 20:12:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613189529; cv=pass;
        d=google.com; s=arc-20160816;
        b=sQ9rwQTT8EMcIQAU7u2H/HYC0Fp0IzazIIhpuvn6RDZDrCLeS5PJ4QjCvvD79g1W8W
         2Qi1rw7OjOtMsosBHEdTboGDqWmHWFKhoLTvYBmKqOHUqJ2fNDioNf+sEno4GxODTdu+
         t0m8MGAaayM0LUH9rejlJ1iQfKJYMxzYoDwiwoOBwHddPdYIO5v4tG9kE/c795I+UEgD
         nRYcrcnFTXZvGHYbNMN8fbnqaBuiFo36rvQdVyItG6BZWVAfmmpj323Bq+SruCaOC7f3
         M7nPNyjXdPtV5CX5t8N2iRI9iov+qTW/qYveCvP/OGBYHojRDShZrm0PkTEdlQt2lbfd
         UahQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=original-authentication-results:mime-version
         :content-transfer-encoding:nodisclaimer
         :authentication-results-original:content-language:accept-language
         :in-reply-to:references:message-id:date:importance:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=zo/mwwYMVVd45SPJlljwhLt8aeVG7Twnx4Advj8BOA8=;
        b=GmhGTQSEozwXpKOFhv/ZYRyW2pOJnAzL9NvEnNhMELq1ydw6YsOPtrtTPeaBpBbvF5
         eFwjvtdy4OK8buRdfjUCm/YKIQ/0UOhB6g1KJsHh0M7KxOmKHt3T9URHERfV6ReULG8m
         0MS5pY8ApC/MAIjCgndtNZq0KW2HLXRJmNosyI+CtAASD3hg4p+4ZNW2dW1kLKjQZlu7
         yvntAHrWHZh1t17V4l67CUzRzHPK797TiqJeOQPmDpjyKaH5kGl6kO1Incpy0I02Zy6u
         bLXQ5LJ7BGy25SUMHZ2PihOhBflB7+bqywkdSPa86XtmlbFkVtyWHTkfXm4Vk/RyF5ni
         XxDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=g6CT8XMu;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=g6CT8XMu;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of jianlin.lv@arm.com designates 40.107.21.58 as permitted sender) smtp.mailfrom=Jianlin.Lv@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2058.outbound.protection.outlook.com. [40.107.21.58])
        by gmr-mx.google.com with ESMTPS id 28si453473lft.12.2021.02.12.20.12.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2021 20:12:09 -0800 (PST)
Received-SPF: pass (google.com: domain of jianlin.lv@arm.com designates 40.107.21.58 as permitted sender) client-ip=40.107.21.58;
Received: from MR2P264CA0028.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500::16) by
 DB6PR08MB2775.eurprd08.prod.outlook.com (2603:10a6:6:17::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3825.30; Sat, 13 Feb 2021 04:12:04 +0000
Received: from VE1EUR03FT050.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:500:0:cafe::d6) by MR2P264CA0028.outlook.office365.com
 (2603:10a6:500::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.35 via Frontend
 Transport; Sat, 13 Feb 2021 04:12:04 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; googlegroups.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;googlegroups.com; dmarc=pass action=none
 header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT050.mail.protection.outlook.com (10.152.19.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3846.25 via Frontend Transport; Sat, 13 Feb 2021 04:12:03 +0000
Received: ("Tessian outbound 4d8113405d55:v71"); Sat, 13 Feb 2021 04:12:03 +0000
X-CR-MTA-TID: 64aa7808
Received: from ac18dafde195.2
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 7D84270D-603B-4BDC-A2BF-93FD33EA3B9D.1;
	Sat, 13 Feb 2021 04:11:58 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ac18dafde195.2
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Sat, 13 Feb 2021 04:11:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WVuQQnjjzbOkZBrPJGWP7608pkw4+1jUQyrI8Q9Uukc7KWYiiAukoMJFhIz9ZoE+baDnbCxKADLk8A2KTiJIcfsk0BBiB0Ss9FBh+IBzDjoZJZV3tCVcVV2xgGUQi+wWk+gV4v4YHHvUsBiPb2aNcqD8o732Y4M7q/Hzlut8gAA+CLrRSaDXuPJIxB+Gakbv/dWVdFGpz3Ew+11oxGzsp4olf06X4P3BthGg9AJZojTSgXQQo+Awl0R+BJZaEfX9BBlLoiiN6Ax/O+gcDprIQg8YAGzXXArDpxGNDZM/1UN9qnktPs5QqNzPADx4KMctq+xgGBRRtiGGjP/9AEt5Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zo/mwwYMVVd45SPJlljwhLt8aeVG7Twnx4Advj8BOA8=;
 b=F0lTllUy4Lu3NypEUjgjn2CR6C6zMJYqZwBAHqoso9vM2F9H4BKucf8qPSOW9j9BQoZc1+tVz1NRr+xifXz6/hOd97fKHO0zdOUrmwjvXbqP2qYzZdEwbhFVo6NBzdjo+z8GOeadcMoIINA6eTVKiEIAGwmu1zNrurdX6ymEU7cwpUZc5vApGmAEDuNqUUP8g2lAN9OGkz/VauKEl/w7jiyAZTZhL2YujcA8bs9pi8ljhzbx73aegoBnQDMTj/GQUNplimAVIbfdCs/LGZvp73I7up6D2PpdmOribmmEv5VJXaWNu8koSzqA+94+XZevQMk2QZySaBULEWrR2J928A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Received: from AM6PR08MB3589.eurprd08.prod.outlook.com (2603:10a6:20b:46::17)
 by AM6PR08MB4312.eurprd08.prod.outlook.com (2603:10a6:20b:72::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.27; Sat, 13 Feb
 2021 04:11:45 +0000
Received: from AM6PR08MB3589.eurprd08.prod.outlook.com
 ([fe80::d4d5:2dd2:1ac5:ba34]) by AM6PR08MB3589.eurprd08.prod.outlook.com
 ([fe80::d4d5:2dd2:1ac5:ba34%4]) with mapi id 15.20.3825.030; Sat, 13 Feb 2021
 04:11:44 +0000
From: Jianlin Lv <Jianlin.Lv@arm.com>
To: Arnaldo Carvalho de Melo <acme@kernel.org>
CC: "peterz@infradead.org" <peterz@infradead.org>, "mingo@redhat.com"
	<mingo@redhat.com>, Mark Rutland <Mark.Rutland@arm.com>,
	"alexander.shishkin@linux.intel.com" <alexander.shishkin@linux.intel.com>,
	"jolsa@redhat.com" <jolsa@redhat.com>, "namhyung@kernel.org"
	<namhyung@kernel.org>, "nathan@kernel.org" <nathan@kernel.org>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>, "mhiramat@kernel.org"
	<mhiramat@kernel.org>, "fche@redhat.com" <fche@redhat.com>,
	"irogers@google.com" <irogers@google.com>, "sumanthk@linux.ibm.com"
	<sumanthk@linux.ibm.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH v2] perf probe: fix kretprobe issue caused by GCC bug
Thread-Topic: [PATCH v2] perf probe: fix kretprobe issue caused by GCC bug
Thread-Index: AQHW/3XNvm0aeC2DrEW7u2Af0oYL66pVDqeAgABthgA=
Importance: low
X-Priority: 5
Date: Sat, 13 Feb 2021 04:11:44 +0000
Message-ID: <AM6PR08MB3589C4AEE6A498780DBBFC76988A9@AM6PR08MB3589.eurprd08.prod.outlook.com>
References: <20210210062646.2377995-1-Jianlin.Lv@arm.com>
 <20210212213405.GM1398414@kernel.org>
In-Reply-To: <20210212213405.GM1398414@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: BED7862F2A6C9E46AA60087890BFAE30.0
x-checkrecipientchecked: true
x-originating-ip: [2409:8a1e:6f2d:b50:7014:e115:bf10:1974]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a6ee798b-9df2-4117-0566-08d8cfd584f4
x-ms-traffictypediagnostic: AM6PR08MB4312:|DB6PR08MB2775:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB6PR08MB27752CBC7AE6BFE17B4792E5988A9@DB6PR08MB2775.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:397;OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: mHCFwCi5nYef3/V6SaxVlXgRxHZsGlYrZOjDR7mUQN4NiugfKTUzd7KgqhUaoRae2Srz0hCQcFUntVDg+kMvv1PTpQX6lLGliX5YQ5VasZQJXZAgaj5bm4UVT/LCxaKeQlvjHHxAx/mVGQQV/9Gvi1IE0nhM1th6YUKijvSmS3LVOnT/RaCyuUeR4mI1RKKgWGPNGRWTKElxe4BpsgCYWImKLpzJIACs2SfFRLfgldVTwrdI9K+3iF6TmGiITW7ZLD4b/p15UNGQpthWaT5A5fFR78S7shVl3vaclbjjulv5Fk2PndDX7Vy59ETwMazUe2DhacgvHzBHc/9CKbZ5i7j6HmyHU6qC7qh1l0SA7hk6GcnQSJaiuUXNUni3Yi2K+0+awaBekTFLlk++1IBINtqJPxEZxek/5XhIi/bE5FY/YKhfnsOqXmyn6HaF0eG90ymZk7vrRYk01mk/bYgE+GtrlZCbB1N+m8mU6vuHikB1YUAdPrALyuGe1W2FVfaRTms4WozLGV/k8nUIfVHGWIu8qaxm3F/PrKe4jkVEFP4OfFKeOLryA5N0DIqNjUhGY7ENR2PD/+SUznVsR3gpfvuPvtGMFarlvCHz0WYFzhY=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR08MB3589.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(966005)(64756008)(66446008)(52536014)(2906002)(186003)(66476007)(6506007)(6916009)(53546011)(7696005)(66556008)(66946007)(8936002)(86362001)(71200400001)(498600001)(76116006)(4326008)(7416002)(33656002)(83380400001)(9686003)(8676002)(5660300002)(54906003)(55016002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?SISJujBrVrF/dt+rEFeTGA05adJUYQDdo7le6/5qAXOWyWwEORg55QZ9Lcwa?=
 =?us-ascii?Q?tB3CKAvrbGqgwRnL+yBeLoFtjDrGneaxgsciIr879alP61j6hRUR4fDgvf9K?=
 =?us-ascii?Q?9T6nTTY1IMCJ7TunhjCnRa7Ax/8atQrrcgQy5bWsKHeKsfzP3/ImRk7Jb1+U?=
 =?us-ascii?Q?sIZDYCMg1f05A1q/vnawuPj6ejHyy7Zpfe8GZTVAez/mA/WX0tH0fG16O8C1?=
 =?us-ascii?Q?i9Lk9cmj2S18HksY/6As5gBud3pgUCFLjL1SFMRxuCF34Xr24VuSaearcnyi?=
 =?us-ascii?Q?2IDdoJ/jK5D9Ix0q/X0bAN+SCorMwksUOsg7SYcNd9dCI/KS/pcsy2YpsikM?=
 =?us-ascii?Q?9cosOf1qGAaqi/QiFGCTaxj22Ng1FDwPO9gy0YhbRmPBFrjTmoX9gtfR7ikS?=
 =?us-ascii?Q?+bstg8hbfW4x+nl5yP9o2414Yod6xX/tdoog1WiBD+WjTiR/dfHQV81Od8l/?=
 =?us-ascii?Q?OYqgpZMTOoxZP1H2oIq1x4BIzSrorEMdRTA+USCsdOJRKjLg3syCvF4+gcsL?=
 =?us-ascii?Q?KQ2bDCud3mMGWLCs0Aum8Fh8Vl4A3h8YlViEIPj/wNWaWoEAXXsaLXHMI8Fn?=
 =?us-ascii?Q?FEYq8alWI9HDM89txlS6cxrfN8C9bSSndwqInVpDbGEsyO9bz93ow9gmI8Wb?=
 =?us-ascii?Q?HptjiqziM5LlIXAvh0yAlVdpvCK1SVg4glq4fRzcBkj3koD8z6ps9Sg0vU90?=
 =?us-ascii?Q?2AhvQWsiyilCSP6ekXsuv0mEtAZ33KrUFudtnVtrLHdPg/Hqm6X7+6qKujWO?=
 =?us-ascii?Q?/FMQMTwj7YiawwLEcl4omee68Awv5R0Gl9SDyczXk4N+F7ZjQQk9gnaZOZNe?=
 =?us-ascii?Q?6RBcboy7A8QRyZByfJuQ+bX9aJona1ggXjAWOPCiDUB9X5m/qZJ4TmvyTBy4?=
 =?us-ascii?Q?DO1fmlSAp7v2udNbD9xaFaWXwBoejm3BhfJKqQTibWTTCFAQZ48keEmDACX5?=
 =?us-ascii?Q?5VjNTRS7Uf35JIFlGodJ8kKRnq/Dr+UwT8PWuy5NPyUZI9V+X4VRGOiX8W3s?=
 =?us-ascii?Q?lvCqfqU4xH5MuUFTSxcvF2mg5I2RB/WKl1DhCoydcRl5B2gBuvIs2MfmASsj?=
 =?us-ascii?Q?glI8zObWAEOFnAqQZkA4oyYv3PQr02qCNH1HFH1oRHWVK9iTOtOOp9tQ9jng?=
 =?us-ascii?Q?Eu5QPWcx/eflWfvvqBfts+T2lKCNyE77JtOcDeea2XZxhcy5Sdpfd1d78HIX?=
 =?us-ascii?Q?yTsPK+27xdAk+2e6nZU7KOoUzVfKTN8bodAYLPyxixGN6zC0t9cgofxx2DuH?=
 =?us-ascii?Q?zXXYJNbf6l3lfuiJaaYJGuTV6M/bT23qeNJO6Q3tqo40Ic0pP+ce1lb7GDVU?=
 =?us-ascii?Q?CgfLtcqCAYe3vIEDeRmKj2jiLFaGwnH/vOZAkOJm//THLb+eCus5hMXxGtxL?=
 =?us-ascii?Q?OIzSEOh5l0OyfRAM6lMt3+0aysjQ?=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4312
Original-Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT050.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 14c70cfa-702d-48a6-0adc-08d8cfd579a2
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3MmtRaB6Af/2Yuys881G9zGiCvVdPbG00s9FjUCqGR0tXMHA8PpFBGDSTXHf2P9x0nAehCgG87LgFnQ5kZWL6WGYXPYBIXB5723RvSOjvP3ONO9CxjWf+dNAoHh99vqU0dDqlXtct6I3chkiLnZgv0fVSn3ZYqpCyGcScNegn0E9TBgMB8lo1uvAtfkikBXcLu/t0MSV/0FHv1dU2r2Reb0NsyxUDkWVPp67eSTyguUIuPwBY0dBASrq2m11uNXnmZmOJx86xRVnz/EdHnjP0IZnghWCllYkxfL0m+tTBJDksW3r+1KYD0Ma2b6SiOMtHqvVO1MN/cfYnA+fM2TuLwI6yjJGTi/uzwLWyiak9bceKHfAB6Ghf5lPLCOdybI+3bepJuJlpWEX386CqwKfE6+YQ08FsGoHQE260EsKt/TJLskK+rrY+hcq4vCka8kIoi4f6oGaFCh1MbMtqjtCT5XVmo1J6nhDCKswPlThegRYmlK/imvSDNJTph2Df5c0K29/40QRBeLsASZkfJey4V9pGCpq4EFB9dAJH1G9kq+vQ5/VHP19L5s1/nODBMtD+dIKxHPwkOeowGTLVWT+hOgUICEW2oYd8BiQ29GiHMvoRkZz03EFKZm41jD4ZJ23hzpL8p+SQsmJNQ7o8cll09I9ns8w4PdqxUvvk+dhXKLlKr1+FEHwK8au6QVgben9A26pV672FxlX2CNhWkTejZX541qLlzzLyUQmfJx/Ny4=
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(4636009)(136003)(396003)(376002)(346002)(39860400002)(36840700001)(46966006)(26005)(47076005)(4326008)(478600001)(70586007)(5660300002)(83380400001)(52536014)(966005)(6862004)(336012)(316002)(186003)(8936002)(54906003)(33656002)(7696005)(356005)(53546011)(8676002)(82740400003)(36860700001)(86362001)(9686003)(6506007)(2906002)(70206006)(82310400003)(55016002)(81166007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2021 04:12:03.6784
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a6ee798b-9df2-4117-0566-08d8cfd584f4
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: VE1EUR03FT050.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR08MB2775
X-Original-Sender: jianlin.lv@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com
 header.b=g6CT8XMu;       dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=g6CT8XMu;       arc=pass
 (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass
 fromdomain=arm.com);       spf=pass (google.com: domain of jianlin.lv@arm.com
 designates 40.107.21.58 as permitted sender) smtp.mailfrom=Jianlin.Lv@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
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
> From: Arnaldo Carvalho de Melo <acme@kernel.org>
> Sent: Saturday, February 13, 2021 5:34 AM
> To: Jianlin Lv <Jianlin.Lv@arm.com>
> Cc: peterz@infradead.org; mingo@redhat.com; Mark Rutland
> <Mark.Rutland@arm.com>; alexander.shishkin@linux.intel.com;
> jolsa@redhat.com; namhyung@kernel.org; nathan@kernel.org;
> ndesaulniers@google.com; mhiramat@kernel.org; fche@redhat.com;
> irogers@google.com; sumanthk@linux.ibm.com; linux-
> kernel@vger.kernel.org; clang-built-linux@googlegroups.com
> Subject: Re: [PATCH v2] perf probe: fix kretprobe issue caused by GCC bug
>
> Em Wed, Feb 10, 2021 at 02:26:46PM +0800, Jianlin Lv escreveu:
> > Perf failed to add kretprobe event with debuginfo of vmlinux which is
> > compiled by gcc with -fpatchable-function-entry option enabled.
> > The same issue with kernel module.
> >
> > Issue:
> >
> >   # perf probe  -v 'kernel_clone%return $retval'
> >   ......
> >   Writing event: r:probe/kernel_clone__return _text+599624 $retval
> >   Failed to write event: Invalid argument
> >     Error: Failed to add events. Reason: Invalid argument (Code: -22)
> >
> >   # cat /sys/kernel/debug/tracing/error_log
> >   [156.75] trace_kprobe: error: Retprobe address must be an function en=
try
> >   Command: r:probe/kernel_clone__return _text+599624 $retval
> >                                         ^
> >
> >   # llvm-dwarfdump  vmlinux |grep  -A 10  -w 0x00df2c2b
> >   0x00df2c2b:   DW_TAG_subprogram
> >                 DW_AT_external  (true)
> >                 DW_AT_name      ("kernel_clone")
> >                 DW_AT_decl_file ("/home/code/linux-next/kernel/fork.c")
> >                 DW_AT_decl_line (2423)
> >                 DW_AT_decl_column       (0x07)
> >                 DW_AT_prototyped        (true)
> >                 DW_AT_type      (0x00dcd492 "pid_t")
> >                 DW_AT_low_pc    (0xffff800010092648)
> >                 DW_AT_high_pc   (0xffff800010092b9c)
> >                 DW_AT_frame_base        (DW_OP_call_frame_cfa)
> >
> >   # cat /proc/kallsyms |grep kernel_clone
> >   ffff800010092640 T kernel_clone
> >   # readelf -s vmlinux |grep -i kernel_clone
> >   183173: ffff800010092640  1372 FUNC    GLOBAL DEFAULT    2 kernel_clo=
ne
> >
> >   # objdump -d vmlinux |grep -A 10  -w \<kernel_clone\>:
> >   ffff800010092640 <kernel_clone>:
> >   ffff800010092640:       d503201f        nop
> >   ffff800010092644:       d503201f        nop
> >   ffff800010092648:       d503233f        paciasp
> >   ffff80001009264c:       a9b87bfd        stp     x29, x30, [sp, #-128]=
!
> >   ffff800010092650:       910003fd        mov     x29, sp
> >   ffff800010092654:       a90153f3        stp     x19, x20, [sp, #16]
> >
> > The entry address of kernel_clone converted by debuginfo is
> > _text+599624 (0x92648), which is consistent with the value of
> DW_AT_low_pc attribute.
> > But the symbolic address of kernel_clone from /proc/kallsyms is
> > ffff800010092640.
> >
> > This issue is found on arm64, -fpatchable-function-entry=3D2 is enabled
> > when CONFIG_DYNAMIC_FTRACE_WITH_REGS=3Dy;
> > Just as objdump displayed the assembler contents of kernel_clone, GCC
> > generate 2 NOPs  at the beginning of each function.
> >
> > kprobe_on_func_entry detects that (_text+599624) is not the entry
> > address of the function, which leads to the failure of adding kretprobe
> event.
> >
> > ---
> > kprobe_on_func_entry
> > ->_kprobe_addr
> > ->kallsyms_lookup_size_offset
> > ->arch_kprobe_on_func_entry// FALSE
> > ---
>
> Please don't use --- at the start of a line, it is used to separate from =
the patch
> itself, later down your message.
>
> It causes this:
>
> [acme@five perf]$ am /wb/1.patch
> Traceback (most recent call last):
>   File "/home/acme/bin/ksoff.py", line 180, in <module>
>     sign_msg(sys.stdin, sys.stdout)
>   File "/home/acme/bin/ksoff.py", line 142, in sign_msg
>     sob.remove(last_sob[0])
> TypeError: 'NoneType' object is not subscriptable [acme@five perf]$
>
> I'm fixing this by removing that --- markers
>

Sorry for the inconvenience?
Should I commit another version to fix this issue?

Jianlin

> > The cause of the issue is that the first instruction in the compile
> > unit indicated by DW_AT_low_pc does not include NOPs.
> > This issue exists in all gcc versions that support
> > -fpatchable-function-entry option.
> >
> > I have reported it to the GCC community:
> > https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D98776
> >
> > Currently arm64 and PA-RISC may enable fpatchable-function-entry option=
.
> > The kernel compiled with clang does not have this issue.
> >
> > FIX:
> >
> > This GCC issue only cause the registration failure of the kretprobe
> > event which doesn't need debuginfo. So, stop using debuginfo for retpro=
be.
> > map will be used to query the probe function address.
> >
> > Signed-off-by: Jianlin Lv <Jianlin.Lv@arm.com>
> > ---
> > v2: stop using debuginfo for retprobe, and update changelog.
> > ---
> >  tools/perf/util/probe-event.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/tools/perf/util/probe-event.c
> > b/tools/perf/util/probe-event.c index 8eae2afff71a..a59d3268adb0
> > 100644
> > --- a/tools/perf/util/probe-event.c
> > +++ b/tools/perf/util/probe-event.c
> > @@ -894,6 +894,16 @@ static int try_to_find_probe_trace_events(struct
> perf_probe_event *pev,
> >  struct debuginfo *dinfo;
> >  int ntevs, ret =3D 0;
> >
> > +/* Workaround for gcc #98776 issue.
> > + * Perf failed to add kretprobe event with debuginfo of vmlinux which
> is
> > + * compiled by gcc with -fpatchable-function-entry option enabled.
> The
> > + * same issue with kernel module. The retprobe doesn`t need
> debuginfo.
> > + * This workaround solution use map to query the probe function
> address
> > + * for retprobe event.
> > + */
> > +if (pev->point.retprobe)
> > +return 0;
> > +
> >  dinfo =3D open_debuginfo(pev->target, pev->nsi, !need_dwarf);
> >  if (!dinfo) {
> >  if (need_dwarf)
> > --
> > 2.25.1
> >
>
> --
>
> - Arnaldo
IMPORTANT NOTICE: The contents of this email and any attachments are confid=
ential and may also be privileged. If you are not the intended recipient, p=
lease notify the sender immediately and do not disclose the contents to any=
 other person, use it for any purpose, or store or copy the information in =
any medium. Thank you.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/AM6PR08MB3589C4AEE6A498780DBBFC76988A9%40AM6PR08MB3589.eu=
rprd08.prod.outlook.com.
