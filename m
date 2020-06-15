Return-Path: <clang-built-linux+bncBCD4PZ7MGEIJXGU664CRUBEPZDU22@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A01A11F9B3A
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 17:00:43 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id a18sf5022326wmm.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 08:00:43 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1592233243; cv=pass;
        d=google.com; s=arc-20160816;
        b=T2cJB2dXR/WtRlI6YhiC/VR+HywtmuA1EdBJ8QtQQ9faW623ztNLKCMyrTM83ANgo/
         bR0j1toBwAkGnB8hgQymEWErV5FAWaVnHlLuxFE0yqPJcwdc/yVbKyF0F/R69wrUy98X
         h+dJHacjmMZclhw6SQDq5/ruU98pULBNSJRW5qj7bR4ajUL8bRTus1glImcOvWTrzXmO
         L/rfYAn/JfvQgfix3gQprCXep65v3rGVhomhoDoB6j4LaST8czTHFLsDxWVgccguYt+a
         1VL01NcWVoX63seTYR37dFPwnl7wZ0NZJ4BypR/PcpSmluqnVr3yn776kWAmOhoieJD0
         i7BA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:original-authentication-results
         :mime-version:content-id:nodisclaimer:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=ClcGZP+ZcX5t4S4VFx9W4z7Dsojugzmg24/FX7VyKCM=;
        b=azRTvpnUJjR4C3tD/TRtZnMeKTbX3VOtGEW2JGhc4SvG0cdMqWlhxCrjtPMnliT20n
         esYI4xFsA2YtvO0sQJhNoOTnFqYL0vW5pqsXtPUebbHWznBjmFzYN1R1O6v7a3biXfFO
         4M+9QpQ0lbOzNn/ty5czNvR+KeUA59JT7UyTczwK6bKkPQ1995MUxEV6XLaOwovqmoY3
         B2MZNrQ3vHUpdU+fES4Tftp8Mg8eFbkmd26223UbHD0ypdrTfiEMiHM7rQ4AMKnKlsze
         SZD8b9LqHqCg3s+J5hvb+3xyATQ6Z6X5saFzkkZmqFwun8Xlouu935YH6ENy915O7khc
         giog==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=ICPIlJNP;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=ICPIlJNP;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of daniel.kiss@arm.com designates 40.107.14.50 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :nodisclaimer:content-id:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ClcGZP+ZcX5t4S4VFx9W4z7Dsojugzmg24/FX7VyKCM=;
        b=iwjjidN+1cvnjyNhUNESuh8GBZ8ND6EdA+BbSYbcUr9O9tsWuIOmh7tP93MLMaQdN7
         oykCZcgpedo9iBGVtLzkghbHqmCt0fbkEN5RnNd6TtycsLH7LHN0xKTNswWWjCL1obaW
         YlNR7owcWO0Tnc1zz20OqoAeyOyEuXFlyXOAUxi7WfNZ6pKxvBwffUrRTTtKCzldiCAW
         xVzVJ++NPuRujwOp65LI2j/mAIU046TaXO+zeGi/xA4FvNx4Pmvresp9ZdVWZ+cS8XBz
         h2S2brMzWKGTarQH6nuIFdeAbmca4d05T15aayYPUaug9PUkhpe1pIkg7GhNOXWkhNWJ
         zL2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:nodisclaimer:content-id:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ClcGZP+ZcX5t4S4VFx9W4z7Dsojugzmg24/FX7VyKCM=;
        b=C1hfxlsJwJnRZq4AjFBcsgENVb3ORWAxD9cBR2oDcuDBkTuwsdopKn/GI6DZV5avxP
         sM2ZYbkUNKFB9KWW5tVVPcndd2DlcIE5mJoe9cXHFJCfk9ZJuQtLyFjKjomSjnXRRmlQ
         20TdTKNW1Y8PU1YVVal0M4hciJOsqYzzB9EvlfQpQmFGLPUWwo5lhuQiijcc2WT1R+CN
         3ESEolmMWqDwZY7uUn/1n7wSoCzcCl789T4ALrqHNCETNlp1sdd9Wks532CU4SCSs4Gn
         GLqa+6hS7eUVLfLcTnpcfQZCZEKy/CjIhhkFstA1fLT0pt1kNxmUI4WuYXywXXYbUM8s
         BdbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530teArBIe1kx/VIhnRcs4ww3EMvZwfZj2tHGKfgi13RaCNux1Fy
	eMGRuy1HI/6/qQj2dAEpgeo=
X-Google-Smtp-Source: ABdhPJzJfIkld1xZTSVgb1aVS3iKVhY5Yzjirb+i2lV/k2rG5eqQHBX9vTkDI8Z/FZIx93zUHnUiXQ==
X-Received: by 2002:a1c:8186:: with SMTP id c128mr14441901wmd.114.1592233243344;
        Mon, 15 Jun 2020 08:00:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2885:: with SMTP id o127ls6867596wmo.0.canary-gmail;
 Mon, 15 Jun 2020 08:00:42 -0700 (PDT)
X-Received: by 2002:a7b:c0d9:: with SMTP id s25mr14248569wmh.175.1592233242799;
        Mon, 15 Jun 2020 08:00:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592233242; cv=pass;
        d=google.com; s=arc-20160816;
        b=WjNrR9oAmPHE6BqsvOcsb39bjNTxpD/ro0qMtB48Q7gMSTRNDuctrWecEO3CApjoIn
         R0cI2DplTJ5lnxM1pYFi9R6SzsucEXWsk47QmPOVRbXLzhG8aCuLasPCW9ZJ0wQ+I2zH
         9I1Lxw1IHjbvqpesy248QvJ9zy5YF4jgobwYSMdqPGx8yccinqm5qoSCHeTibq+nW2PC
         wZDkdbHIunTsbuJVwIQaabrTApK+BEFBgTSm7jcDDvms2QqQmt8uDkpHg7RXmq8RURQP
         zE/CY9NwxHSBNl/qLwGqeOG3c5WBoVVTD3u9/kY17XsuyHTBQBoqVoTw14wWKQn7QMtn
         0nOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=original-authentication-results:mime-version
         :content-transfer-encoding:content-id:nodisclaimer
         :authentication-results-original:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature:dkim-signature;
        bh=72LskwnUbYB+OVdjsKMSyU4UD5j3+WarH14O09FLoOY=;
        b=OSLR0iYzJmiBTEDQUDkeZHIMtjny+VkRBrp7MWQ90ssay5/fFXJXmbqq68fI8MlstR
         m0Ty6gLKwrvtfc2VxeRgRdmzSJEhvEIPnkMUPJclpU1dSE5tK/20hHN+WkKbNcjr8Zz6
         F5NxgI4kfKiM1p81DXuxhWsYTwII5pohist67OY6GD19lVCbaWIN8nHF8YS4BBlkTqTX
         yIoiFKa253WZUqo1lNGShGMA6tMlR9HJIYv8WsYfbZpuN49bsuXxhT7uTgf7xe09MyAh
         UEK6DvcqLs9TVinZde5CGFc1QRFfEXw+ILDR0BSpSWhZ9aaEIQTXkVkcIxyu3t0jQHMw
         pKyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=ICPIlJNP;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=ICPIlJNP;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of daniel.kiss@arm.com designates 40.107.14.50 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-eopbgr140050.outbound.protection.outlook.com. [40.107.14.50])
        by gmr-mx.google.com with ESMTPS id o195si764500wme.0.2020.06.15.08.00.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jun 2020 08:00:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.kiss@arm.com designates 40.107.14.50 as permitted sender) client-ip=40.107.14.50;
Received: from AM5PR1001CA0022.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:206:2::35)
 by VI1PR08MB3471.eurprd08.prod.outlook.com (2603:10a6:803:7d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.26; Mon, 15 Jun
 2020 15:00:34 +0000
Received: from VE1EUR03FT056.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:206:2:cafe::80) by AM5PR1001CA0022.outlook.office365.com
 (2603:10a6:206:2::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.21 via Frontend
 Transport; Mon, 15 Jun 2020 15:00:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; googlegroups.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;googlegroups.com; dmarc=bestguesspass
 action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT056.mail.protection.outlook.com (10.152.19.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.18 via Frontend Transport; Mon, 15 Jun 2020 15:00:34 +0000
Received: ("Tessian outbound 39cdd740f5cb:v59"); Mon, 15 Jun 2020 15:00:33 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 35c3e05e0983c248
X-CR-MTA-TID: 64aa7808
Received: from 42079ba97a4d.2
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 5AE22106-D6E3-4AE9-BE24-07A40F26941F.1;
	Mon, 15 Jun 2020 15:00:28 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 42079ba97a4d.2
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 15 Jun 2020 15:00:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dv0HTFySQrDbZkhv9S6in05VtEtyp9awGeLtlCpRKtU3GfWAIJKm547Yi9karTvinOFl7ORziZKSZK/3krsL4ljWzjzYMW+zg/tlLitXuMuy7t8qu4IJpz99v82O0hgVVLehjT8HfRa/NJQ4C2x/p7IqeG34IvckoE1lI8zKHYA8KxOaxsZhZGJCsUsH2S9ShBVN5OJ6F2qxASesMfZIH4egqjwyufFH3wbGnDOPRm+3vaC80nfokNpTzXwsn5E858w7NGAawWztwD4DjFayeaVVsySXZMXIf6ohXGjeO2xyUEMUCQLPahyb/qXHFUfNFP3RXub9OTTTCq2IRKqwig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=72LskwnUbYB+OVdjsKMSyU4UD5j3+WarH14O09FLoOY=;
 b=PCYYDqDv/0PtamVX0FIi3Yg1ue7aAk29nTn1sxgL4Sikbqbrm5J7Lf0N3LLhYrFhpzFCchvW8rACkTlViNiuBIdkdiMnrIncqvePCKCwJuYbhNMBrcqxG7BWXMrGkACMYNzQTPQagBWwhfMv3FlngZL2AYgUAHn6w8+RH0OENtSRmyHQrvTXlxOuiD07BUB0n6z6QM9GsAae5LOVeEY8cX4KT+TykYXw75DlyxeDr2C5llZFbf2QGTqVSLiG8VzOJBtA602DaQM0quvyuw15Al4DyrGitfAX1ehcrY+uRPioPxnnVeIAYZsZ/m1VGVTLQf2qnZOEuXxfYQWTHv9crA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com (2603:10a6:20b:e7::32)
 by AM6PR08MB3861.eurprd08.prod.outlook.com (2603:10a6:20b:80::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.24; Mon, 15 Jun
 2020 15:00:26 +0000
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::8520:b5eb:3f43:2859]) by AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::8520:b5eb:3f43:2859%7]) with mapi id 15.20.3088.028; Mon, 15 Jun 2020
 15:00:26 +0000
From: Daniel Kiss <Daniel.Kiss@arm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
CC: Will Deacon <will@kernel.org>, Mark Brown <broonie@kernel.org>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, Mark Rutland <Mark.Rutland@arm.com>,
	Catalin Marinas <Catalin.Marinas@arm.com>, "android-kvm@google.com"
	<android-kvm@google.com>, "tstellar@redhat.com" <tstellar@redhat.com>
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Thread-Topic: Clang miscompiling arm64 kernel with BTI and PAC?
Thread-Index: AQHWQwvIwUPc6Qlv+0K2LxDL7OeqQKjZk5CAgAApjICAAAgygA==
Date: Mon, 15 Jun 2020 15:00:26 +0000
Message-ID: <2AA789CA-8391-450F-899E-0F372328136A@arm.com>
References: <20200615105524.GA2694@willie-the-truck>
 <20200615115337.GG4447@sirena.org.uk>
 <20200615120223.GC2694@willie-the-truck>
 <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
x-originating-ip: [2001:4c4c:1b20:6f00:59bf:6b5:7923:43a0]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 11756f8b-2276-43f6-c870-08d8113cdafb
x-ms-traffictypediagnostic: AM6PR08MB3861:|VI1PR08MB3471:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB3471350B1EE092C177338425EC9C0@VI1PR08MB3471.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 04359FAD81
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: jr89kK8NzXIehPfX10V0CGOHl3jFL4VOeDXZaGH14tNJUe/PsZl7GhqnA1hMBnWYtVDRGC2kdzvDqIzdnwTp3tv9FYbs5GULeCYcDEcVtPYG5KblQ2Z/k6beC6VVcl6cvwxijxuv0P+VBl58RCF8c+JdJ1Gc9EzLpSNm65AUu1QlNvYtuSKrXTG0RCKiGdyy99UboJ2ykgs5bhXIeALrdPiQYOe5wB1OWjtlGRm66HJGotxi/TzKFWziyU/v5uTeLbeMrdTNoieyYHtB0v77xswKCH2+Yf2eGYbeZ36P6cagr2HN6DYPxWHJuiiXmcS6B+iIkBJNi3quJb0fU+mFYQQM72OMOakpHuqvsRgXXhrV+ekYhZCkj0NgN0XRjTNeQGBlL0hYOkt/+8Jlyfukzg==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR08MB5256.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(136003)(39860400002)(366004)(346002)(376002)(396003)(6916009)(36756003)(5660300002)(76116006)(53546011)(71200400001)(66556008)(186003)(91956017)(66476007)(66946007)(86362001)(6486002)(64756008)(66446008)(6506007)(8936002)(6512007)(2906002)(966005)(478600001)(4326008)(8676002)(2616005)(33656002)(83380400001)(316002)(54906003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: MJzAtGHk1rYkFmjGFlU/pkmXpnj+02kc1Ym78vkX+TlsQ1Nkk+x6YZiXyYXcrLmZnFRGEFSvOaE8Z3Bp7vCcBHhHYPZ/Jl/omWdF1XFxuH0QVbnk/9YUeojmCCAm7Ansv95I9srs1QIB6xx/oIqElOCBaFNx5PXhJQ9Mg03YBKhBmj+/l6cOOs3xV4zqmKUUo+Gqf4L9BIOZHY99ly9y0F7syM1xjT2SyypYbn4hgVLXkxkqFmfCrzXpNqQVg9spoHwZ8TklnbQCva6q4HKseWE9eqVlZwf1NaaC8s2xayMVjlsSjM4dts1vhyILDW9mQ2RZmSDf1bIv6FWyffJ19xfqMRS2tUxQD0qcOs9MrZ0ch58BT8q3LBQVSI5yLbmMapf2y3v+6xBVyb3FQ6EBzG0SQkWiCUQqEJtYpExZ1P2J5hNeIY3L2q8mGfuqoJkpeHlX31yUHbK6e52HIcD73k3NwZ63e8IXIqttWo1FaOJ3mLc/TCL9pI/z5v2s0sxOcttVkgXIdtNPSGyR9h735AwW8RlhXEz6Pv5w3/xvJhvghglHcYAS66BrIMZM9UtU
Content-Type: text/plain; charset="UTF-8"
Content-ID: <BB8559931608374D8966EAEF8887F5CE@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3861
Original-Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT056.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFTY:;SFS:(4636009)(396003)(39860400002)(136003)(346002)(376002)(46966005)(83380400001)(478600001)(82740400003)(6506007)(86362001)(36756003)(186003)(82310400002)(47076004)(70586007)(336012)(966005)(53546011)(356005)(81166007)(70206006)(2616005)(26005)(107886003)(2906002)(6862004)(6486002)(5660300002)(54906003)(4326008)(36906005)(8676002)(6512007)(33656002)(316002)(8936002);DIR:OUT;SFP:1101;
X-MS-Office365-Filtering-Correlation-Id-Prvs: ce59abdd-88f0-4b7a-18be-08d8113cd666
X-Forefront-PRVS: 04359FAD81
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cyBhDBH7xOBLRuuIiTHP05PiYSrMXpjTL27JzApqeCs29aut1AB4m+ODHhfjKS207sD9LJkDPeN5kyYSXx7ygJrzcwEuYeM2Pxuq8WVoI4pQcmef+i0P8/pK0N95yDi0zZj6+jcIrOG93AmFaA3mAndsJtvgVQ5ngiM1kuUNE7HDvqROvebKGUBAXotXXchTV9qh7WvWLDB3U1FFXpJjvDjq2o1rsaypNuSJBsBC/d1SASOeDmIYuPvSW771WfFT3WtSDtg5x4FKqUtunnK7Y3AdUtomPb/bLPpYBbds98cBjdfOqlykuX7uEu9dXSwfV6TPcx3cNE6IpQJr3Rk1sAyZLttJeEa6g7vuKclfIxNX2FeNbE0kxMi4HLkgBu40pQsHJzlCdsdkxzh/jaAS6Hfzk5jT9xYtYP160jaNMEDZfJwiC/2ox2OQmxKuwNCNihBbyQzjnUPCo+8LXs6PDJp7E9t7EZ93jufZa/RMp50=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2020 15:00:34.1449
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 11756f8b-2276-43f6-c870-08d8113cdafb
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3471
X-Original-Sender: daniel.kiss@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com
 header.b=ICPIlJNP;       dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=ICPIlJNP;       arc=pass
 (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass
 fromdomain=arm.com);       spf=pass (google.com: domain of
 daniel.kiss@arm.com designates 40.107.14.50 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com
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

Sorry, I just saw this mail, I have opened a ticket for it already.
https://bugs.llvm.org/show_bug.cgi?id=46327
I hope it will make it into the 10.0.1. 

Thanks,
Daniel

> On 15 Jun 2020, at 16:31, Nathan Chancellor <natechancellor@gmail.com> wrote:
> 
> [+ Tom, the clang 10 release manager]
> 
> On Mon, Jun 15, 2020 at 01:02:23PM +0100, Will Deacon wrote:
>> On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
>>> On Mon, Jun 15, 2020 at 11:55:24AM +0100, Will Deacon wrote:
>>> 
>>>> Here, the switch statement has been replaced by a jump table which we *tail
>>>> call* into. The register dump shows we're going to 0xffffd68929392e14:
>>> 
>>>> ffff800010032e14:       d503233f        paciasp
>>>> ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
>>>> ffff800010032e1c:       910003fd        mov     x29, sp
>>>> ffff800010032e20:       aa0803e0        mov     x0, x8
>>>> ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
>>>> ffff800010032e28:       93407c00        sxtw    x0, w0
>>>> ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
>>>> ffff800010032e30:       d50323bf        autiasp
>>>> ffff800010032e34:       d65f03c0        ret
>>> 
>>>> The problem is that the paciasp instruction is not BTYPE-compatible with BR;
>>>> it expects to be called with a branch-and-link, and so we panic. I think you
>>>> need to emit a 'bti j' here prior to the paciasp.
>>> 
>>> I checked with our internal teams and they actually ran into this
>>> recently with some other code, the patch:
>>> 
>>>   https://reviews.llvm.org/D81746
>>> 
>>> ([AArch64] Fix BTI instruction emission) should fix this, it's been
>>> reviewed so should be merged shortly.
>> 
>> Cheers, that's good to hear. Shall we have a guess at the clang release
>> that will get the fix, or just disable in-kernel BTI with clang for now?
>> 
>> Will
>> 
> 
> This will be in clang 11 for sure. Tom, would it be too late to get this
> in to clang 10.0.1? If it is not, I can open a PR.
> 
> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2AA789CA-8391-450F-899E-0F372328136A%40arm.com.
