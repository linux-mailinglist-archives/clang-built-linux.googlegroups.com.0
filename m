Return-Path: <clang-built-linux+bncBAABBUN3V3WAKGQEJBJG4WI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C7EBE301
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 19:03:14 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id m2sf2385198eds.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 10:03:14 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1569430993; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rkl+lVfO8+VbXnfdZYpLeTpC+2L1Pfx/kV3umDOBxc+KGpmeDoYC55UdM0DUeXZTfA
         p6P8BVuvokCJXH3k9hkP74lgydLvp47H3SsXX0Hn5ocxFhjefhz5Yzxw0a+J7s4Icqce
         62JfqilJV3MVv6HOZiRcCfSwdUYJ7yXTulhMPpKQPrNMvgAILEC9WTqAb7Xk+W2ou2JL
         XEjPw+VPDgJ/wzoXvfeNrKV9hjxmWWY5ohcujxJCEstJEJh514nVl6gkxe6weFETnWPO
         LvgTjI5CsC4slQG44MSjEQqPTARbXWBaCytk3DTmFJNEaporjrwsWta81c7LZpVHLShh
         K1LA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:nodisclaimer
         :original-authentication-results:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=f8YKHWOYkq+A12ltgl0Xi4eE9/2oqO4gDCyjIomZF4A=;
        b=q0M+YTQ6NBr4PosW7gh10+PNvM3yhKgx3i9Gj8/+fQ8kMxpFxhP44BDVdAaj/utzNQ
         c6pRfJafJhz9SQHj6PsAXbsLFyZ9M7PfDFGf6Veo4tbUSKCexcv5CnmZ3nbm18xdbhDJ
         Mmw/T1JxxBXFCAa+IJEBDG2CuZoITOFwJqfYmg1klVNldsezyo48m5c1nzKxZ4/zDTKI
         d7QHtlAoA7Bf2UqR8PCgyTkV6ibUQZAloXOtxzW4RXhacMUhYj7KvSWQAQf3ZKlH0KSf
         9aVhVWtATiOc7AIC5t6VWcINbG+zBH50TjhQrwB2moIWZ4ouKhZxWBwB5Yl19rqr3MqQ
         QKIA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=HKbhAdfU;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=HKbhAdfU;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of peter.smith@arm.com designates 40.107.3.84 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:original-authentication-results:nodisclaimer
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f8YKHWOYkq+A12ltgl0Xi4eE9/2oqO4gDCyjIomZF4A=;
        b=kNjVVLAsB6GB8xFY8mY/5JhjtVjiveUKSdBJr38qmY5K6DfPgtBT3XnDmE5b1V31hK
         lw/ai7+67+iDZhIUhTwLxkUVrdtJnjmu6SE6kRLMwiuGosCcIsld8qAu/wxqiJ9+ObfA
         cdEzF6gXq9TcrfH3lY5FJ5Ljol4ZVzsMnGtu5eLvkY0AUYJgim/YnnuZPi3xGU+WNq4w
         skL06i9D1TEDp1SUt84ShU/b/ZqVhmXdeHkkKGY+oMh6DpkDjXd4V9YfnQt/tK4cTcSW
         JWtetn9eZmpqinSMIaCLfYwLEr+jzCWhPhl/E8v5s5V9ObiLT5xY0bTgUl/b1lY1WbLk
         mSYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:original-authentication-results
         :nodisclaimer:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=f8YKHWOYkq+A12ltgl0Xi4eE9/2oqO4gDCyjIomZF4A=;
        b=iSjmum0oZamRngj1pgMsDP0lXH3KHfHEFxRVUr/GhpHrbyifTS4ZL8U04e09GnmURR
         pVHRt7s1DOpFKUJ8uO8uA07PiXAz6kxkLZGw8DZ20pL0AL1risOh3ughCA7Al3z1dn2J
         t3Nxm42EAsPLAtRkczC8ZEtBFzVKogY9wQhz3cDjNmrOIP5zxfWru8qZPFBlCOaDsqxD
         Gm+5TBoHDCka4rJPaEeOIw4MBW6sHwR74J3oNQADjK61ABILDkFv2lWHTDlpMTFfRtr0
         c6s9lexqQiZvNoUV0ch4Za6/7cTh4TtJXoGneyKFy+sOP9xP+Rfer6ZWGhibwHWP29+k
         kO6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXYiuLl9evqZjxl5mR1AEnmzXgNS5DPAqDpoXzSd9wnBlByDPEy
	yo0/ybUa2YWdUU48AiOK+CQ=
X-Google-Smtp-Source: APXvYqzyEHUit8fqKEiQZQ3Q+/4KQuHloN6WdK+z5UxYaDR2OTuWGsh8Pq3qDXGKNfqUSd4ZMIwBlg==
X-Received: by 2002:a17:906:7e06:: with SMTP id e6mr214940ejr.149.1569430993811;
        Wed, 25 Sep 2019 10:03:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:42cf:: with SMTP id nz23ls30936ejb.12.gmail; Wed, 25
 Sep 2019 10:03:13 -0700 (PDT)
X-Received: by 2002:a17:906:5847:: with SMTP id h7mr251176ejs.218.1569430993474;
        Wed, 25 Sep 2019 10:03:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569430993; cv=pass;
        d=google.com; s=arc-20160816;
        b=hjq3Bb6WhfJFiaCJE5rl4Jjl7bgLrmcUyvodsh4atA6uqOtWW2ytH498Vs53EmdPcI
         MXTcKvDRc/VRqXuWYqgHvIONWF0Glbbt/vUftsg5B5jDssLmeIMZH6T6/eAO9k6w3jrr
         1GolKIrHoX5oiHCZwmoDuX/CnE/lbS25Md21CSvsiid5jN7TxeKasZ4SoAe5xImB0wq4
         goe8DBVfmbtyb9XOa3ePx01yJy5SwdXKsDvTBUTgjxAnbaX0JgRB3rQKERNQLijkfEtx
         Kw1ourxPci3dMnLvTU0Iq6qBKvyd19wFo866PbqyizVp5HOLsda5UlP/H/PNhqgP9uZu
         4AMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=nodisclaimer:original-authentication-results:mime-version
         :content-transfer-encoding:authentication-results-original
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :dkim-signature;
        bh=zjKW6Muj86KSvn0QQUm2lay250KaRt6XPwA/Xcd5pKk=;
        b=ynGTZFhSO+j3Jic8MY+sQTTilyIgfPKGsOafpb0gEJEDVdHnI4RndFPBz1lktSbuJK
         uC2kvOML+JVqAMFS3lm7GsR8LXokcTdYsK8tNzZGDx00Q0FGMhHMTIBg4J6XEKaumO1G
         AJbMprFhTcwJrZfGsrlMJ4ndeqpPxVdDyPBTHJZGo2sTbFIO4d9xI0JouOYV0OCJ2DUV
         l+g+ntrYjI74S1okbOVrEWoTtAiPuLK4Irr6Ydo7NNsovgJyCGm9cH73x9NYL6PRc4Wv
         YMijHKyyjugK9GMCBQKQGVceoULX5QdVddA82SjLlRGm5UH9msk6SQQiX6YsFTVClBEM
         PBQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=HKbhAdfU;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=HKbhAdfU;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of peter.smith@arm.com designates 40.107.3.84 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (mail-eopbgr30084.outbound.protection.outlook.com. [40.107.3.84])
        by gmr-mx.google.com with ESMTPS id d11si243073edh.3.2019.09.25.10.03.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Sep 2019 10:03:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of peter.smith@arm.com designates 40.107.3.84 as permitted sender) client-ip=40.107.3.84;
Received: from DB6PR0801CA0058.eurprd08.prod.outlook.com (2603:10a6:4:2b::26)
 by DB7PR08MB3755.eurprd08.prod.outlook.com (2603:10a6:10:77::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.16; Wed, 25 Sep
 2019 17:03:10 +0000
Received: from VE1EUR03FT045.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::200) by DB6PR0801CA0058.outlook.office365.com
 (2603:10a6:4:2b::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2305.15 via Frontend
 Transport; Wed, 25 Sep 2019 17:03:09 +0000
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT045.mail.protection.outlook.com (10.152.19.51) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Wed, 25 Sep 2019 17:03:08 +0000
Received: ("Tessian outbound 0cf06bf5c60e:v33"); Wed, 25 Sep 2019 17:03:02 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 5857ac6d3e50e69d
X-CR-MTA-TID: 64aa7808
Received: from ee212d738cc0.1 (ip-172-16-0-2.eu-west-1.compute.internal [104.47.10.55])
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 8AC15DDA-0570-4F23-9D50-46A38CDA16A6.1;
	Wed, 25 Sep 2019 17:02:57 +0000
Received: from EUR03-DB5-obe.outbound.protection.outlook.com (mail-db5eur03lp2055.outbound.protection.outlook.com [104.47.10.55])
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ee212d738cc0.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
    Wed, 25 Sep 2019 17:02:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=flIFPcKbyF2ihM+Qrdc5LorM9psLw1lfrYNk3MYTVj+lJ426yfUWdBJDuBXcOoHRhwpeNGY2DOiG/HguBcQJKo1VtguHRNutR/Xug1xgmUyFhIrY7Dg3pmMS3mNYJsopu/AVsvl1RVRHY8UqO3H9U36oK0LJNkqkD2hlynVxHqvDfbkcVlI48a7gVDT9vBj5/yIwnI0q0CJ+PrPx1QBsZPHdq7fgXB7CVr8GP3G2BdDs9PoDuePGfjxd6EmYaSZiJ+WvcPKRRSKmnrlr44nTvNRZHvRARnHvv4i3mWvFf2oGIm51TcCoaHG1gu0uU2revRAoNtY1Po3JleNR8dCruQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zjKW6Muj86KSvn0QQUm2lay250KaRt6XPwA/Xcd5pKk=;
 b=nYmN+2/jsHr+B3DCf1JSAzwlAmzRF6CKWXqAY0BB10YqV0aspPGo9g7lgUtJqj0keRAvAJ5tVqfZyeBMb88cvl5Afx6i42b40fNWNYb+yPlHP9tK642jaLtCGCDNS/vzNwJAJ8M27x3iOKv0uBBmR7FrVSXXwgWG5w7M0gXpl3E8lA+ncNYZZdfrL72H51PALOW1BaYfdNOJZn73YVjsG2ocIACRuaA228OLnQvmBshWn75wv77gt0qDqGzVIZS7pPjDr2fqyJN/k8Qv4Ex9oqxk2i//jm8F+BFAe6w0b7jB+3kvEu84pxMm5nZpXr9U9xaxVpla99RNClDSZmia/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Received: from DBBPR08MB4903.eurprd08.prod.outlook.com (10.255.78.17) by
 DBBPR08MB4282.eurprd08.prod.outlook.com (20.179.43.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15; Wed, 25 Sep 2019 17:02:56 +0000
Received: from DBBPR08MB4903.eurprd08.prod.outlook.com
 ([fe80::7d9f:6b56:cfbd:899e]) by DBBPR08MB4903.eurprd08.prod.outlook.com
 ([fe80::7d9f:6b56:cfbd:899e%7]) with mapi id 15.20.2305.013; Wed, 25 Sep 2019
 17:02:56 +0000
From: Peter Smith <Peter.Smith@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Borislav Petkov <bp@alien8.de>
CC: "H. Peter Anvin" <hpa@zytor.com>, Jarkko Sakkinen
	<jarkko.sakkinen@intel.com>, Thomas Gleixner <tglx@linutronix.de>, Ingo
 Molnar <mingo@redhat.com>, clang-built-linux
	<clang-built-linux@googlegroups.com>, "maintainer:X86 ARCHITECTURE (32-BIT
 AND 64-BIT)" <x86@kernel.org>, Tri Vo <trong@android.com>, Masahiro Yamada
	<yamada.masahiro@socionext.com>, Rob Herring <robh@kernel.org>, George Rimar
	<grimar@accesssoftek.com>, LKML <linux-kernel@vger.kernel.org>, Fangrui Song
	<maskray@google.com>, Rui Ueyama <ruiu@google.com>, nd <nd@arm.com>
Subject: Re: [PATCH v2] x86, realmode: explicitly set entry via command line
Thread-Topic: [PATCH v2] x86, realmode: explicitly set entry via command line
Thread-Index: AQHVc79E6IxdC67Wc0CXARwlaJTRRqc8m7UJ
Date: Wed, 25 Sep 2019 17:02:56 +0000
Message-ID: <DBBPR08MB490303D229CB1C7F1CE5796CF8870@DBBPR08MB4903.eurprd08.prod.outlook.com>
References: <CAKwvOdmFqPSyeKn-0th_ca9B3QU63G__kEJ=X0tfjhE+1_p=FQ@mail.gmail.com>
 <20190924193310.132104-1-ndesaulniers@google.com>
 <20190925102041.GB3891@zn.tnic>,<CAKwvOdneE7kMupFzxZC-6c=ps_98FP+Nz88fCXQ74z90hmaaXQ@mail.gmail.com>
In-Reply-To: <CAKwvOdneE7kMupFzxZC-6c=ps_98FP+Nz88fCXQ74z90hmaaXQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [12.206.46.61]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 165733fb-46ef-41a7-4efe-08d741da3d5e
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: DBBPR08MB4282:|DB7PR08MB3755:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <DB7PR08MB375524C369014BBE030EFF23F8870@DB7PR08MB3755.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 01713B2841
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;SFS:(10009020)(4636009)(366004)(39860400002)(396003)(376002)(346002)(136003)(51914003)(199004)(189003)(66946007)(53546011)(6506007)(33656002)(8676002)(8936002)(81166006)(81156014)(5660300002)(3846002)(74316002)(7736002)(229853002)(4326008)(9686003)(52536014)(71190400001)(71200400001)(6436002)(2906002)(6246003)(55016002)(6116002)(305945005)(7416002)(6306002)(86362001)(316002)(66476007)(54906003)(110136005)(14444005)(256004)(102836004)(66556008)(64756008)(25786009)(11346002)(486006)(446003)(476003)(966005)(66446008)(26005)(14454004)(478600001)(186003)(76116006)(76176011)(7696005)(66066001)(99286004)(586874002);DIR:OUT;SFP:1101;SCL:1;SRVR:DBBPR08MB4282;H:DBBPR08MB4903.eurprd08.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: zSY5KgJgv0XMYKxusp8E+CMhj+rP/7Q/kOWK1il2RqbnLHyzQxdiRSVAVGpqBTUSG8W4R+aV1GQquPfYrFKqgM/JhjqG51tqHmy2govMKsOZK1no69AT1369fOwp4l7TT9FC1MYhB4RUKi9a3btAdEIvelYRDcRmmCCQVMfKALArNNYIPbEvtug1mE3R6cDhN+pM/27kHCqIRmk1jL5OaZ+fkKov6+thMb4O9etb/USMHJznWTLcRAhLwZBAkX/uYreAHxyrU8mQ0IjbFZDei3avMCjpzmdU+svikUOuLZhhWr6yxubgqYyKkyq+GL6rTTeGey3Wfr7dxjhxcGLNf5QBSXj7/e5fu/m0jTIVxfves3pQ1pkyggvbKgWgyqt5i1d7mlQokMGjlFTsqz3dNg8+mIErZA6SOMeca3j3FZ8ewfdNFXRX00Wzqx2rEFN/LQSOzaW6086MHreofZfn6w==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4282
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Peter.Smith@arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT045.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123;IPV:CAL;SCL:-1;CTRY:IE;EFV:NLI;SFV:NSPM;SFS:(10009020)(4636009)(396003)(376002)(39860400002)(346002)(136003)(189003)(199004)(51914003)(110136005)(54906003)(23756003)(2906002)(6246003)(14454004)(9686003)(55016002)(81156014)(25786009)(81166006)(8676002)(6306002)(8936002)(33656002)(8746002)(26826003)(36906005)(66066001)(478600001)(47776003)(966005)(316002)(7736002)(305945005)(102836004)(70586007)(70206006)(74316002)(53546011)(86362001)(6506007)(63350400001)(50466002)(11346002)(446003)(52536014)(336012)(3846002)(6116002)(26005)(476003)(186003)(126002)(486006)(5660300002)(356004)(76130400001)(4326008)(99286004)(14444005)(229853002)(7696005)(76176011)(22756006)(586874002);DIR:OUT;SFP:1101;SCL:1;SRVR:DB7PR08MB3755;H:64aa7808-outbound-1.mta.getcheckrecipient.com;FPR:;SPF:TempError;LANG:en;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;MX:1;A:1;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 686056d6-f652-415b-926f-08d741da3644
NoDisclaimer: True
X-Forefront-PRVS: 01713B2841
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mLl8FB7U4+qYTtuDLcAMj0w/eonsWefLVmV7+VHMOq5Vv3FV8nGbh+niy7WesGukxVROjYuGconyYrWu0CENoOw2ZfKKLADnS6ARZdyvHIEG/N0eHslCKF+eAqWV1ru8msaoKEyZh09SdO4Un7kzmgStFl8ulKG+N7bcOllFpjoXCVm5q76u1QFGnSnQixo9n8sRCFzKezDmbkbt6JHg+hG9GE9rIW5cSR0nc1+MP4dDGQjqNQ7F9jnaY2SZmdQhCSgbyWCrYIVXhoFAgE8P58of0NoBzTIZoEzZN9t/TqherFFqTW9bsylQf8VjzaXwbADUFH0U9zdZ3M3OYrWPNI9LKV+l/Wd/HxqzCNBb80ALnQHFfEAqlJmbWjtGJiU8Ds1cizAlvbs49jZ/ZYYrhe3RxbcJ+zRMghAuBrOeBRh+RTOhUjo9G2PRf1dclgNU8MszvqlR/cK8VCYbnTTHQQ==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2019 17:03:08.3470
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 165733fb-46ef-41a7-4efe-08d741da3d5e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3755
X-Original-Sender: peter.smith@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com
 header.b=HKbhAdfU;       dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=HKbhAdfU;       arc=pass
 (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass
 fromdomain=arm.com);       spf=pass (google.com: domain of
 peter.smith@arm.com designates 40.107.3.84 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
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



________________________________________
From: Nick Desaulniers <ndesaulniers@google.com>
Sent: 25 September 2019 17:35
To: Borislav Petkov
Cc: H. Peter Anvin; Jarkko Sakkinen; Thomas Gleixner; Ingo Molnar; clang-built-linux; maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT); Tri Vo; Masahiro Yamada; Rob Herring; George Rimar; LKML; Fangrui Song; Peter Smith; Rui Ueyama
Subject: Re: [PATCH v2] x86, realmode: explicitly set entry via command line

+ Fangrui, Peter, Rui, George (LLD)

On Wed, Sep 25, 2019 at 3:20 AM Borislav Petkov <bp@alien8.de> wrote:
>
> + some more people who did the unified realmode thing.
>
> On Tue, Sep 24, 2019 at 12:33:08PM -0700, Nick Desaulniers wrote:
> > Linking with ld.lld via $ make LD=ld.lld produces the warning:
> > ld.lld: warning: cannot find entry symbol _start; defaulting to 0x1000
> >
> > Linking with ld.bfd shows the default entry is 0x1000:
> > $ readelf -h arch/x86/realmode/rm/realmode.elf | grep Entry
> >   Entry point address:               0x1000
> >
> > While ld.lld is being pedantic, just set the entry point explicitly,
> > instead of depending on the implicit default.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/216
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> > Changes V1 -> V2:
> > * Use command line flag, rather than linker script, as ld.bfd produces a
> >   syntax error for `ENTRY(0x1000)` but is happy with `-e 0x1000`
> >
> >  arch/x86/realmode/rm/Makefile | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/x86/realmode/rm/Makefile b/arch/x86/realmode/rm/Makefile
> > index f60501a384f9..338a00c5257f 100644
> > --- a/arch/x86/realmode/rm/Makefile
> > +++ b/arch/x86/realmode/rm/Makefile
> > @@ -46,7 +46,7 @@ $(obj)/pasyms.h: $(REALMODE_OBJS) FORCE
> >  targets += realmode.lds
> >  $(obj)/realmode.lds: $(obj)/pasyms.h
> >
> > -LDFLAGS_realmode.elf := -m elf_i386 --emit-relocs -T
> > +LDFLAGS_realmode.elf := -m elf_i386 --emit-relocs -e 0x1000 -T
>
> So looking at arch/x86/realmode/rm/realmode.lds.S: what's stopping
> people from adding more sections before the first
>
> . = ALIGN(PAGE_SIZE);
>
> which, with enough bytes to go above the first 4K, would cause that
> alignment to go to 0x2000 and then your hardcoded address would be
> wrong, all of a sudden.

Thanks for the consideration Boris.  So IIUC if the preceding sections
are larger than 0x1000 altogether, setting the entry there will be
wrong?

Currently, .text looks like it's currently at 0x1000 for a defconfig,
and I assume that could move in the case I stated above?
$ readelf -S arch/x86/realmode/rm/realmode.elf | grep text
  [ 3] .text             PROGBITS        00001000 201000 000f51 00  AX
 0   0 4096
...

In that case, it seems that maybe I should set the ENTRY in the linker
script as:
diff --git a/arch/x86/realmode/rm/realmode.lds.S
b/arch/x86/realmode/rm/realmode.lds.S
index 3bb980800c58..64d135d1ee63 100644
--- a/arch/x86/realmode/rm/realmode.lds.S
+++ b/arch/x86/realmode/rm/realmode.lds.S
@@ -11,6 +11,7 @@

 OUTPUT_FORMAT("elf32-i386")
 OUTPUT_ARCH(i386)
+ENTRY(pa_text_start)

 SECTIONS
 {

--
Thanks,
~Nick Desaulniers

If I've understood the thread correctly, sorry jumping in late.
- LLD will set the entry point to the start of the .text section in absence of any of the other ways to communicate an entry point. It gives a warning in this case.
- Setting the entry point to an address that is the current start of the .text section silences the warning, but is potentially fragile.

I think LLD is on balance right to give a warning as in many cases the start of the .text section is not going to coincide with the desired entry point.

I recommend doing this via using a symbol defined at the entry point, for example Nick's last suggestion. This will be most resistant to changes such as the .text section changing address or the entry point isn't first in the .text section.

Peter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/DBBPR08MB490303D229CB1C7F1CE5796CF8870%40DBBPR08MB4903.eurprd08.prod.outlook.com.
