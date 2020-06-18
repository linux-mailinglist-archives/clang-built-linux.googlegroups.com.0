Return-Path: <clang-built-linux+bncBCD4PZ7MGEILVHVN64CRUBESORYKG@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8AF1FF075
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 13:25:47 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id c66sf2453908wma.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 04:25:47 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1592479547; cv=pass;
        d=google.com; s=arc-20160816;
        b=BzMAVxV9R8vLBWdj9w3WjG+XTbM9wTych1JmeR+kwRJhwsbeA0AFD3D9Ap5Rxd1u4+
         qQ2qKOlu5MkfbWwehqVpDC0wtANsal7D+0PAU6KWAz9VAiVQW+lgeirZ9Vl5QFSBrQoT
         v3TlrqRrxWUrmw6fW+Bq4ifzjlQNsQXMkQx5MF80VPYw0ohzJ1cLd+5T8ZjiFndAq+20
         792B/CT5qtiLpnlx8afXHGPjC4AVqoO3Q4ZLWQzJR8NSQNmtxwj1vQUOgYiJvofItAcq
         h4XDz/xIsNbEH9sxCZVAJQLUuH1uL/ZqQ42oA/wcK+ASHfvgDjJR2+IUW+xNdJTwCiwK
         jrfA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:original-authentication-results
         :mime-version:content-id:nodisclaimer:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=GL20RSdc9S481hULVws+3z3vgY6muHJzPRBsk6/pW80=;
        b=vcC+S0eVyG5LjOEj8BfDUiiOiie++Oe6HpvM/AcHrWbcl3ACYdyZdVe9l0vqwqz8FK
         99G0WvqRjMmPDaDK2N7KhbInhAwhzJy9+u4yiaMuPuMAYvipx/HKMuBlgEmQMAFWd7XR
         d03D+SF3WXXXO+O/0WMycrm/aFpUHgR1098b2Sc7ahNHPxrE9YbrlTmHRpQwoOV1ChUC
         r6NM38NctCW22N1voJLLoQ/zXrel55o8w+2p3XlbnD9o33nVVRQu92qROL/67tpViRnI
         LWW2qFruQVlncDbfIYb86jGwG8Ch3GhdCPGkJP0A+NeyBIu0FDYQM7MCW/l227st1b7t
         0zgA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Jo5zBZ9u;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Jo5zBZ9u;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of daniel.kiss@arm.com designates 40.107.20.77 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :nodisclaimer:content-id:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GL20RSdc9S481hULVws+3z3vgY6muHJzPRBsk6/pW80=;
        b=OUGRUizRTDEA/QsRfkSmRIyLtphSOB1cqPF79ColX+RdhXSMUJMQh6OaRBl9tEJRrG
         NFUIDC7+Gk1Cci46DMGYAu+Xih21Mcb9fCQSwXJXjAkpa8vs4S0IOqKM/r6Zx5GmK/Nd
         8PMe50Hf7W7ao+Ouhu64Z+RKIzofR9pUuEqpjMDnlIP52ZBy/W02hLPdezjBQkHT58QE
         TlOuIA+6oderzDwxzc4qg8hltxuPxlCbKXm1Ebfbufw8AkMKxc3tutvIoqo8GpzhQJ11
         HbmP4XsBbsEiSQ97B37GxYs4wOyN/vgrA1oYOsdn2Ft46qyW5E6MYl/10ygfvvb8uvtr
         OAZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:nodisclaimer:content-id:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GL20RSdc9S481hULVws+3z3vgY6muHJzPRBsk6/pW80=;
        b=DVdy8bEyRFIgl8u3tXhizpIUnoq/iNt2WWU+3G9Lw79UcTkO0sXcvIf5vxWu1aHOLz
         mH4ljiSnzdQoX4qSOWzAeMLOgOwl0wTxTa/xPpxy1ZDyU6uhv0I42kUhdcpHlpyoYbIn
         TUjS0O3sekox5aB1tAcRjCIIFyW/PqZ8VLVw7cg/ABZ5NIeM2OiXH1d+ciHmhO55lLGj
         Y3FEVph9AE9ok/xNgabtIfdLwyM1vFHGWFC1lKxj5pXHzgD8f2DIaMGa0FgHU9HhZQzX
         b2SH6xGtmt9H1T6rTuiCpzPF7zLbbPGsy1DjitNU1bWu0bD73sl2qIpZRuMza+S9MJ9N
         5uHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+ZbnTBc2LrAw9nv3I8keQ3a/OfMQBGah9hjx7BUGmKwUbUopU
	sn/6Z/Gkymy+ShoqAXVeFUk=
X-Google-Smtp-Source: ABdhPJx26+7jKTg/FSyqLxmPWjwWjpsUm/1G6572t74Cmg6OBdpS6DBOEi7aYB1Orz+At/Bj9SshsA==
X-Received: by 2002:adf:8b18:: with SMTP id n24mr4346626wra.372.1592479546914;
        Thu, 18 Jun 2020 04:25:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a545:: with SMTP id o66ls3221087wme.2.canary-gmail; Thu,
 18 Jun 2020 04:25:46 -0700 (PDT)
X-Received: by 2002:a1c:32c4:: with SMTP id y187mr3582951wmy.79.1592479546454;
        Thu, 18 Jun 2020 04:25:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592479546; cv=pass;
        d=google.com; s=arc-20160816;
        b=HqPEAg7VGWTHV85SHnw3NW5gDo5hPJg6do+oKCtI3D6ZaJAaKWLekir6lm34Q7sA60
         FkJ9T+B5FkjOUPgEy4+SAbzyNwlW5w2FyTghtpdyaYIUUDXE/WXe+3xpEVnPWpawU6/t
         WImMxGEt57f8OPDVbHf2o6134GZuAskdAvvo+VTZLeQZ+DMNepVEUl1mMzTdHQ6dRS5a
         jCpKqFa9zzsdrCYlXCbsiclTW3C2JN5fJY77Y2KEL3yrWbIvwZalm4A0EMog7XU+pzgl
         wMSNUrPxEgSzHyfEOGWqcBJ3nmAMA3rEnwb/rwNZr5I9bsGqj5r/j3HpDy6wxRha/NZ5
         EGBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=original-authentication-results:mime-version
         :content-transfer-encoding:content-id:nodisclaimer
         :authentication-results-original:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature:dkim-signature;
        bh=V2ARjDOvZeAmmi7omaaiORdqNdrDqahdVN1iE+pMOJk=;
        b=WMLJmULzGs+3c35S1nx7lp0zPdM118AISHagMhdYNkm+NHhaIEYVBYCyunLUeD/xA6
         MRZTZKhYXK2G5oahG1K02TEXZsWuLEgoCCmXqP5vhTYXUGMwyO2IUtiNnKXN75ZHohWp
         edU+Z6eedyJ6nr6f70a7mEVjXW2c5/lILch1+pCJpRGfseBsckKit68lEepW1LSsVYu4
         J7JNkUSl+4wDomDk4EBfdDNS7thhSu/u0NMIlZagdV/cprD7byRpnMyg90sktXPwdsbE
         0roEiF2u7aUvxK8M3ymRgpYVhnu13D+Ti6Dn/cQ78gju90IreoN3JE6ak2uk4VpTnJhN
         cNCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Jo5zBZ9u;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Jo5zBZ9u;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of daniel.kiss@arm.com designates 40.107.20.77 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2077.outbound.protection.outlook.com. [40.107.20.77])
        by gmr-mx.google.com with ESMTPS id s137si172023wme.2.2020.06.18.04.25.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jun 2020 04:25:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.kiss@arm.com designates 40.107.20.77 as permitted sender) client-ip=40.107.20.77;
Received: from AM5PR0502CA0021.eurprd05.prod.outlook.com
 (2603:10a6:203:91::31) by VI1PR08MB4526.eurprd08.prod.outlook.com
 (2603:10a6:803:f1::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Thu, 18 Jun
 2020 11:25:44 +0000
Received: from AM5EUR03FT059.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:203:91:cafe::5b) by AM5PR0502CA0021.outlook.office365.com
 (2603:10a6:203:91::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21 via Frontend
 Transport; Thu, 18 Jun 2020 11:25:44 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; googlegroups.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;googlegroups.com; dmarc=bestguesspass
 action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT059.mail.protection.outlook.com (10.152.17.193) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.22 via Frontend Transport; Thu, 18 Jun 2020 11:25:44 +0000
Received: ("Tessian outbound 09efa10eaf29:v59"); Thu, 18 Jun 2020 11:25:44 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 4f2182586558f48f
X-CR-MTA-TID: 64aa7808
Received: from 91ccf4400be1.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 16573015-7582-4C68-8B3C-C9061C319F8B.1;
	Thu, 18 Jun 2020 11:25:38 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 91ccf4400be1.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 18 Jun 2020 11:25:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dm075R50YFn8SBmGqa8dVLGrNjMJTD15aVJjUd6EcZ3OUpxIlVbtHcWstcZOGhXXIl7ybtb3hexig3POsIYGqZoQ6Ml2CB0G1Pu/VGEkGwqVlpQuO3KGY6TT9O61026+azc19nzzD9nS3c0wwBh2Q4tXYjJ5KJTGgBFyvrcUT4QDPaj9xvJs0JaVkoUoMjRI4LAXYSfqUTmk29JY+U2rv/oYZE4+c3FGZbSktnrBsC0OBHGx1nNTYig2LMOZYGsQnCl6m713Ue9wF2z1Yz892Q8OV2D/9s8Xove19OiCePyNpE3jtYZhH3BHRqlrRX3hNoQgBWd2qWfN7CDfkRXH/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V2ARjDOvZeAmmi7omaaiORdqNdrDqahdVN1iE+pMOJk=;
 b=ULsK2ADJyxt/Ns9TQqQbs/CJNlNqd6Kh7H8hAsCKXYmPGCeyxofonKnIjeEKRFHEJdFkID9GvoDgpxhz6lLyWoiQlZZRSo8fJC6/h0z36a1OUYvcGDZGpTU4zjew8c9D+48dRdj49+kUx1mGrOKpTSmJv3AcrU5bnLMc5Y6FfE4cguaulLsO26Ii+T3RdtwOh7Hf/S1LR6l0mmHXGPMxdcXSkwzbI3zDQm+T/tLfhFmTFkZnyuqi5Lgum50nEfdmhzLOLUQP5XGlEmgUeM3EUCYJj/4LxABkgoCpnzqsuHeC6Ic47wgbt2PHltfhA76yyUpxDWCUVshMavO9KIbrXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com (2603:10a6:20b:e7::32)
 by AM6PR08MB4786.eurprd08.prod.outlook.com (2603:10a6:20b:cc::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Thu, 18 Jun
 2020 11:25:37 +0000
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::8520:b5eb:3f43:2859]) by AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::8520:b5eb:3f43:2859%7]) with mapi id 15.20.3088.028; Thu, 18 Jun 2020
 11:25:37 +0000
From: Daniel Kiss <Daniel.Kiss@arm.com>
To: Will Deacon <will@kernel.org>
CC: Linux ARM <linux-arm-kernel@lists.infradead.org>,
	"kernel-team@android.com" <kernel-team@android.com>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Nick Desaulniers
	<ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, Tom
 Stellard <tstellar@redhat.com>, Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: bti: Require clang >= 10.0.1 for in-kernel BTI
 support
Thread-Topic: [PATCH] arm64: bti: Require clang >= 10.0.1 for in-kernel BTI
 support
Thread-Index: AQHWRA0mMtI4PqQFIEO3S/h8Wwqr+6jcheGAgAG4ZAA=
Date: Thu, 18 Jun 2020 11:25:36 +0000
Message-ID: <FDC366D9-2DE2-4362-87D7-1560872CC71F@arm.com>
References: <20200616183630.2445-1-will@kernel.org>
 <20200617090923.GA4613@sirena.org.uk>
In-Reply-To: <20200617090923.GA4613@sirena.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
x-originating-ip: [2001:4c4c:1b20:6f00:9549:acb8:ec95:efd3]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: fe26a3c4-d330-4346-ade0-08d8137a575d
x-ms-traffictypediagnostic: AM6PR08MB4786:|VI1PR08MB4526:
X-Microsoft-Antispam-PRVS: <VI1PR08MB45267DF13220540E896B16DAEC9B0@VI1PR08MB4526.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:416;OLM:416;
x-forefront-prvs: 0438F90F17
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Z3jyuniAa6oLX+1h4NLXPbyqLNfcbBozY6eqClnC0rwujgL9XA1PnC0kj2/KoDJjjmrfsyqXabbZ0Ye/g+1DhdQ6Veu9RebNETRmGiH5Na4ZEnt6YR123QCSg1DH7dfo2rohZt/GYc0Yxj6gn4K1CIrTL5dtkjqdlkY2UX1MAGcuO1d/+np5trMc+ct96uqmsx3h9ifqs1CoegDbiQrHac9Y8NJW9c0x5vLOIEpTKf76MLZfK4KYwR2VFXPwjMQ2mgPHzhlZOaZa0gFY+MaiGix1Q1oEa4ssppkEVOHMXq5XqeyEDTulxQiBF1IHRGsM+px9DSLg3QGNxhGXtU1HOQ==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR08MB5256.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(366004)(39860400002)(376002)(396003)(136003)(346002)(2906002)(4326008)(91956017)(54906003)(316002)(6512007)(66946007)(76116006)(186003)(5660300002)(66446008)(33656002)(4744005)(66476007)(66556008)(64756008)(71200400001)(53546011)(6506007)(36756003)(478600001)(6486002)(2616005)(6916009)(8676002)(8936002)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: cDVJ0pRlMuRmMZLKUmBCqzDeMPJ2AlEuawJiVzUJNp1I0Kzx+PHxjB/n53K2AR7e3eeqQwu7HLQW1Xfk54g4bGsRpAhJ7DeDM8lEozWPIsqbRLdv2w0SGDXrmug/eOIpyIz5Iuvb9qxrZe336Zv6xBymY09T0P6FKxNyTODhqXVHy9XDtyMNuFeAonJSqjsqemce5+7ULkdCxKekQxGROkgP2YTQpKLumbvmpCMlqM9P/klAudwgsZN9TSglWIJM4GfoBfBUAlpOFxoUaJU1p/YqyD1v2MvSlNlKhojXGSpcrCS+gxz+5XSZ87A5wdon+pn0VAF4R5eZ3PE7sH1xUGXLC2kyZzKgUhkUA6KlQaJCCSbZM67hkptC6zIE8DFhfRv3ybxdokCpZk9g1Dsxb29g0PFPRh1oWLKmLs1tWJArlOKaw02mq2b67wTyND36Kp8IbP6lVdDbqVoMtvhtN8NDVArQ4uZN64XFXL27XwndOLLA8WGFaz2twCz3sicJPheroyhKdpt3HJCGNfD5ZTaF3xkc+jV70K2B/ZO5QbMBH5Q3CDjdoI/LlIh/VRrQ
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <BA64AE058851B04B9DCDC8A1C88243B7@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4786
Original-Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT059.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFTY:;SFS:(4636009)(376002)(346002)(136003)(39860400002)(396003)(46966005)(2616005)(186003)(5660300002)(26005)(36906005)(2906002)(82310400002)(107886003)(316002)(53546011)(82740400003)(356005)(81166007)(6512007)(336012)(70206006)(70586007)(47076004)(6506007)(6486002)(8676002)(36756003)(33656002)(8936002)(54906003)(4326008)(478600001)(6862004)(86362001)(4744005);DIR:OUT;SFP:1101;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 42d4dd09-3f86-493b-ae32-08d8137a52f0
X-Forefront-PRVS: 0438F90F17
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y/NSAGLkeSfqdufqPw8DuPX6C/1Fi1PsmN+TJ/rZOLkrAzW2VMD/SK8RX11oECBhzWDrB6iFefLDIAO6JBPdMl+CPxTvxdjfgLl+6y5+YvLyl7++vDAEcpNyqJ+YTlpmChNfdGFF0axjSTypt2IiFr1qFYd+/zOT7Dy1uaNMcbZ83MvG2Kuj4De3sw9Zi4Cirh4T63Pa6Bdt4h9R9AD96BGB7+M2JWiIqNGO57QllbS14GSK9G1Mw914VkX9jEOoBk8uZOKJEbPmT21BFPrcumzEsMS8KKp3eLJLw9D0eXditQ7Ao08e4ixM4ciJnmr7WR8ipSww0U6codfQn+Q+2hhL/woJIH9vMQfeCHH3ScJCzmdmjFxz9pi44dJ/DaGfPlNOAHUsYMeCP78gOJxjFw==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2020 11:25:44.4721
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fe26a3c4-d330-4346-ade0-08d8137a575d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4526
X-Original-Sender: daniel.kiss@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com
 header.b=Jo5zBZ9u;       dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=Jo5zBZ9u;       arc=pass
 (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass
 fromdomain=arm.com);       spf=pass (google.com: domain of
 daniel.kiss@arm.com designates 40.107.20.77 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com
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

Acked-by: Daniel Kiss <daniel.kiss@arm.com>

> On 17 Jun 2020, at 11:09, Mark Brown <broonie@kernel.org> wrote:
> 
> On Tue, Jun 16, 2020 at 07:36:30PM +0100, Will Deacon wrote:
>> Unfortunately, most versions of clang that support BTI are capable of
>> miscompiling the kernel when converting a switch statement into a jump
>> table. As an example, attempting to spawn a KVM guest results in a panic:
> 
> Reviewed-by: Mark Brown <broonie@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/FDC366D9-2DE2-4362-87D7-1560872CC71F%40arm.com.
