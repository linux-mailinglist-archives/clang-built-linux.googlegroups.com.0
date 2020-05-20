Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6XWS33AKGQESWNLQ3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id A73E11DC2BE
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 01:21:31 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id n36sf1830784uan.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 16:21:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590016890; cv=pass;
        d=google.com; s=arc-20160816;
        b=sCF64zbC7Ng+avzQ8UYw+uql8kOqvhipf5I6J7rrRIAY0chhvnA/m7uGsjRxFbgcXz
         OyUAIgeBwzTYqphThHz0WEKmk/FAYfMEMdhQhXTQ4nNipQmXwEZCPEnzRd53ahbu7Rul
         YqwzMrsRl4r+cdS7a6/EmPo81A1xn6TmOLrgBhxn1xHpgf7PAVv1tCy9dzrzG9gXE1FD
         jVgWUV9mF+ZL+eQ31twcrLrnh/nbduPGuWDRgSuQ/T9CmfpeXjN0E3lLgrw+rAh2zPX2
         Sq6wFjTYXmzPKI8O33Q7WSoL8iMK/QsEQcB7VErdRg21fVjJfWfPaBJ4xe1EAnlFgfUF
         xBaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ldLOlKT4+ynn4FG2FnGvGPtflvbUHJWLe6Yv+sJ4to8=;
        b=syFb+0D5La5XkMjqDIedTn5+9EArE4l3wFddS/Ci7RqNEN2ITKlCRnsvkKJ8NQ2gcV
         Z1pkYoKKFyIUXvG17wzil6VtAhDbC2CqXbtreS2z5PIbmVr4danE7KvaaGhyMpaV/Cg4
         HIZN04lZJke597My9NLF/xiq+pRTccM3pqY5Y0J6/C84H5t9EBQzDdUekSUzISnNyLKw
         smOQvtGVXQMWwitG2O0VJ3dJUHpBW42qIh9TEX30ISxlXugKFv8oONrZz8ktsAXpjRxq
         eQdL2oMzH8QFA6U2sWToWLJWzMvXRByiSJx5b7KtWXtiDB7eSbZjKKIYvlW7dcaJtVTa
         HJcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="bCMe/xuf";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ldLOlKT4+ynn4FG2FnGvGPtflvbUHJWLe6Yv+sJ4to8=;
        b=dIvJEcK5HjB5B1rxB3tS366znwz2yrMODLR3LI6BPyeRwujMONwfejewOn6xzSavmJ
         Djdmjo5zHEXRJELMXeR+WP1XAoLBkHmhK7zFN5mEtWWZBYdiexuKLUpkwkHTm/WRBbKG
         Wc6xW/fxFzwmGJUS+qFu2AmdOxE0Fkcp3hnN3BkMw7W1pORDcEV/xoRMl/hS/wuVy7w7
         P2xeaYVBz0HjICe/ScIDYEipynRcZCc3ZDTBL+7ajpYqEXzncJzv9OxRuPPZ4invveuH
         V2LFWX3GEFChHFGOb8ZiYDWGXE9JlV13YHod0YjLhPxzSFJ/+PAo5QxUixlGzRsuSooI
         uMUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ldLOlKT4+ynn4FG2FnGvGPtflvbUHJWLe6Yv+sJ4to8=;
        b=Kmbn8G/xicTjUpon39HtXmDrwDIWw456e9wdlKsTluN+ZG81WNINo+/mVZu7xIs9fu
         PJ2GsF/XGEXJj9JS85MvmG5L5w1Jo+KrqqLsgQf0lPPbcaL/Z53YJ/pFo0ku4+h5UyTj
         Zrcj/1yXUula/O7fObje+yhqeJIJkVXRGLYvBrBPT3XWsCCJK6po5r9GXPYZfPmzXcBG
         rnRhE/nbWTIHRVEoPa7MhHWQBt9aro5bCjexRcSoRcKfPvItincFCBmf2aSLJJDhchPt
         1NdKsyREh1F85zEJZCOw5paNxZCbpaY1QOmHdVtRoYq4BgDXcjCr6mJPwdA8dNrzASPz
         SW+w==
X-Gm-Message-State: AOAM531dJs+iTnS4JzfyvV+qiJGgCAyrcZ7kEiKb79CRbAMws1hYQk3y
	uWqFoWQNfrWpnctAolG+6tk=
X-Google-Smtp-Source: ABdhPJyChvrWDK13OB2QsJTVlcG3vfUsgLlam/TFF4yOdRN81RISnbc/uCXf5+KoUTvXGHuhCaAHzQ==
X-Received: by 2002:ab0:7c1:: with SMTP id d1mr5284951uaf.76.1590016890699;
        Wed, 20 May 2020 16:21:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:80cf:: with SMTP id b198ls29697vsd.3.gmail; Wed, 20 May
 2020 16:21:30 -0700 (PDT)
X-Received: by 2002:a67:d016:: with SMTP id r22mr5046225vsi.215.1590016890319;
        Wed, 20 May 2020 16:21:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590016890; cv=none;
        d=google.com; s=arc-20160816;
        b=UgxbsicjOZ3ZKKoyqfCr0jjOKRmkE1xdYdCflgHMbotlU4cJJnCmpUBMBebrJrOGKo
         +3EOzM5ozMFDjRSKgbsbojb6PDvDCIl+oIqlxQN04Pmdo03csiFo70jvgx4wHXeAAhfy
         RilPd46/5RZlezbA4JllEzhcb5Ky45Jc6XaABpHyOe4yUAJhKjdGoBXUXTm7mKSUESzL
         fd6E5bN5VHiUS6PHOr9CDJrvBWre9Ag2sKkO4XWswxv7pWQGdePeUOd6KlT28et9s+mL
         8RHLFzO6P6sPaNO3bHb5Q63umof5KP+XVK66a4uCjViRvg3ldJypks3TdxxIaUlYVVFA
         hwvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=d9DQ+P49I61QAM9lR3N7+GDsq5XLFYN6aPsU2WBNwdA=;
        b=MM+SNE0cdnIK3uafL9C0ydlRvFkFolOC9Pwva6/ISTui2Wbe5iC66x597rwRAcEobG
         seeh+Kb0i99nqemRdtO+QFof51h9xRlV56lSzdJa0iRMET1H8KNBTIG12gVJi3MQPR8+
         a7pWZhrsf2od0STKzWQpj3ftO3z7UAheLtMqZKCJ51Q9ZgXpTCKcE/rgg4rYFqUn5a+s
         FmBQ/TmbbjBFzW31setF0fFmjiDbcwyCgh4mLqkf17exqPWAowYgXqvl52RraIz6v+co
         7NXR4psRD6VlDxezy85NQNyDWhpSJYP9aBtLBbNaF9oFjyMaLm6dlQhHqMyEcV45ExSQ
         VHxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="bCMe/xuf";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id 137si299353vkw.5.2020.05.20.16.21.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 16:21:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id q9so2095928pjm.2
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 16:21:30 -0700 (PDT)
X-Received: by 2002:a17:90b:19cc:: with SMTP id nm12mr7431934pjb.25.1590016889009;
 Wed, 20 May 2020 16:21:29 -0700 (PDT)
MIME-Version: 1.0
References: <10f4fb0b-1012-b0e6-af05-0aa5a906de21@redhat.com> <20200520193637.6015-1-ndesaulniers@google.com>
In-Reply-To: <20200520193637.6015-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 20 May 2020 16:21:17 -0700
Message-ID: <CAKwvOd=LvSSrg6ynWwnmg4oYS+Ti_rcUrQNudwQLCnEgt6Uzyg@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile: support compressed debug info
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Fangrui Song <maskray@google.com>, 
	Nick Clifton <nickc@redhat.com>, Michal Marek <michal.lkml@markovi.net>, 
	Andrew Morton <akpm@linux-foundation.org>, Changbin Du <changbin.du@intel.com>, 
	Randy Dunlap <rdunlap@infradead.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Anshuman Khandual <anshuman.khandual@arm.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, David Blaikie <blaikie@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="bCMe/xuf";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Wed, May 20, 2020 at 12:36 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> As debug information gets larger and larger, it helps significantly save
> the size of vmlinux images to compress the information in the debug
> information sections. Note: this debug info is typically split off from
> the final compressed kernel image, which is why vmlinux is what's used
> in conjunction with GDB. Minimizing the debug info size should have no
> impact on boot times, or final compressed kernel image size.
>
> All of the debug sections will have a `C` flag set.
> $ readelf -S <object file>
>
> $ bloaty vmlinux.gcc75.compressed.dwarf4 -- \
>     vmlinux.gcc75.uncompressed.dwarf4
>
>     FILE SIZE        VM SIZE
>  --------------  --------------
>   +0.0%     +18  [ = ]       0    [Unmapped]
>  -73.3%  -114Ki  [ = ]       0    .debug_aranges
>  -76.2% -2.01Mi  [ = ]       0    .debug_frame
>  -73.6% -2.89Mi  [ = ]       0    .debug_str
>  -80.7% -4.66Mi  [ = ]       0    .debug_abbrev
>  -82.9% -4.88Mi  [ = ]       0    .debug_ranges
>  -70.5% -9.04Mi  [ = ]       0    .debug_line
>  -79.3% -10.9Mi  [ = ]       0    .debug_loc
>  -39.5% -88.6Mi  [ = ]       0    .debug_info
>  -18.2%  -123Mi  [ = ]       0    TOTAL
>
> $ bloaty vmlinux.clang11.compressed.dwarf4 -- \
>     vmlinux.clang11.uncompressed.dwarf4
>
>     FILE SIZE        VM SIZE
>  --------------  --------------
>   +0.0%     +23  [ = ]       0    [Unmapped]
>  -65.6%    -871  [ = ]       0    .debug_aranges
>  -77.4% -1.84Mi  [ = ]       0    .debug_frame
>  -82.9% -2.33Mi  [ = ]       0    .debug_abbrev
>  -73.1% -2.43Mi  [ = ]       0    .debug_str
>  -84.8% -3.07Mi  [ = ]       0    .debug_ranges
>  -65.9% -8.62Mi  [ = ]       0    .debug_line
>  -86.2% -40.0Mi  [ = ]       0    .debug_loc
>  -42.0% -64.1Mi  [ = ]       0    .debug_info
>  -22.1%  -122Mi  [ = ]       0    TOTAL
>
> For x86_64 defconfig + LLVM=1 (before):
> Elapsed (wall clock) time (h:mm:ss or m:ss): 3:22.03
> Maximum resident set size (kbytes): 43856
>
> For x86_64 defconfig + LLVM=1 (after):
> Elapsed (wall clock) time (h:mm:ss or m:ss): 3:32.52
> Maximum resident set size (kbytes): 1566776
>
> Suggested-by: David Blaikie <blakie@google.com>

Sorry, I have mistyped David's email, it should be:
Suggested-by: David Blaikie <blaikie@google.com>
(I missed the first `i` in the last name)

> Suggested-by: Fangrui Song <maskray@google.com>
> Suggested-by: Nick Clifton <nickc@redhat.com>
> Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V1 -> V2:
> * rebase on linux-next.
> * Add assembler flags as per Fangrui.
> * Add note about KDEB_COMPRESS+scripts/package/builddeb
>   as per Sedat and Masahiro.
> * Add note about bintutils version requirements as per Nick C.
> * Add note about measured increased build time and max RSS.
>
>  Makefile          |  6 ++++++
>  lib/Kconfig.debug | 15 +++++++++++++++
>  2 files changed, 21 insertions(+)
>
> diff --git a/Makefile b/Makefile
> index 71687bfe1cd9..be8835296754 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -822,6 +822,12 @@ DEBUG_CFLAGS       += $(call cc-option, -femit-struct-debug-baseonly) \
>                    $(call cc-option,-fno-var-tracking)
>  endif
>
> +ifdef CONFIG_DEBUG_INFO_COMPRESSED
> +DEBUG_CFLAGS   += -gz=zlib
> +KBUILD_AFLAGS  += -Wa,--compress-debug-sections=zlib
> +KBUILD_LDFLAGS += --compress-debug-sections=zlib
> +endif
> +
>  KBUILD_CFLAGS += $(DEBUG_CFLAGS)
>  export DEBUG_CFLAGS
>
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index b8f023e054b9..5a423cbfaea4 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -225,6 +225,21 @@ config DEBUG_INFO_REDUCED
>           DEBUG_INFO build and compile times are reduced too.
>           Only works with newer gcc versions.
>
> +config DEBUG_INFO_COMPRESSED
> +       bool "Compressed debugging information"
> +       depends on DEBUG_INFO
> +       depends on $(cc-option,-gz=zlib)
> +       depends on $(as-option,-Wa,--compress-debug-sections=zlib)
> +       depends on $(ld-option,--compress-debug-sections=zlib)
> +       help
> +         Compress the debug information using zlib.  Requires GCC 5.0+ or Clang
> +         5.0+, binutils 2.26+, and zlib.
> +
> +         Users of dpkg-deb via scripts/package/builddeb may
> +         wish to set the $KDEB_COMPRESS env var to "none" to avoid recompressing
> +         the debug info again with a different compression scheme, which can
> +         result in larger binaries.
> +
>  config DEBUG_INFO_SPLIT
>         bool "Produce split debuginfo in .dwo files"
>         depends on DEBUG_INFO
> --
> 2.26.2.761.g0e0b3e54be-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DLvSSrg6ynWwnmg4oYS%2BTi_rcUrQNudwQLCnEgt6Uzyg%40mail.gmail.com.
