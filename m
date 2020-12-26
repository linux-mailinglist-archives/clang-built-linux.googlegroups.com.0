Return-Path: <clang-built-linux+bncBCVLJ7OQWEPBBVWPTP7QKGQE7S4UUKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id C94952E2D9B
	for <lists+clang-built-linux@lfdr.de>; Sat, 26 Dec 2020 08:35:52 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id kk4sf4186011pjb.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Dec 2020 23:35:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608968151; cv=pass;
        d=google.com; s=arc-20160816;
        b=ivyrqSqqGVZtH16YRrivdodebCjpr3LtOVB4UXf1m9qxTAVMni9dQrptVApu19H5Gz
         dU38cphxXj2eO8wTTAKH7JPz8Go1eslZkbXMSfRjLWlHcZXgPjyXbUstuJc8wqNN0nAW
         YAvcSZKcW6APc9YO/ShvyozfRdFFiLpWJ0yBNsMOWTtWCmnSrWvjjSIHprJ9ZPj2RQ2l
         iyu4bgeQwtIfOos/r16Y5FIqFX1IOs8sP4L04sCT/ZFih8O2iTaxBPizF1qXk9fwbQq9
         xm1J2/6YIP+2fW8oZr9/C372HopP5sWe+QtZ3cutzpgBjLpxGlEFLIykKykuq8urXgwu
         cYnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:from:cc:to:subject
         :content-transfer-encoding:mime-version:references:in-reply-to
         :user-agent:date:dkim-filter:sender:dkim-signature;
        bh=fAttXU3BbeOoh1dfdKPKRWabmKytU87lZzww/6dkN+A=;
        b=utKAcxYpCzIU+PCkMJ7pcg7bgneQ4P324w7BxoYf1ivW5SAaCScpTD6lRXweU1m615
         KHh0Smctst+maIR5EP7vbkvlDrmdku2euqwQb3kvDIVfdWTO6hgMFRbRI82fzh2EXJBH
         kz5vODume1IOjEGKXQ70nRweD7fe0fmW1lvbDqkTC1gHhDMktp3kdyi+2e69pnPBxpbw
         Z1KsdkseuY2cHP5jB3LzHh2tkJDFBS7D7h6gC53wSSTh2/r8I4R2xL1giRPAMPEZR8eY
         KKmlJSzXbHtjBwmLbHXIX34Ia2rQ3b2v5WO0Pyk1bX9JQVvuG+pFrSkIMxY07he13T4B
         //AA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020112401 header.b="T4GiYWZ/";
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:date:user-agent:in-reply-to:references
         :mime-version:content-transfer-encoding:subject:to:cc:from
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fAttXU3BbeOoh1dfdKPKRWabmKytU87lZzww/6dkN+A=;
        b=W2kLPD1lHoem/YBl8tdVTG4EiarRgpHnRKMrEWHfg3szWYw2cmBw0v/ZaSdSaaHgWK
         va1wlP21W0niAsaBAFg+tAubX+xIX0so/zEPl1AV01n9F1FElhmENH4LHfhdNqTqFa/H
         BYIpB53CUm6SVL4Tf2qGhb5do2DmVFnMacIsUR/Di/+GnJW0S1m8E9aEGbiqqPCsiQZQ
         cd9PZwaWDhxQ1aNc3F7Nos0QBLp6tfy8ZCCWkXtiLkbDKrQucjMq3T41/cSi79FM4VZs
         DXrqyPlWCI+CXRKrzb7lrzLN6DosQNrU/FAwGx45swepOBZ6BEiMBQT+IipIKENOon63
         hjeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:date:user-agent:in-reply-to
         :references:mime-version:content-transfer-encoding:subject:to:cc
         :from:message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fAttXU3BbeOoh1dfdKPKRWabmKytU87lZzww/6dkN+A=;
        b=thISdWtb5twfwiVXu/Kgl1jnBjeYOX+2fBtTZwxXqRI7IPuNvzCoaZJzJLvxXIp/W2
         kILS0bPcUx3MSmfgd2v9sxug9nOfXCpvL0sWZgZb6pfl7f+bp210qWDftiErcLWDcyF6
         hqCHaY25pjyaBDD1gnMY/h1Qav1kOp4Ox8+aYDwU5NbkSw8lhf5iBM7o+SvIB6ZVzqe+
         K7eFQVLE1n+FzK0/LI+7fXDpHU3TRsXVEfazpiq9hyBUbI3xln7xKm3rxOO9pDVqemf+
         RVWeJ4YT625VFwP8Yq+LJvyYNnWn9n4RdbCTamceMtlhg+srPy540UTpMAW64EOLRljP
         eeWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TLjrXivAvSfGj8YUlU+8GnxS3qD/QPYDSbfm6yb5tBldq1oTL
	7n7vv/yu5kBwx1fxwjVEYkk=
X-Google-Smtp-Source: ABdhPJymzYCr5R0JqZC8Yxonq9QiKjMYrHh0dKjpLawRoYNQDkX225B4HMkOCV5y2XF07+fVY9MvMA==
X-Received: by 2002:a17:902:8541:b029:da:fcd1:7bf with SMTP id d1-20020a1709028541b02900dafcd107bfmr36037183plo.56.1608968151042;
        Fri, 25 Dec 2020 23:35:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a609:: with SMTP id u9ls13946370plq.7.gmail; Fri, 25
 Dec 2020 23:35:50 -0800 (PST)
X-Received: by 2002:a17:90a:d494:: with SMTP id s20mr11957307pju.178.1608968150431;
        Fri, 25 Dec 2020 23:35:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608968150; cv=none;
        d=google.com; s=arc-20160816;
        b=uK4KlRTjnqqhIVwSVTWp879ujjS7gDgDGtEowREtF2L1cRt4YcVxMEoA/BJLKfHoo2
         jfrWgNbDd2YPWySIkI9fo3+y514Micyarel1MEQ6ckCIiGZHmcu9SHdoudJfvrLKIYNg
         Cm0lkG879o6SaGOCDiCv15yZcO71BcPb3VJwj2U0jZEk9uK10/5gPjBKXK8vMAnJDEMC
         nZEeT7XqXSBPyt/BS7JHl5MQRQX/jk+OGXpneybtMsYzPBkRTeTrf6Qf7n+5n5sa6vva
         sN4yRjfGj1ngXsWchztppCSFGZkmi7k3wHci4FRNzJPP2O1pNKJcqHVN+GvhMN0XVi2l
         drPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:cc:to:subject:content-transfer-encoding
         :mime-version:references:in-reply-to:user-agent:date:dkim-signature
         :dkim-filter;
        bh=ThqNBZY49YARTr9BrAiKVbq1UzyshrhkR+ie4Ruo14s=;
        b=u2qoBw/3fnpyPxbdNcZsqWLycADyjSxozuZh8edQdK3TUf+iawA4lA5nBW3ZRQ1dXy
         ht0w7jnygjm9HahqCH51sKPUj9GVHZn674NXBDsJU7I7/DJlxwxY1crC1o+pEUDJCO45
         p8W11hobzGXpYPQQ7Cm4LY3/oGrsKXwQYXTcgzY5umv23xuZD5s9klAUpyVB4exKiqnp
         SAbpX62okQs3BjMLym2oufnWVs/DUpAvdk4hIXOml4YG3J/YgH+yUNu3JDQaudG1pAjt
         SGy+w0fFleHrt9f69cj/88CETtGekWOOQkbZharSGFr5ayYDdcUZ0FdPBYhM8jyZEWJr
         R/Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020112401 header.b="T4GiYWZ/";
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
Received: from mail.zytor.com (terminus.zytor.com. [198.137.202.136])
        by gmr-mx.google.com with ESMTPS id f15si2401064pgf.3.2020.12.25.23.35.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Dec 2020 23:35:50 -0800 (PST)
Received-SPF: pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) client-ip=198.137.202.136;
Received: from [IPv6:2601:646:8680:a581:d14d:32a7:89c6:43d1] ([IPv6:2601:646:8680:a581:d14d:32a7:89c6:43d1])
	(authenticated bits=0)
	by mail.zytor.com (8.16.1/8.15.2) with ESMTPSA id 0BQ7ZZEF1648151
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Fri, 25 Dec 2020 23:35:38 -0800
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 0BQ7ZZEF1648151
Date: Fri, 25 Dec 2020 23:35:28 -0800
User-Agent: K-9 Mail for Android
In-Reply-To: <cceb074c-861c-d716-5e19-834a8492f245@gmail.com>
References: <cceb074c-861c-d716-5e19-834a8492f245@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] arch/x86: Propagate $(CLANG_FLAGS) to $(REALMODE_FLAGS)
To: John Millikin <jmillikin@gmail.com>, x86@kernel.org,
        linux-kernel@vger.kernel.org
CC: clang-built-linux@googlegroups.com, Thomas Gleixner <tglx@linutronix.de>,
        Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
        John Millikin <john@john-millikin.com>
From: hpa@zytor.com
Message-ID: <37DE7046-5096-4C0C-A96D-FD168A849DFD@zytor.com>
X-Original-Sender: hpa@zytor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=fail
 header.i=@zytor.com header.s=2020112401 header.b="T4GiYWZ/";       spf=pass
 (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted
 sender) smtp.mailfrom=hpa@zytor.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zytor.com
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

On December 25, 2020 11:29:30 PM PST, John Millikin <jmillikin@gmail.com> w=
rote:
>When compiling with Clang, the `$(CLANG_FLAGS)' variable contains
>additional flags needed to cross-compile C and Assembly sources:
>
>* `-no-integrated-as' tells clang to assemble with GNU Assembler
>=C2=A0 instead of its built-in LLVM assembler. This flag is set by default
>=C2=A0 unless `LLVM_IAS=3D1' is set, because the LLVM assembler can't yet
>=C2=A0 parse certain GNU extensions.
>
>* `--target' sets the target architecture when cross-compiling. This
>=C2=A0 flag must be set for both compilation and assembly (`KBUILD_AFLAGS'=
)
>=C2=A0 to support architecture-specific assembler directives.
>
>Signed-off-by: John Millikin <john@john-millikin.com>
>---
>=C2=A0arch/x86/Makefile | 5 +++++
>=C2=A01 file changed, 5 insertions(+)
>
>diff --git a/arch/x86/Makefile b/arch/x86/Makefile
>index 7116da3980be..725c65532482 100644
>--- a/arch/x86/Makefile
>+++ b/arch/x86/Makefile
>@@ -33,6 +33,11 @@ REALMODE_CFLAGS +=3D -ffreestanding
>=C2=A0REALMODE_CFLAGS +=3D -fno-stack-protector
>=C2=A0REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS),
>-Wno-address-of-packed-member)
>=C2=A0REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS),
>$(cc_stack_align4))
>+
>+ifdef CONFIG_CC_IS_CLANG
>+REALMODE_CFLAGS +=3D $(CLANG_FLAGS)
>+endif
>+
>=C2=A0export REALMODE_CFLAGS
>=C2=A0
>=C2=A0# BITS is used as extension for files which are available in a 32 bi=
t

Why is CLANG_FLAGS non-null when unused? It would be better to centralize t=
hat.
--=20
Sent from my Android device with K-9 Mail. Please excuse my brevity.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/37DE7046-5096-4C0C-A96D-FD168A849DFD%40zytor.com.
