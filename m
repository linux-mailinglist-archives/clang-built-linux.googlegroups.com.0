Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB3WFWX6AKGQEBP65IJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3BB29250B
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 11:57:03 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id k2sf1916633pjj.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 02:57:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603101422; cv=pass;
        d=google.com; s=arc-20160816;
        b=nXMW+M2z/f0Wo+aF3MTtCih2F15s9kAlLWt70N73me8oTdkfVQZ/Pl2yc6Fetm/RCi
         HzUTN34DZs7zhQByEPni8UKjiHLb7NKkWgFZK3ikWvek+HjOEFqVBUTSmx7sjW3QIpti
         nAiKtxK0lYre7SDoPrS6sAeT1dE/ODGtuNXNyGJ7FKelFYiGnzcil+y4lIrzQ56mk3Wn
         iD4sTCb3bKR3jYyaBFvnCezS3/KvbpDcpq2/dou2Tnrh+//fF+JeJT5MBNDPKz2jEQ6Z
         VVfCiI/DPIupuRFOv76+ujgbK773amb6/bqUJu/GyguJtfawpqbP2/Rxh05gAZGy3uEw
         ZsgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=LxK5GBmI0tx6LN08RQveowNT0ZYrBii4ONxXbZJt4XY=;
        b=mDkQs5ozrTq3FKDm/rMO9PcYfXWOqUPmmZ9FNjj6ZspC0HmCMhTu/HaYrOuvNVShR/
         /FCKlc2MegvwHJWnlfLO+namjSTec4E3s8hdtAi9bHmWcmYXbfybuMaT/nF/gWPT0Csr
         ONqlCTEwLknFRdYQJt/dwCR25UZyVngLTApkSXEggETQNRU1Mfm+C0j+tj4FKxncX5Lr
         x46bXktDQVWIX5tTQLTKiaAsn3QhzMYFm4QEayy6wZsCrImXGD0rFnJV9yXzi+IGuU/k
         mSuDQmaSa67KNjWeyiLRpfQ5A+heahApV/sT/uaM6tU24yPRiq3i11CAnN2MXv0tlSqn
         IuHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LxK5GBmI0tx6LN08RQveowNT0ZYrBii4ONxXbZJt4XY=;
        b=AIQrOFF5oKErWJDb77xvbSh3ofBasmk6a/raXZmGSm8hIYD7X6qZ68un7F/Q5+sC+Y
         YyAM3Vy4rxFYGX/mMk3cMXTSL6kjL+lHqFqYOE+OA2YpJJaT8tvBKpUnZFoB86TJW9Eb
         QWjIAqI5iHlMDj+4W6/oBs8WV/iAQvmlGT/oNaFVhl1zaSc7Fo1tbOe1UKfN05scLWGK
         wqHKXDfQvwmYZ8NbZnZUwVu60aNiYlNHL/p0XdRUwIsqzoNCjtPEOrubBbJg5bGRZsWl
         tTlWDzEapnSahjtkE3ZSlP25o1sChXVKXki4t+YykhFAnK0asksRbGP7HafvUyhEr4Rr
         X+dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LxK5GBmI0tx6LN08RQveowNT0ZYrBii4ONxXbZJt4XY=;
        b=qwyAwZ67H7yLzn1rxhZ/ahel4F0spcUb+MGJxCtGuAgaXRUodlIwDj2N8YpiO/df7a
         fl68OoI77IdLjaVcjHv9Vpda0OITFd0DC3wshjMrtDmctYpn5yO+HZkYxbpJQ2ZPW4wN
         RhiorZL9W270Ch+2zGQhVODamjM53V5kBv7hpFIGPm83ygBf+cj9oarR/giW3Bmrs+oH
         102+n9xdMvzP3Qpi1TfUmcA/DOMwurvev8CWO3dWA4QACUc//kVCzY91XyOeeWJkvd7g
         C8J8SNZ/mGeKV1N2LlLOl3uADBPkqvAfAoHecQ/3A6HdRwBlnF6iI1hQtidBqAnrWT/m
         9+cA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mmYiKc59JtDhREBdlPjpEAkPcFpL1PI551Zs0rjgmuCvUeI1A
	qamb2erakpPVrdUtI9VbkUg=
X-Google-Smtp-Source: ABdhPJz421xoy6PaykvO0gRjGClexvJa/VXefPpTYJ8Aq8Is5E1rcjkDKXewXXvLBsd8SVFdYE2oAw==
X-Received: by 2002:a63:b348:: with SMTP id x8mr14034720pgt.207.1603101422352;
        Mon, 19 Oct 2020 02:57:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c70f:: with SMTP id n15ls3265012pgg.3.gmail; Mon, 19 Oct
 2020 02:57:01 -0700 (PDT)
X-Received: by 2002:a62:6507:0:b029:155:3b11:b458 with SMTP id z7-20020a6265070000b02901553b11b458mr16266529pfb.45.1603101421690;
        Mon, 19 Oct 2020 02:57:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603101421; cv=none;
        d=google.com; s=arc-20160816;
        b=ijPh9LwDJhk0V5ub87dkHN+15Ydign2fZ2cPpi/p0tWBu7nNdFrt0EC3McRxfolzNV
         2StC6PgLeRn64ZR2Ggfj55+DYlnnhBjO5ecwZ2AC1ZKGWg2XBNzCBHwOISq1wG3fko7n
         n65cpqL8y7CjsD6ssPeNbiAiVF/uIjgDHBC4yImEXLb4Lk+bjDxk09nDwXBRQ1WSSlic
         9Nnij1ulj5dmGVMrMELTXderH5lGaMZPOsWZw/mIgzPkotLyR+IyZEVDbb+UflYE3Dz9
         OZAe3ba7GRkhA4pZYUDEG0+QsYXiHNksQdUdMbuB6QBbq3s2JQyQivi2M+i+OqfaG0bU
         QMNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=Qvc+/bj219XVZfWUhWiuElo91j8S6rtQdmHaKU+E+Ck=;
        b=JzrTp/HignMl/grGcqK7zvxCMggTxInS4Jm6Rknv4BjNHc7ug7txViUSLfedtG7jer
         BocuPNnq9/DlhnI6lop66lIyQxcjXuHHH+0bV7M/aOhfoT3Db3zm1qJ130whIVDZZf4W
         TnmEZK+62spuTAaesLESE1EE6ej6VVkVj+k/DuCulUcLCKHwQeHGRXL6DFC82ebB/mNc
         UGhEAtOeSc3ZPH3mHEKKmTwVaT99dXdLU67MZ5AYnu9gG5WO1MKjIC1deKuPo99pSqkl
         SSGsCqN1ADgvvvthB6PJeRIWTgLj3bAh8R6DaxQTiAc4II5ShnoHbwRGilSZIN3plezF
         3ZvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id k126si607300pgk.0.2020.10.19.02.57.01
        for <clang-built-linux@googlegroups.com>;
        Mon, 19 Oct 2020 02:57:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C624630E;
	Mon, 19 Oct 2020 02:57:00 -0700 (PDT)
Received: from [10.37.8.82] (unknown [10.37.8.82])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CB5793F66E;
	Mon, 19 Oct 2020 02:56:58 -0700 (PDT)
Subject: Re: [PATCH] arm64: vdso32: Allow ld.lld to properly link the VDSO
To: Nathan Chancellor <natechancellor@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Nick Desaulniers <ndesaulniers@google.com>
References: <20201013033947.2257501-1-natechancellor@gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <53b74ed0-f143-6870-1227-3d9663166068@arm.com>
Date: Mon, 19 Oct 2020 10:59:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201013033947.2257501-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
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


Hi Nathan,

On 10/13/20 4:39 AM, Nathan Chancellor wrote:
> As it stands now, the vdso32 Makefile hardcodes the linker to ld.bfd
> using -fuse-ld=bfd with $(CC). This was taken from the arm vDSO
> Makefile, as the comment notes, done in commit d2b30cd4b722 ("ARM:
> 8384/1: VDSO: force use of BFD linker").
> 
> Commit fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of $(CC) to
> link VDSO") changed that Makefile to use $(LD) directly instead of
> through $(CC), which matches how the rest of the kernel operates. Since
> then, LD=ld.lld means that the arm vDSO will be linked with ld.lld,
> which has shown no problems so far.
> 
> Allow ld.lld to link this vDSO as we do the regular arm vDSO. To do
> this, we need to do a few things:
> 
> * Add a LD_COMPAT variable, which defaults to $(CROSS_COMPILE_COMPAT)ld
>   with gcc and $(LD) if LLVM is 1, which will be ld.lld, or
>   $(CROSS_COMPILE_COMPAT)ld if not, which matches the logic of the main
>   Makefile. It is overrideable for further customization and avoiding
>   breakage.
> 
> * Eliminate cc32-ldoption, which matches commit 055efab3120b ("kbuild:
>   drop support for cc-ldoption").
> 
> With those, we can use $(LD_COMPAT) in cmd_ldvdso and change the flags
> from compiler linker flags to linker flags directly. We eliminate
> -mfloat-abi=soft because it is not handled by the linker.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1033
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Just a small nit on my side (see below) and as you already stated it requires
rebasing if we want to merge it in mainline. Otherwise:

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

> ---
> 
> NOTE: This patch is currently based on the kbuild tree due to the
> --build-id -> --build-id=sha1 change that Bill did. If the arm64
> maintainers would prefer to take this patch, I can rebase it (althought
> presumably this won't hit mainline until at least 5.11 so it can
> probably just stay as is for now).
> 
>  arch/arm64/kernel/vdso32/Makefile | 23 ++++++++++++-----------
>  1 file changed, 12 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index 7f96a1a9f68c..1cf00c58805d 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -22,16 +22,21 @@ endif
>  
>  CC_COMPAT ?= $(CC)
>  CC_COMPAT += $(CC_COMPAT_CLANG_FLAGS)
> +
> +ifeq ($(LLVM),1)

Nit: Here can we check 'ifneq ($(LLVM),)' for consistency with what the main
Makefile does?

> +LD_COMPAT ?= $(LD)
> +else
> +LD_COMPAT ?= $(CROSS_COMPILE_COMPAT)ld
> +endif
>  else
>  CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
> +LD_COMPAT ?= $(CROSS_COMPILE_COMPAT)ld
>  endif
>  
>  cc32-option = $(call try-run,\
>          $(CC_COMPAT) $(1) -c -x c /dev/null -o "$$TMP",$(1),$(2))
>  cc32-disable-warning = $(call try-run,\
>  	$(CC_COMPAT) -W$(strip $(1)) -c -x c /dev/null -o "$$TMP",-Wno-$(strip $(1)))
> -cc32-ldoption = $(call try-run,\
> -        $(CC_COMPAT) $(1) -nostdlib -x c /dev/null -o "$$TMP",$(1),$(2))
>  cc32-as-instr = $(call try-run,\
>  	printf "%b\n" "$(1)" | $(CC_COMPAT) $(VDSO_AFLAGS) -c -x assembler -o "$$TMP" -,$(2),$(3))
>  
> @@ -122,14 +127,10 @@ dmbinstr := $(call cc32-as-instr,dmb ishld,-DCONFIG_AS_DMB_ISHLD=1)
>  VDSO_CFLAGS += $(dmbinstr)
>  VDSO_AFLAGS += $(dmbinstr)
>  
> -VDSO_LDFLAGS := $(VDSO_CPPFLAGS)
>  # From arm vDSO Makefile
> -VDSO_LDFLAGS += -Wl,-Bsymbolic -Wl,--no-undefined -Wl,-soname=linux-vdso.so.1
> -VDSO_LDFLAGS += -Wl,-z,max-page-size=4096 -Wl,-z,common-page-size=4096
> -VDSO_LDFLAGS += -nostdlib -shared -mfloat-abi=soft
> -VDSO_LDFLAGS += -Wl,--hash-style=sysv
> -VDSO_LDFLAGS += -Wl,--build-id=sha1
> -VDSO_LDFLAGS += $(call cc32-ldoption,-fuse-ld=bfd)
> +VDSO_LDFLAGS += -Bsymbolic --no-undefined -soname=linux-vdso.so.1
> +VDSO_LDFLAGS += -z max-page-size=4096 -z common-page-size=4096
> +VDSO_LDFLAGS += -nostdlib -shared --hash-style=sysv --build-id=sha1
>  
>  
>  # Borrow vdsomunge.c from the arm vDSO
> @@ -189,8 +190,8 @@ quiet_cmd_vdsold_and_vdso_check = LD32    $@
>        cmd_vdsold_and_vdso_check = $(cmd_vdsold); $(cmd_vdso_check)
>  
>  quiet_cmd_vdsold = LD32    $@
> -      cmd_vdsold = $(CC_COMPAT) -Wp,-MD,$(depfile) $(VDSO_LDFLAGS) \
> -                   -Wl,-T $(filter %.lds,$^) $(filter %.o,$^) -o $@
> +      cmd_vdsold = $(LD_COMPAT) $(VDSO_LDFLAGS) \
> +                   -T $(filter %.lds,$^) $(filter %.o,$^) -o $@
>  quiet_cmd_vdsocc = CC32    $@
>        cmd_vdsocc = $(CC_COMPAT) -Wp,-MD,$(depfile) $(VDSO_CFLAGS) -c -o $@ $<
>  quiet_cmd_vdsocc_gettimeofday = CC32    $@
> 
> base-commit: 172aad81a882443eefe1bd860c4eddc81b14dd5b
> 

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/53b74ed0-f143-6870-1227-3d9663166068%40arm.com.
