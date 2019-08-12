Return-Path: <clang-built-linux+bncBAABBX66YPVAKGQENURCKRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF5589666
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 06:47:28 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id y7sf14904868pgq.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 21:47:28 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1565585247; cv=pass;
        d=google.com; s=arc-20160816;
        b=dGkvoEnaLppK1peTcTuHIQJS66zZ1H31ZClcTsX8EXr7aGg9MTVknBt8tOghQnqzjF
         RGgss+9nieq6+1I5h1kzkU7BAyoZQPee1AzVHLZeCDn7SPXhMyeDvwkLT0XWWCM6i/gm
         f9bJCoLPomlaYp+5bMiM+8kPgnd7R2sQhDyMYh0wyElh0RieUPeSoaKUN/j1c2wdrk7f
         /Xn+TqNVyrpJEx8O5V0hXEDU9xBpyeS1Ja3rJgNN60ESXRVgLcimUmiCreYd47LXnNke
         GJnz2m8AlWLGSBV8Hz1qNpvOfLXdaeGTxxxsFbYSiEOhOsw1zUUkYvfoYRKYZVqvXF4t
         AHHw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=SVNrYtIq68L3ZrqMj0RBqL3v0lhbgg5uRuPjhsT+btY=;
        b=TT8LutYb7u4ifSS5Fo81Wgv4dKPeOYe5XrTo60xu+uAnTRnJMgfw82S+CntVFQ7U7i
         HJhtyBGLkfR7PZac9j1iB64Q/9xdcWbONHCnPe2lHfgHwoqtYX7nvCHAHTkGMYJ3s14n
         O3dplBFvKbwQECuKDsFYGwWd8Ikmxfx8uRqP1oXrsT7oLH3ndUWlCJ2tqGlwSTRftKwo
         vFQ43HVk4nrRWVzjOtAInsxZ46R/rNWYJCEiI7lvpR53j876QiKIPiAgvuEVflRyqHS1
         i/fsUrbOXSYd5NpO37sSIvOkGpcsDd1s/FHHtea5MXOl8+SRBBzlRtbMvVHrW8DZTih/
         C+Xw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@wavecomp.com header.s=selector2 header.b=nLca5kN2;
       arc=pass (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass fromdomain=mips.com);
       spf=pass (google.com: domain of pburton@wavecomp.com designates 2a01:111:f400:fe42::71b as permitted sender) smtp.mailfrom=pburton@wavecomp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SVNrYtIq68L3ZrqMj0RBqL3v0lhbgg5uRuPjhsT+btY=;
        b=kdMnjeHCj8f18siMma6mFZwq/f3qd1HSGu3xMu4WqsVlf1aa8BIW7R1cqPrRUQO3iR
         u1IQrg7pezOGlMSAMkcm5JSZf7C1ctw4uitZR3zAeAf3u5ZdXOQoa7+xRrfdvzV+tNuD
         oiebVy4INiKq5Z43Dqe+T2ZdbelA9K2HjlXKM7ncl4u9TGl2BqfsVUGqL6xc3fmCaDnC
         zw19e0uglOGODvlju8N/l+5ouzNt5OIXPmBQcOktMsx45FbJf1F04PemKdNi2gvblC7y
         TkpKdM4lTMUWBUH22wYeQqSvQ+TSUo1AWV/sNrcYnSWRKbsg1RaQBYBcedAerX0fU9yp
         QY8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SVNrYtIq68L3ZrqMj0RBqL3v0lhbgg5uRuPjhsT+btY=;
        b=t8GBBYTa4mAWzdEQ7kZSAvg1+GZ3xkPR1CFfD3ewXA+Hzaw04AojCq0UezuI339ipB
         6siQ2rqpNCVqCcC27f2SwPLDwy7CaAXjY4yB62xK23eB39XTdX2KB4cdWxIGgD8h9tur
         0Mg1dZhvi03e06wbmKCOMASWCXlZz310Xj1VOkf79uG5eADXYkDilgoPFHNThM0B0R2H
         tr2uqwBdZXFH6t7bTHtAkejZgNYkYgZBeqiLj9ex6fAfxYgD051eOQkP1xhf7h0IwPZz
         R9Mzn64xAMM205Hp9V7jyFTsMzdFxnT9FB7kDlpFn0cvAsi0uW46HXUBOY5f70jIU/aL
         tXAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX6A7TxH+oRPZ6gOf7gN2ZjDMGXdT74FEeSjYNy/6emtHJDzTtc
	NC23OnQkq98b2soA+JMHCGA=
X-Google-Smtp-Source: APXvYqwIdFmcaJElYI1HJN6pDsoPwZxqmqWcE4LjkHQXnzyEPohPEsBWNIqiStRAtFdlm4g50ymzGw==
X-Received: by 2002:a63:7e1d:: with SMTP id z29mr28787145pgc.346.1565585247346;
        Sun, 11 Aug 2019 21:47:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:800d:: with SMTP id j13ls24143365pfi.12.gmail; Sun, 11
 Aug 2019 21:47:27 -0700 (PDT)
X-Received: by 2002:a63:cc14:: with SMTP id x20mr28981345pgf.142.1565585247026;
        Sun, 11 Aug 2019 21:47:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565585247; cv=pass;
        d=google.com; s=arc-20160816;
        b=epzYZ1Lapkes1mxvOEyeLqya18CgHX+0F/EWhnIXDTJQftQdMG3kgGpexkUZ0WIytx
         //0MvHWVtNHXu68w9/oVrxFk0p1hGPSkyWSDwk5Pf5IBfj4W1sh6ORIiXXPWSBS9jwGW
         bN6jRpX0rAv9pDGVtartz7e67XFWf/t4zHHPtN2NEMcf+dOQsXMoKIgTsA778YmcCfX6
         0w0y+xMO2/P0aqcwD/wjd7RueNwLEcde2xOwiaNJKdW1ypTR8GL36t27xj8VcGxUfqce
         fg48CvnLKCqPavMC5x1IftE6nDkDo02TG7Wth8Ar5tz19d0YjUAKtXW/iYBmVZKrRvzU
         KSjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=d2tPNjdEncHAYwHdvixqOdjOvU5ihiHWJvn2SpzvDzE=;
        b=pTNw5PcgJXgcOCswCWK9w7fqIq4+PSPJLAs0UpCkLOESzy0hzFx1H9O1PtQifXFQ7J
         g3iWrFvkBzssjvrcUUiqtFfgyCLTNJkY2ArgtCdlm8yd8v/frkxhARgPcgriFPJH45qb
         oBX652o49AxqjU5oLIkYkYuPpXhRkTWZELXn6aQFnlow/FH8g+BQ666XLGbW1KqErhZ6
         a8LwhjwhEiocZEIhdOX8jIegqvV7Ow2tTpJO1QFNv91tm5XR5fuzJ71EFZ6ekQbl8tWA
         43MtLTnYve7s18bXSSctEMqJl8STEOZKoOD0p7RCGsmakGR4jDsWUnREWDHwy7Jyj9nt
         IkoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@wavecomp.com header.s=selector2 header.b=nLca5kN2;
       arc=pass (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass fromdomain=mips.com);
       spf=pass (google.com: domain of pburton@wavecomp.com designates 2a01:111:f400:fe42::71b as permitted sender) smtp.mailfrom=pburton@wavecomp.com
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (mail-by2nam01on071b.outbound.protection.outlook.com. [2a01:111:f400:fe42::71b])
        by gmr-mx.google.com with ESMTPS id y13si4176435pfl.3.2019.08.11.21.47.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 21:47:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of pburton@wavecomp.com designates 2a01:111:f400:fe42::71b as permitted sender) client-ip=2a01:111:f400:fe42::71b;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HrrTlkE7rTj3zYnkjq75e3YpckSA1AhZ/ds3qFOvwf2Jw3jtsq3eRru7+rv0b4nTLe/CsaKKl2f05PQEaMyQosYnX2dhdcnmpMxAc6uKPGpifE1z/bbsUGgBSR95Z0oog1s7lRwyOO9XtQxLZn7xcDt4syfPk9isYxhMT87WKGNG+Dtc09eFN7ZC5smv74PY1HQGCd91Dt4ewQAg57HuZ91lL6k7s1po4nwCfABQwXVkf5DxKL1gvDm+mmCJau6Q2Ho7rI8sCLbFRzpiYuotNgRcSJGeSKeipAalsyVOguXA3ysjXUybg4b1e8E9uTvpYLA7dquvrvvlI46viqXOdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d2tPNjdEncHAYwHdvixqOdjOvU5ihiHWJvn2SpzvDzE=;
 b=ZWdR5x2/ZQRXQm5aMjeh50v11W+bldMXw76TM2zC59308I4Jy8UgjpaoAk5ytXySf+LnAxgccl5OaH7plTOsXpk91CNgUamaGb0pB+yNUIO+Sq4Ni1/dsgZvHNuC+JivUVn9LFrQnXowLkSONmSTt5XoApHPWtMAiMscu0zEE3l9L57/SkBduviLKhDL+nT5/yc3S10U1fZo+A1nQjHjR4dCUFgtV79ec7AQRtQ55+O467S9yfYeus7/5xKFiEb/XwesY4R+MBz8ZhMpfsGc8pnFZB4XvFFSgBVAfbt2Uao/3I8ap03Q4ONfNpPapheJFUFr1yFDIYpCMDtl/WDmXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wavecomp.com; dmarc=pass action=none header.from=mips.com;
 dkim=pass header.d=mips.com; arc=none
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1469.namprd22.prod.outlook.com (10.174.170.142) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.22; Mon, 12 Aug 2019 04:47:24 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f566:bf1f:dcd:862c]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f566:bf1f:dcd:862c%10]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 04:47:24 +0000
From: Paul Burton <paul.burton@mips.com>
To: Nathan Chancellor <natechancellor@gmail.com>
CC: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <pburton@wavecomp.com>,
	James Hogan <jhogan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
	"linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <natechancellor@gmail.com>, "linux-mips@vger.kernel.org"
	<linux-mips@vger.kernel.org>
Subject: Re: [PATCH 5/5] MIPS: tlbex: Explicitly cast _PAGE_NO_EXEC to a
 boolean
Thread-Topic: [PATCH 5/5] MIPS: tlbex: Explicitly cast _PAGE_NO_EXEC to a
 boolean
Thread-Index: AQHVUMkILvVfiv8aFEiOoDD3+vloLA==
Date: Mon, 12 Aug 2019 04:47:24 +0000
Message-ID: <MWHPR2201MB1277133CC3B57F621F359C42C1D30@MWHPR2201MB1277.namprd22.prod.outlook.com>
References: <20190812033120.43013-6-natechancellor@gmail.com>
In-Reply-To: <20190812033120.43013-6-natechancellor@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR06CA0003.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::16) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2601:646:8a00:9810:9d6:9cca:ff8c:efe0]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0cc0387d-80c0-410f-20d4-08d71ee02b3a
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);SRVR:MWHPR2201MB1469;
x-ms-traffictypediagnostic: MWHPR2201MB1469:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR2201MB14691DE2D27F520CA1D11C06C1D30@MWHPR2201MB1469.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(376002)(136003)(346002)(366004)(39830400003)(396003)(189003)(199004)(6306002)(81156014)(81166006)(8676002)(14454004)(9686003)(99286004)(446003)(7736002)(11346002)(42882007)(486006)(966005)(2906002)(476003)(25786009)(478600001)(8936002)(54906003)(229853002)(55016002)(6916009)(6436002)(1411001)(102836004)(52116002)(316002)(76176011)(71190400001)(71200400001)(66946007)(7696005)(64756008)(66556008)(66446008)(386003)(6506007)(186003)(66476007)(74316002)(256004)(14444005)(6246003)(46003)(33656002)(5660300002)(52536014)(44832011)(6116002)(4326008)(305945005)(53936002);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR2201MB1469;H:MWHPR2201MB1277.namprd22.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: rGjKCaWyb+XE8EnP03e6E6ZYq1IpdEQuBuScYz74iU0RVM63bMMiBV7zLRyad/X338GSWnO5eiBQOFjtsznAmzcFADJbU+sCymIeEB5GGpiieNf+AJiZuNrPWfuP6f3Z+4wdJjoUrLuo5H/eRlb43k+bGaIVrEJCp8zO30jUgDk7Xeoudr9A7nz6OAjImiWKwTrupy2fm+kx7QiwZLe3RVs8kuDLF28eVOZG6PRMtkdGFLHCHVzOJZvu/T8j4vAUT3B4QyFcmZF3bX9bNfti8cBsnVEbC9e+n723hqX3qVBLxfJcu/IbxWtgvwjy7vNU6OGut43JEBngifLfWTOJzmTQDO40AKwCzd+jmT2N0S2DlVj9H0yM8iPNnF9rt8jOobTVkpiN4/3gEmMSA/WsKbK3KttHAAAQk17r/uS+f5c=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cc0387d-80c0-410f-20d4-08d71ee02b3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 04:47:24.4651
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LASis2d6pZ8iQYJQmDmQ2G2tR6Flt/niO5CnB5Oz4codh/I0TnLU2vwAvQBQwfm3Q4MMk3zrfaw/aYf2fBv6Cw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1469
X-Original-Sender: paul.burton@mips.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@wavecomp.com header.s=selector2 header.b=nLca5kN2;       arc=pass
 (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass
 fromdomain=mips.com);       spf=pass (google.com: domain of
 pburton@wavecomp.com designates 2a01:111:f400:fe42::71b as permitted sender) smtp.mailfrom=pburton@wavecomp.com
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
> arch/mips/mm/tlbex.c:634:19: error: use of logical '&&' with constant
> operand [-Werror,-Wconstant-logical-operand]
>         if (cpu_has_rixi && _PAGE_NO_EXEC) {
>                          ^  ~~~~~~~~~~~~~
> arch/mips/mm/tlbex.c:634:19: note: use '&' for a bitwise operation
>         if (cpu_has_rixi && _PAGE_NO_EXEC) {
>                          ^~
>                          &
> arch/mips/mm/tlbex.c:634:19: note: remove constant to silence this
> warning
>         if (cpu_has_rixi && _PAGE_NO_EXEC) {
>                         ~^~~~~~~~~~~~~~~~
> 1 error generated.
> 
> Explicitly cast this value to a boolean so that clang understands we
> intend for this to be a non-zero value.
> 
> Fixes: 00bf1c691d08 ("MIPS: tlbex: Avoid placing software PTE bits in Entry* PFN fields")

Applied to mips-next.

> commit c59ae0a10551
> https://git.kernel.org/mips/c/c59ae0a10551
> 
> Fixes: 00bf1c691d08 ("MIPS: tlbex: Avoid placing software PTE bits in Entry* PFN fields")
> Link: https://github.com/ClangBuiltLinux/linux/issues/609
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Paul Burton <paul.burton@mips.com>

Thanks,
    Paul

[ This message was auto-generated; if you believe anything is incorrect
  then please email paul.burton@mips.com to report it. ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/MWHPR2201MB1277133CC3B57F621F359C42C1D30%40MWHPR2201MB1277.namprd22.prod.outlook.com.
