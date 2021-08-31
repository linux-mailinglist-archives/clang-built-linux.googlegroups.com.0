Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7WVXGEQMGQEJQG5YDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63f.google.com (mail-ej1-x63f.google.com [IPv6:2a00:1450:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE8C3FCC7E
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 19:46:46 +0200 (CEST)
Received: by mail-ej1-x63f.google.com with SMTP id bo11-20020a170906d04b00b005d477e1e41fsf92747ejb.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 10:46:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630431999; cv=pass;
        d=google.com; s=arc-20160816;
        b=hB3r/t8EN48wQRdJtHo8L1zJwHs5PAZyT2pPkH85vMpavvqUDLUpcDUY+EZd92azz6
         Iwxgk/FMP52P5ShUO4Ypcb34/v4FM3rB+36kJMGZSKMtF3CpY79xKuRypoumipPdX2DB
         e21ousPyV1kyhiRCP0zgxse6UOGxg9ryVyzU1/UI1cKv+4yRZQ+XVIZlWqNgb464n71R
         IO3C2kcHBtP6n9oTBUb90wEf3uR8DEDs3GGtBsYL9RaXQga8Xko0xM+s+25OpFlS9lib
         KuEY/AtvNprtO18wiOFfUJ1tzamuaAaOa1y8Bv+1vWvHObf5+sLql57Jf/Rypm+bH9pG
         6zZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GQQOS1RnN2COhjq82QNEbRXOIZvjIOeCHTI6BrTzG74=;
        b=Usdf0qWymEoZm/atkLGOZCRj9vESgfoz0enwg/rUtp/nKcTiq2/4mjVDS2REvflGFL
         ZQ5HH6PrFKqfiHpx97vGEKImW4USZPjYU+sGTTksxi7tvUxw8y/VT2o2jeQ6Qmn/AH4W
         mECVBeQ7uV7qBsShZYNxZxLZQFUuhRnmFWAaFksCRFoko+cW29QXkFZkKBhwNuYUJqET
         L8yw43Di6PMn1VAj9b4C3JUV1kQDjJ7E8zW40mEmAcg02Dqt3FxKyWSUfTIfDUqBKBeA
         xAdwMmuFTuaBNy+OTZFoOpmsRdS63OXwMuq+Eueuj2kmJ8yxUFeRAGaMz/LitpcoA27y
         AUWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jhmaXh0E;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GQQOS1RnN2COhjq82QNEbRXOIZvjIOeCHTI6BrTzG74=;
        b=qoBt1qeX7yNZrsgxlfINGRsrivcFH/4p5J45+ZBALygOhcdAYYq8WY7A0fSbHKPpzz
         d36wTC0Wzxmv7+FMVXttx4sk1Q8kr8ZPm4uYg0BqKqwfrfE00M9mBcZDk5/Qj+/g9Rw7
         zF2Er3Z+i2ZVIK4l4wJh/+vOnHmNsF8mu6MrEeUYoSy0lJLUgX+Kn4bjTSx//0pxXJaD
         OxDqM0kF4ygZ+kFmeLzRJgMdS21Spfbl9lhQr3ewL9Hx+DU+2iI2O0Ht4kcEH4WLwr2E
         uJ1/6UrhK/wyf3p/RavrutCpzBPyytdi5UEpwsQu5jsYms2wYd0TosS3aejGzFDFQqeu
         /ukg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GQQOS1RnN2COhjq82QNEbRXOIZvjIOeCHTI6BrTzG74=;
        b=KOgZCVMmZ0/Ih+xesYCQ3NtWvAuko7RMmTuvqEVj4qJHz+d+ab8jFXxptnlkWexDic
         M+H0iOJlGPQb12nqKYkr8Wi+V8+62z9+IV9nMD0R75z8FTdZZNNokGx4obnjk2L1Jqn/
         Wrx1KxL6+YlemB1goekiBYSEu0KUaUEmPOz8ySpUT3lbnAcFC2sSTBkdHH3tgISBIBNl
         fl9SHi2P2LvkN496xllx56qYFmFSRWQKJvLH5+NraK2zbcEEPyBsJyeISm8dsLDjBnFA
         1ojvrPJbhyttHx4CQTfJPYFPu1+0oz3qZtkRjS1AvZ8q96bnlvf7slkIek/mgXKE6PJv
         rBcg==
X-Gm-Message-State: AOAM5327AcS4mnRg6h5/nJRI7PollM02JZ9TF0PsGfAWUl3N5ynMHO8e
	k5JG2icb3YHqUSYaZ2z0o/4=
X-Google-Smtp-Source: ABdhPJxySkqbr7LjIpi/vByE/SwUAaVvhymj0S/qsHFQQ0hwhgb2kShAbOIChoS4oVk16XYmfqTE/Q==
X-Received: by 2002:a17:906:855:: with SMTP id f21mr41923ejd.20.1630431998904;
        Tue, 31 Aug 2021 10:46:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:bb62:: with SMTP id y89ls11252735ede.2.gmail; Tue, 31
 Aug 2021 10:46:38 -0700 (PDT)
X-Received: by 2002:a50:c092:: with SMTP id k18mr30441999edf.361.1630431997936;
        Tue, 31 Aug 2021 10:46:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630431997; cv=none;
        d=google.com; s=arc-20160816;
        b=oR60rTeZ2Ufw8YMNU67sbxCqrg64M2kXMXNtRTghesko4ATQQxrKBYPD7yi+hP3zjk
         iQGsNRhKY4G/6TyaUiTbC7e4liZpKdyJGktdCe7zv7PMXrW+WRuZtX1UbKOmz8hONY9C
         9ACTWY+Y7P11Dcj23KVK0rwwqHB1Px1yhvybhyjyUSCeKQEkbGV1+tzoIgbz/rGpWJ9p
         KjaVzF9Fw8DnFiWy8ETEASKfVQWqObUyfJsewB0XTJLv9R4lKpQdVFlGXmtwlvXggeH7
         lk7y8BvKseBnTrUORJwKHplJKSk6n4GogESu1AxycfuUshfM2xoqpV4hOcPbQ+KYvi+7
         LewQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fNJZhJ+8+J9KlQKUE/9+J95AuiLd/rxK54Vkl1lgTIE=;
        b=x6nXu9WMHHcCYNcEw0Ye6tdf/OFBu4YeGltNgugET7lpr03+MWnMvQP+BLhaNP9irX
         IgIWcwgXcWz4RBrrpNKsReMlpQBs+IkPQNSTSJrMj6T9hyFn2eMiDnkTG7k3QgubA0rb
         Q1M7U+/tmKyVIn+wosZ+PQpKnxdKZJ9qfmUeADFTw+c9PRN2mtuRxAGw9Fl/AkityENI
         4OWdY4ICRaRk+u2XX5JAC+LlgWYI+UvNKWqS7G1tDhonHOeWs0jAGkeldQHeP4+1/Z5D
         CWKqWirrg4I3lzBDNenHLI0CG74Zp17/2YupEh23TYHw7WkDWlUepM23FVvUhcN/WJPe
         Y7Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jhmaXh0E;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id e20si590690eds.4.2021.08.31.10.46.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Aug 2021 10:46:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id l10so510929lfg.4
        for <clang-built-linux@googlegroups.com>; Tue, 31 Aug 2021 10:46:37 -0700 (PDT)
X-Received: by 2002:a05:6512:3e22:: with SMTP id i34mr22596968lfv.374.1630431997110;
 Tue, 31 Aug 2021 10:46:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210831074004.3195284-1-masahiroy@kernel.org> <20210831074004.3195284-9-masahiroy@kernel.org>
In-Reply-To: <20210831074004.3195284-9-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 31 Aug 2021 10:46:26 -0700
Message-ID: <CAKwvOdnuwORVSSqsrw1=DRXWXAah3+jmkP5sBUXfG8P=LmFBaQ@mail.gmail.com>
Subject: Re: [PATCH v2 08/13] kbuild: build modules in the same way
 with/without Clang LTO
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <nathan@kernel.org>, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jhmaXh0E;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f
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

On Tue, Aug 31, 2021 at 12:40 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
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

Is it worth modifying the diagram to note that objects in non-LTO
builds are <objects>.o, while for LTO builds, they are <objects>.bc?
If we're not using the .bc file suffix, can we?

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

And here, too.

>
> Here, 'objects' are either ELF or LLVM bitcode. <modname>.a is an archive,
> <modname>.prelink.o is ELF.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
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

I agree with Kees here; drop this comment change.

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
>         $(OBJECT_FILES_NON_STANDARD_$(basetarget).o)$(OBJECT_FILES_NON_STANDARD)n),y)
>
> +$(obj)/%.prelink.o: objtool-enabled :=

Can we use the canonical .bc file suffix for LLVM bitcode, rather than
.prelink.o?

> +
>  endif
>
>  ifdef CONFIG_TRIM_UNUSED_KSYMS
> @@ -287,32 +290,12 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) FORCE
>         $(call if_changed_rule,cc_o_c)
>         $(call cmd,force_checksrc)
>
> -ifdef CONFIG_LTO_CLANG
> -# Module .o files may contain LLVM bitcode, compile them into native code
> -# before ELF processing
> -quiet_cmd_cc_lto_link_modules = LTO [M] $@
> -cmd_cc_lto_link_modules =                                              \
> -       $(LD) $(ld_flags) -r -o $@                                      \
> -               $(shell [ -s $(@:.lto.o=.o.symversions) ] &&            \
> -                       echo -T $(@:.lto.o=.o.symversions))             \
> -               --whole-archive $(filter-out FORCE,$^)                  \
> -               $(cmd_objtool)
> -
> -# objtool was skipped for LLVM bitcode, run it now that we have compiled
> -# modules into native code
> -$(obj)/%.lto.o: objtool-enabled = y
> -$(obj)/%.lto.o: part-of-module := y
> -
> -$(obj)/%.lto.o: $(obj)/%.o FORCE
> -       $(call if_changed,cc_lto_link_modules)
> -endif
> -
>  cmd_mod = { \
>         echo $(if $($*-objs)$($*-y)$($*-m), $(addprefix $(obj)/, $($*-objs) $($*-y) $($*-m)), $(@:.mod=.o)); \
>         $(undefined_syms) echo; \
>         } > $@
>
> -$(obj)/%.mod: $(obj)/%$(mod-prelink-ext).o FORCE
> +$(obj)/%.mod: $(obj)/%.prelink.o FORCE
>         $(call if_changed,mod)
>
>  quiet_cmd_cc_lst_c = MKLST   $@
> @@ -416,17 +399,6 @@ $(obj)/%.asn1.c $(obj)/%.asn1.h: $(src)/%.asn1 $(objtree)/scripts/asn1_compiler
>  $(subdir-builtin): $(obj)/%/built-in.a: $(obj)/% ;
>  $(subdir-modorder): $(obj)/%/modules.order: $(obj)/% ;
>
> -# combine symversions for later processing
> -ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
> -      cmd_update_lto_symversions =                                     \
> -       rm -f $@.symversions                                            \
> -       $(foreach n, $(filter-out FORCE,$^),                            \
> -               $(if $(shell test -s $(n).symversions && echo y),       \
> -                       ; cat $(n).symversions >> $@.symversions))
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
> -       $(if $(filter %/modules.order, $m), cat $m, echo $(patsubst %.o,%.ko,$m));) :; } \
> +       $(if $(filter %/modules.order, $m), cat $m, echo $(patsubst %.a,%.ko,$m));) :; } \
>         | $(AWK) '!x[$$0]++' - > $@
>
> -$(obj)/modules.order: $(obj-m) FORCE
> +$(obj)/modules.order: $(modules) FORCE
>         $(call if_changed,modules_order)
>
>  #
> @@ -458,26 +430,44 @@ $(obj)/modules.order: $(obj-m) FORCE
>  $(obj)/lib.a: $(lib-y) FORCE
>         $(call if_changed,ar)
>
> -# NOTE:
> -# Do not replace $(filter %.o,^) with $(real-prereqs). When a single object
> -# module is turned into a multi object module, $^ will contain header file
> -# dependencies recorded in the .*.cmd file.
> -ifdef CONFIG_LTO_CLANG
> -quiet_cmd_link_multi-m = AR [M]  $@
> -cmd_link_multi-m =                                             \
> -       $(cmd_update_lto_symversions);                          \
> -       rm -f $@;                                               \
> -       $(AR) cDPrsT $@ $(filter %.o,$^)
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
> +       $(call if_changed,merge_symver)
> +
> +targets += $(patsubst %.a, %.prelink.symversions, $(modules))
> +
> +$(obj)/%.prelink.o: ld_flags += --script=$(filter %.symversions,$^)
> +module-symver = $(obj)/%.prelink.symversions
> +
>  endif
>
> -$(multi-obj-m): FORCE
> -       $(call if_changed,link_multi-m)
> -$(call multi_depend, $(multi-obj-m), .o, -objs -y -m)
> +quiet_cmd_ld_o_a = LD [M]  $@
> +      cmd_ld_o_a = $(LD) $(ld_flags) -r -o $@ --whole-archive $< $(cmd_objtool)
> +
> +$(obj)/%.prelink.o: part-of-module := y
> +
> +$(obj)/%.prelink.o: $(obj)/%.a $(module-symver) FORCE
> +       $(call if_changed,ld_o_a)
> +
> +quiet_cmd_ar_module = AR [M]  $@
> +      cmd_ar_module = rm -f $@; $(AR) cDPrST $@ $(real-prereqs)
> +
> +$(modules-single): %.a: %.o FORCE
> +       $(call if_changed,ar_module)
> +
> +$(modules-multi): FORCE
> +       $(call if_changed,ar_module)
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
> @@ -106,6 +106,10 @@ multi-dtb-y        := $(addprefix $(obj)/, $(multi-dtb-y))
>  real-dtb-y     := $(addprefix $(obj)/, $(real-dtb-y))
>  subdir-ym      := $(addprefix $(obj)/,$(subdir-ym))
>
> +modules                := $(patsubst %.o, %.a, $(obj-m))
> +modules-multi  := $(sort $(patsubst %.o, %.a, $(multi-obj-m)))
> +modules-single := $(sort $(filter-out $(modules-multi), $(filter %.a, $(modules))))
> +
>  # Finds the multi-part object the current object will be linked into.
>  # If the object belongs to two or more multi-part objects, list them all.
>  modname-multi = $(sort $(foreach m,$(multi-obj-ym),\
> @@ -225,13 +229,6 @@ dtc_cpp_flags  = -Wp,-MMD,$(depfile).pre.tmp -nostdinc                    \
>                  $(addprefix -I,$(DTC_INCLUDE))                          \
>                  -undef -D__DTS__
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
>         +$(call if_changed_except,ld_ko_o,vmlinux)
>  ifdef CONFIG_DEBUG_INFO_BTF_MODULES
>         +$(if $(newer-prereqs),$(call cmd,btf_ko))
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
>  MODPOST = scripts/mod/modpost                                                          \
>         $(if $(CONFIG_MODVERSIONS),-m)                                                  \
>         $(if $(CONFIG_MODULE_SRCVERSION_ALL),-a)                                        \
> @@ -128,9 +125,9 @@ endif
>  # Read out modules.order to pass in modpost.
>  # Otherwise, allmodconfig would fail with "Argument list too long".
>  quiet_cmd_modpost = MODPOST $@
> -      cmd_modpost = sed 's/\.ko$$/$(mod-prelink-ext)\.o/' $< | $(MODPOST) -T -
> +      cmd_modpost = sed 's/ko$$/prelink.o/' $< | $(MODPOST) -T -
>
> -$(output-symdump): $(MODORDER) $(input-symdump) $(modules:.ko=$(mod-prelink-ext).o) FORCE
> +$(output-symdump): $(MODORDER) $(input-symdump) $(modules:ko=prelink.o) FORCE
>         $(call if_changed,modpost)
>
>  targets += $(output-symdump)
> diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
> index a26139aa57fd..56cd9b7a5dd0 100644
> --- a/scripts/mod/modpost.c
> +++ b/scripts/mod/modpost.c
> @@ -2000,9 +2000,9 @@ static void read_symbols(const char *modname)
>                 /* strip trailing .o */
>                 tmp = NOFAIL(strdup(modname));
>                 tmp[strlen(tmp) - 2] = '\0';
> -               /* strip trailing .lto */
> -               if (strends(tmp, ".lto"))
> -                       tmp[strlen(tmp) - 4] = '\0';
> +               /* strip trailing .prelink */
> +               if (strends(tmp, ".prelink"))
> +                       tmp[strlen(tmp) - 8] = '\0';
>                 mod = new_module(tmp);
>                 free(tmp);
>         }
> --
> 2.30.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnuwORVSSqsrw1%3DDRXWXAah3%2BjmkP5sBUXfG8P%3DLmFBaQ%40mail.gmail.com.
