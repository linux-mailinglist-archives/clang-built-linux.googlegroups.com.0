Return-Path: <clang-built-linux+bncBDU43XP6ZAGRB746ZCDQMGQE7YIVHMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 470813CBF88
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Jul 2021 01:00:16 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id z13-20020a05640235cdb02903aa750a46efsf5545755edc.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 16:00:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626476416; cv=pass;
        d=google.com; s=arc-20160816;
        b=HdZV/1sUYqQBwf85WnOBgiFt2KAhQVq8M+KBiJuR0jtRydrujsYeMhtR8x85AW6lfr
         1m9Nf5BIhmCjG057FW2UKRU0k26rxlxtDkj8OiAPayRjBNh5g87sbmwh44TCM2rAJFAa
         /AclXtN7VHk3Qoti2Lj1qPDqrZ4/yAynU/fo0zgCA/hKKvZq4LmUijUCuFaH+WAZnhsv
         U6KD5aGUxx7SzSpm0jY2WvN1CkiR4eFYPuVkdpvatXkP5quF7cxLC5k8N18VPPHMGOSE
         YP6Y9wqd1P4iucYrOZxBWSn/pFCCbYgyhswbnRzz8TDXUWFwNDqWHryOaheNHbhBvlKk
         hk7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=QuafoQ4ZM9Sg0zUPJYukehttAE7rL6TpJhv3i/IPEZ4=;
        b=BGH7zRgCbkJBGXlRlOl2EorUgU5jwvtW7Z2FLZURYKhFkFvdorCo9frAus5U/Ambny
         wZ3clkN/2w2x1U5HcgI6PsObav2J0MRTKd8mL6oZtzqad0fl7UsIR4cZoATwZyNt/8jz
         I4qTnMGXZ6Fqc+GRg4DeC8J/9SEM99685N+Cqvvp0wh1V7cxUqgNs0o6qRIEgRW8eVwR
         3cPXMVKgvJDvfmqQRYyteHoF7A72yXbkxcfuJgZSjRLDAh3XTmaB6vqMSIANxhORl2yM
         Sg78+EVbYH/TNLWvnNkVPqt7pjEOfznIXMKtvCuK5vZ+KPUdomCL8Cmy5RyMAm6A9jT0
         a/4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=cfLJGf5n;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QuafoQ4ZM9Sg0zUPJYukehttAE7rL6TpJhv3i/IPEZ4=;
        b=p0P6ArTTNc5LRCnnrgz3G6gEUPf62iaQKWQRahTouWlhHK4L3V+BMKwWfgP2dBFyAI
         bis467DuAfyQP4ZGLXNQmz6gbq+ROwLH+BXPpiTKFG3bCw36y0VDFd0Sh5yn40169TDd
         7yxCm/QKcxm+AHTBgDltfm0Yyp87kXy6Vr+Yoo5EXV2D7EqucIBWiS4aGRy1eYqbYV/R
         P8BDfPPXj6BMq1RTEpAGqYXACaTHzEfHaDfwX4Ec6oSz50Fl7yT+RHUvbXQDaGSvLanc
         OFlCsZjO3ru7mvQ/McBizl0pGTP7pToM0/X9QDqERxE6Tqnkvov4AxSOCIcCMIkNrtgO
         W1sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QuafoQ4ZM9Sg0zUPJYukehttAE7rL6TpJhv3i/IPEZ4=;
        b=ZxnE+kGcc+bsOQI34KLGg2gTcFUCWiIVojQTcl3a/ZmKBFl75eTwLWzWf6TDU2fIpK
         yTSt8tuifemO5VZnUuWKgi77b02OJsm9MSyw+yPUG+bm2S8hA/W3EcFfjAvpK6pXJXGQ
         EawaOUrLkuZPz+sWQZhTuLBDCX8Bt9QPCEHGm9NVozUwvrtUeawlrRV9wokzX/DUKHmI
         QLCK18+H7X92kVFJ/AamNHZcxinTpGB8PuqaEgeCP/9vT+9woIgn15aA5EDPPguBXSnj
         bwDm3gXQiNUCFXg3/9U//Ypdr6gSa3sQo/17LYRFMgh4I/EkbUA39nzkcPy+8BzcdW2Z
         mutw==
X-Gm-Message-State: AOAM5331GaP0+Bd3RqaAxB0ieZi/MR+NTq7vtNUAUWNv7l3E93lYFlVE
	+2oYBLxqFpqpKiAZZpevhr4=
X-Google-Smtp-Source: ABdhPJxfECwG5UePflTr3XtGdjCFqUQSiEOfEumEUnQxd6y0CmK63Jeq2G/lRWdrd2RpG7txvFLk5w==
X-Received: by 2002:a17:907:724b:: with SMTP id ds11mr14653034ejc.192.1626476415939;
        Fri, 16 Jul 2021 16:00:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:a205:: with SMTP id r5ls5343793ejy.9.gmail; Fri, 16
 Jul 2021 16:00:15 -0700 (PDT)
X-Received: by 2002:a17:906:4dcf:: with SMTP id f15mr14167495ejw.400.1626476415011;
        Fri, 16 Jul 2021 16:00:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626476415; cv=none;
        d=google.com; s=arc-20160816;
        b=SV5oAFQnCP1dN0+oF4IdpsLlAV/88MGL/Kx5EwoKIDQdW9OnZtw8k7IUiykoGc7Ceo
         wjWAHGBYLNpdbfpGESwF13n6vzyqbutx0//3VloKCn6bY03+2M20QaZjbDDHr6BHbnwE
         cgoiARvxyaPrjwlYJm7GOM+8O+aH3w9zyvUN7M77fsTDfhNcCYqftxkjlz4/GEJi8mv9
         jMTZEh6H40gC2NtWgN/6GmD8s+VvFvYyMzD+1kmNj07SEGwYKGE5vM+0ZhD9THE+YFqn
         DNSxI2287P30kw/xFx+B2qzk2NQNzss8sfdHqb1ectKlaILkHWXbH1sM4h8iWGVSGBT2
         TyzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=r4eIb85gpwrzPUYTj2NVSS19F0NHWELbLKozaebxMLg=;
        b=kcJ/ZoxhE5FobCfhW0HUZc0qqd2YsgfSWUnYJ44NoJyjLeuH7Lltm6lU8r7FZWYk1j
         18Tj+rdNsLDJLqqEd6UCUp4qCB2VuNDOHbkajz/BrDLihxiU+7VXLVMcOwJQ+9TsR6zB
         QJcTOCyBxjvUyIwhr4EDElqxD/D6dVvr8GsGtPwRIDHh6gpvqpev6Y8meedMndrCNPPG
         9zq0JCCu0Oy6hwYH5Gs6shRJ3m1tUg8V5sQaTvcFR92rzFo4crh6QOY33QhytCeoBIsU
         6yqE5ZI/qe88bAuUum/OPIk/iHi16rJicNgGA+pr5E89ZJMZo9sJA7wa+Fi1f+x0aAVX
         mUJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=cfLJGf5n;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch. [185.70.40.136])
        by gmr-mx.google.com with ESMTPS id be24si402949edb.1.2021.07.16.16.00.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jul 2021 16:00:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) client-ip=185.70.40.136;
Date: Fri, 16 Jul 2021 23:00:05 +0000
To: Sami Tolvanen <samitolvanen@google.com>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Alexander Lobakin <alobakin@pm.me>, Kees Cook <keescook@chromium.org>, Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: Re: [PATCH] kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
Message-ID: <20210716225245.67939-1-alobakin@pm.me>
In-Reply-To: <20210716204545.3536354-1-samitolvanen@google.com>
References: <20210716204545.3536354-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=cfLJGf5n;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

From:   Sami Tolvanen <samitolvanen@google.com>
Date:   Fri, 16 Jul 2021 13:45:45 -0700

> With CONFIG_LTO_CLANG, we currently link modules into native
> code just before modpost, which means with TRIM_UNUSED_KSYMS
> enabled, we still look at the LLVM bitcode in the .o files when
> generating the list of used symbols. As the bitcode doesn't
> yet have calls to compiler intrinsics and llvm-nm doesn't see
> function references that only exist in function-level inline
> assembly, we currently need a whitelist for TRIM_UNUSED_KSYMS to
> work with LTO.
>
> This change moves module LTO linking to happen earlier, and
> thus avoids the issue with LLVM bitcode and TRIM_UNUSED_KSYMS
> entirely, allowing us to also drop the whitelist from
> gen_autoksyms.sh.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1369
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  scripts/Makefile.build    | 25 ++++++++++++++++++++++++-
>  scripts/Makefile.lib      |  7 +++++++
>  scripts/Makefile.modfinal | 21 ++-------------------
>  scripts/Makefile.modpost  | 22 +++-------------------
>  scripts/gen_autoksyms.sh  | 12 ------------
>  5 files changed, 36 insertions(+), 51 deletions(-)
>
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 10b2f2380d6f..80e0fa810870 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -202,6 +202,7 @@ sub_cmd_record_mcount =					\
>  	if [ $(@) != "scripts/mod/empty.o" ]; then	\
>  		$(objtree)/scripts/recordmcount $(RECORDMCOUNT_FLAGS) "$(@)";	\
>  	fi;
> +/

Seems like a leftover or a random typo here.

>  recordmcount_source := $(srctree)/scripts/recordmcount.c \
>  		    $(srctree)/scripts/recordmcount.h
>  else
> @@ -271,12 +272,34 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $$(objtool_dep) FORCE
>  	$(call if_changed_rule,cc_o_c)
>  	$(call cmd,force_checksrc)
>
> +ifdef CONFIG_LTO_CLANG
> +# Module .o files may contain LLVM bitcode, compile them into native code
> +# before ELF processing
> +quiet_cmd_cc_lto_link_modules = LTO [M] $@
> +cmd_cc_lto_link_modules =						\
> +	$(LD) $(ld_flags) -r -o $@					\
> +		$(shell [ -s $(@:.lto.o=.o.symversions) ] &&		\
> +			echo -T $(@:.lto.o=.o.symversions))		\
> +		--whole-archive $^
> +
> +ifdef CONFIG_STACK_VALIDATION
> +# objtool was skipped for LLVM bitcode, run it now that we have compiled
> +# modules into native code
> +cmd_cc_lto_link_modules += ;						\
> +	$(objtree)/tools/objtool/objtool $(objtool_args)		\

Now $(part-of-module) inside $(objtool_args) doesn't get expanded
properly, because previously it was being called on x.ko, and now
it's being called on x.lto.o. $(basename $@) returns "x.lto" instead
of "x", and Make doesn't find "x.lto.o" in $(real-objs-m).

An example of objtool args dump:

  LTO [M] fs/btrfs/btrfs.lto.o
Call: ./tools/objtool/objtool orc generate --no-fp --no-unreachable --retpoline --uaccess fs/btrfs/btrfs.lto.o
fs/btrfs/btrfs.lto.o: warning: objtool: static_call: can't find static_call_key symbol: __SCK__might_resched

As can be seen, objtools command line no longer contains "--module".
And this warning about "can't find static_call_key" can appear only
in case of !module -> no -m|--module param was given.

As a result, modules get broken and the kernel panics after loading
initramfs.

> +		$(@:.ko=$(mod-prelink-ext).o)
> +endif
> +
> +$(obj)/%.lto.o: $(obj)/%.o
> +	$(call if_changed,cc_lto_link_modules)
> +endif
> +
>  cmd_mod = { \
>  	echo $(if $($*-objs)$($*-y)$($*-m), $(addprefix $(obj)/, $($*-objs) $($*-y) $($*-m)), $(@:.mod=.o)); \
>  	$(undefined_syms) echo; \
>  	} > $@
>
> -$(obj)/%.mod: $(obj)/%.o FORCE
> +$(obj)/%.mod: $(obj)/%$(mod-prelink-ext).o FORCE
>  	$(call if_changed,mod)
>
>  quiet_cmd_cc_lst_c = MKLST   $@
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 10950559b223..ee985366dddf 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -225,6 +225,13 @@ dtc_cpp_flags  = -Wp,-MMD,$(depfile).pre.tmp -nostdinc                    \
>  		 $(addprefix -I,$(DTC_INCLUDE))                          \
>  		 -undef -D__DTS__
>
> +ifeq ($(CONFIG_LTO_CLANG),y)
> +# With CONFIG_LTO_CLANG, .o files in modules might be LLVM bitcode, so we
> +# need to run # LTO to compile them into native code (.lto.o) before further
> +# processing.
> +mod-prelink-ext := .lto
> +endif
> +
>  # Objtool arguments are also needed for modfinal with LTO, so we define
>  # then here to avoid duplication.
>  objtool_args =								\
> diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
> index 5e9b8057fb24..ff805777431c 100644
> --- a/scripts/Makefile.modfinal
> +++ b/scripts/Makefile.modfinal
> @@ -9,7 +9,7 @@ __modfinal:
>  include include/config/auto.conf
>  include $(srctree)/scripts/Kbuild.include
>
> -# for c_flags and objtool_args
> +# for c_flags and mod-prelink-ext
>  include $(srctree)/scripts/Makefile.lib
>
>  # find all modules listed in modules.order
> @@ -30,23 +30,6 @@ quiet_cmd_cc_o_c = CC [M]  $@
>
>  ARCH_POSTLINK := $(wildcard $(srctree)/arch/$(SRCARCH)/Makefile.postlink)
>
> -ifdef CONFIG_LTO_CLANG
> -# With CONFIG_LTO_CLANG, reuse the object file we compiled for modpost to
> -# avoid a second slow LTO link
> -prelink-ext := .lto
> -
> -# ELF processing was skipped earlier because we didn't have native code,
> -# so let's now process the prelinked binary before we link the module.
> -
> -ifdef CONFIG_STACK_VALIDATION
> -cmd_ld_ko_o +=								\
> -	$(objtree)/tools/objtool/objtool $(objtool_args)		\
> -		$(@:.ko=$(prelink-ext).o);
> -
> -endif # CONFIG_STACK_VALIDATION
> -
> -endif # CONFIG_LTO_CLANG
> -
>  quiet_cmd_ld_ko_o = LD [M]  $@
>        cmd_ld_ko_o +=							\
>  	$(LD) -r $(KBUILD_LDFLAGS)					\
> @@ -72,7 +55,7 @@ if_changed_except = $(if $(call newer_prereqs_except,$(2))$(cmd-check),      \
>
>
>  # Re-generate module BTFs if either module's .ko or vmlinux changed
> -$(modules): %.ko: %$(prelink-ext).o %.mod.o scripts/module.lds $(if $(KBUILD_BUILTIN),vmlinux) FORCE
> +$(modules): %.ko: %$(mod-prelink-ext).o %.mod.o scripts/module.lds $(if $(KBUILD_BUILTIN),vmlinux) FORCE
>  	+$(call if_changed_except,ld_ko_o,vmlinux)
>  ifdef CONFIG_DEBUG_INFO_BTF_MODULES
>  	+$(if $(newer-prereqs),$(call cmd,btf_ko))
> diff --git a/scripts/Makefile.modpost b/scripts/Makefile.modpost
> index c383ba33d837..eef56d629799 100644
> --- a/scripts/Makefile.modpost
> +++ b/scripts/Makefile.modpost
> @@ -41,7 +41,7 @@ __modpost:
>  include include/config/auto.conf
>  include $(srctree)/scripts/Kbuild.include
>
> -# for ld_flags
> +# for mod-prelink-ext
>  include $(srctree)/scripts/Makefile.lib
>
>  MODPOST = scripts/mod/modpost								\
> @@ -118,22 +118,6 @@ $(input-symdump):
>  	@echo >&2 '         Modules may not have dependencies or modversions.'
>  	@echo >&2 '         You may get many unresolved symbol warnings.'
>
> -ifdef CONFIG_LTO_CLANG
> -# With CONFIG_LTO_CLANG, .o files might be LLVM bitcode, so we need to run
> -# LTO to compile them into native code before running modpost
> -prelink-ext := .lto
> -
> -quiet_cmd_cc_lto_link_modules = LTO [M] $@
> -cmd_cc_lto_link_modules =						\
> -	$(LD) $(ld_flags) -r -o $@					\
> -		$(shell [ -s $(@:.lto.o=.o.symversions) ] &&		\
> -			echo -T $(@:.lto.o=.o.symversions))		\
> -		--whole-archive $^
> -
> -%.lto.o: %.o
> -	$(call if_changed,cc_lto_link_modules)
> -endif
> -
>  modules := $(sort $(shell cat $(MODORDER)))
>
>  # KBUILD_MODPOST_WARN can be set to avoid error out in case of undefined symbols
> @@ -144,9 +128,9 @@ endif
>  # Read out modules.order to pass in modpost.
>  # Otherwise, allmodconfig would fail with "Argument list too long".
>  quiet_cmd_modpost = MODPOST $@
> -      cmd_modpost = sed 's/\.ko$$/$(prelink-ext)\.o/' $< | $(MODPOST) -T -
> +      cmd_modpost = sed 's/\.ko$$/$(mod-prelink-ext)\.o/' $< | $(MODPOST) -T -
>
> -$(output-symdump): $(MODORDER) $(input-symdump) $(modules:.ko=$(prelink-ext).o) FORCE
> +$(output-symdump): $(MODORDER) $(input-symdump) $(modules:.ko=$(mod-prelink-ext).o) FORCE
>  	$(call if_changed,modpost)
>
>  targets += $(output-symdump)
> diff --git a/scripts/gen_autoksyms.sh b/scripts/gen_autoksyms.sh
> index da320151e7c3..6ed0d225c8b1 100755
> --- a/scripts/gen_autoksyms.sh
> +++ b/scripts/gen_autoksyms.sh
> @@ -26,18 +26,6 @@ if [ -n "$CONFIG_MODVERSIONS" ]; then
>  	needed_symbols="$needed_symbols module_layout"
>  fi
>
> -# With CONFIG_LTO_CLANG, LLVM bitcode has not yet been compiled into a binary
> -# when the .mod files are generated, which means they don't yet contain
> -# references to certain symbols that will be present in the final binaries.
> -if [ -n "$CONFIG_LTO_CLANG" ]; then
> -	# intrinsic functions
> -	needed_symbols="$needed_symbols memcpy memmove memset"
> -	# ftrace
> -	needed_symbols="$needed_symbols _mcount"
> -	# stack protector symbols
> -	needed_symbols="$needed_symbols __stack_chk_fail __stack_chk_guard"
> -fi
> -
>  ksym_wl=
>  if [ -n "$CONFIG_UNUSED_KSYMS_WHITELIST" ]; then
>  	# Use 'eval' to expand the whitelist path and check if it is relative
> --
> 2.32.0.402.g57bb445576-goog
>
>

Thanks,
Al

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210716225245.67939-1-alobakin%40pm.me.
