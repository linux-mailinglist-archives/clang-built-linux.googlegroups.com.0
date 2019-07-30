Return-Path: <clang-built-linux+bncBAABBLHZQHVAKGQETA6XIKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 445977AFAF
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 19:21:49 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id h4sf72309202iol.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 10:21:49 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1564507308; cv=pass;
        d=google.com; s=arc-20160816;
        b=dx+p4Kk+13VtQ3YqdFJ0QyQQYppE9Dj3PMMB/0JOJuS6zXmTPCi3JUiPqUVd9odOrT
         /rhNiWIcs2jNpIlpsUHulgCc+ECwnrkpkL9RsMi33XLz5NIdBbiLDk5ALB+5qodvUUNa
         So3ZpgIGwQvhtA6HQs5vqkmLDHKsT42hu6U/NjvszWYx9DU1DGPPpEr1uT30V7XWSSDE
         UPz5P4N3XC6ZUOMBoFjwyBfwWQ/5Hf43PIx6N36kvlqFAazbPtgHXVNYy6h8KuAbc6lA
         4pATJ4aUgqNmA65S2lTkMyowQkCnDGG9srjQVZEd97D/HqnwAt1Y+ZlpKUwgXOtSUkER
         CQ6A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=QHQo3XDPMaqut8PX9i6pR6zjXvIDufIDhKjbono94UQ=;
        b=n66qkUcc8ZKtBFD40mFGgVH7RpeOfSdhzdTKj48QvCoH9WXFJaeOLMrh/X7J+2Z+kW
         mzCvtah3vpt3EM1458lyMSiH2U2Q+p9O1lrivS89JRzHqeTaAo8n+FwY05JKW7xEMFv8
         OaheNs2uBSarCxrlwiQnRGt/4IB0r+MuEiOlDof74iLZ6cJht0+8WDqiUE+29uPNDRov
         UBK/iv/hEW+fdisQY0jcnkmq0+fjDvheNMG3BeRuzUu2T7RL+jwmdwh6rvKYkNHSqKod
         s5+NI7v0R26vkqiLEijRUb8ZaeeShRLhwMK2TeUlKkzir3fbGYjPyOl1W/31uCza8JPM
         AalA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@wavecomp.com header.s=selector1 header.b=TMkvseJs;
       arc=pass (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass fromdomain=mips.com);
       spf=pass (google.com: domain of pburton@wavecomp.com designates 40.107.79.137 as permitted sender) smtp.mailfrom=pburton@wavecomp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:user-agent
         :content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QHQo3XDPMaqut8PX9i6pR6zjXvIDufIDhKjbono94UQ=;
        b=IKGdsZ5ehOS/6HvAva1+K5vz9raAhH4zwZhJcO67iSTxAK6Gjqxh5/sa6ouVD5vxUb
         b1HIie+DS/75dp+5yBXQmArp2E9oK7U5yaFDw2anf+tQKqkpTRIY0In3Rs/X6Vx+aHPK
         rq2eWAT2Pyi9c6nsPraKr072xOGUSwRgKmzpPynCKuv29ZgUB5SUxvG7gTW1GJ9grVL6
         O7Ai6hYkVvz/2lJeG0zhobAy73lLJ7so+mzeuoOoanAkTZB0gsuqQF6w0bUnJ+4jUcW0
         6JuhO2ctiPqIfnuBIZ/34/54kGe/FI2JL34fH0PQCdFpwV6lruUYYeIAsXE/W6WMkC4r
         2IYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:user-agent:content-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QHQo3XDPMaqut8PX9i6pR6zjXvIDufIDhKjbono94UQ=;
        b=CieGJBPv4Xjid5o8uwRuP0LDkQmufAhT89LIktzuMy8WOG0QIYnfZ218yAKdoEkU3g
         j1h0knrMr8c8E1QlkWN7TEgqwywzXno99zqhD1z4AOAU7r8/cwBJdEkIEdB1Ar+aIUUM
         ugCg577jDyv/eW1y6J6y7yC237JJjKzT1oy6UEAq7xHnUbIrd9a0ied6o7IcDbbdYhca
         kwRk9eailz8Xq/SnaKgWyqHuUxuwxheP0vP8IGV44RP4vuL0BkKLhSsqYNVJ3SlmR5gg
         CQg7B7B6Bh1d2VbxdvQzRpECZ0TKfICchQd110k8eMlrXweN6YkdxXwpZneXMOxcN7pq
         B9gQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUw85O0gl8nIi/AzxU2Slt5xUqe+nYsM4kfNa6iPPWvomGE8M9U
	ZIkWIByiWknUqH4rRWelckI=
X-Google-Smtp-Source: APXvYqzuTlOBAXsRcdnxpy+YjrgL99/o+XwVljGy3vkKU6uD5MuS4jZPPTR2z6RA/wGio6D0adzz/Q==
X-Received: by 2002:a02:716e:: with SMTP id n46mr123300984jaf.137.1564507308258;
        Tue, 30 Jul 2019 10:21:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:878a:: with SMTP id t10ls8822574jai.12.gmail; Tue, 30
 Jul 2019 10:21:47 -0700 (PDT)
X-Received: by 2002:a02:3342:: with SMTP id k2mr6714676jak.89.1564507307887;
        Tue, 30 Jul 2019 10:21:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564507307; cv=pass;
        d=google.com; s=arc-20160816;
        b=ixsbaCWeDxKt6NJaESZGV9l9ZKycZfGfQ/3NzttwD9Aq+fTbGlVxnG2TBqNxvc7jOO
         q69BN9pMuzMV1+Nk0AAoh9VKWGFabIE7Qbw5MXK+/iv6/emWMdsmHU61gkuZMK25oKBD
         e+PKYJsX6nSbemZTRJFVEBQqIJLUBDsOTm5InduWQlKPTtWMxGWzHh5s/neVR38eRxBl
         U/BcswupXiwTYySxTp5vTWaIM+tgD0pEYmlPu3sMzV2ruDxMQaejb0qdiK9E68v7kzWO
         aCFJu8NpARyyB6g/xEdTwnNfTIsYvn2TmQHLaFeB3ioWTz4TFrA68atWuTAYHyvbhKv8
         DjXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=TQK/3QnaEpmGibszKj6jWvQpvjVsgdtuDl+tH/rasng=;
        b=zsQnOCvlkH4UGmeo4t8yKf4y+pHs8fExN6C9g5YzzmB/sh4/pYNg3ncjQAtREJqPot
         FJdhpYhtTpU6j+NVoV+cDkWlxja4omvTnw8TUTb4hR///3Wq3Rm+pDCluoaegKrR77Eg
         /YfCu1lBRY2tsU71/q5P7FC9HW30wt+fDJEZ0Vxs4Pcoi3x8qD7fzWACm3X/rlw0ElVC
         E6k1vY8cGgrF7M71OF7jQAKgNnmT0w2OF+lgWgGk7TG7I+PfyTPtF155Bu5OhjtGSIv7
         baYL/3zDDRJpQ49ey9a/8E60TMnrme5WQ9bUxNssXuhqvUWvzHGQNTiAb9JTeETzNmPi
         bO4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@wavecomp.com header.s=selector1 header.b=TMkvseJs;
       arc=pass (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass fromdomain=mips.com);
       spf=pass (google.com: domain of pburton@wavecomp.com designates 40.107.79.137 as permitted sender) smtp.mailfrom=pburton@wavecomp.com
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (mail-eopbgr790137.outbound.protection.outlook.com. [40.107.79.137])
        by gmr-mx.google.com with ESMTPS id m3si2263043ioc.4.2019.07.30.10.21.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 30 Jul 2019 10:21:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of pburton@wavecomp.com designates 40.107.79.137 as permitted sender) client-ip=40.107.79.137;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ntv7f13NbRh4JLVhHiELDxUK670ctyKoGfYdzLdTS0iruLsOBSJoWHEp3sFqiqa/A/x9iahzsfGYKBJ1HoZMu9s1BIsp07YJF9FulXd9KSJz0OW5c3vzRFx0Zk7GWNzFzcdT36Q6I9GrvlfBnm4Yv/NKGtLqx/nVhx8188OGb7Jx57OwF3cc8+3MDloy+dEhhlarsZS7+hNm6XfWDhqhoWfBfLcXlRIdrIEewLvQfcx3+pql2i2SBJbUX35QwkGfZlSwEaVJgiIBN4suBI9gTXqDW3e6Fw269f8sgFVIIi8fBU8fTmYzMsFaLL+az608IsHIxSQXHwyjpJ+SB/r9Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TQK/3QnaEpmGibszKj6jWvQpvjVsgdtuDl+tH/rasng=;
 b=eTspyQGch5zu9rYLXS7vXd80r5gXLRoKw2OQWDH8c1Xte4ZrLeAsmRNzFqW3IkXMQH8E5+RNBB2HCLNEC5+SSUm922r9dTgWvzqhXNdFOa7l5ZZuaCIVP6KRpGHsRaG/rPKk2lyf1f+fPR+tPJ0uxIl1GOEym4y9jXF6fGMvfOewag2xcLVj9YL3maAL6EzrKepjphQ7YssQUzQm6qdswfEy6I53ctgf/dwSynddkdluyAVMe/IiMsAdDrX89OWcXCbbYl0ZXLytUPJITmjKXIOgH46sAuhoVfOzK9BDSSol0HLzokVtKMquhynDPAOY4pmDqamoISzo/9R/1zqArQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wavecomp.com;dmarc=pass action=none
 header.from=mips.com;dkim=pass header.d=mips.com;arc=none
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1565.namprd22.prod.outlook.com (10.174.160.143) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.14; Tue, 30 Jul 2019 17:21:43 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::105a:1595:b6ef:cbdf]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::105a:1595:b6ef:cbdf%4]) with mapi id 15.20.2115.005; Tue, 30 Jul 2019
 17:21:43 +0000
From: Paul Burton <paul.burton@mips.com>
To: "Maciej W. Rozycki" <macro@linux-mips.org>
CC: Nick Desaulniers <ndesaulniers@google.com>, Ralf Baechle
	<ralf@linux-mips.org>, James Hogan <jhogan@kernel.org>, Nathan Chancellor
	<natechancellor@gmail.com>, Eli Friedman <efriedma@quicinc.com>, Hassan
 Naveed <hnaveed@wavecomp.com>, Stephen Kitt <steve@sk2.org>, Serge Semin
	<fancer.lancer@gmail.com>, Mike Rapoport <rppt@linux.ibm.com>, Andrew Morton
	<akpm@linux-foundation.org>, Michal Hocko <mhocko@suse.com>,
	"linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] mips: avoid explicit UB in assignment of
 mips_io_port_base
Thread-Topic: [PATCH] mips: avoid explicit UB in assignment of
 mips_io_port_base
Thread-Index: AQHVRvtBHPSEeFogTEW9DwXoOEX0HA==
Date: Tue, 30 Jul 2019 17:21:43 +0000
Message-ID: <20190730172141.addbdma5dnihdwoc@pburton-laptop>
References: <20190729211014.39333-1-ndesaulniers@google.com>
 <alpine.LFD.2.21.1907292302451.16059@eddie.linux-mips.org>
In-Reply-To: <alpine.LFD.2.21.1907292302451.16059@eddie.linux-mips.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR01CA0071.prod.exchangelabs.com (2603:10b6:a03:94::48)
 To MWHPR2201MB1277.namprd22.prod.outlook.com (2603:10b6:301:18::12)
user-agent: NeoMutt/20180716
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [12.94.197.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b162f964-f5b9-4393-ab66-08d71512642e
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:MWHPR2201MB1565;
x-ms-traffictypediagnostic: MWHPR2201MB1565:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MWHPR2201MB156564025C9D2A039315989DC1DC0@MWHPR2201MB1565.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0114FF88F6
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(7916004)(376002)(346002)(136003)(396003)(39850400004)(366004)(189003)(199004)(66476007)(66446008)(68736007)(11346002)(6306002)(81166006)(71190400001)(81156014)(8676002)(7736002)(71200400001)(3846002)(966005)(7416002)(14454004)(6436002)(2906002)(25786009)(478600001)(9686003)(6916009)(6116002)(8936002)(6512007)(58126008)(5660300002)(53936002)(1076003)(6246003)(446003)(102836004)(52116002)(33716001)(66066001)(42882007)(186003)(26005)(54906003)(476003)(6486002)(256004)(44832011)(229853002)(305945005)(486006)(76176011)(99286004)(6506007)(386003)(66946007)(316002)(4326008)(64756008)(66556008);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR2201MB1565;H:MWHPR2201MB1277.namprd22.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gZiYHDEiDFjypR5pnlBy19xkU0z4cDTtiEjum/3BRW/0WEwajRI5iafCVADQnaVQmiO7znJvcwMBMwPBe5ZKfKe/IDrsCIPBZoizMZjH2+YoxEHJF6Vawa/iAmvxwbu1jEGhx6RKiXuIvbH9npldKeEQ8W9u3cxuq/CRjw1n6UO7+aIWQNnPk70w+tvhe+JPPEfUPDeP9MFbaPV8IYR1Zq3CBsEBw9sAIr3X4FoPrjtkz0d6kNQ3i/AZqGLYUV6Osl5/5kv81Tff5c0KHqOdIK5iejJhr8uJH0j5BIz6d+N6PNSoimbi/+vdhVztapHLB2bbdv/31vRlzbKCKds4Gb5rLQ5tnP9XcfZYEGb4FxZ6ua7/l6tuQHd0FqeOogiuQLzCeObQMXVVzWXqfmaW3/e3Fpi8RO5vKVS+LjhiygE=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <6616E1CE16706A419E23980E4D8E25FE@namprd22.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b162f964-f5b9-4393-ab66-08d71512642e
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2019 17:21:43.3101
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pburton@wavecomp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1565
X-Original-Sender: paul.burton@mips.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@wavecomp.com header.s=selector1 header.b=TMkvseJs;       arc=pass
 (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass
 fromdomain=mips.com);       spf=pass (google.com: domain of
 pburton@wavecomp.com designates 40.107.79.137 as permitted sender) smtp.mailfrom=pburton@wavecomp.com
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

Hello,

On Mon, Jul 29, 2019 at 11:16:45PM +0100, Maciej W. Rozycki wrote:
> On Mon, 29 Jul 2019, Nick Desaulniers wrote:
> > The code in question is modifying a variable declared const through
> > pointer manipulation.  Such code is explicitly undefined behavior, and
> > is the lone issue preventing malta_defconfig from booting when built
> > with Clang:
> > 
> > If an attempt is made to modify an object defined with a const-qualified
> > type through use of an lvalue with non-const-qualified type, the
> > behavior is undefined.
> > 
> > LLVM is removing such assignments. A simple fix is to not declare
> > variables const that you plan on modifying.  Limiting the scope would be
> > a better method of preventing unwanted writes to such a variable.
> > 
> > Further, the code in question mentions "compiler bugs" without any links
> > to bug reports, so it is difficult to know if the issue is resolved in
> > GCC. The patch was authored in 2006, which would have been GCC 4.0.3 or
> > 4.1.1. The minimal supported version of GCC in the Linux kernel is
> > currently 4.6.
> 
>  It's somewhat older than that.  My investigation points to:
> 
> commit c94e57dcd61d661749d53ee876ab265883b0a103
> Author: Ralf Baechle <ralf@linux-mips.org>
> Date:   Sun Nov 25 09:25:53 2001 +0000
> 
>     Cleanup of include/asm-mips/io.h.  Now looks neat and harmless.
> 
> However the purpose of the arrangement does not appear to me to be 
> particularly specific to a compiler version.

Agreed - I don't think the code here talks about compiler bugs at all,
it talks about emitting extra unnecessary loads & says there's a codegen
"issue" which I interpret in this context to simply mean that the
generated code is suboptimal.

See also this previous patch which aimed to remove the const too, though
for other reasons; namely LTO:

https://lore.kernel.org/linux-mips/20180616154745.28230-1-hauke@hauke-m.de/T/#u

As I measured there this does indeed have an impact on code size, though
it's not infeasibly large or anything.

> > For what its worth, there was UB before the commit in question, it just
> > added a barrier and got lucky IRT codegen. I don't think there's any
> > actual compiler bugs related, just runtime bugs due to UB.
> 
>  Does your solution preserves the original purpose of the hack though as 
> documented in the comment you propose to be removed?
> 
>  Clearly it was defined enough to work for almost 18 years, so it would be 
> good to keep the optimisation functionally by using different means that 
> do not rely on UB.  This variable is assigned at most once throughout the 
> life of the kernel and then early on, so considering it r/w with all the 
> consequences for all accesses does not appear to me to be a good use of 
> it.
> 
>  Maybe a piece of inline asm to hide the initialisation or suchlike then?

That could work as a replacement hack. As I mentioned in the thread
linked above a less hacky, though more extensive & invasive change might
be to move our I/O area to a fixmap which ought to produce even better
code since the addresses would become compile-time constant. I'd settle
for either approach for now though.

Thanks,
    Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190730172141.addbdma5dnihdwoc%40pburton-laptop.
