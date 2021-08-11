Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBH7Y2CEAMGQETSI2SYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBDE3E9A3B
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 23:07:44 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id v5-20020a92ab050000b02902223cc2accasf1956174ilh.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 14:07:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628716063; cv=pass;
        d=google.com; s=arc-20160816;
        b=FnEAnqiAAzQYV83zZ0XpjHtOcZESP7NodoiU8bR7ksp41z4AjRPct4mLfN3j6xiVNg
         s4pG8l5O8JV2sB2yreuoNOUe2icGz6ybqJyXXfPfnOC5GXJ4NW9xBDDl/7O74Ivnkvw8
         lIYmAQP8dX5fwzKxe3WC/+Hd/AbwRAFtnwC083jsXI08JchWTgrJMh/s+mm1aBxQCiJp
         msI6KZugQ4yOCwcRN23vN36G00VuwG/qHPTU/ErAseco4Dj+GCItZwDgKfOL9+RkCoCd
         Bh4S/4UBsm0jXX7v3LKFLwuGtHHpJ3iMmc2RpuulznXbQnMx6k2jxPL5LXrSvPrkTrw/
         BtUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=MYABIZVXakKJi+8aPLV4+iL4TTO7giIvX/njlUdCMUo=;
        b=GLE2zyBc60P9TO6ntSCfN3ngGIaxlmrhacpEScS1uygPYqDq3tjrFUlp37AAABxmGs
         ezRobFTEyC6eP719EMcAA2y7T4mcxcqkfk1oQPpdG+2Jx4oLXZukWdzJRfZfstj3OrqQ
         ZQPYsKPJPdMI7eqNnwoY7NmKce+27wPsLcCCQjfPDCApR2mzyQP7dOq35js7n5ghlau7
         CS67TdRnijcDY/ljmo0caJeq6FCf7D0uIf9gy0IAoWBZkc300b2uAdVt+3SeLnI4b7/N
         e0SfHlXNK63JmN9hDe9xYNJML3tkPahl4zzv5hNO6kzixfzhhKXkLpZDyXJp1LQUSuJL
         qF0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=faQ1VqT2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MYABIZVXakKJi+8aPLV4+iL4TTO7giIvX/njlUdCMUo=;
        b=LOX3tmmYLVZapmmhIGT7mZBvx2dMYekf3bWyvS9H99ogFJRw8vPYkFyL1LnMLcZhB3
         Yb1lZUYhIfye3LaKe3iZZ1L/348J7brzRxkqDevErZqn/g8BknNIxs5+kB3hUdAj452n
         7xWxr6LLPpLwcmiq2OP6VEaxP1YlbOJRVmerX5DGlaSSz+VCcd/Y0v2k8LyGLDf8tnQb
         tTcMU3NdoHXHkPdRjqxZSCsyD5ENJiyH6DSFlTHEFfpoZW5u1IsbpaoJN3YvryXq/VIQ
         NB+bDZ6A5IyVjmr3/zu3Eor3dh4nVtWzoY/w4/RfkZQicqME4Us7/zwuilzMTMGNPeEn
         NXFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MYABIZVXakKJi+8aPLV4+iL4TTO7giIvX/njlUdCMUo=;
        b=dolBDCpdNJWRTvHg752BJdJUx7sFyCL8JA+pbeX1BnIcbRIFuvHvM5FzIXmuFmuNku
         zgRmJQ0OQgkkp9DjjBGSNcAk3VaM/kvru8JWch5x5Mgufuu00LlqiGasyaW5ctUYa0VG
         ONqZPrb532QaZUtXPns1Q89rSvv7s97/wSrU357MFcj13E53Yqfu5x/mdVYa+OrNkXU3
         IfmyThgBnDep+cUv1OcL+ahLpDjki/LMPfHmk5zZgxyKPiKptY7W5mqfHvJZKQeDKrYi
         nHhWYM2tzRu/iDIHW/BEgJR0Ey7yQPwOoLhaoTFrYRCI/OWOQiwxE49WhcNvLIl1jqGM
         cP8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530v/gggn27SCfyKjXcZ2H92ft9ok5iPzSQztTX4uehpEUxpAufp
	uzw1OejbfaFHyGVvZ8ruaIg=
X-Google-Smtp-Source: ABdhPJxzm2ow42BQL04AjWMq7GtCXTmR5OQfOhhvLdgld9bWST3Tpc1PctfZgkGPOXNjoOgqgcpZzw==
X-Received: by 2002:a5d:9b8b:: with SMTP id r11mr453481iom.26.1628716063592;
        Wed, 11 Aug 2021 14:07:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:965:: with SMTP id q5ls302559ilt.5.gmail; Wed, 11
 Aug 2021 14:07:43 -0700 (PDT)
X-Received: by 2002:a92:8747:: with SMTP id d7mr300227ilm.173.1628716063204;
        Wed, 11 Aug 2021 14:07:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628716063; cv=none;
        d=google.com; s=arc-20160816;
        b=TR0tB4y7WmAntEteNrkYhwmUuiMXCodmrepsJQ0GSgHw1DyubPAGmRiE9D1Qs2vkBc
         7OmtDDHWMFe/NgSLNjhsRzzFrilGtxXodjvJNOiI/Gdnuhpb5WXc1SG7BhJ3UZ7/VCZU
         jYJQtBRjb/s7z1BJTnu9uYiyuta4MgWW/qvx0tptYCmzNpuM61haxYlrO7YiF4G1vkkQ
         8VeZJPXPhlSxsjPo/dm3drpRxHgMJfyaOZn0NJxayzcvkIlQY83CDroQE61DJ/C+afYU
         g60lwjJptcqosJS7P6JVbLifNpP10gHT0eS+euPpF5EaizGWcl61a+Pr3RBDTk+bdHVr
         N88Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gtzTdYy8PUd+fsEC4iyKlDQnUGB4u43misFQsmm4WUQ=;
        b=eazwQ5HdoFuHHQDlnXPClOKU4NHtgCiSI8mKGAsZhxW0TMKKpK0xHqo5mHroYHNCc0
         DSPcl5SC60iew12hQCCdsbOJViacKPn7UIaZszltNLv/mF8jGzpwSTVjVvHwFTFkD/Ov
         MXku0FwDjrcrvbw4O3Ei9vxSD2yfv6MwSVxxviY9enNyYmSoKzaldN/+KKI3JxtTm9u4
         BNzhwLGPdmop1iFGpl6ieH64pXrSXwLy70I5h9fKnsBLBQYC9RrGIf5xR3TxBntr/AYR
         ChUJpYKM2LxLwWE1c7v2i23yxqLBcHkFrXoaB/J/dJbJbxU73p+wk/fcIGA4gtWX63TO
         WIVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=faQ1VqT2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id k11si30117iov.3.2021.08.11.14.07.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Aug 2021 14:07:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id e15so4365276plh.8
        for <clang-built-linux@googlegroups.com>; Wed, 11 Aug 2021 14:07:43 -0700 (PDT)
X-Received: by 2002:a65:55c6:: with SMTP id k6mr627068pgs.129.1628716062547;
        Wed, 11 Aug 2021 14:07:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b17sm439416pgl.61.2021.08.11.14.07.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Aug 2021 14:07:41 -0700 (PDT)
Date: Wed, 11 Aug 2021 14:07:41 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Alexander Lobakin <alobakin@pm.me>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND v2] kbuild: Fix TRIM_UNUSED_KSYMS with LTO_CLANG
Message-ID: <202108111403.DA451C8A8@keescook>
References: <20210811203035.2463343-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210811203035.2463343-1-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=faQ1VqT2;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e
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

On Wed, Aug 11, 2021 at 01:30:35PM -0700, Sami Tolvanen wrote:
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
> Reviewed-by: Alexander Lobakin <alobakin@pm.me>
> Tested-by: Alexander Lobakin <alobakin@pm.me>
> ---
> Changes in v2:
> - Fixed a couple of typos.
> - Fixed objtool arguments for .lto.o to always include --module.
> 
> ---
>  scripts/Makefile.build    | 24 +++++++++++++++++++++++-
>  scripts/Makefile.lib      |  7 +++++++
>  scripts/Makefile.modfinal | 21 ++-------------------
>  scripts/Makefile.modpost  | 22 +++-------------------
>  scripts/gen_autoksyms.sh  | 12 ------------
>  5 files changed, 35 insertions(+), 51 deletions(-)

Cool; this looks good. (It even makes the code smaller.) I can take this
in my tree if you'd rather not carry it Masahiro?

-Kees

> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 02197cb8e3a7..778dabea3a89 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -271,12 +271,34 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $$(objtool_dep) FORCE
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
> +	$(objtree)/tools/objtool/objtool $(objtool_args) --module	\
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
> index 10950559b223..af1c920a585c 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -225,6 +225,13 @@ dtc_cpp_flags  = -Wp,-MMD,$(depfile).pre.tmp -nostdinc                    \
>  		 $(addprefix -I,$(DTC_INCLUDE))                          \
>  		 -undef -D__DTS__
>  
> +ifeq ($(CONFIG_LTO_CLANG),y)
> +# With CONFIG_LTO_CLANG, .o files in modules might be LLVM bitcode, so we
> +# need to run LTO to compile them into native code (.lto.o) before further
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
> 
> base-commit: 761c6d7ec820f123b931e7b8ef7ec7c8564e450f
> -- 
> 2.32.0.605.g8dce9f2422-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108111403.DA451C8A8%40keescook.
