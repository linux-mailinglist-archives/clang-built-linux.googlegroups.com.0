Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBDW6WWDQMGQEAMOXCII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 837E43C6ED3
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 12:46:39 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id u40-20020a0cb9280000b0290290c3a9f6f1sf16842343qvf.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 03:46:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626173198; cv=pass;
        d=google.com; s=arc-20160816;
        b=KXbM0TmtnHMw2KdMAqJ7KMp3g6UT1ZYj8TDseOJoPj1GMyUF0Rwz6k316RYoCPyf6f
         LfI8J1DR/uxr8bWwTJjd+j7SuhTWGYYO1/kI3PmOIz3CpF23HLbOGowuJ73eUr+qu5sl
         0tITL9SpAojwjPbPTtAnfFsdHadO5Czqi51QeOV3CeszAPiOKHddmN8V+PTyjSopwgcI
         Is+IXbPSp+RIT3jOBsgjNF3VXnfTvMdYvk9OVMrBPWoJN79AMdmeLeh2rn1S9BEfWDbJ
         LrrALi0T4qs5EwYtBVW3GXGqe4r66KXCGYG5fgE0dWcGKyESABUvBjuv2Oi9FEf0K4Tq
         WIHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=427mCev3JJkNc/x+5Uf7NQOUPNM8H208ekckAt6SABQ=;
        b=hILfZkmbIBxvN1pD5xkL5DWbLNzNhK1yNkrQAt8YFOPZcrQoCN/cYneQO6go3eUDcr
         3jkN4dmCm5zpUowb3lmMJeu44LqP8DLNKl/9utwMlEGXQuBuPRI38WjCkYLw2QmB9HZk
         jP1yVdUipXGrn13tWv4RFy1Em7v+tKBTMF9U0Pw7e3pU/l1Y35nqJXgmqqW/Be1cqKyr
         4+CXbNiIaiZyCq3x/0QOxCNHrsbY2VNQr4uYeXTbCfErWA8B2Eh+RtI3Ff7VeIpupdMB
         LpwH2Nvo/hSiXAzqlqZ6wowEh932dXRvSB/4DNr2SXMy7z2OEhq3k2Kc91O3GYAFvJxT
         v87g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Fch6AyCo;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=427mCev3JJkNc/x+5Uf7NQOUPNM8H208ekckAt6SABQ=;
        b=WRGZJkV5pNtdPsBsQvibkp3P7pSEcP8tIMigEpTjWRwLQ/XBOM+nyMEw7quCmw1dXd
         4rE/M3CZZM2xzSgDNaBe8y6yREbKo6vcUiamuQhHmsE3ImyZ1BRH4kabtHDFHU9lr7kq
         a7NXQumEYgTzg8oVbHwBWWzxXB4v8dqMB1/BOVZRn8W/OLB/gObM7nW4yA9uDmWJUdG4
         IV40b+5ZbBgKQCqtCi1CqkTnDGJFHfWXhfKwTTtSULijSYtRL5gTY2GrWD0tGBuAnIrD
         BcgaOBDnAGAk2ZjAdOmHHWfEU82C3/OZb/CT+ktnigau+A/M+fFUkRVy9PWibLXmsBIh
         eYAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=427mCev3JJkNc/x+5Uf7NQOUPNM8H208ekckAt6SABQ=;
        b=FtXbLU9fNEvHV0pv8EMqLPpM2/1hSmd3YeCLxgoXLG5T1FT0kdDmfx70LaflOkQVmK
         PAdSZ4zLtpbgfTxhq6stXwTNOFNfUrLt5cNeJ2UZ3dDuFXDOTYPBBqCyidjA3ruT2Lgm
         9GhJ+pBTbATfAERSvWUJ9mLA9V08jjnE6PsnR+up+bnTOHrZOH+bwhT7/xJpxv61w2iF
         D3uLiangF3pKUurO2gNKNhkHTes81WgSZTZGJKrlNTWBLAUXbG/UFZ0MAkdSjt1bF+cX
         kZiWHMPF1vITh3qWxnhUIDEgUw3nvydZN9LQGxHwxwhaPqkYc4THk3784OnSu4ULGUJi
         bivA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531j5U5raO4Uf5fKEz9wTdU3wxiKJPoLFSPBH8vI+1ZvOZ7DCQIG
	6+SqTikXg7X1EkJB/G6pwy4=
X-Google-Smtp-Source: ABdhPJxIVJHmhnB17yFkdAj52Q6rzZAQBCVk696YQjTMKeR6noc2dIVz4Kt13JkGVVQ5Q/KvxQqaOg==
X-Received: by 2002:a0c:ca0f:: with SMTP id c15mr4007249qvk.51.1626173198427;
        Tue, 13 Jul 2021 03:46:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4111:: with SMTP id q17ls9107725qtl.8.gmail; Tue, 13 Jul
 2021 03:46:38 -0700 (PDT)
X-Received: by 2002:a05:622a:14ce:: with SMTP id u14mr3413007qtx.208.1626173197981;
        Tue, 13 Jul 2021 03:46:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626173197; cv=none;
        d=google.com; s=arc-20160816;
        b=K8hEK1RFhn6S6ZRTyrvLB0VvvUVr6jR+NSW4WWQhPvo3AMgn2Qp15wlgHZaAMP9l0C
         YEjX5TKtKtlYpazatRasH5yrxbP1PMahlaOu5hAKEU8TAT2TTqWCXPKRtYuD0zT+O+1a
         66wmt3KysSruB7wrKEdkBWFKINe6SBr8ipYpsX7ZQ6uGUZ1sIvxqwdijBe4wcVmijYsM
         FznarvF30LAQirfC6jr3qKm6GhlViuZh3kHhrjiy/HvfCf9J/QjIzcPLZien98ZUXWhN
         E9TOZxvfoY+Qx4mMWv7JoKnZRDmaQv+EnzQVMHMKH21X/4fyfeT8pCOs8+s6hy/s/VtH
         bKEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=+svtoajNYpBbeswP8VRHWjbPN7Mwn71IcUxSdOvYYRw=;
        b=OFy/DxkYwX/526WRZsDE702VubZFSg+gcIDF8rZ5kdSkH/1Po4W1BpBQr2fiGjiDV4
         ClzYBjhKRgbUSGeT5upuuuzzO32BEn0Ly//Ejfh6RqpypiR+ZK/qAlg4gjhtnQvs3wxj
         BBZHPwYMh+wUOFUBxPG/D2sC8+J1Hlfs14hGrEc/Mh3m0lWDBuvYiaZgD/SrZ3LSaKcb
         pC//eZTBz/RGnHJ90SSi6lh5zpSAByzakpCiUZF+pZRCpTRAuAQFH+Aq6DWHRPORHxj+
         XfreBLqIzt5MBVnq5zbpqxi29Z64shDr7mn7aVfVyJdQ7NK0nf6M5FBfKazvf73MmzVN
         y3ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Fch6AyCo;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id c19si1166063qtx.4.2021.07.13.03.46.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Jul 2021 03:46:37 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 16DAjwst001971
	for <clang-built-linux@googlegroups.com>; Tue, 13 Jul 2021 19:46:08 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 16DAjwst001971
X-Nifty-SrcIP: [209.85.210.177]
Received: by mail-pf1-f177.google.com with SMTP id p22so6240460pfh.8
        for <clang-built-linux@googlegroups.com>; Tue, 13 Jul 2021 03:46:08 -0700 (PDT)
X-Received: by 2002:a62:1d84:0:b029:304:5af1:65f6 with SMTP id
 d126-20020a621d840000b02903045af165f6mr3832354pfd.80.1626173157865; Tue, 13
 Jul 2021 03:45:57 -0700 (PDT)
MIME-Version: 1.0
References: <b45b2430-3670-b310-b6ad-2d6db50c2d18@mailbox.org>
In-Reply-To: <b45b2430-3670-b310-b6ad-2d6db50c2d18@mailbox.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 13 Jul 2021 19:45:21 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT3bAg164L7mWDk0sfsvxZvMukezSSu1BYu3M425SWeaQ@mail.gmail.com>
Message-ID: <CAK7LNAT3bAg164L7mWDk0sfsvxZvMukezSSu1BYu3M425SWeaQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] Kbuild, clang: add option for choosing a ThinLTO
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
 header.i=@nifty.com header.s=dec2015msa header.b=Fch6AyCo;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Mon, Jul 12, 2021 at 8:10 PM Tor Vic <torvic9@mailbox.org> wrote:
>
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
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1104
> Signed-off-by: Tor Vic <torvic9@mailbox.org>


I do not understand.

Currently, .thinlto-cache is created in the same directory
as the other objects.  (right under $(KBUILD_EXTMOD))

If you build in a read-only directory, you cannot put
any build artifact (not limited to the thinlto cache) there.

Why did changing the location of .thinlto-cache
solve your problem?



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
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 10950559b223..bca87a6aa35b 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -197,6 +197,10 @@ endif
>  part-of-module = $(if $(filter $(basename $@).o, $(real-obj-m)),y)
>  quiet_modtag = $(if $(part-of-module),[M],   )
>
> +ifdef CONFIG_LTO_CLANG_THIN
> +KBUILD_LDFLAGS +=
> --thinlto-cache-dir=$(thinlto-dir)$(extmod-prefix).thinlto-cache
> +endif
> +
>  modkern_cflags =                                          \
>         $(if $(part-of-module),                           \
>                 $(KBUILD_CFLAGS_MODULE) $(CFLAGS_MODULE), \
> diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
> index 5e9b8057fb24..ab0d72e21318 100644
> --- a/scripts/Makefile.modfinal
> +++ b/scripts/Makefile.modfinal
> @@ -35,6 +35,10 @@ ifdef CONFIG_LTO_CLANG
>  # avoid a second slow LTO link
>  prelink-ext := .lto
>
> +ifdef CONFIG_LTO_CLANG_THIN
> +KBUILD_LDFLAGS +=
> --thinlto-cache-dir=$(thinlto-dir)$(extmod-prefix).thinlto-cache
> +endif # CONFIG_LTO_CLANG_THIN
> +
>  # ELF processing was skipped earlier because we didn't have native code,
>  # so let's now process the prelinked binary before we link the module.
>
> --
> 2.32.0



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT3bAg164L7mWDk0sfsvxZvMukezSSu1BYu3M425SWeaQ%40mail.gmail.com.
