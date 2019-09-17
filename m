Return-Path: <clang-built-linux+bncBAABBJF6QPWAKGQEMSGFSQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id D7438B4F20
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 15:27:00 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id y66sf2163163ede.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 06:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S0Q628jU4JNfDFYlGt2rsILDYhFqOmI0F4Y4oJcMC7I=;
        b=Lo1lsodsOZYLBkOzjjNpfAziLY/XKCmInSDjsDgRBwCLZgRdurL8j2Me6fL7MpLqpM
         uYJYr6vgEkCscY0SE4LYVeWO0da517f/sJ0LpmHebOH/TWkUQp+K0p2g+xDvROPfJJwW
         LY4wQ6z1oSeyb4ilZ8qQW6HoIeLiutx+UyDHcMvNKFiZtGiS/e+cxBfQqaig+NN6HjcU
         2XpNAX34svSNUbLk0LEst1f9MLAClvQdbPaNuihNlCoD17aJm06fV33aYG4ZewaZVaiy
         Tv93a6PzcTqjstSdjZk31KZtBXJywbRGaNB+ZVSVErN2KDz0Mx4dnJxdUiW8uFxHdAWx
         j14g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S0Q628jU4JNfDFYlGt2rsILDYhFqOmI0F4Y4oJcMC7I=;
        b=OgOa0agadkL+XVBouvGfJCeHoe/Drn+n8nQ/pfXIHq0AJIgR8L8B8Y6KEmBaNP0bsS
         bxJgjTi/NeWxGoL63olQ57CQC2UPFWyHV3kagH7kgyj/xe6e8mSDIxzD+zRJ9YsHz3tl
         K+BlxjoqpRAFWMlbanvZkeJZsI1OWfKQRkLO7jGux1hVFBrJWActLKhEPKjAv4r+y+/S
         fcxW+OCzsAc8FPk/7YXcbxbz6e7w2AV4bdiVSpJ/p1ZvmyqfidWajO288ef5yS2ZVqBc
         /xmy5KS4EkwcQiyDVbOvGLGRc6xdmccXUzZq2KOFW4QNJZSTsCFziM6S308xmlgI8d5N
         JSKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVE35l0X2geWpDuq2TMHnYuALBX9rqlC2U1YgJS/qSWNeYV7ySs
	r/bIQxL4D9g+pBelGXNTpnc=
X-Google-Smtp-Source: APXvYqwxuNzmGBUYIZ2nGAbPRtDeaztx1yw2RoV1x+JyO+OsnwUyvNUiHPfyRhcsJmufs6N0dhPfrQ==
X-Received: by 2002:a17:906:4e8f:: with SMTP id v15mr4928572eju.57.1568726820549;
        Tue, 17 Sep 2019 06:27:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:dd81:: with SMTP id g1ls834416edv.15.gmail; Tue, 17 Sep
 2019 06:27:00 -0700 (PDT)
X-Received: by 2002:a05:6402:78b:: with SMTP id d11mr2624924edy.14.1568726820175;
        Tue, 17 Sep 2019 06:27:00 -0700 (PDT)
Received: from smtprelay-out1.synopsys.com (smtprelay-out1.synopsys.com. [198.182.61.142])
        by gmr-mx.google.com with ESMTPS id d14si159038edb.4.2019.09.17.06.26.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Sep 2019 06:26:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of jose.abreu@synopsys.com designates 198.182.61.142 as permitted sender) client-ip=198.182.61.142;
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com [10.192.0.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A3AE6C0184;
	Tue, 17 Sep 2019 13:26:57 +0000 (UTC)
Received: from US01WEHTC3.internal.synopsys.com (us01wehtc3.internal.synopsys.com [10.15.84.232])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mailhost.synopsys.com (Postfix) with ESMTPS id E92C7A005A;
	Tue, 17 Sep 2019 13:26:56 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 17 Sep 2019 06:26:52 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 17 Sep 2019 06:26:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HDzWE63QjBQJ4SUJKZ0fiPyIKQEKhKXa+orvIthyIc8W3DPgL4mYXSyX8m6k3+5ll5GSReByYp0qxZSR2y5yVdlQspZMJNKqy2KEl4CYNUhFp0Z296iJT+txa1SMt0nzrPz/X7hVS+Wu683Svae3HJfpvAk0HUV5aFACxHGXwnRKJdTIW17qld4HIfciQIJ2qMw7vOJaLaVySGw2oM6bQzEaJQJrDlzCtOqkCR5q+y3EMFo5r73uHmWvQ1MRIqvS3XWocUnFQYbeXIsc300jvqrEFjlSXZODtSb8Byv0JNZZxJlZHY71JzKm33Qbc4P98VVjBJe7133h7vk2XhXeXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=142bFDJdGWNOQy3klkp1LB+voOi/6BU903BHlZdq45A=;
 b=a2xU58egGeH7bT1PJiltzGsy/UQyyAylF5jUZpKXMoy5YuVJJJYncl+wZgnPMXkhNeuKVUx8Pxpw46xUxQB+U8szP5uLzfoRnSS/oq1xW9N8NkjTeaERPcmETrIYJVXIHwE1X5BRFiSJUy4zBrzkWROOqUPjhL3qSBkZZa4NTJ+ZT6Ybx1ghSgEAZh81PBTdYy7nTEXpSAArWvYQ+kGmCZ8zY+tEZcbDWnZ9Q5BXxbY5sg+axgFHmfVvRWi+46F8efnGHbqY6aEuQB0P665HvzQt2m503hLycsEL/Qd9sNaLKX5nMGxN5qyVvtle4Rvf0E3TEeNEJOfeqTiQmBBXUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB2866.namprd12.prod.outlook.com (20.179.66.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.15; Tue, 17 Sep 2019 13:26:50 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::59fc:d942:487d:15b8]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::59fc:d942:487d:15b8%7]) with mapi id 15.20.2263.023; Tue, 17 Sep 2019
 13:26:50 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: David Laight <David.Laight@ACULAB.COM>,
	'Jose Abreu' <Jose.Abreu@synopsys.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Tom Lendacky <thomas.lendacky@amd.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@st.com>,
	"David  S. Miller" <davem@davemloft.net>
CC: Nick Desaulniers <ndesaulniers@google.com>, Ilie Halip
	<ilie.halip@gmail.com>, David Bolvansky <david.bolvansky@gmail.com>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: -Wsizeof-array-div warnings in ethernet drivers
Thread-Topic: -Wsizeof-array-div warnings in ethernet drivers
Thread-Index: AQHVbSoo2sCm+b6KbUmq34Z8Q4HTw6cvgEiggAAsi+CAAC4H0A==
Date: Tue, 17 Sep 2019 13:26:50 +0000
Message-ID: <BN8PR12MB32662378E844E6ECBA3FE8D7D38F0@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <20190917073232.GA14291@archlinux-threadripper>
 <BN8PR12MB3266AFAFF3FAAA9C10FB1C1FD38F0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <510d777024554eab846ef93d05998b63@AcuMS.aculab.com>
In-Reply-To: <510d777024554eab846ef93d05998b63@AcuMS.aculab.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 127b7785-a6f3-4a39-6adb-08d73b72b2b4
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);SRVR:BN8PR12MB2866;
x-ms-traffictypediagnostic: BN8PR12MB2866:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR12MB28664D6C18B11BFD81EA8862D38F0@BN8PR12MB2866.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(346002)(396003)(376002)(39860400002)(366004)(136003)(53754006)(199004)(189003)(4326008)(76116006)(74316002)(6246003)(5660300002)(102836004)(14444005)(71200400001)(8936002)(6116002)(71190400001)(25786009)(256004)(7736002)(66066001)(316002)(6506007)(99286004)(305945005)(3846002)(26005)(186003)(54906003)(110136005)(55016002)(486006)(2906002)(7696005)(66946007)(52536014)(66476007)(66556008)(64756008)(6436002)(476003)(14454004)(33656002)(9686003)(66446008)(478600001)(81166006)(86362001)(229853002)(446003)(8676002)(7416002)(76176011)(81156014)(11346002);DIR:OUT;SFP:1102;SCL:1;SRVR:BN8PR12MB2866;H:BN8PR12MB3266.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UcdkuzizdeQ+kwVXRB4KMXM+eumhSSLHXEdj9H82UTUiuYfT1jDkgauF/UQF7Qj0nvPWb0NizWyxiSZEwJa5/MFC3p41zgJAp9mYLV3NnV1yNvg4hUt36lBlc1gKgsIEm3kM/dUe7/bF5NRu0eB1YMG8oBPT5FLlucnriDa76xhJxY9gxhj2wOHJ3CARXMrgrA/BZ5dk56Uv3cd45l5/9iP6UfFxl7DxEMj0XD58P3OBIP1c701gz5YZs3L3WNn8z75SZRxmqyRPaCWb1THvY2qG2iLTAoZveGDOC/YbRW8vfAWqFzXAR/7ewX0XKhP5XVff17JB5pxB8hm6LbUrV8PjDcMJoIULXDUeKbpI1Lc8wH9FYFMB7+6ijK4fGGmjdLmScy0sCx0zgWc59Fwhs/cVHzjIH2Cmrjc6AYXAvNc=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 127b7785-a6f3-4a39-6adb-08d73b72b2b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 13:26:50.4974
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E5RrQKBg7ZKPWhMqwr5NoHGIyaFHniwmxNmRd8VcTAUef2AfuTNgA4Jn+TVdj8E1+KWEjM7EHdcrzRc3+38wzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB2866
X-OriginatorOrg: synopsys.com
X-Original-Sender: jose.abreu@synopsys.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@synopsys.com header.s=mail header.b=HUY9s4Nu;       dkim=fail
 header.i=@synopsys.onmicrosoft.com header.s=selector2-synopsys-onmicrosoft-com
 header.b=IMipaQwU;       arc=fail (signature failed);       spf=pass
 (google.com: domain of jose.abreu@synopsys.com designates 198.182.61.142 as
 permitted sender) smtp.mailfrom=Jose.Abreu@synopsys.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=synopsys.com
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

From: David Laight <David.Laight@ACULAB.COM>
Date: Sep/17/2019, 11:36:21 (UTC+00:00)

> From: Jose Abreu
> > Sent: 17 September 2019 08:59
> > From: Nathan Chancellor <natechancellor@gmail.com>
> > Date: Sep/17/2019, 08:32:32 (UTC+00:00)
> > 
> > > Hi all,
> > >
> > > Clang recently added a new diagnostic in r371605, -Wsizeof-array-div,
> > > that tries to warn when sizeof(X) / sizeof(Y) does not compute the
> > > number of elements in an array X (i.e., sizeof(Y) is wrong). See that
> > > commit for more details:
> ...
> > > ../drivers/net/ethernet/amd/xgbe/xgbe-dev.c:361:49: warning: expression
> > > does not compute the number of elements in this array; element type is
> > > 'u8' (aka 'unsigned char'), not 'u32' (aka 'unsigned int')
> > > [-Wsizeof-array-div]
> > >         unsigned int key_regs = sizeof(pdata->rss_key) / sizeof(u32);
> > >                                        ~~~~~~~~~~~~~~  ^
> ...
> > > What is the reasoning behind having the key being an array of u8s but
> > > seemlingly converting it into an array of u32s? It's not immediately
> > > apparent from reading over the code but I am not familiar with it so I
> > > might be making a mistake. I assume this is intentional? If so, the
> > > warning can be silenced and we'll send patches to do so but we want to
> > > make sure we aren't actually papering over a mistake.
> > 
> > This is because we write 32 bits at a time to the reg but internally the
> > driver uses 8 bits to store the array. If you look at
> > dwxgmac2_rss_configure() you'll see that cfg->key is casted to u32 which
> > is the value we use in HW writes. Then the for loop just does the math
> > to check how many u32's has to write.
> 
> That stinks of a possible misaligned data access.....

It's possible to happen only if structure field is not aligned. I guess 
I can either change all to u32 or just __align the field of the struct 
...

---
Thanks,
Jose Miguel Abreu

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/BN8PR12MB32662378E844E6ECBA3FE8D7D38F0%40BN8PR12MB3266.namprd12.prod.outlook.com.
