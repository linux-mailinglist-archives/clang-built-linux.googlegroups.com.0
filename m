Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5EUXT5AKGQEX7UVU2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id E07C225A360
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 04:59:01 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id e4sf1821392pgv.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 19:59:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599015540; cv=pass;
        d=google.com; s=arc-20160816;
        b=j+a8M/AKK/POaR/Lyw/CuJkfV4Z9U4mJR5KU19Jpxz54JCQc5DO+Ywm4mkMdauR29f
         ONqYLOo+XrJs5fZEqXq69jp0gZLYZbwtpd12JC0VPePeI9E3pw79BORWnoEQkYxBYXue
         Id+I+WJZH74aR6TQdoijUhsSGHXfbf8XMlWNCHc9WDiu8hgCCvIvqMgVBfThFkF7m8Nq
         XW0CMf8eHB5YfZMbKpQS/v60c3KtdPAQgEm05IK3qqTLYrf1mbNqm5gw8c3tMfgnSHpM
         pKIGiH6X5gX218rLntvTtSLej+sA1BbsFQ3jwkHewSCQ+Xo5N89/yj9Ef9twqwGT3oZz
         NeyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7KSr/IppGmq7tFi4HXP1qT3vjEFw9kW2oIabn2u792E=;
        b=ZN+FxeW+xEukso3MiheeGUAAAU0cSPqtdz+oPVJbU616HhpKYgpzNd3wcMwOaNbKtf
         wk0IBRhr0AhZ9fh9Slf8r2K4Ujudzu9YrNFi2kRf3Xot47itwmdBwL7ENhYwTCs0gf71
         Jm1/ch69Bxpcrp+2ACMNmHxm/P7bU//o0DnANchq3aUA2IYn5UZ41iepFx9xLCamlvtX
         ZYofSWwzgAjCBAV09pioodkCI8730p9IYfa6Nq9yDiKUHySV7/iquq6N4yFW6DTKM4GH
         UK6ThQnPGlo6gPGPtfgdIHTLnvg2gWHm8y4jwWAfRU1RLJd3/utgsFAAsoenCcUNgcVl
         YnTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JfSoCblq;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7KSr/IppGmq7tFi4HXP1qT3vjEFw9kW2oIabn2u792E=;
        b=F/jvIcnyu6xGjyLBRVH/yql8yKbU2tZRQsREgqu9RcolpOt4fUBNCdROvZ8ZxBP4tq
         nVhhpga34IeHxEWFT4Qen8wrP0H3cePTVdEluWbi6xiEbmiGkzBwhlMYuBb63jy5ZIXN
         eC6wTfAPEd1enG6l30zgfkvweHLJQTPSSAsHsGLEjeRAq0DDE0uuaNCfV8C/mI65tgw6
         uNoVgF0eSSHZkDvdT/BC2VxyHpwqZT9yqTFRu03Zof/tODybFGdtEdbUAxfKtNpOBgTh
         L87XRnJrzvjsVe0l0VY9w917wqYBI73QeeeHnzTaR0rKjWhQZJEc1EI6TZYh65uXoEHe
         6rxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7KSr/IppGmq7tFi4HXP1qT3vjEFw9kW2oIabn2u792E=;
        b=qTHeJ5ffjf8BJ0Oqa6/WjnGQ7fPFz+QyPP7nDzLbsGmU46/ZqEWOpZ6phgQ3Ppjbmm
         85EbzsPHMwm/KbQDRLVvIAyBp2IXyXTW1JaFf4TWCAYHEOsYXkexQ/DX8gKarEYiE/o0
         5pFDrDFOsDzCuHi2rkl/f3SqPJ9+BpDiTXvNoSvfn3YDROFiAEhpyPYXDboME2jpNTMf
         KJE2EKRyuF7tvcKHT/b2zhZVZ+jkld6NsGhXsXe4Vz8DsUVyX2fgRHmPk9olfuBr6OQo
         uvxnauyfD8dddvZiKZVYf0WIHwpfzFjeJ5GMZM6N61l5cy47M8hftg5Vgc6c91TefqBd
         wCrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fc2brG4jZpgHRVKcII3gWzeIO14XJfq5YWnLN179Tc5A9YB8d
	pRVy2BCoyLybKLvhZGeVaf4=
X-Google-Smtp-Source: ABdhPJzuZbG0ZCWNJxhIJkq3P/PhUa193AhT2BCwnTy7Sh0LpciPEs/PMnfMeemenFI9XoQKSb+Zyw==
X-Received: by 2002:a17:902:a508:: with SMTP id s8mr270185plq.152.1599015540520;
        Tue, 01 Sep 2020 19:59:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b107:: with SMTP id q7ls527986plr.1.gmail; Tue, 01
 Sep 2020 19:59:00 -0700 (PDT)
X-Received: by 2002:a17:90a:d315:: with SMTP id p21mr299608pju.88.1599015540027;
        Tue, 01 Sep 2020 19:59:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599015540; cv=none;
        d=google.com; s=arc-20160816;
        b=ZirVhF5qgQ+e+yl3jF+4kM2HE6kNo1Lbgfzg6FwevHxLz0zOxLQ/tv+4XJBggUH62s
         0iaNXQW1LDv8vTnohkmCxemPPEUWUXNd7Xr3GejZ3nyrFmlgnOASirWCaPhYAnigONLK
         Im4FPAKvJ9oDkxm1YGCywTL4Y0Zy0LU3epLDcOvC6gLbA0FE8dZoO13YyGViS18h364v
         duPReQ6yAmMByoUTyN3ksyeb4OTagCiyAYPrLfUEkPBaNMigkXkjBytMqyo9aXxi9nMk
         +FmSKibuCUg5YNahUL2u0bkWnY+9hJVSVbhoYxZ/6RKgfSMlPe5wFIHPyi0wd/EMhR5y
         DcxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=28qFhVucmi3MOA4EjVAZJj+la1Jhv4eS2/cK3Z3HiOY=;
        b=aVb5zW/OgC9WwYyUekiRnXKZnbUFzkEZZ2RJiU9hH4/+j+R2ik8ZWB9lGJqGiw7+Gx
         iFEG5bFS07mgux/SWCtriJoKyVxn6zKEfUGYqvTMp9qeSu7mlRekv+/P6jgbBXqerGFY
         xlvUzrxAgRgVfjzGtlC+bHkDefjDvz3lGA9ZdlSxG6pECpFDbq3ZUsWI2vh/kGwlMzLM
         0wygJAEN/wnUOV/58pFawHoDe/7lye+RsBlS5jPO24kzJrtiLeM+h7En/Qe9KzWLmVT6
         gGr2NbMxcb/pwKObn3xaKIrmLNjvNie1NSOcqykCx1rBQW3eyosvgsY0Jagxd6fNiMj4
         g6mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JfSoCblq;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id v62si170172pgv.0.2020.09.01.19.59.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 19:59:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id y6so1591549plt.3
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 19:58:59 -0700 (PDT)
X-Received: by 2002:a17:90a:ea97:: with SMTP id h23mr295435pjz.48.1599015539699;
        Tue, 01 Sep 2020 19:58:59 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e123sm2864217pfh.167.2020.09.01.19.58.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2020 19:58:58 -0700 (PDT)
Date: Tue, 1 Sep 2020 19:58:57 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Joe Lawrence <joe.lawrence@redhat.com>,
	Christophe Leroy <christophe.leroy@c-s.fr>,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Fangrui Song <maskray@google.com>
Subject: Re: [PATCH 2/2] powerpc/vdso32: link vdso64 with linker
Message-ID: <202009011957.83E306094@keescook>
References: <20200901222523.1941988-1-ndesaulniers@google.com>
 <20200901222523.1941988-3-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200901222523.1941988-3-ndesaulniers@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=JfSoCblq;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

I think $subject needs a typo update... vdso32...

On Tue, Sep 01, 2020 at 03:25:23PM -0700, Nick Desaulniers wrote:
> Rather than invoke the compiler as the driver, use the linker. That way
> we can check --orphan-handling=warn support correctly, as cc-ldoption
> was removed in
> commit 055efab3120b ("kbuild: drop support for cc-ldoption").
> 
> Requires dropping the .got section.  I couldn't find how it was used in
> the vdso32.
> 
> Fixes: commit f2af201002a8 ("powerpc/build: vdso linker warning for orphan sections")
> Link: https://lore.kernel.org/lkml/CAKwvOdnn3wxYdJomvnveyD_njwRku3fABWT_bS92duihhywLJQ@mail.gmail.com/
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Not sure removing .got is a good idea or not.  Otherwise I observe the
> following link error:
> powerpc-linux-gnu-ld: warning: orphan section `.got' from `arch/powerpc/kernel/vdso32/sigtramp.o' being placed in section `.got'
> powerpc-linux-gnu-ld: _GLOBAL_OFFSET_TABLE_ not defined in linker created .got
> powerpc-linux-gnu-ld: final link failed: bad value

If it's like the x86 and arm toolchains, I think you'll be required to
keep .got, but you can assert it to a 0 size, e.g.:

	/*
	 * Sections that should stay zero sized, which is safer to
	 * explicitly check instead of blindly discarding.
	 */
	.got : {
		*(.got)
	}
	ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")

(and put that at the end of the linker script)


-Kees

> 
> sigtramp.c doesn't mention anything from the GOT AFAICT, and doesn't
> look like it contains relocations that do, so I'm not sure where
> references to _GLOBAL_OFFSET_TABLE_ are coming from.
> 
>  arch/powerpc/kernel/vdso32/Makefile     | 7 +++++--
>  arch/powerpc/kernel/vdso32/vdso32.lds.S | 3 ++-
>  2 files changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/powerpc/kernel/vdso32/Makefile b/arch/powerpc/kernel/vdso32/Makefile
> index 87ab1152d5ce..611a5951945a 100644
> --- a/arch/powerpc/kernel/vdso32/Makefile
> +++ b/arch/powerpc/kernel/vdso32/Makefile
> @@ -27,6 +27,9 @@ UBSAN_SANITIZE := n
>  ccflags-y := -shared -fno-common -fno-builtin -nostdlib \
>  	-Wl,-soname=linux-vdso32.so.1 -Wl,--hash-style=both
>  asflags-y := -D__VDSO32__ -s
> +ldflags-y := -shared -soname linux-vdso32.so.1 \
> +	$(call ld-option, --eh-frame-hdr) \
> +	$(call ld-option, --orphan-handling=warn) -T
>  
>  obj-y += vdso32_wrapper.o
>  extra-y += vdso32.lds
> @@ -49,8 +52,8 @@ $(obj-vdso32): %.o: %.S FORCE
>  	$(call if_changed_dep,vdso32as)
>  
>  # actual build commands
> -quiet_cmd_vdso32ld = VDSO32L $@
> -      cmd_vdso32ld = $(VDSOCC) $(c_flags) $(CC32FLAGS) -o $@ $(call cc-ldoption, -Wl$(comma)--orphan-handling=warn) -Wl,-T$(filter %.lds,$^) $(filter %.o,$^)
> +quiet_cmd_vdso32ld = LD      $@
> +      cmd_vdso32ld = $(cmd_ld)
>  quiet_cmd_vdso32as = VDSO32A $@
>        cmd_vdso32as = $(VDSOCC) $(a_flags) $(CC32FLAGS) -c -o $@ $<
>  
> diff --git a/arch/powerpc/kernel/vdso32/vdso32.lds.S b/arch/powerpc/kernel/vdso32/vdso32.lds.S
> index 4c985467a668..0ccdebad18b8 100644
> --- a/arch/powerpc/kernel/vdso32/vdso32.lds.S
> +++ b/arch/powerpc/kernel/vdso32/vdso32.lds.S
> @@ -61,7 +61,6 @@ SECTIONS
>  	.fixup		: { *(.fixup) }
>  
>  	.dynamic	: { *(.dynamic) }		:text	:dynamic
> -	.got		: { *(.got) }			:text
>  	.plt		: { *(.plt) }
>  
>  	_end = .;
> @@ -108,7 +107,9 @@ SECTIONS
>  	.debug_varnames  0 : { *(.debug_varnames) }
>  
>  	/DISCARD/	: {
> +		*(.got)
>  		*(.note.GNU-stack)
> +		*(.branch_lt)
>  		*(.data .data.* .gnu.linkonce.d.* .sdata*)
>  		*(.bss .sbss .dynbss .dynsbss)
>  		*(.glink .iplt .plt .rela*)
> -- 
> 2.28.0.402.g5ffc5be6b7-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009011957.83E306094%40keescook.
