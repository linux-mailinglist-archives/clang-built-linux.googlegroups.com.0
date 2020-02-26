Return-Path: <clang-built-linux+bncBAABBXOA27ZAKGQEDNYD4UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id B982D16F5E9
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 04:05:02 +0100 (CET)
Received: by mail-vs1-xe37.google.com with SMTP id s23sf608318vsl.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 19:05:02 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1582686301; cv=pass;
        d=google.com; s=arc-20160816;
        b=soVxYzRaSQTF3vQ68Fq/GVfL3caw3rcO/jyWvewdn4urwagcu4UMTvZlyRZjHNf558
         5XI49R5w1nMQIppjsAswAStVznmyJu19KdrSLQLj9WxC1TYaV1GTzFkODfCLihr8zzRP
         YGRndNpy6G0Vgm4oI8g2v08hA0rKDjTlswC/Yk/YEFTYrzmDRdATsogXGUy+SvmSqwFg
         fxDaa+nF4j9X/mTxTJGVsL1fOfwF0LIc1+oLliGZ3ReE7ladKH191GUnrWQVRcJUvV05
         CaZnVH2Hl7lTimRDaZ1uYR10nnMem2DySNyrhASOrqpndrKXXzBwieCoEapf9RtBSkJq
         q1Zw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :from:sender:dkim-signature;
        bh=77UTewmR38v1a0+uk/MGyDYH49h4aTZwvG7rETHJJZI=;
        b=PPBFw46ZeylDXF/qOR7AP6OuVZq2dfd231pmd/Kfftpn21iUfEqfv6HZ4j4J0PcF35
         6aOmr+rhJUeKPUDcDvTiVBFsi+5yvJHiEd0gEbLSoX2PURxizhibALv3HF3fdH7iGKac
         kd9+ctguVYzOUuitFJF5+jpCwZCUr1IASxCZooxuaEh7uHs+whFtU32wUVEDRMUaCfTk
         d3Tku7zitTu81Cb8M/x8JMwjF2JIYlBlvx6F0bJYT7iVfJkTXzFjnWQKgBgXam5QuheD
         ertkfauZBtgEnYIDHIUft6kA1TpTOyRwartdx00SAM0JMq5xBbPj6THfa7zxfao8XTzn
         8G7g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@msn.com header.s=selector1 header.b=LGXkACe3;
       arc=pass (i=1);
       spf=pass (google.com: domain of stevehill606@msn.com designates 2a01:111:f400:fe4e::815 as permitted sender) smtp.mailfrom=stevehill606@msn.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=msn.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=77UTewmR38v1a0+uk/MGyDYH49h4aTZwvG7rETHJJZI=;
        b=hmwvv3gbeFLIc1VSM06rAk625byNkYeh97+QJVKcz0CY4efS2Yo6kLQkZD1GUa/1pj
         HnDpBYM/5dOGyh4Vvxb6ubHjV5CzbNKKAqK5DlTbice2N2R9g52Bn/Wkvr8RpHk2Id7c
         Pyn+WwOyVRCGoy1KbQY5KUH1+vuNeO0OSXrTY6mgTklIA3DiPPWDXtT6bfIlN9Joxu8l
         3//eKurtnp0w9ZLdhy7Nf1LrCOpaqlioA4ndYln2dAd+Z4OjH5b5dkfTM3tgStCkLJFz
         gOt/YNbvvlrWrmXahT7VzDFbEqaZtbVhBY3acn7YGSXFcNX2plCdqaotym/7/ns6iMYt
         CEdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:thread-topic:thread-index
         :date:message-id:accept-language:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=77UTewmR38v1a0+uk/MGyDYH49h4aTZwvG7rETHJJZI=;
        b=PgCwVn1Jiz0PpRKTsWJtoJFyuplLAc1wnSaT/Jg3YNBANef1rm58ltNhkD33e+LKHc
         Lcl+/qHehenOOBUbgSw/fgEiCdL0k081dkWVmH6/urJ2+iS0yF2gxJT2w62OQcd0wM1d
         fzooddRSH6Ue87LuhM5wJFHiEXeaeToNVauTrMrDGyZtvZFgQf9lqISRbE9kfihhQsJ5
         ypvVgNY7Zh+lhbKhLpoLPuF2KApcLJWY7OI3vV83H/WNVj0+NUa5D87+hIwjnVtyzJBB
         V5gBwmd7cNCqodICTeY4/TC2rjbRNp8nLm8z10RysqUNDP9PWOBDn2gQqIZbjnZlJlzp
         RbRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVZteXqm26PXhHBMLGxvT5nUWJI7uDyHfZa/RcTtk9gePIo4cLY
	O/nRltPPEf3ZQPTXRjH7RjU=
X-Google-Smtp-Source: APXvYqyTXrzGXFuAB+62PsCpSQFBSMOgwYQP9NNhhrks47WV40hT3bNliU2Va4FgyJsg1sAUMVhgmA==
X-Received: by 2002:a1f:4354:: with SMTP id q81mr2248976vka.31.1582686301801;
        Tue, 25 Feb 2020 19:05:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:27c5:: with SMTP id n188ls211084vsn.8.gmail; Tue, 25 Feb
 2020 19:05:01 -0800 (PST)
X-Received: by 2002:a05:6102:107:: with SMTP id z7mr2616397vsq.4.1582686301480;
        Tue, 25 Feb 2020 19:05:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582686301; cv=pass;
        d=google.com; s=arc-20160816;
        b=dfYzgpg/xiplZghQQJ0yRRLG7cf+3c7nIyusRu6iipRRzF7DxhI8TE+LLvSMX3QjBY
         ZCwPs7CvPa7Y2cLU4xlpTlYOQbtOEnITLpTror+JHFOYjXYDZWCiWjOqXmzM67BtokyX
         +3hybtsvavHhBKKil/cg+HNwbRDLUTKX7tS03JGsxrvVOI+rwjfgWfYfnUmpEgnhN7JC
         An088hiOX8MFZ9Smw4q7k1BnpaTsAtXC1zDPmhNASVsYgcEgfWAb4Jy5MdBk1qsJ6Dp7
         wdmOtU0uOPUAIqp6xwbF94Eo405V45xsXHOhyzhhRak94BoU8LoEYdXOmQvsLtC38tgy
         Pwew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:message-id:date
         :thread-index:thread-topic:subject:from:dkim-signature;
        bh=kf17Fic2EdKIW8SdU6I/kUfO2qgEfBBBmnOeaFEpSKs=;
        b=KuwRtmskk901Wy2ePKXnLfMAlq9GQLd0LvMfGpv/xfpNSDOmRddtaGT0cNuw7siHmR
         CLOsXpy2nm4YxqQYoiuJAW6uxrjrXAyIbqEnG8JWChmHMSqTB1e3yPFzc4bJO+j/0NBK
         pEVNjvl986qzNZFWOmpxW5Bu7HMJMeMYGJ91g9Z8sq3OHrjcbRDtQ2uiCC+q9q2iuBVH
         KXgvc2VpMqR8/mgCgD2qB91jJg4DK5ZumWlCuUmzT85KuyfamaWuurbyLCOBOvJRuk6F
         XNk8m++7W5+nN7jOurcJbQZW0gWElTm/vQ1cxvPMNa4M9oSef1KtYDENF8XnOA7B1OF2
         utAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@msn.com header.s=selector1 header.b=LGXkACe3;
       arc=pass (i=1);
       spf=pass (google.com: domain of stevehill606@msn.com designates 2a01:111:f400:fe4e::815 as permitted sender) smtp.mailfrom=stevehill606@msn.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=msn.com
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (mail-bn3nam04olkn0815.outbound.protection.outlook.com. [2a01:111:f400:fe4e::815])
        by gmr-mx.google.com with ESMTPS id s5si91856vka.2.2020.02.25.19.05.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 Feb 2020 19:05:01 -0800 (PST)
Received-SPF: pass (google.com: domain of stevehill606@msn.com designates 2a01:111:f400:fe4e::815 as permitted sender) client-ip=2a01:111:f400:fe4e::815;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kMS4H2ozT/uwcnY/T5R25bfXQz7/MnwjcvnL969LgReUo5vWjw0NGb/klpVSI0K7Cp87BYYudGd+5TMJQg3/KvqLVIwJCaezLOPGOU7PWimD/Wku9+NPA4zl7A+lbzOwqBQ/cpoLkniWzKCebSUsJH2Xb/z8N+KMH5qLlNzbD9YMTk2ETfgDzfeZNSOdhUIv4PT2Ftgh5XgaQI2T1726tRzo8E5+DTPIMvShjUWv40UQJcX6rpk/0sMF3B2y1QqDMcYgRu4JbUdMtKINEOd/ArdXU2JKiuuUBxcxwd7GRxIiQ5aGALKttDlb9Iyqn5j97lvKK87GXlGTGVAp76chkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kf17Fic2EdKIW8SdU6I/kUfO2qgEfBBBmnOeaFEpSKs=;
 b=nXLaWp/2/wH7oTvoCMAg9FetoSGpobwc3I3Ej7gSsMpQ+q7rb7EET5vCpjxqc3rZh/uiWDIrzlHC8YV9ygy9OtQz7LB22WA6qrBLdPIy84OSFh9EY9Bg/dz0e3Y82viN4hnIUWgWWsP/v3BXhnhhJIjs0YVz7wJutvCocAF4zIPq7u/k+oNCFulsXeoocvZe/PVgRnwsIsXLQD7G8Q/p4eOpXEs+JU0rUDxL0NFa66DsPBYCVpcVy9gX2DvGrQGFh7/mzKmmwlBMhzL1l+DyE3g4a/4OFjzWi6KHaNE40ezmx91aq2cMWPB8/lwVQAapj/FUh5BIUsSRcG0fNvSoFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BN3NAM04FT021.eop-NAM04.prod.protection.outlook.com
 (10.152.92.53) by BN3NAM04HT203.eop-NAM04.prod.protection.outlook.com
 (10.152.93.93) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Wed, 26 Feb
 2020 03:04:56 +0000
Received: from SN6PR06MB4352.namprd06.prod.outlook.com
 (2a01:111:e400:7e4e::3c) by BN3NAM04FT021.mail.protection.outlook.com
 (2a01:111:e400:7e4e::150) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14 via Frontend
 Transport; Wed, 26 Feb 2020 03:04:56 +0000
Received: from SN6PR06MB4352.namprd06.prod.outlook.com
 ([fe80::d43d:a102:3ee5:45a]) by SN6PR06MB4352.namprd06.prod.outlook.com
 ([fe80::d43d:a102:3ee5:45a%7]) with mapi id 15.20.2750.021; Wed, 26 Feb 2020
 03:04:56 +0000
From: Carlos Scevola <stevehill606@msn.com>
Subject: Urgent Information
Thread-Topic: Urgent Information
Thread-Index: AQHV7FFriz7PC6GRt0aNSR0Q/9EFGw==
Date: Wed, 26 Feb 2020 03:04:56 +0000
Message-ID: <SN6PR06MB43529F2B50D70B5D25B2E35E85EA0@SN6PR06MB4352.namprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:8E0F35E7D688BBAD36C891365ED041D22940DF3F399BE2A3B4031CCB684E713E;UpperCasedChecksum:D6EA26A70109F2495CED766D2640C87A43B5239E0627DB99338F6AC56790A98F;SizeAsReceived:11497;Count:41
x-tmn: [7DFTqsmcBt8vaHKshKTjJDqA4yl/+Fto]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: b0d8747f-fdfd-4987-aaa9-08d7ba68a885
x-ms-exchange-slblob-mailprops: wFHlV0EOAy2Gw6NTxCJns5mJCHFkYS1aVuOrsGAVwBoWoy9ihRHcfvg+G87wdZYyJSKvgxMyhehAEMEjzzpJxTusbAITko8bPTyWv63SgYKNeoaaHYdNpYluju5xxr3bs0zZgjvUrDi3zG5nwNbFsMbL7tDpTzStsma1kFOTkNaxiXr1iKMtqiFDF6bn8PYbyWMCM7X4ir4QtetydZ1XW1a1pgbGyS/OmywxfOUBlmSNdlV7gDklJnFzZrYttQqjyQrgwRJ1MM9RQaA8ZwcroiAu80QzI6TEnIAjDolQItxUZjzwLBs/65hqSBo/qpzIgQwt2HQjdhRBaIaxOQJotq5Pe6TeD2hdctuHVcUdRNM/m+DDRErMOxTXPWe+BOAYj+4gfRX6ja+y6sm7075Fzlrq/VqJpklOU0m2EYccnM31TbYGEnlkO4SwAsX7yDaMnDsAMyAXfInE3yUEszTaYwrzVDT+9wWpqeooZ6GrDsfiz+8NymJ4ycf6H6FDafzD89duybnGLaLHDAPQnBoxENbQCllyTyhES53k5U6Y0PQKkSGvMKzMb4/TrsdX9zYM+xD55oe4sLeEPFaRgMyK8A==
x-ms-traffictypediagnostic: BN3NAM04HT203:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pUs2ojDhoGlZKZJQM9MEQuMNhmdty/KZMVOvQIluGinZ6Nq83laVw5f1zGj5/6nFl9NKfQrFK3VBmHb0V+QWd+DIR00jiw+2MFmf8mRWHB3++wRF9fMaM7DUZFVcmGWAoV2Wh59cLxthRGzIypygZQ3LK7DXYPZdVgKEOcGkbWwAFzRzp+1sgRspekv1NtL9
x-ms-exchange-antispam-messagedata: HPwjM5w3U0HFSvG3UWsr8IRCTtcJ2o2ivbt/JPzdZYtn8m7tYh0jUVviRS8SsOrq/R7XCGcd1wpc3J7JkKYrZDLiGN3wcVpUPCeSKm/M8k3njNtCWASDiccCcFS3RzrzwbY9eQOF/6kUflHMYOJmqQ==
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
	boundary="_000_SN6PR06MB43529F2B50D70B5D25B2E35E85EA0SN6PR06MB4352namp_"
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: b0d8747f-fdfd-4987-aaa9-08d7ba68a885
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2020 03:04:56.1562
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM04HT203
X-Original-Sender: stevehill606@msn.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@msn.com header.s=selector1 header.b=LGXkACe3;       arc=pass (i=1);
       spf=pass (google.com: domain of stevehill606@msn.com designates
 2a01:111:f400:fe4e::815 as permitted sender) smtp.mailfrom=stevehill606@msn.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=msn.com
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

--_000_SN6PR06MB43529F2B50D70B5D25B2E35E85EA0SN6PR06MB4352namp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Carlos Scevola solicitor
Phone- +1-443-588-5040




Good day ,




I am Carlos Scevola. I have emailed you earlier on, without any response fr=
om you. On my first email I mentioned about my late client, whose relatives=
 I cannot get in touch with. But both of you have the same last name so it =
will be very easy to front you as his official next of kin. I am compelled =
to do this because I would not want the finance house to push my client=E2=
=80=99s funds into their treasury as unclaimed inheritance. If you are inte=
rested you do let me know so that I can give you Comprehensive details on w=
hat we are to do.

Sincerely,
Carlos Scevola


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/SN6PR06MB43529F2B50D70B5D25B2E35E85EA0%40SN6PR06MB4352.na=
mprd06.prod.outlook.com.

--_000_SN6PR06MB43529F2B50D70B5D25B2E35E85EA0SN6PR06MB4352namp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<span>Carlos Scevola solicitor<br>
</span>
<div>Phone- &#43;1-443-588-5040<br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>Good day ,<br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>I am Carlos Scevola. I have emailed you earlier on, without any respon=
se from you. On my first email I mentioned about my late client, whose rela=
tives I cannot get in touch with. But both of you have the same last name s=
o it will be very easy to front
 you as his official next of kin. I am compelled to do this because I would=
 not want the finance house to push my client=E2=80=99s funds into their tr=
easury as unclaimed inheritance. If you are interested you do let me know s=
o that I can give you Comprehensive details
 on what we are to do.<br>
</div>
<div><br>
</div>
<div>Sincerely,<br>
</div>
<div>Carlos Scevola<br>
</div>
<div><br>
</div>
<br>
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
om/d/msgid/clang-built-linux/SN6PR06MB43529F2B50D70B5D25B2E35E85EA0%40SN6PR=
06MB4352.namprd06.prod.outlook.com?utm_medium=3Demail&utm_source=3Dfooter">=
https://groups.google.com/d/msgid/clang-built-linux/SN6PR06MB43529F2B50D70B=
5D25B2E35E85EA0%40SN6PR06MB4352.namprd06.prod.outlook.com</a>.<br />

--_000_SN6PR06MB43529F2B50D70B5D25B2E35E85EA0SN6PR06MB4352namp_--
