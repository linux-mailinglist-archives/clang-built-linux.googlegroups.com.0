Return-Path: <clang-built-linux+bncBDKOZ45RYIGRBXMZ4WAQMGQEMWUHXAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 15065326773
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 20:32:46 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id f81sf10927101yba.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 11:32:46 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1614367965; cv=pass;
        d=google.com; s=arc-20160816;
        b=SlVHDav+dUC5LqB69sgla2IcjZfWBfQbXYiiK+eCgRGsjhoDCKATnLW9ppxRqiwEaO
         ed197U+5cYkpAShMb6vTJnJpi2yYJouxqjIdgRYUcVEEx3KF2g6Hh0rS5a4/WhwXanT8
         aUHuBhQ4iE0QNzMZLiE4fVQM64m9LXgRSIbc9NuI5bFqXgHktrx8G4UJJNo2BPZhGpyQ
         yYA2WK8yUK1FjLDvP+UsixRAou9d/iI5OSapPY0aJyjguVunB9Wpz69OEyJobngDu10d
         A40MnUVIVFuxHYXJk+hAfzVPz8LmkLRk+OrZYaqeeSv81yn47xGBcFCFdgyqs16zRd+h
         B5oQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=IsAc8VkokKkRLwgO0cHGDBz6LBnzoc/mYRNV5FZNlRU=;
        b=wG1neTymbnP/ujVX5hdWoe/8ZcYO3MPVXirGN1PGOYk0uPkofBjiDZLnXomVum+f8y
         AYOnJFtsvlYccn0ZFNorTN9DCVC3621XtLq3/s82x1QGEjMIrOqjDfscy6wQwa1vqwnv
         1RgWoeRMtmnbOSfmtPmRCdQzc/oKPKvovgx0GnE4S781S4xVWAmd1jbBFYbEUcc7zXCX
         RGz/tk09P1Fnq1THVyGK5bNxKYayu+7Me+IrPassBGnV2vjITFSlBd9m+Cq2WkMk3okT
         0FYZEwrMJTIpr7hNVMCn3Jx8dtujdNGmZPWPG8L3r6joksTmbcH0ClYyJdNSBphVC+jh
         nRJA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=visionengravers.com dkim=pass dkdomain=visionengravers.com dmarc=pass fromdomain=visionengravers.com);
       spf=pass (google.com: domain of hartleys@visionengravers.com designates 40.107.223.133 as permitted sender) smtp.mailfrom=HartleyS@visionengravers.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IsAc8VkokKkRLwgO0cHGDBz6LBnzoc/mYRNV5FZNlRU=;
        b=VBcAwDknRsP8SWHAZbdpJw/B86nOf9Eul9rCPq3vUm6gD4E14L4r02LAQ6/W6gpAEg
         c80Rrbjluo53VcGNrM718FLU3pUuwZu1iGB23H6IQN33ILU4lTsA82kRKjUCjsFQfyRE
         NCkFB5L3Q6M97Xqhma79l+99hgmtq6X6eSfsyTfQnc4dAAy8JaF/E3tahq3kxZuPBf+Y
         ikcUoD30L7vaL8agTNzlEbZOWlAYNdJetudFfxp6XGx6mOW6LAHxMHLsK5xqnDqsYdEJ
         JOus8Ky/7yryClzHuWsnSZlQ5gpSX4+INdbFdo98KkXp3EatOOOY6BWRK9Yrb9H3Zj4O
         mrWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IsAc8VkokKkRLwgO0cHGDBz6LBnzoc/mYRNV5FZNlRU=;
        b=h+pK5+vNZyj6/sIWxFGjIWgcX6VVcOKuOUuQxltTiQhl7f/mlKVGoOpKTA+d29HEBH
         B6GzStbVABzmUUGbINkwYGz7GNPuo43BvAqHsBG7fJDJBcsk4OawLCdkNbiNLsxp5/54
         AdESPslIo+VlXSBL9qs5rWaltIcdDuwq4BQ12c7W7VNXlmnG7qMAUuXyW2yg2Ejm9Ze3
         lvQOA1Jq0HCgaf2fdHcaiIqjyU5YmtRaVem6mXStFzt8kDFc/FInw2kCV/Ou9Z/YqyIw
         Q76QF5vr/ycrasH8zST4ofOiOEig/OsEMS0ullDFCsGLyxA0wM8HXbEsXO+Z+Sxc/GPg
         0SWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tryClQCZcwXPG3+DLijS6qL2MJh+nJI8n95Cc7OTqnplfSJY+
	Pnq0MBeVMKgvkBWVV/EF7AM=
X-Google-Smtp-Source: ABdhPJziJLc0Nfaz8uqiuOvwNjkFLeH5oJTjVMLx0FN+E97NHrmZ/AcnqwF8Hr2JZFXBLSrQCFgzBw==
X-Received: by 2002:a25:818b:: with SMTP id p11mr7178024ybk.330.1614367965139;
        Fri, 26 Feb 2021 11:32:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:68d4:: with SMTP id d203ls4709950ybc.9.gmail; Fri, 26
 Feb 2021 11:32:44 -0800 (PST)
X-Received: by 2002:a25:c084:: with SMTP id c126mr6836102ybf.140.1614367964737;
        Fri, 26 Feb 2021 11:32:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614367964; cv=pass;
        d=google.com; s=arc-20160816;
        b=bqEbLoO5ty5iX2CBtZkvU2N+0MWlZoeuxXDjW4+J1KfiUzS7K/EfZY7VGYn6Q1B5iw
         /qUkqYfh/Qn5eZHPu1O7NXUWD2EjohP0HqYTQ7MkzjYyaqx1yVlIQXEbxeG1BVLggMQu
         r8J+AfwJk3pCAKe5LqPAivNastgC/YjCig+Uv5a9gj9Tk8I6uaqS1pMJyRwGQvUuvJfv
         tfdGia2rX7G4en++s2dWFRJsaBRunEY8IaN59mIQRDnuIRPv3ziBKqJ+AWfFfM092VlI
         XX6HTpGMy/OCW4X7RyltFFrUUwj5fHjp8t37VMgdwhUuPsSX4lYlzvBxsGNOxDobmuWw
         xGDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=HLTRQFueVRhAB0K40qdJE/0p9R/1Wtk230ZcsqWFPQk=;
        b=cBRwbEc0nnLLgiMjrftO6j57LT+vJfKinpCMHsXXBZ0XlcvoSKiKvO1nSUj8Qjii+j
         0iH+2RXOxV5aU17ds+EMpGaS5r7EAKbg5ipRPMi4vSYNJ2rjwrMazk21fZfZCqskixws
         hIpmiYvU1Ay0N6QBodH7//e1LsZaakWkqDSVtekPdnZgU9O55SQ2umW8lib8aFk6+sHT
         v/Vl5l8QU2KuysymjuUFlGgBDeqOGFW0ATxR7Q0L09YpSdT0cedyDrP2EEcFvY065F7q
         Gm3LXcD5LWxZYe/XjaMX8zJvI5rHjSDIdkbXf7EbM9o8DzBO041I0cHTALLMV50oUr1p
         aobQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=visionengravers.com dkim=pass dkdomain=visionengravers.com dmarc=pass fromdomain=visionengravers.com);
       spf=pass (google.com: domain of hartleys@visionengravers.com designates 40.107.223.133 as permitted sender) smtp.mailfrom=HartleyS@visionengravers.com
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2133.outbound.protection.outlook.com. [40.107.223.133])
        by gmr-mx.google.com with ESMTPS id i194si688619yba.2.2021.02.26.11.32.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2021 11:32:44 -0800 (PST)
Received-SPF: pass (google.com: domain of hartleys@visionengravers.com designates 40.107.223.133 as permitted sender) client-ip=40.107.223.133;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bU2ROT9Aso8+lHchjvd4j8+cwj51O9I1SclKMwcUl1NEAktmP9nBDs14fWlc3NoOHvlnmR0ow9RTFuHBPYEskqWxuWdOP9wPHwY2V7pAeP7hBi3j6oE555z3SPa/4pU+PXjVB5HePlwze825ceOzHNM1m7seqIcQkOkBJLJ7ZMhr3tqKqproy7HSxD4hJYRLqdKKkJz+Dw04g7KXEE2VOe5aLVPGt+MFzgZwM0hLc4+xVCgrlv+fah+be5L50BdHP7V29A9daZ7V9PfzLXmFT92clZLXMHqUuAQxXyg+K0AU55vRGIqzTaEVc+OKLN4j5lB+Ijo8gqNhyEAYBphmOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HLTRQFueVRhAB0K40qdJE/0p9R/1Wtk230ZcsqWFPQk=;
 b=gmUzY5g5OcgnE/v3c8ChInnAjVZKLkrcaGUD9EoK3uFOpJrhiOoqK2TRQh/xWfsH7LZiBulptbaJ/ovKeTPVPcEw57/SrFHMEnk62YMiNoy2O1HeuDZpENQbLrteib+K+qxgemi71CbwpVfVSgrMTHlKuRDgiqt5gSqubKsavBOohM8GuMZ8f9ftaxlE5Q/P74D4RZ8aGsGqfGhP5MDhqFn4/dsDvfCEn7ER91TZbBoeAr5EhCddNHcTVnBVgQWnVgFLt/KUP5m80IdqjF4gdFInqfk/Mj/1IF65viRfG1RKetZMh8BCfd7aG38LFP8zc96xVJRjpdbM6uMtm4N5wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=visionengravers.com; dmarc=pass action=none
 header.from=visionengravers.com; dkim=pass header.d=visionengravers.com;
 arc=none
Received: from BYAPR01MB5621.prod.exchangelabs.com (2603:10b6:a03:118::32) by
 BY5PR01MB5779.prod.exchangelabs.com (2603:10b6:a03:1ce::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3890.19; Fri, 26 Feb 2021 19:32:42 +0000
Received: from BYAPR01MB5621.prod.exchangelabs.com
 ([fe80::c4cc:6fb9:44da:e2dc]) by BYAPR01MB5621.prod.exchangelabs.com
 ([fe80::c4cc:6fb9:44da:e2dc%6]) with mapi id 15.20.3846.041; Fri, 26 Feb 2021
 19:32:42 +0000
From: Hartley Sweeten <HartleyS@visionengravers.com>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>, Arnd Bergmann
	<arnd@kernel.org>
CC: "soc@kernel.org" <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Russell
 King <linux@armlinux.org.uk>, Nathan Chancellor <nathan@kernel.org>, Nick
 Desaulniers <ndesaulniers@google.com>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] ARM: ep93xx: don't use clang IAS for crunch
Thread-Topic: [PATCH] ARM: ep93xx: don't use clang IAS for crunch
Thread-Index: AQHXDF6daAHoIbKUtEazeMb2p7+FnKpq0PYAgAABKaA=
Date: Fri, 26 Feb 2021 19:32:42 +0000
Message-ID: <BYAPR01MB5621DC2003DA49EA64AD46A0D09D9@BYAPR01MB5621.prod.exchangelabs.com>
References: <20210226164345.3889993-1-arnd@kernel.org>
 <141f3098744ea8d1cc39abcdce89c0e513bfbc70.camel@gmail.com>
In-Reply-To: <141f3098744ea8d1cc39abcdce89c0e513bfbc70.camel@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [63.230.248.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5adf1bbd-676a-416a-4dce-08d8da8d4915
x-ms-traffictypediagnostic: BY5PR01MB5779:
x-microsoft-antispam-prvs: <BY5PR01MB5779019AF9CF17B1E1AFECBED09D9@BY5PR01MB5779.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BTCSu9be5eLB8ZVIFygNk4Juzma/ElYzCmn2x0tpFg/g5QQjarX9Q1Jd1ShkZ0ghyf8F47SsQTYghTTwRWNQ2LsVZnKCRBbMYmJUg9/uhj7nYQ+IxjsS+Ka7c2WZOre5YXrOy+S8rgm2tB1ZBXx/OGKTAh6qZkZxjEMMWBU6VVQFEX6SsAydR7WWU6p7UBzuRF+arql4PCCunb7smm6c5k5T+dQUo5nFSzPUqD+RDHuAOFcA7IFjetrnLRz44QpkVlnBliDLw2/DWoLosA4Yyp+SaQByd0BNAlPboChe6nv+h6hvlQW0t5PBY/JSB8HmIraUBLiTyu2ezaUQ0KRkTQBGNepoJHqLheQz3QdwpiCnsa9sWJb8c67wzvg+8iTy/nZzwEh5NdGncFFlv9JMgp+3l/fTvE+mt1UVfjbwuCoiT01w2m3FhXinlulqcRh5rmWgtcVlqR14YZSk1zIDraocNXrn2mLrl+qoWPvn6YlBCSBH10I7NCSw9TgA0yIXsjHbdgKFBWeZWGtdiI8esQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR01MB5621.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(346002)(396003)(366004)(376002)(39840400004)(136003)(4326008)(110136005)(7696005)(7416002)(186003)(8676002)(66476007)(66946007)(5660300002)(8936002)(64756008)(33656002)(55016002)(76116006)(2906002)(54906003)(66556008)(66446008)(52536014)(316002)(478600001)(6506007)(53546011)(86362001)(71200400001)(26005)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?utf-8?B?eGVGZFF3TmZCR0NrdkJjU0tkOEU0dEdsbE1TcnRVdlliRVcrdzdEb2xrVVdB?=
 =?utf-8?B?UzVtN0JwbkZmdjFuWlVnTkMrYktpc2t3Y3Q3b1FPZ3kxRFlKYVluL2MzYloy?=
 =?utf-8?B?WVA4QlVWTDZNc3dLelQyYTY5K3hiWHFENk52Rk5GbGE5M2FWRXVDL09YbXFk?=
 =?utf-8?B?K0dqQVlIQitwUzh6akRTRGxzRVlndEZCU3J3eDE0YkxRdTJTTDlkb2ZOMXRs?=
 =?utf-8?B?bjdXQkJMV3l5ckFuR3JhdVh4YUxmcE9Ya21iWHhXTzdiRFZ2OFd4UEVyaUVn?=
 =?utf-8?B?UFZCZmVaQjJHKzUrbmdIZTArZzAxSCtrLyt1QUIwNUNVZkQwZTErMTUyMkl5?=
 =?utf-8?B?TmdzMTJkSTBNUDlFbCs4TWFsWHVmaWNpQnBaMjdiYm9hb1ZhSjZNem9NSHFQ?=
 =?utf-8?B?ME9DcksrZ2Z6RDNGSGgrMXlBSHpoOHVydHFXOGVhbGNOcC9zbWhMa2ZCRldj?=
 =?utf-8?B?ZHB6L0xOcHlHeGZUYUJ2UjYxaCtIYlp4eUQwWUt0dmZBT2drUjBtMnhjQ2V6?=
 =?utf-8?B?WWNYSmVJR2ZKQzh0dDdMdWkzQU5UdjN0S05haGM2MGFnbktQYllBOE5DRzRS?=
 =?utf-8?B?bnJmaXNRTTA5UVFJaW5oWExWVHY5T1ZWTjltKy9XcUNjNnNyTGlmc2hUMGVV?=
 =?utf-8?B?MU9YS1hCQm53bVJKK2UxdFJWTVE3RUhsNzJwQlJYTURGWXRBR0RiZzJoQVRu?=
 =?utf-8?B?Y0NXYzRjTTd5YXRwMDNnV2NpZ0xGRHZBa0hzYjJrdVBtSzJSd1YvbFduNmFN?=
 =?utf-8?B?SUlLTC9FSVMreVF0ekg3czZsMUlGeXRGQlFhakY3QytNSUcyeDlkN2lwV20w?=
 =?utf-8?B?YjNza3RpRWtuMXpSbVQ0N29TTjN4THBob291cFRpdHVwQUNNcG0yT0tBWFQw?=
 =?utf-8?B?NlNtcFkxdzZWeitvUkV0UEoyeitsUFBnTkdSK09aMDVpY29LajBUdUxkcXNY?=
 =?utf-8?B?RUZBSHppck51VnU4SWlIUkl5dW5LK3VsbnBnQ01pWU95SEZYOWJMWmhlYUE1?=
 =?utf-8?B?eldRR2xIcWJ2RlFQT0NIL3V5WnkyL2R6VXZHM1phTlNDUTlSQjdiTEJDUEw0?=
 =?utf-8?B?emlScVFIT0tEQnRqbVJwLzFiRm5yWTZLeC9PaGpzOU9DRjU0amJManZ3QjR0?=
 =?utf-8?B?SStVdjdXWmxmYjlNTWVzSitJTlZzTTA0Y3hCc3cxUnNOWDJOQWJQRmRPcjFm?=
 =?utf-8?B?b05EcFlQK2Z3SjZzQWxreUdOaXp6Y2xFMll5emk5M2lwa2pqWHBZL2xvTi9V?=
 =?utf-8?B?ZVdVdDB1UXU0cktkSFovUStBdlcyS0pwaFZUMHUrSVltbGlQYmNUSGFPNldY?=
 =?utf-8?B?L0dMcDdubStKUVdrTlVjU3p3ZnlqVTZsQUlINWd3MmZUQ283WGpiOEszWFhh?=
 =?utf-8?B?MG5NNmEvcklZanVNY0dEUTFmU1MrZkVCbUZOZ0diWnBScVRUcW85b1pLUEVq?=
 =?utf-8?B?YUtCLzNQWFlGbXRjbVU0eTM1d01oZTdXR1l2eUl6SmtMNmJsS0tPeTVPL1Fy?=
 =?utf-8?B?dkhQUzNIb2ptZytraFh3WjhZYUtzUU5mdmtRWlVQU2J6bUJZS25YaURFdk1P?=
 =?utf-8?B?bEdlM3g2ditpUU5WSVRZUDVJRENuMk5mN0hlZlMwR0s5RmdiMHBBYnlFaDZj?=
 =?utf-8?B?a1A4V1l5Q29mcEVFSFZyT2t5cXlrZkI0dHJYL2RPM1c0MUNOY2JHY2E4L08v?=
 =?utf-8?B?ZkRnRjlJMElKbThJb2dOelJKTmJvY3pKUXVIMHMyVmNiMFZRNllZK0M4c2Nu?=
 =?utf-8?Q?1x70yMGxha/HVbGKMt+b6OM8/88bYZq+cRrLoQk?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: visionengravers.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR01MB5621.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5adf1bbd-676a-416a-4dce-08d8da8d4915
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2021 19:32:42.3382
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d698601f-af92-4269-8099-fd6f11636477
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wxbxpkg3ioBuT9PFI+BlR4MV3qWdJlLBDObtI2qVws4uE4WUew+kwpLeCmGydQ1gEuTO722H/2Ae3qlhbiDdKfbcSA3KEm/H84dJPvN5FDA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR01MB5779
X-Original-Sender: hartleys@visionengravers.com
X-Original-Authentication-Results: gmr-mx.google.com;       arc=pass (i=1
 spf=pass spfdomain=visionengravers.com dkim=pass dkdomain=visionengravers.com
 dmarc=pass fromdomain=visionengravers.com);       spf=pass (google.com:
 domain of hartleys@visionengravers.com designates 40.107.223.133 as permitted
 sender) smtp.mailfrom=HartleyS@visionengravers.com
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

On Friday, February 26, 2021 12:23 PM, Alexander Sverdlin wrote:
> On Fri, 2021-02-26 at 17:43 +0100, Arnd Bergmann wrote:
>> Randconfig builds with ep93xx fail with the clang integrated assembler=
=20
>> that does not understand the maverick crunch extensions:
>>=20
>> arch/arm/mach-ep93xx/crunch-bits.S:94:2: error: invalid instruction
>> =C2=A0cfstr64 mvdx0, [r1, #0] @ save 64b registers
>>=20
>> It is unclear if anyone is still using support for crunch: gcc-4.8=20
>> dropped it in 2012 when it was already too broken to be used=20
>> reliabled. glibc support existed as an external patch but was never merg=
ed upstream.
>> We could consider removing the last bits of the kernel support as well.
>
> This was my impression already in 2006, that Cirrus is not going to work =
on Crunch support. From my PoV it's OK to remove the support in the kernel =
completely.

Martin Guy did a lot of work trying to get the maverick crunch working but =
I was never able to successfully use it for anything. It "kind" of works bu=
t depending on the EP93xx silicon revision there are still a number of hard=
ware bugs that either give imprecise or garbage results.

I have no problem with removing the kernel support for the maverick crunch.

Hartley

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/BYAPR01MB5621DC2003DA49EA64AD46A0D09D9%40BYAPR01MB5621.pr=
od.exchangelabs.com.
