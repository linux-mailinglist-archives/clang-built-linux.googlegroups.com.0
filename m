Return-Path: <clang-built-linux+bncBDYJPJO25UGBBR7OSKBQMGQE6IYE7EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id D30953505DB
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 19:54:15 +0200 (CEST)
Received: by mail-ej1-x63e.google.com with SMTP id au15sf1152529ejc.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 10:54:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617213255; cv=pass;
        d=google.com; s=arc-20160816;
        b=P9kMpQHWrcPfGUN6hYHThyTCaBQwa6o1hLnnf10qLOnKf9m93B/Ut6UsOxPiOCbfQ6
         d4svyeeBPWXZXDs1m9TUkHJXbOwawvb4pVWn7pXkc6X5nCwiuC6yMNUsXvNzhjYYSsD5
         WmK/jVqM4CoQSLNV9YHQ4Q5cZ7O6i1HVrPFBngnD4XeUFI+Cqu75Pr4Eis7DCGdhVu7Z
         Pv0cOLwPIv38tbi5KJu1FPxPyHd793J7Rse80ew4GIbFSsqV7LJKZixtIJAJMrSIGF5F
         q4FHvanFRyx5L77Cv9RFXLi2574tedEa9sR5KOyioSENKzNCYbAtbUeQAt5AZuyyoZg4
         9XAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yu+5Hf72gDcpm9lAVzsXDS6WiZEIbjiKTb3hrt4obbs=;
        b=itDcMYCpYx8bH46bYMsVlaxPcdVly9NZukQUUIBU0CZncrHQGVyUo7TfKSpY0yY00h
         UJv9GZ1YdzF+JFMNhPFPA8bmfAo0YE0UvpGkzklMRrCIknfEKJQ1EV+cWHVfOI6u5HiR
         EeZ0aSoivQq4aG4VE/8glq1V1MFbmjCp39skXlmbIfgTjlFVO45kDFgENbs7eyhhCyu3
         MGIPd6ppLF7fNh7gMzvAmfpG6drfMzyjh1GtcNP5AQPUwhfqdvc/SWyR6j9+Lu8PuDOR
         dqfsoKtS8Zb8CdG4QVSazL53SK1lNi+dFrVcmlVR2xmmRhn+e97sxNNFWYTNzcrbOdMF
         KNfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cm38beLe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yu+5Hf72gDcpm9lAVzsXDS6WiZEIbjiKTb3hrt4obbs=;
        b=B3qawnLEBtM4C4xJjX8LnB3NIH0+jHa9oXuQe4F6nvU3M+ZtMlL4OytLi9m9c+81n9
         WEWtRIHHVeziyREBMWv7cKxX5Eki4DKAhcjssfVLNAN9rfFLk6QH/LbO3Jrf83vW8kQF
         gz2Xub59NOh+dvTNccSNFGrlTRnVj2/G9U6XD9gktWEPeL4rINFVJfatZV4Qh5dXIK1X
         +MJPeMfIDk/wN+K40kOOsCGjWqp6mYdpqK+REB+7NxStBe7/X/KFnMPi5ICjr2w+qiSd
         fqojeZruavEyrKYFFTi08aekmepLmE4oAmemmF+0HeFJkifRWvBhXTOT3GAAEmQr0UEy
         0zmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yu+5Hf72gDcpm9lAVzsXDS6WiZEIbjiKTb3hrt4obbs=;
        b=RCeOELT14F3ZfV1NxRVige33yMN3B/FNJHHIbYxwdacUGhw8LTKiIVaAttSROLe1Fq
         KDTXmNFCla1LK4ZFuiWoBHAmlh9jS+d7s6qIHOoV+Lhvog4oIkIRpJziZa4UYTdWbVrQ
         74nopNWKC95dzmVPyxZIenHnKNKlZFQ8YzW7Z+rPEz5A2I3DaUlzK00HyrfFVCwR2tG7
         s9eFDH+0yaHuHnvgoGC8rwXlkT41cY3wAs4OUU79X2j7IdAK8k4ikIzfp3OC1vrDIbXz
         tzSLgAJoVWLDSwf/tEDNFW9EI2FP7/z05rpRLPrA1bX77eJXm7MWVN4KFSJcEY4JVnIc
         Y48w==
X-Gm-Message-State: AOAM531/R4qDMa1ABTuE4+SR36LizZOfOkLiJgR+mvV4j8LQj8Vp4Ohi
	y/+AmZ10W93xoW0UeU2Tqgw=
X-Google-Smtp-Source: ABdhPJwHub1U9/V7Ttijq89Kj4EQme7XgKy6zuf0vHT+I5+K8P+6dYd7bNETKC8zzVugSZ6wVMuTfw==
X-Received: by 2002:a05:6402:5255:: with SMTP id t21mr5285520edd.91.1617213255613;
        Wed, 31 Mar 2021 10:54:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:97c6:: with SMTP id js6ls1738385ejc.2.gmail; Wed, 31
 Mar 2021 10:54:14 -0700 (PDT)
X-Received: by 2002:a17:907:7785:: with SMTP id ky5mr4723882ejc.133.1617213254658;
        Wed, 31 Mar 2021 10:54:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617213254; cv=none;
        d=google.com; s=arc-20160816;
        b=V+/CKt+kZH5dilkPbApA9NtaTQhcdJVgZlTBa9sCIwUPYZzgXE89OfyK7hXhPlUvav
         xasIqG0sru5X8WweAyREszbdAadK0JY3oScSH4Hj8iJuAPzYw8Bf30azE7neYUZeluRt
         fNXWG5gAJGC1iVSauVv2QkU440iYfl4+/qe2l2JHmhwhv5HSoBR7gOJY31Mnpgo4Jdkt
         W0dlVz5H/xf0V4Von4XzDA93T8IdNPvOhcVFa0fhPZmhWFidRFNCLmMYrLszfcWK3TgE
         ZigI0WLvYK8abmFm4o+DS59HaJJSIFHrhWjM5aBr30p/j/00UdNeE8r8hMJT5xv1ORkw
         ABvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9A9ww4rQUdY3ojKZCC1DB3r6UqmhvDhvswbu4JoQEio=;
        b=j7HxGdAz5WvmH6KiHkAtcaNbhb32FX5/oUJRdsVrwZkLoNvCzEdoATv1HnMFpiFSMD
         Nnwc8Fmcm3FXZ7IATY1dzdyp9BaFYn1ruWdFOqvpjPNt+AzngHwa2cC5efokL8tHAUQU
         3LNW6uQCyK0PcenQEi8vw73j5BQr6if9ik4t7JKTO436+036Doo5UATKDqMqDaRVRQtk
         E8VYBIwRL93fksbvvVm1RdMf9qZZ/GGuSmnVmD6P0ymw6lEAVstQNMRs2GlsV6E1diOS
         86pwrOKSJ+Fggp9uTnydOrW3v/j9o4/ENjW/ES7ie9pkDVWRdBxjXloPAVK6f62O1gLn
         E+Kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cm38beLe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id df17si312345edb.3.2021.03.31.10.54.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 10:54:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id u4so24914503ljo.6
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 10:54:14 -0700 (PDT)
X-Received: by 2002:a2e:5716:: with SMTP id l22mr2798734ljb.244.1617213253975;
 Wed, 31 Mar 2021 10:54:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210331133811.3221540-1-masahiroy@kernel.org> <20210331133811.3221540-5-masahiroy@kernel.org>
In-Reply-To: <20210331133811.3221540-5-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 31 Mar 2021 10:54:03 -0700
Message-ID: <CAKwvOdnZWWbirNGu-PdfnhTqXQ6yD9-dyUy7jMRyL+O5qN4gzg@mail.gmail.com>
Subject: Re: [PATCH 5/9] kbuild: rename extmod-prefix to extmod_prefix
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <nathan@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cm38beLe;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b
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

On Wed, Mar 31, 2021 at 6:38 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> This seems to be useful in sub-make as well. As a preparation of
> exporting it, rename extmod-prefix to extmod_prefix because exported
> variables cannot contain hyphens.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
>  Makefile | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index b5ff4753eba8..e3c2bd1b6f42 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -919,7 +919,7 @@ endif
>  ifdef CONFIG_LTO_CLANG
>  ifdef CONFIG_LTO_CLANG_THIN
>  CC_FLAGS_LTO   := -flto=thin -fsplit-lto-unit
> -KBUILD_LDFLAGS += --thinlto-cache-dir=$(extmod-prefix).thinlto-cache
> +KBUILD_LDFLAGS += --thinlto-cache-dir=$(extmod_prefix).thinlto-cache
>  else
>  CC_FLAGS_LTO   := -flto
>  endif
> @@ -1141,9 +1141,9 @@ endif # CONFIG_BPF
>
>  PHONY += prepare0
>
> -extmod-prefix = $(if $(KBUILD_EXTMOD),$(KBUILD_EXTMOD)/)
> -export MODORDER := $(extmod-prefix)modules.order
> -export MODULES_NSDEPS := $(extmod-prefix)modules.nsdeps
> +extmod_prefix = $(if $(KBUILD_EXTMOD),$(KBUILD_EXTMOD)/)
> +export MODORDER := $(extmod_prefix)modules.order
> +export MODULES_NSDEPS := $(extmod_prefix)modules.nsdeps
>
>  ifeq ($(KBUILD_EXTMOD),)
>  core-y         += kernel/ certs/ mm/ fs/ ipc/ security/ crypto/ block/
> @@ -1742,7 +1742,7 @@ build-dirs := $(KBUILD_EXTMOD)
>  $(MODORDER): descend
>         @:
>
> -compile_commands.json: $(extmod-prefix)compile_commands.json
> +compile_commands.json: $(extmod_prefix)compile_commands.json
>  PHONY += compile_commands.json
>
>  clean-dirs := $(KBUILD_EXTMOD)
> @@ -1832,12 +1832,12 @@ endif
>
>  PHONY += single_modpost
>  single_modpost: $(single-no-ko) modules_prepare
> -       $(Q){ $(foreach m, $(single-ko), echo $(extmod-prefix)$m;) } > $(MODORDER)
> +       $(Q){ $(foreach m, $(single-ko), echo $(extmod_prefix)$m;) } > $(MODORDER)
>         $(Q)$(MAKE) -f $(srctree)/scripts/Makefile.modpost
>
>  KBUILD_MODULES := 1
>
> -export KBUILD_SINGLE_TARGETS := $(addprefix $(extmod-prefix), $(single-no-ko))
> +export KBUILD_SINGLE_TARGETS := $(addprefix $(extmod_prefix), $(single-no-ko))
>
>  # trim unrelated directories
>  build-dirs := $(foreach d, $(build-dirs), \
> @@ -1906,12 +1906,12 @@ nsdeps: modules
>  quiet_cmd_gen_compile_commands = GEN     $@
>        cmd_gen_compile_commands = $(PYTHON3) $< -a $(AR) -o $@ $(filter-out $<, $(real-prereqs))
>
> -$(extmod-prefix)compile_commands.json: scripts/clang-tools/gen_compile_commands.py \
> +$(extmod_prefix)compile_commands.json: scripts/clang-tools/gen_compile_commands.py \
>         $(if $(KBUILD_EXTMOD),,$(KBUILD_VMLINUX_OBJS) $(KBUILD_VMLINUX_LIBS)) \
>         $(if $(CONFIG_MODULES), $(MODORDER)) FORCE
>         $(call if_changed,gen_compile_commands)
>
> -targets += $(extmod-prefix)compile_commands.json
> +targets += $(extmod_prefix)compile_commands.json
>
>  PHONY += clang-tidy clang-analyzer
>
> @@ -1919,7 +1919,7 @@ ifdef CONFIG_CC_IS_CLANG
>  quiet_cmd_clang_tools = CHECK   $<
>        cmd_clang_tools = $(PYTHON3) $(srctree)/scripts/clang-tools/run-clang-tools.py $@ $<
>
> -clang-tidy clang-analyzer: $(extmod-prefix)compile_commands.json
> +clang-tidy clang-analyzer: $(extmod_prefix)compile_commands.json
>         $(call cmd,clang_tools)
>  else
>  clang-tidy clang-analyzer:
> --
> 2.27.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnZWWbirNGu-PdfnhTqXQ6yD9-dyUy7jMRyL%2BO5qN4gzg%40mail.gmail.com.
