Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMVWXTZAKGQEY4WHFVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id E1075166B31
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 00:50:11 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id dw15sf191897pjb.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 15:50:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582242610; cv=pass;
        d=google.com; s=arc-20160816;
        b=sJF6iu35qyOE3wBV7Er/NLarEk34/dT4jdNb+4Nlp4AesL/hIK4xJbifokI+GWb4Ch
         qU0HM4hB/wP4uLLlR/L2+mF1lrNakQ1BgR/MUkjke52P3QT5VNt12ZddG5Uj5HMkeBq7
         NZbbG8xGoR6ITL9OEVS+NPjGp/7PVH3q5+dLExYEEXhHNZZtslyqAwAvfpDfdfSEioBZ
         mne4LR42myBqG81JQBADLaAj+JkuY8gkrHjYNsDajpLJVwhTUuIdPQAunA40ela6nomr
         XMe3MeXEWW2VSS30oB8ex4YfTG4FSqdprrHPDOrGREksTcilRPJ1nZswMW+iMuW3Ofgo
         tmvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=oWb0vzzDbX0th5ulEATPgm0wgrjr0aNvLG4yIVX7hng=;
        b=AuheXV3u57PG5EPEIFFp8VblC8f+Jot+LC+BBW540k03zajuxvfBB27KPTtS8yeQbP
         +0mGHSINSdgbapW/9hhE7DeGSTh9FWXO1MkqRvdHJS0cIq9no68T/4yafEI2W6UdcUBQ
         owE4OKNDqQGQQLsvq3DO7exvAmqV4Wq7pddQM+lRgI+tA5g/3MqfBkZL0/vIlrZdVW7G
         hzdgK6gOkd6s3JTq/2oXdPWH1f8Qfpquuq3FxwmaVl80H82X0XOqxSBlpLKnbqZ4vXCO
         9a/Hpu8karvmaA4L1Y8d/QlA8F9PQwqqBPHiyzuAL0rqoU86LnV9pqcGI6bKsyNWz9P1
         xUbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gUwlkqB0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oWb0vzzDbX0th5ulEATPgm0wgrjr0aNvLG4yIVX7hng=;
        b=lFivnrBMYvzyn9GiaPofrRmBVAOpbJBWd/i+N6RlwaHHT4g83pr0vUzBwDxO/bG9H1
         Sg45xM6Q17oakxOk9hv85Wy/TiAVh0acRBeX/fMb3udStxmr1lvwz62Djf2/Xk/Fru8H
         O9OJUqDHH8JalgzNd5O3ouNEET+JqB1BBfVymK9aExJB145qxgIR45qzq2Yd36kanilM
         0fDWhKkm1WHGO/lU1haE8M8T+WnMmFfUBJlRip5neEjjBFyIWHBA99SHHGoq22MYNnNu
         RPKFwOsBEkZiHp8X4RD7NSxnNNLG7iih8uvn6m/Hzm+6hXk/en4mjkxPlM9ae+mvdPCl
         atWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oWb0vzzDbX0th5ulEATPgm0wgrjr0aNvLG4yIVX7hng=;
        b=YflQWGOfBaUyFj0O1zljRL8uhht9lGyvRmpnRoW2i1c9gBE8XG5RmKB8/MEuFI1UV/
         o4dMi6OktbPbgpVFsFFlidKiFbXK6fTO3C/jfaJbfJc0PeDQYPwhPI5bsu9Qe7L0Na52
         GrvlC6XK01wMU/W/Oseyv9UXIt9DhBAVYNgUe5RSS8KAgTDhgawfhk7LqPwW5KmBKVux
         8wIK+nHxQVT84gGsHzj8XLYL9GSAK1JDPT44GuStnji9am1j/SBzcvNVC9HNeSBrvlIR
         JNHiKfNB9xmTSPidybFMqhSFaTLRnE+DmUFQRpX2jS4j7oaFsuShir0dmlcjoZcLKkEm
         DOMg==
X-Gm-Message-State: APjAAAW3m0JuwQx/m0rvrJDAgl09OMkxcJyY+0BFltuPJ+fcOuncP8Ak
	i/lRGA4y53OcihdzAIsRUD4=
X-Google-Smtp-Source: APXvYqzjTZhg0RZw/v8VK+cHPHwYR+hF9G1IlqK4T7cNwW8gO+rYkbXikc0XPJZytrPm2T/7xAPXUQ==
X-Received: by 2002:a63:6704:: with SMTP id b4mr36843745pgc.424.1582242610583;
        Thu, 20 Feb 2020 15:50:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5fca:: with SMTP id t193ls80241pgb.1.gmail; Thu, 20 Feb
 2020 15:50:10 -0800 (PST)
X-Received: by 2002:aa7:9816:: with SMTP id e22mr35265545pfl.229.1582242610065;
        Thu, 20 Feb 2020 15:50:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582242610; cv=none;
        d=google.com; s=arc-20160816;
        b=aam9xZVf+JO8zE0crciZvCc6Hlg6gs4i4sDUuebnr6Ot/nhw0VZ79EkvFbY6l5KqE8
         hcjHdGKtpBM8cRgYqkZK6kpn3Z7O5GsyS7OIxeBzhd6OC8d/klGX4anuhoyZ7cssjgUf
         +MItKGHhTFvP8mGCWWIUDDTssxUuS2f3YtyfD74p2VLBRxlyr0RdasT2oV6bH0qhuSEB
         U7Ub7EAAs8v8TM8XZVCkUar/69ko31jdbBdh9CYe88lj/JhmiJrnd6znsZTYWtsdwaTF
         /w8V1VKtjxM4H9rYBLDxytC2rd0dKpc7k8xreHNLzitVJyCffi+xwtrVvUJ/5MutIEOP
         njlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eeONbVdJ4JzTx0O4VFbZSvpfepC2PYjMmIr1h7oTD2M=;
        b=xsNUERsNnTAe2oDGABffIu2xQHQZQhvseKEGFT1Pbt1j2xhjCeVh4Cnhg6LfngrbAJ
         6QhnWxz2PvrR1MM+aaCq5l2FtbrKHUCSJh1BUYLhJuydxXzmZCAQbLpNDVUA3Bm7WTNQ
         kcAboEFvkZODq7aEDpfvJBqOKIvxBc1kitoMKpghgcgMTukyUPys0z7Mz/qBV9pbRN0o
         ASVgyfbZo2pbK03W3IBvMEjt/MukCfA9ocXZ+K2YpJyNcGebjxZUxfKDqfk0xzWVTvAX
         xE28PlhAhea7UNiLSg2LsH6nXTStvEfVgQ8AWEgwEAects+Dm1+djtB5q1+bYvhlMEdE
         dWIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gUwlkqB0;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id f31si45172pje.2.2020.02.20.15.50.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2020 15:50:10 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id y1so69587plp.7
        for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 15:50:10 -0800 (PST)
X-Received: by 2002:a17:90a:3745:: with SMTP id u63mr6354046pjb.123.1582242609083;
 Thu, 20 Feb 2020 15:50:09 -0800 (PST)
MIME-Version: 1.0
References: <20200220234858.145546-1-ndesaulniers@google.com> <20200220234858.145546-2-ndesaulniers@google.com>
In-Reply-To: <20200220234858.145546-2-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 20 Feb 2020 15:49:57 -0800
Message-ID: <CAKwvOdneKbdLS1Ap2ussLFKDNe0=DMbNHfUg0BQM9t6e-r_aiQ@mail.gmail.com>
Subject: Re: [RFC 2/2] Makefile.llvm: simplify LLVM build
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Alistair Delva <adelva@google.com>, Sandeep Patil <sspatil@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gUwlkqB0;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

+ Alistair, Sandeep

On Thu, Feb 20, 2020 at 3:49 PM Nick Desaulniers
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
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1
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


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdneKbdLS1Ap2ussLFKDNe0%3DDMbNHfUg0BQM9t6e-r_aiQ%40mail.gmail.com.
