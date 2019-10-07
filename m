Return-Path: <clang-built-linux+bncBCL45KXZ74FBBGFE53WAKGQEYURMVNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id B32A8CECC2
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Oct 2019 21:29:30 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id y2sf9229861plk.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 12:29:30 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1570476569; cv=pass;
        d=google.com; s=arc-20160816;
        b=eLpX7XnbNZMJllUPpGUN4JtyaV/a1r0jrzlm8YHTtE5TT9dW3MCcGcWxWq6b67iEps
         VZK5jzKNUMKlJGO36UJAK3KxfGIEiavamWjQJkcxO7AqemnulnfnJ5L+iHY6Qv09ZFlZ
         nmyFnkM4fQVjN3wcpIl38E54hsEfJRtR/oI4cH4BRP04OaljBWcYNixd9xlB8qTm4yKb
         X1JMwgfJnrgnMMnBsAeBa8tj/cVgexdyrRXoJfuFYzA1Wl9nQ/8E+M6OP1QXo/jXxyvA
         oiEi8oSsozBzfr61Dmaj0RdWX4UrvzFhg8pgLpSflDQ11pSNsKLnmoUli/Ffh1f/DmbC
         Be5A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:references:message-id:date
         :thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=Fh5zZHsPYlZgRii437AbrUsXm40xFfHBdjA0RJcxyfI=;
        b=oI8RsB9RfmcIdytBW1uDu2VZaN7iNgpH0+bOskSeEaO5JU/mXlDX6RTGES9jvPwHJl
         kQplVfcCRWb3JpJBt0as10tpZ/svwr+AQZigH9YcKUZMnEfQjKhwhdp4QEOCCjG5/o2L
         3LA+FN9k6xZUXHBlIhz6gef/lsaQurw0NFK7AxOnIg978wBJDdjndLpybcPC8vH4VSL3
         vV+E4fKRmXx2nT0rV8e7UdBHhfNrjWbDeWILUdxyDqAskTsz+8I/qVG+YGX01Su3OGe7
         umC5tfOqATZweGy8OXHJ/hXiezXHqr+Ll5FcY/uwiR/RIVHNgBvmTzzh8oUyLZdgN+YQ
         AyjA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@vmware.com header.s=selector2 header.b=dKBl5br6;
       arc=pass (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass fromdomain=vmware.com);
       spf=pass (google.com: domain of thellstrom@vmware.com designates 40.107.68.70 as permitted sender) smtp.mailfrom=thellstrom@vmware.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=vmware.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:accept-language:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fh5zZHsPYlZgRii437AbrUsXm40xFfHBdjA0RJcxyfI=;
        b=MtOhvEfZY5nqZ8iU4ByBWN1LOKmz3jmRmDwWiT54xXb3tZF0GmRl5YtBaVLHiI2p2h
         gEzwuVT4CaiaahVib8vvAOU9b6BHFdLlG1gmq7q5hDdTAJKdarn9o2hcszt3Nng0j9WT
         UQuAOucQ6G+iCA8PQZjyLoVQd90w1ynr6zS8dHeyFOa4/xlOgN/XbXYL099zhKfpivKN
         JgBPcRBJ0mmk2u8glXFrNvdAI5Y4jXU3/YWItXjWqhAilcyafgfSz2gfXnBJg5avs7qd
         bSyq4GQr6xFbLESihMsyqCaQl4fbSovUfyzysXV0YUOjWPi1oxcXbLZjjhxvVl4CyXdK
         Duzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fh5zZHsPYlZgRii437AbrUsXm40xFfHBdjA0RJcxyfI=;
        b=UZfH/gje0AbJIARhJQM8TzpPK7H49h9BgbGW3KKjucvewu0d1MYopJoBvE2q3mf/UC
         l+eezh8Jm0KImKHYmV+xUBJ60w7c9wSNadrcjLwYZbNt1GGJuv2RCmPO7gs+NYXcVpIO
         bUurkh+wE1L0NHho3Jd67rw3hhhDedgb+j1JxD9Di+rGJQw+UnZP1GiIM6iDNRk3IXyk
         5zZei6hMSqkR0ixprVT5RvOEls0uo8T+7yn9u4Vo2Db6kJKx1BGXNG5eVNcMRqOVLFMM
         OuLZjP5qeEfGArcp6QMQv2MO5tAHx3WQmx7L3J8YVvHPnlfnJRMavloz/3c4+7vZ7bkS
         NC+A==
X-Gm-Message-State: APjAAAWFUdk0a5GRTU6bxPf46U2qmnLDWIeqiTKsfOmKeGNTbcHxXkXl
	fxgC7DbG5xcaiGJb3vYiHlg=
X-Google-Smtp-Source: APXvYqx4y2A5nL4KwVoRZmcHLoPF3xNOBwZWmPopy41fAdVyiPOjRhqZsMBz799MN44LZaA1yvEqUA==
X-Received: by 2002:a63:c449:: with SMTP id m9mr5791455pgg.159.1570476568972;
        Mon, 07 Oct 2019 12:29:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6204:: with SMTP id w4ls241892pfb.6.gmail; Mon, 07 Oct
 2019 12:29:28 -0700 (PDT)
X-Received: by 2002:a62:5847:: with SMTP id m68mr34718734pfb.23.1570476568578;
        Mon, 07 Oct 2019 12:29:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570476568; cv=pass;
        d=google.com; s=arc-20160816;
        b=kBk6wkPiZxDA6lvOU7lMOVlJX43plgJwrDLTqkKUhl0QJvFWtRHX8D2rcCBknd5BE0
         VBMJu6J0zmfVgXzbOhYgUJVROOqkWamfFiMjLyq1FKnnHTVidhVIP4FjB1qIcjHveIwn
         /h8qDhAeAhiP2axxgEjWrFd2k09unFcyW3LrdqmAFXj/bXg4GImomoqCAYgRy2MRuYd7
         1/ugOf1AB7cPgXVF3o6v1HY6GkV//8gXc0V5WHQ9OZ5egTjsUu7Muml7f7a3wQZU7VFv
         QVklmXAF7iLaFxKOOletTbGBhRQdm4VbzJhoZ6jta1FbLrhQqm9UgUGj50uqRKmmmjP1
         9o7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=ONPJpe0AbrFj6+FCCIflefygHdTt0Cld+Qu7CYsUMwE=;
        b=BD9UgyxTP8e6EnModKHOwrVadMwXtFn1tXHpizsqaZlwcZ1soNpDBu6FTYex28LtT/
         ZccvzAGXvXR4VcYQIG2OJ+FlX31LlSy/vJhju4l+JvzZ7l7Wb2oWfxJ7iz1z5GtWHjOj
         oD1MznoMIsUyDMslTSNq5TjogcEd8z90VtPdRwzSmsMg5OBwUOe/pvwijwuJ+DKSHWLn
         lEmQ5bFmsz4o3ViwMpa6enCzTooIxOzOA8TZjPATmJIY4WUiF4Jx4LarHlz9Lwv2Ipzx
         Jt3TNdSPTKB5JqF2tIibwM783fAwnygStDAYPhK3dxBKwItW3JYY5Lm2oMfONUXXWye5
         kTmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@vmware.com header.s=selector2 header.b=dKBl5br6;
       arc=pass (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass fromdomain=vmware.com);
       spf=pass (google.com: domain of thellstrom@vmware.com designates 40.107.68.70 as permitted sender) smtp.mailfrom=thellstrom@vmware.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=vmware.com
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (mail-eopbgr680070.outbound.protection.outlook.com. [40.107.68.70])
        by gmr-mx.google.com with ESMTPS id b1si11637pjw.1.2019.10.07.12.29.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 07 Oct 2019 12:29:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of thellstrom@vmware.com designates 40.107.68.70 as permitted sender) client-ip=40.107.68.70;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lCmBR35CGz8h6hs7mAcgNq/RWFYRn8Umf8lvuChT7bQBtoeR6PTJzq1clAQigebO3IG3cl1BC6YxFw0mUxVQTeuZgzFN+8+8NCFLT9Y8gCrEd/q75UeAPvdLs/1MJkVtWcfSDEfVRY6l04aEVu/wIyDKB6vqFxQ+tkOQ6mPMRr/fYGQXoZnySps/JmzIljMs5xi9LsbZsDpcjw2DfiZU4O7pjXtOpmKGSxR9dsmspDEl96E6wgIeCCrEau9enZfAN0Tc0Uc4ePtETj+qARn/LGPBqRE4vGaHTxv55ODIEQxCbtoC/t2sbEPkpelvKgfojsUIFIfY3qOKC5wuCoKbwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ONPJpe0AbrFj6+FCCIflefygHdTt0Cld+Qu7CYsUMwE=;
 b=ogd0k16FQE8KBPxk24GtN8JmCpV2kUBDaJ3L4+h8ynSzb9g7KCCXuzB+7OjeMiiXjYMWUFhANqcOe56zDZELyzuptZveEyGayI6Q5ZZvy+HLgnP1d9D2+aaxCkRPtzkBA7WtqpsCrDS2tcwo8EVZStDdB6/oDQdjVFtTXvm1b3V4r88i0OxKgFKs7e0DogskzWxktV+vzZ0/0U4dGRIy4yrOmsof/I+Nc3Z9Xo12cap4urmxaMqjY4pDhTklqNZayVULwtwGM/TnSs17B5TPgL2L5yDgKwjiGBBhR8FN1GxA6qaTwVlBOMbKmLN34m9zCivhZEes9UaPgMRm0p5hHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vmware.com; dmarc=pass action=none header.from=vmware.com;
 dkim=pass header.d=vmware.com; arc=none
Received: from MN2PR05MB6141.namprd05.prod.outlook.com (20.178.241.217) by
 MN2PR05MB6912.namprd05.prod.outlook.com (10.255.90.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.13; Mon, 7 Oct 2019 19:29:26 +0000
Received: from MN2PR05MB6141.namprd05.prod.outlook.com
 ([fe80::286f:c413:5df1:4eb9]) by MN2PR05MB6141.namprd05.prod.outlook.com
 ([fe80::286f:c413:5df1:4eb9%4]) with mapi id 15.20.2347.014; Mon, 7 Oct 2019
 19:29:26 +0000
From: "'Thomas Hellstrom' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Sami Tolvanen <samitolvanen@google.com>, Pv-drivers
	<Pv-drivers@vmware.com>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar
	<mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
CC: "hpa@zytor.com" <hpa@zytor.com>, Kees Cook <keescook@chromium.org>,
	"x86@kernel.org" <x86@kernel.org>,
	"virtualization@lists.linux-foundation.org"
	<virtualization@lists.linux-foundation.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] x86/cpu/vmware: use the full form of inl in VMWARE_PORT
Thread-Topic: [PATCH] x86/cpu/vmware: use the full form of inl in VMWARE_PORT
Thread-Index: AQHVfURwrG7JjV813kemwOGXD7IdVA==
Date: Mon, 7 Oct 2019 19:29:25 +0000
Message-ID: <MN2PR05MB61419440A3C9FF9CB920BCD5A19B0@MN2PR05MB6141.namprd05.prod.outlook.com>
References: <20191007192129.104336-1-samitolvanen@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [155.4.205.35]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8314af5d-5b1d-4eb9-afe3-08d74b5caa32
x-ms-traffictypediagnostic: MN2PR05MB6912:|MN2PR05MB6912:
x-ld-processed: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR05MB69120503596FB5AA1B42395CA19B0@MN2PR05MB6912.namprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(366004)(346002)(376002)(396003)(136003)(39860400002)(189003)(199004)(186003)(14444005)(102836004)(55016002)(7416002)(71200400001)(25786009)(4326008)(54906003)(110136005)(52536014)(99286004)(33656002)(53546011)(6506007)(316002)(476003)(71190400001)(6246003)(305945005)(74316002)(26005)(486006)(7696005)(5660300002)(256004)(4744005)(76176011)(7736002)(446003)(229853002)(81166006)(81156014)(478600001)(2906002)(86362001)(8676002)(76116006)(66066001)(66476007)(91956017)(14454004)(6436002)(3846002)(64756008)(66446008)(6116002)(8936002)(9686003)(66556008)(66946007);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR05MB6912;H:MN2PR05MB6141.namprd05.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: vmware.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Sots98vnudO2iJgRJHKwklC+krB10B8BMcpTAt6BgYSZ50SxnKkGXvYfMLGG8C8YjsaHi3iFvLGcbLmlW2gZonyN3QrxFqqQWHKEzFWGrVVMd+OFZAXWdPQ/V1SqsbpofacWDst8CqC3e47KfdbfQR1QmXs8zIAzogCzFY3drgckPN+0Pp+/ZKsEqpPJL58jPBRTqYPirl6Wxy5jYYTdtYEop69Corm8tE3UNMbLnKc0LZGqNSF2pC54c3DjYS0wPF6UGYYzLWPl4HEgxcBs4PjV1sHfWXcOORpk+C12YAI0L2eRCWy+zpGusgbcXGlLJrqBjNk3gXCIci10vQOaFUWwaiv+AF97iQKnVHvlMP76HkZPZHIrokcbiC1Qv2IyN/iONDACrhngWplz7VhcPs4+Pa9++SEQDRs72YNOseI=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8314af5d-5b1d-4eb9-afe3-08d74b5caa32
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2019 19:29:25.8468
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V5etzFhNZZ2Wr/12WoULnQ+iOCMY5vynmCkPI5iSobh1Z3uvF1rox7eZJuVxBRzx3RoNIdIesHtLYrmOgitvDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR05MB6912
X-Original-Sender: thellstrom@vmware.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@vmware.com header.s=selector2 header.b=dKBl5br6;       arc=pass
 (i=1 spf=pass spfdomain=vmware.com dkim=pass dkdomain=vmware.com dmarc=pass
 fromdomain=vmware.com);       spf=pass (google.com: domain of
 thellstrom@vmware.com designates 40.107.68.70 as permitted sender)
 smtp.mailfrom=thellstrom@vmware.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=vmware.com
X-Original-From: Thomas Hellstrom <thellstrom@vmware.com>
Reply-To: Thomas Hellstrom <thellstrom@vmware.com>
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

On 10/7/19 9:21 PM, Sami Tolvanen wrote:
> LLVM's assembler doesn't accept the short form inl (%%dx) instruction,
> but instead insists on the output register to be explicitly specified:
>
>   <inline asm>:1:7: error: invalid operand for instruction
>           inl (%dx)
>              ^
>   LLVM ERROR: Error parsing inline asm
>
> Use the full form of the instruction to fix the build.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Acked-by: Thomas Hellstrom <thellstrom@vmware.com>

> ---
>  arch/x86/kernel/cpu/vmware.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/x86/kernel/cpu/vmware.c b/arch/x86/kernel/cpu/vmware.c
> index 9735139cfdf8..46d732696c1c 100644
> --- a/arch/x86/kernel/cpu/vmware.c
> +++ b/arch/x86/kernel/cpu/vmware.c
> @@ -49,7 +49,7 @@
>  #define VMWARE_CMD_VCPU_RESERVED 31
>  
>  #define VMWARE_PORT(cmd, eax, ebx, ecx, edx)				\
> -	__asm__("inl (%%dx)" :						\
> +	__asm__("inl (%%dx), %%eax" :					\
>  		"=a"(eax), "=c"(ecx), "=d"(edx), "=b"(ebx) :		\
>  		"a"(VMWARE_HYPERVISOR_MAGIC),				\
>  		"c"(VMWARE_CMD_##cmd),					\


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/MN2PR05MB61419440A3C9FF9CB920BCD5A19B0%40MN2PR05MB6141.namprd05.prod.outlook.com.
