Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQWQXTZAKGQEAHGPBTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0C7166C05
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 01:45:55 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id w205sf362621oie.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 16:45:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582245955; cv=pass;
        d=google.com; s=arc-20160816;
        b=hAu2VA2dBvyv3/YOQBqqWSP0lGIhRim0jUGDfG4deqL4a+nWFbmP+rSDdQ436TAuIH
         8mS5osYZiLtNVMizXgzxTd3/Zsn3/mjuxv0wUMhORqAoK4xaVktCwzmFmPPGzNRBeY44
         mdwRVYTxW2mHYhMVwHB1BjxO+YtzHTBhAZXYAdxyv2amOXtebMwkrrEP64d2dZ2Jlpwn
         B2zIarkMY44nICUM8GA0Mlos2DVFsgey4RrCCey5FZ+d9PE7L1KEFQU6NC9cOcsfvf4+
         bQDGfxQ/j93+Ubj63zacA3FpC8sd+nrj0rok1Bvjv+0RtRtfYZZ18WULj8D1Go28fUGJ
         4/qA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wd+t6r+vbRlejSoMQr8Em35AdgUc00Cvbfn9zNr9CY8=;
        b=XTRDywFyUzYYgHM/0F/LhKZLZq34HF8O+z9nyzf5mZnzKU6fK6KpK/TCYlIJEShd/S
         IhKpCq2CMIrDjeun2TVgZ4Qagp+8R/KnPPjYayhULd+r/YHYPvwCTCKnPGs/XM73Uf8z
         RknpEzfo2nSpoBw1p9jwxaHebxqH7DEnEbSsmARVVO7j/V8jlH1PfR28s+S02jMYe0bR
         /17mUB3J3d2EM1Nj2sUxwyRL5LEmjM66otGIJl/6HVK+Rc4Vrja3clrFo+zbt/tB2TNi
         HiZ6obA5iv5m+Q1DNBM1/diBLf9DAsxlJhT4XkVfFKPX5VOIwIGt9s2CPgZc1Zmd5rYi
         lqDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cCTj7UCp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wd+t6r+vbRlejSoMQr8Em35AdgUc00Cvbfn9zNr9CY8=;
        b=b23B0KEu4nDlmfiNkd7+XVprH/bhqhB02lHZ6+R6Iv0sGj8Fehr5UJO7H26IYZqhiL
         VV+/UHISDSh/ZOglM52YAz8w0n/qpfPnHdalKRdyR5T0H+0LZvJBOmyI6g5xi1vWK2X1
         UOGpfrCYjtFiq0eLKxchVfdrvguL+K8IsNJBEPj9puwB+P0/JQLhxKAqTqktH3aYVRSx
         OAZc6CWfzl1Yhnqa14/tiOEVevBKycL8SnNePEarGMJced0VcBSpp32KYa+nMSAcoCzl
         rl0RIzsOwYYul+0XEHp7i0DwvfJYOZFIU2FPc5L1wdmASaQvSUEHnmzEcP9GsUI7VdTp
         kL9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wd+t6r+vbRlejSoMQr8Em35AdgUc00Cvbfn9zNr9CY8=;
        b=KDux2yREydBzA/PRUXFmiFyoi6VaLF854E/FUOJcaApWlfTmbOxjmjcHYp2Iahy/m6
         kJvr9mjPlmcI1QSlYthWbpP15aip47bYqy3Xa0bCxqtwIpLU1I6bUpm2h7EErvGHBLpe
         as7aPOPlByMdS89JDUXnTW/tzDu54S132oTSmlhXSF+pnjUYEpwgp8005OMNTiGk/SsM
         zpnHyAj3ruGPAoOuSRL1jdfvc3enb6crwvl+Bire2oekpWlpMLgH9sv/pxf/1SICpkuu
         ZnlSKVdIED7s2ynblCTY8amMwQo/7rwUIAKzUTV3rQyjxph64XPdNbz77UU2KOt3SBFo
         8jng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUKaFGHTBkaD7PCha5GZxbjwC+WQ6W32SgyglwPCrn42Q7/i6/3
	5rTbMlQdsk4oSauNJyHwuv0=
X-Google-Smtp-Source: APXvYqw4vuqE8XOnbTb4mExRa9U6U2bGdjVWfYu90AoQoyNKLKyHmGaSqge5SUw8d6S48eLlQwIEUQ==
X-Received: by 2002:a9d:7607:: with SMTP id k7mr25609404otl.205.1582245954801;
        Thu, 20 Feb 2020 16:45:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4a96:: with SMTP id i22ls90328otf.9.gmail; Thu, 20 Feb
 2020 16:45:54 -0800 (PST)
X-Received: by 2002:a9d:7511:: with SMTP id r17mr24928045otk.154.1582245954352;
        Thu, 20 Feb 2020 16:45:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582245954; cv=none;
        d=google.com; s=arc-20160816;
        b=DQ4jgYr5Raf6EJXT3z6pWmjUBQrjjuzmDcMtUfdPU0vGxLuyc/idjpY+Ha1t1U4o+T
         2lufM13Z6vRI/raWdVtt3BX6aZkWNfSKQKVPpTwHpNdvxK6fKP2VoLWzs6HAMJEh/UBb
         VIfQlGoabKSN0ErRKscXI6Qlw3wyaFH3/G2V/P2vmUTr+SLzGBfi3KjrDAYWptsSsib1
         NaydWtzRkJq2Z00vXCgWIMGzAKL9+fvFiqSq7tCjJTYJR5UOPZ7c51kwhywJWyuV2OBV
         s7wnWavVX86OOQt+zuPD3fKDXIsxPHPGrK9ZjqH0EKNlNgog8hFpL69wQQuYu0KBYfHk
         YldQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IA4GqN/ahG9ZFb0t2RMEdwAdNPjb1gNpdLQ7aeogCPE=;
        b=ymu23wM4Fvjamm2dGycJJfp+6MpEdMBj0q9tuI6kSi2OlbOG9b4YboTMSOzc8GbRR3
         2bmHBlgHRhS1OieAuFJgwWz07FxWdoE667Dxu0ZP9eErkTvUixu7nFMNBbLEoJXuN9F8
         2Ad3wuRAXiH0Ssl7whtB7JcjCSsKCaYH+M0Lh796SCR4iW6OBKyq9WoKW5Y5oi/iWeZD
         hJCyMo4GkNC9byVAs/xpeLuO3Efyfmdn59P4zGViDTYPOFAXczbm9USWCD2800uH7tqL
         1QjAPEjCOGnEjBas0NVaMEQSo9z42sgFdEKsCe0BIOrPKGLRCgliusf71FzWpHrU8Wwq
         bpsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cCTj7UCp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id s10si64985oth.2.2020.02.20.16.45.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 16:45:54 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id j4so124184pgi.1
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 16:45:54 -0800 (PST)
X-Received: by 2002:a63:5345:: with SMTP id t5mr35304849pgl.254.1582245953574;
        Thu, 20 Feb 2020 16:45:53 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h10sm725220pfo.181.2020.02.20.16.45.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2020 16:45:52 -0800 (PST)
Date: Thu, 20 Feb 2020 16:45:51 -0800
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux@googlegroups.com
Subject: Re: [RFC 2/2] Makefile.llvm: simplify LLVM build
Message-ID: <202002201643.2C3B1577E@keescook>
References: <20200220234858.145546-1-ndesaulniers@google.com>
 <20200220234858.145546-2-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200220234858.145546-2-ndesaulniers@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=cCTj7UCp;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
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

On Thu, Feb 20, 2020 at 03:48:58PM -0800, 'Nick Desaulniers' via Clang Built Linux wrote:
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
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1

I like this idea, but I think it might not be happening in the right
place... but I'm not sure what that place is. This will collide, for
example, with the Clang LTO series from Sami, as that _requires_ the
LLVM utilities in many places. I think some coordination with Kconfig
will be needed to not make this kind of crazy.

e.g. Sami currently has to hard-code this logic:

https://github.com/samitolvanen/linux/commit/42572f50c5f951cac7ea4720658d9abd2b995529#diff-b67911656ef5d18c4ae36cb6741b7965R652

-Kees

> 
> Then you can "opt out" of certain LLVM utilities explicitly:
> 
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 AS=as
> 
> will instead invoke arm-linux-gnueabihf-as in place of clang for AS.
> 
> This would make it more verbose to opt into just one tool from LLVM, but
> this patch doesn't actually break the old style; just leave off LLVM=1.
> Also, LLVM=1 CC=clang would wind up prefixing clang with $CROSS_COMPILE.
> In that case, it's recommended to just drop LLVM=1 and use the old
> style. So LLVM=1 can be thought of as default to LLVM with explicit opt
> ins for GNU, vs the current case of default to GNU and opt in for LLVM.
> 
> A key part of the design of this patch is to be minimally invasive to
> the top level Makefile and not break existing workflows. We could get
> more aggressive, but I'd prefer to save larger refactorings for another
> day.
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
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Makefile              |  4 ++++
>  scripts/Makefile.llvm | 24 ++++++++++++++++++++++++
>  2 files changed, 28 insertions(+)
>  create mode 100644 scripts/Makefile.llvm
> 
> diff --git a/Makefile b/Makefile
> index b954c304c479..8c8888ebb822 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -472,6 +472,10 @@ KBUILD_LDFLAGS :=
>  GCC_PLUGINS_CFLAGS :=
>  CLANG_FLAGS :=
>  
> +ifeq ($(LLVM),1)
> +include scripts/Makefile.llvm
> +endif
> +
>  export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
>  export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE LEX YACC AWK INSTALLKERNEL
>  export PERL PYTHON PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
> diff --git a/scripts/Makefile.llvm b/scripts/Makefile.llvm
> new file mode 100644
> index 000000000000..a4401c8677dc
> --- /dev/null
> +++ b/scripts/Makefile.llvm
> @@ -0,0 +1,24 @@
> +define META_set =
> +ifeq "$(origin $(1))" "file"
> +$(1) := $(2)
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
> 2.25.0.265.gbab2e86ba0-goog
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220234858.145546-2-ndesaulniers%40google.com.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002201643.2C3B1577E%40keescook.
