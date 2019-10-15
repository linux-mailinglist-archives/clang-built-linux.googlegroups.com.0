Return-Path: <clang-built-linux+bncBDZ7HIWT7AJRBZPASXWQKGQEMFNBE3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 94486D6FE2
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 09:08:22 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id x62sf19307575qkb.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 00:08:22 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1571123301; cv=pass;
        d=google.com; s=arc-20160816;
        b=w4bNbFekmonz1JjQjLz618wTB5D/PBfo/OAVHltDfMs+JqJMfsXI388PY5VTQIpNfg
         CBSoD8TUbVSObk6jjFm7wDkGd0z3ZUTAyUPkPQNBd2bVX/Tracn4rh0DNk4pgK0H6Psk
         nTZD3zWmnW2k3fWzK7z2PaZk01DrqNLpf+8iQUGEPd3DF3sdhdochjEkLcWzBFIXEdqi
         3kxcb/huCgTR7crATySFlokpC/7Eo1Zu1zXfriBgGL0GD0kIv3A+Cr6iitaMVS/uZ3zm
         Uus7dNtFXjg6oacWKjzwC7b7QDDmKE9viJLxLxK3n/EzkNo2YaTB89iEJcaQG2Z5D5dC
         Gmow==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=9S0whuR/E32STaPUR6b0pRGqglrRzVyxxN1L+T1WhMU=;
        b=B9W6Beg6hlJF7YM9VZPSBeA3QlLSSYbPyEJ3g44iiJwVupy7AmeLZwrfjEA/KRPPdy
         J037F00jXTWF37sX3FtblaK/CnHWqdYv2JGxTG5ZNi2fmzHgDCmKmCbLqHUAHBmtsuE2
         35EP5m1hUZoqHL1Xbq65mdhUJSDWWyYXb6gpneEIC7FaCHv2PljpmWudqWpMSpmaAXQK
         NrobrxaruCuZ1+pjCBeQ6J81q0M7Y1wGF6Q1Alu2Clewcn4TnD/KwS9rrE74HZKJur+d
         qB9pg71blhTqu9ps9STqhmhMMpXrOiQbnUltaAi/it00wKzmYFqwR6VqIsxc5gcTRbIg
         H+lQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=amATFtbq;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.80.73 is neither permitted nor denied by best guess record for domain of shirish.s@amd.com) smtp.mailfrom=Shirish.S@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9S0whuR/E32STaPUR6b0pRGqglrRzVyxxN1L+T1WhMU=;
        b=Qz1fmLfaRGes8RbTRCg4lXdVfV80dWboD+jjAwqnrnwk5Iz9cMJ76VorDGbs7uJWYc
         5wgjYPCVlfif+zyfJEcJw7BdBfk4eeCRwjXRdlGj2603xQ8B1N42M6+K7Bf0MPlerzj3
         Jvq0nb94BCnQ3S46toGHhDCfz0ReejeDk1D2wGBVOVy9lYOkyaxSs55zM2qctO8bMG9k
         YiYixxadE2jvkL8343bhrEBBU/heU/Wm22do6JNsxY3oyn7IAL8raM3tL/x5LryyLS+P
         U8CK/vQYqcTzgjuUdyP/eSfwR4wZ6cGHw/amCu9qPN7o2yI7zhtDuW6Ai2UHCxvp4zos
         b7UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9S0whuR/E32STaPUR6b0pRGqglrRzVyxxN1L+T1WhMU=;
        b=bD5YTPFE+iqAF2qk+5tauvJnL58pyHBpTp7psBvzqF5figoe1BiBi7cTjjNYeetGBt
         9XTw6VeFSmq5oSwBXiaeJVoaqHnMbpMcTls3nJYuikQKjd1keWdXYJWOs/qwNpztDg4n
         IYwztUBQ6KURRsjDjZamS1KBJHAk7YlSZ8Sy2vO+GbtxDCEDp54F5mdtdWPQ41hAL1Re
         ArF+lUJk+SrIr+NnSpvizFI4aelf+pum7vmQFiZRU+6p1WcVpSoaLedrCe47X1eoiiWg
         8qVLLosyASRdhtAmkU5LZXFG8ezCQUV2OCGTkgJFurFZIdiQzkBs05CjHW0BXXUSueRP
         7n6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUxGXSTneLX4SLKqT292kURe/Fp/juya+7R4c0203o/YqiZ0rnY
	nrdpYi7masPtLjpXRBaJ/mA=
X-Google-Smtp-Source: APXvYqwDzAg+ymd8X9uyrl1XPyTGuS+ZoHq5yoj68BWNd0zhqqizn2lAySgPYYxMDoY4js7dl1E7vg==
X-Received: by 2002:ad4:408c:: with SMTP id l12mr33700851qvp.210.1571123301448;
        Tue, 15 Oct 2019 00:08:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2e06:: with SMTP id u6ls5146571qkh.5.gmail; Tue, 15 Oct
 2019 00:08:20 -0700 (PDT)
X-Received: by 2002:a05:620a:14ae:: with SMTP id x14mr34891363qkj.326.1571123300799;
        Tue, 15 Oct 2019 00:08:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571123300; cv=pass;
        d=google.com; s=arc-20160816;
        b=DWXDTTz6Hr6mAaJkBGTzB0Gb5vlkmNjJ67YkqBMjpfYnbjeEguqurWhX7TM+qroEbs
         N9LDqm/jBlGBS3AVWxJwlsHF6+62fY0Q7GcbKy0Jrcm+UOfFF2OuOsLZxQ60b9OIjIci
         CHBD30RhkGaXMhS2bdZJ+oG0U8RmumNQvgVx3HdI2JPCkAGvoo8ppY2QsObppsT2u1xt
         N0/Eg+vm1NFEjJaZhUzbbSYftWaIH6J9VQxUXNYAQ6lJiCdR8LINGmCJ4s5XzhpPKmMO
         TPnKxjq9rVIa6V5WWSZOb3SdwyDY7Ahe/FNSEc9bUqvkeXm2QgXh0Tpsc16MpcwmznVy
         1U4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:dkim-signature;
        bh=FzX8nntndpVFVXhux9JrI6FqueVu0QtbhToSul5Y5GA=;
        b=WEQF208C62mKBdhAdiEohSdSsxVnbv5tFAGDicr4XYhqfNcAnN4RbSNOvDsTM8C/7O
         DcWVf+vzzqD13w4HSFOXzZm6Q90TnqU8YEadeFSfdHRDwzfXTFS/8Kv0GyZulszdwYaN
         fnIZiXU21DA1VRyc+6BoGUIPcLzz5CO6+eDqqvGbnlDDJLHYYXw8YH0T+uT6DsSnYoac
         Mf13fRIrKCpx7DqkJb+cg6OTxW6ELaBw1T+VcD7jQKhhtPV2tsj03CUCCS1Vtcim/Czt
         OkE2wQKi+z/MYTN3vmXxvO5Loj5KIZDjvE6L1Lnf/VQeVL3P/xf8cRUNFd2hToL3/sCn
         0s5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=amATFtbq;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.80.73 is neither permitted nor denied by best guess record for domain of shirish.s@amd.com) smtp.mailfrom=Shirish.S@amd.com
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (mail-eopbgr800073.outbound.protection.outlook.com. [40.107.80.73])
        by gmr-mx.google.com with ESMTPS id v7si126413qkf.5.2019.10.15.00.08.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 15 Oct 2019 00:08:20 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.80.73 is neither permitted nor denied by best guess record for domain of shirish.s@amd.com) client-ip=40.107.80.73;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b1wHQ+sEFUAO55e8BokJXDw1/fCl+00++0CCOafmoExoAnETPUg0milLEnTdNoAVdd7QAl804o8tdRY8ci0tp3H9BciOZskfqTfo1k/DspViTgRATsSuF1mCj77r/cBsFYoHW7fChAMxEotRdoXuLXpvDtgsnlZnKD43mvWWPAWbIGEc5U6X976xlEh9GN9cPExr1nglVeNtdJGIALRrsJV6rCkFV98hPyW7a+4w4hbsBIryyC87d+h+wq5kwvdt64RFWI+IdTDE+jkKwm14MbgL/dY1gVN/ZTNEOsQRg+w6kWUsyGV91aYqEKQRl03jog1uoqXTzREC9fxXOb1l4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FzX8nntndpVFVXhux9JrI6FqueVu0QtbhToSul5Y5GA=;
 b=dk/7+7ecYr0TS2bsb85rLWnT62eljyvDY7ZpcOEp/pzPObhN4taSuQG26wiZPBUwMdTbF0fO3FNONckkH5RvrhaHmPmYkoznJ3wsy76cQ2mf03cchpQEvpzIcDFHcZ2kUtQCAUhW3kVRcLVB4ggeZDFfYTy2gzbgMe+ssEva/kH9XRH3QbkJ+SD4XREDCBgP6iis9zGesWBzCvQIzGzXrBWUcMU0TOiXq3LnpI6UyLgzupvGvZmKN0IohDJ9Lce5Ba0MkImQcmOf6t6mY3u2FWjfNomNBnd2wE7xf7o2w2wgY7J+lhbs6x+Ch3jiS1h3U1jhAX52SKVLEG8Je667YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3248.namprd12.prod.outlook.com (20.179.80.74) by
 MN2PR12MB4254.namprd12.prod.outlook.com (10.255.224.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Tue, 15 Oct 2019 07:08:19 +0000
Received: from MN2PR12MB3248.namprd12.prod.outlook.com
 ([fe80::dd77:dfe4:1913:9d7e]) by MN2PR12MB3248.namprd12.prod.outlook.com
 ([fe80::dd77:dfe4:1913:9d7e%4]) with mapi id 15.20.2347.023; Tue, 15 Oct 2019
 07:08:19 +0000
From: "S, Shirish" <sshankar@amd.com>
To: Nick Desaulniers <ndesaulniers@google.com>, "Wentland, Harry"
	<Harry.Wentland@amd.com>, "Deucher, Alexander" <Alexander.Deucher@amd.com>
CC: "yshuiv7@gmail.com" <yshuiv7@gmail.com>, "andrew.cooper3@citrix.com"
	<andrew.cooper3@citrix.com>, Arnd Bergmann <arnd@arndb.de>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Matthias Kaehlcke <mka@google.com>, "S,
 Shirish" <Shirish.S@amd.com>, "Zhou, David(ChunMing)" <David1.Zhou@amd.com>,
	"Koenig, Christian" <Christian.Koenig@amd.com>, amd-gfx list
	<amd-gfx@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>
Subject: Re: AMDGPU and 16B stack alignment
Thread-Topic: AMDGPU and 16B stack alignment
Thread-Index: AQHVgt3apwMg5pas7kOX+VanLgXpgqdbSgsA
Date: Tue, 15 Oct 2019 07:08:19 +0000
Message-ID: <9e4d6378-5032-8521-13a9-d9d9519d07de@amd.com>
References: <CAKwvOdnDVe-dahZGnRtzMrx-AH_C+2Lf20qjFQHNtn9xh=Okzw@mail.gmail.com>
In-Reply-To: <CAKwvOdnDVe-dahZGnRtzMrx-AH_C+2Lf20qjFQHNtn9xh=Okzw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0094.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::34)
 To MN2PR12MB3248.namprd12.prod.outlook.com (2603:10b6:208:a9::10)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.204.157.251]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 01614867-cf8a-4c97-9405-08d7513e74bc
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR12MB4254:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB4254A4B7B95E47CBD266D6A4F2930@MN2PR12MB4254.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-forefront-prvs: 01917B1794
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(136003)(39860400002)(376002)(366004)(396003)(346002)(189003)(199004)(2616005)(66066001)(6636002)(66556008)(66476007)(64756008)(66946007)(11346002)(66446008)(71200400001)(71190400001)(31686004)(81166006)(8676002)(8936002)(81156014)(476003)(186003)(102836004)(486006)(26005)(2906002)(446003)(7736002)(110136005)(99286004)(54906003)(5660300002)(316002)(6506007)(36756003)(76176011)(256004)(3846002)(31696002)(53546011)(386003)(52116002)(6116002)(6486002)(229853002)(606006)(25786009)(6512007)(54896002)(6306002)(236005)(4326008)(6436002)(6246003)(966005)(14454004)(478600001);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB4254;H:MN2PR12MB3248.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1IFkOUblArKgJzzr47qz+j+rHvHIF/oSIP4OoLqs9SGKKUcJMmdqDcFM/dJn3vMbtAQteWO54T/Hvduz0LyaEvY2saY0Y9rPi4lFjFsv+Z3quzFTu85jvI5KRR0hVTzxz0y1Z0s1fMNVx8Z6d8c/YU+e90jUfZ9iTYznt0qGvD23vMRIbwMl9VFRirnXWAiXgczaiC7iKSXATYzbg4WKKBFd2LXtsrCi1OZsIMKjY6vOYNoTZJuFd3BrQpVkeUDnd0K6r5uIwIuwxNm6+Y/xiIQ1MJt/nkit+fKIUgM8jVa2XonFdpWzkaJBQAA6Y8gkdILcCwCK3MYRJyGKRgHmC761F8Vzycbl5wVFqydOc5ZwUHD//GynwWqpAKHWiHbd9AHRERG0YFG67xbx5Lgov21fwOf3n412fHEHUm9Nej28v4zmgG2L6qG4PBC5dI/QpW26yh7U7M0Zb66Vw/gsrw==
Content-Type: multipart/alternative;
	boundary="_000_9e4d63785032852113a9d9d9519d07deamdcom_"
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01614867-cf8a-4c97-9405-08d7513e74bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2019 07:08:19.1578
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fcEKODsyV8Z8jG5NmIRrohtrDBKrVLlgTBlujwOHmalwUfuZAJ/KZPPb9877umfbzIRqq0MpFKy4S8OuPfmjSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4254
X-Original-Sender: shirish.s@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=amATFtbq;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.80.73 is neither permitted nor denied by best guess
 record for domain of shirish.s@amd.com) smtp.mailfrom=Shirish.S@amd.com
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

--_000_9e4d63785032852113a9d9d9519d07deamdcom_
Content-Type: text/plain; charset="UTF-8"

Hi Nick,

On 10/15/2019 3:52 AM, Nick Desaulniers wrote:

Hello!

The x86 kernel is compiled with an 8B stack alignment via
    `-mpreferred-stack-boundary=3` for GCC since 3.6-rc1 via
    commit d9b0cde91c60 ("x86-64, gcc: Use
-mpreferred-stack-boundary=3 if supported")
    or `-mstack-alignment=8` for Clang. Parts of the AMDGPU driver are
    compiled with 16B stack alignment.

    Generally, the stack alignment is part of the ABI. Linking together two
    different translation units with differing stack alignment is dangerous,
    particularly when the translation unit with the smaller stack alignment
    makes calls into the translation unit with the larger stack alignment.
    While 8B aligned stacks are sometimes also 16B aligned, they are not
    always.

    Multiple users have reported General Protection Faults (GPF) when using
    the AMDGPU driver compiled with Clang. Clang is placing objects in stack
    slots assuming the stack is 16B aligned, and selecting instructions that
    require 16B aligned memory operands. At runtime, syscalls handling 8B
    stack aligned code calls into code that assumes 16B stack alignment.
    When the stack is a multiple of 8B but not 16B, these instructions
    result in a GPF.

    GCC doesn't select instructions with alignment requirements, so the GPFs
    aren't observed, but it is still considered an ABI breakage to mix and
    match stack alignment.

I have patches that basically remove -mpreferred-stack-boundary=4 and
-mstack-alignment=16 from AMDGPU:
https://github.com/ClangBuiltLinux/linux/issues/735#issuecomment-541247601
Yuxuan has tested with Clang and GCC and reported it fixes the GPF's observed.

My gcc build fails with below errors:

dcn_calcs.c:1:0: error: -mpreferred-stack-boundary=3 is not between 4 and 12

dcn_calc_math.c:1:0: error: -mpreferred-stack-boundary=3 is not between 4 and 12

While GPF observed on clang builds seem to be fixed.

--
Regards,
Shirish S



I've split the patch into 4; same commit message but different Fixes
tags so that they backport to stable on finer granularity. 2 questions
BEFORE I send the series:

1. Would you prefer 4 patches with unique `fixes` tags, or 1 patch?
2. Was there or is there still a good reason for the stack alignment mismatch?

(Further, I think we can use -msse2 for BOTH clang+gcc after my patch,
but I don't have hardware to test on. I'm happy to write/send the
follow up patch, but I'd need help testing).




-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9e4d6378-5032-8521-13a9-d9d9519d07de%40amd.com.

--_000_9e4d63785032852113a9d9d9519d07deamdcom_
Content-Type: text/html; charset="UTF-8"
Content-ID: <267B82E01838E646AB58A6CF276F443F@namprd12.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
</head>
<body text=3D"#000000" bgcolor=3D"#FFFFFF">
<p>Hi Nick,<br>
</p>
<div class=3D"moz-cite-prefix">On 10/15/2019 3:52 AM, Nick Desaulniers wrot=
e:<br>
</div>
<blockquote type=3D"cite" cite=3D"mid:CAKwvOdnDVe-dahZGnRtzMrx-AH_C&#43;2Lf=
20qjFQHNtn9xh=3DOkzw@mail.gmail.com">
<pre class=3D"moz-quote-pre" wrap=3D"">Hello!

The x86 kernel is compiled with an 8B stack alignment via
    `-mpreferred-stack-boundary=3D3` for GCC since 3.6-rc1 via
    commit d9b0cde91c60 (&quot;x86-64, gcc: Use
-mpreferred-stack-boundary=3D3 if supported&quot;)
    or `-mstack-alignment=3D8` for Clang. Parts of the AMDGPU driver are
    compiled with 16B stack alignment.

    Generally, the stack alignment is part of the ABI. Linking together two
    different translation units with differing stack alignment is dangerous=
,
    particularly when the translation unit with the smaller stack alignment
    makes calls into the translation unit with the larger stack alignment.
    While 8B aligned stacks are sometimes also 16B aligned, they are not
    always.

    Multiple users have reported General Protection Faults (GPF) when using
    the AMDGPU driver compiled with Clang. Clang is placing objects in stac=
k
    slots assuming the stack is 16B aligned, and selecting instructions tha=
t
    require 16B aligned memory operands. At runtime, syscalls handling 8B
    stack aligned code calls into code that assumes 16B stack alignment.
    When the stack is a multiple of 8B but not 16B, these instructions
    result in a GPF.

    GCC doesn't select instructions with alignment requirements, so the GPF=
s
    aren't observed, but it is still considered an ABI breakage to mix and
    match stack alignment.

I have patches that basically remove -mpreferred-stack-boundary=3D4 and
-mstack-alignment=3D16 from AMDGPU:
<a class=3D"moz-txt-link-freetext" href=3D"https://github.com/ClangBuiltLin=
ux/linux/issues/735#issuecomment-541247601">https://github.com/ClangBuiltLi=
nux/linux/issues/735#issuecomment-541247601</a>
Yuxuan has tested with Clang and GCC and reported it fixes the GPF's observ=
ed.</pre>
</blockquote>
<p>My gcc build fails with below errors:</p>
<blockquote>
<p>dcn_calcs.c:1:0: error: -mpreferred-stack-boundary=3D3 is not between 4 =
and 12</p>
<p>dcn_calc_math.c:1:0: error: -mpreferred-stack-boundary=3D3 is not betwee=
n 4 and 12</p>
</blockquote>
<p>While GPF observed on clang builds seem to be fixed.<br>
</p>
<pre class=3D"moz-signature" cols=3D"72">--=20
Regards,
Shirish S</pre>
<blockquote type=3D"cite" cite=3D"mid:CAKwvOdnDVe-dahZGnRtzMrx-AH_C&#43;2Lf=
20qjFQHNtn9xh=3DOkzw@mail.gmail.com">
<pre class=3D"moz-quote-pre" wrap=3D"">

I've split the patch into 4; same commit message but different Fixes
tags so that they backport to stable on finer granularity. 2 questions
BEFORE I send the series:

1. Would you prefer 4 patches with unique `fixes` tags, or 1 patch?
2. Was there or is there still a good reason for the stack alignment mismat=
ch?

(Further, I think we can use -msse2 for BOTH clang&#43;gcc after my patch,
but I don't have hardware to test on. I'm happy to write/send the
follow up patch, but I'd need help testing).
</pre>
</blockquote>
<pre class=3D"moz-signature" cols=3D"72">
</pre>
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
om/d/msgid/clang-built-linux/9e4d6378-5032-8521-13a9-d9d9519d07de%40amd.com=
?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/=
clang-built-linux/9e4d6378-5032-8521-13a9-d9d9519d07de%40amd.com</a>.<br />

--_000_9e4d63785032852113a9d9d9519d07deamdcom_--
