Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBROSXGEQMGQEUPH4UZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AE103FCC6B
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 19:39:27 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id ml19-20020a17090b361300b00196588f5090sf1798130pjb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 10:39:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630431558; cv=pass;
        d=google.com; s=arc-20160816;
        b=NXpFaerraWBGv0XKscu6cF2JP9XI0onlB3b0ugM3rAPDbtWeZnAoR//7Z93K1HjD5C
         a3kPCKt4Ssf3f/XNR3uBqBnbJS5vBINCdL/ZWb1MTk0LeeyRcGLcBhgOVDvnrlyn2SxP
         GxRJUnEnvs7gw35jx5v8EfdhKR1UTL5NGYjb8D+40p5VO+SnV8wvG2vegyE2TTVV4cCG
         pCViKP1osZ7I7DFbofzWkQJ23O+2jtruMciBipWMm0tCsobSeGSZldVzO0rYwswhAbp8
         wxwO9+3sLyiNo7ZM+0V1tgeUPiB8KsiLJifoltbdYC85lP0QhLtbphTlcvWHqZ2MJNQx
         4Sew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NJf7wYNRcZQ6Jy7/J9VRDvLh8XPQJe8Qmp2ohaWSAyU=;
        b=YVz+HzUFd+ir6knubkQCHn/K7g1i6Kw/Juzg9IgzCjGH6AyW23wUYIru+xzlL+N2Z1
         MqH+8mSQB6y6kS+Sloc3OujZt8SExuT1uTwj2bDHWTe2CYtxadsJBzfuvahQBvldLXBS
         t12lYMXq8gUBOBFVA9Uj/LZXriYCxtf+WXGjqsQJt7Pp59OOoMd7PebXXQtx6snlqHjX
         nv5J7qtEbGObGjktnqfPdYcPQ8ksuuvuuEhwt+n6QtQctAvR1vvQoeGtTj7n/w5rrBMH
         Euj9eKqEbC+PiKf1xbK3NvsRM2HhoB39/oF7kp1o37xUos8T5535bfZu8SvUBQLyUZLq
         DZMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XPjSJ+1R;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NJf7wYNRcZQ6Jy7/J9VRDvLh8XPQJe8Qmp2ohaWSAyU=;
        b=YJqeFy3fLjj1hDYzWl4rZLWsy1aqssC4JUPS3wYYH26iSELPSNx0kaIC/TQ4RuRJh3
         xbTdRcMxwfwdlaeOHDma7j/IFRU4mnhEiMBxoZzMo78ACsCS/+euxyRYZRt/5A4ARQiK
         Exnb1CwurzyhLcDhuUo6KLphzuo46pWVB2CdfO79hWX1bC/UrEGNtJZRL99k3qoQqEST
         y7A8fPbQMTkYW55uAECWcqRH/24mnMIlQfLTGn5sYzew0axFX5rhCd2ynPvjK5Mmp/Yr
         7O/FL+T/0fRPEMk7pa8UySanRAJxdpNPFXTie1oohu3Mg/4U8oYASCwmnQbEwMXzkmwg
         gmbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NJf7wYNRcZQ6Jy7/J9VRDvLh8XPQJe8Qmp2ohaWSAyU=;
        b=aS/TjJHbqUrZNgCZ8swav/M93L8N19XU00bPzxQqxWnZ6bb1b+2Mtl/HtS62iToZRV
         mPZEVHaWKqtR0OHSZDZKCIR5zp8jgQZAXdfk8dnKsJXUtK1qjbGNEgYx4iYSi++OyiQ0
         r2IDUyB5Mn47AK+GeiKaDGzqhE9S2OUJSFXo7MNq6WtKfUEy+ne9L+6eEieF+vl4KAod
         v1/Qt95sz4EkwHjfpVjB2xZcJFzVVwbkjl0ilgG7N2zLY6bG8VQjUWLNtlXtl9N1HOVU
         WfvlOEJLWiuSWjK3s7EL9ba8fYPV/IHngLqwuXVDs9bBAriNtNlKYwzDxV/KQEd5e5T/
         us2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HfNEb5qiUo5brq7SEaRHpaSKCgx0w+fshYlLTqtNXOK3MY3lc
	BqhrtZDFJt8Kw4SsY3a30vc=
X-Google-Smtp-Source: ABdhPJxJbsjt6v2D50Me65HyLdFy7MJwcaHAAmCyjjrF1DtdOhCwtcvcF28favU6KU7cLNYwFXEqaw==
X-Received: by 2002:a63:5f16:: with SMTP id t22mr27910507pgb.86.1630431558095;
        Tue, 31 Aug 2021 10:39:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:30c3:: with SMTP id w186ls7938038pfw.6.gmail; Tue, 31
 Aug 2021 10:39:17 -0700 (PDT)
X-Received: by 2002:a05:6a00:d4a:b0:3e3:f6:6c71 with SMTP id n10-20020a056a000d4a00b003e300f66c71mr29231537pfv.22.1630431557481;
        Tue, 31 Aug 2021 10:39:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630431557; cv=none;
        d=google.com; s=arc-20160816;
        b=i1PU+GtKgp0OtREuF9T/OvM6DDYCnFu3a5ypN1cSsLuqnaEzakgwkx0gfiG6k0ukHH
         1IUlHBNBtyl6+SqSUOp9uclpKxo+N3b6roKgLot+VpqKMRGMBkNLaVpVbccVO3e5a3rL
         f1okexXg7S7a+suYb1LdginHn/ExqKa0q3wSCt4nKvgXzDHoHDlWrOKoXED14OtMqvYl
         GBZtFMwdcT1jjhz+Ev0F1JxxMNvazK1a3jQgPGIwT4brSiaxrxD5R0mJC0Qcppsjt5Wj
         ctMS/RoASgutQU2n/fw5gqsLKwylAB0CO8rw70aMk9zyBGWQhObL8TLU6eFmZFKlHS53
         6UVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=F7echhAfjgqeCGKrHcBGPpDR6/tLyVVtHE9PZ+Scui8=;
        b=X7s6Wo8r3IMx+ab31b3x2cTqQo2GSCB5NfMBjYowMHwRJgoeppZC4tGggNcfO2WXvM
         tQZ97p6jG3Hg2QTsGEg1Y79CYbhSljGwq7BJ2qj/MlWFWQB1LVY7myrcxMMxIvyJ2VFq
         yCJH7C2OtoHOsFKSQ+BySP2WlR1zf7RXUAhGntAfsvbazcJI3b6nGrEi0CHXGrAg/0vP
         /KmbqLkn6t43shnlU5o9QWXqGRrsvmzfxftQnmrb3oUHarK2OSkIVz7O3mJBCBYYUCrr
         AIpkZTZDLsJu82EHoUPV7hLWyQXglz5KtOXOEgy+UXOS4ujtugC6JqAoyBWhjhUQD9mL
         nGqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XPjSJ+1R;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id 136si1383603pfz.2.2021.08.31.10.39.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Aug 2021 10:39:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Received: by mail-pg1-x52c.google.com with SMTP id r2so17461410pgl.10
        for <clang-built-linux@googlegroups.com>; Tue, 31 Aug 2021 10:39:17 -0700 (PDT)
X-Received: by 2002:a63:5317:: with SMTP id h23mr28060938pgb.446.1630431556989;
        Tue, 31 Aug 2021 10:39:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v17sm18016268pff.6.2021.08.31.10.39.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Aug 2021 10:39:16 -0700 (PDT)
Date: Tue, 31 Aug 2021 10:39:15 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 08/13] kbuild: build modules in the same way
 with/without Clang LTO
Message-ID: <202108311037.B3C7FCAF@keescook>
References: <20210831074004.3195284-1-masahiroy@kernel.org>
 <20210831074004.3195284-9-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210831074004.3195284-9-masahiroy@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=XPjSJ+1R;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c
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

On Tue, Aug 31, 2021 at 04:39:59PM +0900, Masahiro Yamada wrote:
> When Clang LTO is enabled, additional intermediate files *.lto.o are
> created because LLVM bitcode must be converted to ELF before modpost.
> 
> For non-LTO builds:
> 
>          $(LD)             $(LD)
>   objects ---> <modname>.o -----> <modname>.ko
>                              |
>           <modname>.mod.o ---/
> 
> For Clang LTO builds:
> 
>          $(AR)            $(LD)                 $(LD)
>   objects ---> <modname>.o ---> <modname>.lto.o -----> <modname>.ko
>                                                   |
>                                 <modname>.mod.o --/
> 
> Since the Clang LTO introduction, Kbuild code is complicated due to
> CONFIG_LTO_CLANG conditionals sprinkled everywhere.
> 
> Another confusion for Clang LTO builds is, <modname>.o is an archive
> that contains LLVM bitcode files. The suffix should be .a instead of .o
> 
> To clean up the code, unify the build process of modules, as follows:
> 
>          $(AR)            $(LD)                     $(LD)
>   objects ---> <modname>.a ---> <modname>.prelink.o -----> <modname>.ko
>                                                       |
>                                 <modname>.mod.o ------/
> 
> Here, 'objects' are either ELF or LLVM bitcode. <modname>.a is an archive,
> <modname>.prelink.o is ELF.

This is a good diagram and helps me understand what's happening here. Do
you think there's a place for it somewhere in the kbuild documentation?

> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

My question about speed changes also applies to this, since there's now
a new step for non-LTO builds. I think you said it wasn't a meaningful
change in speed, but I think it'd be worth mentioning performance
changes in this commit message.

> ---
> 
>  scripts/Makefile.build    | 100 +++++++++++++++++---------------------
>  scripts/Makefile.lib      |  11 ++---
>  scripts/Makefile.modfinal |   4 +-
>  scripts/Makefile.modpost  |   7 +--
>  scripts/mod/modpost.c     |   6 +--
>  5 files changed, 56 insertions(+), 72 deletions(-)
> 
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 3ad1b1227371..cdc09e9080ca 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -88,9 +88,7 @@ endif
>  
>  targets-for-modules := $(patsubst %.o, %.mod, $(filter %.o, $(obj-m)))
>  
> -ifdef CONFIG_LTO_CLANG
> -targets-for-modules += $(patsubst %.o, %.lto.o, $(filter %.o, $(obj-m)))
> -endif
> +targets-for-modules += $(patsubst %.o, %.prelink.o, $(filter %.o, $(obj-m)))
>  
>  ifdef need-modorder
>  targets-for-modules += $(obj)/modules.order
> @@ -243,9 +241,12 @@ endif # CONFIG_STACK_VALIDATION
>  
>  ifdef CONFIG_LTO_CLANG
>  
> -# Skip objtool for LLVM bitcode
> +# Skip objtool LLVM bitcode

Nit: needless comment change?

>  $(obj)/%o: objtool-enabled :=
>  
> +# Run objtool now that we have compiled modules into native code
> +$(obj)/%.prelink.o: objtool-enabled := y
> +
>  else
>  
>  # 'OBJECT_FILES_NON_STANDARD := y': skip objtool checking for a directory
> @@ -255,6 +256,8 @@ else
>  $(obj)/%o: objtool-enabled = $(if $(filter-out y%, \
>  	$(OBJECT_FILES_NON_STANDARD_$(basetarget).o)$(OBJECT_FILES_NON_STANDARD)n),y)
>  
> +$(obj)/%.prelink.o: objtool-enabled :=
> +
>  endif
>  
>  ifdef CONFIG_TRIM_UNUSED_KSYMS
> @@ -287,32 +290,12 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) FORCE
>  	$(call if_changed_rule,cc_o_c)
>  	$(call cmd,force_checksrc)
>  
> -ifdef CONFIG_LTO_CLANG
> -# Module .o files may contain LLVM bitcode, compile them into native code
> -# before ELF processing
> -quiet_cmd_cc_lto_link_modules = LTO [M] $@
> -cmd_cc_lto_link_modules =						\
> -	$(LD) $(ld_flags) -r -o $@					\
> -		$(shell [ -s $(@:.lto.o=.o.symversions) ] &&		\
> -			echo -T $(@:.lto.o=.o.symversions))		\
> -		--whole-archive $(filter-out FORCE,$^)			\
> -		$(cmd_objtool)
> -
> -# objtool was skipped for LLVM bitcode, run it now that we have compiled
> -# modules into native code
> -$(obj)/%.lto.o: objtool-enabled = y
> -$(obj)/%.lto.o: part-of-module := y
> -
> -$(obj)/%.lto.o: $(obj)/%.o FORCE
> -	$(call if_changed,cc_lto_link_modules)
> -endif
> -
>  cmd_mod = { \
>  	echo $(if $($*-objs)$($*-y)$($*-m), $(addprefix $(obj)/, $($*-objs) $($*-y) $($*-m)), $(@:.mod=.o)); \
>  	$(undefined_syms) echo; \
>  	} > $@
>  
> -$(obj)/%.mod: $(obj)/%$(mod-prelink-ext).o FORCE
> +$(obj)/%.mod: $(obj)/%.prelink.o FORCE
>  	$(call if_changed,mod)
>  
>  quiet_cmd_cc_lst_c = MKLST   $@
> @@ -416,17 +399,6 @@ $(obj)/%.asn1.c $(obj)/%.asn1.h: $(src)/%.asn1 $(objtree)/scripts/asn1_compiler
>  $(subdir-builtin): $(obj)/%/built-in.a: $(obj)/% ;
>  $(subdir-modorder): $(obj)/%/modules.order: $(obj)/% ;
>  
> -# combine symversions for later processing
> -ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
> -      cmd_update_lto_symversions =					\
> -	rm -f $@.symversions						\
> -	$(foreach n, $(filter-out FORCE,$^),				\
> -		$(if $(shell test -s $(n).symversions && echo y),	\
> -			; cat $(n).symversions >> $@.symversions))
> -else
> -      cmd_update_lto_symversions = echo >/dev/null
> -endif
> -
>  #
>  # Rule to compile a set of .o files into one .a file (without symbol table)
>  #
> @@ -446,10 +418,10 @@ $(obj)/built-in.a: $(real-obj-y) FORCE
>  # modules.order unless contained modules are updated.
>  
>  cmd_modules_order = { $(foreach m, $(real-prereqs), \
> -	$(if $(filter %/modules.order, $m), cat $m, echo $(patsubst %.o,%.ko,$m));) :; } \
> +	$(if $(filter %/modules.order, $m), cat $m, echo $(patsubst %.a,%.ko,$m));) :; } \
>  	| $(AWK) '!x[$$0]++' - > $@
>  
> -$(obj)/modules.order: $(obj-m) FORCE
> +$(obj)/modules.order: $(modules) FORCE
>  	$(call if_changed,modules_order)
>  
>  #
> @@ -458,26 +430,44 @@ $(obj)/modules.order: $(obj-m) FORCE
>  $(obj)/lib.a: $(lib-y) FORCE
>  	$(call if_changed,ar)
>  
> -# NOTE:
> -# Do not replace $(filter %.o,^) with $(real-prereqs). When a single object
> -# module is turned into a multi object module, $^ will contain header file
> -# dependencies recorded in the .*.cmd file.
> -ifdef CONFIG_LTO_CLANG
> -quiet_cmd_link_multi-m = AR [M]  $@
> -cmd_link_multi-m =						\
> -	$(cmd_update_lto_symversions);				\
> -	rm -f $@; 						\
> -	$(AR) cDPrsT $@ $(filter %.o,$^)
> -else
> -quiet_cmd_link_multi-m = LD [M]  $@
> -      cmd_link_multi-m = $(LD) $(ld_flags) -r -o $@ $(filter %.o,$^)
> +#
> +# Rule to prelink modules
> +#
> +
> +ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
> +
> +cmd_merge_symver = $(PERL) scripts/merge-symvers.pl -a $(AR) -o $@ $<
> +
> +$(obj)/%.prelink.symversions: $(obj)/%.a FORCE
> +	$(call if_changed,merge_symver)
> +
> +targets += $(patsubst %.a, %.prelink.symversions, $(modules))
> +
> +$(obj)/%.prelink.o: ld_flags += --script=$(filter %.symversions,$^)
> +module-symver = $(obj)/%.prelink.symversions
> +
>  endif
>  
> -$(multi-obj-m): FORCE
> -	$(call if_changed,link_multi-m)
> -$(call multi_depend, $(multi-obj-m), .o, -objs -y -m)
> +quiet_cmd_ld_o_a = LD [M]  $@
> +      cmd_ld_o_a = $(LD) $(ld_flags) -r -o $@ --whole-archive $< $(cmd_objtool)
> +
> +$(obj)/%.prelink.o: part-of-module := y
> +
> +$(obj)/%.prelink.o: $(obj)/%.a $(module-symver) FORCE
> +	$(call if_changed,ld_o_a)
> +
> +quiet_cmd_ar_module = AR [M]  $@
> +      cmd_ar_module = rm -f $@; $(AR) cDPrST $@ $(real-prereqs)
> +
> +$(modules-single): %.a: %.o FORCE
> +	$(call if_changed,ar_module)
> +
> +$(modules-multi): FORCE
> +	$(call if_changed,ar_module)
> +$(call multi_depend, $(modules-multi), .a, -objs -y -m)
> +
> +targets += $(modules-single) $(modules-multi)
>  
> -targets += $(multi-obj-m)
>  targets := $(filter-out $(PHONY), $(targets))
>  
>  # Add intermediate targets:
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 34c4c11c4bc1..5074922db82d 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -106,6 +106,10 @@ multi-dtb-y	:= $(addprefix $(obj)/, $(multi-dtb-y))
>  real-dtb-y	:= $(addprefix $(obj)/, $(real-dtb-y))
>  subdir-ym	:= $(addprefix $(obj)/,$(subdir-ym))
>  
> +modules		:= $(patsubst %.o, %.a, $(obj-m))
> +modules-multi	:= $(sort $(patsubst %.o, %.a, $(multi-obj-m)))
> +modules-single	:= $(sort $(filter-out $(modules-multi), $(filter %.a, $(modules))))
> +
>  # Finds the multi-part object the current object will be linked into.
>  # If the object belongs to two or more multi-part objects, list them all.
>  modname-multi = $(sort $(foreach m,$(multi-obj-ym),\
> @@ -225,13 +229,6 @@ dtc_cpp_flags  = -Wp,-MMD,$(depfile).pre.tmp -nostdinc                    \
>  		 $(addprefix -I,$(DTC_INCLUDE))                          \
>  		 -undef -D__DTS__
>  
> -ifeq ($(CONFIG_LTO_CLANG),y)
> -# With CONFIG_LTO_CLANG, .o files in modules might be LLVM bitcode, so we
> -# need to run LTO to compile them into native code (.lto.o) before further
> -# processing.
> -mod-prelink-ext := .lto
> -endif
> -
>  # Useful for describing the dependency of composite objects
>  # Usage:
>  #   $(call multi_depend, multi_used_targets, suffix_to_remove, suffix_to_add)
> diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
> index ff805777431c..1b6401f53662 100644
> --- a/scripts/Makefile.modfinal
> +++ b/scripts/Makefile.modfinal
> @@ -9,7 +9,7 @@ __modfinal:
>  include include/config/auto.conf
>  include $(srctree)/scripts/Kbuild.include
>  
> -# for c_flags and mod-prelink-ext
> +# for c_flags
>  include $(srctree)/scripts/Makefile.lib
>  
>  # find all modules listed in modules.order
> @@ -55,7 +55,7 @@ if_changed_except = $(if $(call newer_prereqs_except,$(2))$(cmd-check),      \
>  
>  
>  # Re-generate module BTFs if either module's .ko or vmlinux changed
> -$(modules): %.ko: %$(mod-prelink-ext).o %.mod.o scripts/module.lds $(if $(KBUILD_BUILTIN),vmlinux) FORCE
> +$(modules): %.ko: %.prelink.o %.mod.o scripts/module.lds $(if $(KBUILD_BUILTIN),vmlinux) FORCE
>  	+$(call if_changed_except,ld_ko_o,vmlinux)
>  ifdef CONFIG_DEBUG_INFO_BTF_MODULES
>  	+$(if $(newer-prereqs),$(call cmd,btf_ko))
> diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
> index eef56d629799..11883b31c615 100644
> --- a/scripts/Makefile.modpost
> +++ b/scripts/Makefile.modpost
> @@ -41,9 +41,6 @@ __modpost:
>  include include/config/auto.conf
>  include $(srctree)/scripts/Kbuild.include
>  
> -# for mod-prelink-ext
> -include $(srctree)/scripts/Makefile.lib
> -
>  MODPOST = scripts/mod/modpost								\
>  	$(if $(CONFIG_MODVERSIONS),-m)							\
>  	$(if $(CONFIG_MODULE_SRCVERSION_ALL),-a)					\
> @@ -128,9 +125,9 @@ endif
>  # Read out modules.order to pass in modpost.
>  # Otherwise, allmodconfig would fail with "Argument list too long".
>  quiet_cmd_modpost = MODPOST $@
> -      cmd_modpost = sed 's/\.ko$$/$(mod-prelink-ext)\.o/' $< | $(MODPOST) -T -
> +      cmd_modpost = sed 's/ko$$/prelink.o/' $< | $(MODPOST) -T -
>  
> -$(output-symdump): $(MODORDER) $(input-symdump) $(modules:.ko=$(mod-prelink-ext).o) FORCE
> +$(output-symdump): $(MODORDER) $(input-symdump) $(modules:ko=prelink.o) FORCE
>  	$(call if_changed,modpost)
>  
>  targets += $(output-symdump)
> diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
> index a26139aa57fd..56cd9b7a5dd0 100644
> --- a/scripts/mod/modpost.c
> +++ b/scripts/mod/modpost.c
> @@ -2000,9 +2000,9 @@ static void read_symbols(const char *modname)
>  		/* strip trailing .o */
>  		tmp = NOFAIL(strdup(modname));
>  		tmp[strlen(tmp) - 2] = '\0';
> -		/* strip trailing .lto */
> -		if (strends(tmp, ".lto"))
> -			tmp[strlen(tmp) - 4] = '\0';
> +		/* strip trailing .prelink */
> +		if (strends(tmp, ".prelink"))
> +			tmp[strlen(tmp) - 8] = '\0';
>  		mod = new_module(tmp);
>  		free(tmp);
>  	}
> -- 
> 2.30.2
> 

Otherwise, looks good!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108311037.B3C7FCAF%40keescook.
