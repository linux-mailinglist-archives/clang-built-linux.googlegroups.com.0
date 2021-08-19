Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGH366EAMGQEPYDEY2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id D19433F13B8
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 08:43:38 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id u8-20020a0cec880000b029035825559ec4sf3873150qvo.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 23:43:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629355416; cv=pass;
        d=google.com; s=arc-20160816;
        b=QvhTFQNFZ79HEwYCSHCpPlKxF7ObKs5GsLFfXmo42hSkfpy/mjrLY7YItBWNlB7UQp
         4gUBK5brt3Z12Ba/DaMRszQkqs8xgo2DcVgSnFgnpICarnV4B2rTNuQJ9rKkSEIBmVaY
         bNJTySoIVdyHg3FpGqd/3+Ga9+wtG5HnJVgWCspPERNCsgeCILS+BmvluxnoZ3lP67Ah
         J8C4oN0rOwb2hh8yjurHn4wXx6WwQtK5IW/s7u5k55zT5Bpx1J7PRhFzDeYU1oC5l9Wp
         qrea7zg+sWpRsrYk/EmOLWGhxogdVqEcweP/PZDfSz59k3xEZDcNTP0K+4OwODVF5WZk
         geeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=T3Qn9LBlsL2UYDkb3ILh+cpmezZTTnT5VDibUruvRK8=;
        b=YmjjyjI5kSWdxWtuL5y7okHWmEesFYtonPNstuhMaOy5KN27nQz4CP074Qsm/efbum
         F8AwDwybXDuD8fehay9Pou/rCLavd9vc9PsW7wujGH7+sbnybFUPNyfTXSeRSZFumx5Y
         hQEqjxLPrwbsCrV0mVMK6GEUQn+TKc9MWDt0JpU79Tj1IG5pjYnfNRQfLyWYZRP8LAik
         3gaYGb1/K2v+Vh5EtzXk60s1IvKXCu95ktbRgsIoLxaaRmN7q0Nry6cRhZT0LePpRjQ4
         GXPCIRuFoLHMvL1uEClSA3519e15nhjS5fXf8tW1ugKfc5D8V8ODQ60w4zTpT3bvr8Ly
         LpwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iDB1lKNz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T3Qn9LBlsL2UYDkb3ILh+cpmezZTTnT5VDibUruvRK8=;
        b=VG9FClqpFIzMZtKYaJ+z5K/+5+xJjhYsdA0YuADVAm5Sic8ZzYaeqCFb7RB6R/+e+h
         qLUaLpywNgO6LfTPz4gs6BBMlGqeiJRBg2OwVCI2tFP9FHouS82LC7T5tJdWkFg4HAe7
         o/Il9tDJxSMZD94YbneFf9R1xYZIoh10MYXCiM/T7DsRg2TZ+kTvxJ2bgIBPUYuwlgCl
         hzD4FEvVDw3m3PGhpTnUaP5m523HSQLW0fCAG52+1YMoI/RE0ql20o+j++3EmvdlEGpi
         VUMLns92JxA1vi2yU5hbgxIJJTERtU4dSvsjYV3ASmM9P3qgLXEwcUJRIYcna04EGOBB
         xGSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=T3Qn9LBlsL2UYDkb3ILh+cpmezZTTnT5VDibUruvRK8=;
        b=nPa8+AgZpL60QC7FsQG2xBnXCiPXkjgIcs9MG6l4CaBCBY4Wpz+y4ctm7q7i/IzMKd
         imWRhGNyI6CiB4WWqgyu5btipx/uk/RXeBrK4TdI307AvUuN2cCV6Ntv0aU1ZbO7QPaN
         MpUp05BH/QekLCH9klV0oKpcDX7ZOWsKHEa1HafN6ooli8Cdn6wACSaGKEnj91Ch+Dus
         9XL58Qlhv2czJWAL0MYbXHuI7CPBFOT1ohkyQv9rSpgSAM5zSeSZkji+2Vida8S1k7BS
         fmmaxlVYnWs40ryI6s13VmgOEAxjjhztKt/g9zBjuJhNu/BMXkEkpHaxGQuxvi92ycWg
         Mt4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325PChajEuxdT3Fs8ZqYctEaXeiJ3JxS6a+PKd/LDLLOgfR65Cx
	lcjoqyi03GdsimnM6wprFTQ=
X-Google-Smtp-Source: ABdhPJz0zQD8GkNOYAuvNo6byoAU2P9/y/o/7qcBDlU10wKE7c62IuL0D4dvTKgg9sta9qsfCCRpYg==
X-Received: by 2002:ac8:7f93:: with SMTP id z19mr11263907qtj.328.1629355416456;
        Wed, 18 Aug 2021 23:43:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:d619:: with SMTP id r25ls1095054qkk.3.gmail; Wed, 18 Aug
 2021 23:43:36 -0700 (PDT)
X-Received: by 2002:a05:620a:89b:: with SMTP id b27mr2207020qka.429.1629355416038;
        Wed, 18 Aug 2021 23:43:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629355416; cv=none;
        d=google.com; s=arc-20160816;
        b=vb0YkHFqaHxJBxIiw2rofNl1K78D5/tU6sNd024lwg2mPjv8w98VsAqi2Qg1CMFufA
         bPcSYqFuSe4vkW3Iz4kqrXMxOblVl3Xf7XQpOGQzOZ6yvK9nktxaw8RuAj8Z2CQ0vDMJ
         vjnTWelfCjkVwusoeur7sVzPW9gK/svBwGKweh3xn+sRGS1Bpn58qw5zgDZ2t18pch5W
         dQ3UaxIfCH/CLM37uxaT82DmKq6zrj3kofol0MswqKhqACydHZ1Mu0jO8MlUz4Dz5YsO
         rPCdcwCU6ONdRAi8wkKUUxd6uUGG9ZLaf+MSBcRx+P2R96dBmww1kKAgal3N+KvMr6F9
         sUIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6ocG6XyycPlZ0PSnoxWYAbBlz8cQ7/a5UO+EORskNvg=;
        b=MOlwlvyaGqeW1DrS6JHkluEVOmu/w7xjKPxeRGGp0a4rAlc/4SC4is8/gSSAl/e7au
         23Z4VSNVaUHfRE4EXWxJe/pE8WsoOV3OJ+bIoxgiAoj3jbeoLDCUHLWuGhNPTwyNmqbT
         Whm82i9HCRSuzQFT/7jMVFdOiRfi+8NDjs6bZ6u+jesnHmHvac62J4FtoyCMsjUg1yf9
         mWX+YJAflz+ZIM2911wjF3nwNDBblB9+kWNcVZ3XbP+bWRbJq+OHe7eshoAdnC+FzMhY
         JsMqTY5YGUq/de+ZbsodMz48BAmiCX8cPNpZdBdRMaQTOElpW6iCGunHfQ/KwZXPA2JF
         PgRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iDB1lKNz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id s128si164290qkh.6.2021.08.18.23.43.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 23:43:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id fa24-20020a17090af0d8b0290178bfa69d97so4148113pjb.0
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 23:43:35 -0700 (PDT)
X-Received: by 2002:a17:90a:9b0b:: with SMTP id f11mr13419781pjp.120.1629355415223;
        Wed, 18 Aug 2021 23:43:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w186sm2038277pfw.78.2021.08.18.23.43.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 23:43:34 -0700 (PDT)
Date: Wed, 18 Aug 2021 23:43:33 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>,
	linux-kernel@vger.kernel.org,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 11/13] kbuild: always postpone CRC links for module
 versioning
Message-ID: <202108182342.F24979957@keescook>
References: <20210819005744.644908-1-masahiroy@kernel.org>
 <20210819005744.644908-12-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210819005744.644908-12-masahiroy@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=iDB1lKNz;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f
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

On Thu, Aug 19, 2021 at 09:57:42AM +0900, Masahiro Yamada wrote:
> When CONFIG_MODVERSIONS=y, the CRCs of EXPORT_SYMBOL are linked into
> *.o files in-place.
> 
> It is impossible for Clang LTO because *.o files are not ELF, but LLVM
> bitcode. The CRCs are stored in separate *.symversions files, and then
> supplied to the modpost link.
> 
> Let's do so for CONFIG_LTO_CLANG=n is possible, and unify the module
> versioning code.

I worry about this also now being "unparallelized", but it is a nice
cleanup.

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  scripts/Makefile.build  | 32 ++++++--------------------------
>  scripts/link-vmlinux.sh | 22 ++++++++++++++--------
>  2 files changed, 20 insertions(+), 34 deletions(-)
> 
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 957addea830b..874e84a1f3fc 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -158,17 +158,12 @@ quiet_cmd_cc_o_c = CC $(quiet_modtag)  $@
>  ifdef CONFIG_MODVERSIONS
>  # When module versioning is enabled the following steps are executed:
>  # o compile a <file>.o from <file>.c
> -# o if <file>.o doesn't contain a __ksymtab version, i.e. does
> -#   not export symbols, it's done.
> +# o if <file>.o doesn't contain __ksymtab* symbols, i.e. does
> +#   not export symbols, create an empty *.symversions
>  # o otherwise, we calculate symbol versions using the good old
>  #   genksyms on the preprocessed source and postprocess them in a way
>  #   that they are usable as a linker script
> -# o generate .tmp_<file>.o from <file>.o using the linker to
> -#   replace the unresolved symbols __crc_exported_symbol with
> -#   the actual value of the checksum generated by genksyms
> -# o remove .tmp_<file>.o to <file>.o
>  
> -ifdef CONFIG_LTO_CLANG
>  # Generate .o.symversions files for each .o with exported symbols, and link these
>  # to the kernel and/or modules at the end.
>  cmd_modversions_c =								\
> @@ -178,18 +173,6 @@ cmd_modversions_c =								\
>  	else									\
>  		rm -f $@.symversions;						\
>  	fi;
> -else
> -cmd_modversions_c =								\
> -	if $(OBJDUMP) -h $@ | grep -q __ksymtab; then				\
> -		$(call cmd_gensymtypes_c,$(KBUILD_SYMTYPES),$(@:.o=.symtypes))	\
> -		    > $(@D)/.tmp_$(@F:.o=.ver);					\
> -										\
> -		$(LD) $(KBUILD_LDFLAGS) -r -o $(@D)/.tmp_$(@F) $@ 		\
> -			-T $(@D)/.tmp_$(@F:.o=.ver);				\
> -		mv -f $(@D)/.tmp_$(@F) $@;					\
> -		rm -f $(@D)/.tmp_$(@F:.o=.ver);					\
> -	fi
> -endif
>  endif
>  
>  ifdef CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT
> @@ -348,12 +331,9 @@ ifdef CONFIG_ASM_MODVERSIONS
>  cmd_modversions_S =								\
>  	if $(OBJDUMP) -h $@ | grep -q __ksymtab; then				\
>  		$(call cmd_gensymtypes_S,$(KBUILD_SYMTYPES),$(@:.o=.symtypes))	\
> -		    > $(@D)/.tmp_$(@F:.o=.ver);					\
> -										\
> -		$(LD) $(KBUILD_LDFLAGS) -r -o $(@D)/.tmp_$(@F) $@ 		\
> -			-T $(@D)/.tmp_$(@F:.o=.ver);				\
> -		mv -f $(@D)/.tmp_$(@F) $@;					\
> -		rm -f $(@D)/.tmp_$(@F:.o=.ver);					\
> +		    > $@.symversions;						\
> +	else									\
> +		rm -rf $@.symversions;						\
>  	fi
>  endif
>  
> @@ -424,7 +404,7 @@ $(obj)/lib.a: $(lib-y) FORCE
>  # Rule to prelink modules
>  #
>  
> -ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
> +ifdef CONFIG_MODVERSIONS
>  
>  cmd_merge_symver =					\
>  	rm -f $@;					\
> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> index 17976609c2d8..66ced6ff8e65 100755
> --- a/scripts/link-vmlinux.sh
> +++ b/scripts/link-vmlinux.sh
> @@ -59,8 +59,7 @@ append_symversion()
>  	fi
>  }
>  
> -# If CONFIG_LTO_CLANG is selected, collect generated symbol versions into
> -# .tmp_symversions.lds
> +# Collect generated symbol versions into .tmp_symversions.lds
>  gen_symversions()
>  {
>  	info GEN .tmp_symversions.lds
> @@ -94,14 +93,13 @@ modpost_link()
>  		${KBUILD_VMLINUX_LIBS}				\
>  		--end-group"
>  
> +	if [ -n "${CONFIG_MODVERSIONS}" ]; then
> +		lds="${lds} -T .tmp_symversions.lds"
> +	fi
> +
>  	if [ -n "${CONFIG_LTO_CLANG}" ]; then
>  		gen_initcalls
> -		lds="-T .tmp_initcalls.lds"
> -
> -		if [ -n "${CONFIG_MODVERSIONS}" ]; then
> -			gen_symversions
> -			lds="${lds} -T .tmp_symversions.lds"
> -		fi
> +		lds="${lds} -T .tmp_initcalls.lds"
>  
>  		# This might take a while, so indicate that we're doing
>  		# an LTO link
> @@ -198,6 +196,10 @@ vmlinux_link()
>  
>  	ldflags="${ldflags} ${wl}--script=${objtree}/${KBUILD_LDS}"
>  
> +	if [ -n "${CONFIG_MODVERSIONS}" ]; then
> +		ldflags="${ldflags} ${wl}--script=.tmp_symversions.lds"
> +	fi
> +
>  	# The kallsyms linking does not need debug symbols included.
>  	if [ "$output" != "${output#.tmp_vmlinux.kallsyms}" ] ; then
>  		ldflags="${ldflags} ${wl}--strip-debug"
> @@ -351,6 +353,10 @@ fi;
>  # final build of init/
>  ${MAKE} -f "${srctree}/scripts/Makefile.build" obj=init need-builtin=1
>  
> +if [ -n "${CONFIG_MODVERSIONS}" ]; then
> +	gen_symversions
> +fi
> +
>  #link vmlinux.o
>  modpost_link vmlinux.o
>  objtool_link vmlinux.o
> -- 
> 2.30.2
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108182342.F24979957%40keescook.
