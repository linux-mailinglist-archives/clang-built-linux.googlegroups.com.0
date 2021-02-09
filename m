Return-Path: <clang-built-linux+bncBCD4PZ7MGEIK34MKQEDBUBA3JKMOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CBE3153E5
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 17:30:39 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id x12sf17708197wrw.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 08:30:39 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1612888238; cv=pass;
        d=google.com; s=arc-20160816;
        b=jxsNvu3UNLFgWKH/SDrB1rWCdLUmXiNUqEAGB/lgrAKxJt+BdRY0w+dycUM+Y2ZOSi
         OUsW4n7oTF5LDd9xSsrZiAtKcHrLS7O8pNIjKdpjo+GiMdAGwNjOSGCNByVGIjv3jQ0v
         4AJytWd+Nod7/YhakBd39+iDkBULLDEaWWhXxwudSHbrNAgEiVgnTmZX4uTI8F+p6zkK
         GR0b1cdqKDIZHPLbbReqc9ia28vU4Oo1gVTBKvbIY8Zbq3XmJwFKCCM2KW/hTUlRege6
         c+Svl+SlcEC6ul1BZreS5zSvN3bKveLoOK+VAymoef4eJqGMnpYdbl2KGmPiLrehPpsD
         u2ng==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:original-authentication-results
         :mime-version:content-transfer-encoding:content-id:nodisclaimer
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=e/Dd+bY/6t4zzQEr+ra41trtoMcJ6BJMvWXnkXJbYyk=;
        b=Bjrb/FkNdEMMvgKCcdWHFjJaZVHac5gHOG5IitkGJvoEzFH5VX/LJr4QzzpCQLMXck
         6nth+jwxna563xVQSKV1LFnm7zMEYqsykOjCN6h8qupop2ICShYmdt5nDKmkHhqRd0qh
         9DzTO12G+IQHsjf3RB4mKwBsgLPSscn9B/ePKJe3WaYDXeJNoizb08u6k/Z6anRkkyHz
         bbViBWObUO3LHJBvIIPO879cAGuOlspazZhatfDsJXGBMZr3SIBj/ptv9KPl4TV20rKr
         /bbwG4C7Ny1bzUaxzdLeEjYAYM98l1UXBYFLiU/fI7YPGK1zy3yL2/gIg4iI2V6YVO9E
         l4dg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b="B3FKj3/Y";
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b="B3FKj3/Y";
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of daniel.kiss@arm.com designates 40.107.3.60 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :nodisclaimer:content-id:content-transfer-encoding:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e/Dd+bY/6t4zzQEr+ra41trtoMcJ6BJMvWXnkXJbYyk=;
        b=BKr68bbl5QPFV/QeRQ49t0dicA0eUVRsILuyiKRDvZ6yHYgbaqphVp82Vu81Bpx9Ij
         rzedmkyIlpp+QVT3z3/L6HQhSidY0+iL2qjh39jxFLmrIqGB6tuuroSrRAQclcSUNjrg
         8pddIk+atBqQj4JawklZ4XSmhDU3Z2KA35ISNRNxMqqQCyjYNGmWiaP4sAj5aga+MaEs
         mncyLb4i/eAnQEIorfPyHoKu4QBNnCwOgcIHSx8kzB9ojy/ss3iDtMlNc+OSHWTCjSt7
         XwUXhO6TBhemY0ED+A4XDerf8Z34wI84W7DeZEm6tIk2/0ctaRIY+1YWK2FZP8SH4HkO
         qGnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:nodisclaimer:content-id:content-transfer-encoding
         :mime-version:original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e/Dd+bY/6t4zzQEr+ra41trtoMcJ6BJMvWXnkXJbYyk=;
        b=QznEhdIPlcsA+P/DYfVRpChTCQfrOQjIr849xZoJiP/OpIBplxGhEuEff6zt6GLvGn
         qgbhdomQR1msuRYpwafJBD8pC4x9IK0SPSQRCZhUJxc+r1Nneooxc7r5lei47Xj1gmHs
         FBtSkr230y/Csj8ZBbskt3SCVR4WqEXXTErG6Cvusvzx0AU6XzbknK1qTJqyBpgPTZQz
         uFJ72OK813QK58y0bjRj6zK+loai4hSrmToU7gts5CwRr306OdIxb19E4CnjDbrFv5Ch
         hfiMkc8VryUrBBA98U2Dt+nIDZJXd5tHKZA7GfkUDaq928PO5z5ZvvNRIimbc9tbqTSH
         FrnA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tRMcozYEU5LVBPZ9vdl50xUoLf/JhvoAhLb0pfbtt+kRcNUxM
	S14AtJe3E5CgzC1CUpm/pLE=
X-Google-Smtp-Source: ABdhPJxTEVjDNZf7kRHnv8BeS5HuQOShvkrFmjMCh+mXm0KQOLzOe7ZBx3mvBVgzChtYFikhNaAplw==
X-Received: by 2002:a5d:4583:: with SMTP id p3mr4283825wrq.305.1612888237821;
        Tue, 09 Feb 2021 08:30:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4d02:: with SMTP id z2ls9365159wrt.3.gmail; Tue, 09 Feb
 2021 08:30:37 -0800 (PST)
X-Received: by 2002:adf:ecd2:: with SMTP id s18mr26754317wro.311.1612888237035;
        Tue, 09 Feb 2021 08:30:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612888237; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZGE1QCssL1YUyUdfBgXfwgZXI+QQjWjQvl4r+bPJWHoG8YUynJt09imKT9r+UmPdVW
         Xlg9grY6CGTmP772lRGeGRrT/KSD4pma29wkYGS/NeqoZuAEwVknmNyJ7NHp3IUQi50O
         TAskiv5ovqdw3q5u9Tovk+MIWZ/roH+plw+dhBQN/L97vG1al3RvsBswb5J5YNgShOR5
         rR10iTBUcDOy2edNYEVmqcvPJLmy5Ehr8KOFbAvwco9TjRrS2LxHnQzUu2iU+FKnFeZW
         Reupt4Ie6I3QlIp2s4gXLBcke96I56WL8ygXo+R1I0XZ/g9CEE4YUtV14UvGkXStMFoC
         9JYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=original-authentication-results:mime-version
         :content-transfer-encoding:content-id:nodisclaimer
         :authentication-results-original:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature:dkim-signature;
        bh=fSfBeqQu2ZNAulHAwLik+ndn0PoLiO5JFqhZf2KazCM=;
        b=OqDGI5estMz5lEZK3JCJC2PIghj0ZUKPPEZL+l7w2Ste5UVHl0F30jpeOgQIKpzNTx
         EsVt/R3PWP4nu+q6kduiJJLj1MSHc39S2Md5WCn4FqBwJAufsNnRp4rek5qsGcrL+NLI
         OgDpngW6YvqW9g2JvldWtpRFYDQAq6id/WGgzsupnOlHDvctTFWJPKiYMTZl/2ut5U/H
         BN+eoKbCAqqUbbu9OwregESGjpE07LvP6BSLFn2q6p/YnkcZPlApd3QOtdyZkccsUd2U
         tGTy1KuMek5D15GC6PLCT/0biOXKlJeoipo8E7s+8BYJot8Z7XGOKaAKfkLXH/Mu3YVh
         EHHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b="B3FKj3/Y";
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b="B3FKj3/Y";
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of daniel.kiss@arm.com designates 40.107.3.60 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (mail-eopbgr30060.outbound.protection.outlook.com. [40.107.3.60])
        by gmr-mx.google.com with ESMTPS id v16si185083wmh.1.2021.02.09.08.30.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2021 08:30:37 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.kiss@arm.com designates 40.107.3.60 as permitted sender) client-ip=40.107.3.60;
Received: from AM6PR08CA0047.eurprd08.prod.outlook.com (2603:10a6:20b:c0::35)
 by AM6PR08MB3270.eurprd08.prod.outlook.com (2603:10a6:209:50::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.20; Tue, 9 Feb
 2021 16:30:32 +0000
Received: from VE1EUR03FT061.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:c0:cafe::9) by AM6PR08CA0047.outlook.office365.com
 (2603:10a6:20b:c0::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.19 via Frontend
 Transport; Tue, 9 Feb 2021 16:30:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; googlegroups.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;googlegroups.com; dmarc=pass action=none
 header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT061.mail.protection.outlook.com (10.152.19.220) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3784.11 via Frontend Transport; Tue, 9 Feb 2021 16:30:32 +0000
Received: ("Tessian outbound f362b81824dc:v71"); Tue, 09 Feb 2021 16:30:31 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 6f365614198d9450
X-CR-MTA-TID: 64aa7808
Received: from c83f8edfa328.3
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 78E4BF87-AB8D-40C0-A3E8-9D9640A82DAE.1;
	Tue, 09 Feb 2021 16:30:19 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id c83f8edfa328.3
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 09 Feb 2021 16:30:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kcbVlXYMx2ywHFrCQ/ewl7ZDnOm4MhKFRD63rJ+AEgWOqQ3qKWKY2lkOCte7LsrBJaOr3idSBne0oyc/RFo7M8Dhs9bYRyGYiQLT7IL+eJeWMkvfJl4Hrtf9sHmTghk2KPyVGNAKvK0URkzdIBc2HNv7jMqg3b3UairIi7NjKD5ZYPZnIj7x/J3BKvuw6PDu1XM+H71wNApGSQ5ZJjB24gfBdLw3Jddrkd5M9Chq/EJnV8zMTnq1rp3jYj8VM9tKxq1HfmidFwOHGSm/4g7YYMRNdttoHDma4d5ptJR4eeLCvFpnneGJpof8XKEp+4jnKXxkVANPg9821jT9XBtoJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fSfBeqQu2ZNAulHAwLik+ndn0PoLiO5JFqhZf2KazCM=;
 b=GlcR0iWhpDTDx9Ql2SHySkV7dDpZ26FJ/FBAmXnfytB5TYVi9/XdGKjkVW5p3o0FfFtoab2nFhSOLbyuw6RUSzmYEY5b2KlPbiqVL8nmCzNmWgclaeK/QpXbEOPGskO0haNZ3DUR4YjhhP570FtWV2lCIAj4HTLPqFIANubVa9MslZE0L90Ubt3XO8pY2cN4P5FdIPeT4jVe1HYRBQu4vYGslEtWuyLPEn6RPPfrC9+loOI1/N46UajsNVMpm47/JeiwKDXQ9md6l7goeL5b3tULN6hmi+2xJ/DiIEGhHPgKQawC/Fn4Zig6k/1yzyDhumMnpSUNoPltKXPwNVUCJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Received: from AM0PR08MB3026.eurprd08.prod.outlook.com (2603:10a6:208:65::21)
 by AM0PR08MB3795.eurprd08.prod.outlook.com (2603:10a6:208:105::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.30; Tue, 9 Feb
 2021 16:30:17 +0000
Received: from AM0PR08MB3026.eurprd08.prod.outlook.com
 ([fe80::c98b:a3ef:b40e:c8ae]) by AM0PR08MB3026.eurprd08.prod.outlook.com
 ([fe80::c98b:a3ef:b40e:c8ae%5]) with mapi id 15.20.3825.030; Tue, 9 Feb 2021
 16:30:17 +0000
From: Daniel Kiss <Daniel.Kiss@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: Julien Thierry <jthierry@redhat.com>, Josh Poimboeuf
	<jpoimboe@redhat.com>, Ard Biesheuvel <ardb@kernel.org>, Mark Brown
	<broonie@kernel.org>, Catalin Marinas <Catalin.Marinas@arm.com>, Kees Cook
	<keescook@chromium.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-efi <linux-efi@vger.kernel.org>, "linux-hardening@vger.kernel.org"
	<linux-hardening@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, Mark
 Rutland <Mark.Rutland@arm.com>, Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>, Peter Zijlstra
	<peterz@infradead.org>, =?utf-8?B?UmFwaGHDq2wgR2F1bHQ=?=
	<Raphael.Gault@arm.com>, Will Deacon <will@kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Bill Wendling <morbo@google.com>,
	"swine@google.com" <swine@google.com>, "yonghyun@google.com"
	<yonghyun@google.com>
Subject: Re: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
Thread-Topic: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
Thread-Index: AQHW+beH+WRA0XVWfUiytbrbk83nQapQDkIA
Date: Tue, 9 Feb 2021 16:30:17 +0000
Message-ID: <2935D431-6329-4BC8-A871-A019CD3F6EB1@arm.com>
References: <20210120173800.1660730-13-jthierry@redhat.com>
 <20210127221557.1119744-1-ndesaulniers@google.com>
 <20210127232651.rj3mo7c2oqh4ytsr@treble>
 <CAKwvOdkOeENcM5X7X926sv2Xmtko=_nOPeKZ2+51s13CW1QAjw@mail.gmail.com>
 <20210201214423.dhsma73k7ccscovm@treble>
 <CAKwvOdmgNPSpY2oPHFr8EKGXYJbm7K9gySKFgyn4FERa9nTXmw@mail.gmail.com>
 <671f1aa9-975e-1bda-6768-259adbdc24c8@redhat.com>
 <CAKwvOdkqWyDbAvMJAd6gkc2QAEL7DiZg6_uRJ6NUE4tCip4Jvw@mail.gmail.com>
In-Reply-To: <CAKwvOdkqWyDbAvMJAd6gkc2QAEL7DiZg6_uRJ6NUE4tCip4Jvw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3654.60.0.2.21)
x-originating-ip: [2001:4c4c:1b2a:1000:9c7d:1b80:7ac6:94b6]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7b74cf9f-6b17-42db-0f73-08d8cd180544
x-ms-traffictypediagnostic: AM0PR08MB3795:|AM6PR08MB3270:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB3270AD2AE0D065BB94F27419EC8E9@AM6PR08MB3270.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: KSsJp56/A4cDBuS0hoJ+xPSdfNYeVF5VsxYU1JPTxBqNHKFTELfasLjBKzPrHu1GZFDw1caEV0iRL2faabd/wHErHmvCAfYaGowD1VXbbfR0RV6gzoQuPuI/83n5qCA8ZzbamK0WEVo1VQosesmgTP4S8EBwqWb1YM4xPo9d7lF2IHWThy02ln6PsyoT06yBnfGNu71kAR4mgS4PY848Ng8MLoYipl75umEua/Pg56bZe2cOD9uplKK/jWAdoZW33lmUY1q2TGSB9wrDfgSgqSQ2pwoVW4988/Hyb7HW/97FiKSDW/J/QN03bf0eWIxXEKQuT/cIo0LUAyHdk8dBJ+lkDvklnzrZckgIMB5+F+TE3M1fpjLekEmhnXvZhsJ2Flhe6eIt7ThCue8sRnzstczyK/uD0KLskhDWvuEak0ebmTyvZMClrECuO0MGNQs1wH0rQOfS2n3oh5scMuhiB/UzG5M+aDkMnwWCX3mHypSNIVVh4nsY8nFsH5b3SkiAoS9HyiBQlPaIK2K3faPnqdvzCuREuUkbxQ9+fVJQ8pU//BoHsglGUGKgJDpC4LZ379Mdh/mGnnV0NzJXHc294A==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR08MB3026.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(136003)(346002)(39860400002)(396003)(366004)(4744005)(83380400001)(5660300002)(54906003)(71200400001)(478600001)(36756003)(33656002)(316002)(8676002)(66556008)(7416002)(86362001)(66946007)(66446008)(64756008)(2906002)(2616005)(91956017)(76116006)(8936002)(6486002)(66476007)(6916009)(6512007)(186003)(4326008)(53546011)(6506007)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?SFJPVWdwdlBLcVZ2YkRianA4ZXptZHIyOVJkQk9FUWUza09Vdm5BUnd4Rksz?=
 =?utf-8?B?aUVEUjVOM0xwMi80NWxteFc4dTJPSHZLNnZmK2RXak1zbnRBeFpzMzMvbVM1?=
 =?utf-8?B?QzFlWUgva2VxQU1ZbGtxSWxrYjQxVDlmdUpSL0dJSGZIeERNZEJGeDlXYVda?=
 =?utf-8?B?bTZuT1ZlTFdEWWZnL3lqamU4N0lwZTE1ekZmNzNZOGVXUytWWk80aVpndzRo?=
 =?utf-8?B?clNEUjFkWGcxeFk3MngxanVBa3AydHh4UzBJNGNsc2o5MFQxYnkxV2FCRW5p?=
 =?utf-8?B?RHpSV09UaS9peVR5QTBIUGVvUi8vaGZua3E2cTBXQ3dxbXcvQ0N1MWQzVzBk?=
 =?utf-8?B?dEU0eGFoc2l3V2VjdHdrZXBMRWJ6R2VhR3ZyaVl6a3Q3dlpGWEpjT210Nkgy?=
 =?utf-8?B?UllST0t0amxoQ2dObXdFNmRra1FvUlhBVnkxMWppM1RmWVpjeFRMc0d6a1pY?=
 =?utf-8?B?clRrcTI0bEVuYkN2UFNRWUZodEJzdzdnYUttYzVPNVRnUitOcG1IK3d5UlhJ?=
 =?utf-8?B?Y0R0bmFEL0NhTnFRQkQ1QnJrTGJNbGpiVTRpWGlsMk1kSjNEbjVQTXZaNmNE?=
 =?utf-8?B?ZGdZT1ZaU21zalZVVDFaNnc4TmZCa2U4MDZCdGpXaVd6MUJmUXhnTVdVbHlY?=
 =?utf-8?B?UnVhanBjcjhJNWJWckpKYUF3OHNsdG5OcjZ5dSs0NkJaQ0NZNFpNa2NWNUY4?=
 =?utf-8?B?R3BiL0t5SEJ6RFhFeGVIL1RRclFTQnJBYmVaYUtiR2txbjFNTWMyQ0g1cS9O?=
 =?utf-8?B?NnBBN2dsRXo2Y3JZNTlscFhlVHFWWXJqMVk3ZXdmdG1Ud25xaW5uOUtjOHJ4?=
 =?utf-8?B?QXRlVFVubWUvcWNYUWx3ZEF0MUZIMWd5LzB1Z2NQZE1jalF2WGM4V2RNU3lv?=
 =?utf-8?B?blNIQVg3eWlhRktwYUY3dDF2Nlp6MlZpZEFHUENUM0IwVWZlSG5oSVJocGZx?=
 =?utf-8?B?NXdNQVlQVVpHdnRiMDJTZml0cmFPOUNSdzRGQm12TUdBcUJsRTVsRlpDQkw0?=
 =?utf-8?B?d0dUcDd2YzhtcitxWFZpdllMSytvYW1tUlM2ZEJ5U1h4TjYrQ0xPSlFmQmkr?=
 =?utf-8?B?QUV5S0N2ZnAyTTdNR1d3ZHM4MkxFa292Vkk4NVZQanM0dHAxbW50YkwwQ1Z6?=
 =?utf-8?B?eWFRZHZWR0dXdDdKZjk2ODRvMVJTcktDVlNBbVJ5dVhRTXNDSXlVRWhtZHV4?=
 =?utf-8?B?aDc0aHpUbEFJbGIrSmMrcFBpMHA1SEgrcWQyTk53TFQ2Y2ExVHlIQytPLzlB?=
 =?utf-8?B?ZUczRU0yRG15WDJVR0FML2FSbmVLR056SlRwSG5SN0dDL1VMakY1djBWOGF4?=
 =?utf-8?B?NS81RjVocGdROVJSVmYvSlVVUDExemwvb01nUnNpS0dFZzNXdTdHQ1BYNWxl?=
 =?utf-8?B?YUJ5amNjazJIeUdvR2laNnhFQ1oxQk9BOGFWWVNhYkJvQVBEUXZla1JzZXFp?=
 =?utf-8?B?cGpOeWpOWHdpdjFmV05DMXU4ZzNJME10dFAwVnJqcTVFSEtBcWl4SEsrVHJS?=
 =?utf-8?B?Z3dVS2dTYjh6R0dXQTdnS1FBSEQzS3gwSTBVdUwxQm40cnYydG52L2l4RzlQ?=
 =?utf-8?B?akk2b0wvdTFiV2pwZVlaWUNSNUl5WEViUnhmMzRwdjdKQzdLTkNmb1draHhF?=
 =?utf-8?B?T2Q4dnRkbit5OU5PMVVzaFdRYUI3WkVpS0NWbjY1T2gremFXMllJYndoL3Ri?=
 =?utf-8?B?OUxyTTNmRDkwcjlIUDcrbXg1UUJSbmdXaVlybk9uZTFGb0NGNllRNmJsZDc1?=
 =?utf-8?B?V25UTGdwVjROYll2UDFMbVlqUGsxR3pLbHBiM21sV21xUDhPakxxQTVTeU4y?=
 =?utf-8?B?cGcxeVZGNFc2L0h0ZzVKNXBPQ3FTak5adzdhS1JoSTRqUEhCOTducE5XbGdJ?=
 =?utf-8?B?S29DZFVKVWlZSDROYUdBYWJHalNIcXNUVWdyY2E5MXlxL3c9PQ==?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <89F0BA4422638D468205ED064961D3CD@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3795
Original-Authentication-Results: google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT061.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 98d97d2d-8fd6-4aa8-3482-08d8cd17fc5d
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gdQ4scxO4qIILoZQmBvaCVhBJBcvVUJEEiuAU0L2Ki2BJv1H2wVM+BeitAHcV4dwh5RlcGWu/C4eMp2aONEvlyMkgZshZqD+V3SM2osZLw5kbrLfbxYTkelgHt/TckiSBDzoB0NS00AcyY/TS83cXAZqOa4Yd+F7evkloiH90Ptwult3F4qO6Iqse3ABmMZSo19VAPTacUbckdB3XO/V7VznFfLJBfzdNqSQE7P0ewAMYAGM7ptB9UQn5J100b5vK/u/CxU14VshXa3I1nak6kgopG9p+8E5VkQRtgGoy3zvpeTjvmxD4K/NA2U8t3ekXxFSqMEP5pmdMxwzqVHprJE07wU9cU6rAqVgspj+3mwYThDxiePiFmDOv9UTPrahAGS1FOzBxcqvYPPbaWeRAOJt2f3tmnMW4tqwNCZrp0IxGIklikt39UTERPNo4xO3IL2HG5KPyk8ZLO7EmRx+FDwS5tI4nrRG9g03Z5d1tbqCK/esEjK+WkSoe3r5qN9a0lXnNI7YmI1D529Q70CKAkIVDN8ZpvD1/6pq/ATlm+or82ucYGA6QDW6n7IrBxD5BhvacS/4yqUaqmJe5FDcs7WsdxX1wHOmkFX5kF/HRpIIwWKJ+h5S1UUDlMY7yrzLMFvWljV3qAXiJDblNKJCCg==
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(4636009)(39860400002)(136003)(346002)(376002)(396003)(36840700001)(46966006)(70586007)(82740400003)(82310400003)(478600001)(70206006)(33656002)(6512007)(186003)(54906003)(83380400001)(316002)(6486002)(5660300002)(4744005)(36756003)(8676002)(2906002)(4326008)(6506007)(53546011)(8936002)(81166007)(356005)(47076005)(86362001)(336012)(26005)(36860700001)(107886003)(6862004)(2616005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2021 16:30:32.1702
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b74cf9f-6b17-42db-0f73-08d8cd180544
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: VE1EUR03FT061.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3270
X-Original-Sender: daniel.kiss@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com
 header.b="B3FKj3/Y";       dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b="B3FKj3/Y";       arc=pass
 (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass
 fromdomain=arm.com);       spf=pass (google.com: domain of
 daniel.kiss@arm.com designates 40.107.3.60 as permitted sender)
 smtp.mailfrom=Daniel.Kiss@arm.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
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



> On 3 Feb 2021, at 00:01, Nick Desaulniers <ndesaulniers@google.com> wrote=
:
>=20
> I wonder if PAC or BTI also make this slightly more complex?  PAC at
> least has implications for unwinders, IIUC.

BTI has effect on the jump target\case because a landing pad is required fo=
r each and every target.
As I see that would not hurt here.

The unwinder shall take care of the PAC signed return address if reads the =
LR from the stack.
DWARF contains an entry where the LR is got signed\authenticated.

I=E2=80=99m wondering would be simpler or possible to transform the DWARD t=
o ORC.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/2935D431-6329-4BC8-A871-A019CD3F6EB1%40arm.com.
