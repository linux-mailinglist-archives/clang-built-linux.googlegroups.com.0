Return-Path: <clang-built-linux+bncBCD4PZ7MGEILNGM664CRUBGYE4SVE@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B1E1F9B28
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 16:59:03 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id f13sf4994617edv.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 07:59:03 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1592233142; cv=pass;
        d=google.com; s=arc-20160816;
        b=n19EHBvccBhKPdLgfuIQb4UTWJWqntfDuv7PQPjSPffk8g7ADdL7aruT4s+OBrmB25
         L5btNoddJNHrrjMPq35wonaGQraGhS6w99CM28wXp+ZSCWEHWNqkrgFXRV8FObFMnpOW
         7r4Wr0V5j40sHU2NoUWh9qZtj8gabm8s2OW2CO+lEnsJoO/iOllmAEQ8Qoa1R3WQATQ/
         d0/aOFRtkwWYOEu9EZhFuw8H/hBJ4i8YKj6moRdIHesEknL+BMn5I+VXtwMsMGjRksl8
         k1HUtsInW0SdikTAWhyjnDr3gp1/vkO7zxIlpJP5UMBeonW/9IRpdrqP2jUgP0/M2n9l
         /Z6A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:original-authentication-results
         :mime-version:nodisclaimer:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=vPP/5zDQyeRTC9VbfilW4F1UENnBzc2vm0vFYQdOQI8=;
        b=qDuwrZoedwIXAuhDFwJWTA5VWlJrwQcocIr2y58lgQVl0QYNuNSjKeFP86EYj7WNOX
         5YXHCfD5mEB7DjwzOzlG4AZc7oAQGo0A+dx6J2+DyFOMoTx31TWFFl2F3X5gDs003e9Z
         t86fsyDYo7jbynvTmNcxpzGlLuPE8Atb+sePSL//3T88+HKB6i0jjg81pjBGsLNuy89g
         UzakAUVf8oWeIT+h/GTIQLu7e/kzfC/UaINPu6GNjoXPn1C73Z33qIiBr20dQrDWtmoW
         J7rsm7HCHbZD4nVPU9WqAowMEGzG6A9AXaAqFwLkFwsFrZfC+3uJPyPxhOQpvZSRqDAK
         iCAQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=F0HQwzOT;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=F0HQwzOT;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of daniel.kiss@arm.com designates 40.107.3.86 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :nodisclaimer:mime-version:original-authentication-results
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vPP/5zDQyeRTC9VbfilW4F1UENnBzc2vm0vFYQdOQI8=;
        b=BzX8eGJzwFB2uDvIsja00rk8PHsX4ES/dvE8d269c2DPMTtcuiNwky9g7eyV028Vcd
         Yae6Sx/vNZMz0+CbBt0C/QsK0X2xKRU42oknfwNpdTuykxhiKkIQ4HUJw0a27Cg8LzbJ
         7fm/vlpVZO5mSrpdoTzPuEfKuHIj0FNZkj7eXOVRNcVR6nAWwXTxbuJQBefSW/4WwLw9
         X0tGmFI9zYNjgPX41jbwL0wwIBC9ijxqsaJwDFCIRsDRl+hwxl+km5Y5a4wLNGe7zvxa
         hA2LNWPGjhmvGB5wGlu0O7+YKIIVqj81fjy3zTkNa6ZW4r+5P8+T9iHFsTVbdW2RclSy
         m0Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:nodisclaimer:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vPP/5zDQyeRTC9VbfilW4F1UENnBzc2vm0vFYQdOQI8=;
        b=t0L5TxnD4DiQpNurNURH2GAVyOMuUY4IALXepRX1Q9ArvYkYBudW+BhSnAAId7OSEE
         RcodmitfddX+4duleZq5M7DZVnMD9fWFtnpovvSsXsDUiQctIBLEHEey/0WLai4MH8CK
         WWy90YsIMfbZgyqXXMBEtNqNnbFBBzkscFR5Kshmxjx7vZdEIGubIdv6mL9CoVx8+Y5p
         J7A/AP5pRmIE16n3iRpN06Q9qIQcbeUPxW4xtQdGrcb5lPv9ojpa37Dk6QychwagB9mA
         jFlS7jvurrC7ivDy4XsiLUE3va8QW3DKvGZ9g+U5+D+GuO8MktFPocHw+n+4az5gZzJT
         QI2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BUgXiIdKgj98h4rAmfRNhKOmXWAxcyg1YJZIfnB1nJ/HV3yHS
	DU7+Ku0mFeDb8xNGiTpzubU=
X-Google-Smtp-Source: ABdhPJwhzFokglZ4Oql2vXx10D4u/dyVZ/Rsc+P5+P0cRNNGgJMosr7WBK/nA/ppWx+4mKr/4I/6zg==
X-Received: by 2002:a17:906:e0cb:: with SMTP id gl11mr22906348ejb.173.1592233142806;
        Mon, 15 Jun 2020 07:59:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c302:: with SMTP id l2ls13589465edq.1.gmail; Mon, 15 Jun
 2020 07:59:02 -0700 (PDT)
X-Received: by 2002:aa7:c60e:: with SMTP id h14mr24568658edq.104.1592233142313;
        Mon, 15 Jun 2020 07:59:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592233142; cv=pass;
        d=google.com; s=arc-20160816;
        b=yqeFDvgB42N8cc7jjMXCSf/wnWg+yeL8YTPfG+/3qXz7cKrgFsa0i8sFLAY6O66ywi
         1j7ZBSSJu/iVxqtD9+abJuMKodWT1+jfOvAQYQ8RnrgcIjwMODa7+sBHi47ByJnF1Ylt
         FZUJagQAZO5+zwMHWEHbFkBac2rekahnIsK/B6my+tUrHSsiSlTn9iooVrgcUbYrKDPp
         3sB35Nsr9j3zbYUP+7tafr5x49u+AH0/AkmIu+HKceSo3RAubfmNhS5Tv7Kplz2SJl0m
         MOB5LSEBi3o3eyOxRaFe+lsCTRg3wvoDk0PGHIQ0cFfDf6alcIJlTcrBRmyB/K96YLzT
         0Ieg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=original-authentication-results:mime-version:nodisclaimer
         :authentication-results-original:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature:dkim-signature;
        bh=vRDrwxnLh7Gz7hE9ttffzvFqLPWJk8JV83VjxLLUC7I=;
        b=Q4CiiA/wLju1AQUCYM/GBoDQaSf5AXBioW0lzV0rfMKCBswvLk+r+nXcp2TVwy4C+3
         5TKDpqNHpa63Hwe5fW4LZKqQy+/Ylt+gLa9eETNA3d/CllZ3UIbl33HrH7L45XQeFN6y
         iC2svO7xRdfF5FaYH83U4VD/swikptE87uqRq3Dt6GjPUjgy92uKfWUgaFymA+FhNYPJ
         fhYduMPH2WGVlzYlb1ZsupmB0EJwiodb3A2bsdPH6CWUfKHUwEfwlnZ0/uX27GjBxeFD
         6j08QI4g0jw0XGcvFFyxhTmuUXZaeKYxVIckhLRdGupqu6LlaXq5F+jKUaeYmUxRxhyF
         QWrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=F0HQwzOT;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=F0HQwzOT;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of daniel.kiss@arm.com designates 40.107.3.86 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (mail-eopbgr30086.outbound.protection.outlook.com. [40.107.3.86])
        by gmr-mx.google.com with ESMTPS id l10si830311edf.4.2020.06.15.07.59.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jun 2020 07:59:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.kiss@arm.com designates 40.107.3.86 as permitted sender) client-ip=40.107.3.86;
Received: from MR2P264CA0068.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500:31::32)
 by AM0PR08MB3297.eurprd08.prod.outlook.com (2603:10a6:208:66::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Mon, 15 Jun
 2020 14:59:01 +0000
Received: from VE1EUR03FT014.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:500:31:cafe::a5) by MR2P264CA0068.outlook.office365.com
 (2603:10a6:500:31::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.20 via Frontend
 Transport; Mon, 15 Jun 2020 14:59:00 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; googlegroups.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;googlegroups.com; dmarc=bestguesspass
 action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT014.mail.protection.outlook.com (10.152.19.38) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3088.18 via Frontend Transport; Mon, 15 Jun 2020 14:59:00 +0000
Received: ("Tessian outbound 1145f7a293ca:v59"); Mon, 15 Jun 2020 14:59:00 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: cdabec26495fa1f8
X-CR-MTA-TID: 64aa7808
Received: from 7252194c7b2d.2
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 0ADA75D4-8C79-47E6-97BD-971A0942638A.1;
	Mon, 15 Jun 2020 14:58:54 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 7252194c7b2d.2
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 15 Jun 2020 14:58:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=daHrfywUJp4ERNgO88FEXNjjWKWfAUAfM5+7x/dYr1b5xxjjEoH10ROoOjDRJt+OyhfX3nx0A+HybXU9v6svrdqI/R76VEJ3/YJ4rjJM/lpD2i944Bwln9JGnIwDEtSnEOYTkkrbj+RHA4o2YnRXw19gZ30w90MLc9cJb/uq0F24CO5I+8WU/110YdrtcUUpfeuoxNc+ZQg8qpGqSaY5npsOvxCNExCVqfkkskY5mGSCZS4RQbNkmlHKFtCxAivR5r/v8p5hqm7HjynvmY5bsoS0zmdA1TBytg7e2vFuPRVhDyyM6tJmw/ynbLSjqfBMkTPH8N7zL8bYBG6MmtzdxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vRDrwxnLh7Gz7hE9ttffzvFqLPWJk8JV83VjxLLUC7I=;
 b=MltrSN8XBIgDmTcaLKhbkmaQneJObDvQ7CW1OPoUlFeA6NAlZbsHwsPrAzeuMG7LAEgE50smsBpqFPEjpceee0mfuYfuGeP6joaDerbBT9sFOL7Y9e/27+YkC7asf4Dk+FanwDMlwGTWaNNHUiAATUMWbav1i5MmmYOQDlNt+qrBIPH74Aoq9UooGTTSXLJ1za6dSVlMKFVe6brKjOip0LPWODdfwzMC020FIklGV72Dl+5nEull/tal3nroBe7Lp70r/RJoqzXvBV8uYkYfV9FeW9cQeXWQe1Sg1L2VPuyEdXmFilvY8zNavHVIxQr3MimS86Hhvn8uj7ypOU5flQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com (2603:10a6:20b:e7::32)
 by AM6PR08MB3861.eurprd08.prod.outlook.com (2603:10a6:20b:80::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.24; Mon, 15 Jun
 2020 14:58:53 +0000
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::8520:b5eb:3f43:2859]) by AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::8520:b5eb:3f43:2859%7]) with mapi id 15.20.3088.028; Mon, 15 Jun 2020
 14:58:53 +0000
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
Thread-Index: AQHWQwvIwUPc6Qlv+0K2LxDL7OeqQKjZk5CAgAApjICAAAfDAA==
Date: Mon, 15 Jun 2020 14:58:53 +0000
Message-ID: <B689BCBE-8398-469C-9939-B8FB5853386B@arm.com>
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
X-MS-Office365-Filtering-Correlation-Id: 12e901ed-ecdf-407a-c2ec-08d8113ca344
x-ms-traffictypediagnostic: AM6PR08MB3861:|AM0PR08MB3297:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM0PR08MB3297CEF0E49537B522C60DE9EC9C0@AM0PR08MB3297.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 04359FAD81
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: QbA838Xokfi6bgVzdYxVAyptVH4ZPLcgsvfNtOjY0p04Nn/ODPncNrU5WWFP+cKTCChHCgoHavxVAB6qSynCWtlmeXA64W9cr6TLDXjMk6u7d5n7D67QzTiTUF9XnhZZV0TdM78EaG3Ebma8xCIMB0+1si+msK9QbPJj5ooSfvlYY/o/BayiTEn8nQDn7BxQFJGz1eiWincnwDCdxZZEUv0PxZGpmeKtW5q/00o6khlSXn2kjCuG3M/NHx0uzG5YZtI5ZlYPI0MG33yGopV3ldZw+B83NHEIGI12W05RybfTJ2lpX3puEmdwwgQdUbCau81pkDLH/jJPlLLfnF8OazLFJ5ukPYtW4iagTn0hEfOdE8EcKgcT9LlKtXfl4uWd3vGrlqfPHHZ7zKM933dftQ==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR08MB5256.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(136003)(39860400002)(366004)(346002)(376002)(396003)(6916009)(36756003)(5660300002)(76116006)(53546011)(71200400001)(66556008)(186003)(91956017)(66476007)(66946007)(86362001)(6486002)(64756008)(66446008)(6506007)(8936002)(6512007)(2906002)(966005)(478600001)(4326008)(8676002)(2616005)(33656002)(83380400001)(316002)(54906003)(166002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: MXKjZttQsIdbjzOP2ewBk0rRwm/bpyowvx3rnDiWKnm/SO8VAoV17WICd8ltDB4re4zm34a86RmNBo7kOTkAOWRY1r4FG6iYqZ5pDPk+XPgrj6MINNRlS7LQyc4rp+PR15MsRAp6UCNth/oBcOGjLNMqghCmA0qPtYY4OkTcb1dh37E69+rEycqhCbG6J1WssHHQX2g6lApx+8mGYCXRfNueTYnZrwb8kYKxWyNRyWhCun2b7u1qk4sHPbPRL16HxXMCicFzFqrv1bEvvyhrkyX8qwMDhcWCfUN9qdJCxvK88+OU0UezlffH69V19A1yJaaE1gsbAituDp0cEFC7VOoJ8j+Yt/1VftnWKPWSWCOmW4nH25kt01o4i75lKAtUHMAx3q5x1VA6PFtD4vWZ6Ohykz26vKI2Ne4Xaq4enY/5AIc5z8TwuFwMkrxqsApzcoLe/YDmluIl7M/YBpjgjiqHNOcIlg8luU1LlxkWtpXwGTZ2mZQodLJBL3VkGHkDeg+bew22iT0oT/X/WioGYEmScls4bTKpVRk06OM45mmEkg/3zHzs3RyQpl0v+eYD
Content-Type: multipart/alternative;
	boundary="_000_B689BCBE8398469C9939B8FB5853386Barmcom_"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3861
Original-Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT014.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFTY:;SFS:(4636009)(346002)(396003)(376002)(136003)(39860400002)(46966005)(186003)(6862004)(4326008)(8676002)(70206006)(2906002)(107886003)(70586007)(2616005)(336012)(45080400002)(6512007)(8936002)(6486002)(356005)(82310400002)(33656002)(82740400003)(81166007)(86362001)(36756003)(47076004)(26005)(166002)(54906003)(966005)(5660300002)(36906005)(316002)(6506007)(478600001)(53546011)(83380400001);DIR:OUT;SFP:1101;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 024ab407-9e6b-4b18-5041-08d8113c9f0b
X-Forefront-PRVS: 04359FAD81
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2xo5bE947pc1qkwhmGEoW2xr0NIW8sSI/pZXJtXi+JJSO5wyrdLYxJX/7+QKuPictstUIuoZSVde9WAv0m32Kbj2MenUsf5NcUOLGrAC3g3xZ/3NmZXRKhV1w3WSPfdsN1wxJhemM3eJLld3+Yrb0ObTIZUfQBfP6VlvCp7f3KtA1blCDCQ05tcWZR6ttBi9dkf9ZoJ6lRGZRO+I9v75dUdN48QOKGsIlXTIpXJ9l/d2ISo+p9E4bfYyjot9b0IKj4mOlpB0VMtLT+J8wD0EqiduuS8LRZXOu8ELDv7mQ3XsIrC5pVTMFft9jnqOa9WQaDyKlSC2cIEEnBU/tstbQW6qii/0YUvWjx65/mpaGypkK+ergbBM0PB3usSTZe5XtgPBrFwJtCqsj+2dUDrM5V3xwU20pM2p4KOpPg7KNap/bF2Xw+Pj07LVnBx21miz70kkj3MuXBHPtnWAEAnHXLiTrlbNJDyQ5uF3wg11YdE=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2020 14:59:00.6708
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 12e901ed-ecdf-407a-c2ec-08d8113ca344
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB3297
X-Original-Sender: daniel.kiss@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com
 header.b=F0HQwzOT;       dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=F0HQwzOT;       arc=pass
 (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass
 fromdomain=arm.com);       spf=pass (google.com: domain of
 daniel.kiss@arm.com designates 40.107.3.86 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com
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

--_000_B689BCBE8398469C9939B8FB5853386Barmcom_
Content-Type: text/plain; charset="UTF-8"

Sorry, I just saw this mail, I have opened a ticket for it already.
https://bugs.llvm.org/show_bug.cgi?id=46327
I hope it will make it into the 10.0.1.

Thanks,
Daniel

On 15 Jun 2020, at 16:31, Nathan Chancellor <natechancellor@gmail.com<mailto:natechancellor@gmail.com>> wrote:

[+ Tom, the clang 10 release manager]

On Mon, Jun 15, 2020 at 01:02:23PM +0100, Will Deacon wrote:
On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
On Mon, Jun 15, 2020 at 11:55:24AM +0100, Will Deacon wrote:

Here, the switch statement has been replaced by a jump table which we *tail
call* into. The register dump shows we're going to 0xffffd68929392e14:

ffff800010032e14:       d503233f        paciasp
ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
ffff800010032e1c:       910003fd        mov     x29, sp
ffff800010032e20:       aa0803e0        mov     x0, x8
ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
ffff800010032e28:       93407c00        sxtw    x0, w0
ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
ffff800010032e30:       d50323bf        autiasp
ffff800010032e34:       d65f03c0        ret

The problem is that the paciasp instruction is not BTYPE-compatible with BR;
it expects to be called with a branch-and-link, and so we panic. I think you
need to emit a 'bti j' here prior to the paciasp.

I checked with our internal teams and they actually ran into this
recently with some other code, the patch:

  https://reviews.llvm.org/D81746

([AArch64] Fix BTI instruction emission) should fix this, it's been
reviewed so should be merged shortly.

Cheers, that's good to hear. Shall we have a guess at the clang release
that will get the fix, or just disable in-kernel BTI with clang for now?

Will


This will be in clang 11 for sure. Tom, would it be too late to get this
in to clang 10.0.1? If it is not, I can open a PR.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/B689BCBE-8398-469C-9939-B8FB5853386B%40arm.com.

--_000_B689BCBE8398469C9939B8FB5853386Barmcom_
Content-Type: text/html; charset="UTF-8"
Content-ID: <4E15B803F812FF4AA8B15D46C25EA7CC@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; line-break:=
 after-white-space;" class=3D"">
Sorry, I just saw this mail, I have opened a ticket for it already.
<div class=3D""><a href=3D"https://bugs.llvm.org/show_bug.cgi?id=3D46327" c=
lass=3D"">https://bugs.llvm.org/show_bug.cgi?id=3D46327</a></div>
<div class=3D"">I hope it will make it into the 10.0.1.&nbsp;</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Thanks,</div>
<div class=3D"">Daniel<br class=3D"">
<div><br class=3D"">
<blockquote type=3D"cite" class=3D"">
<div class=3D"">On 15 Jun 2020, at 16:31, Nathan Chancellor &lt;<a href=3D"=
mailto:natechancellor@gmail.com" class=3D"">natechancellor@gmail.com</a>&gt=
; wrote:</div>
<br class=3D"Apple-interchange-newline">
<div class=3D"">
<div class=3D"">[&#43; Tom, the clang 10 release manager]<br class=3D"">
<br class=3D"">
On Mon, Jun 15, 2020 at 01:02:23PM &#43;0100, Will Deacon wrote:<br class=
=3D"">
<blockquote type=3D"cite" class=3D"">On Mon, Jun 15, 2020 at 12:53:37PM &#4=
3;0100, Mark Brown wrote:<br class=3D"">
<blockquote type=3D"cite" class=3D"">On Mon, Jun 15, 2020 at 11:55:24AM &#4=
3;0100, Will Deacon wrote:<br class=3D"">
<br class=3D"">
<blockquote type=3D"cite" class=3D"">Here, the switch statement has been re=
placed by a jump table which we *tail<br class=3D"">
call* into. The register dump shows we're going to 0xffffd68929392e14:<br c=
lass=3D"">
</blockquote>
<br class=3D"">
<blockquote type=3D"cite" class=3D"">ffff800010032e14: &nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;d503233f &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;paciasp<=
br class=3D"">
ffff800010032e18: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a9bf7bfd &nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;stp &nbsp;&nbsp;&nbsp;&nbsp;x29, x30, [sp, #-=
16]!<br class=3D"">
ffff800010032e1c: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;910003fd &nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mov &nbsp;&nbsp;&nbsp;&nbsp;x29, sp<br class=
=3D"">
ffff800010032e20: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;aa0803e0 &nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mov &nbsp;&nbsp;&nbsp;&nbsp;x0, x8<br class=
=3D"">
ffff800010032e24: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;940017c0 &nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bl &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ffff80001003=
8d24 &lt;kvm_vm_ioctl_check_extension&gt;<br class=3D"">
ffff800010032e28: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;93407c00 &nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sxtw &nbsp;&nbsp;&nbsp;x0, w0<br class=3D"">
ffff800010032e2c: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a8c17bfd &nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ldp &nbsp;&nbsp;&nbsp;&nbsp;x29, x30, [sp], #=
16<br class=3D"">
ffff800010032e30: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d50323bf &nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;autiasp<br class=3D"">
ffff800010032e34: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d65f03c0 &nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ret<br class=3D"">
</blockquote>
<br class=3D"">
<blockquote type=3D"cite" class=3D"">The problem is that the paciasp instru=
ction is not BTYPE-compatible with BR;<br class=3D"">
it expects to be called with a branch-and-link, and so we panic. I think yo=
u<br class=3D"">
need to emit a 'bti j' here prior to the paciasp.<br class=3D"">
</blockquote>
<br class=3D"">
I checked with our internal teams and they actually ran into this<br class=
=3D"">
recently with some other code, the patch:<br class=3D"">
<br class=3D"">
&nbsp;&nbsp;<a href=3D"https://reviews.llvm.org/D81746" class=3D"">https://=
reviews.llvm.org/D81746</a><br class=3D"">
<br class=3D"">
([AArch64] Fix BTI instruction emission) should fix this, it's been<br clas=
s=3D"">
reviewed so should be merged shortly.<br class=3D"">
</blockquote>
<br class=3D"">
Cheers, that's good to hear. Shall we have a guess at the clang release<br =
class=3D"">
that will get the fix, or just disable in-kernel BTI with clang for now?<br=
 class=3D"">
<br class=3D"">
Will<br class=3D"">
<br class=3D"">
</blockquote>
<br class=3D"">
This will be in clang 11 for sure. Tom, would it be too late to get this<br=
 class=3D"">
in to clang 10.0.1? If it is not, I can open a PR.<br class=3D"">
<br class=3D"">
Cheers,<br class=3D"">
Nathan<br class=3D"">
</div>
</div>
</blockquote>
</div>
<br class=3D"">
</div>
</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/B689BCBE-8398-469C-9939-B8FB5853386B%40arm.com=
?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/=
clang-built-linux/B689BCBE-8398-469C-9939-B8FB5853386B%40arm.com</a>.<br />

--_000_B689BCBE8398469C9939B8FB5853386Barmcom_--
