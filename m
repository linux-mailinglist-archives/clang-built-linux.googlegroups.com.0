Return-Path: <clang-built-linux+bncBAABBZWPQOAAMGQEGKNOKHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE312F6FC0
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 01:55:02 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id g16sf3401659wrv.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 16:55:02 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1610672102; cv=pass;
        d=google.com; s=arc-20160816;
        b=PBtPrtndEYCgzUnqIgupRb5k8KJC7Muw7SoRf1RXECB9KGqKOfnyQrAmd0WU+nmezZ
         BTet8ByaRucdysySV66EgimrOjmo/YXgoVvRlgcaRu3Q7BGL4VLUy+siqJXvphDqqeEv
         Z4C7ka4wsOMX6bE2wQ/Nd/gSeACrcPBL4heTNndyv0Jtf16M5KdV7q56Ksf0G2SlsU25
         jxTK3ehVjoI3OV7PSGqkaArqJx1ZQNk7o4bn0LhnmU6qWBDO9STWMfFDvACA5dUN+YuY
         qs7wbKnKpZpK9J80D1QYBj5jabqhS+J4F8XnHibWLFOO+THq15eSXnUugxolc0XG4SZB
         oJpw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:content-transfer-encoding:in-reply-to:user-agent
         :date:message-id:from:references:cc:to:subject:ironport-sdr
         :dkim-signature;
        bh=LvgPr/8Rrlm3emcGiDwahWYr1JCtCHsYz02t3SriiiY=;
        b=pCkUxi60pKQgrACZOrgaXCorZCiB15ZvzmuF3FKinRqTe2vdBF/eyUsMEtI7wQhlHG
         0OCkSdLw3VgL4eGVZTDeCT4U8nKPNmv5uf1o6tap534r3D3i3LO8eZHCt13QcJ7eNdgS
         CBDoE4uSeubt4/lrQtZdkq8d9OsRJnBBIE1f7KXVblrncmErBn62aRcBwj32JIDxSpBf
         zA7bNDiGHEWsE6rTm9xUMQwntdhXt9ijxeHwPOmdNpj50jNGuH0LitfkzP72kwE8vrZq
         yb+/84W3NeQOebw1E+k0x/dMtQkdmKzoTTN8WRn0mD1pO5q3MktftelSpJcuxxSlWRv+
         GbyA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@citrix.com header.s=securemail header.b=ZnOiECQJ;
       dkim=pass header.i=@citrix.onmicrosoft.com header.s=selector2-citrix-onmicrosoft-com header.b=s0L6yyzb;
       arc=pass (i=1 spf=pass spfdomain=citrix.com dkim=pass dkdomain=citrix.com dmarc=pass fromdomain=citrix.com);
       spf=pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.155.168 as permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-transfer-encoding:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LvgPr/8Rrlm3emcGiDwahWYr1JCtCHsYz02t3SriiiY=;
        b=A4LmVWLeTohu/CT6wjHUWFoq7TkS4sXIkDvV9A5ky1l81TcVNeYQqox7j7x/XZarcn
         6ssoiTlxQ1EhtM/6Zx/QZ4eGPUpMogVYllv7YAlalDn8KEPUnr8UlquT8IHAtkaKf+yS
         bdEFebaorzg5lKt3A5858xev0t0XdLCVG4sBZYvqAz1tq7ZijMdWMoBg+z2vbTDBX4sF
         AXw+Yzes00rUW96LbDRXEErqr3cHsoUXeeaBPQSxKkFCGvAPFPmN7N9+TU6Co0vk5Fa+
         P3VtvXQal85QqnN/QUgj+CHNv0JSgRrE4wSn4stNcmovPV6FuBUGZhB4+0sm7pKGrzti
         GqZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:in-reply-to:content-transfer-encoding
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LvgPr/8Rrlm3emcGiDwahWYr1JCtCHsYz02t3SriiiY=;
        b=Pm//1HeuLHh905w8AXUEv9mWMnKG5SZWPt928GlIGziizMDvP4SEEJd+fvZCirGctH
         lUGu4Uy10wHoerkio9rXe7st2HibXE2IUV/R5PbP32R4PLiISLNSpW9e8yHD75bqPwWd
         uKVo5pnWrQTMguznaxF2dTO/jViPSLF9u4NT+GDrABaMSPlsCjaETwJ/rZXbvcpWP8I9
         le9e3QDTduOO+1Fg9+zgbmZZQqdEUzaIrA81GRuA5Z78LVgUIlDEropLRzifTc9L755+
         mJNGIxfn4C7Lx+baR2Lb+GBObOnldpf5s4h+1npwLk7ca2QixvB32cTEguyQeETb7zvK
         S6/g==
X-Gm-Message-State: AOAM532CiRrQ2ka89W/7dhHUpEMkDGK5FKzArVfAGWbdyEKc7e2OhUzg
	z9oYjkJM+IzukQaSgf9PF2g=
X-Google-Smtp-Source: ABdhPJxcFUcuCRgNVPvu9vuDF+d3pD+6VH3r9iapaAaEkfWqrxqSH59QxX8VzSoTUU6Hwp4Ow+3HaQ==
X-Received: by 2002:a1c:e902:: with SMTP id q2mr6090508wmc.143.1610672102545;
        Thu, 14 Jan 2021 16:55:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e608:: with SMTP id p8ls4248555wrm.2.gmail; Thu, 14 Jan
 2021 16:55:01 -0800 (PST)
X-Received: by 2002:a05:6000:1624:: with SMTP id v4mr10779898wrb.210.1610672101884;
        Thu, 14 Jan 2021 16:55:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610672101; cv=pass;
        d=google.com; s=arc-20160816;
        b=q4zjabEs3D/uCW/Lb9nShMSd+rgTSAKge98N78rwxAWCwm+DzCGlFRPCQr4tcnieWS
         p3g4iBVUXrbHtO9RTJYxoI68LiLKvVc/qwEXE/SlKge0Ue124caEj25UuU9GW424RLCh
         fsSvUmn5mrZ52f+pXWxD/Ej6irMu/6ZvrAY2y4ycmT2XOf6+zvI6Kfjf2f6frER9Cgkz
         oejqkTnqt31QBPSb/dEjotUWXpkHygMYJBXzq3GX13uKh7Fxmq91g5dHuGo7rpFCnb+n
         dnTm43NpItGgiHYRGewlAT7xGNxOmimnhGqA+h5PlL5HwD5ZoujAZF13vjnkTc0cxvZP
         3lNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:content-transfer-encoding:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:ironport-sdr:dkim-signature;
        bh=G4Qmk1pN6JoO1y6xZCby3DvHrsguufTX8wJJmauZnKM=;
        b=sTJFOpzPhOkm6wpG1omKouSNxxjLqQpVAQId8KP9Ydo+1BDqPqOkiT/BBoGUlRjHjU
         oRiMO4DDti63+RiGtgo77tkm8tc3QV07l43nOIaV2xKhFL5w7OoNVKExD9CdvR/hqq4a
         /68Ow6gdvl8ojgdXKvvd22M94gJi+RWAX5j4EJ2OR/kiVyBtdKTe+ikZ22Oa2ykz/LKT
         RAdNXZtY0HPs/OsSPQYXL5ks6Mju4neqBqppPGCkNa7c0ZM5aj3yEqAM4T03OUKCvRVR
         fyV9QSZuEAXpzagIHVEMmOLQKzRAXSNz3C+DMOSjbB7LnYiKYnGO+osXKmwLcsv/TuWy
         wSyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@citrix.com header.s=securemail header.b=ZnOiECQJ;
       dkim=pass header.i=@citrix.onmicrosoft.com header.s=selector2-citrix-onmicrosoft-com header.b=s0L6yyzb;
       arc=pass (i=1 spf=pass spfdomain=citrix.com dkim=pass dkdomain=citrix.com dmarc=pass fromdomain=citrix.com);
       spf=pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.155.168 as permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
Received: from esa5.hc3370-68.iphmx.com (esa5.hc3370-68.iphmx.com. [216.71.155.168])
        by gmr-mx.google.com with ESMTPS id y1si313976wrl.4.2021.01.14.16.55.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 16:55:01 -0800 (PST)
Received-SPF: pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.155.168 as permitted sender) client-ip=216.71.155.168;
IronPort-SDR: GepB1vnjs0EcaM+5+s+0p2wf3elRLDZjW6J2L8fisjpQt//9vzw1YIULI9u3aam6eDpscb1nXC
 XMQ712d0A2A21Nz2kyo9fqna1kAVmrT3yVMyvqSTkSSWIUo8n0pHLi0AAi3ZpKAR9AkV2rpcHr
 9977PAeXUGzyE1Y3/lUOFf054NXU2PfgZgQ4Gci/m+CNY07RsubSRNsWdvR+eEXJJLjObSMNZs
 viAMRsv+Mq02sCIP/mayPl/gDaP4BNqUzjD/YN/WUc3QA0x1b4/Q3JNQImeLXEz5bCMI65l9MI
 760=
X-SBRS: 5.2
X-MesageID: 35129558
X-Ironport-Server: esa5.hc3370-68.iphmx.com
X-Remote-IP: 162.221.156.83
X-Policy: $RELAYED
X-IronPort-AV: E=Sophos;i="5.79,347,1602561600"; 
   d="scan'208";a="35129558"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=enRooZmUjlaDwKximeGMqSMBDCHnzr7eSyDwhf5MLrodHO65TlfMl+1WwaTC0bQ5UQMGlbQ/E9o7L1Th5mJrvfk11wyFxciJwsKqt1SiedC/mdKXLK9OMdE+QBfntvYYp+hxEFCFK9sjEfFT2iefUeqNlIOObdhBascQKO3DWA0r/P+INcNs59iPioYuav1s5HSz8JTV8Mswm73L/RFJMBmNlgTC1S1dOu3uKMe62HI+RY5T1TdkdPIYGJ4K68AaxHHfvu9H1rKY1CSdlEjH7iEE5mo+B1hIR9jhUAqkwDE9MDQPv9rrzMg2JqyPJdgrOiYZaf7BEDKYTK3MdMDqZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G4Qmk1pN6JoO1y6xZCby3DvHrsguufTX8wJJmauZnKM=;
 b=K/k71GRhzeHntRQ9Rpv9JYEwj8VY6ux6fMoMrZCNJHf7IB4C3D2v8Y1CSiBxnbOjp16OkNRy4Kz+KTi94VQJtk7WlCxYlRprJd9BRzPfX1ae2Fffm3AP9WULcttaowvB05z8mOlsBHeZiFJ2HLE0TmH1nzpbSvDpZ7LpZJUQEBQzGSdDCB/cASCZVwXF5VXMFBpU7uK1kVvbFmHl67G8kI2THO3A7sFrF2+2bp3f+RgkAPZcTdF64o59lLchrxJYIuNbi7V46Gfykq5E0Wav5si6N+02HPeTU9g4JXFElI5ZSb3fVrmZPWRubm+5cSqEq3Ea7ZlNg271Nurklo8taQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=citrix.com; dmarc=pass action=none header.from=citrix.com;
 dkim=pass header.d=citrix.com; arc=none
Subject: Re: [PATCH 17/21] x86/acpi: Convert indirect jump to retpoline
To: Josh Poimboeuf <jpoimboe@redhat.com>
CC: <x86@kernel.org>, <linux-kernel@vger.kernel.org>, Peter Zijlstra
	<peterz@infradead.org>, Sami Tolvanen <samitolvanen@google.com>, Sedat Dilek
	<sedat.dilek@gmail.com>, Kees Cook <keescook@chromium.org>, Nick Desaulniers
	<ndesaulniers@google.com>, <clang-built-linux@googlegroups.com>, Miroslav
 Benes <mbenes@suse.cz>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown
	<len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <a1e4f5620deb81fc644b436eca5f51ec3a694459.1610652862.git.jpoimboe@redhat.com>
 <5017a6c5-55fa-0767-b1ed-2bd9e2a5efc1@citrix.com>
 <20210114234737.xpltgdu3vpa6spgb@treble>
From: "'Andrew Cooper' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <70343174-b9cd-d80b-7be0-5d3e3e609ca2@citrix.com>
Date: Fri, 15 Jan 2021 00:54:41 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
In-Reply-To: <20210114234737.xpltgdu3vpa6spgb@treble>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-GB
X-ClientProxiedBy: LO4P123CA0045.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:152::14) To BYAPR03MB4728.namprd03.prod.outlook.com
 (2603:10b6:a03:13a::24)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a96ec3bb-15ff-40b9-7184-08d8b8f02973
X-MS-TrafficTypeDiagnostic: BYAPR03MB4341:
X-Microsoft-Antispam-PRVS: <BYAPR03MB43417AAAE191433D2DDF98C1BAA70@BYAPR03MB4341.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e/6yOAj8YTIx+2zEuAzq0v/+MlNS+AvCNmyMc35Ry7iS/6pUKe8NEY7Oo99kowczxxDKrID+tIgGR97y5w4kKtq7yHV3RBSK0HWz6SwvUpNJGK4W/y/7d2A5egixBsuELKDUyBWlf/jxmAaUWYNalMcOrA0suhuuQKtopM0fIgyyAM7Fds+Y/ZiSxSz013OIOrpD6JneId3js34rE0XCPhNcVk3+A0zNnNCWKOyeVr/TQyrk9j/IiL3kRSdJA2A1BE2FAfdSn5QPT7M3/CzEn42EqCdwTK7vlAjRgSA3iYrBd6KjtrXkPnCwXEHBs+Jy5DmCWYa/8JcvoB28gv50dvmFJpt8KeHnNJhu8IFIMZFCg3RCeyW4sPB4HZH5BnYkuCVhnjJFhw5alY8qDK/0t5GYEnd8LDgutq2XmoP5qYTOKgg2Z+IZ/GMxJkk91BnvC/S6NlRBmxh0cBm+F2HCmMy9uNpRfp9U03kWPLqaMFU=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4728.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(136003)(396003)(366004)(39860400002)(7416002)(478600001)(2616005)(31686004)(316002)(16576012)(6666004)(16526019)(956004)(54906003)(186003)(66946007)(36756003)(53546011)(31696002)(4326008)(6916009)(86362001)(2906002)(66476007)(5660300002)(66556008)(6486002)(8936002)(26005)(83380400001)(8676002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?RlQ1V1luN3NrMnBobGVlZG9Kbm1VQ1N2WkdOSzF4ZUptU2x2aXhobEhuS2Na?=
 =?utf-8?B?OU5QcVNTYnpidUkzdkhyclY3MERmSEoxNG1UVkZpUjVVK2FrRjd3bEZ3MEFU?=
 =?utf-8?B?aCtJcDZZbENMZ3lURzZSeVpxVnFqU0tRSTU1NzhKY1NFMHJJa1Y1OW8yL2JE?=
 =?utf-8?B?WkoxT1cxUEdsZWIvVEZUWnV5SlpvTUhiaG84SG9DZXVQNklXVlVPcHlVUm5o?=
 =?utf-8?B?QktsWmZvcVlhT0orbnhiT0hNVVIzQXRHT21MUmZwVERZRzBHZ21nYkRUakQr?=
 =?utf-8?B?SE9TMFoyeEE3L1d4MEZvSmMydllHaDMxWnpBN2xKT283aFhEcEpFZnNiTWRS?=
 =?utf-8?B?Nlk3TnhCcjlveVREWnRMWjI2NGNMNFkyckhZVzNoanF3dlRmUjlXM0xiVDg0?=
 =?utf-8?B?QzBOdGtZcUtwbFlXa1JXOXB3cS8rQTdjYWIzeDhyNklQdm5XOFk2Qk5NMmV2?=
 =?utf-8?B?Mk5XdlA4a3M5dGl4Mkt0TktZaXVNbXlFcVlvRlh0dDluL09PdFVzbno5c2JV?=
 =?utf-8?B?OTFkRVdiLy9FTlVyQVNSM1VrdFp4Z3paQnV3QzhCMkhVd2dxazRjc0xTUzIz?=
 =?utf-8?B?ZE1WK1haa3oyZ1lxVkZYWGVtOWRkQUJLcHo4SGF1WGpnRmltVU1nb2hPRTEz?=
 =?utf-8?B?S3dSUkVFdlRsb3RjdFV1QWhidE9QVlEvTlA1Y1BpUmhCckpsYTBHODJ1MW9K?=
 =?utf-8?B?aXZwRXlkcEpqZ3dSYzFBcG9MVk5ZT1o1Mkl6KzlmZ2lsWS9IRWtrcnBHT3h6?=
 =?utf-8?B?L0hRZUx4UU8yMmpYMTNmQkdsN21DbW1vd2RCMG9UaGVmTW5YcmR3SkNLMnp4?=
 =?utf-8?B?WW5IVzJjcDh0ei9nOXQ1WnZiQ2F5NHJMT0M5Y2hwejJFays0L3ByZExpRTFT?=
 =?utf-8?B?YUNOYkswOTVaeHg4UW52Qlk3Ymw3VXM3NUh0Ujltc0JCUE1mYjU5V2dUcVky?=
 =?utf-8?B?TUYvVjd6U2J6M1NINVB1eDl5MHhnKzdnTWhiQnA3NnpCL3pBQ1BUMFdxN3ox?=
 =?utf-8?B?VjdOVHI5bnZuSkw4NVFzNzcydDZEYkpsVko2UlE4cTJaVFBGTkw0ZVM4YmlQ?=
 =?utf-8?B?bUsvYm5SSzhidnhGbFNzeHp6Y1RSRlJsdStZb3ZXL1NJZWlxUTg0VGxOb0gz?=
 =?utf-8?B?bTBQeXVKdDdiZzRHRWYrVnZGS3lSSEluaTUxVTVXL1c4NkUrakNFQXJmMitV?=
 =?utf-8?B?WGtnR3RPUnJNRm1tbnFtS2JGSk1lRThTdzdmQU1wbUdhc1JVMUpBWkcrK09J?=
 =?utf-8?B?R0NQSkYra01iZmRXemdOZlpLWjZnQ2tMZWZqeEtzZlppRmZIeDRicjdxNWtU?=
 =?utf-8?Q?MQ/0AWkn7C3fb18o3FUpzR9ohZt/0UWld5?=
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4728.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2021 00:54:49.9159
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 335836de-42ef-43a2-b145-348c2ee9ca5b
X-MS-Exchange-CrossTenant-Network-Message-Id: a96ec3bb-15ff-40b9-7184-08d8b8f02973
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2W5lGpzmd5TzrumTRUEjxSf+ghW7TH2RKWecfMkBS4JCzbsfiMewIBktClOYMxgf65vNlLVseRZnBvC47YgvQ9xX6mWmgkUUDYk1p4GwYcU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4341
X-OriginatorOrg: citrix.com
X-Original-Sender: andrew.cooper3@citrix.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@citrix.com header.s=securemail header.b=ZnOiECQJ;       dkim=pass
 header.i=@citrix.onmicrosoft.com header.s=selector2-citrix-onmicrosoft-com
 header.b=s0L6yyzb;       arc=pass (i=1 spf=pass spfdomain=citrix.com
 dkim=pass dkdomain=citrix.com dmarc=pass fromdomain=citrix.com);
       spf=pass (google.com: domain of andrew.cooper3@citrix.com designates
 216.71.155.168 as permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
X-Original-From: Andrew Cooper <andrew.cooper3@citrix.com>
Reply-To: Andrew Cooper <andrew.cooper3@citrix.com>
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

On 14/01/2021 23:47, Josh Poimboeuf wrote:
> On Thu, Jan 14, 2021 at 10:59:39PM +0000, Andrew Cooper wrote:
>> On 14/01/2021 19:40, Josh Poimboeuf wrote:
>>> It's kernel policy to not have (unannotated) indirect jumps because of
>>> Spectre v2.  This one's probably harmless, but better safe than sorry.
>>> Convert it to a retpoline.
>>>
>>> Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
>>> Cc: Len Brown <len.brown@intel.com>
>>> Cc: Pavel Machek <pavel@ucw.cz>
>>> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
>>> ---
>>>  arch/x86/kernel/acpi/wakeup_64.S | 3 ++-
>>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/x86/kernel/acpi/wakeup_64.S b/arch/x86/kernel/acpi/wa=
keup_64.S
>>> index 5d3a0b8fd379..0b371580e620 100644
>>> --- a/arch/x86/kernel/acpi/wakeup_64.S
>>> +++ b/arch/x86/kernel/acpi/wakeup_64.S
>>> @@ -7,6 +7,7 @@
>>>  #include <asm/msr.h>
>>>  #include <asm/asm-offsets.h>
>>>  #include <asm/frame.h>
>>> +#include <asm/nospec-branch.h>
>>> =20
>>>  # Copyright 2003 Pavel Machek <pavel@suse.cz
>>> =20
>>> @@ -39,7 +40,7 @@ SYM_FUNC_START(wakeup_long64)
>>>  	movq	saved_rbp, %rbp
>>> =20
>>>  	movq	saved_rip, %rax
>>> -	jmp	*%rax
>>> +	JMP_NOSPEC rax
>>>  SYM_FUNC_END(wakeup_long64)
>> I suspect this won't work as you intend.
>>
>> wakeup_long64() still executes on the low mappings, not the high
>> mappings, so the `jmp __x86_indirect_thunk_rax` under this JMP_NOSPEC
>> will wander off into the weeds.
>>
>> This is why none of the startup "jmps from weird contexts onto the high
>> mappings" have been retpolined-up.
> D'oh.  Of course it wouldn't be that easy.  I suppose the other two
> retpoline patches (15 and 21) are bogus as well.

If by 21 you mean 19, then most likely, yes.=C2=A0 They're all low=3D>high
jumps in weird contexts.

~Andrew

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/70343174-b9cd-d80b-7be0-5d3e3e609ca2%40citrix.com.
