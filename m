Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGGAXPVQKGQEJS4MGLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 53471A7684
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Sep 2019 23:50:18 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id q1sf11826077pgt.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Sep 2019 14:50:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567547416; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z2LjKLEDMZDj0VCX+WQcfzKOefavSHBoKqTRUqRK/TL3eRLrQRodNKHBdXGCtVezCm
         1sFB1Z2oUEJ5xw8hQdyHXGX6qNQMrVZaf+jmqvwuuE/ZjFCx2bTakox3pnwPS72hZ8qx
         ub9AKwFqJWuLz3rtSw8taP8vhr3SRL0G9kyzgm0qzA+6dnpq/PqJEhbgKppHjmaB1YLV
         R/Eh+AMj7jwcQmWOMQ4aA35eommfLVsqz/n8MQsA/N0/pj46YMzj9G2yYs/KnizpdWQL
         hEUvJsGbwFdtY5vYhJDHvp+EzKryJyA1huJxL/vmstmJpinD2r4VUFK7Q6xFXb9Gg5BZ
         fw0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=w2/9wv7bQnEbuWeARzqiGnPnEXIpGVzj12ZqxLMy3qw=;
        b=hsGYIgOpfMY6PhiUFWgCzmrQIPYjLKTqVMMEdJ9E0i0ZEXHB4i+hZCKmCIehJHXlrf
         2U3aWJ2D9fIl5/nvh1wAFPdLTbChNSQeHSGC+SkEhHVENG30QUsOwQUaF9GcG7yeVuao
         S82bqDwPkB33+/rEygcp6bqp5hgijIQ19U6GrSm0QMFWx3ksANfaFVHSdousMdxzM5Dy
         ARNubpC9/G9dj1/ijYMDDanoujyq2WAkcacx1tUSf3G3lCTreuRHcIk0unX3mSOWeY5E
         Oz1TTFx8wXihUMWiKwkMgHkbBbOiLycCN6LGaURe5i88+tH16fOv1WsL+CGb/08nT7MN
         Gnug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Nt2xVI4j;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w2/9wv7bQnEbuWeARzqiGnPnEXIpGVzj12ZqxLMy3qw=;
        b=HEYI4R0AjDb1KeQHmGC9Whs3GJMBz5JlbD3/DPAyTBwc3QLlmMpvcDG6e0mbWPicJm
         5khr++fLpDxaEsC+YSAsZ82WaOoK5KramxaXuidOVeafNSHxm0k/HJCbjLqiP/pRS9jI
         M6nN1EuMDgqYjVpHfYq/0laAyhH+puyxkv/Ec47Bu383qmto07xCV8GJtdflkLOADo6r
         x1K0PwRt0gEWPn6e6wyeTgV3zf1HBqJsUrEyIO6ucppEHk7jVxcl34BpE4weHuy52e6F
         SZsfpvfC5s82oZMS0yqFKdlwsDh8AoJJGXkN4ET5IWFguYn8hGt/Z/Tj0yE4oYkDYj1K
         a7lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w2/9wv7bQnEbuWeARzqiGnPnEXIpGVzj12ZqxLMy3qw=;
        b=gQ9goX4kC0wwqy8k1JaOvIoMy68FV7oKZtV0JiHtKbSUGrAxMk61uAyMrJF5aKJwHY
         K4poir0f54S/ycpkv82jubvgr0pn8ALtCLuqk+y3fgNIKahOHU82FVGhI97qOb+MUqih
         sxIpr7Tg49CgJdZIuCtzygQll6pbtFuoXO8aqJiKsLayjxEA0Vt6BrSdH/5LmA8NyxiA
         aLBjq253a+zlUvR9uSlTGY2vhe2IhtXvO9Jiv6aS85QkJKVT6SD7g4fLj53xldnDBMq7
         Hdf9JX64EUOIGPjRhA1uevMnJ99RD1uKgb0bo4TgxZM8tYDRen4N/8syVAwvOl0szO2w
         omkQ==
X-Gm-Message-State: APjAAAWBqkIMXfSqY2jOnfF81mqxs7ipCaOxgecyt/l6zjHgZ3PJVdPb
	xSNjMY8I1PP7TJip5HpZtZk=
X-Google-Smtp-Source: APXvYqzOxDHQ5CFheI4yzFjkeRUc+Ljlf0vYYbL1pyOIDp14eUfEjksNY7XYxSGGCJe2lJvmIc435w==
X-Received: by 2002:a63:c006:: with SMTP id h6mr31962169pgg.290.1567547416613;
        Tue, 03 Sep 2019 14:50:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:f84d:: with SMTP id c13ls6064295pfm.0.gmail; Tue, 03 Sep
 2019 14:50:16 -0700 (PDT)
X-Received: by 2002:aa7:82cb:: with SMTP id f11mr14834731pfn.192.1567547416243;
        Tue, 03 Sep 2019 14:50:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567547416; cv=none;
        d=google.com; s=arc-20160816;
        b=YiQzn6pLtnItiIcEm94aWqtyKBa1dNzZEKBOm5XhlE3L4j+bewoB5YfMV6IhrHd22H
         pTpWbzFAo+mpX4WapOM7fCd5v86GnBFlvQt/Trr3z59sYgrrK22EFFsPabN/PSHyiX2o
         xHYUvo2BSm0SQAnCgzPZ8jJxzgarbbyk6oALM4SQselnQK7jhrj9CqemZ2yS2tlYDYZt
         W0e0Qq85Rget7gQeIu4M/xNBvweDWR2O4q5s5q29Gc+vn0Fb6+iM++r9RTzdMZO9u3sN
         3dpC/RFJAy9awBTokXruRojgwyHYz1pCBB20mPecDJr5OBIUTt7ATjzc77OSVO1Y3zw0
         Xzjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pkHv7aeAus4diANg1wa54ZbIxaxA/Tq3Ei6vs6FUsos=;
        b=cbKETBBRKW1xtK01i82eiUUThuLpu6L6DXAzeM7GBTP32wXAcKx0aDFWagC6c+VKuR
         +l/Hirhlsogo9t1c/7MDkjXX/LtUMdrrJ06Z0Ok8+XaXlryMCUVLvW7grKFotm+GRxtI
         GWqW0/l1BJjH26BZN95fs+jT4ZWXwG/R5puvOn9Wp+OWZkTUDYGCCLfolCMPeph2D+QB
         kn12Iv5HhMVOsgpFUoiH/gMRMXDA0dgm2X4BX0WPi6EJSVGZSwIbsEaB6FrOY4lowAL6
         3O8Mi7IDYZxYOdYjfJbkP1ZHQ2ZKekeebvS8zZ/C+Tp75CQkL80qxgju3yOTM2F9E5Ad
         DCQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Nt2xVI4j;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id t14si1251758pfc.1.2019.09.03.14.50.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2019 14:50:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id d3so8563230plr.1
        for <clang-built-linux@googlegroups.com>; Tue, 03 Sep 2019 14:50:16 -0700 (PDT)
X-Received: by 2002:a17:902:7296:: with SMTP id d22mr17503056pll.179.1567547415436;
 Tue, 03 Sep 2019 14:50:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190831162555.31887-1-yamada.masahiro@socionext.com> <20190831162555.31887-2-yamada.masahiro@socionext.com>
In-Reply-To: <20190831162555.31887-2-yamada.masahiro@socionext.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 3 Sep 2019 14:50:04 -0700
Message-ID: <CAKwvOdm0zcyaBLdSVc7PmjUa-wyVuCaN=6qZoPLvnoJC1ammog@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] kbuild: rename KBUILD_ENABLE_EXTRA_GCC_CHECKS to KBUILD_EXTRA_WARN
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Jonathan Corbet <corbet@lwn.net>, Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-doc@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Nt2xVI4j;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Sat, Aug 31, 2019 at 9:26 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> KBUILD_ENABLE_EXTRA_GCC_CHECKS started as a switch to add extra warning
> options for GCC, but now it is a historical misnomer since we use it
> also for Clang, DTC, and even kernel-doc.

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Rename it to more sensible, and shorter KBUILD_EXTRA_WARN.
>
> For the backward compatibility, KBUILD_ENABLE_EXTRA_GCC_CHECKS is still
> supported (but not advertised in the documentation).
>
> I also fixed up 'make help', and updated the documentation.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
>
> Changes in v3:
>   - new patch
>
> Changes in v2: None
>
>  Documentation/kbuild/kbuild.rst | 14 +++++++++-----
>  Makefile                        |  2 +-
>  scripts/Makefile.build          |  2 +-
>  scripts/Makefile.extrawarn      | 13 +++++++++----
>  scripts/Makefile.lib            |  4 ++--
>  scripts/genksyms/Makefile       |  2 +-
>  6 files changed, 23 insertions(+), 14 deletions(-)
>
> diff --git a/Documentation/kbuild/kbuild.rst b/Documentation/kbuild/kbuild.rst
> index 62f9d86c082c..f1e5dce86af7 100644
> --- a/Documentation/kbuild/kbuild.rst
> +++ b/Documentation/kbuild/kbuild.rst
> @@ -105,6 +105,15 @@ The output directory can also be specified using "O=...".
>
>  Setting "O=..." takes precedence over KBUILD_OUTPUT.
>
> +KBUILD_EXTRA_WARN
> +-----------------
> +Specify the extra build checks. The same value can be assigned by passing
> +W=... from the command line.
> +
> +See `make help` for the list of the supported values.
> +
> +Setting "W=..." takes precedence over KBUILD_EXTRA_WARN.
> +
>  KBUILD_DEBARCH
>  --------------
>  For the deb-pkg target, allows overriding the normal heuristics deployed by
> @@ -241,11 +250,6 @@ To get all available archs you can also specify all. E.g.::
>
>      $ make ALLSOURCE_ARCHS=all tags
>
> -KBUILD_ENABLE_EXTRA_GCC_CHECKS
> -------------------------------
> -If enabled over the make command line with "W=1", it turns on additional
> -gcc -W... options for more extensive build-time checking.
> -
>  KBUILD_BUILD_TIMESTAMP
>  ----------------------
>  Setting this to a date string overrides the timestamp used in the
> diff --git a/Makefile b/Makefile
> index 06e1e21c0f45..016d72eb3ddf 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1538,7 +1538,7 @@ help:
>         @echo  '  make C=1   [targets] Check re-compiled c source with $$CHECK (sparse by default)'
>         @echo  '  make C=2   [targets] Force check of all c source with $$CHECK'
>         @echo  '  make RECORDMCOUNT_WARN=1 [targets] Warn about ignored mcount sections'
> -       @echo  '  make W=n   [targets] Enable extra gcc checks, n=1,2,3 where'
> +       @echo  '  make W=n   [targets] Enable extra checks, n=1,2,3 where'
>         @echo  '                1: warnings which may be relevant and do not occur too often'
>         @echo  '                2: warnings which occur quite often but may still be relevant'
>         @echo  '                3: more obscure warnings, can most likely be ignored'
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index 2a21ca86b720..f72aba64d611 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -85,7 +85,7 @@ else ifeq ($(KBUILD_CHECKSRC),2)
>          cmd_force_checksrc = $(CHECK) $(CHECKFLAGS) $(c_flags) $<
>  endif
>
> -ifneq ($(KBUILD_ENABLE_EXTRA_GCC_CHECKS),)
> +ifneq ($(KBUILD_EXTRA_WARN),)
>    cmd_checkdoc = $(srctree)/scripts/kernel-doc -none $<
>  endif
>
> diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> index d226c5fb13e2..53eb7e0c6a5a 100644
> --- a/scripts/Makefile.extrawarn
> +++ b/scripts/Makefile.extrawarn
> @@ -8,14 +8,19 @@
>
>  KBUILD_CFLAGS += $(call cc-disable-warning, packed-not-aligned)
>
> +# backward compatibility
> +KBUILD_EXTRA_WARN ?= $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)
> +
>  ifeq ("$(origin W)", "command line")
> -  export KBUILD_ENABLE_EXTRA_GCC_CHECKS := $(W)
> +  KBUILD_EXTRA_WARN := $(W)
>  endif
>
> +export KBUILD_EXTRA_WARN
> +
>  #
>  # W=1 - warnings which may be relevant and do not occur too often
>  #
> -ifneq ($(findstring 1, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> +ifneq ($(findstring 1, $(KBUILD_EXTRA_WARN)),)
>
>  KBUILD_CFLAGS += -Wextra -Wunused -Wno-unused-parameter
>  KBUILD_CFLAGS += -Wmissing-declarations
> @@ -48,7 +53,7 @@ endif
>  #
>  # W=2 - warnings which occur quite often but may still be relevant
>  #
> -ifneq ($(findstring 2, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> +ifneq ($(findstring 2, $(KBUILD_EXTRA_WARN)),)
>
>  KBUILD_CFLAGS += -Wcast-align
>  KBUILD_CFLAGS += -Wdisabled-optimization
> @@ -65,7 +70,7 @@ endif
>  #
>  # W=3 - more obscure warnings, can most likely be ignored
>  #
> -ifneq ($(findstring 3, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> +ifneq ($(findstring 3, $(KBUILD_EXTRA_WARN)),)
>
>  KBUILD_CFLAGS += -Wbad-function-cast
>  KBUILD_CFLAGS += -Wcast-qual
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 7ab17712ab24..df83967268ba 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -248,7 +248,7 @@ quiet_cmd_gzip = GZIP    $@
>  DTC ?= $(objtree)/scripts/dtc/dtc
>
>  # Disable noisy checks by default
> -ifeq ($(findstring 1,$(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> +ifeq ($(findstring 1,$(KBUILD_EXTRA_WARN)),)
>  DTC_FLAGS += -Wno-unit_address_vs_reg \
>         -Wno-unit_address_format \
>         -Wno-avoid_unnecessary_addr_size \
> @@ -259,7 +259,7 @@ DTC_FLAGS += -Wno-unit_address_vs_reg \
>         -Wno-pci_device_reg
>  endif
>
> -ifneq ($(findstring 2,$(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> +ifneq ($(findstring 2,$(KBUILD_EXTRA_WARN)),)
>  DTC_FLAGS += -Wnode_name_chars_strict \
>         -Wproperty_name_chars_strict
>  endif
> diff --git a/scripts/genksyms/Makefile b/scripts/genksyms/Makefile
> index baf44ed0a93a..78629f515e78 100644
> --- a/scripts/genksyms/Makefile
> +++ b/scripts/genksyms/Makefile
> @@ -12,7 +12,7 @@ genksyms-objs := genksyms.o parse.tab.o lex.lex.o
>  #
>  # Just in case, run "$(YACC) --version" without suppressing stderr
>  # so that 'bison: not found' will be displayed if it is missing.
> -ifeq ($(findstring 1,$(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> +ifeq ($(findstring 1,$(KBUILD_EXTRA_WARN)),)
>
>  quiet_cmd_bison_no_warn = $(quiet_cmd_bison)
>        cmd_bison_no_warn = $(YACC) --version >/dev/null; \
> --
> 2.17.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm0zcyaBLdSVc7PmjUa-wyVuCaN%3D6qZoPLvnoJC1ammog%40mail.gmail.com.
