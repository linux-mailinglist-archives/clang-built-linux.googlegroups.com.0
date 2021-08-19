Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOEC7CEAMGQEPL4LWCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F073F13EA
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 08:59:05 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id j67-20020a6255460000b02902feebfd791esf2611361pfb.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 23:59:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629356344; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pn+Y+DC7rDR/bbCq40hBaJIjoOC/HObf3igiNefUrsmSIuxtUOPIzDL/S/r9AwMX44
         VSwSfGchOz71bBarPmS+kxaiskkYPpTWEoS6Nmnf5oQVCVPrdWU1V5AsPh1nZ+FK9dzj
         /9MMBAqsMG83OfJScAz9wQ5yBcK9G9BCD+NBNo1KBSf+0vkeaSQnZ3W3U3SPOP5/yc99
         IP64GYwZTEOIK5ZJtCsYoOiwdI3QcWdgmMe84MoiTDC9wi0cNio6WysgsQ+BnZnLe6QS
         ZA8gt57FzTs1O9BKNuZwNjtCa0S6WRT4m77pogNj9Nc7qgZRCx9WpHHXU7H7wzefi/ld
         EZYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nRpRmWNLYXM8mXgIXX0oHQ+1aMsaLnLGUDxblPOFL94=;
        b=0PPvRbnWsyEe/CRqw7tO0+7VuKLi8RPWaR5Zyqir+eOQog3xDXw2N22puzfm16uXR7
         /gdBRYpYNW3jkOv+RQatFlekCW0XTtaKVT9eE/RmFoSCR/lG+l0bDFJr0LnrHVynSX/H
         Pmgc1dT8K8M0FQEKwy8jzZtwrCvxCt/hnL/EBRLD0LKUYm2L4RCfJncE1bGOAjjW49Fs
         s2NQOZ6O4McGEJxe+y/JxorXmc60bB6dBxyVN+alCJXBrwNCSdBxTlbnFMeLLASZRXdQ
         r5MO8m2IacSMUdW1Hwjd6zp+Kk5K+Q6/l4b+s+1L0Qz57BkTIhIRkPyqmbiPXZEpXazz
         8b7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UXAunTYD;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nRpRmWNLYXM8mXgIXX0oHQ+1aMsaLnLGUDxblPOFL94=;
        b=Y8Rel/XA2AiK9PIWqI8AZV/Lglcjd9HnPW9Vpr/tcfTmstQksysscPfQ+mTRM9t0n+
         MbfbTguz9uqV7Kix4tkl2X3XdU40RZh5XER4hwVLCNoEWTvXw/24C6bk7YrzF2BPbrVc
         A2m/BM27HfT3dieP0UdgLT9jVVbuCxWsmy84M/C37SFqyMNEP9SRaSe6N6D7MNuB0s9K
         JpQx/B5trQqrIYD6sVbNt49XBX5J30NmW7Bo8n54U7mW4Cg39YjYnvZQF50l+SVAEKDV
         BggBJ20xzWU3/z9ATUk/hqvYE6syLemjbytsW2idAJSsYAiBXeFEaaZA0d4Zv8NndGsH
         /TEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nRpRmWNLYXM8mXgIXX0oHQ+1aMsaLnLGUDxblPOFL94=;
        b=i2FXBZExL2XcsviiGdGILuTcLQJMzwzkVZaK4q2IjyD/sif1p3gvZDEqn2hGOjTmsz
         KfARu2N5750UbM51MpqRvrxXKDDAjLgvP1xnLCwRqxdsOViEruAQeoXqccFD125lmAvw
         8/0zfNxjvG5MmHD08CNNTanHPUpNiHNHCJjXh9vCsIVkbujIL4DjccaPrmbS84KgobMo
         fPD/yEG1yx0XiAAqflDGngZzJrxcEqGYJ2IR/sUCJ4VoJadbAWOuH26PTtzzWi4z9S5j
         vnCLuz4GXxSidiXecWvP3AD8N8jnozCfJ/BKrWUuyL7fMagrpmwBV4XQo2zEh/b+K92p
         Ue8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334H49gFP/BZb43rRE2x0WcEP/oIz/FQOnKx47jJWuLOCT1RoRB
	fL/JPDIly7PSgKEB7KAsuE8=
X-Google-Smtp-Source: ABdhPJwyPvIKBFd+V2/H1if7Yix0rIYWdM/z0SZ6YZvEm4B4/ot72zExLQw0beUFV7e43eFlYDvVLw==
X-Received: by 2002:a17:902:7d82:b029:12c:5930:98c7 with SMTP id a2-20020a1709027d82b029012c593098c7mr10438600plm.46.1629356344385;
        Wed, 18 Aug 2021 23:59:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ff04:: with SMTP id k4ls2212281pgi.11.gmail; Wed, 18 Aug
 2021 23:59:03 -0700 (PDT)
X-Received: by 2002:a63:101c:: with SMTP id f28mr12688789pgl.330.1629356343814;
        Wed, 18 Aug 2021 23:59:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629356343; cv=none;
        d=google.com; s=arc-20160816;
        b=xj1OjEemzO5IOIP6GPa6LRPl+DzvAlMU1nBZta9pfIS5usME2Esm5Ahm+d6w+UP0V+
         tVC1K3lfCNiRX3qK0nfYgJxpwdNSCPldWGEwRUST2MZmHbkAX26MYbSs7fG16wQq3ges
         1blXVeESIPPTPhLzLfL1lvnW92aO7uCMeAM4SRKxFgWk6kCXu+QqoUIOY6HR49GXU+2j
         VdeAQLl7S375iDPzPrVF0cnBksLnqNP29uBjhIaK6Aavaj97rakFNNzCuRuxe9RUwfEP
         uuc2/vFenJtm9aE6ifVjRbmaFRtnVp/WTdgT/dXkvnNfhYwF9WRfPXaE0GJD7on9F9bP
         Sr0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=z7kmamtsFLaM9G/N0adEqCxiung+DUmrpekphu6Qphw=;
        b=fEMSFUCKQ0tJMhVRvm6J/B5vitTkXcMgw1yo2bhvHowS0ZeihGCDedr8ygs3bLLZHU
         ajG2B6nhgjQvO1RpJD4nZAllCGihY5loOzTEczDvDHVZbCTL6d4AbNcNwcw1eO4mhxoa
         Ll6RC6rjiIQykvwLYyO7I9batmsa/emAzajvsVP+TPxQGJzwRa34EOoBWyCt+WMGkJlA
         Ypvx+3Dqg8s3d4pkNZbQjigyZs6XODqKKHlynJbxYzJSWhizeLf/O6bSu6Tnh4PSTmCZ
         ya3LdHwL3+UO5ZkQLVCKFuTzkl/jLfLQFw4BsMHr72ZkO5NTb+XDotdqt3Puutad1vII
         d8+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UXAunTYD;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id k4si180658pjt.3.2021.08.18.23.59.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 23:59:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Received: by mail-pf1-x42c.google.com with SMTP id 7so4614579pfl.10
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 23:59:03 -0700 (PDT)
X-Received: by 2002:a63:d456:: with SMTP id i22mr12747816pgj.421.1629356343545;
        Wed, 18 Aug 2021 23:59:03 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q18sm2086961pfj.178.2021.08.18.23.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 23:59:03 -0700 (PDT)
Date: Wed, 18 Aug 2021 23:59:01 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>,
	linux-kernel@vger.kernel.org,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 10/13] kbuild: build modules in the same way with/without
 Clang LTO
Message-ID: <202108182348.715797A@keescook>
References: <20210819005744.644908-1-masahiroy@kernel.org>
 <20210819005744.644908-11-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210819005744.644908-11-masahiroy@kernel.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UXAunTYD;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c
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

On Thu, Aug 19, 2021 at 09:57:41AM +0900, Masahiro Yamada wrote:
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
> Since the Clang LTO introduction, ugly CONFIG_LTO_CLANG conditionals
> are sprinkled everywhere in the kbuild code.
> 
> Another confusion for Clang LTO builds is, <modname>.o is an archive
> that contains LLVM bitcode files. The suffix should have been .a
> instead of .o
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

I like this design, but I do see that it has a small but measurable
impact on build times:

allmodconfig build, GCC:

make -j72 allmodconfig
make -j72 -s clean && time make -j72

    kbuild/for-next:
        6m16.140s
        6m19.742s
        6m15.848s

    +this-series:
        6m22.742s
        6m20.589s
        6m19.911s

Thought with not so many modules, it's within the noise:

defconfig build, GCC:

make -j72 defconfig
make -j72 -s clean && time make -j72

    kbuild/for-next:
        0m41.579s
        0m41.214s
        0m41.370s

    +series:
        0m41.423s
        0m41.434s
        0m41.384s


However, I do see that even LTO builds are slightly slower now, so
perhaps the above numbers aren't due to the added $(AR) step:

allmodconfig + Clang ThinLTO:

make -j72 LLVM=1 LLVM_IAS=1 allmodconfig
./scripts/config -d GCOV_KERNEL -d KASAN -d LTO_NONE -e LTO_CLANG_THIN
make -j72 LLVM=1 LLVM_IAS=1 olddefconfig
make -j72 -s LLVM=1 LLVM_IAS=1 clean && time make -j72 LLVM=1 LLVM_IAS=1

    kbuild/for-next:
        9m53.927s
        9m45.874s
        9m47.722s

    +series:
        9m58.395s
        9m53.201s
        9m56.387s


I haven't been able to isolate where the changes in build times are
coming from (nor have I done link-phase-only timings -- I realize those
are really the most important).

I did notice some warnings from this patch, though, in the
$(modules-single) target:

scripts/Makefile.build:434: target 'drivers/scsi/libiscsi.a' given more than once in the same rule
scripts/Makefile.build:434: target 'drivers/atm/suni.a' given more than once in the same rule

(And I saw the new "FORCE prerequisite is missing" warnings, but those
are in kbuild/for-next and not new for this series.)

Anyway, this is a great clean-up; thank you very much for finding the
time for it! I'll keep poking at it tomorrow.

-Kees

> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  scripts/Makefile.build    | 103 ++++++++++++++++++--------------------
>  scripts/Makefile.lib      |  11 ++--
>  scripts/Makefile.modfinal |   4 +-
>  scripts/Makefile.modpost  |   7 +--
>  scripts/mod/modpost.c     |   6 +--
>  scripts/mod/sumversion.c  |   6 +--
>  6 files changed, 61 insertions(+), 76 deletions(-)
> 
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 37d6f6da34d6..957addea830b 100644
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
> @@ -282,33 +280,12 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $(objtool_dep) FORCE
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
> -		--whole-archive $(filter-out FORCE,$^)
> -
> -ifdef CONFIG_STACK_VALIDATION
> -# objtool was skipped for LLVM bitcode, run it now that we have compiled
> -# modules into native code
> -cmd_cc_lto_link_modules += ;						\
> -	$(objtree)/tools/objtool/objtool $(objtool_args) --module $@
> -endif
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
> @@ -412,17 +389,6 @@ $(obj)/%.asn1.c $(obj)/%.asn1.h: $(src)/%.asn1 $(objtree)/scripts/asn1_compiler
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
> @@ -442,10 +408,10 @@ $(obj)/built-in.a: $(real-obj-y) FORCE
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
> @@ -454,26 +420,55 @@ $(obj)/modules.order: $(obj-m) FORCE
>  $(obj)/lib.a: $(lib-y) FORCE
>  	$(call if_changed,ar)
>  
> -# NOTE:
> -# Do not replace $(filter %.o,^) with $(real-prereqs). When a single object
> -# module is turned into a multi object module, $^ will contain header file
> -# dependencies recorded in the .*.cmd file.
> +#
> +# Rule to prelink modules
> +#
> +
> +ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
> +
> +cmd_merge_symver =					\
> +	rm -f $@;					\
> +	touch $@;					\
> +	for o in $$($(AR) t $<); do			\
> +		if [ -s $${o}.symversions ]; then	\
> +			cat $${o}.symversions >> $@;	\
> +		fi;					\
> +	done
> +
> +$(obj)/%.prelink.symversions: $(obj)/%.a FORCE
> +	$(call if_changed,merge_symver)
> +
> +$(obj)/%.prelink.o: ld_flags += --script=$(filter %.symversions,$^)
> +module-symver = $(obj)/%.prelink.symversions
> +
> +endif
> +
> +quiet_cmd_ld_o_a = LD [M]  $@
> +      cmd_ld_o_a = $(LD) $(ld_flags) -r -o $@ --whole-archive $<
> +
> +$(obj)/%.prelink.o: $(obj)/%.a $(module-symver) FORCE
> +	$(call if_changed,ld_o_a)
> +
>  ifdef CONFIG_LTO_CLANG
> -quiet_cmd_link_multi-m = AR [M]  $@
> -cmd_link_multi-m =						\
> -	$(cmd_update_lto_symversions);				\
> -	rm -f $@; 						\
> -	$(AR) cDPrsT $@ $(filter %.o,$^)
> -else
> -quiet_cmd_link_multi-m = LD [M]  $@
> -      cmd_link_multi-m = $(LD) $(ld_flags) -r -o $@ $(filter %.o,$^)
> +ifdef CONFIG_STACK_VALIDATION
> +# objtool was skipped for LLVM bitcode, run it now that we have compiled
> +# modules into native code
> +cmd_ld_o_a += ; $(objtool) $(objtool_args) --module $@
>  endif
> +endif
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
>  
> -$(multi-obj-m): FORCE
> -	$(call if_changed,link_multi-m)
> -$(call multi_depend, $(multi-obj-m), .o, -objs -y -m)
> +targets += $(modules-single) $(modules-multi)
>  
> -targets += $(multi-obj-m)
>  targets := $(filter-out $(PHONY), $(targets))
>  
>  # Add intermediate targets:
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 34c4c11c4bc1..f604d2d01cad 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -106,6 +106,10 @@ multi-dtb-y	:= $(addprefix $(obj)/, $(multi-dtb-y))
>  real-dtb-y	:= $(addprefix $(obj)/, $(real-dtb-y))
>  subdir-ym	:= $(addprefix $(obj)/,$(subdir-ym))
>  
> +modules		:= $(patsubst %.o, %.a, $(obj-m))
> +modules-multi	:= $(patsubst %.o, %.a, $(multi-obj-m))
> +modules-single	:= $(filter-out $(modules-multi), $(filter %.a, $(modules)))
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
> index 270a7df898e2..8c63c52af88d 100644
> --- a/scripts/mod/modpost.c
> +++ b/scripts/mod/modpost.c
> @@ -1991,9 +1991,9 @@ static void read_symbols(const char *modname)
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
> diff --git a/scripts/mod/sumversion.c b/scripts/mod/sumversion.c
> index 760e6baa7eda..8ea0f7b23c63 100644
> --- a/scripts/mod/sumversion.c
> +++ b/scripts/mod/sumversion.c
> @@ -391,14 +391,10 @@ void get_src_version(const char *modname, char sum[], unsigned sumlen)
>  	struct md4_ctx md;
>  	char *fname;
>  	char filelist[PATH_MAX + 1];
> -	int postfix_len = 1;
> -
> -	if (strends(modname, ".lto.o"))
> -		postfix_len = 5;
>  
>  	/* objects for a module are listed in the first line of *.mod file. */
>  	snprintf(filelist, sizeof(filelist), "%.*smod",
> -		 (int)strlen(modname) - postfix_len, modname);
> +		 (int)(strlen(modname) - strlen("prelink.o")), modname);
>  
>  	buf = read_text_file(filelist);
>  
> -- 
> 2.30.2
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108182348.715797A%40keescook.
