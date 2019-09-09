Return-Path: <clang-built-linux+bncBDZ4ZY6STAFBBRNT3LVQKGQEJJQHPEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id E029BADEF7
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Sep 2019 20:28:23 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id b204sf11132862pfb.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Sep 2019 11:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:thread-topic:from:to:cc:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AyQJssYLC6fA1MgtoQHHppxd/gCzcbrdeNMV6iMd2g4=;
        b=cjWJLZPbIh3mldJPUaZ2K5wE3pvjFPzUZhkiD6haVOREwypDcVR24JxOT/i72L7Pum
         DPqp+qkLqTiZbOM9i5y8zZFIawzgVwp4837r6xRZKNVY+qBe5NM02A9ekf8PWkgvyeth
         WaH3BQZFXjZdhMgmxURqJNnK/5k+B1SVOtNToBHanJGrN0/v9OI9vjS7BSceJlIVWao5
         J12AJ4iJrRI/D5AvKMnaVlxlJpjkGiOuqCJX3DPE1dYnn6WoGxCH+E34SlfZk8+GsvNI
         djstSdKwELfqXGNmmu7gU/rLrhVhbr7F8dvypip6QMIAZdRBH9wjkoKrHJQKUEtV+L86
         14sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:thread-topic:from:to:cc
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AyQJssYLC6fA1MgtoQHHppxd/gCzcbrdeNMV6iMd2g4=;
        b=segg4qkkI2+u29Lt1pZJ3NNZd4S6CHN8PbAY7k5cgGCvF3PgvhqpY8jR/0XvnpZnvW
         8zcq1z55ebdachqzc9XmpxRo02qW4tgCVTkRB1+GcbWfkUKY2GA4NGfkecOHrvngY+DX
         W4DqWLLtgCKlCqHsWbK2DIUPT8Yc+i2mylFIOvFmRpRgfjgNE4RTHwRpRoXAk7T1g1nH
         tlJGK61iXaIKkrFyMHruHTXP0kSlyjRqew/ky3GbIaUf948w9znAsOmQBqC1sDJIC9GG
         /ohi21ZnlZcpFfdOxGUY6jGTh8uJdb0/wqIEbfZ7pEJQdoWMSe69dYVPbiAlr7RhnSvm
         qSJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWTIxO23sjADJtscs7ixOMJJi2N315ahG11cxRpOrkfw2PIReoh
	gUF3Y1iAHxPQjOtPlx8eM/0=
X-Google-Smtp-Source: APXvYqzzWJXH/FvD4M3O0dopqltFyxk1S/QXsTUSJ6IZIguo1anfDGbtbN4Oi7+8kQ88/2/8V5L8fg==
X-Received: by 2002:a17:902:8507:: with SMTP id bj7mr26127441plb.210.1568053701869;
        Mon, 09 Sep 2019 11:28:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:47ca:: with SMTP id f10ls3013873pgs.13.gmail; Mon, 09
 Sep 2019 11:28:21 -0700 (PDT)
X-Received: by 2002:aa7:8592:: with SMTP id w18mr29926622pfn.237.1568053701472;
        Mon, 09 Sep 2019 11:28:21 -0700 (PDT)
Received: from alexa-out-sd-02.qualcomm.com (alexa-out-sd-02.qualcomm.com. [199.106.114.39])
        by gmr-mx.google.com with ESMTPS id q2si670657pgq.3.2019.09.09.11.28.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Sep 2019 11:28:21 -0700 (PDT)
Received-SPF: fail (google.com: domain of efriedma@quicinc.com does not designate 199.106.114.39 as permitted sender) client-ip=199.106.114.39;
Subject: RE: [Bug 43121] ARM: invalid IT block in thumb2 mode
Thread-Topic: [Bug 43121] ARM: invalid IT block in thumb2 mode
Received: from unknown (HELO ironmsg01-sd.qualcomm.com) ([10.53.140.141])
  by alexa-out-sd-02.qualcomm.com with ESMTP; 09 Sep 2019 11:28:20 -0700
Received: from nasanexm01d.na.qualcomm.com ([10.85.0.84])
  by ironmsg01-sd.qualcomm.com with ESMTP/TLS/AES256-SHA; 09 Sep 2019 11:28:20 -0700
Received: from APSANEXR01B.ap.qualcomm.com (10.85.0.37) by
 NASANEXM01D.na.qualcomm.com (10.85.0.84) with Microsoft SMTP Server (TLS) id
 15.0.1473.3; Mon, 9 Sep 2019 11:28:20 -0700
Received: from nasanexm01a.na.qualcomm.com (10.85.0.81) by
 APSANEXR01B.ap.qualcomm.com (10.85.0.37) with Microsoft SMTP Server (TLS) id
 15.0.1473.3; Mon, 9 Sep 2019 11:28:17 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (199.106.107.6)
 by nasanexm01a.na.qualcomm.com (10.85.0.81) with Microsoft SMTP Server (TLS)
 id 15.0.1473.3 via Frontend Transport; Mon, 9 Sep 2019 11:28:17 -0700
Received: from MWHPR02MB2479.namprd02.prod.outlook.com (10.168.202.19) by
 MWHPR02MB3198.namprd02.prod.outlook.com (10.164.133.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Mon, 9 Sep 2019 18:28:16 +0000
Received: from MWHPR02MB2479.namprd02.prod.outlook.com
 ([fe80::91d6:633a:b2b6:7363]) by MWHPR02MB2479.namprd02.prod.outlook.com
 ([fe80::91d6:633a:b2b6:7363%9]) with mapi id 15.20.2241.018; Mon, 9 Sep 2019
 18:28:15 +0000
From: Eli Friedman <efriedma@quicinc.com>
To: Hans Wennborg <hwennborg@google.com>, Nick Desaulniers
	<ndesaulniers@google.com>
CC: Stephen Hines <srhines@google.com>, clang-built-linux
	<clang-built-linux@googlegroups.com>
Thread-Index: AQHVZCWucpPfKJsiv0yeyP2sIU7tAacdhi/ggAAERwCAAMIqAIAAlQUAgAAL8ACAAHykAIADqtGAgACbPxA=
Date: Mon, 9 Sep 2019 18:28:15 +0000
Message-ID: <MWHPR02MB24795C9B325EC9DFFEB4B659CAB70@MWHPR02MB2479.namprd02.prod.outlook.com>
References: <bug-43121-8919@http.bugs.llvm.org/>
 <bug-43121-8919-cA4BWUkQgt@http.bugs.llvm.org/>
 <CAKwvOdmAakhyifHBQunZxjegSUkBbuoDdcbVbsfTpH9HHUsvAA@mail.gmail.com>
 <MWHPR02MB24795CAA0744539FC6DFB513CABB0@MWHPR02MB2479.namprd02.prod.outlook.com>
 <CAKwvOdm8GPyqxPyWfdsBydDTm6cHZUrPuN0e5HgJMQvOe1+ziw@mail.gmail.com>
 <CAB8jPhf_Lj4N8YN1tRpM2NMR0k+uvaN6N=cp4Z7RSEG_CaabPA@mail.gmail.com>
 <CAKwvOd=4hWG1MhPSou2jfAGLpCEEh=tQ+sJNnmiz5=VakGWr8g@mail.gmail.com>
 <CAB8jPhfZUgVKq2=nMjqgFVA6_2wT2bsNbd2XPn5UYomtU_iaJA@mail.gmail.com>
 <CAKwvOd=vmQL6pJVCGkxee3LQUEPOyeGG1AH+syya-FF4gGtpaA@mail.gmail.com>
 <CAB8jPheC1sb2t9tiGyr0FOJRSCS9Vo60LBpSM5Szu5rR_CaRdQ@mail.gmail.com>
In-Reply-To: <CAB8jPheC1sb2t9tiGyr0FOJRSCS9Vo60LBpSM5Szu5rR_CaRdQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.106.103.53]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 738b4952-9b00-408f-bb97-08d735537b14
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:MWHPR02MB3198;
x-ms-traffictypediagnostic: MWHPR02MB3198:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <MWHPR02MB3198AA53B9185FC87A8CE497CAB70@MWHPR02MB3198.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01559F388D
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(136003)(346002)(366004)(376002)(396003)(39860400002)(199004)(189003)(7736002)(86362001)(26005)(52536014)(2906002)(66946007)(4744005)(76116006)(4326008)(66066001)(33656002)(256004)(6246003)(53936002)(9686003)(55016002)(71200400001)(71190400001)(6116002)(6306002)(3846002)(446003)(102836004)(6506007)(76176011)(486006)(229853002)(966005)(8676002)(25786009)(305945005)(66556008)(5660300002)(8936002)(64756008)(11346002)(7696005)(81166006)(81156014)(14454004)(66446008)(66476007)(316002)(74316002)(99286004)(54906003)(476003)(478600001)(6436002)(110136005)(186003);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR02MB3198;H:MWHPR02MB2479.namprd02.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: deBHWQEAHNO645JHsppqUxmayPn79a6XnJe6tZbvuonY/qzWYJKVFxk04/dpZ7b8ISSLrEZai2pUZeuCe2axZJ6mA8KvtVRY1BdJnxBLSsv7iYc8HHYSuDqMgrwAxrmDov+OG6u4EtY4z1k8GY35cANZzK7KHBvnhrEZMacrTCxxiRDEk5lqntEdePp8+H2BgqF5c9umTYgbCkxrWe4czZr18esHE9GU3FbBcqWi2T82x435RT1aEH4rXqg6GUVgLof6ATdN0r2Pc2pbVjN64VC1ypyRyN9IL2tjqfzXb8ZAYkz60iEC3Z+uijXhANQV8B0WOi9AuNt8o6e5iPzPADxi0tH43Iwy3EU2Zyxkm63TK5OJyd9E6B1b4G7mlN+46q9jk3Pv64B1ejUSGvgSZ+HUqduexw3HnneUI7EIIzo=
x-ms-exchange-transport-forked: True
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FDGPaI1fiN8GD30B2MV8ygjGeuX9iuUJoJQ/hL7KYqyMhZKM/dMqgKekiXX4iCJOl6j6rllCG/23uXb4BMjLDV6iwqw7Tzu0BFRpn+kkKq0OAyG3zBTZmwLyhGkPKpMrzoa9RfSt2++R2IuGSgrH3ZYIHPhjSlDL9oybwyRYWzwHGyvNyCZvIIUHUjUA3FWtJ6JRct7yGsmYLyvSa6ggu77/a2HcbGGQnozaithomgG7TsuUsl5Xdsg/mQ/i+AtxZcPcKEiJ5BzCpDmqJk0zrST54rOElmA92/N1xvkcSXK14W9x3tMdmTQMKx/6XMfYPpEuCMU/ocg4eQz4VSzBgw==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2EykqNyjzw52x/a/AQXnt0deBWxkPghzCff1K23GH78=;
 b=A8fomuq+tnaKi7d1iGTGXJAyHybhxO5+sJNNTFhMe13GGH2Yl2nouSkQ0lweaXzFH+V4FOVe91BRIe6XrJZ1iv8yJvyo86kbcKgDynTnCyr274dMhwTJC9RXK5jwtatprQnMR7Gqg2lq7xOgthEORX7XMT/ToTERXStFEU5XqT+zuJBKZCtjdnfUtb6xV8KWMMfvdwY3LyXPNpA0AD05Mu2JVcUBZ3/cuPfjtnFHE3mh/BB50J733Sqxs95QHulKsb2WWNos6liG8WaA698ug4fICpX5vqL5ffI83gJoZHKdZUzIIAKIpSx+kLpi1j8/sppYHPztmHpV6BJSqZim4A==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=quicinc.com; dmarc=pass action=none header.from=quicinc.com;
 dkim=pass header.d=quicinc.com; arc=none
x-ms-exchange-crosstenant-network-message-id: 738b4952-9b00-408f-bb97-08d735537b14
x-ms-exchange-crosstenant-originalarrivaltime: 09 Sep 2019 18:28:15.9418 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: 98e9ba89-e1a1-4e38-9007-8bdabc25de1d
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: Ca0JvBMOqgYpe1lVOSs9FQ0DcAtwt/FoC+4E9Q018VbtirpxJJ46tK60sUt+jSko5M24LAMcDcibbb6jRzqZdQ==
x-ms-exchange-transport-crosstenantheadersstamped: MWHPR02MB3198
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: quicinc.com
X-Original-Sender: efriedma@quicinc.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@quicinc.com header.s=qcdkim header.b=o7TU7puj;       dkim=neutral
 (body hash did not verify) header.i=@qualcomm.onmicrosoft.com
 header.s=selector2-qualcomm-onmicrosoft-com header.b=BmMWj2wQ;       arc=fail
 (body hash mismatch);       spf=fail (google.com: domain of
 efriedma@quicinc.com does not designate 199.106.114.39 as permitted sender)
 smtp.mailfrom=efriedma@quicinc.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=quicinc.com
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

> > Cool, just landed my fix, and Eli put up another patch that fixes the
> > arm32 issue for me (big thanks Eli).  So having:
> > - https://reviews.llvm.org/D67306
> > - https://reviews.llvm.org/rG7a7bba289521e6d4da199565cf72dc9eaed3d671
> >
> > in clang-9 and then that's zero bugs related to asm goto that I'm aware of.
>
> Thanks!
>
> I've merged these ones:
>
> - r371111 for PR43121 (and other PRs)
> - r369705+r369713 for PR43243
> - D67252 / r371262 for PR43222
>
> and waiting for D67306 to land (it would be great if that could happen
> today so we can get rc4 out).

r371434

-Eli

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/MWHPR02MB24795C9B325EC9DFFEB4B659CAB70%40MWHPR02MB2479.namprd02.prod.outlook.com.
