Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPFS7HZQKGQENQTSBAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 5626F195F30
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 20:51:25 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id f206sf9142688qke.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Mar 2020 12:51:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585338684; cv=pass;
        d=google.com; s=arc-20160816;
        b=j2SoxR5dV4LxT4XFmOo6uZEsC2MB5aEuavfoHq7Nqolk5jkr3W8CxjX43Xz96k3MME
         V9ErEL/Telg/j7hVl5ToAlSB1SCkbu09bfi+aSK+/lfbREodMNPOoCPYEwfuC/Pcrdu3
         ig6kukcgquMG0vHDvk15euvyFftOYrwZnhBf5dJebqm0cNGz6pMbyCkvJvCnRfJtSumM
         Yfj3T/psfY+69LoXgkUdXIXbdjY3zGJEyOqt30r1t1g5sdl/TIJfeVkEYXflfWlWqxzx
         lj7p2jSZDhdYByiGNiYi6bmvKdYiJyoLKtjy688EbKBsJG00CSzkUI/9Ibdc3YGeh7TB
         8NJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PKzRpH4j285MAP/WuclxKxpuu8rGPZRzOk9hUnN0bj4=;
        b=NjWnvZQtDov/0MdBtjO1LqXluoVumH6z57E6SzvdyYbrhHnQM0PKlMdi0bBJGordcI
         +fuAjIx1TWHyZ31wsTMjzUNLp1Q1TYdqfht5XwLXpX5CfH6vJ3edMmmLY2yebvK0raj+
         qCqmAah7Fa2D2X4mhhmmahymNSYnx/dOoo33J13mvmoRZ56IHzgZr3JTNgNUnG5jEz6Z
         Mujx+QZyS3EHpgq1/2+jADC+Xxt9gprjacEGxV6/c4bjgn827ZGZFhAfRq6CybFXHg/Y
         KIoyklHRieHQ3iJ5WS/wQubuE4c6ExMM12eh2pxOJgOeyRFTmRTnjPlA7Bm6wCFm32Yy
         Ap+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RDtBwgbh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PKzRpH4j285MAP/WuclxKxpuu8rGPZRzOk9hUnN0bj4=;
        b=MG3MqDlfLhnlyzKMBc7bsUheR5jNGUxN+8cRkLHQsauqTEhaHL3fgDaxIGew8Nyxz8
         +m04zlw4rlmS0rXrJ7G5aFMCcZhLMtvlmpVQzMH6xNTgpcZ40GWrntajzo/qUkor04iD
         Gyv4mif0182dHQt/2LzTd3KvQoRpCgzwbaUoOtFXLNMy6DGEwJCmuyGfV5CtXxwVI3+B
         KH39PJn0TOXA2fHPyuKbL9bj5hbPZMRq65tx7l0fu+hKbv0hpoo3n3VsLQPCNrMPGmjw
         Av02G+k4aPSSYCCP7yb3Z0/Xc4UhLgfaDNmF/7LkpC+6pgQUcAlIrfTZXQPSdY+xMwrF
         srvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PKzRpH4j285MAP/WuclxKxpuu8rGPZRzOk9hUnN0bj4=;
        b=lBnEsaeOR+l07Cu/gMFrfaEsLVmjZBKI8oI+Pn+rElBNB6PoXtBNGGtuxud9n86fiL
         YSY0MvDO9WUP9z5VmjDSbgnVjGfulVVpcnUm0eCMTxyigjM2W91SyQw94Eiq5bR0yRdE
         eDl1gmP3uvSZkjBxZOFw8hJfimKXjoGigN6HD3Ci9horkRGIt/XROzRHKnsnJPt27gq/
         kmaNwBElVOVn0qhQstv2kAN6sihZEjDDvTLaFp7aJesniqIGPNk1H5exVRJJH7LMiWO6
         svJ7t+X1qqG+UlafHdM/k5o0YdMZ9iSiHxz6nSRDLTjF1P/xo+SFhRqG6+KtVCXCUE0Q
         rHNA==
X-Gm-Message-State: ANhLgQ3VoiTgF8QwPFEMPJGT34/uICia5SreLekpHI4dt7g+OuTD/auc
	0xlp+2LFr8ZxtumtthZSYAE=
X-Google-Smtp-Source: ADFU+vs3mVWsXvz+Ka4p0pVfNKb55BIL38lmZP5Frpx/uflpIe7gofDiYqs5Ywk6HRPPi+r/F40bAQ==
X-Received: by 2002:ac8:1628:: with SMTP id p37mr918535qtj.277.1585338684332;
        Fri, 27 Mar 2020 12:51:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:f1d:: with SMTP id e29ls4067305qtk.2.gmail; Fri, 27 Mar
 2020 12:51:23 -0700 (PDT)
X-Received: by 2002:ac8:41cd:: with SMTP id o13mr956562qtm.266.1585338683849;
        Fri, 27 Mar 2020 12:51:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585338683; cv=none;
        d=google.com; s=arc-20160816;
        b=v+HPrnZW8BGl0lggpLUSsYFnHXvPj1G4Bo9ZjJ6n1uDNpgJ+FQ8gEpBiLtN9iQ7fJh
         5K6vTY3vsihmNpfRy+leHtL0A+1RwLfponH3ZTz6k0eGfa0acMWdFTNPD0PE8aIgA6/U
         ii4+7Y0IGuYlvykoAgoHIo34TkfnILn8/K1u0XEZ8ignK37Kjc94lpVnovcW89mQQNlX
         vwBrPUHS8h7k6l85ZT4UJ/9JtTTDEeUYolKJxIaMZZT0EW3dqK/6dieC/FB4lOwJwFnP
         61Liqwb4hCa6eUVV200JoEt1a7o1jb6zfrRJsTpw5YylVBT+Sad2pUv+NImTDzQN7JKo
         C48Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TIwsqk5ETWei+wO/g9OP6mg14rZv2Sy0ZTEE4p3E5LA=;
        b=WOek8n4WEYTtP7CddnGy85CufB+krYGcg9JAbqmH3suITrrLU2TlwrPmAJJQRb+xEX
         gDXUjHlIntgN5jWdanCjsW6T9s/TI+q1urd0mDNR69zhoX6kzJJBfpi+XvSMwJLGPZK5
         irnA9ZNe0BDR77/4jfMWcCZDMRpzTBcvHCjdJQJ1YnDzUt/j2C3bDzyYcm1Le5NPKHAb
         FYc0jYn9TPUlMzfZQ2vVAiWw0n/82gX2I3mMeKbyeMkLqT1ozuJD+5owC77XI0Ptn360
         d52RlrlJ/GjFeILad5bdERCrJ5nS2WUQTjYyffj0duLxh+klo/t/DaaogvoUJcashZew
         HHyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RDtBwgbh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id t24si539943qtt.1.2020.03.27.12.51.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 12:51:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id 142so5059147pgf.11
        for <clang-built-linux@googlegroups.com>; Fri, 27 Mar 2020 12:51:23 -0700 (PDT)
X-Received: by 2002:aa7:87ca:: with SMTP id i10mr830739pfo.169.1585338682518;
 Fri, 27 Mar 2020 12:51:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200317202404.GA20746@ubuntu-m2-xlarge-x86> <20200317215515.226917-1-ndesaulniers@google.com>
In-Reply-To: <20200317215515.226917-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 27 Mar 2020 12:51:08 -0700
Message-ID: <CAKwvOdkhxvtK0_WJ-K4XNwN=fu=PxntEetL_umXdepwR-Ocd1g@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile.llvm: simplify LLVM build
To: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Sandeep Patil <sspatil@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RDtBwgbh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Masahiro and Nathan,
I get daily reminders that `make CC=clang LD=ld.lld NM=llvm-nm ...`
sucks. I always prioritize code reviews for you, can you please carve
out time to review+test+provide feedback for me?

On Tue, Mar 17, 2020 at 2:55 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Prior to this patch, building the Linux kernel with Clang
> looked like:
>
> $ make CC=clang
>
> or when cross compiling:
>
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang
>
> which got very verbose and unwieldy when using all of LLVM's substitutes
> for GNU binutils:
>
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang AS=clang \
>   LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
>   OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \
>   READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \
>   HOSTLD=ld.lld
>
> This change adds a new Makefile under scripts/ which will be included in
> the top level Makefile AFTER CC and friends are set, in order to make
> the use of LLVM utilities when building a Linux kernel more ergonomic.
>
> With this patch, the above now looks like:
>
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=y
>
> Then you can "opt out" of certain LLVM utilities explicitly:
>
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=y AS=as
>
> will instead invoke arm-linux-gnueabihf-as in place of clang for AS.
>
> Or when not cross compiling:
>
> $ make LLVM=y AS=as
>
> This would make it more verbose to opt into just one tool from LLVM, but
> this patch doesn't actually break the old style; just leave off LLVM=y.
> Also, LLVM=y CC=clang would wind up prefixing clang with $CROSS_COMPILE.
> In that case, it's recommended to just drop LLVM=y and use the old
> style. So LLVM=y can be thought of as default to LLVM with explicit opt
> ins for GNU, vs the current case of default to GNU and opt in for LLVM.
>
> A key part of the design of this patch is to be minimally invasive to
> the top level Makefile and not break existing workflows. We could get
> more aggressive, but I'd prefer to save larger refactorings for another
> day.
>
> Finally, some linux distributions package specific versions of LLVM
> utilities with naming conventions that use the version as a suffix, ie.
> clang-11.  In that case, you can use LLVM=<number> and that number will
> be used as a suffix. Example:
>
> $ make LLVM=11
>
> will invoke clang-11, ld.lld-11, llvm-objcopy-11, etc.
>
> About the script:
> The pattern used in the script is in the form:
>
> ifeq "$(origin $(CC))" "file"
> $(CC) := $(clang)
> else
> override $(CC) := $(CROSS_COMPILE)$(CC)
> endif
>
> "Metaprogramming" (eval) is used to template the above to make it more
> concise for specifying all of the substitutions.
>
> The "origin" of a variable tracks whether a variable was explicitly set
> via "command line", "environment", was defined earlier via Makefile
> "file", was provided by "default", or was "undefined".
>
> Variable assignment in GNU Make has some special and complicated rules.
>
> If the variable was set earlier explicitly in the Makefile, we can
> simply reassign a new value to it. If a variable was unspecified, then
> earlier assignments were executed and change the origin to file.
> Otherwise, the variable was explicitly specified.
>
> If a variable's "origin" was "command line" or "environment",
> non-"override" assignments are not executed. The "override" directive
> forces the assignment regardless of "origin".
>
> Some tips I found useful for debugging for future travelers:
>
> $(info $$origin of $$CC is $(origin CC))
>
> at the start of the new script for all of the variables can help you
> understand "default" vs "undefined" variable origins.
>
> $(info $$CC is [${CC}])
>
> in the top level Makefile after including the new script, for all of the
> variables can help you check that they're being set as expected.
>
> Link: https://www.gnu.org/software/make/manual/html_node/Eval-Function.html
> Link: https://www.gnu.org/software/make/manual/html_node/Origin-Function.html
> Link: https://www.gnu.org/software/make/manual/html_node/Implicit-Variables.html
> Link: https://www.gnu.org/software/make/manual/html_node/Override-Directive.html
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V1 -> V2:
> * Rather than LLVM=1, use LLVM=y to enable all.
> * LLVM=<anything other than y> becomes a suffix, LLVM_SUFFIX.
> * strip has to be used on the LLVM_SUFFIX to avoid an extra whitespace.
>
>
>  Makefile              |  4 ++++
>  scripts/Makefile.llvm | 30 ++++++++++++++++++++++++++++++
>  2 files changed, 34 insertions(+)
>  create mode 100644 scripts/Makefile.llvm
>
> diff --git a/Makefile b/Makefile
> index 402f276da062..72ec9dfea15e 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -475,6 +475,10 @@ KBUILD_LDFLAGS :=
>  GCC_PLUGINS_CFLAGS :=
>  CLANG_FLAGS :=
>
> +ifneq ($(LLVM),)
> +include scripts/Makefile.llvm
> +endif
> +
>  export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
>  export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE LEX YACC AWK INSTALLKERNEL
>  export PERL PYTHON PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
> diff --git a/scripts/Makefile.llvm b/scripts/Makefile.llvm
> new file mode 100644
> index 000000000000..0bab45a100a3
> --- /dev/null
> +++ b/scripts/Makefile.llvm
> @@ -0,0 +1,30 @@
> +LLVM_SUFFIX=
> +
> +ifneq ($(LLVM),y)
> +LLVM_SUFFIX += -$(LLVM)
> +endif
> +
> +define META_set =
> +ifeq "$(origin $(1))" "file"
> +$(1) := $(2)$(strip $(LLVM_SUFFIX))
> +else
> +override $(1) := $(CROSS_COMPILE)$($(1))
> +endif
> +endef
> +
> +$(eval $(call META_set,CC,clang))
> +$(eval $(call META_set,AS,clang))
> +$(eval $(call META_set,LD,ld.lld))
> +$(eval $(call META_set,AR,llvm-ar))
> +$(eval $(call META_set,NM,llvm-nm))
> +$(eval $(call META_set,STRIP,llvm-strip))
> +$(eval $(call META_set,OBJCOPY,llvm-objcopy))
> +$(eval $(call META_set,OBJDUMP,llvm-objdump))
> +$(eval $(call META_set,OBJSIZE,llvm-objsize))
> +$(eval $(call META_set,READELF,llvm-readelf))
> +$(eval $(call META_set,HOSTCC,clang))
> +$(eval $(call META_set,HOSTCXX,clang++))
> +$(eval $(call META_set,HOSTAR,llvm-ar))
> +$(eval $(call META_set,HOSTLD,ld.lld))
> +
> +## TODO: HOSTAR, HOSTLD in tools/objtool/Makefile
> --
> 2.25.1.481.gfbce0eb801-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkhxvtK0_WJ-K4XNwN%3Dfu%3DPxntEetL_umXdepwR-Ocd1g%40mail.gmail.com.
