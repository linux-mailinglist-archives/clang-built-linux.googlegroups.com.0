Return-Path: <clang-built-linux+bncBCD4PZ7MGEIJJHNN64CRUBFWCL5EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2061FF06D
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 13:23:00 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id t145sf2455853wmt.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 04:23:00 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1592479380; cv=pass;
        d=google.com; s=arc-20160816;
        b=M1nR9hiYcnSTL1X3lIG6VgL2iHdwjX61RCLTtp2KiS0tjF6o4j4QvL5r4fMyVfZpoC
         hvvdjqXndWm5Ry0SyjuA2ygI95FiIOP8OupKGvNN20r25dpbQ9OgVjbJ6pwAO0otH4B4
         MdDrrshJLKcSFMW74zl5ey7UIcKZ3daBKDgC986sMloyYtcbZ3gDDis46MYVnL/i2neX
         a/4jHcNdmUDQld5GKDHtlMeYykS4fLZ4k4MR24S4kSNFqJQk8LeFj8usBI+xD3IiSrWn
         RDIWsyA2jDGKeVy7pgR3BLxQKskB7DT8PtQwJo39qy+1Vj4gVxG0LQhUIpoCOJ0D59fO
         3KYQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:original-authentication-results
         :mime-version:content-id:nodisclaimer:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=jjdlVmr/psT78uPnd9WlAhIX376U9Y807pbRrn3HG2Q=;
        b=EzMzDStp5egrkOqVSH1PsuQBkp+BkRGLCBXogrydEI01V/XnYQQZShyuPb3V8/X2wa
         2kDcvhaXodi/G79OC6P+qaR4oZtkOIvfzP3Ck7M5C6b84qR11rZS1+yrf5eHLirJg+/a
         3MwTJPVawN7TQrVxyww0GslGh2QI5FWqprW7+KB82AvhYG8hUOMUuJQJ1N5Dk9PY4mFT
         S7G9wJg2dy7ZuEqgT/NY8ze2b/r9SNzln7JnTIRbuWI2tyGbR3qTaWUGbkfW2RUREdyE
         3hJTbjMEcnIjSv79arM1B2OW6ameFs5/uYh6wpPC3X5B7XYqt7HD8el2cDM/xnapbkqc
         OIGA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=nvESG1ac;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=nvESG1ac;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of daniel.kiss@arm.com designates 40.107.6.82 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :nodisclaimer:content-id:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jjdlVmr/psT78uPnd9WlAhIX376U9Y807pbRrn3HG2Q=;
        b=ARnui9gJwKjWsdPyyE76o1eOBd2XMI+p83/N1Ky6AdPHipCBYdsrKfbSNjQfWv+3va
         o+IPVZL9wROkFGjWoG3gbtd4y48UGurC30I3aQsVR+zZnMRPAM9OJQ7FQH8vDE0h1vhz
         MFZUxQW9HvlT75d1M1q0lpstD21hfPA2ASTdvqYYvgg4OZZbTAVlGHaxYSLA5SunOiP2
         e0uKPezeEL8VTyQizJWQU8MDIQLkiaciGSdk26Y2A9Ac5XYLB1Tj0i/QTNrGKZmn/45c
         wB1zrfVG8uVUpXiBSQQ9E/ThANdlYnJlCOHY1GaX1+Wx5tXjA+Nu92PP++e0P37gLyCh
         eJfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:nodisclaimer:content-id:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jjdlVmr/psT78uPnd9WlAhIX376U9Y807pbRrn3HG2Q=;
        b=P2pM817vwQwFqqSTaAj0/bS722DlIS20BbFUakpelVOz95uWchQFybyX32X4YffaDg
         xCvfHCYIRcPTTRpJmbX0xBGmhHYxNSxOn37Y9RwgV8smgoVUomDb7WqZLjdEbB+mvZie
         h0ojvMYsYN+Oemzo5gdIJVF/f30h1kxVfQq3k+no6tBYF3MD53s2Iylv/BxH5TbcRtgV
         EfDr8FKMs6n6ybLlgthCaIC6k6IziXvt3ZfeUfFHS2RU6WNQuLZRQczhiyzMYDk0iPef
         bY1v8NywDZpRn4YnARozszEzDpJIw6sY9nitkkwky/vroEW2bPMF5kC3PjyKB9d978me
         XfLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333s0goRWpX4AHh/pyrb1pnz9niYCMnExP+z/EInrR54AflS4Oy
	9B4XZlOvz+nD5WFV2GFcM88=
X-Google-Smtp-Source: ABdhPJyHAS4gOKDy6kKNl9QEg2VyODB7mfnVgXjcaX92wx4SKjci0HpUlz29H/k4Fx87XIx5w7xh1A==
X-Received: by 2002:a1c:1946:: with SMTP id 67mr3742573wmz.59.1592479380181;
        Thu, 18 Jun 2020 04:23:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2885:: with SMTP id o127ls3210275wmo.0.canary-gmail;
 Thu, 18 Jun 2020 04:22:59 -0700 (PDT)
X-Received: by 2002:a7b:c348:: with SMTP id l8mr3836877wmj.54.1592479379630;
        Thu, 18 Jun 2020 04:22:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592479379; cv=pass;
        d=google.com; s=arc-20160816;
        b=j905zVy7dtsnDFaQ58bKHfoWJuDjnsaNz6RtpiRxo+7nHCxcS0pytc/hYSxKAHCLcu
         OggKxqiJ9hG6sgthJOwMNDvrwP5PTlSsQX7tp2Z4a18OuKSZfdm3ufoKWPybU68zsWH6
         glABybObeVTbiMC13F1F5spzyO4M4cpzFAGxN/riAnXtn3yipZn8Lr9+UWZeiUmnkugf
         FOFNT25lgNSPEHiSDT6ydX4Ajgd6I9b+s5/mFcq8+VMXE3UMI5sR1xg9xqaBPtFgUCHE
         iz1+qqXlqZd3V8DrNjibZhJ1TT+Lg5OAmqCGmh+CFm44+97nMGu5VPyJoaYRLZjROp4Z
         H1kQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=original-authentication-results:mime-version
         :content-transfer-encoding:content-id:nodisclaimer
         :authentication-results-original:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature:dkim-signature;
        bh=NTgcgLosVt0MQ8C3nMAvizF/SlKahFZgkmpmAdRnH0s=;
        b=L4APyXrry9YCkhbajYXXTExPLrrlzXviVfbGpHLmwYtiCAMw06dXbevobolg/BX9Jb
         lmfC55RKuAjK/azPwHi3hOgOL2WrFxncDY0fzUDGxlwBKS5hPKBO20n6tREn23zT18XC
         7t6HIDfpas/Zcm1VWNfxXS2O6zX/XTsDwQFseMP3EOFgdNqwFk81mSvwcRm3uXBvcNI2
         qaKmvSY/LhzZK9hgc1Jwxqv80/7YWLeLUG6RZaI9TWKhwgVZlGqtuHXVVA8YBk8iElqd
         f36fuYBT/8vIJxrNa9vrO6COvrCzRW++2vPmij7jECg/yII+yKMljraKwgDCq4G/Jx8k
         Orlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=nvESG1ac;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=nvESG1ac;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of daniel.kiss@arm.com designates 40.107.6.82 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-eopbgr60082.outbound.protection.outlook.com. [40.107.6.82])
        by gmr-mx.google.com with ESMTPS id y65si521946wmb.0.2020.06.18.04.22.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jun 2020 04:22:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.kiss@arm.com designates 40.107.6.82 as permitted sender) client-ip=40.107.6.82;
Received: from AM5PR0601CA0042.eurprd06.prod.outlook.com
 (2603:10a6:203:68::28) by AM6PR08MB3366.eurprd08.prod.outlook.com
 (2603:10a6:20b:47::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Thu, 18 Jun
 2020 11:22:57 +0000
Received: from AM5EUR03FT055.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:203:68:cafe::bd) by AM5PR0601CA0042.outlook.office365.com
 (2603:10a6:203:68::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22 via Frontend
 Transport; Thu, 18 Jun 2020 11:22:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; googlegroups.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;googlegroups.com; dmarc=bestguesspass
 action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT055.mail.protection.outlook.com (10.152.17.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.22 via Frontend Transport; Thu, 18 Jun 2020 11:22:57 +0000
Received: ("Tessian outbound 13f833fb3c6d:v59"); Thu, 18 Jun 2020 11:22:57 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: a390bb1731c5f051
X-CR-MTA-TID: 64aa7808
Received: from a90f89448e81.2
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id F4D431B4-7591-4474-AF03-3ACEDA4EC9B3.1;
	Thu, 18 Jun 2020 11:22:51 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a90f89448e81.2
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 18 Jun 2020 11:22:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YcezBWaRfQzZDB1ALpaDGq+to6CXaCytIcgiwlTA/v37FeBtxEtnv+SlsISpAzJ3bvxDyn3P0+L5N5DmQto97HR65DfapaTtXhG0qxwMBUmiwlU++hPImD7YOjofiBYWaqZhO4HnV2mlnZUEh81Sq3+mY4u556Z/HXL5bYLlBDHU5sGUS2q0xv5LgTNtff9rsqhNTudmP+rgCOAJEqaOBm0tv/Abv5dE80itNt5gtpWQWohKIWozhbFSOUTKs88PhVpCQiPqdnbmwby1Ek3udMrTzLMDv5xJkpL8PcUd9Q0BQDuJqGbrCg5q+HS1+bcLGab88S3pqJEKtwPEdDTRSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NTgcgLosVt0MQ8C3nMAvizF/SlKahFZgkmpmAdRnH0s=;
 b=WdSvngReqn7udbXkYZe9hq3+eZPbk859Sey5xRBLVg6hwiwuZVyc6nqfY5C4CJM63BVD3teIY/fVYV1HLwQfI6L2vyv1J9ySxxcT+x/CzxGWNplIwP9BJRzPfMOxMaQ/WoJMOK4RxGTAGDICJzUdIX/mowcaeFls4rBtkeevnFgxilrb2A6En84I/ug0oXQo81LqA+M/T0f7wp6xHUUa0jzxqqfy9ThLagIsgifa2Zc9hoxaaOosbjDi/vIlpXFkciLGTzS4e4PreJB0ttX+ohyoI+tW1KszRD8kGCqir0eM35zuixZUT+3cRX0qGnpGtKTBytk4bTV6kW8fjqny0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com (2603:10a6:20b:e7::32)
 by AM6PR08MB4982.eurprd08.prod.outlook.com (2603:10a6:20b:e9::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Thu, 18 Jun
 2020 11:22:49 +0000
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::8520:b5eb:3f43:2859]) by AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::8520:b5eb:3f43:2859%7]) with mapi id 15.20.3088.028; Thu, 18 Jun 2020
 11:22:48 +0000
From: Daniel Kiss <Daniel.Kiss@arm.com>
To: Will Deacon <will@kernel.org>
CC: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor
	<natechancellor@gmail.com>, Mark Brown <broonie@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>, Linux ARM
	<linux-arm-kernel@lists.infradead.org>, Mark Rutland <Mark.Rutland@arm.com>,
	Catalin Marinas <Catalin.Marinas@arm.com>, "android-kvm@google.com"
	<android-kvm@google.com>, Tom Stellard <tstellar@redhat.com>, Fangrui Song
	<maskray@google.com>
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Thread-Topic: Clang miscompiling arm64 kernel with BTI and PAC?
Thread-Index: AQHWQwvIwUPc6Qlv+0K2LxDL7OeqQKjZk5CAgAApjICAAcZoAIAAAz4AgAABv4CAAAstgIAAyXSAgAHiXQA=
Date: Thu, 18 Jun 2020 11:22:48 +0000
Message-ID: <05299121-7B49-43DE-A5DD-8C8FC16A4C72@arm.com>
References: <20200615105524.GA2694@willie-the-truck>
 <20200615115337.GG4447@sirena.org.uk>
 <20200615120223.GC2694@willie-the-truck>
 <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
 <20200616173728.GC2129@willie-the-truck>
 <20200616174904.GA3403100@ubuntu-n2-xlarge-x86>
 <20200616175519.GD2129@willie-the-truck>
 <CAKwvOdm_0W5A+=C0uNfFfU2+wb-f4MA2B_P+15KWdGsBqfZ9rg@mail.gmail.com>
 <20200617063621.vqtplv2l3nnaye22@google.com>
In-Reply-To: <20200617063621.vqtplv2l3nnaye22@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
x-originating-ip: [2001:4c4c:1b20:6f00:9549:acb8:ec95:efd3]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d1118a0b-65e1-4dc9-9251-08d81379f3c4
x-ms-traffictypediagnostic: AM6PR08MB4982:|AM6PR08MB3366:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB3366944A85B7C622F06F9041EC9B0@AM6PR08MB3366.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0438F90F17
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: m/3CppYH9zOU9Kb1+r24WI2FOpKHkMyr5mMLcwwpZWsamNX5BTgXoTt8rZ1JFf76bl1ofTEGI75UR0FIW2Q6O30ZNV/0ST7tPpTrRrdiyN93EHqpYhWUaim4pTzIUNyhT8JFto14TfpQDvSx4je/a91QAMUvm10rruxGqvj+WM4rHhvohgumCwtHxaL4RxWd3xn8/FW5Ip243EPBT2ypkk+bJl0l7NDzX2l5nQCvESp8zqZ0YsBrx+cIB4TuYkVCAOolGeEulLyzGDf/1bvpsm0HgRJMGpp5nR6tGFxOsytRdLhYGrpkbupzEbi0KW4KKJsdJq5g87spaj025unsVbH7NBlbX726mSgu5/SU2fZ3DTZ23k9NqfPnM5UQ8Fxe6NwgMQXMus/sc0J8m27w8g==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR08MB5256.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(136003)(39860400002)(396003)(366004)(376002)(346002)(8676002)(33656002)(6512007)(2906002)(4326008)(478600001)(6486002)(5660300002)(8936002)(2616005)(6916009)(966005)(186003)(66476007)(66556008)(91956017)(6506007)(76116006)(54906003)(53546011)(86362001)(66946007)(316002)(36756003)(71200400001)(83380400001)(64756008)(66446008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: gusUeTjY6wIlDLgI2THXYVT7088iNMjRoLHKxxxq7Lerme2K8quQQf/32FjViu7plhLa0qmuY6V3yiD0uC/ZrMnHgWvjiPObNtQ/SPWm3i2oovWp92WFr+AwKX1S5YZpjMs+J8iZ1LQNn/jMAYPkH+cuz0+TfSVrxOOFh79C1klbDRqYiAknMOc4SXykloXNUutPaiLYSTNl/URBnCy6Hqr23AGXrEbON+1vyTuRuE6EpytnuLXAqLlwfSlNYtutwtwb23Sj7bf0P6Xob/a+cQC1YUgzxNDUS1/s9sOs3W04WLxuZDi6GggmqXsx/LYmq4XPAlUPDe8+z2zE7/gW83M/ZbTZiYuTYL8R4sGMn6vJgFf//WERceF/NcPvXafLiVjQStiZPqZT+8dAXdnxIKV8wD99Zqxo+IWTbDAbjSFXaEKOLS4yN1i1AScPREcWB+VEkmd7MZ4JBv1T67fXZuXNLLEA4dnvQfxvYnKN/IJlAL+sJPTIOhcfIn8GF2vyBcFzGtow9OOOSPBRB5Pq92USgiBtgaomw+gAalH3pQslha7Jzv9TjElyCmaoCzQa
Content-Type: text/plain; charset="UTF-8"
Content-ID: <48701183C14AB7488347BBA8FC143902@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4982
Original-Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT055.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFTY:;SFS:(4636009)(396003)(346002)(136003)(39860400002)(376002)(46966005)(966005)(336012)(53546011)(6506007)(2906002)(356005)(36756003)(81166007)(70586007)(54906003)(33656002)(2616005)(8936002)(478600001)(316002)(70206006)(36906005)(8676002)(6512007)(6486002)(26005)(83380400001)(6862004)(4326008)(47076004)(82310400002)(107886003)(82740400003)(186003)(86362001)(5660300002);DIR:OUT;SFP:1101;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 2f190d88-0a79-48a9-ffa0-08d81379eead
X-Forefront-PRVS: 0438F90F17
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pOGyvYKTlPYt55Of08nyp4UEgkbWrTcrCh/eLAK6n9dXn0yESp9UFQJwcwGP6fT4foOyyu3rZnxs+P9bx5S4YOMiixNb1tawKP2eeyAkdeo+VzPY9hYJkQxJG41/POC2rvMGDRP/JAOLveqWjAyitXQW16hQjEDkWjk+N5Q5E+n89HSJlPkfRYT1cEpdUpdZNzwO6UHs8PsULiA4YgNG/j+MNjlCU73t4VYZnER04f+GUnVyNUbkFUdM2U2PFBeP64B1j1uZcWrulrm4sz4viZxWv4xT7qcEz9w7CCTuFRveZEcA37Ka2SrZgwNrlLsDoQEBsVasHbuVvbczed2PvOKJVi+gAMBln59fje62OAAnZtoNsRwfaQsKOne24TP/00MIotBTagnYvpHuuCFaWZa2kho245W5pURwR6uKRNb3leao0wB4jFHpjKwQBQNnqVhBvxh+QrsA5nHo+P0K3w==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2020 11:22:57.3892
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d1118a0b-65e1-4dc9-9251-08d81379f3c4
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3366
X-Original-Sender: daniel.kiss@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com
 header.b=nvESG1ac;       dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=nvESG1ac;       arc=pass
 (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass
 fromdomain=arm.com);       spf=pass (google.com: domain of
 daniel.kiss@arm.com designates 40.107.6.82 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com
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

Hi Will,

v5.8rc1 compiled with the patched llvm 10.0.01(dc94773a91c85a05f4f249153cb1e9522b3beb5e).
The function you reported now looks good to me.

Thanks,
Daniel

0000000000006ae8 kvm_vm_ioctl_check_extension_generic:
    6ae8:       e8 03 00 aa     mov     x8, x0
    6aec:       3f 84 02 f1     cmp     x1, #161
    6af0:       20 00 80 52     mov     w0, #1
    6af4:       8c 01 00 54     b.gt    #48 <kvm_vm_ioctl_check_extension_generic+0x3c>
    6af8:       29 0c 00 d1     sub     x9, x1, #3
    6afc:       3f dd 01 f1     cmp     x9, #119
    6b00:       e8 02 00 54     b.hi    #92 <kvm_vm_ioctl_check_extension_generic+0x74>
    6b04:       0a 00 00 90     adrp    x10, #0
    6b08:       4a 01 00 91     add     x10, x10, #0
    6b0c:       8b 00 00 10     adr     x11, #16
    6b10:       4c 69 69 38     ldrb    w12, [x10, x9]
    6b14:       6b 09 0c 8b     add     x11, x11, x12, lsl #2
    6b18:       60 01 1f d6     br      x11
    6b1c:       9f 24 03 d5     bti     j
    6b20:       c0 03 5f d6     ret
    6b24:       3f 88 02 f1     cmp     x1, #162
    6b28:       a0 ff ff 54     b.eq    #-12 <kvm_vm_ioctl_check_extension_generic+0x34>
    6b2c:       3f d8 02 f1     cmp     x1, #182
    6b30:       60 ff ff 54     b.eq    #-20 <kvm_vm_ioctl_check_extension_generic+0x34>
    6b34:       3f a0 02 f1     cmp     x1, #168
    6b38:       21 01 00 54     b.ne    #36 <kvm_vm_ioctl_check_extension_generic+0x74>
    6b3c:       60 00 80 52     mov     w0, #3
    6b40:       c0 03 5f d6     ret
    6b44:       9f 24 03 d5     bti     j
    6b48:       00 40 80 52     mov     w0, #512
    6b4c:       c0 03 5f d6     ret
    6b50:       9f 24 03 d5     bti     j
    6b54:       00 00 82 52     mov     w0, #4096
    6b58:       c0 03 5f d6     ret
    6b5c:       9f 24 03 d5     bti     j
    6b60:       3f 23 03 d5     paciasp
    6b64:       fd 7b bf a9     stp     x29, x30, [sp, #-16]!
    6b68:       fd 03 00 91     mov     x29, sp
    6b6c:       e0 03 08 aa     mov     x0, x8
    6b70:       00 00 00 94     bl      #0 <kvm_vm_ioctl_check_extension_generic+0x88>
    6b74:       00 7c 40 93     sxtw    x0, w0
    6b78:       fd 7b c1 a8     ldp     x29, x30, [sp], #16
    6b7c:       bf 23 03 d5     autiasp
    6b80:       c0 03 5f d6     ret

> On 17 Jun 2020, at 08:36, Fangrui Song <maskray@google.com> wrote:
> 
> 
> On 2020-06-16, 'Nick Desaulniers' via Clang Built Linux wrote:
>> On Tue, Jun 16, 2020 at 10:55 AM Will Deacon <will@kernel.org> wrote:
>>> 
>>> On Tue, Jun 16, 2020 at 10:49:04AM -0700, Nathan Chancellor wrote:
>>> > On Tue, Jun 16, 2020 at 06:37:28PM +0100, Will Deacon wrote:
>>> > > On Mon, Jun 15, 2020 at 07:31:05AM -0700, Nathan Chancellor wrote:
>>> > > > On Mon, Jun 15, 2020 at 01:02:23PM +0100, Will Deacon wrote:
>>> > > > > On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
>>> > > > > > ([AArch64] Fix BTI instruction emission) should fix this, it's been
>>> > > > > > reviewed so should be merged shortly.
>>> > > > >
>>> > > > > Cheers, that's good to hear. Shall we have a guess at the clang release
>>> > > > > that will get the fix, or just disable in-kernel BTI with clang for now?
>>> > > > >
>>> > > >
>>> > > > This will be in clang 11 for sure. Tom, would it be too late to get this
>>> > > > in to clang 10.0.1? If it is not, I can open a PR.
>>> > >
>>> > > Any update on this, please? I'd like to get the kernel fixed this week.
>>> > >
>>> > The AArch64 backend owner said it should be okay to add to 10.0.1:
>>> > https://llvm.org/pr46327
>>> >
>>> > Tom just needs to pick it, I see no reason to believe that won't happen
>>> > this week.
>>> 
>>> Brill, then I'll tentatively queue the diff below...
>>> 
>>> Thanks,
>>> 
>>> Will
>>> 
>>> --->8
>>> 
>>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>>> index 31380da53689..4ae2419c14a8 100644
>>> --- a/arch/arm64/Kconfig
>>> +++ b/arch/arm64/Kconfig
>>> @@ -1630,6 +1630,8 @@ config ARM64_BTI_KERNEL
>>>        depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
>>>        # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
>>>        depends on !CC_IS_GCC || GCC_VERSION >= 100100
>>> +       # https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
>>> +       depends on !CC_IS_CLANG || CLANG_VERSION >= 100001
>>>        depends on !(CC_IS_CLANG && GCOV_KERNEL)
>>>        depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>>>        help
>> 
>> That should be fine.
>> Acked-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> 100001 is fine.
> 
> Tom has merged it into release/10.x
> https://github.com/llvm/llvm-project/commit/bf89c5aeb8915d488fa1c790e1b237b62a49c01f

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/05299121-7B49-43DE-A5DD-8C8FC16A4C72%40arm.com.
