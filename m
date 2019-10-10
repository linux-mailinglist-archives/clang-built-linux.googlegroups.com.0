Return-Path: <clang-built-linux+bncBAABBV5Z73WAKGQEAKNXS2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A45D3308
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 23:04:24 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id q34sf1984615uad.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 14:04:24 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1570741463; cv=pass;
        d=google.com; s=arc-20160816;
        b=KNv++WmfH9ZYsBzGvS3CRSr5iKZuhrQK2Tioff8eQbcT2uieSfq6Fjs3J/O4DtPyt8
         Ds5p/CYwuFqkjnUY/d3PJ51XLDnw6wpK4KEupk7n0TF/nnZNDYXGPkNMqb7yFuditMTw
         4PVPUpqDuZzM8Zl9ySLoZ+P5cYW3fHtvJnvoSwOmlWRkv6JXiEYg70c7arnHi+mwZ+Df
         RmEvRAPIvivwziaOKWpxIR1thh/Ap2iWqndtSgzVJnMJpblI+AOQpMx8pVXLGn+VEqBA
         tll+ZRf+Bpng+f2ER9rVB8oNvCB0X9Ohw+njQziE7J9oJhzYq4psKLeb1tTDXokQyRTk
         9o3A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=hoKmPqpVntUFY6VwkrJdFa7vNNxpr2BRbJ7tOeMRgOE=;
        b=gWLqVvc6+uwfgPigufn8Oc0uuhdffBUWgEUdiGg/I9yG1CI2nNC4LJEu+kKJQxr3Ma
         zeiRDjtDqLf9e6kZLcaf2Q0aaWTVj4rz0EAFiwgMkVZmDF7lUqBlBHQkbvKwMF31UMTF
         qqk+IFL7kxxzsKR/J9AkVB8pKaJPKtpzPhdklURhBa0Y1+MovWh6F6MrzXBAKkye00Pl
         YizK7YvgsamSOHpTa89D2l7NhLFBnSL1cBz6j+s3feab5BOZfUw8yZwmSaI9dJbQU/gi
         8mlww0fMyLH9alzwNg8cKJ8RJ/i7RBtq1mJIZmkT5SufHWmq7nvenHkPH9KeXXkBrtoH
         7e7A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@wavecomp.com header.s=selector2 header.b=W9XjitJV;
       arc=pass (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass fromdomain=mips.com);
       spf=pass (google.com: domain of pburton@wavecomp.com designates 40.107.80.120 as permitted sender) smtp.mailfrom=pburton@wavecomp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hoKmPqpVntUFY6VwkrJdFa7vNNxpr2BRbJ7tOeMRgOE=;
        b=Y98aCrZqmsChXXkjfn9fGgzSpsJxSPbBLQI1g5AgtUjmtA0GdJLoBZ5XX9aAA3ZkZA
         rp1F/KIeZ1Egfp8rqupKZnyLPiybYF3FMkvsHWd3pYcByuvkL2K64VJgx3Kxjfd9+ko6
         hXTloFpj3HfavDFDkKjBURhopLUR3SKx4/s9gtzmVJgFu5FxuPaitKaxN4oAqq2VP5+m
         ud0V1fuwXbDPbU1uesuMlH/NaEUV9va/hgkfSbmlMtEu0ulIFUHe0eRXdA4uXq1Lxh4g
         1zK9HGqG0txki4hSrJaF7OEO6hNRU5SxHRbhTUIg85+zroIcVWPk70W8Xcf+wLn5vYST
         jGsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hoKmPqpVntUFY6VwkrJdFa7vNNxpr2BRbJ7tOeMRgOE=;
        b=SiYCfVl+Fo4/lvSvaAs3nmsFDpLjoQf4mwd2TaCwUlUNy7/XWjdb/IHGcXTgUDh/bg
         H+mgo5DnSyD/L+6Fp1TdJHTBXvS0y72wUDJdUfhdh6r47t3twJbn23DCZ77H+ZnYe9U5
         CHeHPmjV+2EG9Y8VSZdF3Acyv3jyMRlhCbFauzwp4jpazrKIG1ifFlKvVOVmxpDddH+j
         HUDazvuhWEXTKPIQRvHrbcbXG9ejTRQGNH6q/DkrLk0Z4SB1wNddRNoUDTvtOMNZepb2
         s75nywPSYX4kbYTCAjGnQt2DWc76Km6VnIHgqW9U6HjY97mx6EF9hQeJER0zXRcQeYd3
         14Mg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUciE6vz8cDKRQbwDYkl+RvdOeG0Ap+hExOe1bXLCHHh3Klk5Vb
	FYyHtVprlPhNR66e4Os3UMQ=
X-Google-Smtp-Source: APXvYqwkUr0naL0925gY0KcWeHkchRc7Aki1GPH0KLquOcvWv8a0IxzdNTcGeC8JuaiZpX/j2u6Zmg==
X-Received: by 2002:a67:bd0d:: with SMTP id y13mr6887640vsq.109.1570741463624;
        Thu, 10 Oct 2019 14:04:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc55:: with SMTP id p21ls532950vsq.9.gmail; Thu, 10 Oct
 2019 14:04:23 -0700 (PDT)
X-Received: by 2002:a67:e88b:: with SMTP id x11mr6825928vsn.180.1570741463299;
        Thu, 10 Oct 2019 14:04:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570741463; cv=pass;
        d=google.com; s=arc-20160816;
        b=qP1m2OzVX6emL2y5pWPCstoSg6LvrB0WHh03jyGrwrqlA81GI59TW6GJ6kYkkwgsIE
         tK16VlpwZG4AroLpjeugLz5HLOx0MGs/NLDD/VGDePQoSaLMLxFLduzMKTHZcDZuAPiW
         hgl0yTajXoSpSMdHoPBufSi57Mz98pj5X7FWMcqgMkvneDXCG14IFJNycCiYMLnxi0Ck
         2GdiTnNdWGH51FWuV5Piaiv/NC0ECG50hhCoBt7WK/rK0/Q0yMIAwQ2r/HN+DejADZAg
         SDh9HKKeQtkvML5t9jOu+izl6HorQVQdlnE8qey8tTlkkeSINfoH5wClIx4yFC0nI1Ux
         jSMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=bU5Me7enwfA8VAvE54PrnHIecTtiHFVupcpOKg/XXqE=;
        b=vq7EthQqDvXa+IhHjEchTVjmoRzQiRpoYNa4gZn2jhRsSOcMjg4IKZL6qcWudXoXuK
         iGv2ram6grRLfRzxtomyK1ma8+JhmiyxEIRmBjKnbuY/G22HANaXjoqF4faqIO9xWz76
         k+b5wopTb+GJdrceM6Ur1YoXzKFC/qQyh5L8KKs6X4wqep1+om5V8oARCbsDMaSIHLE+
         Qntpgj3qAHIUtFK8Xyd68caykq2lhYYaDYGr+WqaEXz2OFhVVb428rUMwngsiZ51/SFo
         L5DXPXmgjoM0JNoz/P9aJlSStdF5G//yuHRnriLpfJ1x43l+mrSJMHv2hueh7pzFqBJG
         Pulw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@wavecomp.com header.s=selector2 header.b=W9XjitJV;
       arc=pass (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass fromdomain=mips.com);
       spf=pass (google.com: domain of pburton@wavecomp.com designates 40.107.80.120 as permitted sender) smtp.mailfrom=pburton@wavecomp.com
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (mail-eopbgr800120.outbound.protection.outlook.com. [40.107.80.120])
        by gmr-mx.google.com with ESMTPS id 136si551707vkx.4.2019.10.10.14.04.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 10 Oct 2019 14:04:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of pburton@wavecomp.com designates 40.107.80.120 as permitted sender) client-ip=40.107.80.120;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ANoP7vvST9AinWLUjzaFRtGnEYqJlfSS6Rp0a5aURJ/z4Mww5Z+Os+sibCf4R+mwU15qBTcow0Jrb9U1P3ioaajxuv+zhWKVwjevrOvpkyL5ir1BeB/KLpUnfB/KuP+GdtIHWGsJxARqoGM0eIpVfCC3snQMlEMQJaI6wdygLiXnAP8cxUBojsTJm9i6LeqKEDk/GlO0i0487UI3fyifKnFiTOFaSbZd2PlXpIY67fcDn+jEzZUPuOVXbgo69EtCFB/GUtYSMf8JdcbKeArJj2+7XgRNKKwnZJQf0jUaeT+OFrHR3USd5b27rtZpTjfi4gFs8Dwnt5Au37Ex4If+Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bU5Me7enwfA8VAvE54PrnHIecTtiHFVupcpOKg/XXqE=;
 b=QYpUUnXTgoLVqi5uUw+v0MZ71xchMFE1R3X5QbsEORMeTX4+UZzHQv23qSrOO5NqwuyBwScJhDLrC9yoKtZgs63X3BdPokjkklcbdTdPNanBX+mQpvBZMtayfnCu2ealqva/Nds1S3ZYHRfIPliRJf/kOEw/Cy/26J3tqGugwe8l9H9hxx6jjhrDseq8qbF5LqnqO7I2UgbeC0r0DzcrL+FdxrmELlOJZBt0drnJLHpGXLI9UraKIyg3iP8WWWkOt6NWqF1WzIsPuruO9dd4oGOh7FNW5M8/V84ErkET5u4eljnwYShl/fPATzUSL9bszqkoqARvxxgHs7ModBPriQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wavecomp.com; dmarc=pass action=none header.from=mips.com;
 dkim=pass header.d=mips.com; arc=none
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1279.namprd22.prod.outlook.com (10.174.162.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Thu, 10 Oct 2019 21:04:21 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::c1dc:dba3:230c:e7f0]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::c1dc:dba3:230c:e7f0%8]) with mapi id 15.20.2347.016; Thu, 10 Oct 2019
 21:04:21 +0000
From: Paul Burton <paul.burton@mips.com>
To: Nathan Chancellor <natechancellor@gmail.com>
CC: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <pburton@wavecomp.com>,
	James Hogan <jhogan@kernel.org>, "linux-mips@vger.kernel.org"
	<linux-mips@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, Nick Desaulniers
	<ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>,
	"linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>
Subject: Re: [PATCH] mips: Fix unroll macro when building with Clang
Thread-Topic: [PATCH] mips: Fix unroll macro when building with Clang
Thread-Index: AQHVf65JWhHySr7ydUe0eu/Ed/jbNg==
Date: Thu, 10 Oct 2019 21:04:21 +0000
Message-ID: <MWHPR2201MB1277296EAF034DFC726FF1EFC1940@MWHPR2201MB1277.namprd22.prod.outlook.com>
References: <20191010203159.20565-1-natechancellor@gmail.com>
In-Reply-To: <20191010203159.20565-1-natechancellor@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR01CA0022.prod.exchangelabs.com (2603:10b6:a02:80::35)
 To MWHPR2201MB1277.namprd22.prod.outlook.com (2603:10b6:301:18::12)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [12.94.197.246]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 97f61870-1968-4b90-1702-08d74dc56bf7
x-ms-traffictypediagnostic: MWHPR2201MB1279:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR2201MB12799DAED4CA42269E83544CC1940@MWHPR2201MB1279.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 018632C080
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(396003)(376002)(39840400004)(136003)(346002)(366004)(199004)(189003)(71200400001)(966005)(11346002)(446003)(71190400001)(486006)(478600001)(256004)(54906003)(99286004)(14444005)(476003)(4326008)(14454004)(44832011)(66066001)(66946007)(66476007)(66556008)(64756008)(66446008)(42882007)(52536014)(6916009)(5660300002)(102836004)(8676002)(81156014)(74316002)(81166006)(26005)(7696005)(52116002)(305945005)(76176011)(3846002)(1411001)(6116002)(6506007)(186003)(33656002)(386003)(316002)(25786009)(6246003)(6306002)(55016002)(9686003)(7736002)(2906002)(8936002)(6436002)(229853002);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR2201MB1279;H:MWHPR2201MB1277.namprd22.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZbR1cgjsiBJoS7dM+CFycl888a2v9OQC0MWrtlCLzeqKpgls0wY9TYHE3CrR4VarkQrQesfD4DNGNu6nZ49fLKOf2DNMGvb3BYgFi5cH0PJ6A1+krgm2ybsEEnBodZCrnHbP5z8PkcXo/1jGmHjxSYrEyU6TyKvn6xaS3aEUO37NYeR3cM2cgxr4c5MvBT3s3kEud4TVo0V6Lbt4EpnDAtKwZyDFu6PrQk2BsPoxUshfMLh1ma+6K0V9VuIzzvHo1lWz56U19CP/BpV81gFqhP6Qp2O0paRSRGqXTK3tumbIWpGEUEG98v3flIWdoMSD4m1eCtrXMLhAx8sP7yHyWV94A8Vy3aHy0w6PhQ1AjJDiRLyK1XQzPrTXvKcOmyFats2iY8vLQaYOyeiQVz5f/ItTHnNV6N1+5jMBJHcchruB6gyFJU9hvqBctYxcuGhWY77IVoHySAoQYR6JwaBvsA==
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 97f61870-1968-4b90-1702-08d74dc56bf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2019 21:04:21.4574
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LTK1snwJCTmU3SFsSyoZ+cjXOM/DT3gRF+TDFGp2tEUp7O+rmtX3/feuvNqNRV5z3Z32oLUVOUmqrtXy+CEkng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1279
X-Original-Sender: paul.burton@mips.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@wavecomp.com header.s=selector2 header.b=W9XjitJV;       arc=pass
 (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass
 fromdomain=mips.com);       spf=pass (google.com: domain of
 pburton@wavecomp.com designates 40.107.80.120 as permitted sender) smtp.mailfrom=pburton@wavecomp.com
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
> Building with Clang errors after commit 6baaeadae911 ("MIPS: Provide
> unroll() macro, use it for cache ops") since the GCC_VERSION macro
> is defined in include/linux/compiler-gcc.h, which is only included
> in compiler.h when using GCC:
> 
> In file included from arch/mips/kernel/mips-mt.c:20:
> ./arch/mips/include/asm/r4kcache.h:254:1: error: use of undeclared
> identifier 'GCC_VERSION'; did you mean 'S_VERSION'?
> __BUILD_BLAST_CACHE(i, icache, Index_Invalidate_I, Hit_Invalidate_I, 32,
> )
> ^
> ./arch/mips/include/asm/r4kcache.h:219:4: note: expanded from macro
> '__BUILD_BLAST_CACHE'
>                         cache_unroll(32, kernel_cache, indexop,
>                         ^
> ./arch/mips/include/asm/r4kcache.h:203:2: note: expanded from macro
> 'cache_unroll'
>         unroll(times, _cache_op, insn, op, (addr) + (i++ * (lsize)));
>         ^
> ./arch/mips/include/asm/unroll.h:28:15: note: expanded from macro
> 'unroll'
>         BUILD_BUG_ON(GCC_VERSION >= 40700 &&                    \
>                      ^
> 
> Use CONFIG_GCC_VERSION, which will always be set by Kconfig.
> Additionally, Clang 8 had improvements around __builtin_constant_p so
> use that as a lower limit for this check with Clang (although MIPS
> wasn't buildable until Clang 9); building a kernel with Clang 9.0.0
> has no issues after this change.

Applied to mips-next.

> commit df3da04880b4
> https://git.kernel.org/mips/c/df3da04880b4
> 
> Fixes: 6baaeadae911 ("MIPS: Provide unroll() macro, use it for cache ops")
> Link: https://github.com/ClangBuiltLinux/linux/issues/736
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Paul Burton <paul.burton@mips.com>

Thanks,
    Paul

[ This message was auto-generated; if you believe anything is incorrect
  then please email paul.burton@mips.com to report it. ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/MWHPR2201MB1277296EAF034DFC726FF1EFC1940%40MWHPR2201MB1277.namprd22.prod.outlook.com.
