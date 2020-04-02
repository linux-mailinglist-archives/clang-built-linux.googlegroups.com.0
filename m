Return-Path: <clang-built-linux+bncBAABBVWLTD2AKGQE4MO7RSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CEC19C84E
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 19:50:15 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id i20sf1369779lfl.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 10:50:14 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1585849814; cv=pass;
        d=google.com; s=arc-20160816;
        b=h5qsebcyyY+jdux2jbooXZdS8hwzn1t38jPGqiRSpfR2OsxJPEIQAdzh7bKRZDe20r
         c7cJwynwkMMN2ulk+jeK5iDqXKS5xwps7OVAr9vsuN7DzJD4Ln3dwI+HepgupYoi1o8E
         7snBZcatc4TAfVGsJUJKEHcypNwNzq06YMcQO0eILoPmOMkYV1HF+YlggP1ewa11f2Sa
         7/X9FRkMr0/tu+GLXJZY2rwQSKnJjfgMqP8zOgQW4i2/rGJVD8f7+5O2tesk+HkIab6V
         1d5mUeeJ2eZ6PMLQtVnbA6tZ1q26W9eZBxye0Dg5D8fAMN0YEVOr2aTs4c2pxdQxogAn
         cXYw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:original-authentication-results
         :mime-version:content-transfer-encoding:nodisclaimer
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=u6Var9qNowOHiyFIaNX8olrctW3Y0jbTawxxTaHQOAk=;
        b=QM/VDUQuI7j5/7KYRaHP33Fo/kI7C/CGGQcr14gBuFv5pPs/98q9x3c1Ie9RbTMj1j
         MMvzv6aWSrR20VzRmMj/1A3WJT6szV4XqDQNNlE90mQoQfIJ9442C8oibPvn9VGaRBuG
         CLZunZi5YA61yhjOZwFkFYm/RZqAwt91fiYlkSwvRiqampshXoe06Cx53pzzfBzWPUEr
         7Z544oYITkMnGIapbQCI/Ln0IPBYroxkcbvS3SX0ANyC8aREO4q+2TH2t5fBb+EyAXdx
         H2pCIHUTAOFmzXwTguTJGWDbuADYnyPViB5vuC5kxYbURP7uq4e+ioqxU1ciVsfKyyWa
         XTEA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=b4n4Ly0X;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=b4n4Ly0X;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of peter.smith@arm.com designates 40.107.2.75 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :nodisclaimer:content-transfer-encoding:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u6Var9qNowOHiyFIaNX8olrctW3Y0jbTawxxTaHQOAk=;
        b=p16NtVKxsl0l3bB+63JxG4ifvTQe9Lmvmzu5vr7LuM/RO9+FiqrbWQexz9Eyjb9Xub
         XXD24kIwB5A4+JohRmMqT1ehsVC8tiicAAvP6vie4eF+6dBCPxGAiXHJnVtZ6FLs4U9L
         6bEnoTD2iJd5U5Ov/VciO14I4+D18ER5gvvifMiQGfxTPBqh1jG9xOMMLX0sgMXTeMR8
         2P4fKzQrp2mMbYkvR6IMVWS9UgkAvucvU1syR7NnLQC8pypvvP/Bnjjdad8FMM5M9AYf
         7jLuPl2ovH6boO1VxFt6Rt2rlcA9h5gu6VUVJ+wUap1aoPq9A8+Be9ed9JiG12rSWmEG
         wudw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:nodisclaimer:content-transfer-encoding
         :mime-version:original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u6Var9qNowOHiyFIaNX8olrctW3Y0jbTawxxTaHQOAk=;
        b=PHj56J9LNqxMqPyv2kpO9SwGevYR2oCjMgIC83d4HlHNSzvxlju3rTnD775aPsRqJw
         Fm89GxRNcQziO5xoRag5mOqwqXPkcLZx5rRIQcIFmFXAJ28xy2mGeooo7TJgN1ATDfCC
         U4E8Oc9pAw149M+Gc3bfp5uY3EpdjKG2DKPhJkHa+1gx5vE2wXrcadVEHTxPiGxHpS6a
         F1wSqgI7CN6f4cKoZLvOp0f5JDqtc7SMnCN0JS0UIGau7goYDW8SXfA3gLGIMwVE8Ijj
         AYBZIFukipILtnjsMfOcOcufb8EitbCFSVmahOVIzt9AzXmkU4LbwRxK6H1LtxHErIHe
         zS9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZDfn1IRAn1xxijZUZg9LcSCHMbHUob5t5ExYaESSCLmUuQRcky
	w6OeBQRZHwqxy3FbD6nKitA=
X-Google-Smtp-Source: APiQypIPHRfyeVsJUAnnuMKeUGTx9S4qMDhOqkvScPbC0A6phc2KIBNQ7TKb6Rgo8o8+P6KSpSLoXg==
X-Received: by 2002:ac2:46ed:: with SMTP id q13mr2927606lfo.176.1585849814283;
        Thu, 02 Apr 2020 10:50:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:484d:: with SMTP id v74ls619994lfa.7.gmail; Thu, 02 Apr
 2020 10:50:13 -0700 (PDT)
X-Received: by 2002:ac2:5211:: with SMTP id a17mr2901281lfl.167.1585849813645;
        Thu, 02 Apr 2020 10:50:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585849813; cv=pass;
        d=google.com; s=arc-20160816;
        b=hiRqoQxYzyZ2Q3msnkEl84V6TM7KodKBvFKWQdw6saEP8qipwW0Rc3bMkVssp5Ajd6
         0ZL5+CDDJOfIYkJoxugWbKexcCKKydkDlhHjCkKKObL6W48qwMyazaz8xQg3M1gOB6/1
         ZXeXHlvs3ZkJYZD70vCX9k9iNZmZ8aIe1+U9sy6qeqoOgNTe7IhE4VaHqIB0MeYPRZgO
         7yccaHBLFi1osht1bKeW8Y7D3mb0VlshL5iB+H0Dh6/gJQlmZNtZNLxhjEhiq74Jqix9
         WzycEiz0LosYSleO5cmGh66BVVDgiz/rLuzoI9ipGQwo8ApBp6HJnLkMlwjFjZGo8lmD
         nbPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=original-authentication-results:mime-version
         :content-transfer-encoding:nodisclaimer
         :authentication-results-original:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature:dkim-signature;
        bh=vVMHUfOQgALOiKL8InNQ7Yp4ndl4SN/+rjy/kAAA/iI=;
        b=s3eRW9RNi/bLu2QO/dZEUJ8PzLg31EP7Xu7Q2FBrX6rMkGLbfydzDM8adf1dx1D05M
         aLgCgsFO8FmOoPGnD3MdZyZTvQ/dzGSWgLi0QDO55ecN2BQ2JcDfPW3GtPjaNJsupWSL
         4xm/iObWkTD7lAURUBqCoTfmTmTVAGkHLe4TuB49JhnLDBpwEH3lLU7oSNU0CWwzhKEi
         0i5rENQh2jii/+85FnV3tymcfTFjPHs7LCttd4T2y7UHdhnx+NjEbKXI/yr8ZzKDkFKX
         qKfOOUTzi+5hdWMsVIYGFq+YvdeSntS57O/TIPA0LEUXgyzEZqxW6CPjdQTpMGx73TeA
         dUHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=b4n4Ly0X;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=b4n4Ly0X;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of peter.smith@arm.com designates 40.107.2.75 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
Received: from EUR02-VE1-obe.outbound.protection.outlook.com (mail-eopbgr20075.outbound.protection.outlook.com. [40.107.2.75])
        by gmr-mx.google.com with ESMTPS id c18si283778lji.4.2020.04.02.10.50.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 10:50:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of peter.smith@arm.com designates 40.107.2.75 as permitted sender) client-ip=40.107.2.75;
Received: from DB6P195CA0004.EURP195.PROD.OUTLOOK.COM (2603:10a6:4:cb::14) by
 AM6PR08MB3719.eurprd08.prod.outlook.com (2603:10a6:20b:83::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.16; Thu, 2 Apr 2020 17:50:11 +0000
Received: from DB5EUR03FT009.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:4:cb:cafe::ed) by DB6P195CA0004.outlook.office365.com
 (2603:10a6:4:cb::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15 via Frontend
 Transport; Thu, 2 Apr 2020 17:50:11 +0000
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT009.mail.protection.outlook.com (10.152.20.117) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Thu, 2 Apr 2020 17:50:10 +0000
Received: ("Tessian outbound 9e48e1321951:v50"); Thu, 02 Apr 2020 17:50:10 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e3dc6baae79d8492
X-CR-MTA-TID: 64aa7808
Received: from ddd8da16107b.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 43C295ED-E368-40FE-87FC-0E7833B70E44.1;
	Thu, 02 Apr 2020 17:50:05 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ddd8da16107b.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 02 Apr 2020 17:50:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B6v1MQDq1Gue+AnzFe0SlVlwbu/HjLtxuNgK7lvXOscjiAAo9O/ViOfJnG5w4FrMRVx2Mux0N3xG12EFiGh2FC8EOHprsmzawt/4OwlYaSR5/3MU9dmBG+26vIS7haOjP+URLDdfdc5zVGSufP0VIhu2AH4K8lNUIzrW2RUq0K6o+HzKGGLzoAOONmEJN9XUXrcAo5zvY2DDp42xRP84NXm+nxecZKyDEOr/pGYZlo9qCj5ehwLBUWd9bWUu7q+l00A1s6Ip5VqgROapNQHgEzpBlsVf3gfrBx8aq1Kgci/vZRqEB4mfac83sD7VovWMUVp27s3Q7T6wNJw+OpKKAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vVMHUfOQgALOiKL8InNQ7Yp4ndl4SN/+rjy/kAAA/iI=;
 b=HUs6QddtEZhi2W7XjMG7/FbERhn1YBvQuRf1z/60W3ue3/7b7FKr56Vq5oajPC53FyEPfvzmuR4JxoB+Sx5MJLCO4/BrPl0xf9n2iKZzltXqmPk/k4tc/d/JWbhSHsAFLGMKlXsTZ5lFt0kttO8mJWLM5QBjp0dphCFmlNzYh69C0JJIRiufV3QEibuwq9WePRHC4aZ770GjAnddz5YZgjAvAJx74B4r16GF0Rq1l02p6tzemfU7XPIPickCtl/sIAe0k1plsrx6896pMH9xaL+ca3AzqsCndQERY5WqaZfQ0897ct9ULKdRaCjU0cieWYKZwCPogSKQBGjYI5uSnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Received: from DBBPR08MB4823.eurprd08.prod.outlook.com (10.255.78.22) by
 DBBPR08MB4839.eurprd08.prod.outlook.com (20.179.46.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.16; Thu, 2 Apr 2020 17:50:04 +0000
Received: from DBBPR08MB4823.eurprd08.prod.outlook.com
 ([fe80::f46d:4b0d:d07d:949d]) by DBBPR08MB4823.eurprd08.prod.outlook.com
 ([fe80::f46d:4b0d:d07d:949d%6]) with mapi id 15.20.2856.019; Thu, 2 Apr 2020
 17:50:04 +0000
From: Peter Smith <Peter.Smith@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
CC: Nick Desaulniers <ndesaulniers@google.com>, nd <nd@arm.com>, Tony Lindgren
	<tony@atomide.com>, Russell King <linux@armlinux.org.uk>, Stefan Agner
	<stefan@agner.ch>, LKML <linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, "linux-omap@vger.kernel.org"
	<linux-omap@vger.kernel.org>, Linux ARM
	<linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] ARM: OMAP2+: drop unnecessary adrl
Thread-Topic: [PATCH] ARM: OMAP2+: drop unnecessary adrl
Thread-Index: AQHWCNPf3/UDtOa4QU2PsSz3b6wtIqhlszgIgAAJCgCAAF834g==
Date: Thu, 2 Apr 2020 17:50:04 +0000
Message-ID: <DBBPR08MB4823463F759E2FFFE92BF9C8F8C60@DBBPR08MB4823.eurprd08.prod.outlook.com>
References: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
 <CAKwvOdkyOW6RXTOCt1xMp2H+uH28ofByQOjyx776t8RDxTED2w@mail.gmail.com>
 <CAMj1kXGYiMobkue642iDRdOjEHQK=KXpp=Urrgik9UU-eWWibQ@mail.gmail.com>
 <DBBPR08MB4823129E272220712B470716F8C60@DBBPR08MB4823.eurprd08.prod.outlook.com>,<CAMj1kXEQ4v9e6386ogPdy+s+++9H02DMPnDpTq0WSY2e78ts+Q@mail.gmail.com>
In-Reply-To: <CAMj1kXEQ4v9e6386ogPdy+s+++9H02DMPnDpTq0WSY2e78ts+Q@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.140.106.52]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: bbcc9f24-d165-4b4d-13ce-08d7d72e4a3a
x-ms-traffictypediagnostic: DBBPR08MB4839:|AM6PR08MB3719:
X-Microsoft-Antispam-PRVS: <AM6PR08MB37195E884FF7A41E4F95BB14F8C60@AM6PR08MB3719.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0361212EA8
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR08MB4823.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10009020)(4636009)(366004)(396003)(136003)(346002)(39860400002)(376002)(66556008)(33656002)(54906003)(2906002)(4326008)(186003)(5660300002)(316002)(26005)(966005)(71200400001)(52536014)(478600001)(6916009)(6506007)(9686003)(66946007)(55016002)(91956017)(76116006)(86362001)(64756008)(66476007)(66446008)(7696005)(8936002)(8676002)(81166006)(81156014);DIR:OUT;SFP:1101;
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Bvk0bPnT7Ke0d0aqT+hbRjgi0yVdvzyvH7dgBYfZwb0K05Ky1e7biVBTYTEwpfPLqZ4FLc5DqZusf1jeVd6vKe8engmCJuQYA3ELg1iwmUvCNyJJciV+viDwDZtcfufvQECHIBSczDYZFkmPIWSQ95NtxLOAFpdGQCSmu2RPoZTRtBaYpm9AakerWCvpKPC69RmdXzRtMKr0Kxy+Ej7l/RY38RMUEhYG+LTeo9+g9ilQJ8v8IGxZiZaIumgR/WnCd62ltu2gWwl/bYfZezW0XRsplAwZbZC2Kh4yLeS977eiI3TpY5mEXCxDvdhjHACTgDRFshsyjk1BH5DiZDOd4mJQ1eIWaapC33uOz0K9X3r6oma1V4ndxR/bYce7vPeduSzLQwijFuL0JZv+lL+3CYN1jh/ORXVqD0t3YR4CRxEZ+BteKCDfZNE41W2cnKCGdllgZIjXta0yDgHlvuUmg4fgwE3kxP/6e1PbMKEx8lJyU3FpDbnq6hq2YlXOjQPYmyiUHp/4L8gKjnzrfx4E3Q==
x-ms-exchange-antispam-messagedata: vmg3ckpM42yEPLgGyDdIIpSo5pFDQPj7HjFYP0sgP+pyvey3n2q0YGQTDiu3ru6TI1XGv6hgiAqVvpu3mJZ++I0MGhFuNh1YbsKr7tQMojh9x+P3kBUptjeLgZmADNNscixLbtt8IBU1uAGlz2FVoA==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4839
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Peter.Smith@arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT009.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFTY:;SFS:(10009020)(4636009)(136003)(396003)(376002)(39860400002)(346002)(46966005)(70586007)(70206006)(336012)(107886003)(4326008)(55016002)(6862004)(7696005)(356004)(6506007)(8936002)(54906003)(966005)(81156014)(81166006)(9686003)(26005)(8676002)(316002)(5660300002)(82740400003)(47076004)(52536014)(33656002)(478600001)(186003)(26826003)(2906002)(86362001);DIR:OUT;SFP:1101;
X-MS-Office365-Filtering-Correlation-Id-Prvs: eae70085-fa11-402a-e384-08d7d72e4652
X-Forefront-PRVS: 0361212EA8
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZtM1Z6exqW0hQ0wCO2TMecZfJH4jkmYKxWBsmev+FC6nUL6MBEUjL1LIz0GsJ52Rz30tsHh5nxA2kQrj28KUthlEiegEj5TDUqwwFMZ1edG0LklENh/l6aGDDDb2lAvxJoQ77oudViKGp5IHLnv+0g03gxX5Os8zpuAErURhNvSI27WS1DR4dxMnNszKA1sI0Z3oV0brQoiGDPEgFlq4x/8vEbzGK4h3Yho/F+FZmuAqulJ4fe6u0r0yZxEwHvbS6Y4AGmcqyU2VCJtnJrHpT4+Vsq8RB1LY5jExn4aWrNm0Da6qsjYZVft+1Ua6YE+MxQ58jF5m7mi5wGvRvvT501c7xLMn+kkttLvM7jMa3UHdBWZHwlMQfmPXj68143RqKk98RBwLddHy5ko6Mu9cIEI7CeeWC4bfjOPyAkIUPy15gZNeSedQwGfHjEcbWVL822iroAAwlQfKyeN5R0QHp4PrkHdlxCkRRxt3uuQoG+ASQripJqhb16Uz6X+MABaFRqAdXDvb5+JLDF/C7PQJb8PhypTsFSNuvUuJP715DgygSGb9j8bjaugSuLzaAFRbqwR9eX2eQeTFG3vWQTFKtQ==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2020 17:50:10.9942
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bbcc9f24-d165-4b4d-13ce-08d7d72e4a3a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3719
X-Original-Sender: peter.smith@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com
 header.b=b4n4Ly0X;       dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=b4n4Ly0X;       arc=pass
 (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass
 fromdomain=arm.com);       spf=pass (google.com: domain of
 peter.smith@arm.com designates 40.107.2.75 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
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





> On Thu, 2 Apr 2020 at 13:50, Peter Smith <Peter.Smith@arm.com> wrote:
> >
> > > I take it this implies that the LLVM linker does not support the
> > > R_ARM_ALU_PC_Gn relocations? Since otherwise, adrl could simply be
> > > expanded to a pair of adds with the appropriate relocations, letting
> > > the linker fix up the immediates (and the ADD vs SUB bits)
> >
> > Not at the moment. I have a patch in review to add the G0 variants for =
these in Arm state at reviews.llvm.org/D75349 . As far as I know LLVM MC do=
es not have support for generating the relocations either. This could be ad=
ded though. I agree that using the G* relocations with a pair of add/sub in=
structions would be the ideal solution. The adrl psuedo is essentially that=
 but implemented at assembly time. I think it would be possible to implemen=
t in LLVM but at the time (4+ years ago) I wasn't confident in finding some=
one that would think that adrl support was worth the disruption, for exampl=
e the current Arm assembly backend can only produce 1 instruction as output=
 and adrl requires two.
> >
> > I'd be happy to look at group relocation support in LLD, I haven't got =
a lot of spare time so progress is likely to be slow though.
> >

> For Linux, I have proposed another approach in the past, which is to
> define a (Linux-local) adr_l macro with unlimited range [0], which
> basically comes down to place relative movw/movt pairs for v7+, and
> something along the lines of

>         ldr <reg>, 222f
> 111:    add <reg>, <reg>, pc
>         .subsection 1
> 222:    .long <sym> - (111b + 8)
>         .previous
>
> for v6 and earlier. Could you comment on whether Clang's integrated
> assembler could support anything like this?

Apologies for the delay in responding.

That looks like it should work. Empirically the following works in both Cla=
ng and GNU as. One potential problem here is that if the section is large a=
nd the subsections are dumped at the end the ldr is at risk of going out of=
 range.

 .arm
 .macro mylongadrl reg, sym
 ldr \reg, 222f
111:    add \reg, \reg, pc
        .subsection 1
222:    .long \sym - (111b + 8)
 .previous
 .endm      =20

 .text
foo:     bx lr
bar:     bx lr
 mylongadrl r0 foo
 mylongadrl r0 bar

> Thanks,
> Ard.
>
>
>
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/ardb/linux.git/commit=
/?h=3Darm-kaslr-latest&id=3Dfd440f1131553a5201ce3b94905419bd067b93b3

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/DBBPR08MB4823463F759E2FFFE92BF9C8F8C60%40DBBPR08MB4823.eu=
rprd08.prod.outlook.com.
