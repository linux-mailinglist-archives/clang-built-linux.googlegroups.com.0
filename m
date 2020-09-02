Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVWXXT5AKGQECRCZ5ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 143EE25A4F5
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 07:21:28 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id w14sf1559660otj.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 22:21:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599024086; cv=pass;
        d=google.com; s=arc-20160816;
        b=GbTpM09/Lam/RfNVrfhlI0Zm7sZXJujNg/MRZlJCxM9towiGjuE6cgAh3o9Sbf+LRW
         tKh589NtfPDxEbaF53Ju+pEs7JkJbprBigyld6wqzsAHwA9wktYFzTvt73dSzkLMtxY0
         VlzJLX62IlGcjTn+24pNC1SiM9BdoHTnkletKVCkgiYZyg1Pd3CWJf9WlBVQsp9vlmm1
         S/b4hQHhoxO0r+7AaODWuxVLWOJmOvSvZP8l7CM/JT5wDptCvI10zcrQc1bQclwuS5Iu
         YlpjcSHWuom3byiDmxmwdd4vVqXEymkgO25CpzFxO3xJuM/qpRdbQvDGOCnqGXdJwJ0a
         WXtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=9HOMcvXY1G/m/XxWBVB6GmuMudr7CVls1kLt0fi+v4M=;
        b=G+1MF5qtfOKJQb5lTeqMTYj+/tQ+dW30yA0KuphuqMjJupxEfqWJpWvecxhUk8aChB
         9q8TtTPCdOafnFHs9l/xf6llQSuO+g56b7zwDwzgbaUzDNsvlkzFVhJ5cDLO0CONy2zT
         KVVxXxZ0/EKvv3DyVfnumuJyyBePBpCCAuE1MkG36Mb+bJtPhFPlSV2BhZDPnZpw/KSU
         4aSMfTxD2IutSdV23ypaXPoy4FvlT7qh/BRsONfBwGc6aM4Xsax0WDtD+V64XExy4zSB
         Kf2sMezLbY2aNvuYVnP2WmyBYXfEkO6Rc7qirT1NHxitLGQ7JEFXNKJ07M4W+WL3Aabu
         MeGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CoA4IxJ6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9HOMcvXY1G/m/XxWBVB6GmuMudr7CVls1kLt0fi+v4M=;
        b=AoQh2/xJQaDcKcf8w9FrLBoTIEOklg9wgrEZ/3Afnue4dfGyCYnmKNaF9C4Yi7oWtH
         LkwX7Wt2XwEqvTubqSixCvbsS4P+QMNtYitS5liL79tUwIzpuMQGFEhBpm8MSMq9k1KJ
         dy1sywSF5qOuEZMX2ki9L3ifmWNm2WiSRufrct3IEXub3niSaHSTipd0VgdCQhWBr/oN
         HNXJ6afFO/tWIb5YwH+1MA42PWV3B/GZ/LnyJRUwRdmeNze35syOBbHiMXYsDFA4FuNS
         eq7AojIkEnFRHv8/EuIWYCppc1fNvmbFPoDZGP93b8VZhdIa8hWG31DuIHo5ZjjdEQj/
         hYWg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9HOMcvXY1G/m/XxWBVB6GmuMudr7CVls1kLt0fi+v4M=;
        b=qQBFlA0vl3nW6hVWVUTOMhpDGcz1bbO3ed2Q0SM1z2uAahkgfO6xdfKByPHb78rYW8
         3v2dF/5io8kDASAJWJhwQ5fxaHfx5eilDLPltxdOZGNEwMY4I8Xv+4auaWI419pVCQtz
         Tmrs2j97sCyKlPCcw3OAqvyRQNHwm+wJdcgWcHsjDOQEf8d+nzriqK966bM24Zn/BmMx
         Il/SWVNhXH+LxyARAMylpVIhzyEMbk86W4wkTaE7UQcbcqd7V18jhyvWA3N7Jpw9S+Ta
         R3pAI4ZaQ58hs6WXFWV1KYZf0M/9CHdkMYZROP1gh9gDWv/k1sJxicm6ZcUgU7w9JCvH
         RCfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9HOMcvXY1G/m/XxWBVB6GmuMudr7CVls1kLt0fi+v4M=;
        b=IIRAHY8ZU7Dz+pFtVlFyF878SzKSx1MvG5W6ygpt6zRst5KiCo71+NGL5EZc+EUD0J
         TPv6agCiFP9+dV1JDWkbFpAa36VHGgpzsKRjU8dsIS+txRhSq0F/RCfDVw1XiA+AjZtS
         cJFvwYXUYMykgjcXL8SXj4auT6l7PM6+OGQ+81e8ChPVwujEMfOob1lS8UT6PnrWouwy
         WBsXPOYTY+gBJNQQBfpRCnvo9U12IRDhCbwdEsIeBMgYaxFeHqDbCDnofXPeaFk42ibe
         iUIzchY0tkD4vubTNFFXjVlY2Guv3TpQMzSSU96zIuZ+DgoKsfuBzXDOCVKyxUejqVLn
         L5ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330uTMete3FdnlOF77MQiaAMobz6IHtzQhX1KRrnfeMGQ2Xfwi6
	KECGPtVoOkB+mB2jl8e7Tg0=
X-Google-Smtp-Source: ABdhPJzJ5rfNILUWS3lSMflq2u3XZkv+eZRW/l37E06FuIG7LsUJxu/PgO89RtH7KS7H+R8e1Oi+UQ==
X-Received: by 2002:a4a:a192:: with SMTP id k18mr4102674ool.92.1599024086470;
        Tue, 01 Sep 2020 22:21:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:85:: with SMTP id a5ls233821oto.10.gmail; Tue, 01
 Sep 2020 22:21:26 -0700 (PDT)
X-Received: by 2002:a9d:2f03:: with SMTP id h3mr4225800otb.151.1599024086145;
        Tue, 01 Sep 2020 22:21:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599024086; cv=none;
        d=google.com; s=arc-20160816;
        b=sN+RA0ily/6cVJJyCRsIm0R5fC+BWH+n9leMglT0ffWu+D1RidSVXvI+6vAiqb932D
         RTddXvCnrMkNdD3ly3H3PsxnhZzTrdA27wQ1Og+S0x/q0cRSWu+Pr8qP+bOIhWvJv9XU
         QR24OVMffn9oaCLnnUoL//cK6EFdA7jWj31Ww4pel4+6m3blaVL2iWzg8gdeAG6oocmO
         /FUP6d+siJp1pujMYVsqx/RUSVh85fWWcxsfSADD5lIOfMpDbhpzDutippU2OfrYG3cE
         ooRH9yKkwn+EZJooQ5/fQUNNuasAHryo/zLDttHLAEVYAdQxEPAOAYCDOw1GynMQUQsC
         qq1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pUaYX9zKEjE3UC87tIgYQTtj9y801Ydigt+bunW6HZ0=;
        b=j/S/pihdRXguZKA5VNQ1/vbGb8UlWMs3NIndue5LgfvHShSKvVT4AM0JHQ2r1HJYZj
         F6RDCbOClVlJYXvZATLxMlK5uSS6Y6dUaD9A79IpYRrwlz60QWqVdQAmJQSI6Aa8UVbO
         yrGrN5r57WWyOMybRSDVI5nViqIlv0lsoszYVOrP0dZeggrYH/uxFcKYMxstARsf2bAc
         5jmk0qHjx+73bRKeOdS4AACaDLDvAfu07xsrSp5AQjssSAODl+PZWi2duRig7LQ53Nbk
         LIQ4KvaIvSgHvtIswuwAGhr+9Yamp8Rd6zE4QZntH05qC9apqvF4C67fT/OuLINeXh3M
         dOpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CoA4IxJ6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id x50si178348otb.3.2020.09.01.22.21.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 22:21:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id p4so3309496qkf.0
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 22:21:26 -0700 (PDT)
X-Received: by 2002:a05:620a:a1d:: with SMTP id i29mr1185377qka.76.1599024085579;
        Tue, 01 Sep 2020 22:21:25 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id e23sm3697017qkl.67.2020.09.01.22.21.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2020 22:21:24 -0700 (PDT)
Date: Tue, 1 Sep 2020 22:21:23 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Joe Lawrence <joe.lawrence@redhat.com>,
	Christophe Leroy <christophe.leroy@c-s.fr>,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Kees Cook <keescook@chromium.org>,
	Fangrui Song <maskray@google.com>
Subject: Re: [PATCH 0/2] link vdso with linker
Message-ID: <20200902052123.GA2687902@ubuntu-n2-xlarge-x86>
References: <20200901222523.1941988-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200901222523.1941988-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CoA4IxJ6;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Sep 01, 2020 at 03:25:21PM -0700, Nick Desaulniers wrote:
> Kees Cook is working on series that adds --orphan-section=warn to arm,
> arm64, and x86.  I noticed that ppc vdso were still using cc-ldoption
> for these which I removed.  It seems this results in that flag being
> silently dropped.
> 
> I'm very confident with the first patch, but the second needs closer
> review around the error mentioned below the fold related to the .got
> section.
> 
> Nick Desaulniers (2):
>   powerpc/vdso64: link vdso64 with linker
>   powerpc/vdso32: link vdso64 with linker
> 
>  arch/powerpc/include/asm/vdso.h         | 17 ++---------------
>  arch/powerpc/kernel/vdso32/Makefile     |  7 +++++--
>  arch/powerpc/kernel/vdso32/vdso32.lds.S |  3 ++-
>  arch/powerpc/kernel/vdso64/Makefile     |  8 ++++++--
>  arch/powerpc/kernel/vdso64/vdso64.lds.S |  1 -
>  5 files changed, 15 insertions(+), 21 deletions(-)
> 
> -- 
> 2.28.0.402.g5ffc5be6b7-goog
> 

ppc44x_defconfig and powernv_defconfig start failing with this series
when LD=ld.lld is used.


$ make -skj"$(nproc)" ARCH=powerpc CROSS_COMPILE=powerpc-linux-gnu- LLVM=1 O=out/ppc32 distclean ppc44x_defconfig uImage
ld.lld: error: relocation R_PPC_REL16_LO cannot be used against symbol __kernel_datapage_offset; recompile with -fPIC
>>> defined in arch/powerpc/kernel/vdso32/datapage.o
>>> referenced by arch/powerpc/kernel/vdso32/gettimeofday.o:(__kernel_gettimeofday)

ld.lld: error: relocation R_PPC_REL16_LO cannot be used against symbol __kernel_datapage_offset; recompile with -fPIC
>>> defined in arch/powerpc/kernel/vdso32/datapage.o
>>> referenced by arch/powerpc/kernel/vdso32/gettimeofday.o:(__kernel_clock_gettime)

ld.lld: error: relocation R_PPC_REL16_LO cannot be used against symbol __kernel_datapage_offset; recompile with -fPIC
>>> defined in arch/powerpc/kernel/vdso32/datapage.o
>>> referenced by arch/powerpc/kernel/vdso32/gettimeofday.o:(__kernel_clock_getres)

ld.lld: error: relocation R_PPC_REL16_LO cannot be used against symbol __kernel_datapage_offset; recompile with -fPIC
>>> defined in arch/powerpc/kernel/vdso32/datapage.o
>>> referenced by arch/powerpc/kernel/vdso32/gettimeofday.o:(__kernel_time)
...


$ make -skj"$(nproc)" ARCH=powerpc CROSS_COMPILE=powerpc64le-linux-gnu- LLVM=1 O=out/ppc64le distclean powernv_defconfig zImage.epapr
ld.lld: error: relocation R_PPC64_REL16_LO cannot be used against symbol __kernel_datapage_offset; recompile with -fPIC
>>> defined in arch/powerpc/kernel/vdso64/datapage.o
>>> referenced by arch/powerpc/kernel/vdso64/gettimeofday.o:(__kernel_gettimeofday)

ld.lld: error: relocation R_PPC64_REL16_LO cannot be used against symbol __kernel_datapage_offset; recompile with -fPIC
>>> defined in arch/powerpc/kernel/vdso64/datapage.o
>>> referenced by arch/powerpc/kernel/vdso64/gettimeofday.o:(__kernel_clock_gettime)

ld.lld: error: relocation R_PPC64_REL16_LO cannot be used against symbol __kernel_datapage_offset; recompile with -fPIC
>>> defined in arch/powerpc/kernel/vdso64/datapage.o
>>> referenced by arch/powerpc/kernel/vdso64/gettimeofday.o:(__kernel_clock_getres)

ld.lld: error: relocation R_PPC64_REL16_LO cannot be used against symbol __kernel_datapage_offset; recompile with -fPIC
>>> defined in arch/powerpc/kernel/vdso64/datapage.o
>>> referenced by arch/powerpc/kernel/vdso64/gettimeofday.o:(__kernel_time)

ld.lld: error: relocation R_PPC64_REL16_LO cannot be used against symbol __kernel_datapage_offset; recompile with -fPIC
>>> defined in arch/powerpc/kernel/vdso64/datapage.o
>>> referenced by arch/powerpc/kernel/vdso64/cacheflush.o:(__kernel_sync_dicache)
...


We need Fangrui's patch to fix ppc44x_defconfig:

https://lore.kernel.org/lkml/20200205005054.k72fuikf6rwrgfe4@google.com/

That exact same fix is needed in arch/powerpc/kernel/vdso64/datapage.S
to fix powernv_defconfig.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902052123.GA2687902%40ubuntu-n2-xlarge-x86.
