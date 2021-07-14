Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBMVAXGDQMGQEOV47WNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6B13C7C02
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 04:47:15 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id c18-20020a5d9a920000b0290515fa57d24asf177276iom.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 19:47:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626230834; cv=pass;
        d=google.com; s=arc-20160816;
        b=ferhFPNhj2nzckUEtRhaO2QfpRdT+6LVKh5Hu5fDiQ9GowACBVksfGABdIKtz6HJre
         wjuVI7Gwd3yTcmNJE5+wi7mZuk3tYvwnAk1jPX11lIhmmNAXR33hcAEslMDBEDcQFxua
         2BSxpgLX1HzG8/aJhxqg8CaZZ0FeCqwptv9ZBVcyk7B5WgqNtILlwu+28+dO3yBni0uo
         BcXUEKlsZAFH6Fn+lMj1GK0CRmaCp15//FMGg/FIHrS8Zutjx1cZol2f8x4AlcvBccdE
         0N6XPUFHJab83FkVpZxLGyNj7W7SKRNZRt4jJ8zi8r/YZEarVCyLt9c3JKPyijchnio9
         +/AA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=5vf+cvsTT4pKDoOWW/bbpt4qRssYYsd3gGzwzcX1+zQ=;
        b=xR2qq3Yq3MhPn4c5GlJeoI0YvlezQWwa8RksdnyNiuN66ukHqFY+BzL7jZDclGWwIf
         bE4hAF+JX2mGdTC4Dos8LwarPaMiPk3jiorI8LdsWUpCoV6uTtaLQZYNNe+773RoCNX2
         9YLcEC+9MSUV4433CKCMlD31/SmA6wYJWrS7YvrZ8+Gc8CCpx2K7cJBX8htVBgc25QBj
         D/qgi/O0dHdTwvUnT68eUcE9uYkm1dCw29tRFSCfOKeposUVR7orT5rV1Se84Ma8wil6
         BRqEjvVzVp5C0sHzSFNzb9Dc4sQaY7uOkPva1AwRiVVqBVBPHMsbxws9v7y2tO6NsLj/
         CXUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=JR6rlsoJ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5vf+cvsTT4pKDoOWW/bbpt4qRssYYsd3gGzwzcX1+zQ=;
        b=hHQ0thVkFVoFv+Ra+M3zhy74kopdbm1CsCly2He3xNoyCbQAimZsG65F1qXwv6Ggor
         i+TAy/9rxtWl0saOhcfwu+JZVcNIPQJAl6Wb6qlTJ45Vcnhtvav9dXvpveIAUfPqM4PD
         iSleQY8vBb5Af6Oaperu20q91HA3OU80YDziSHIjLwVz5qyJubzalWbCxN6a/fB4XkGz
         GFf6nc4rMV2dZ7ei8uGbvbtBGfD1q6K0ThUATDT8NARtE3AVVo2CZH/lEhSv2Uqy8WbT
         5u8Q7rMERfvVgDHRvEke36H+mVh9OE+b3mrf92+/jy8qV8TXiOzumV9gag36Z462oNIy
         v42w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5vf+cvsTT4pKDoOWW/bbpt4qRssYYsd3gGzwzcX1+zQ=;
        b=quafCCpslUgIbHpPlYkfax0bQgw9sHQSIE8y5noozmftgkS4UPlZBxlHN6cEHF+KYY
         avu/0lt26Rs8Mr6pqFx5K6THj0/onu89avOsG3acUtunwUBAec4zfc6fVVEUq47l9rmF
         NG55piCJyJeSq/s56kuBmXKyX33cYDFCl2Qz5NnFEgBVUrhBB3gve738mjaKVGgzImUB
         0tqWRKhu1Ez0r7GPCW8o09dmavYaRUneo/01YpaW0zc1KSC3Ec7Hi/6/DySBvVtEeDZg
         RjSsmbHK8BI5s17OyhMNtRfie6hLIr2BDleaBvjwwNuQONHcTdpwvOqW1tBXYS3vXvFI
         FpTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531D1POrk3JtDTOg6vz/BPE+3e2UbRltCd/lnaSpiKquMiXMsIRA
	pSQiprGTApZwbltovu+Pxyk=
X-Google-Smtp-Source: ABdhPJwYxjmH67x6rpKevsnbrj6R3mHR5kEHTaocCYKAcBFF+EQ3rMUkV/x8YIhKhd2Nyk8r+du2Vw==
X-Received: by 2002:a92:7d07:: with SMTP id y7mr5146617ilc.68.1626230834574;
        Tue, 13 Jul 2021 19:47:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1d19:: with SMTP id i25ls357346ila.10.gmail; Tue,
 13 Jul 2021 19:47:14 -0700 (PDT)
X-Received: by 2002:a92:509:: with SMTP id q9mr4982891ile.239.1626230834266;
        Tue, 13 Jul 2021 19:47:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626230834; cv=none;
        d=google.com; s=arc-20160816;
        b=LXOCCCjXM0v8naI2xg0o3MnAphxZFg+VQ+aNnY6UcG53hB0agHAJX9+/G8NZMoHtyp
         hE4mbQy4q6pQkw/sQIswmizb6NvK111S/KCP0LGDmy2CG9xR/E0HfqRZ9F8r0Fe79NOa
         pXSMbwZ/M1P3f1FlChGMPfiOa9GLIY/1vk830X+YWbKDTLZ8bWi32QJ/W8KUYrWyaAyl
         U3iMIX1N5O76emBe/FnmGQQ1sLI9SmazMu8e+wcwG4iJhbA3DV36I/LZTFE7PZfSkQpK
         I/u9bqJxpCFjXFkvdrw7TFin0QgeTUOEwrSjQQqz/yQsuZJ1qC7POocvMatVj8IZtZh7
         46vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=LnUl50BHavFxu7eFMFZuwtQbwZaQ3SxkzsrU6pPoM7I=;
        b=EIv78VjmFqggnwjCYrQPpphYYzjtqlQ+mfLnoz6RYRgzQOuHTt7FNht6NNqhAunD44
         SjjrFjno32OsjFjFzo3ckO5n32nLdUMw59HacQhXYRfFUIoxj4qx+AItnTaWxqPfY2cV
         XWBl9StXb3EAUal/e3k7K0td1w/XAqhCdIzQrxFKc9l6KryIAezmtdKh2dHWts0RRABg
         NkeXTRF1XHzynqg1hMixot89MmudJsPgxmY3zP75zo9L8igh9xveF2q0drrfmKY6ZPaE
         6p6WlteMDGHLhkHrbFHDoSKsag5L+xi1Q5aHzwtRgLihjFg2/5500x8avIt2t2kO9pOW
         WQow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=JR6rlsoJ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id h15si64924ili.5.2021.07.13.19.47.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Jul 2021 19:47:14 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 16E2kpO0003253
	for <clang-built-linux@googlegroups.com>; Wed, 14 Jul 2021 11:46:52 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 16E2kpO0003253
X-Nifty-SrcIP: [209.85.214.176]
Received: by mail-pl1-f176.google.com with SMTP id o8so711897plg.11
        for <clang-built-linux@googlegroups.com>; Tue, 13 Jul 2021 19:46:51 -0700 (PDT)
X-Received: by 2002:a17:90a:c506:: with SMTP id k6mr1447795pjt.198.1626230811130;
 Tue, 13 Jul 2021 19:46:51 -0700 (PDT)
MIME-Version: 1.0
References: <a6eea2c4-6d90-3ddf-33d6-973d1ae917e7@mailbox.org>
In-Reply-To: <a6eea2c4-6d90-3ddf-33d6-973d1ae917e7@mailbox.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 14 Jul 2021 11:46:13 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT9oMkSthmCJ9sq3PFRcYgZoC6O0o==WQnKOU0znzT6hQ@mail.gmail.com>
Message-ID: <CAK7LNAT9oMkSthmCJ9sq3PFRcYgZoC6O0o==WQnKOU0znzT6hQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] Kbuild, clang: add option for choosing a ThinLTO
 cache directory
To: Tor Vic <torvic9@mailbox.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        "ndesaulniers@google.com" <ndesaulniers@google.com>,
        Kees Cook <keescook@chromium.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=JR6rlsoJ;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Jul 14, 2021 at 1:41 AM Tor Vic <torvic9@mailbox.org> wrote:
>
> On some distros and configurations, it might be useful to allow for
> specifying a directory where Clang stores its ThinLTO cache.
>
> More specifically, when building the VirtualBox extramodules on Arch with
> its proper 'makepkg' build system and DKMS, against an already installed
> ThinLTO kernel, the build fails because it tries to create the ThinLTO
> cache in a directory that is not user-writable.


Again, I do not understand.

Is this fixing the root cause?

To me, it looks like
"Anyway, this worked for me" patch.

Besides, 'make clean' will never clean up the
cache directory.





> A similar problem has been reported with openSUSE's OBS build system.
>
> Add a Kconfig option that allows users to choose a directory in which
> Clang's ThinLTO can store its cache.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1104
> Signed-off-by: Tor Vic <torvic9@mailbox.org>
> ---
> Changes from v1 to v2: remove unneeded changes in scripts/Makefile
>
>  Makefile     |  5 +++--
>  arch/Kconfig | 10 ++++++++++
>  2 files changed, 13 insertions(+), 2 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index c3f9bd191b89..472bc8bfff03 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -932,7 +932,8 @@ endif
>  ifdef CONFIG_LTO_CLANG
>  ifdef CONFIG_LTO_CLANG_THIN
>  CC_FLAGS_LTO   := -flto=thin -fsplit-lto-unit
> -KBUILD_LDFLAGS += --thinlto-cache-dir=$(extmod_prefix).thinlto-cache
> +export thinlto-dir = $(if
> $(CONFIG_LTO_CLANG_THIN_CACHEDIR),$(CONFIG_LTO_CLANG_THIN_CACHEDIR)/)
> +KBUILD_LDFLAGS +=
> --thinlto-cache-dir=$(thinlto-dir)$(extmod_prefix).thinlto-cache
>  else
>  CC_FLAGS_LTO   := -flto
>  endif
> @@ -1728,7 +1729,7 @@ PHONY += compile_commands.json
>
>  clean-dirs := $(KBUILD_EXTMOD)
>  clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers
> $(KBUILD_EXTMOD)/modules.nsdeps \
> -       $(KBUILD_EXTMOD)/compile_commands.json $(KBUILD_EXTMOD)/.thinlto-cache
> +       $(KBUILD_EXTMOD)/compile_commands.json
> $(thinlto-dir)$(KBUILD_EXTMOD)/.thinlto-cache
>
>  PHONY += help
>  help:
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 129df498a8e1..19e4d140e12a 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -696,6 +696,16 @@ config LTO_CLANG_THIN
>             https://clang.llvm.org/docs/ThinLTO.html
>
>           If unsure, say Y.
> +
> +config LTO_CLANG_THIN_CACHEDIR
> +       string "Clang ThinLTO cache directory"
> +       depends on LTO_CLANG_THIN
> +       default ""
> +       help
> +         This option allows users to choose a directory that stores
> +         Clang's ThinLTO cache.
> +         Leave empty for default.
> +
>  endchoice
>
>  config ARCH_SUPPORTS_CFI_CLANG
> --
> 2.32.0
>


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT9oMkSthmCJ9sq3PFRcYgZoC6O0o%3D%3DWQnKOU0znzT6hQ%40mail.gmail.com.
