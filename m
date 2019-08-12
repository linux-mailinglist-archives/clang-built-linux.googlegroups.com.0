Return-Path: <clang-built-linux+bncBAABBWW6YPVAKGQEGRAQJVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 0007189665
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 06:47:23 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id a9sf3281605pga.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 21:47:23 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1565585242; cv=pass;
        d=google.com; s=arc-20160816;
        b=mBxhGkYK/0O2d7CTf5XYU7zOEISRoU5Tpy+YWhS4KUlqPmdoNoUXJPycjQSveOwYNj
         uheU7XHAiV4q5KUDIGrfkPYyReMCiiAgw+fR+MEFb6p/2TSkxTvc/+Bx9Ss/iOsaoaD/
         6luIhxLc/lGtZ+DB2yQ3tRhae1A6aoqh8LwB/O2Ae6ZtEVALN2LdZXe5J1knou8SlNuf
         LM8lnwSx2NjK5Y/wH/CH2EsMrrC/Yaseqe840TfivhGDwdLNIYddhQkrSArNwaNI5wm1
         /itAXSufAL+MjNfBYF7O+w6azLIggtj54ugc8ZwmKBGHAgHk1fqw4//DQhL8piXDo1mo
         7OPA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=9AgllV2sCt6wvnlS5xJUgW8KLOUbF1tNBbgNMitgP/Y=;
        b=uZNCR4gY0gLMhNVjoJpCSpwHPYASiFKnbhYd3JBxp9gVNnu6YsirwqwwWtRR9Kedv0
         +Ixsw0Hs4HoPgWnzY1eeec/RGe7rXnmE8X2AYRujciiIGowhy3010Xy3+lvXbX9QQrWa
         kaKLMA2SBnpPtuIxTCNDcCvzXkAogeFTmNNa70lvUxFgN0C8FpIXhbIsi6AfiRgaGoIV
         QkMfzeOFDm7pFdU0gEDCXAeCSvNOmGvxKFqon1n54XlGk79SSBmemSqEBbAsOubFxU08
         H+Vf/XtkTrjAqGNPLxGaQ5kW1Rycm/isYK97fTgKhITejBBunnDOlTsm9S+d1/4LFU53
         JMJw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@wavecomp.com header.s=selector2 header.b=KKTYzklP;
       arc=pass (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass fromdomain=mips.com);
       spf=pass (google.com: domain of pburton@wavecomp.com designates 40.107.81.94 as permitted sender) smtp.mailfrom=pburton@wavecomp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9AgllV2sCt6wvnlS5xJUgW8KLOUbF1tNBbgNMitgP/Y=;
        b=l4CGS7jrRu+DIiHXnOcPu1YXD46Tf2C4gHYJ1caaybrauG4GqqMn1zYbd3qQTWRuDf
         JsYwh/r8dqRRJ8agK1i2kVWYOJXc+2AGCPq1iIWwxMrxodTEZUHyq2oIR+gjdu2Kg+BS
         SLLMP2FnrD79F2JxIygT0V+uX3yjnLSocdDpJfaE0GvmI3QalLpjwJ/CQJalVTU0zFpd
         IpFAgDsOieVfN2LRqOG+4VewtlYwwFoPMlNUFcaOhoWT4qjU9fXo5SLHwSwGsfy4EEy0
         Au7LMKvhF8xZj4ocjllP1oIVyn9F+3luM7iHqnVB0P6MpGdW3PJ18jQvEzpe191AJhGk
         7z2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9AgllV2sCt6wvnlS5xJUgW8KLOUbF1tNBbgNMitgP/Y=;
        b=ZPw8+xiLGfFkUh0HX/uhHwFWqaxPQ/7knrtu15GCqmM5Yz5GI924WfRHTWre8CY+xp
         WQclBwiTZLB8xkFVX712VKCIDkobvKs5eWAmmENMwQ+ozHFtSgbVYt66fNbAprSrVZUs
         OTHsukrpXXdHV1fiaGC6ldz174Sqs5td1o3sCftDhunQYRnrcKqMoeYtzEAvaVE9edMX
         XRqgKkcrbh+5JJ1S+2mwoAUaG2W+UJu+PHYsLrukVrTOFej8OTm+bUzZq5YGAzgmbLoL
         lDGVC+/O1L9AUZRy8PxdAfRIMUITtXrUbjHx9JMLT+JKaZcptwzhyiyoAVGgmaT7FRUd
         3b3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWjzm/le4uRbcNHCg/7tUG+NqJT4n+osAuuKl901OGDKP1LJScw
	PYCHPHT53ZunG+DxDdShUTs=
X-Google-Smtp-Source: APXvYqy7pzaOC+2fADBksYoCfMYrE2oBmaZ4P2Q8eYrmjVH7iDRl0n1+i7ipjUIHpIWbQxXpR9v1QQ==
X-Received: by 2002:aa7:9aaf:: with SMTP id x15mr34697474pfi.214.1565585242438;
        Sun, 11 Aug 2019 21:47:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e2d2:: with SMTP id fr18ls2434500pjb.5.gmail; Sun,
 11 Aug 2019 21:47:22 -0700 (PDT)
X-Received: by 2002:a17:902:8d91:: with SMTP id v17mr13350966plo.88.1565585242280;
        Sun, 11 Aug 2019 21:47:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565585242; cv=pass;
        d=google.com; s=arc-20160816;
        b=EDxdlhCuP0OOSGZcYYcdBYAPnyU1sL5M1jyWLGh/FIb943NaS3SlX8lGqpzBrv3R3M
         /cVAc0SkpZ7NzCky2sJVl1Uwa1rtSzkvTBRY6qSGKmz8SuGfrf6AGUd37DGxBlUVwS+G
         yI5IzLlQu0y/CMuUAYGKhNPabqnogp/bd2ADbm4iao5cATZzDo2/fv3sH0GgIif2fFNU
         v7g83t+9v8ScKi6d5pkJoUfnB8yZPgPHcNyS0hLS0SUK3wiZfI9ARMmr04DuD/51OQaG
         tBIOXMtnrI7GA5nfgIMOPxlNUr8GIDBvixi0fsnE5247u9oisEukHxPv3po2wMW6nUVE
         1Ufg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=600OC8eie1woCTMKQcwlX592dEb/QW50tKbkbqXBqac=;
        b=LDMOHFJdVfrZOJWvNhTnPJnEJlW69lrVlXuyqk404cOJ++G0U52kqmYvK6e/gFvaPH
         uBpsv8XdmvtExd6MZppcJ5HwLnu5RdmHBbQkk8oZZ8FKD0xC1WqINr4J+eE3pFmb6u3x
         UdXRcMUaeMv2m2JMF+h9qVBUbwbVqjJ8cG8/BnO1PejHDkl5IKM964k+3TftyZsOVjyP
         d0EyYKPqrfXWXFxS0+dwgYOpFH4da9irqawfjfcJLTfGHmcrd57h/HVpXussg2Z4g5QB
         FzAgQoD6Y1OH4/hHLBkVZ2go9SqDEqCTgIhmiLidSEP9Kt5lPpdIg4jACujZY3Lt66if
         mkbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@wavecomp.com header.s=selector2 header.b=KKTYzklP;
       arc=pass (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass fromdomain=mips.com);
       spf=pass (google.com: domain of pburton@wavecomp.com designates 40.107.81.94 as permitted sender) smtp.mailfrom=pburton@wavecomp.com
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (mail-eopbgr810094.outbound.protection.outlook.com. [40.107.81.94])
        by gmr-mx.google.com with ESMTPS id cm10si4569939plb.0.2019.08.11.21.47.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 21:47:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of pburton@wavecomp.com designates 40.107.81.94 as permitted sender) client-ip=40.107.81.94;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FvZLI8+oQxLIGjL63N3gwxjtythMb6Hm0vJzVp9mg3Y6Bf3kv5HVUAkbWbudJsXfHejTCKT3XD13mYnexq7aONbKQBbxbpyZFzUAVVy+o3WDwzpHk0wORk6e5ASGd1Z8IvebLynN386esRjt7BTD8/opHLNvOZxPRfeAwilkj36n/r6MBPLPBNvx8iEdIkQFL73cA55P9M1u6bMSCFUC9EiVMGo5oatprknleug7ynqvpFFTGTrAu4csGG5bxo/lVoVKNw19GXsUUv3lVOms+4cqmFi3t3v7NuNz0Fj9xu2sGTo4s+k7SbV/sl9FyD2OXiCJFZOaFQIQKOyRSWlmsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=600OC8eie1woCTMKQcwlX592dEb/QW50tKbkbqXBqac=;
 b=R8+j7nNYEC2QBaXPTih4twNpyAg2aqbD7iIvFDnBjZ6mPZhmf5QNttYghaQSMJr8fcFCLsG36iTf3YaV57qtaiHilxeCzhyLMNwhGdl6OcV04iJ0RYZCoYdq23vqITjUzXqOj2umkO0y/M4H0wN4tHVtyd1lFwxw7sdZzHgoo4B3lOFomZrbsfusxqbqj21CB9iz52aJ0u/H7/2HE+We4Kn6U4KQgHzNHieGOEIeWmSjvDfpgfhs8WO6lumEJkJRSPqdz7xEYR3VZKE2UT0MHP/ISC1dKarSl1wlBD1ZcPLZnYTF1lueN4u9lP+C3iyZ9H5klkmS2YExaVtLJ1Vddg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wavecomp.com; dmarc=pass action=none header.from=mips.com;
 dkim=pass header.d=mips.com; arc=none
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com (10.172.60.12) by
 MWHPR2201MB1469.namprd22.prod.outlook.com (10.174.170.142) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.22; Mon, 12 Aug 2019 04:47:20 +0000
Received: from MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f566:bf1f:dcd:862c]) by MWHPR2201MB1277.namprd22.prod.outlook.com
 ([fe80::f566:bf1f:dcd:862c%10]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 04:47:20 +0000
From: Paul Burton <paul.burton@mips.com>
To: Nathan Chancellor <natechancellor@gmail.com>
CC: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <pburton@wavecomp.com>,
	James Hogan <jhogan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
	"linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <natechancellor@gmail.com>, "linux-mips@vger.kernel.org"
	<linux-mips@vger.kernel.org>
Subject: Re: [PATCH 2/5] MIPS/ptrace: Update mips_get_syscall_arg's return
 type
Thread-Topic: [PATCH 2/5] MIPS/ptrace: Update mips_get_syscall_arg's return
 type
Thread-Index: AQHVUMkFJUA2gB3zTEG/0sWsQvg0eA==
Date: Mon, 12 Aug 2019 04:47:19 +0000
Message-ID: <MWHPR2201MB127735989B4545BE3F64C566C1D30@MWHPR2201MB1277.namprd22.prod.outlook.com>
References: <20190812033120.43013-3-natechancellor@gmail.com>
In-Reply-To: <20190812033120.43013-3-natechancellor@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR21CA0030.namprd21.prod.outlook.com
 (2603:10b6:a03:114::40) To MWHPR2201MB1277.namprd22.prod.outlook.com
 (2603:10b6:301:18::12)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2601:646:8a00:9810:9d6:9cca:ff8c:efe0]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 22c75ca8-3edd-43a1-5a46-08d71ee0282a
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);SRVR:MWHPR2201MB1469;
x-ms-traffictypediagnostic: MWHPR2201MB1469:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR2201MB1469991CC773E2FB5DF28D6BC1D30@MWHPR2201MB1469.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(376002)(136003)(346002)(366004)(39830400003)(396003)(189003)(199004)(6306002)(81156014)(81166006)(8676002)(14454004)(9686003)(99286004)(446003)(7736002)(11346002)(42882007)(486006)(966005)(2906002)(476003)(25786009)(478600001)(8936002)(54906003)(229853002)(55016002)(6916009)(6436002)(1411001)(102836004)(52116002)(316002)(76176011)(71190400001)(71200400001)(66946007)(7696005)(64756008)(66556008)(66446008)(386003)(15650500001)(6506007)(186003)(66476007)(74316002)(256004)(14444005)(6246003)(46003)(33656002)(5660300002)(52536014)(44832011)(6116002)(4326008)(305945005)(53936002);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR2201MB1469;H:MWHPR2201MB1277.namprd22.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Nm20rIrc5vqChLvZ48osxILkQqj18Kf0p48gCHWiDCMSys6N3W3xXmD8S6h2ZK2Pa9+ZsW1yw3hvP3ZdOAdpRAX3B63Wb1YCZctWHWlczboQ21wmHP9/9quxgQO/mRxzfSDQ9c6LSURitXwqhpgn7AF2nYfmUZZiQOsj5F+hfi8WJpC2ez9gRF+Xt+f7wyyw1d+bm4u6QZq/Ku7Oy1fPCoBdb9Rc//A3OgebpyEgnn09aKddt48PFjJEAstdpQUBWc3nsvCVvz/iFeT8hWt6X5+G7QZxHHS90628zE4jr2aD9r6FpdOtI3mza/ogIvWPy6NvDDS3JmeOglH9kPCJPuJrfwkA35yEpMLhIEYGkc2j0i4ckBGG+mSY//XVnLokuapQ3Nuuqwgc/AC1Zg0SGQwdi0nFRtj21Z+v1xgEHvI=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22c75ca8-3edd-43a1-5a46-08d71ee0282a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 04:47:19.8543
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oIlIb3+tiHt9kJSlExozhGD8jxNSOYX+PH0WsmB8c7zL5NFNtzh12UyqGq4+NwSciHguzyerk0v+dENwou3GWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR2201MB1469
X-Original-Sender: paul.burton@mips.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@wavecomp.com header.s=selector2 header.b=KKTYzklP;       arc=pass
 (i=1 spf=pass spfdomain=wavecomp.com dkim=pass dkdomain=mips.com dmarc=pass
 fromdomain=mips.com);       spf=pass (google.com: domain of
 pburton@wavecomp.com designates 40.107.81.94 as permitted sender) smtp.mailfrom=pburton@wavecomp.com
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

Hello,

Nathan Chancellor wrote:
> clang warns:
> 
> arch/mips/include/asm/syscall.h:136:3: error: variable 'ret' is
> uninitialized when used here [-Werror,-Wuninitialized]
>                 ret |= mips_get_syscall_arg(args++, task, regs, i++);
>                 ^~~
> arch/mips/include/asm/syscall.h:129:9: note: initialize the variable
> 'ret' to silence this warning
>         int ret;
>                ^
>                 = 0
> 1 error generated.
> 
> It's not wrong; however, it's not an issue in practice because ret is
> only assigned to, not read from. ret could just be initialized to zero
> but looking into it further, ret has been unused since it was first
> added in 2012 so just get rid of it and update mips_get_syscall_arg's
> return type since none of the return values are ever checked. If it is
> ever needed again, this commit can be reverted and ret can be properly
> initialized.

Applied to mips-next.

> commit 077ff3be06e8
> https://git.kernel.org/mips/c/077ff3be06e8
> 
> Fixes: c0ff3c53d4f9 ("MIPS: Enable HAVE_ARCH_TRACEHOOK.")
> Link: https://github.com/ClangBuiltLinux/linux/issues/604
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Paul Burton <paul.burton@mips.com>

Thanks,
    Paul

[ This message was auto-generated; if you believe anything is incorrect
  then please email paul.burton@mips.com to report it. ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/MWHPR2201MB127735989B4545BE3F64C566C1D30%40MWHPR2201MB1277.namprd22.prod.outlook.com.
