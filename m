Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB2PUWGDQMGQENDY2QXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AFE3C61CC
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 19:22:50 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id c7-20020a92b7470000b0290205c6edd752sf8826312ilm.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 10:22:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626110570; cv=pass;
        d=google.com; s=arc-20160816;
        b=hijlNKFpqfld5N/xXf/T6c3Dr6vvWFMLAx6ftZyLhCjibypQG5HKhf0lq2ZoRZP+7/
         xt8+E0WdAw3x/YYmESrpsjJ4hI65Sy0q0R0rcREKooXBY0xlSh0NdZ22RLZf4PwpmIU9
         25KlWNSunrgugdFWRJI4ZfvCSEP5of4taEELt2ok/T35xkTQzrpj4QIcPDOEZLaA2Yhv
         vtxT/3PI1ReEHZgrQ/C/HTAvuAiZ6Eg4psSvy8N8+TfadUJ3q6jFhxx5x8iBKEdhKdKY
         zYXWDIsTDzC0yXlJ+Ujkc9VBb3wCmViHvgWHaNL3kByBtmZ7A5QrY6fJEJ+/t3Ggqxv/
         jUqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=bkxdqcitgAYKFiAASDMucAnOQJEugZdyislP7Xg/fFM=;
        b=LsB/dq2G9kWb5v0GHJ0nPlXf6wkNuoVo4xS0WvElrsEIJxnbGjJ2GwzYGDc9PXuoF4
         U/qDrSVLVSvb3mO0Ji2IJ/rFs2UzoaDLq7UyvJym90cA6ZejTNes2N9S+8jl6imxaUR3
         wf2FQC7jQ+0cpgPYJnIrr7qcVPJd5c1Fo4Za6Ycy8vNgGwg3yvEHh+WnbTuL/YsM8dJv
         dvumc98qKrRFMPJbMKUaMg1hsq3JyPjJVaOniRsZTQZt6aV6AcqrVNFukDMCEaKXybkr
         2KG+pIvmfjhcuAQ64kIME3b0hYhmvZTrRi5PiP12KCsm+mR1jQQDvJgttTaImjqvqGED
         Xezw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Mmcvc7l5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bkxdqcitgAYKFiAASDMucAnOQJEugZdyislP7Xg/fFM=;
        b=jIFY+eLTMY7Yz8gV22JWimwIK9G6BrifT5wU2VjIR0fNkfbn1Xwd9uQxT01+xnKLC5
         Fd9+i9GEQcgJTAK11LdawhWDULYX+V+5XbPuhFVZAb2u6VE+0G22GLu1Zuo4JNeBh9KN
         JNp98UKp9uEVkpt3YbQIKvdvapuk5ONcNW/IyCztwkgJ+incp9kIHM8m2RxIHaj5xoiE
         Y6eziR3TuUJqrJSEWuJfmI5n7BtSjmc6u7JB+k+zldCJuGOZyvHvx7ijb8hZfJhlRPD4
         6qgxkr+fNFLF2mD88RlxUdFhCZSYH7OPGJG5Szbwsjm47r9CKbNSjkVDvLyG7XYeiAoh
         lKUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bkxdqcitgAYKFiAASDMucAnOQJEugZdyislP7Xg/fFM=;
        b=osESxDvRu56jyE4qwkC4OjON15JV31z2w3IendUObKKdBCDtdtfeapPwltg9x7HPXa
         hqfx1108PRZVqYo1GfWyoSoMkbGP+HT21cfWkUwm69p2CKPJf5YpqDh546jg7kxUsNd8
         boYUxaZ2aaVwnJWoRjOXXo+tCH25QnsXWvLTSmIislIsv+Us08tVXFozZG/Pm8xgMWAr
         omEEovJr+Monq6pABSu6MaB8CxKouVEyUAaxvMlJXlfrhKVg3o/Szq54NqkLqvpPiGRP
         WmKAWX66oB8FGQSUBUCW2XeQLFZy/15VhCAMtlTPlzYZw12VXdwbYRNct3VrQwceG5Nc
         52cQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kWdDKiIUvzLmM4omThhx2ayLC+P7l+tIqe0CreCZnirFO56ps
	h/ePfUFWqqpvV3jO32eAR3g=
X-Google-Smtp-Source: ABdhPJwJk10Sbts26ZLVuoNSZ3y/T/Fuh/AXw7FvzZZHkuPCvAY9Jw0jZbKC0vP+UDDBs+APUQ43Tg==
X-Received: by 2002:a05:6e02:2144:: with SMTP id d4mr39802165ilv.136.1626110569731;
        Mon, 12 Jul 2021 10:22:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:220a:: with SMTP id n10ls254095ion.5.gmail; Mon, 12
 Jul 2021 10:22:49 -0700 (PDT)
X-Received: by 2002:a6b:dc08:: with SMTP id s8mr16513ioc.7.1626110569369;
        Mon, 12 Jul 2021 10:22:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626110569; cv=none;
        d=google.com; s=arc-20160816;
        b=oLhW85bJhmrV/+6D1ekHX6MRWGy9L5E+rm3tVTNv9ujDHjIbiFEIrZgW4U4b8Xqt4E
         xub7cIlUXGWv/UoOJKh/dRYNg376GLkif7WftStiuHE9nbD643BVYV022cl3W4D+Qdin
         gi6fI3lOecDtc6qxEHlxBvN4N76N3H4nKTFzoisIyk9dboc/kwE9AVh7bB0rF1XmZaYI
         Lr4KLyEeCa1trzKTLcev0Kvmee3ElRAsRIY0JMR7hG1Mks2x6YqER70ABfYMAYPjSrBP
         GvXfzrM7UwZg2mkibwObvrggU25WmyRyVbgs64jcPilPbfjhcLolM5iMtxTrdh0H4GlW
         3cMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vJSus6xqz4Py/YBsR2PyDSFXECwi8SLf51Zt42z9NT4=;
        b=tHWE4Sjj8Hqwhs/8AAYzIhUpV5oaWKf+GV0bG3JAbQmAE2kQaLl7ni2ibj1uL6Udsb
         ZewNGEyQ5ri2l+QxHTy463+GoeJlz65jR70roTqWNgjxq3rw1PwNtnInpTQtfe1nXdEn
         E6xJ+WVegcQk5zCOAlFfxz/+soM/Vm8iCXFM8k1azeCjKGubrHvyq3+L1fmM0PU4fDqh
         OBNQwp+addaKGfaicVXKV9tkhSVkXp37xSVzwkAkjgLHmldMcXZnOcD7xThQGM2Jop4k
         jZ82eTeti3HCwUjmvKnhbPdcoW+xwHNqZl44VWoDkRcuf5PdWpz7Bhqks+6klZaLxUw7
         F6hA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Mmcvc7l5;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id g14si1354158ilf.4.2021.07.12.10.22.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jul 2021 10:22:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id p36so7313850pfw.11
        for <clang-built-linux@googlegroups.com>; Mon, 12 Jul 2021 10:22:49 -0700 (PDT)
X-Received: by 2002:a63:1a12:: with SMTP id a18mr165366pga.269.1626110568824;
        Mon, 12 Jul 2021 10:22:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i8sm46529pjh.36.2021.07.12.10.22.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jul 2021 10:22:48 -0700 (PDT)
Date: Mon, 12 Jul 2021 10:22:47 -0700
From: Kees Cook <keescook@chromium.org>
To: Tor Vic <torvic9@mailbox.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	masahiroy@kernel.org, Nathan Chancellor <nathan@kernel.org>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 1/1] Kbuild, clang: add option for choosing a ThinLTO
 cache directory
Message-ID: <202107121021.38F447EBE4@keescook>
References: <b45b2430-3670-b310-b6ad-2d6db50c2d18@mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <b45b2430-3670-b310-b6ad-2d6db50c2d18@mailbox.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Mmcvc7l5;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430
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

On Mon, Jul 12, 2021 at 11:10:04AM +0000, Tor Vic wrote:
> On some distros and configurations, it might be useful to allow for
> specifying a directory where Clang stores its ThinLTO cache.
> 
> More specifically, when building the VirtualBox extramodules on Arch with
> its proper 'makepkg' build system and DKMS, against an already installed
> ThinLTO kernel, the build fails because it tries to create the ThinLTO
> cache in a directory that is not user-writable.
> 
> A similar problem has been reported with openSUSE's OBS build system.
> 
> Add a Kconfig option that allows users to choose a directory in which
> Clang's ThinLTO can store its cache.

Ah-ha, good idea. Thanks! Question below...

> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1104
> Signed-off-by: Tor Vic <torvic9@mailbox.org>
> ---
>  Makefile                  |  5 +++--
>  arch/Kconfig              | 10 ++++++++++
>  scripts/Makefile.lib      |  4 ++++
>  scripts/Makefile.modfinal |  4 ++++
>  4 files changed, 21 insertions(+), 2 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index c3f9bd191b89..472bc8bfff03 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -932,7 +932,8 @@ endif
>  ifdef CONFIG_LTO_CLANG
>  ifdef CONFIG_LTO_CLANG_THIN
>  CC_FLAGS_LTO	:= -flto=thin -fsplit-lto-unit
> -KBUILD_LDFLAGS	+= --thinlto-cache-dir=$(extmod_prefix).thinlto-cache
> +export thinlto-dir = $(if
> $(CONFIG_LTO_CLANG_THIN_CACHEDIR),$(CONFIG_LTO_CLANG_THIN_CACHEDIR)/)
> +KBUILD_LDFLAGS	+=
> --thinlto-cache-dir=$(thinlto-dir)$(extmod_prefix).thinlto-cache
>  else
>  CC_FLAGS_LTO	:= -flto
>  endif
> @@ -1728,7 +1729,7 @@ PHONY += compile_commands.json
> 
>  clean-dirs := $(KBUILD_EXTMOD)
>  clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers
> $(KBUILD_EXTMOD)/modules.nsdeps \
> -	$(KBUILD_EXTMOD)/compile_commands.json $(KBUILD_EXTMOD)/.thinlto-cache
> +	$(KBUILD_EXTMOD)/compile_commands.json
> $(thinlto-dir)$(KBUILD_EXTMOD)/.thinlto-cache
> 
>  PHONY += help
>  help:
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 129df498a8e1..19e4d140e12a 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -696,6 +696,16 @@ config LTO_CLANG_THIN
>  	    https://clang.llvm.org/docs/ThinLTO.html
> 
>  	  If unsure, say Y.
> +
> +config LTO_CLANG_THIN_CACHEDIR
> +	string "Clang ThinLTO cache directory"
> +	depends on LTO_CLANG_THIN
> +	default ""
> +	help
> +	  This option allows users to choose a directory that stores
> +	  Clang's ThinLTO cache.
> +	  Leave empty for default.
> +
>  endchoice
> 
>  config ARCH_SUPPORTS_CFI_CLANG
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 10950559b223..bca87a6aa35b 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -197,6 +197,10 @@ endif
>  part-of-module = $(if $(filter $(basename $@).o, $(real-obj-m)),y)
>  quiet_modtag = $(if $(part-of-module),[M],   )
> 
> +ifdef CONFIG_LTO_CLANG_THIN
> +KBUILD_LDFLAGS	+=
> --thinlto-cache-dir=$(thinlto-dir)$(extmod-prefix).thinlto-cache
> +endif
> +
>  modkern_cflags =                                          \
>  	$(if $(part-of-module),                           \
>  		$(KBUILD_CFLAGS_MODULE) $(CFLAGS_MODULE), \
> diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
> index 5e9b8057fb24..ab0d72e21318 100644
> --- a/scripts/Makefile.modfinal
> +++ b/scripts/Makefile.modfinal
> @@ -35,6 +35,10 @@ ifdef CONFIG_LTO_CLANG
>  # avoid a second slow LTO link
>  prelink-ext := .lto
> 
> +ifdef CONFIG_LTO_CLANG_THIN
> +KBUILD_LDFLAGS	+=
> --thinlto-cache-dir=$(thinlto-dir)$(extmod-prefix).thinlto-cache
> +endif # CONFIG_LTO_CLANG_THIN
> +
>  # ELF processing was skipped earlier because we didn't have native code,
>  # so let's now process the prelinked binary before we link the module.

Why are these changes needed in Makefile.lib and Makefile.modfinal?
Isn't KBUILD_LDFLAGS already populated from the top-level Makefile?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107121021.38F447EBE4%40keescook.
