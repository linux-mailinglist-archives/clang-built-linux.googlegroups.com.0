Return-Path: <clang-built-linux+bncBCR5PSMFZYORBGMZX35AKGQEALEA4LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D6825AAED
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 14:14:19 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id x21sf1650841pjp.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 05:14:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599048858; cv=pass;
        d=google.com; s=arc-20160816;
        b=xZTN8375aMWUpur6dLoaiz7FJEJWOuCk0HmWOwI+Y6g4pvcw0KoyRnOi5MVFk3D+Pm
         alBk1eUvkKmxiOEqCNNkPPGmqgw9sE5rgRNkcE2rFc2Sfl4n9iwJgKemmxZp+Ko/6oUB
         MEH4DXHJowH16YzTZCz7XcIvUF4xi1DAAFxn+f/vMLWIY2fN83jDT/As6VdexJB4zcVT
         RjvcKalsxWcOuGICmzwX7yN+OwCwp5ZwazwzCrgDGmomt3qlROgOFEqGsfYNyUXYCGjG
         FcToPqcpUO0YCQuENBP0ZkGIpl0zKH1oWXlWnXFOGSdxs9vP+jryDGafbh+X9JeJnQaN
         uwCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=LD0b8yfVZrGJPsh3Xk6B5UkBf00DeIV2+iJ+Rm/gHsQ=;
        b=A0G7C7WKy5DncabK5HgYh6XIAe4O5g/8MW9pTR1+08nXx4s2WBg6QzgtRsJimSNY38
         IoUW9Z+Ki6pBBHpm85+6Pc+EDkxxBOGwXD1ETM85ZSS2BMgbOapn2S1ho2Hf85MCxu8E
         fBhNsuIr9VEAFDpuePkaW5nzjL9jlVfVa5TW1Ck/3PDdVG9eXjxUpavNY7a1rkGonax0
         dQGkqM911CxtimE4sZhNNWHILvhYN/CM+uaxIQahlaV8agLuJrL9g/6N6wDFMqwY+y/J
         LouqBzxVaZRNZLMjFOnknNeW6sejr7w403RvFWJtxQpSmOK0vtAQGSARq3xWKlchj+WK
         aMPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=DOiRv5WB;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LD0b8yfVZrGJPsh3Xk6B5UkBf00DeIV2+iJ+Rm/gHsQ=;
        b=JSW9GkefpmSzXnxZw9tFcF73PuE5oORYK6y9uNu2/sJfWe0qHqeO6Fg6ISpUfC5FPA
         bO52Xxnc/aVnbMld3lm7kM//l2J8V+/TJsLCZWwquJlFQPrtqK4YdWguzMKGfmG+uOEn
         NWqvlfXv8pr36P4vPx8FT4qy0ahXBbTma7pqlf6VmxIHNBA7u5YF2rLv/c4pCUiXPiz7
         G+VfsmAbn7b1Ybmd/NGJpuA+6Vpq4+RjWIodZNFMli2o+q265O381A7LXQASIYDyRO+i
         2DK+DNkRi29NovFEXI43ulf+gKcv1VbDzIuY8qNUNkXGpEIySC/rhKMNOg06sPfpVbz9
         YWxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LD0b8yfVZrGJPsh3Xk6B5UkBf00DeIV2+iJ+Rm/gHsQ=;
        b=gIcWtS1i3NYQlZCW5A4miP6JH80tifywg3inFzpqKjksfNBGlXl5nyoi3VqQ6Zx/Hp
         z2hCjbL55w09ZDbtTI5dYRSraSY/iqUZ9Bs0WqIQfnAjjjrwzzUbacLxxA/SpmRaSeju
         rPzr378pcZxCykaKXejj4IRwWw3GxmO04bDRqD6DKvMdBQbZuljQb7RmdE8rVVfuqldn
         1KieXwEQgWRY1gwEhHO3UQffjD6dqxLeiyfFoOl3MOFZ4g9xFf4q/iTaVuwmj+afxadj
         EzrfYXpQbNgLIEHlzgpKqDlkk3lpALPlpp4UL9fZ3DfnGkyARNp+KLvQxI8lqbi3+QDC
         qRuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hzmr94AIbmDYR1yjkjeqwsem5KEBRK79sVPefn+ptEuAc28DH
	sV8aSqIHs5AOrSPtcHqcEAQ=
X-Google-Smtp-Source: ABdhPJyXwIdDNqeRsbsT6CRJtfbPVXod5mdMrvE8A1Imll/gF0lZ26R6d+xw1DkA4O3GTKrbk9I+tg==
X-Received: by 2002:a17:90a:764d:: with SMTP id s13mr2050938pjl.58.1599048857747;
        Wed, 02 Sep 2020 05:14:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7591:: with SMTP id q139ls923886pfc.3.gmail; Wed, 02 Sep
 2020 05:14:17 -0700 (PDT)
X-Received: by 2002:a62:864e:: with SMTP id x75mr2996875pfd.60.1599048857277;
        Wed, 02 Sep 2020 05:14:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599048857; cv=none;
        d=google.com; s=arc-20160816;
        b=Rbuia2WraUUWsiZumaiE4Mfi6zHbC4fkU7r+KVssmfCJjO1E42KzfeA022nUM1oXa/
         gq3NvNvaSVcA5HMBzwmBPXpZSz+8+3O1jUSrUNrk40v13YD9PMiNaSIISkOqXiT7ZgWr
         QlywtNwdqscXRqXiYfzEZnQGMRKhTfHXaLsApiKuTvMBVsrqmG0I3LNBIdzXKX0iSvlo
         I/xDXD6LmKZrFErOOlEN++qAjtW8T7UMrQReJDR7ahIKvySM6oXI1eZJuRq21RG24Qzd
         UIz6fsJT0lF5UReGrzwqdzoc9M6ATZ074YL2zrDzDoksSfx9fr8h58Zn8e48EOFwHcgd
         /pQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=6/qZXRX7n27yat2DwTVeJhIKyHWAOsFl+NX4WKvccG8=;
        b=YoYgKkDELfu39ZaL99Ssuh8Q+YdP89dpfrA9ECtPasJHYaX4itq1/EOe0t8xcSVNH6
         TN1LSc3yS6aQZJCZnDiw5U6Qb/zJHT/PY7B5BhqrPGuZYIAu4gEz7vN4idDoScM8RTBq
         ysuSDKE/JbtBnoVmHKAz9bR82We82at29iw0X52nXB9SnY2CFU1L9dFilOcsnvg3H54q
         3u6/J81aOkZ2MzTrXpZoAkdrnr5/xvfHxkYDPmkWDhQ4HDkhMVsgI5lTO7IFZG4VFr8E
         CFhCv72oXPc/AMeUM98Ff4gG+YKeqHEFGYfgdDBYyd9EWbNhuYtjrg3RtYVgHNPeyiIs
         WnSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=DOiRv5WB;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id y204si269058pfc.3.2020.09.02.05.14.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2020 05:14:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4BhNCS0clSz9sV7;
	Wed,  2 Sep 2020 22:14:11 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nick Desaulniers <ndesaulniers@google.com>, Nicholas Piggin <npiggin@gmail.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, Joe Lawrence <joe.lawrence@redhat.com>, Christophe Leroy <christophe.leroy@c-s.fr>, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Kees Cook <keescook@chromium.org>, Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH 1/2] powerpc/vdso64: link vdso64 with linker
In-Reply-To: <20200901222523.1941988-2-ndesaulniers@google.com>
References: <20200901222523.1941988-1-ndesaulniers@google.com> <20200901222523.1941988-2-ndesaulniers@google.com>
Date: Wed, 02 Sep 2020 22:14:05 +1000
Message-ID: <87blio1ilu.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=DOiRv5WB;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nick Desaulniers <ndesaulniers@google.com> writes:
> Rather than invoke the compiler as the driver, use the linker. That way
> we can check --orphan-handling=warn support correctly, as cc-ldoption
> was removed in
> commit 055efab3120b ("kbuild: drop support for cc-ldoption").

Ouch.

Seems make is quite happy to $(call deadbeef, ...) and not print a
warning, which I guess is probably a feature.

> Painstakingly compared the output between `objdump -a` before and after
> this change. Now function symbols have the correct type of FUNC rather
> than NONE, and the entry is slightly different (which doesn't matter for
> the vdso). Binary size is the same.
>
> Fixes: commit f2af201002a8 ("powerpc/build: vdso linker warning for orphan sections")

I think I'll just revert that for v5.9 ?

cheers

> Link: https://lore.kernel.org/lkml/CAKwvOdnn3wxYdJomvnveyD_njwRku3fABWT_bS92duihhywLJQ@mail.gmail.com/
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/powerpc/include/asm/vdso.h         | 17 ++---------------
>  arch/powerpc/kernel/vdso64/Makefile     |  8 ++++++--
>  arch/powerpc/kernel/vdso64/vdso64.lds.S |  1 -
>  3 files changed, 8 insertions(+), 18 deletions(-)
>
> diff --git a/arch/powerpc/include/asm/vdso.h b/arch/powerpc/include/asm/vdso.h
> index 2ff884853f97..11b2ecf49f79 100644
> --- a/arch/powerpc/include/asm/vdso.h
> +++ b/arch/powerpc/include/asm/vdso.h
> @@ -24,19 +24,7 @@ int vdso_getcpu_init(void);
>  
>  #else /* __ASSEMBLY__ */
>  
> -#ifdef __VDSO64__
> -#define V_FUNCTION_BEGIN(name)		\
> -	.globl name;			\
> -	name:				\
> -
> -#define V_FUNCTION_END(name)		\
> -	.size name,.-name;
> -
> -#define V_LOCAL_FUNC(name) (name)
> -#endif /* __VDSO64__ */
> -
> -#ifdef __VDSO32__
> -
> +#if defined(__VDSO32__) || defined (__VDSO64__)
>  #define V_FUNCTION_BEGIN(name)		\
>  	.globl name;			\
>  	.type name,@function; 		\
> @@ -46,8 +34,7 @@ int vdso_getcpu_init(void);
>  	.size name,.-name;
>  
>  #define V_LOCAL_FUNC(name) (name)
> -
> -#endif /* __VDSO32__ */
> +#endif /* __VDSO{32|64}__ */
>  
>  #endif /* __ASSEMBLY__ */
>  
> diff --git a/arch/powerpc/kernel/vdso64/Makefile b/arch/powerpc/kernel/vdso64/Makefile
> index 38c317f25141..7ea3ce537d0a 100644
> --- a/arch/powerpc/kernel/vdso64/Makefile
> +++ b/arch/powerpc/kernel/vdso64/Makefile
> @@ -32,9 +32,13 @@ $(obj)/%.so: OBJCOPYFLAGS := -S
>  $(obj)/%.so: $(obj)/%.so.dbg FORCE
>  	$(call if_changed,objcopy)
>  
> +ldflags-y := -shared -soname linux-vdso64.so.1 \
> +	$(call ld-option, --eh-frame-hdr) \
> +	$(call ld-option, --orphan-handling=warn) -T
> +
>  # actual build commands
> -quiet_cmd_vdso64ld = VDSO64L $@
> -      cmd_vdso64ld = $(CC) $(c_flags) -o $@ -Wl,-T$(filter %.lds,$^) $(filter %.o,$^) $(call cc-ldoption, -Wl$(comma)--orphan-handling=warn)
> +quiet_cmd_vdso64ld = LD      $@
> +      cmd_vdso64ld = $(cmd_ld)
>  
>  # install commands for the unstripped file
>  quiet_cmd_vdso_install = INSTALL $@
> diff --git a/arch/powerpc/kernel/vdso64/vdso64.lds.S b/arch/powerpc/kernel/vdso64/vdso64.lds.S
> index 4e3a8d4ee614..58c33b704b6a 100644
> --- a/arch/powerpc/kernel/vdso64/vdso64.lds.S
> +++ b/arch/powerpc/kernel/vdso64/vdso64.lds.S
> @@ -11,7 +11,6 @@ OUTPUT_FORMAT("elf64-powerpcle", "elf64-powerpcle", "elf64-powerpcle")
>  OUTPUT_FORMAT("elf64-powerpc", "elf64-powerpc", "elf64-powerpc")
>  #endif
>  OUTPUT_ARCH(powerpc:common64)
> -ENTRY(_start)
>  
>  SECTIONS
>  {
> -- 
> 2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87blio1ilu.fsf%40mpe.ellerman.id.au.
