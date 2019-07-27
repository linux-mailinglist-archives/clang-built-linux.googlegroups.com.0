Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBE4K6LUQKGQE3LFF2ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAE077AAE
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jul 2019 19:08:37 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id f28sf50651594qtg.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jul 2019 10:08:37 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1564247316; cv=pass;
        d=google.com; s=arc-20160816;
        b=NOhxVpStMce00fLtpRE36RyVcQZvtrnSitOTzrwCQzymmz2SxRWV49bo9k2rrxzHLX
         QRjsxnUNCEdnWn27+1npgC7Zogzka197QQzLdKktcYQTmgLj+/YlP69fTyMbOqNKRRuO
         otR8Rt7TMeIX6R2teNg1aM2UG9Ep08GbEyR1pckpCM6GsbsFhgWo+t7nfflnDY4pfwSL
         DLcrDxZ8qHy1pjhWrFrCKOhSSYYgL+jBHoOgQ6RK9xMHp9Gn9/FbRo8ud6wpgKV5+Uwu
         d2OBnuJUpgGO05pRGAVG+LyfoNTERKXWz2mgXWQQ6ZCheLYypGrLpv7B7nU/TBRuytGR
         QCGg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=2egkkowioKKeyupy2Bd66Cnw4HwRJ4s/egl5nUJGtmo=;
        b=0NQ/eW330Fs31UnpLe5PiERKtKfR9PVQ4vACXGDXDTyeghBkLskOCDF1Sq8KjCKqi1
         GV5tFtBsY0MB4PVKUQlZc2H6hU5coe4Oh4Br2g0dEQPqPrR3muJraiKvRgif4K3PuPQp
         fmYy1P1hMIELEagB2JVONInYoV8MoLoNznyU1YGxyJpZsdKoRUxFw+XQkK2LHtGtkruw
         0YYz9C67y/Rb84ZvBEOLIxvcgzky28i6iyAerhOsZRHUgfvuo2MGl2E4OXyCdYW1ZPxa
         5KMr65eVrjrPCzvu5UGzPSxyJbqWixft0Qhcmttoi7Om95Ao+iPBfck1ofvAhCKj5rDh
         r9lw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=H0w7Hwgs;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=CJnYXGj9;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=2111fa7ddd=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=2111fa7ddd=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2egkkowioKKeyupy2Bd66Cnw4HwRJ4s/egl5nUJGtmo=;
        b=P5Ir6QYy+IZlqVyJR+HkEv8rhp0DxF+Q1Xef+oWZUIU6ckFgQz7lohabfVif1foHFU
         zuuFctumXwmDEKkkFDqYof6mlXSaYLDwzKlgtn8IGlbK2wL8HXyB20YthYFtD8AicYLK
         AuJU/dWQoTbxVsxlBodDfpXM3+ELxTjgwlR2pktsRcMuYlAFlneZRAubGgwBfuqyDgrb
         58Uz1yTd+5LmQ8yMslwY5zwO4hU+akJa98J8sUhDOh3aBKsL7Gso3ge2hm2vB9A7QHVp
         wP6Dt/ycAa40ROtXSBSlO/GRb7t15Ih0IMF1P4mQfjc7VzHc5+QNi4wlrBOIq3xTfvhY
         0ULQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2egkkowioKKeyupy2Bd66Cnw4HwRJ4s/egl5nUJGtmo=;
        b=kJD3ZPOPGhPAiZ3HzWwDADlcck06G24Fl1cfVUIqgCL/ZFHktlJuUGpKWQ+m3ITXz1
         VNI/jFjkkPiGFPo+FIw45qr8J4Qbkx5Az0bfcEJV1ZOiczSO8RTl8t6c1SD2jtcLZ2oc
         QX+hyk73h4h8YczzywKNbs0mDUg4meGRtv4kgK5y9GvzAaF+IO63JI4LZ5e7uypiXhup
         tLuVI98XYif8mMW9cMuq8NwKd0q/JGLxBMiFNwpATiKCZt5CGQnzw640agO18ryo+Fqj
         UbZ6kTiJ47pikn0HIMkjtT1pH5mM0pwwIcf1AVAbskR/f9c0bRzTFXHjNYC8gFEXaE3S
         X3pQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWDg8tk4pQ/Nh76m7LHOQgdQcIC92BS5d9kfcFDri40Mcjfu8gv
	YAkSSWyCZrzRN0PVwgCqsyo=
X-Google-Smtp-Source: APXvYqy6crcroo6D70EC8lud5tGHjodRivbFScnvQVjR3xJoKxxPz0BTLiyZPhmByh+jRSkBCtw3VA==
X-Received: by 2002:a05:620a:1106:: with SMTP id o6mr64035176qkk.272.1564247315949;
        Sat, 27 Jul 2019 10:08:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:32a4:: with SMTP id z33ls1115334qtd.13.gmail; Sat, 27
 Jul 2019 10:08:35 -0700 (PDT)
X-Received: by 2002:ac8:3794:: with SMTP id d20mr70999724qtc.392.1564247315643;
        Sat, 27 Jul 2019 10:08:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564247315; cv=pass;
        d=google.com; s=arc-20160816;
        b=QYEs5RU8G46Q6cFGZwVl+tCdPtJWZPAd9ct9o/FRgZ3gG5qKDFScBDoY3v7bJN8DNF
         mY5Rkq7uiBtqCAW/m0ZuIMfhxX2qUUCVXYC2TX0KQs0z3lFaWPgI68ug10MiHe2ol676
         OGjdlvUUoiP5XdkWVLtUMdssp5AsTPCys3EoUri7LrCpXtFBISPB4UtrIkAdlgNq+3Rg
         VyGh4kFgXnCn2P880JzDUF1DHn5CfvAIosFKFA47j97rbn4uNA7H1HxjoBfbnfcy2PuA
         HU2Do23f4X8TttVgtCN4PKSJ1ZPMXGYNweCnUgF074jlyL3YMAx0Ti126KZi0dfaEtln
         dLDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=YxGz/74tcwCqiM4o2USaBrDhbjfpdA/JqUbUV7K6ZpQ=;
        b=ae8dvTboHMPBi9XiF2L4Fi3ziDdNARHgzNcBJmRu34Du15mkxPHyAnQT6sEOtQS3VH
         /U+yb5SFY4n9pYcVu0b3wIoc7FCwYIFSylukweWbkxz4d/MovJPVdI9yPrmD2950O3ZV
         UaOVHEO8+lyx/9rZIeUPtJ/xMgI378v0NyiESBB6xhjgOKOeg/k3XAjvzFdN1oUghV5J
         2MWGaYPHSBnER88UWxODIOVB3Z42TV1+rjS3xhqwN3X0yf8+1RPAxyJhhh5vMWxmfOrY
         ocNdP7+zk3W2dBI9T26V/VmDrgq7ME9XqeXWylIlNex/Y2G2U2eKd1aYBQDHwSlGDg5B
         udGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=H0w7Hwgs;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=CJnYXGj9;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=2111fa7ddd=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=2111fa7ddd=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id c23si1532217qkl.5.2019.07.27.10.08.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Jul 2019 10:08:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=2111fa7ddd=yhs@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0044012.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x6RH4jjx020283;
	Sat, 27 Jul 2019 10:08:30 -0700
Received: from maileast.thefacebook.com ([163.114.130.16])
	by mx0a-00082601.pphosted.com with ESMTP id 2u0ma0rxba-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Sat, 27 Jul 2019 10:08:30 -0700
Received: from ash-exopmbx201.TheFacebook.com (2620:10d:c0a8:83::8) by
 ash-exhub201.TheFacebook.com (2620:10d:c0a8:83::7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 27 Jul 2019 10:08:29 -0700
Received: from ash-exhub102.TheFacebook.com (2620:10d:c0a8:82::f) by
 ash-exopmbx201.TheFacebook.com (2620:10d:c0a8:83::8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 27 Jul 2019 10:08:28 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (100.104.31.183)
 by o365-in.thefacebook.com (100.104.35.172) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Sat, 27 Jul 2019 10:08:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dwONNwygm26+5yxEhuTBZro046ckrkqTZIWr3fZ/ZPzWtrar2+uy7VQZEtXcmv1tI2C9t98W4aFYMfnfBKpMu9qWzK7W2nBBAEt/D4m0HxAThpgo1oEJ5EsBagYodOc1s5F9NBKFLbiPuSJt7giehRVarV9Hcc43CsiF1Wvk9E+XrCYv3zDdGJsMd1JjfY+lYw3M9kVEJfBhwyRQaDqm7v5SbZZcV8eaWRJsHy7K3kR2jsXX7mzoOBCCA84j27Vqk+vUgq278Dg42flD4Z4j1HnnUUHNvlFxiH6LZxPda0Q6cd9kdIbic4UaeLQiCK5X30ukutCJTMyOy8sITGp30A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YxGz/74tcwCqiM4o2USaBrDhbjfpdA/JqUbUV7K6ZpQ=;
 b=HWXUj1kpGPm5uIIyZ5pdqBMjxCifaZkuw4AtkGW5Z8mkTcroKgABMogrMbfTcAFb2iceWHEv8jYjn2cfI5pA8+/cJ+thlE9ZjMG/5r83iRrMaymmmmqO5ftVk27+pCpAGBeio8532TmECetnsrmVpaSdcOWqcnhVPE2HuAqdHX4DrgXm2MKr38cUJDpbmwXSe4YL5txsypuznSL7bNpCod4SOjtWc4ghzHlD2RuPy/YPpQrl+HaFNAtvbqDKtr8nCtKBTKePrt2+7t3hoFI5KCVOD2S0iCO8lt9+gqmcG5mSlvVfKgWFccRh4qf+qn9x4QCEqA8AjXHptaXPc4S01A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=fb.com;dmarc=pass action=none header.from=fb.com;dkim=pass
 header.d=fb.com;arc=none
Received: from BYAPR15MB3384.namprd15.prod.outlook.com (20.179.59.17) by
 BYAPR15MB2278.namprd15.prod.outlook.com (52.135.197.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.13; Sat, 27 Jul 2019 17:08:12 +0000
Received: from BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::e499:ecba:ec04:abac]) by BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::e499:ecba:ec04:abac%5]) with mapi id 15.20.2115.005; Sat, 27 Jul 2019
 17:08:12 +0000
From: Yonghong Song <yhs@fb.com>
To: "sedat.dilek@gmail.com" <sedat.dilek@gmail.com>,
        Alexei Starovoitov
	<alexei.starovoitov@gmail.com>
CC: Alexei Starovoitov <ast@kernel.org>,
        Daniel Borkmann
	<daniel@iogearbox.net>, Martin Lau <kafai@fb.com>,
        Song Liu
	<songliubraving@fb.com>,
        "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
        "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
        Clang-Built-Linux ML
	<clang-built-linux@googlegroups.com>,
        Kees Cook <keescook@chromium.org>,
        Nick
 Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor
	<natechancellor@gmail.com>
Subject: Re: next-20190723: bpf/seccomp - systemd/journald issue?
Thread-Topic: next-20190723: bpf/seccomp - systemd/journald issue?
Thread-Index: AQHVQ4xS9PP3XA7/nkqulb+RBeHJq6bcleMAgADHHgCAAAbMgP//jN8AgAEkTwyAAJ+kgA==
Date: Sat, 27 Jul 2019 17:08:11 +0000
Message-ID: <934a2a0a-c3fb-fd75-b8a3-c1042d73ca0c@fb.com>
References: <CA+icZUWF=B_phP8eGD3v2d9jSSK6Y-N65y-T6xewZnY91vc2_Q@mail.gmail.com>
 <c2524c96-d71c-d7db-22ec-12da905dc180@fb.com>
 <CA+icZUXYp=Jx+8aGrZmkCbSFp-cSPcoRzRdRJsPj4yYNs_mJQw@mail.gmail.com>
 <CA+icZUXsPRWmH3i-9=TK-=2HviubRqpAeDJGriWHgK1fkFhgUg@mail.gmail.com>
 <295d2acd-0844-9a40-3f94-5bcbb13871d2@fb.com>
 <CA+icZUUe0QE9QGMom1iQwuG8nM7Oi4Mq0GKqrLvebyxfUmj6RQ@mail.gmail.com>
 <CAADnVQLhymu8YqtfM1NHD5LMgO6a=FZYaeaYS1oCyfGoBDE_BQ@mail.gmail.com>
 <CA+icZUXGPCgdJzxTO+8W0EzNLZEQ88J_wusp7fPfEkNE2RoXJA@mail.gmail.com>
In-Reply-To: <CA+icZUXGPCgdJzxTO+8W0EzNLZEQ88J_wusp7fPfEkNE2RoXJA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR01CA0036.prod.exchangelabs.com (2603:10b6:300:101::22)
 To BYAPR15MB3384.namprd15.prod.outlook.com (2603:10b6:a03:10e::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:180::1:16cd]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10a58177-1c58-4e86-b5b8-08d712b5012b
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:BYAPR15MB2278;
x-ms-traffictypediagnostic: BYAPR15MB2278:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR15MB227807DB7B697E1D81BC816CD3C30@BYAPR15MB2278.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01110342A5
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(396003)(136003)(366004)(376002)(346002)(39860400002)(45914002)(189003)(31014005)(199004)(40764003)(52314003)(11346002)(316002)(76176011)(386003)(2906002)(6246003)(486006)(7416002)(102836004)(2501003)(68736007)(8936002)(46003)(476003)(446003)(6506007)(53546011)(36756003)(71200400001)(86362001)(31696002)(81156014)(5660300002)(81166006)(8676002)(14454004)(256004)(66946007)(66476007)(64756008)(66556008)(66446008)(6486002)(229853002)(6436002)(14444005)(6306002)(6512007)(110136005)(478600001)(25786009)(186003)(4326008)(99286004)(966005)(7736002)(31686004)(2616005)(71190400001)(52116002)(53936002)(305945005)(54906003)(6116002);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR15MB2278;H:BYAPR15MB3384.namprd15.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NqiZmpqowOmHdOghP2N1Dmq7vgIk1STYjC31akf1Wq6dhBdUMRo7rp18ArTDR7KL67SYBOJoSOkwWuYdf7lb0M7VQ8Ckzrm8Hj6LYbzvIGdlTGMUAfZ2zQDMr9Rxsvm0bf0qhEXZfykKydJeF1gUlIUn8EK9lpd1aNyJLGAkkJWmNo/fEQyFshrDlgm8TFNYUa3cf2y4c9J/ePQJy394xrRSIaESw2pUFzMythySw7aD7z6LMIUDFCyfFmfcUrIB4d1ABxkMGNAcbK21G+vWKte0MO2wAqlPVysPEvWeF8VWw8glTTjk4hZ+u5Gs1Gg/ZIF3FNTFMKdWeCUkochqVmQi+U86Fef1yGia84F6A/N+MpBhi/4FgL+mhSXwPyfZr9BdlMlVhuDT2/on2J91hvhef5eUjPeF6b8jHLrDAzw=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <197C97ED56EA194985E51A7D661AEC4B@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 10a58177-1c58-4e86-b5b8-08d712b5012b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2019 17:08:11.8264
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yhs@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2278
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-07-27_13:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1907270215
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=H0w7Hwgs;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=CJnYXGj9;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=2111fa7ddd=yhs@fb.com designates 67.231.145.42 as permitted
 sender) smtp.mailfrom="prvs=2111fa7ddd=yhs@fb.com";       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=fb.com
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



On 7/27/19 12:36 AM, Sedat Dilek wrote:
> On Sat, Jul 27, 2019 at 4:24 AM Alexei Starovoitov
> <alexei.starovoitov@gmail.com> wrote:
>>
>> On Fri, Jul 26, 2019 at 2:19 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>>>
>>> On Fri, Jul 26, 2019 at 11:10 PM Yonghong Song <yhs@fb.com> wrote:
>>>>
>>>>
>>>>
>>>> On 7/26/19 2:02 PM, Sedat Dilek wrote:
>>>>> On Fri, Jul 26, 2019 at 10:38 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>>>>>>
>>>>>> Hi Yonghong Song,
>>>>>>
>>>>>> On Fri, Jul 26, 2019 at 5:45 PM Yonghong Song <yhs@fb.com> wrote:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> On 7/26/19 1:26 AM, Sedat Dilek wrote:
>>>>>>>> Hi,
>>>>>>>>
>>>>>>>> I have opened a new issue in the ClangBuiltLinux issue tracker.
>>>>>>>
>>>>>>> Glad to know clang 9 has asm goto support and now It can compile
>>>>>>> kernel again.
>>>>>>>
>>>>>>
>>>>>> Yupp.
>>>>>>
>>>>>>>>
>>>>>>>> I am seeing a problem in the area bpf/seccomp causing
>>>>>>>> systemd/journald/udevd services to fail.
>>>>>>>>
>>>>>>>> [Fri Jul 26 08:08:43 2019] systemd[453]: systemd-udevd.service: Failed
>>>>>>>> to connect stdout to the journal socket, ignoring: Connection refused
>>>>>>>>
>>>>>>>> This happens when I use the (LLVM) LLD ld.lld-9 linker but not with
>>>>>>>> BFD linker ld.bfd on Debian/buster AMD64.
>>>>>>>> In both cases I use clang-9 (prerelease).
>>>>>>>
>>>>>>> Looks like it is a lld bug.
>>>>>>>
>>>>>>> I see the stack trace has __bpf_prog_run32() which is used by
>>>>>>> kernel bpf interpreter. Could you try to enable bpf jit
>>>>>>>      sysctl net.core.bpf_jit_enable = 1
>>>>>>> If this passed, it will prove it is interpreter related.
>>>>>>>
>>>>>>
>>>>>> After...
>>>>>>
>>>>>> sysctl -w net.core.bpf_jit_enable=1
>>>>>>
>>>>>> I can start all failed systemd services.
>>>>>>
>>>>>> systemd-journald.service
>>>>>> systemd-udevd.service
>>>>>> haveged.service
>>>>>>
>>>>>> This is in maintenance mode.
>>>>>>
>>>>>> What is next: Do set a permanent sysctl setting for net.core.bpf_jit_enable?
>>>>>>
>>>>>
>>>>> This is what I did:
>>>>
>>>> I probably won't have cycles to debug this potential lld issue.
>>>> Maybe you already did, I suggest you put enough reproducible
>>>> details in the bug you filed against lld so they can take a look.
>>>>
>>>
>>> I understand and will put the journalctl-log into the CBL issue
>>> tracker and update informations.
>>>
>>> Thanks for your help understanding the BPF correlations.
>>>
>>> Is setting 'net.core.bpf_jit_enable = 2' helpful here?
>>
>> jit_enable=1 is enough.
>> Or use CONFIG_BPF_JIT_ALWAYS_ON to workaround.
>>
>> It sounds like clang miscompiles interpreter.
>> modprobe test_bpf
>> should be able to point out which part of interpreter is broken.
> 
> Maybe we need something like...
> 
> "bpf: Disable GCC -fgcse optimization for ___bpf_prog_run()"
> 
> ...for clang?

Not sure how do you get conclusion it is gcse causing the problem.
But anyway, adding such flag in the kernel is not a good idea.
clang/llvm should be fixed instead. Esp. there is still time
for 9.0.0 release to fix bugs.

> 
> - Sedat -
> 
> [1] https://git.kernel.org/linus/3193c0836f203a91bef96d88c64cccf0be090d9c
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/934a2a0a-c3fb-fd75-b8a3-c1042d73ca0c%40fb.com.
