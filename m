Return-Path: <clang-built-linux+bncBDZIZM7MZ4IBBEEAWD6QKGQENEBTHOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCED2AF48D
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 16:15:29 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id h4sf1556253ilj.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 07:15:29 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1605107728; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qx0QXwRKephJpssTwgPI+z2SsEJgEk+fJBeiEHoM5i2WgfhqFdGB+Spi6En6i7Q5g+
         39fOmnZ4cG88GnrUM4vWIg3LxZ+YV8pTY3TJRUNST+0Djzq8rujKHTCnSanBU/6QfIgg
         QOE/OMCjYp1OwLRO6ynz43ELcHfhoaPAKrmO/zj9OZOTIFy5mG/gYbc8P5QqfMJbqkCc
         nCErlB55P+hYwmYEVbP4BZcQL9Gt8t1rrou49g7jAB3NNGiA3ZYEtDqGNP69rWn/GWOU
         ysyvU5cyTJ4kwFiZ4K4Emx2dPwA+t0Cz9mdPDQIBxwnMjv/+yK47KmHnS0i1IBiu8MkC
         +Umw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-reaction
         :dlp-product:dlp-version:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=R2glvtH16XgHuENFen8haQ2xCapehs2yFH4lRva4Jd0=;
        b=VgIPgE0e/i+XUM6jVwvW4G7RzvTrIcYgc9YMoy8AbVQsHoF+yUYRgGUpKBnpS0+qtg
         x6Jrs/PM+aSIkh5hIcDWv0Z/HdLzqJmH7QOvjZm9oD0Or0rkg1PqX14KRpIoW8lsRw+N
         4bAtiZ9VVJTaglY0JDviZCxRjQiKAELponzYlpl9bHwv+feTwxG9Av+jGaQjktQtDtDj
         /H7eeH7XsrVRcQovBKGH651pDeQUWYwnu1C4jpc0L3conZww/neQLGIwRhFJM34YE+7Q
         vCoVFGwfus+FNTBZ9SJRW5+wwkjAF5MGb+nQ04qRDQXWqijnhhF1wCqKi3KuM3meg1Qq
         DKPw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=csW0DMmE;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of robert.moore@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R2glvtH16XgHuENFen8haQ2xCapehs2yFH4lRva4Jd0=;
        b=RkQub929OWZfZGBhNjDrjaJXPizC8rjtnElKNtqdqGxtViGg7hh028As3o4UTcJIXJ
         ZTGevCf8gNWEwy22/sG680HMDQIQm8m7260ONupy4Bgr9e4U5OfUn0Qddw1NWnGMedaI
         n8zmcZ0zjdFmw1jFkcV6BUm9lqmcvS1S661i4Bzq7Ya/ZeBGW2KSw0B5zuajoJCboxcM
         g6SwTxBj0xp83ctX3R5Jtio/136GLCPeoylfHJrgdZOplHXhJLMHSRATp8wMQD+ZV9cF
         mCC19JjBxWKAZyixMdWAmrDek436hQkHRF6Mt8mSKdAfQoUSNvGX6d41UlL4/EP02UL2
         9iAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R2glvtH16XgHuENFen8haQ2xCapehs2yFH4lRva4Jd0=;
        b=Zsw8+xileMl4uSwClOVTOaJ8wS2Vi4fib4qxVjeS02p3TcakgT3ut+urRPJevN8X31
         PixBCs4dupba+1SQ8DVfcgyjt3oQC9sUBBdDlkgvgFMLLnGaNAeNZwD7iDuwZh+i01Lo
         NqwWPnSzLmm85V/nGzEVrI27MM5iQs6h67ZAozmK9B/GRZxxLL5dM58o6mTXHBgBhBW5
         ZMiU3gQbr6zpMmyM5sAf5S2QDKfyuwFNcHjbCi5NNulLhMcNhduZuAlKQUjXMc0t+ZGC
         q0XmOLbYKo70eXkEkr+NDSP5Jy/quKDXSJEf4ZuDxnv5025JcgPMNOSlPWDmcFtZxEj7
         5YJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532x8JgnGIVzfjOS8awXrUTjay7tTPQLmRZoZrjc7kqp70APHuAH
	3PniGR3oWNqio5mm5tJC/AQ=
X-Google-Smtp-Source: ABdhPJwomxubvXUB9189b6PZtm0fzjiO4UH3iFrX37WD+ZFq7/36RaFGgYxXPN0UJNiUeqog09rCgQ==
X-Received: by 2002:a6b:e613:: with SMTP id g19mr18630129ioh.17.1605107728774;
        Wed, 11 Nov 2020 07:15:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8943:: with SMTP id b3ls2286214iot.2.gmail; Wed, 11 Nov
 2020 07:15:28 -0800 (PST)
X-Received: by 2002:a5e:840a:: with SMTP id h10mr19341382ioj.169.1605107728279;
        Wed, 11 Nov 2020 07:15:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605107728; cv=pass;
        d=google.com; s=arc-20160816;
        b=oCzlytB1RnzIIb0hUd/jeUp3oTSPGZDPeOKN0ov8Q8xNOT3Avr46XsnCD8G3kV7q7B
         61F4VElL15ZOmXtkPjSgO3+VfMBVbPLaXFG7rwo/7BHOQO3QW8Dfq8HjG0F91Rwfe8Wj
         VeebFyqQ1LMr0yNVbWAyYYM43YYEkQzn6hOkROAE+rqBUj7+MbwRKks3W/50FwHRe8z6
         NFM9CN9dC0Rf7GOblZccT1m/cs7a1JKBEebelM2HVRaXbPj/hyVD8MqNyvWk4d39cg7I
         StjoWPXlukM6CEqFnOZOVtNCSb2v6WJv0OBUdPnerF6W1Dtd9g6F7coJfzba6wBzoe8X
         5Fyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:ironport-sdr:ironport-sdr;
        bh=MVmm3Wp4G62SLZDmV61fkWT/GW5oba/46Z70J+JN6g8=;
        b=OUR764QsmZYLhdpUd1nfgrchi7egcGDGeyHKJqouFDB2wAtpyvA6X9Mw6T9dtnFKkK
         CWOyQLwWgjjJqVBgvZJI6bhXQveBOwsfDclUxOD7SDiMVGkkf6aruntAgHhheHiyaM91
         QuSpxBPInYPrDa39Xq6SJHrlXcZCZyD6JlFd1OuFV2Jngxk58sU9FulNwyUkEbxWFxen
         cYfjk08P8q0pdzgtKiGrujCNX8OTeUyosuNp72G8Pb3XAT+xelIxtFwt8loWDIQNMAaM
         8A8BQZfiy7xlIwqVuiXlr1HXHxzgQQqbElWvwGXtkfbt+2lL5UXCpx4H+JmQi+1wYTKh
         FFew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=csW0DMmE;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of robert.moore@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id l1si113471ili.0.2020.11.11.07.15.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:15:28 -0800 (PST)
Received-SPF: pass (google.com: domain of robert.moore@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: J9WbU/E1f1uRdWaNcAOaOxy4VPlxuM3dDhuOjuo8YfvdlWcanSGwhIdpxgKwjGgE047dwpqevX
 C57wZ7C8TfTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="170268797"
X-IronPort-AV: E=Sophos;i="5.77,469,1596524400"; 
   d="scan'208";a="170268797"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Nov 2020 07:15:20 -0800
IronPort-SDR: 2FBNQo8U1XIrE46efkZDp+aLhXoQHKCNufSyZaTKLlDqegWteUv7L6mpZ7XAzlBM7kID8gMS1d
 qdFdYydAMVqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,469,1596524400"; 
   d="scan'208";a="308487963"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by fmsmga008.fm.intel.com with ESMTP; 11 Nov 2020 07:15:20 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Nov 2020 07:15:19 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 11 Nov 2020 07:15:19 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 11 Nov 2020 07:15:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bqvQRYtYwe/Bq5j2opx2gjuogOx8CZzD/AP5gU8dpZlFFnKaIoIS9LxTaxYHGN3uaeP8hjJHs0tO7YGs9f7TBhqskR9g6TiTrChGkAc6d5VYlKSK0Jo9cqxWywNAvr6WYfag4t9sIXFiDAsrUBSl3SyNpjsGvgG4t5qpgSHXGdIdgw3AN6vNpVmJUbu9adWFmxmdxF0jrglX7KRrqgGpRmZGVfOQCpFmqlbGS1Jfx42qLpTk66QK/JbULKXjjqOnJdBaSDuXUOMe0xZLjIIZSwlVd0NOcbBTvSFlTmeyWdB1+yf0AvmW77MP2G79TNOjBqV5T5zcx5IDSLn4PmBQZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MVmm3Wp4G62SLZDmV61fkWT/GW5oba/46Z70J+JN6g8=;
 b=UsqsYYugy8ZT3savS656xqDPTHIVQDuO3072Rj3Y0DqUsmVdUIspzjb3Nsd9ZDNrWPT2sOT7lS2hw/avsOuLkUife3Dp7u0A6rccvjDLbiFSs8LApaFVTt+1R6CDgrB8YUe+qWSlL+/bJQeMf3h5c1lpup/VgiPIXA39zTdvW7mODcFuIA1O0+cNF7VfirAGsw11eK9rhv8mXmqLAI3r9kVImAlgkiuVLq2+ywuu7hUkKnJQWb43BcDLEm28ln7JFd+Npa5n+t9eF63R6HkbS36i3jdqrBVQ5fXhc2m4SmE+v6gYrHdjHRK63cPMsTqnCtUlUIMyEZNOyOALqEggzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BY5PR11MB4225.namprd11.prod.outlook.com (2603:10b6:a03:1ba::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.25; Wed, 11 Nov
 2020 15:15:14 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b%6]) with mapi id 15.20.3541.025; Wed, 11 Nov 2020
 15:15:14 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>, "Kaneda, Erik"
	<erik.kaneda@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>
CC: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Len Brown <lenb@kernel.org>, "linux-acpi@vger.kernel.org"
	<linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] ACPICA: fix -Wfallthrough
Thread-Topic: [PATCH] ACPICA: fix -Wfallthrough
Thread-Index: AQHWt9BSaSJ92WwBRk6cKvxE5xanpKnDCsOA
Date: Wed, 11 Nov 2020 15:15:14 +0000
Message-ID: <BYAPR11MB3256E0C1DCB4F01D18DF709F87E80@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20201111021131.822867-1-ndesaulniers@google.com>
In-Reply-To: <20201111021131.822867-1-ndesaulniers@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 94f16ba8-fa71-4053-5d00-08d88654971f
x-ms-traffictypediagnostic: BY5PR11MB4225:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB422515A0AC0A9A22E2E14A9487E80@BY5PR11MB4225.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XAY7tGTRiuLl2ZBK1VND1DdzP5CL6Lm+bN3laOyGZS3Zj1Sts3RTIF2jbIE22ibklkz57Zwec7CyT+uFTbSRUdhS3aAG46w0OecG0sUAIf901sJ0cZmiu4NCm9oqPfbwta3fWs0FwOhZA8NKEgntVmj3Fuv1p0SwMeYbsjopo99bZyHKXNWeJ0YLjdfcqc4gfU1foTr41CsS6VxAqboxokR7uD2/mS2xZNFEw7IfUhB+eNbw97mlca05D38Ps8FobHaCojqyez4grxxZ+CsW128htCqYyDINqUM1ebDSzqPZw+We7g3eDltJ6mK2P1YkkKIDU6ruOkUjPr/LD70G+Q==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(396003)(376002)(39860400002)(136003)(316002)(54906003)(110136005)(6506007)(4326008)(55016002)(478600001)(33656002)(2906002)(66476007)(53546011)(26005)(186003)(7696005)(76116006)(5660300002)(83380400001)(8676002)(8936002)(71200400001)(9686003)(66946007)(86362001)(66446008)(66556008)(52536014)(64756008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: XvSO7yqUpp1AZEQNQz51jXrUVSXAEJtAzu+8b8U0kl8lmcolR3IJTnEnv2NPwjF4WV+yJmRhXe5NLuddp3H0FsEfkDcDrSBwdv1ZtlKyTQfpnJphr0BKq5sdvPEbpI3R43mB2sCnN5MDRkVX3ncheM1W41dD5LrNavo17nOIAM3RyqNZDiMrVtDjrHI+WadsCPX7a11ALZUDxlincvJ7U4aaSNqbg7fFIHY43RxFp4u0lNcqsKIHTY5Zz9/DnWxR/xOIFW+qkUR91nuUFzdXiWSPug1DSu4hTaTqGuxCIOyDCk1o5wuquiItCDmVOhuLMpIJA00/i+92s1rPN9XmqtfB0UVX0PUmXo3ktjq6QKyjAIBNXQwFkhLCESFZOk6x61o50THb1kR75RlySd5s6tv1CPOPWZUQLdSH+pIQY+NFaXLSljGTGo+1ewPKEaxNrFmtTKbsm4v7WoTb5MeoK108R+/rszXdfDUS8CzgckcB/XScxSn3QL5nEZEfHdWGjcDkHj2EnCc8wrEmnTJce8Gz12dLlGtfh7Ow5+qQECuRSDbljxbgUsZw6Rv2/Y9gBK9uRHtDylXAKmI4Lmeuyf/KEOT+Fujhg+Sfd2ioGQKDhQsGZYXWP6xPRSBdSXy87+Ldo+zzTp95IiaFLy1LmQ==
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94f16ba8-fa71-4053-5d00-08d88654971f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2020 15:15:14.2265
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i0cWy0SXT9rXklqv+5cRxnlmKVPSWzI5B7MmEp9aB60pzonN2kNDkIbmtHHTuwjTEHcKiO6sXBc7Z8271Ota3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4225
X-OriginatorOrg: intel.com
X-Original-Sender: robert.moore@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=csW0DMmE;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of robert.moore@intel.com designates 134.134.136.65 as
 permitted sender) smtp.mailfrom=robert.moore@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

Yes, but: isn't the "fallthrough" keyword compiler-specific? That is the problem for us.
Bob


-----Original Message-----
From: ndesaulniers via sendgmr <ndesaulniers@ndesaulniers1.mtv.corp.google.com> On Behalf Of Nick Desaulniers
Sent: Tuesday, November 10, 2020 6:12 PM
To: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Gustavo A . R . Silva <gustavoars@kernel.org>
Cc: clang-built-linux@googlegroups.com; Nick Desaulniers <ndesaulniers@google.com>; Len Brown <lenb@kernel.org>; linux-acpi@vger.kernel.org; devel@acpica.org; linux-kernel@vger.kernel.org
Subject: [PATCH] ACPICA: fix -Wfallthrough

The "fallthrough" pseudo-keyword was added as a portable way to denote intentional fallthrough. This code seemed to be using a mix of fallthrough comments that GCC recognizes, and some kind of lint marker.
I'm guessing that linter hasn't been run in a while from the mixed use of the marker vs comments.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/acpi/acpica/dscontrol.c | 3 +--
 drivers/acpi/acpica/dswexec.c   | 4 +---
 drivers/acpi/acpica/dswload.c   | 3 +--
 drivers/acpi/acpica/dswload2.c  | 3 +--
 drivers/acpi/acpica/exfldio.c   | 3 +--
 drivers/acpi/acpica/exresop.c   | 5 ++---
 drivers/acpi/acpica/exstore.c   | 6 ++----
 drivers/acpi/acpica/hwgpe.c     | 3 +--
 drivers/acpi/acpica/utdelete.c  | 3 +--
 drivers/acpi/acpica/utprint.c   | 2 +-
 10 files changed, 12 insertions(+), 23 deletions(-)

diff --git a/drivers/acpi/acpica/dscontrol.c b/drivers/acpi/acpica/dscontrol.c index 4b5b6e859f62..1e75e5fbfd19 100644
--- a/drivers/acpi/acpica/dscontrol.c
+++ b/drivers/acpi/acpica/dscontrol.c
@@ -61,8 +61,7 @@ acpi_ds_exec_begin_control_op(struct acpi_walk_state *walk_state,
 				break;
 			}
 		}
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	case AML_IF_OP:
 		/*
diff --git a/drivers/acpi/acpica/dswexec.c b/drivers/acpi/acpica/dswexec.c index 1d4f8c81028c..e8c32d4fe55f 100644
--- a/drivers/acpi/acpica/dswexec.c
+++ b/drivers/acpi/acpica/dswexec.c
@@ -597,9 +597,7 @@ acpi_status acpi_ds_exec_end_op(struct acpi_walk_state *walk_state)
 				if (ACPI_FAILURE(status)) {
 					break;
 				}
-
-				/* Fall through */
-				/*lint -fallthrough */
+				fallthrough;
 
 			case AML_INT_EVAL_SUBTREE_OP:
 
diff --git a/drivers/acpi/acpica/dswload.c b/drivers/acpi/acpica/dswload.c index 27069325b6de..afc663c3742d 100644
--- a/drivers/acpi/acpica/dswload.c
+++ b/drivers/acpi/acpica/dswload.c
@@ -223,8 +223,7 @@ acpi_ds_load1_begin_op(struct acpi_walk_state *walk_state,
 			     parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
 				break;
 			}
-
-			/*lint -fallthrough */
+			fallthrough;
 
 		default:
 
diff --git a/drivers/acpi/acpica/dswload2.c b/drivers/acpi/acpica/dswload2.c index edadbe146506..1b794b6ba072 100644
--- a/drivers/acpi/acpica/dswload2.c
+++ b/drivers/acpi/acpica/dswload2.c
@@ -213,8 +213,7 @@ acpi_ds_load2_begin_op(struct acpi_walk_state *walk_state,
 			     parse_flags & ACPI_PARSE_MODULE_LEVEL)) {
 				break;
 			}
-
-			/*lint -fallthrough */
+			fallthrough;
 
 		default:
 
diff --git a/drivers/acpi/acpica/exfldio.c b/drivers/acpi/acpica/exfldio.c index ade35ff1c7ba..9d1cabe0fed9 100644
--- a/drivers/acpi/acpica/exfldio.c
+++ b/drivers/acpi/acpica/exfldio.c
@@ -433,8 +433,7 @@ acpi_ex_field_datum_io(union acpi_operand_object *obj_desc,
 		 * Now that the Bank has been selected, fall through to the
 		 * region_field case and write the datum to the Operation Region
 		 */
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	case ACPI_TYPE_LOCAL_REGION_FIELD:
 		/*
diff --git a/drivers/acpi/acpica/exresop.c b/drivers/acpi/acpica/exresop.c index 4d1b22971d58..df48faa9a551 100644
--- a/drivers/acpi/acpica/exresop.c
+++ b/drivers/acpi/acpica/exresop.c
@@ -197,8 +197,7 @@ acpi_ex_resolve_operands(u16 opcode,
 				case ACPI_REFCLASS_DEBUG:
 
 					target_op = AML_DEBUG_OP;
-
-					/*lint -fallthrough */
+					fallthrough;
 
 				case ACPI_REFCLASS_ARG:
 				case ACPI_REFCLASS_LOCAL:
@@ -264,7 +263,7 @@ acpi_ex_resolve_operands(u16 opcode,
 			 * Else not a string - fall through to the normal Reference
 			 * case below
 			 */
-			/*lint -fallthrough */
+			fallthrough;
 
 		case ARGI_REFERENCE:	/* References: */
 		case ARGI_INTEGER_REF:
diff --git a/drivers/acpi/acpica/exstore.c b/drivers/acpi/acpica/exstore.c index 3adc0a29d890..2067baa7c120 100644
--- a/drivers/acpi/acpica/exstore.c
+++ b/drivers/acpi/acpica/exstore.c
@@ -95,8 +95,7 @@ acpi_ex_store(union acpi_operand_object *source_desc,
 		if (dest_desc->common.flags & AOPOBJ_AML_CONSTANT) {
 			return_ACPI_STATUS(AE_OK);
 		}
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	default:
 
@@ -421,8 +420,7 @@ acpi_ex_store_object_to_node(union acpi_operand_object *source_desc,
 				}
 				break;
 			}
-
-			/* Fallthrough */
+			fallthrough;
 
 		case ACPI_TYPE_DEVICE:
 		case ACPI_TYPE_EVENT:
diff --git a/drivers/acpi/acpica/hwgpe.c b/drivers/acpi/acpica/hwgpe.c index b13a4ed5bc63..fbfad80c8a53 100644
--- a/drivers/acpi/acpica/hwgpe.c
+++ b/drivers/acpi/acpica/hwgpe.c
@@ -166,8 +166,7 @@ acpi_hw_low_set_gpe(struct acpi_gpe_event_info *gpe_event_info, u32 action)
 		if (!(register_bit & gpe_register_info->enable_mask)) {
 			return (AE_BAD_PARAMETER);
 		}
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	case ACPI_GPE_ENABLE:
 
diff --git a/drivers/acpi/acpica/utdelete.c b/drivers/acpi/acpica/utdelete.c index 4c0d4e434196..8076e7947585 100644
--- a/drivers/acpi/acpica/utdelete.c
+++ b/drivers/acpi/acpica/utdelete.c
@@ -111,8 +111,7 @@ static void acpi_ut_delete_internal_obj(union acpi_operand_object *object)
 			(void)acpi_ev_delete_gpe_block(object->device.
 						       gpe_block);
 		}
-
-		/*lint -fallthrough */
+		fallthrough;
 
 	case ACPI_TYPE_PROCESSOR:
 	case ACPI_TYPE_THERMAL:
diff --git a/drivers/acpi/acpica/utprint.c b/drivers/acpi/acpica/utprint.c index 681c11f4af4e..f7e43baf5ff2 100644
--- a/drivers/acpi/acpica/utprint.c
+++ b/drivers/acpi/acpica/utprint.c
@@ -475,7 +475,7 @@ int vsnprintf(char *string, acpi_size size, const char *format, va_list args)
 		case 'X':
 
 			type |= ACPI_FORMAT_UPPER;
-			/* FALLTHROUGH */
+			fallthrough;
 
 		case 'x':
 
--
2.29.2.222.g5d2a92d10f8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/BYAPR11MB3256E0C1DCB4F01D18DF709F87E80%40BYAPR11MB3256.namprd11.prod.outlook.com.
