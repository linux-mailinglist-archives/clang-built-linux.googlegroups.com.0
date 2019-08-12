Return-Path: <clang-built-linux+bncBAABBVW6YPVAKGQEOIIFZUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E67789661
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 06:47:19 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id t5sf95480152qtd.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 21:47:19 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1565585238; cv=pass;
        d=google.com; s=arc-20160816;
        b=wDONmTZjMlkMJ9B5M4kmig6uPv7Lo7/K/POpMCA7oUskpL3Ek2Ox6C8fiYzvHpS1a4
         Qh6dFvF+nIJd57eXDatyxViiInl4i7hR7iC7b0COb+jwdqxlgpkV8MeYGaeG4oDeAJfB
         1q+GK4omxDXwc60yc3bqMoqUFFjlVN1yJpdsGHf8j31Pxx2sOwctVbXhlsOkPn7xK9ID
         dLqaxSYbEbjsqESoIZXanREt9m1N4k+Eoukm6LBUQvKSPr+X0YYyowvNOYVaA6aZoN2g
         Qvco0XLOEkTYP+VV6QIJ5SDmWkw//cfg4dkLWJOTjIwXRVR11LFopenC7AYpRKj7phWW
         hTAw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=Ff0XxxuyMSlbwC5y+rnn8BeerNkm8cVVBv9J/fbS20c=;
        b=doQgRv38pclJ6KqoIUqVUst3Nly7SWLa3nVZqQXBEZ270uJwhF54Gd8wvBN9OT3YBL
         qt/rlQcqx4nGeuXvAvufwS3bx4tMeBuRxHN1Opc7VbTZx7XPe9KycPsM7raSxIosV6cK
         9Ohr+tNOeFPlxtZUD5zMqqGFpTwLPMv5C8uQmvjDI5aSkn1HrlZj4DGpe2dr6DszLEgh
         e3His0tvgWr3jJ/bJLWTxbwoXEsaIJ6ppQMdO7TTQYpjtbdWe8N1XZH8oM39k4ZjJDn5
         IWmQ+qPyI7WUB4ThN7MoQDG9Xut1e/T3n/XJnebbjRbRJLUKIseil9Y60rpoUP7YYtZu
         O1lQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@wavecomp.com header.s=selector2 header.b=Tbc+4AUz;
       arc=pass (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass fromdomain=mips.com);
       spf=pass (google.com: domain of pburton@wavecomp.com designates 40.107.81.122 as permitted sender) smtp.mailfrom=pburton@wavecomp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ff0XxxuyMSlbwC5y+rnn8BeerNkm8cVVBv9J/fbS20c=;
        b=G5KaSGQFxtvYrB6/cO51oIv9s1L4bnIVqVDiT0s2UzsQtVt7zVZYggHo/BBZHoQeRh
         VtZEDemG51vJ+rKLomj4C5atNM+67yPdeYfV5XSFwBkTSYrfQCIPGpXA4jjeEjscGMtn
         xproo4Hn5yRcQZIUhRslQlZWKs8ffaZp4+8utiAAXUJ0NvPa+MdMJaB0RKvqSwlZ+S96
         Fe14rp7pjUKYcMHM1Q2h4ioZFTie5tf+5RUm2PMviWSTlTnuijXGVHH7GFsDcNzycVa8
         pVBgTpuQj4KlXT2ea5p2Z2qo6pDsEm6iZGLg6cT/gPSisxX8WF7anaRzwb/eoPz1Ftk3
         E5QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ff0XxxuyMSlbwC5y+rnn8BeerNkm8cVVBv9J/fbS20c=;
        b=TF4w08fUvtU4+cGWx14kn5nRoyB2p07wpeI2XFeu5gpt/wzti+Fp3ka9WZP9NYoA6H
         Bygc1z6kAEzPrXF90EGfVDepzylXZVWuS1iUzKu6ZXx7q45wdY56wiKPQEHyLL6KcaPG
         q0bPA0rpM3E4vc1s48JQFspKFmAf5EcxHlHi315P2k8NQqwmFvJ0Pn1NkAotnx+j4899
         hafTSTNFO3MeW/+fJsQz4feosz8OAKXy9onK2TElWkxhfsfyAj6agGaT4zmS62E+2IC6
         X/7HkWUioVpTXTtaSux+iwR4aiqJbW/02osMHR57o1Auw3GnLfdFEp21wy+DatX0G9vn
         4iDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVVkY2jkkSyVGvJMn7JV+xFsVBrj9jlb5eAVFm0gzZlJX+n2bEW
	EVzxCBXoQeWiq0YL20ss9I8=
X-Google-Smtp-Source: APXvYqziq4w39Q65XJ54cD4uXlt6Y5elubmhWBMaa/NtkichZb/F7JDBnG+Z6xqKbWyCpJJP9e8Avg==
X-Received: by 2002:a05:6214:110c:: with SMTP id e12mr25624099qvs.126.1565585238175;
        Sun, 11 Aug 2019 21:47:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3507:: with SMTP id y7ls4526909qtb.0.gmail; Sun, 11 Aug
 2019 21:47:17 -0700 (PDT)
X-Received: by 2002:ac8:376c:: with SMTP id p41mr9085534qtb.306.1565585237931;
        Sun, 11 Aug 2019 21:47:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565585237; cv=pass;
        d=google.com; s=arc-20160816;
        b=E6YyEScJNY1sxCYcIPRV0466099iHZbCRT+LnO/XJhRuVXsVjryCAMBnz7ywdTf8aU
         eegzFOwCcPJJFMZyta/gAlGCZPIkcu+Rx271e6oAEiKbS3GEJurVfUVyelQbIzFKfDst
         piUYDNYpwREp20Q9wc7VJ8thrmzB7uGiSWP6TkgjS2lbICWew1uMehbzM9ZBp97nyPGX
         9yp7ONp6pIC0HmDTMFQonxVzHWqDavm8f9eg9OcujXgKDOOreHgXnierc/aGa4O4ynq+
         Fj6kiY7ZBGshYoUgSGmxuN1o+yK3T63UEPgOMmYma2YQJa5ztEw/sMb1C0+qkO8A9ysP
         xZqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=VkQMtbiJfKoDw6+Yo1Jxt1v4dE8XQcIdBSjr0sAH3cA=;
        b=ZRZcL0AgCczCKdAY7S0KzIejx8EBQ6WuNBwELivcawRRNQJC12nJKW+xJbwDlTYyze
         WSK7xqCPHVT7LfKCSP2UVK29FdGJbc+H1MR26g8vn0dIqrJx3TalLNIFV2qvfTj/foOw
         0Qk9FQYjHkESXAh4iJruSSFYyrmRYpAVBUuWcem3oejCMSQwyFZY6jSirTF5B3xKK/tE
         auauTUML375dh6k0l50D6vxXgOaLDDMLpqloR7QPQqKm0XB52Svlyx4mPO685NLteJKp
         Phzw79jC41ZWoJAa9UeWhZwAFXjgVYAfQs2FcIFqtGK8jMfx8WYR/vAJqrxKnrposQjC
         Pvrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@wavecomp.com header.s=selector2 header.b=Tbc+4AUz;
       arc=pass (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass fromdomain=mips.com);
       spf=pass (google.com: domain of pburton@wavecomp.com designates 40.107.81.122 as permitted sender) smtp.mailfrom=pburton@wavecomp.com
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (mail-eopbgr810122.outbound.protection.outlook.com. [40.107.81.122])
        by gmr-mx.google.com with ESMTPS id g2si175145qkl.0.2019.08.11.21.47.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 21:47:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of pburton@wavecomp.com designates 40.107.81.122 as permitted sender) client-ip=40.107.81.122;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RY1I6fdXgcDMWewXfs+7wOSQuIPU2znIPWHFn8a1r2tHTM42vIza5TLAiTVB8ZbJxdRFNix5kJypeVaShZ322rAFQ9OVDCZLNCUvoTSYJrOVpcY8NhQSuiaw4Gf6ldxHzxZp2Hes2cL7LkvHZ53S6vRDPI2xujrx4ohtnuqAqy/sULGhYsifuqYsGtXkx7BUN7on/W3dVAWra1Jf6TSncJ+WQrkp1b6Js5s50Bg+QIiqivtZ00dFk1uYtpilCOcWTR/MEA37kQbYmKQAlTTKw8qR/bcnETcoEoo2k2u7MAZPovDN/7vC4s6G3TFFLo8ylaBe60erikwO91+m/Nxzmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VkQMtbiJfKoDw6+Yo1Jxt1v4dE8XQcIdBSjr0sAH3cA=;
 b=QmKUVMJeUR3lF98Jyq6xKXmCAhuSSwYeuxFbIqraEpqnwCd1KnRvy/aEL/V57iY9swMy1f9gJ3xXDozl0BhSJrn3TrwB+88b/EiOnFKVQ0V/bEXWqKVlzFo3xj/tRwqH+fXHiRbGlIYBirikxKfvnYUNlwrmOX5NAvPCjgp2mfEsxz++wRNQ42hz41W5xHU10ur3YJrFjE+j33q7K64eHFlOn04QN8CKRX1bvrfTe5qK5FPxdwkk4QC6l5jU3VRm9qGNfEUBVD7glpT8op+CUCM5gLloFZRYACTX2VQSUp2ztznl1phdqjHPkLfu2lv+iwDdpdsjGzCz8sMofdd3DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wavecomp.com; dmarc=pass action=none header.from=mips.com;
 dkim=pass header.d=mips.com; arc=none
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1469.namprd22.prod.outlook.com (10.174.170.142) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.22; Mon, 12 Aug 2019 04:47:15 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f566:bf1f:dcd:862c]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f566:bf1f:dcd:862c%10]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 04:47:15 +0000
From: Paul Burton <paul.burton@mips.com>
To: Nathan Chancellor <natechancellor@gmail.com>
CC: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <pburton@wavecomp.com>,
	James Hogan <jhogan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
	"linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <natechancellor@gmail.com>, "linux-mips@vger.kernel.org"
	<linux-mips@vger.kernel.org>
Subject: Re: [PATCH 1/5] MIPS: Don't use bc_false uninitialized in
  __mm_isBranchInstr
Thread-Topic: [PATCH 1/5] MIPS: Don't use bc_false uninitialized in
  __mm_isBranchInstr
Thread-Index: AQHVUMkDqKjwYqiFLUa9pBXZ514zBw==
Date: Mon, 12 Aug 2019 04:47:15 +0000
Message-ID: <MWHPR2201MB127785F4CEC464CB6F11F3DAC1D30@MWHPR2201MB1277.namprd22.prod.outlook.com>
References: <20190812033120.43013-2-natechancellor@gmail.com>
In-Reply-To: <20190812033120.43013-2-natechancellor@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR21CA0026.namprd21.prod.outlook.com
 (2603:10b6:a03:114::36) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2601:646:8a00:9810:9d6:9cca:ff8c:efe0]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 722b53c4-2284-4497-7c61-08d71ee025a0
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);SRVR:MWHPR2201MB1469;
x-ms-traffictypediagnostic: MWHPR2201MB1469:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR2201MB14696740AE76D50BDB0F263EC1D30@MWHPR2201MB1469.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(376002)(136003)(346002)(366004)(39830400003)(396003)(189003)(199004)(6306002)(81156014)(81166006)(8676002)(14454004)(9686003)(99286004)(446003)(7736002)(11346002)(42882007)(486006)(966005)(2906002)(476003)(25786009)(478600001)(8936002)(54906003)(229853002)(55016002)(6916009)(6436002)(1411001)(102836004)(52116002)(316002)(76176011)(71190400001)(71200400001)(66946007)(7696005)(64756008)(66556008)(66446008)(386003)(6506007)(186003)(66476007)(74316002)(256004)(6246003)(46003)(33656002)(5660300002)(52536014)(44832011)(6116002)(4326008)(305945005)(53936002);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR2201MB1469;H:MWHPR2201MB1277.namprd22.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BxULVD3sabcl04ntRCMNbs0Sz9X4Oa1MnhbqE6c5ROJm7MRXgGmDeuJGsoKLlTIcRaa7Z3j5pHYnsicVKKUwIIeXyXoKRvfKO4qyAE3NR3IP8ec103zy6wTI0yHx9envZjNUJHNmW+0moi4qJhmb+o8HT+HyKiGcfgg/gdXaVOkvBi2ZLojFke95zi+EzIJCBqjUvT2r4Mf0e2VVfBBDUHXQ0k+iu5ybVC9P7SsLfvRY7Et38ZhOmvj4GS8yXGpr1gOLUuftUmEJb9WEuoCl4aKDX22RrYk19S52kclcD7zepGBdWLsOJiREQNVWI8etD+HVP3SbuvEIyVzMxvI5b/F0kSvEBlQwKNijxKicv0oRYN1pg/651/eE16nD1DazZ3T/NNg9xLjFIOQ6rXqMI8J/FLuWUbE4YnB/d/jVjDU=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 722b53c4-2284-4497-7c61-08d71ee025a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 04:47:15.0575
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Cp3xf5M7Tdn8v66dkki9TnD+V4dVwi++CXk/LAxwppcHkp7WRC9RMD95hXwaVqKZFUB48BiyV4B2qVGpY/5kVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1469
X-Original-Sender: paul.burton@mips.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@wavecomp.com header.s=selector2 header.b=Tbc+4AUz;       arc=pass
 (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass
 fromdomain=mips.com);       spf=pass (google.com: domain of
 pburton@wavecomp.com designates 40.107.81.122 as permitted sender) smtp.mailfrom=pburton@wavecomp.com
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

Nathan Chancellor wrote:
> clang warns:
> 
> arch/mips/kernel/branch.c:148:8: error: variable 'bc_false' is used
> uninitialized whenever switch case is taken
> [-Werror,-Wsometimes-uninitialized]
>                 case mm_bc2t_op:
>                      ^~~~~~~~~~
> arch/mips/kernel/branch.c:157:8: note: uninitialized use occurs here
>                         if (bc_false)
>                             ^~~~~~~~
> arch/mips/kernel/branch.c:149:8: error: variable 'bc_false' is used
> uninitialized whenever switch case is taken
> [-Werror,-Wsometimes-uninitialized]
>                 case mm_bc1t_op:
>                      ^~~~~~~~~~
> arch/mips/kernel/branch.c:157:8: note: uninitialized use occurs here
>                         if (bc_false)
>                             ^~~~~~~~
> arch/mips/kernel/branch.c:142:4: note: variable 'bc_false' is declared
> here
>                         int bc_false = 0;
>                         ^
> 2 errors generated.
> 
> When mm_bc1t_op and mm_bc2t_op are taken, the bc_false initialization
> does not happen, which leads to a garbage value upon use, as illustrated
> below with a small sample program.
> 
> $ mipsel-linux-gnu-gcc --version | head -n1
> mipsel-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0
> 
> $ clang --version | head -n1
> ClangBuiltLinux clang version 9.0.0 (git://github.com/llvm/llvm-project
> 544315b4197034a3be8acd12cba56a75fb1f08dc) (based on LLVM 9.0.0svn)
> 
> $ cat test.c
>  #include <stdio.h>
> 
>  static void switch_scoped(int opcode)
>  {
> 	 switch (opcode) {
> 	 case 1:
> 	 case 2: {
> 		 int bc_false = 0;
> 
> 		 bc_false = 4;
> 	 case 3:
> 	 case 4:
> 		 printf("\t* switch scoped bc_false = %d\n", bc_false);
> 	 }
> 	 }
>  }
> 
>  static void function_scoped(int opcode)
>  {
> 	 int bc_false = 0;
> 
> 	 switch (opcode) {
> 	 case 1:
> 	 case 2: {
> 		 bc_false = 4;
> 	 case 3:
> 	 case 4:
> 		 printf("\t* function scoped bc_false = %d\n", bc_false);
> 	 }
> 	 }
>  }
> 
>  int main(void)
>  {
> 	 int opcode;
> 
> 	 for (opcode = 1; opcode < 5; opcode++) {
> 		 printf("opcode = %d:\n", opcode);
> 		 switch_scoped(opcode);
> 		 function_scoped(opcode);
> 		 printf("\n");
> 	 }
> 
> 	 return 0;
>  }
> 
> $ mipsel-linux-gnu-gcc -std=gnu89 -static test.c && \
>   qemu-mipsel a.out
> opcode = 1:
>         * switch scoped bc_false = 4
>         * function scoped bc_false = 4
> 
> opcode = 2:
>         * switch scoped bc_false = 4
>         * function scoped bc_false = 4
> 
> opcode = 3:
>         * switch scoped bc_false = 2147483004
>         * function scoped bc_false = 0
> 
> opcode = 4:
>         * switch scoped bc_false = 2147483004
>         * function scoped bc_false = 0
> 
> $ clang -std=gnu89 --target=mipsel-linux-gnu -m32 -static test.c && \
>   qemu-mipsel a.out
> opcode = 1:
>         * switch scoped bc_false = 4
>         * function scoped bc_false = 4
> 
> opcode = 2:
>         * switch scoped bc_false = 4
>         * function scoped bc_false = 4
> 
> opcode = 3:
>         * switch scoped bc_false = 2147483004
>         * function scoped bc_false = 0
> 
> opcode = 4:
>         * switch scoped bc_false = 2147483004
>         * function scoped bc_false = 0
> 
> Move the definition up so that we get the right behavior and mark it
> __maybe_unused as it will not be used when CONFIG_MIPS_FP_SUPPORT
> isn't enabled.

Applied to mips-next.

> commit c2869aafe719
> https://git.kernel.org/mips/c/c2869aafe719
> 
> Fixes: 6a1cc218b9cc ("MIPS: branch: Remove FP branch handling when CONFIG_MIPS_FP_SUPPORT=n")
> Link: https://github.com/ClangBuiltLinux/linux/issues/603
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Paul Burton <paul.burton@mips.com>

Thanks,
    Paul

[ This message was auto-generated; if you believe anything is incorrect
  then please email paul.burton@mips.com to report it. ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/MWHPR2201MB127785F4CEC464CB6F11F3DAC1D30%40MWHPR2201MB1277.namprd22.prod.outlook.com.
