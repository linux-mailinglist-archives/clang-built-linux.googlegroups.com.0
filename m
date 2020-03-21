Return-Path: <clang-built-linux+bncBAABB7GZ3DZQKGQEKPOAQZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA1C18E242
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Mar 2020 16:04:30 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id a8sf4690845plm.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Mar 2020 08:04:30 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1584803068; cv=pass;
        d=google.com; s=arc-20160816;
        b=N3fLUlHLfRUK8I7irGN4IOPqK0lG38u9MA0T/lH6X100JhAwLxVse0p+LlnG4bGxmW
         hD2+H5Jrdroe58row/tJGCzmtP1xW3re5Qq0IpUMDAduvaPGbHbfD92VQnfQw2hVEOqC
         c0rNZ9t3FRA9IP3XBijJxVP7qbTOsJNpY9dJl8CXEAVw1CzBXzM8SmfA14C8KGdo/6Qz
         Dj1rStrbsdeS9DOhB6+npyFT8SEBcxCfI+adXloI6ujAigGIqVi6tgNGMIJipQ2O1+Tn
         AIukylPGxAa6dqc6stL/HiJAVtGjqWdH5xtE3Zpd5JfPsI/wZiR4F1+omtIoLAldhJXi
         v4vA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:original-authentication-results
         :mime-version:nodisclaimer:content-language:accept-language
         :message-id:date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=UvK0EI03NitHHzB5GUNOPbMCnqFWgdeyJAcehw+shW8=;
        b=u6TTFFdwvgIcSXLK32khACJC9mC95Jy90IDq7vrTVmekX1kHz+9WB/caImnZcEkDfL
         bZcmH1j8GrjJtaRqm9GMkcbmmiQ7P9MUQztugFxHGOAOgNYkP7NHx5uVGXkHwiXVmyCL
         pY+edwkoYZm/X9xC+EXmCttQrVoCSj9HnWdAK1IveUZpIUPTVUtoifY3d2HiBF8YKuZ0
         aH0aD7K9W37Wl20LIqHLDrhtx8duLOOsJfLfMxt4wuiPf2X4al8ohUERuSbTUiamU/uC
         rF9ZsBqOXj/6YLBcHiP04mt0FFXkFPcBT7ZaPyTA94H1HO5ctz/foGZxNmRR2GCM57VZ
         7wrQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=VkTFqo5h;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=VkTFqo5h;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of peter.smith@arm.com designates 40.107.8.83 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:nodisclaimer:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UvK0EI03NitHHzB5GUNOPbMCnqFWgdeyJAcehw+shW8=;
        b=iLFHsVeA/FdLFTOiejBmX9f9bJu8gm/Qj/5h0fl4HC8k2e5np4OcNo4JwlRCOypziA
         ME39Proyd7GRZvz1+sQUuvJVyTlOXx05d+WXJ0YYkYq8YCjsjAqpl+mzPSjLHs3m7OTx
         4EFmDKpXye4eJWxjS865nbWExBMC2b7mwMqzgEHK6J/1hwGaCmq+Kkjn8Sn9GLHvzazC
         rAh4g3dEpZLbEnFJgsPHSoVclcUr8K+f/49SQiRBxu0iy5BUbld4waLMH4dKmgMqVyMl
         6Xndw2mB866BXxIl5t0AOXgpzy7AJo7900mRI4BApE6d0y420FbmEMLGBqlOXi87H2kF
         4pRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:accept-language:content-language
         :nodisclaimer:mime-version:original-authentication-results
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UvK0EI03NitHHzB5GUNOPbMCnqFWgdeyJAcehw+shW8=;
        b=r3mJHOeVrfZ7aE104wrzBomUMvTX72LmgzgKy/DM7k/H4roIjpm72lhA7bShU8kddb
         TZWk3CzasUClArNZiceZYd+Luh41GYjC06CgPvZ2+eCc9HHRiSbtigAdilIUx6oQLIAV
         THZb1u65t48YWVgKu30FRVegCKPH6ZTG1oSqVK3f9FRl3iuA+aeMspF+s7M+SB0rvnGg
         Q7XIsGszVmVoEU4iUym1BRUzJZhyh1DMn6CShZ96IKeBXll5+pbGB+plchRac1m3ttsN
         Pf4gNc4chTUMB2MfBKCcvt64uu1wp6iWO0nidfCShinibQRbKfFi1SQemiJuhJ8W3FKa
         hxHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2U60XIDiwIezASaU9w5YGmWL+nGxAKAwTxYU50Zx65QABjm6Rm
	xKJW7ivEjKCYML0IYwT6Qc8=
X-Google-Smtp-Source: ADFU+vtRrzHiu1x6nKZXesh22FhG+vCJiX76OyQagchnx0suq/9hxaSAvOpJfisHn66XJfrAE2Jn1w==
X-Received: by 2002:a17:90a:1d0:: with SMTP id 16mr15369088pjd.113.1584803068668;
        Sat, 21 Mar 2020 08:04:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:fb90:: with SMTP id cp16ls5154594pjb.3.canary-gmail;
 Sat, 21 Mar 2020 08:04:28 -0700 (PDT)
X-Received: by 2002:a17:902:eb41:: with SMTP id i1mr13816137pli.44.1584803068294;
        Sat, 21 Mar 2020 08:04:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584803068; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZuK2o8bli6RgV3DjU15C9OiiCKufuG29XRahpI/cV+kc8t7Aj+z/QatI1R2SRvX6XQ
         sLysyW8KCPCjSseCOJ9VSZMuTEDG5GA07nph4WbXdF9pVG6CmehwbM8sL1fT/kQ1oCsd
         jxTWw54HYcLYs1YzhgVPipGMdLcR16zkkeE4mrXPFX5NoiygwzCzKccstMnrMlQ9/Nq1
         ZisLLRQVqKiJOeyvpEb6Ow/mxeYraHZHbQ2jicpD5px0yyenlU+qBYyCFUTB/6mHqXdl
         evMkN/ATX2rPT8Xf9dnw/WcSlOYW/yyUKRifh0OmInGAo5rCgBwkroDQvKbLzuCSy0nh
         FNMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=original-authentication-results:mime-version
         :content-transfer-encoding:nodisclaimer
         :authentication-results-original:content-language:accept-language
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=Z2Zu+gEpEKHAzqnMYaRnTQYiaZ0Va+00bgQyGh2CxH4=;
        b=px1mpnNoqq9S+U4PPHYasPZLXfu8z4nENOIKc/+VJLfSW2xR6QkhPZCNexBs+pjaeV
         Efc+H3WEIf2VxQ+tclm8ifmb1YD7lYv9JbRKzdzeUenfEJg73HqBJeuGRYLV+4VuordI
         zu8FoS1sUsON3XlgMCq7eHtN4C1+syYNbKWiV/zXrcouM+tGcHTM7wKJ8vQpmld9npep
         hlfq39UC11agbjJ3Q0V/KrA43U4RLNVC7m/hS5QQBF3/ljjqoOZ5a9gaAFFQgs791cIq
         s32ISGnAsZUe+qcFiq7iK7pFfgybYPtWJ10L2/Hw/7IgbYCl4KiGFBzp6WDeOhBKbLw0
         GYHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=VkTFqo5h;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=VkTFqo5h;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of peter.smith@arm.com designates 40.107.8.83 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80083.outbound.protection.outlook.com. [40.107.8.83])
        by gmr-mx.google.com with ESMTPS id y5si99057plr.4.2020.03.21.08.04.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 08:04:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of peter.smith@arm.com designates 40.107.8.83 as permitted sender) client-ip=40.107.8.83;
Received: from AM5P194CA0013.EURP194.PROD.OUTLOOK.COM (2603:10a6:203:8f::23)
 by AM6PR08MB3911.eurprd08.prod.outlook.com (2603:10a6:20b:80::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18; Sat, 21 Mar
 2020 15:04:24 +0000
Received: from AM5EUR03FT018.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:203:8f:cafe::7) by AM5P194CA0013.outlook.office365.com
 (2603:10a6:203:8f::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18 via Frontend
 Transport; Sat, 21 Mar 2020 15:04:24 +0000
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT018.mail.protection.outlook.com (10.152.16.114) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13 via Frontend Transport; Sat, 21 Mar 2020 15:04:24 +0000
Received: ("Tessian outbound aed43bac6b97:v48"); Sat, 21 Mar 2020 15:04:23 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 93515262838abd49
X-CR-MTA-TID: 64aa7808
Received: from 99f556d6ac04.2
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 463ABF6D-3817-4EE0-9730-565F871AAE4E.1;
	Sat, 21 Mar 2020 15:04:17 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 99f556d6ac04.2
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Sat, 21 Mar 2020 15:04:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VEffLlb70yVNTz9vlu/cVzxWUPd+uRY1TsO53tIPdVLp3T1JuJSKFkQkUO18Aif2BiMeptWXCYp4G37BorqOdv86UAHtF9LBXom1sAmyOG8oT20mknQcgYDOo86mhM4YjufoToGVajBD1Oh0lu5RpQ1sRNCyKDl1HjPOw6mbyRb61mLfiMOi0OHQaOUaZbfStglLpR7VnJfrkIHAj6XdRwBJPclunObRFp+o4hKddF3AT7Tx7aMUhRplGuh4khBBpjZ0RIhCr84/r8TKJNBmLVNOONU7TqUDpAdxSq3MkP88Y98gXO2fMLBoe+LSYXClYL4YlGhjrGWjV2cp2IirbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z2Zu+gEpEKHAzqnMYaRnTQYiaZ0Va+00bgQyGh2CxH4=;
 b=n7z0lwCrx6R3Oh278itbCc9RO8R07JaSV3tmEJkLno5xV7gO0Ut0OZUDCdABoueIXMqfRq6R/r5PVvGVJekJHA0MjqKsYtkGBMEuFqMN2+AChepWbtZyf1hIUmnh7oVhnYoKOj3R+avFKzKtvWDbOqzrxolKdK4HRzGbevtT8Jtwbeb2EHfW7qDGN+uFb2N8aOAjWGh4LsqpRNlfoter3sQlxMAYRpINT1WNc5buQqpvU37nlzkbaXzI+WgfZTe92KPTJWeApWC4KJq3uzH8BwT0Dplo58HbYNWwGFE42Mgq7mFoehHKt3g9CKOnPG9xL5hp61baU1Z4kswydBmBrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Received: from DBBPR08MB4823.eurprd08.prod.outlook.com (10.255.78.22) by
 DBBPR08MB4428.eurprd08.prod.outlook.com (20.179.43.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.20; Sat, 21 Mar 2020 15:04:15 +0000
Received: from DBBPR08MB4823.eurprd08.prod.outlook.com
 ([fe80::f46d:4b0d:d07d:949d]) by DBBPR08MB4823.eurprd08.prod.outlook.com
 ([fe80::f46d:4b0d:d07d:949d%6]) with mapi id 15.20.2835.021; Sat, 21 Mar 2020
 15:04:14 +0000
From: Peter Smith <Peter.Smith@arm.com>
To: "stefan@agner.ch" <stefan@agner.ch>
CC: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai
	<jiancai@google.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML
	<linux-kernel@vger.kernel.org>, "linux@armlinux.org.uk"
	<linux@armlinux.org.uk>, Manoj Gupta <manojgupta@google.com>, Nick
 Desaulniers <ndesaulniers@google.com>, Robin Murphy <Robin.Murphy@arm.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>, nd <nd@arm.com>
Subject: Re: [PATCH 0/3] ARM: make use of UAL VFP mnemonics when possible
Thread-Topic: [PATCH 0/3] ARM: make use of UAL VFP mnemonics when possible
Thread-Index: AQHV/5F6uBdROLXuBUO25GaNt3oLRA==
Date: Sat, 21 Mar 2020 15:04:14 +0000
Message-ID: <DBBPR08MB4823E090A8C9C0B48CB35603F8F20@DBBPR08MB4823.eurprd08.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [82.30.113.194]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 140af0b5-3b48-4dd9-8238-08d7cda9247c
x-ms-traffictypediagnostic: DBBPR08MB4428:|DBBPR08MB4428:|AM6PR08MB3911:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB39111A6C3E124C2BD514515AF8F20@AM6PR08MB3911.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 034902F5BC
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;SFS:(10009020)(4636009)(346002)(396003)(366004)(39860400002)(136003)(376002)(199004)(966005)(33656002)(478600001)(64756008)(52536014)(66556008)(6916009)(66446008)(4326008)(55016002)(9686003)(76116006)(91956017)(7416002)(66946007)(66476007)(26005)(186003)(81156014)(6506007)(8676002)(7696005)(8936002)(71200400001)(5660300002)(316002)(54906003)(86362001)(2906002)(81166006)(55236004);DIR:OUT;SFP:1101;SCL:1;SRVR:DBBPR08MB4428;H:DBBPR08MB4823.eurprd08.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 4jUu/vvTga/F8MsK43egkld02CnIQhzRo7rBJanF2d0X8SrtAuOqNIg7UufnqNUqC11VdhDZGr8pjwgh9jw5Tm2dd50Xn8wkY1amTNADgbuxphaYgD8aC/Sp/Namf/7c/P48ILZU4fgOeVnAWyl2urkEHEmVcWqmVphhh4XZhsJE2ETLHteRXPuFDhVYmDb412V97556rc9VaYGucKMhr4GJZD8z8gwueLCDoMnSlWDIosZUaucfZbXwqDINos43rgwmVvTOsohPWub8IhI3I7Pr7tGqr5QqKy3gYi7sgJ2Coac7kr/Un7nyVokU7xQ38FbILW2pFybeAIJBfzg+2euTnp+a3a5y9ILmjyI2LIOawQvnvdUVFw5unJOGoE9fHy+7vc8UGdPzbcC8tyID2TeJfMPlS2pIV52u5XkjzOhAocBM+A35XiMHxc/WZnU3olryRww+wS+Q4nlgf7gpTOqVo+9UJXQQvdA8Vs8rgY99G1lggEYOKyH3aMmPTfByMStQgpmt2WjkRIWGG4lytw==
x-ms-exchange-antispam-messagedata: IWhxSGfmVH122DjMHZutJA50supiBXBJ6aNGyI4AsQhr8oUQJb21dUiRxKgwd036V4978XrwGHkuX6mss0uKRJd6f8ns/lV4Gqt1fQ5/FNtMgtpm6X2yY5lwaTx8JFJPz+wBSMGNtk8Ql6h6JSoK/A==
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4428
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Peter.Smith@arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT018.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123;IPV:CAL;SCL:-1;CTRY:IE;EFV:NLI;SFV:NSPM;SFS:(10009020)(4636009)(396003)(346002)(136003)(39860400002)(376002)(199004)(46966005)(7696005)(86362001)(81156014)(966005)(54906003)(81166006)(36906005)(478600001)(26826003)(70586007)(316002)(47076004)(4326008)(52536014)(70206006)(33656002)(186003)(9686003)(26005)(8676002)(336012)(356004)(6862004)(8936002)(5660300002)(2906002)(55016002)(6506007);DIR:OUT;SFP:1101;SCL:1;SRVR:AM6PR08MB3911;H:64aa7808-outbound-1.mta.getcheckrecipient.com;FPR:;SPF:Pass;LANG:en;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;A:1;
X-MS-Office365-Filtering-Correlation-Id-Prvs: aa500a0c-699f-4b55-7bf3-08d7cda91ef0
X-Forefront-PRVS: 034902F5BC
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FIhdITh5TKLMUJNPQE+N36ut0BgVG8Sb2uKsuNJO1M7TcSjxzZvotZ4sg0MbwsxUaaKeYFnTymduJVEBMrxd3lOvZp6TKpcMSjBBNaFhGF+OZwCuogbep9iWQ+BCI7+zGiWu8v+tSdL5beObA3OrqTwN1ttFOIIl9Sf2XDm89WjBUa1lhUwAmPeJqHVYlE3bzUlQCLn5mKl3R7juVZhMc+43ZT9sWyZxpwA/5kY8WeWN4XFzmNb5y65lS6Bdq/8zgDL2ZcHFnNKyitUVCPIv/rDQEfgJzZXQqmWHv/lSqjs8DekL2B/tYyHBRO7GJZ1Myr5R9H3TIxkruPjpUJf+aZngB3+TM2G63U7xl/vtpSBeyi3EOOrTIwA/ISCHjK3hJbYI7tHScLTrjug8Xk8uulSADaqLg61DaFowRkUzhBIkjK2u707R3J/1f8gf7GCdhirSlne3JnhLdgNsJ0c2MsH6bk6HohILpIcjt9MenD7YFC0UAAW6U5yGmY35Rj5KlWyHMtlOkkoHVxr7GQ94kJfIWtFGNoEirxhmYBZTyaRxjPjmwoz2HbxF8xQgHhyg3OWzeeYDxz77BI7q1p8ndA==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2020 15:04:24.0910
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 140af0b5-3b48-4dd9-8238-08d7cda9247c
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3911
X-Original-Sender: peter.smith@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com
 header.b=VkTFqo5h;       dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=VkTFqo5h;       arc=pass
 (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass
 fromdomain=arm.com);       spf=pass (google.com: domain of
 peter.smith@arm.com designates 40.107.8.83 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
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

> To build the kernel with Clang's integrated assembler the VFP code needs
> to make use of the unified assembler language (UAL) VFP mnemonics.
> 
> At first I tried to get rid of the co-processor instructions to access
> the floating point unit along with the macros completely. However, due
> to missing FPINST/FPINST2 argument support in older binutils versions we
> have to keep them around. Once we drop support for binutils 2.24 and
> older, the move to UAL VFP mnemonics will be straight forward with this
> changes applied.
>
> Tested using Clang with integrated assembler as well as external
> (binutils assembler), various gcc/binutils version down to 4.7/2.23.
> Disassembled and compared the object files in arch/arm/vfp/ to make
> sure this changes leads to the same code. Besides different inlining
> behavior I was not able to spot a difference.
>

From the perspective of an Arm toolchain developer perspective the
substitutions in this patch series look correct to me.

Some references I found helpful:

The v8-A Arm Architecture Reference Manual chapter Legacy Instruction Syntax for
AArch32 Instruction Sets. Table K6-2 Pre-UAL instruction syntax for A32
floating-point instructions

FMSR/FMRS is the pre-UAL name for VMOV (between general-purpose register and
single-precision)
FMDRR/FMRRD is the pre-UAL name for VMOV (between two general-purpose
registers and a doubleword floating-point register)
FLDMIAD is the pre-UAL name for VLDMIA
FSTMIAD is the pre-UAL name for VSTMIA

FLDMIAX and FSTMIAX has no UAL equivalent and is deprecated in ARMv6 and above,
it is equivalent to pre-UAL FLDMIAD/FSTMIAD except that the imm8 field is set
to twice the number of doubleword registers + 1, instead of twice the number of
doubleword registers. This description is taken from A8.8.50 F*, former
Floating-point instruction mnemonics in the v7-A Arm Architecture reference
manual.

The mrrc/mcrr and mcr/mcr correspond to a VMOV instruction. The mrrc/mcrr and
mcr/mcr set opc2 to #4 when accessing registers 16 to 31 as the instructions
can only refer to 16 coprocessor registers. The same bit (7) in the VMOV
corresponds to N, with the register n = UInt(N:Vn) so VMOV can refer to 32
registers.

Ref: Arm V8-A https://static.docs.arm.com/ddi0487/fa/DDI0487F_a_armv8_arm.pdf
Ref: Arm V7-A https://static.docs.arm.com/ddi0406/c/DDI0406C_C_arm_architecture_reference_manual.pdf

Hope this helps move this forward

Peter

> This replaces (and extends) my earlier patch "ARM: use assembly mnemonics
> for VFP register access"
> http://lore.kernel.org/r/8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch
>
> --
> Stefan
>
> Stefan Agner (3):
>   ARM: use .fpu assembler directives instead of assembler arguments
>   ARM: use VFP assembler mnemonics in register load/store macros
>   ARM: use VFP assembler mnemonics if available
>
>  arch/arm/include/asm/vfp.h       |  2 ++
>  arch/arm/include/asm/vfpmacros.h | 31 ++++++++++++++++++++++---------
>  arch/arm/vfp/Makefile            |  5 ++++-
>  arch/arm/vfp/vfphw.S             | 31 ++++++++++++++++++++-----------
>  arch/arm/vfp/vfpinstr.h          | 23 +++++++++++++++++++----
>  5 files changed, 67 insertions(+), 25 deletions(-)
> 
> -- 
> 2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/DBBPR08MB4823E090A8C9C0B48CB35603F8F20%40DBBPR08MB4823.eurprd08.prod.outlook.com.
