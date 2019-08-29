Return-Path: <clang-built-linux+bncBAABBQNRUDVQKGQEVAEP3HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 269A1A24D2
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 20:26:10 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id x11sf4284249qtm.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 11:26:10 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1567103169; cv=pass;
        d=google.com; s=arc-20160816;
        b=0KwgtGwlMyt3H7VOHdmCuBURjTITfFVh+yrZII9dFy5PilgfLT73Qey4R2gt8y8Y84
         l/8o3F1SFv57icBzP+mT7KYeTsJWolXVgj1VXnNs2Wx2Kz5LB0bdQFAHGkpHqWBZM3ry
         C7gJYKJAa1CxEcIF6/y3LD9T0E6IQgW7sDatKC5FTU+B0vAd1DdmGnH0unpyBpn4U2aF
         xmF+n4zfSwQVSPxP3VtAPFQEJAJ3EFvbS8Clwj4PEeyb4RPy6GXNTz3TP8BMgEQV/+H8
         vfIic2LuBrFIXnAhiOm2UVMdXBxp+Q6dxbBwRAIYsP6ukj+QcLJgX3ZZM0bL3Pwmk0RO
         GG8Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=QCVxxlONR/ZSCeIwfTWcluV42qsgncjPfw7BeAgHBWA=;
        b=xRaS7yVgGOCpZtP/2g32S+7jKL8wgEo0Fd7+MjQy6Hq7FZdEBh6C4esKsrC00bg3we
         33S2uso1t9DfRVSfKO4TMohCGGyHZ6+AjxEPbMPBDC2c3P/QDk+v7JhFbrlzJCP2Sr+v
         wfEp/WhS3YoY7N/Ap27X3p682ZG3cHxC27EhhFvKjp0lCRM58YCO/Q4g6qWpPUB6oe/G
         BJ7vOmKVHCZWftMTONl3C1PulPE8CZtNGxF1kncA+IoWVj3PLRFvFLfaNI7nolJxcD8u
         kVnIrFxtAywceBlTIekmPATEcpFrKucSCMBpA06EEoXXznXfNLUMI/EQ4yw0m5Zz+4ba
         IOHg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@vmware.com header.s=selector2 header.b=TweL8QRV;
       arc=pass (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass fromdomain=vmware.com);
       spf=pass (google.com: domain of namit@vmware.com designates 40.107.75.54 as permitted sender) smtp.mailfrom=namit@vmware.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=vmware.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QCVxxlONR/ZSCeIwfTWcluV42qsgncjPfw7BeAgHBWA=;
        b=j1fuc1gWhB/qgMtKu71LSp2Ikc53Lgsv657Qej9h7T8aptAmYjeWT8IBzUYuFYVDEd
         xUU6Vxy6oojpmFKoq5gRH7SZ18vXjgcnELhXHsIgO5DPqEY/jJ6Lfa2Yac0aO/JTJ/Xj
         WN5NXXv8VQWvUCrMWCgnoaPKH3dbcRzt5Jtrn72uymVHAjvZNqyaVZ8MJUfJkvLMmU8v
         7a4UX6szg2HBM9CHGegKpFslQ+p9McBxRE2tUXXgPAKrXKDPL7YchF6ge8Q54hCQLeUk
         GvM8cy4BrsJ2v4/3CkMxyxker4n45CG+/fJA/WiCvp+ckzXdt4Q4jM/GX2T0Ogr9RNj7
         rwuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QCVxxlONR/ZSCeIwfTWcluV42qsgncjPfw7BeAgHBWA=;
        b=hWVo8vTIVSu7Q3WGENp2Juk7sWf1f7TUyF+XxMajVbGavsxt9fuvqcWL3eh3MhiVwH
         KX/4paQTG+WsmtwTPf1Ft226YzMuBR32oBD4mRoxCwMVirdQD6/5b+Fb7xW8u2d2hQ8b
         UwOFLw8kOfKVy/NdHEg8TkMC4fOV5oSVZHb4h/GUVD+/4gPzbtl5rKkALqCVEdaADben
         lGq+nTVi/Kf5huhkqzTBu+cPtNXUZXpe9n4uxOmH414R27NYMQZUoUVuteY1sLKzQT+C
         6frGMBSqvWmASfrL6JQ3LVl9WxmLRx253HdsdeRDAxwFhET+REMuZNHS0rPE4rP1gTrZ
         /56g==
X-Gm-Message-State: APjAAAUrhrSSBy591wXka3bZ5z9Ip0/bXGU0s3u+HZtc6J2AkVti/q6W
	1TagMpzlL2NblL4pCgqr1HM=
X-Google-Smtp-Source: APXvYqwn2yeTrwDUSbEv6+zYSeevH3Qo4tigEVYSTME4xAbk7CUlhM1Et1V35FxsRf3EOvyz9JgPdA==
X-Received: by 2002:ae9:e313:: with SMTP id v19mr11114200qkf.22.1567103169059;
        Thu, 29 Aug 2019 11:26:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:3d2:: with SMTP id 201ls86056qkd.7.gmail; Thu, 29 Aug
 2019 11:26:08 -0700 (PDT)
X-Received: by 2002:a37:7d1:: with SMTP id 200mr10888000qkh.96.1567103168889;
        Thu, 29 Aug 2019 11:26:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567103168; cv=pass;
        d=google.com; s=arc-20160816;
        b=P82VFFxGbstxDysTCB+xhSCvllew4WCbfII7lhGpx69Asq4Z2ILrNz7RMvuq9hosQZ
         yt68NNz1N18ItTOZhvG1g7XoZSaldsCgXU21QLzE5ee2R5Vnn0VHLsDk+1ZBnqyam90G
         pLWvbOlhS4F2Z9nOXsS7+TDuZFnjycmPyjb+1yv3CYOoHMr1yak43/P5R4BHbANCktUA
         nxR74sSm2/EU0uqwpNl/UQZp01FMsOC7hnkxNvyG6CChjxd1wvdE93cAsN1wh3NXqWtP
         7wAPyiXQPxTETGWu0qQ+e08eaR/BnREzuZ4El/Il8e3lpUhnPQYrSTjdlmEFRSpf6q6+
         tlXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=Elrp7tMe2s1X81AeQz29M0s1ma9HJ+JlK12Fr9GFqkw=;
        b=N4lSz68qa7KomUPp5J8gG58Lw4GDm9DMNUG3H+pu/o2avFwrVYFaBOuplwjocSPqZY
         /yZbxObRj1XF4hZ69f8+4LlhUu5+9qKgB1IHpaveqiXYlExtS+4MRKRcSXEIfm0YX+cK
         pbwLVw79CbzxWMNu8Dm53zkQCCGihLC+2V+y1dp+KXuZecOnImY8h02DlIIBGXGRjAGi
         JWPVLFL2EuTVsQZT6Fu1Vca7ufWXWH7IZvLw11NN+GdgLqDmcwUzhHiSFNnM41mhX09/
         7BCF9Q7iZjgwersS5J1lJBeqQnhIjfAv2CITRkthvdlcV6NlGXhuSO2/rby8XDnOtsRM
         IiUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@vmware.com header.s=selector2 header.b=TweL8QRV;
       arc=pass (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass fromdomain=vmware.com);
       spf=pass (google.com: domain of namit@vmware.com designates 40.107.75.54 as permitted sender) smtp.mailfrom=namit@vmware.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=vmware.com
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (mail-eopbgr750054.outbound.protection.outlook.com. [40.107.75.54])
        by gmr-mx.google.com with ESMTPS id j10si176830qtn.5.2019.08.29.11.26.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Aug 2019 11:26:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of namit@vmware.com designates 40.107.75.54 as permitted sender) client-ip=40.107.75.54;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hdXWoYD5lIlG8Ck4EXYCt16oLjnEhqVcFOM1GwXaHJiFxg5rRqUGr43gzh4Cs6QCmausyM1/RcDJKOoIvyJx6Z1Jc4wtB43snjEvchfe+cRd8+AUaTfoEP9nIBhjJ+2mu/yGnzPL0NaqrnEmjilU5/ZeNlrNfmbcefwkieFF9zCuMRca64kpIYqMsCUIKuG5V7vLMvgHNAq7+QpQK1jXOo2Ja5VKxsBUG+O/BS1omOObQ59A2P+UmhR9YZr3aMfbqbDY5wITr+hNE6k6rEh/iiD8AQ6ZMheNcuXgCnLGUqXSuXmVmW3OSl5KzIdRlmsFf7T9DIpLo3qk+YaNhoJaSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Elrp7tMe2s1X81AeQz29M0s1ma9HJ+JlK12Fr9GFqkw=;
 b=SGXJx4SPR8Qa/CNEeC54GCsMhEaMopWoFS6Rs9h7vk19j26m9aKxTMvySvJ59mmChNkVTI8lRbPWAMyOXsw404W8sRqVvN+lnmT8TPtc5ajXNn8wuNMRlUFA2iMh8TVh1IaItLzqXVyUjGMjPLORzItJWtoLI0Jhk9JK4rbjzjzWZ8U8cvyUB4QGcTSI6UlMJWbO1K/+JnsqzY/Aq3ad2YNG6QUKRwpCuoRx+E5dB5ZTu0ddnS9sh/yIKRz4hgIp9fOU1tKTvL9g4DZb1C9q621laIco9c1Jtd6lAV4KW8gZI48ntLM+2mHKnx78PzlrdxUfOH27U1NJJ7DRWld3Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
Received: from BYAPR05MB4776.namprd05.prod.outlook.com (52.135.233.146) by
 BYAPR05MB4357.namprd05.prod.outlook.com (20.176.250.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.5; Thu, 29 Aug 2019 18:26:07 +0000
Received: from BYAPR05MB4776.namprd05.prod.outlook.com
 ([fe80::5163:1b6f:2d03:303d]) by BYAPR05MB4776.namprd05.prod.outlook.com
 ([fe80::5163:1b6f:2d03:303d%3]) with mapi id 15.20.2220.013; Thu, 29 Aug 2019
 18:26:07 +0000
From: "'Nadav Amit' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Linus Torvalds
	<torvalds@linux-foundation.org>, "maintainer:X86 ARCHITECTURE (32-BIT AND
 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, Ingo Molnar
	<mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>, "H. Peter Anvin"
	<hpa@zytor.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Masahiro
 Yamada <yamada.masahiro@socionext.com>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Joe Perches <joe@perches.com>
Subject: Re: [RFC PATCH 0/5] make use of gcc 9's "asm inline()"
Thread-Topic: [RFC PATCH 0/5] make use of gcc 9's "asm inline()"
Thread-Index: AQHVXkRaBqsQuToWZEu27cwbsZAFCqcSY/cAgAAK3ACAAAMVAA==
Date: Thu, 29 Aug 2019 18:26:07 +0000
Message-ID: <6C70DE15-0F83-4CBB-B25B-EFF50BC34DD3@vmware.com>
References: <20190829083233.24162-1-linux@rasmusvillemoes.dk>
 <CAKwvOdnUXiX_cAUTSpqgYJTUERoRF-=3LfaydvwBWC6HtzfEdg@mail.gmail.com>
 <CAHk-=wgZ7Ge8QUkkSZLCfJBsHRsre65DkfTyZ2Kt5VPwa=dkuA@mail.gmail.com>
In-Reply-To: <CAHk-=wgZ7Ge8QUkkSZLCfJBsHRsre65DkfTyZ2Kt5VPwa=dkuA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [66.170.99.2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 37749bd7-c923-43b0-d438-08d72cae5bd0
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:BYAPR05MB4357;
x-ms-traffictypediagnostic: BYAPR05MB4357:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR05MB435711A155EB57350497CFE7D0A20@BYAPR05MB4357.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0144B30E41
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(39860400002)(366004)(136003)(396003)(346002)(376002)(199004)(189003)(11346002)(486006)(6436002)(476003)(446003)(256004)(36756003)(71190400001)(71200400001)(478600001)(26005)(102836004)(6506007)(53546011)(6916009)(186003)(14454004)(305945005)(3846002)(6116002)(7736002)(8936002)(76176011)(2616005)(7416002)(966005)(99286004)(54906003)(316002)(229853002)(86362001)(6486002)(76116006)(8676002)(81156014)(81166006)(33656002)(66946007)(66446008)(64756008)(66556008)(25786009)(4326008)(53936002)(6246003)(6306002)(6512007)(5660300002)(66066001)(66476007)(2906002);DIR:OUT;SFP:1101;SCL:1;SRVR:BYAPR05MB4357;H:BYAPR05MB4776.namprd05.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: vmware.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: uSCqbOGjA/Ud0PS3bnOqm/0o4MB9qDhnybCSr1Ojw6m1fzPGytR4mlo8+lQ9c9bvElsNMfc0nmA0vytwK0FlvSaIvdPwrNqI70izMfpudAQHDvP8CFFfuCKcRwGYHu/OT1eZL0/nTVwQAHZbok22/eBlolKciOf3l1wQxgKOath5AA08HW6c0GtVwKh8Ae9yiii9D9MCoRxOt1iP39kg28z1zHuQuumnb83XGJusMWk7DjDnB/NPw1iKvu69/x4yPjRQVs8A77DaHBtjvdVLEQ5hf6wz30NAsVzJZR9NALODGCCr0b8msUVDW1iMYj1E8wbpFek0ZBcPOoIsr9IGam0t/iPwgl4qmJtBzgPbreegvgjpKwbWOKr0zC7Zn6uI7XoCRrRXM0HNKGhfXewrvA+Kiy+NJCoGYJ9npLpb9Lc=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <25C9E7220D8711439952559944FB54E9@namprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37749bd7-c923-43b0-d438-08d72cae5bd0
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2019 18:26:07.0549
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GQuRXP3mz4ftQS4b1kfc/0/ou3S4IgqHTgiRZ769+dnJk5bLVig4YM7Xx01BOIMLAmR17iSYjRZ2lZcYv1yC3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR05MB4357
X-Original-Sender: namit@vmware.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@vmware.com header.s=selector2 header.b=TweL8QRV;       arc=pass
 (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass
 fromdomain=vmware.com);       spf=pass (google.com: domain of
 namit@vmware.com designates 40.107.75.54 as permitted sender)
 smtp.mailfrom=namit@vmware.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=vmware.com
X-Original-From: Nadav Amit <namit@vmware.com>
Reply-To: Nadav Amit <namit@vmware.com>
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

> On Aug 29, 2019, at 11:15 AM, Linus Torvalds <torvalds@linux-foundation.org> wrote:
> 
> On Thu, Aug 29, 2019 at 10:36 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
>> I'm curious what "the size of the asm" means, and how it differs
>> precisely from "how many instructions GCC thinks it is."  I would
>> think those are one and the same?  Or maybe "the size of the asm"
>> means the size in bytes when assembled to machine code, as opposed to
>> the count of assembly instructions?
> 
> The problem is that we do different sections in the inline asm, and
> the instruction counts are completely bogus as a result.
> 
> The actual instruction in the code stream may be just a single
> instruction. But the out-of-line sections can be multiple instructions
> and/or a data section that contains exception information.
> 
> So we want the asm inlined, because the _inline_ part (and the hot
> instruction) is small, even though the asm technically maybe generates
> many more bytes of additional data.
> 
> The worst offenders for this tend to be
> 
> - various exception tables for user accesses etc
> 
> - "alternatives" where we list two or more different asm alternatives
> and then pick the right one at boot time depending on CPU ID flags
> 
> - "BUG_ON()" instructions where there's a "ud2" instruction and
> various data annotations going with it
> 
> so gcc may be "technically correct" that the inline asm statement
> contains ten instructions or more, but the actual instruction _code_
> footprint in the asm is likely just a single instruction or two.
> 
> The statement counting is also completely off by the fact that some of
> the "statements" are assembler directives (ie the
> ".pushsection"/".popsection" lines etc). So some of it is that the
> instruction counting is off, but the largest part is that it's just
> not relevant to the code footprint in that function.
> 
> Un-inlining a function because it contains a single inline asm
> instruction is not productive. Yes, it might result in a smaller
> binary over-all (because all those other non-code sections do take up
> some space), but it actually results in a bigger code footprint.

For the record, here is my failing attempt to address the issue without GCC
support:

https://lore.kernel.org/lkml/20181003213100.189959-9-namit@vmware.com/T/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6C70DE15-0F83-4CBB-B25B-EFF50BC34DD3%40vmware.com.
