Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3E6X2BAMGQET33ILPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 1061833C26B
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 17:46:37 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id m9sf15365452wrx.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 09:46:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615826796; cv=pass;
        d=google.com; s=arc-20160816;
        b=NstTaKBMmqsA3fLERWLw3ZhWrlAkTbgo5M6x6Ce3rqMMeaBTo3ysLQJOKNvsoFCnui
         WT2WWVBdenrfnNSosB9NaNQ190T2L/IR9HSqiEbMN2kVZVW521jNwXATuGMLbOeV3XRo
         hUWmJT4qX7nbGrncDJZsg0nt12uJrxRmwow1PcSHldTnwfsRKK4bfYPwKEsKlak7MKnw
         joxu+8WKc6xmZO5uPhndL88OFrYJt5Ek71juwM0scPrzmb5O4oK4uAFm0cw3nT+yLuIA
         9vbpXClWnVYpoSCjCFpj+bz+E4v/nfUIaz8EJIXjzuvvTpnq+fopJQBWmlEZruFV+PbE
         U41Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MTLhUztSjaDk25KDy/6Om7lu1hP1Y+60oF/gLgPdQTw=;
        b=BmW4tpstFQzRY7iaUC92segS4uw/oibi8XzToj6oGXNEBcS4wpLiLfDMrGNHT1m6Ae
         HxtkNrRRxXE0KVyexp4B1+2yXWKSyALykhjCTC/LSzrHPQTZe6PvgsJ+RGJNnlpzVHsH
         Z0PHPYuTo5T9NkuSQrl2wcPr4cp8KIJgV3SkqtDImt95BYBomLkZJykKPVCg0ZwAZOQR
         Ug3wyZKsbVSsXMg/Q7vX+icVXsZuqLyiyRskZElGOT/kSejMaPT8OpuaAaqGwauh5ff0
         Zd9cxeEHTJ6Yrz9q0USwdIgb5yYSS7n3t24E6nM8VGkB4RbDQC/sJWnq95A9aK0Zd7yZ
         LZDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QBWm3ofu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MTLhUztSjaDk25KDy/6Om7lu1hP1Y+60oF/gLgPdQTw=;
        b=gyR8pgasbKBI9FV5wG62oyBAlV11aOz4+c6HMd+o14ViWfHoil//eTBmPMZRgOzE/t
         ND1CrwV4LWeiJoFq5RIbx8evAkbT7UjA1g4VUO189utazANM1Ee9iPj3lXrKOnYXP6V3
         TSfi97zQXbjmF8Cq3UmsdwRpUCUokSdT8yE4AOcqVNwRgaksXD3d9fxDvGkugCKCY8Ew
         Hip/eseod8SNzV44+bxEorkuiG1rPIe7VfR32PHAOkeY2L9BNqCkQweqKDIBBwgQ3eJu
         inxqbXHBod7rJP/rnxG2NFRv+FO8ybrpzIlOF77gMn2d/kpMNz//2hjcqAqFi0qMTdfG
         QX0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MTLhUztSjaDk25KDy/6Om7lu1hP1Y+60oF/gLgPdQTw=;
        b=sLRSLQtg+xJteZieUJva5BkkTZagePaAcQ0ypzqimCBloE7aOozSn54enh8WxvFWww
         PtKrtIj1pTgegWan+qZs2Y/HLpMOTldze1raoxh6YBjyVag5s3Ys0yF777Zkfep64/TO
         PaDHOODLDSoLMFW9sPnwPJB3R17+/3fZLwsZgaXF9vBMax3wXqH1/Eue6fjKZNdgVHpy
         ZlyQF2F9kuTn5Jf4gB2NR0O0z3zIT6E/i3eK7CetEysR+1D4rOJoDdg1ZGh4owKLg3Xq
         vK6xNEuKt73B4a6s/IHZGh9Tq+Z3RFbb/GU1mqRCItKwsxVSLraH1D07gMuZlRe50NvB
         MfXw==
X-Gm-Message-State: AOAM531LgyAb1kh15eYa2XPbjmWw7t/hsbGkiR99yGn4S6DoGM9hAbQS
	zSye5p7tP/8hi6PhxF3MTWE=
X-Google-Smtp-Source: ABdhPJwiPBfyTxh5BcrnLY6llMSOanzBY6n1jkXfhkHNDp3XdoL9fOGRt62W8bPv0KVV/vpRSsqkOQ==
X-Received: by 2002:a1c:80c6:: with SMTP id b189mr568038wmd.21.1615826796799;
        Mon, 15 Mar 2021 09:46:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6a89:: with SMTP id s9ls450262wru.2.gmail; Mon, 15 Mar
 2021 09:46:36 -0700 (PDT)
X-Received: by 2002:adf:eec9:: with SMTP id a9mr572501wrp.252.1615826796007;
        Mon, 15 Mar 2021 09:46:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615826796; cv=none;
        d=google.com; s=arc-20160816;
        b=B+luT/mZ8kkH0YJURXzt6ogJ1dUHl52JIYHIMszm88CX5ovze3Bs4dbtBVQDODfc2h
         B8xKzs7zCnjpEUgCB1VGteBnz4KqFWoxhmLJ8ePftpsu1MFh5TObhyeo9H46BHdvRaS4
         IsGMlJBpGUSOd9K8NdGTvFw6e0Ra1e/u+gSnIc3fRJL1/zgsO6WLHDxtAWkXoV370ET5
         zHhbsGWIxPTAqLXXH97RvMxReY4qAbr0IKy2BKwl1POHZPqK74OcF+qEtiET5oi5XcNC
         V7OI2AN7mLlHo5yYo28tPJVOjHT1XL7EiKyK+NntJzQvAoA7cjQvj4VqsGPj+h0Qi2lF
         L7hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qFhPUblHKp6tXfbrK0cixR+M4AcUyTbmqfJOgtbPZ+E=;
        b=MQUBrS6TfGfBjZVe7wakh6qq+SWXbwEXrHYGkpvoMDcHa8DUChGuIi+wpdvvA0hrms
         UHztb/NOWeyH3NF1fjvSegb0Dk3hAzlTAZEIJ6mYO3WHY8J/MpoDzFVsbRX4ToLC+XRJ
         iHCucikKoxwXDl5pD76lX2l3GVQ0fu4KzCiO89vVQ39GlnyUSZUQ2i1rwH5V0IvntFcq
         v9ngVyGfgUV9UjM7reVC183GPYTlNcnTHBkEUrNhVCAjwu670TkHiEQMWiAoSVmYc8VW
         bGXmFBApwPyb85QiuUXGb0HCFLp4TN1x1q259WrdzLoc93qbBusUkt0FKwdhJmmHXzRd
         5ASQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QBWm3ofu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id g132si371438wma.1.2021.03.15.09.46.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Mar 2021 09:46:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id v2so44878127lft.9
        for <clang-built-linux@googlegroups.com>; Mon, 15 Mar 2021 09:46:35 -0700 (PDT)
X-Received: by 2002:a19:8c19:: with SMTP id o25mr8602912lfd.547.1615826795278;
 Mon, 15 Mar 2021 09:46:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210315161257.788477-1-masahiroy@kernel.org> <20210315161257.788477-3-masahiroy@kernel.org>
In-Reply-To: <20210315161257.788477-3-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 15 Mar 2021 09:46:24 -0700
Message-ID: <CAKwvOdmyw+v5tD9t3ZKwPB-Gor2OcZoRPPEHW_OT1ZJJ727tbw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] kbuild: dwarf: use AS_VERSION instead of test_dwarf5_support.sh
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Peter Enderborg <peter.enderborg@sony.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Vitor Massaru Iha <vitor@massaru.org>, 
	Wei Yang <richard.weiyang@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	"peterz@infradead.org" <peterz@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QBWm3ofu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129
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

On Mon, Mar 15, 2021 at 9:13 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> The test code in scripts/test_dwarf5_support.sh is somewhat difficult
> to understand, but after all, we want to check binutils >= 2.35.2
>
> From the former discussion, the requirement for generating DWARF v5 from
> C code is as follows:
>
>  - gcc + gnu as          -> requires gcc 5.0+ (but 7.0+ for full support)
>  - clang + gnu as        -> requires binutils 2.35.2+
>  - clang + integrated as -> OK
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> Changes in v2:
>   - fix typos
>   - simplify the dependency expression
>
>  lib/Kconfig.debug              | 3 +--
>  scripts/test_dwarf5_support.sh | 8 --------
>  2 files changed, 1 insertion(+), 10 deletions(-)
>  delete mode 100755 scripts/test_dwarf5_support.sh
>
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index b479ae609a31..c85d5f7a1aeb 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -284,8 +284,7 @@ config DEBUG_INFO_DWARF4
>
>  config DEBUG_INFO_DWARF5
>         bool "Generate DWARF Version 5 debuginfo"
> -       depends on GCC_VERSION >= 50000 || CC_IS_CLANG
> -       depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
> +       depends on GCC_VERSION >= 50000 || (CC_IS_CLANG && (AS_IS_LLVM || (AS_IS_GNU && AS_VERSION >= 23502)))
>         depends on !DEBUG_INFO_BTF
>         help
>           Generate DWARF v5 debug info. Requires binutils 2.35.2, gcc 5.0+ (gcc
> diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
> deleted file mode 100755
> index c46e2456b47a..000000000000
> --- a/scripts/test_dwarf5_support.sh
> +++ /dev/null
> @@ -1,8 +0,0 @@
> -#!/bin/sh
> -# SPDX-License-Identifier: GPL-2.0
> -
> -# Test that the assembler doesn't need -Wa,-gdwarf-5 when presented with DWARF
> -# v5 input, such as `.file 0` and `md5 0x00`. Should be fixed in GNU binutils
> -# 2.35.2. https://sourceware.org/bugzilla/show_bug.cgi?id=25611
> -echo '.file 0 "filename" md5 0x7a0b65214090b6693bd1dc24dd248245' | \
> -  $* -gdwarf-5 -Wno-unused-command-line-argument -c -x assembler -o /dev/null -
> --
> 2.27.0
>


-- 
Thanks,
~Nick Desaulniers

On Mon, Mar 15, 2021 at 9:13 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> The test code in scripts/test_dwarf5_support.sh is somewhat difficult
> to understand, but after all, we want to check binutils >= 2.35.2
>
> From the former discussion, the requirement for generating DWARF v5 from
> C code is as follows:
>
>  - gcc + gnu as          -> requires gcc 5.0+ (but 7.0+ for full support)
>  - clang + gnu as        -> requires binutils 2.35.2+
>  - clang + integrated as -> OK
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> ---
>
> Changes in v2:
>   - fix typos
>   - simplify the dependency expression
>
>  lib/Kconfig.debug              | 3 +--
>  scripts/test_dwarf5_support.sh | 8 --------
>  2 files changed, 1 insertion(+), 10 deletions(-)
>  delete mode 100755 scripts/test_dwarf5_support.sh
>
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index b479ae609a31..c85d5f7a1aeb 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -284,8 +284,7 @@ config DEBUG_INFO_DWARF4
>
>  config DEBUG_INFO_DWARF5
>         bool "Generate DWARF Version 5 debuginfo"
> -       depends on GCC_VERSION >= 50000 || CC_IS_CLANG
> -       depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
> +       depends on GCC_VERSION >= 50000 || (CC_IS_CLANG && (AS_IS_LLVM || (AS_IS_GNU && AS_VERSION >= 23502)))
>         depends on !DEBUG_INFO_BTF
>         help
>           Generate DWARF v5 debug info. Requires binutils 2.35.2, gcc 5.0+ (gcc
> diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
> deleted file mode 100755
> index c46e2456b47a..000000000000
> --- a/scripts/test_dwarf5_support.sh
> +++ /dev/null
> @@ -1,8 +0,0 @@
> -#!/bin/sh
> -# SPDX-License-Identifier: GPL-2.0
> -
> -# Test that the assembler doesn't need -Wa,-gdwarf-5 when presented with DWARF
> -# v5 input, such as `.file 0` and `md5 0x00`. Should be fixed in GNU binutils
> -# 2.35.2. https://sourceware.org/bugzilla/show_bug.cgi?id=25611
> -echo '.file 0 "filename" md5 0x7a0b65214090b6693bd1dc24dd248245' | \
> -  $* -gdwarf-5 -Wno-unused-command-line-argument -c -x assembler -o /dev/null -
> --
> 2.27.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmyw%2Bv5tD9t3ZKwPB-Gor2OcZoRPPEHW_OT1ZJJ727tbw%40mail.gmail.com.
