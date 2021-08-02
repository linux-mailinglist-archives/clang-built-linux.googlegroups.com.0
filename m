Return-Path: <clang-built-linux+bncBCS7XUWOUULBBUF4UGEAMGQEXLLE5IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id F3AED3DE134
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 23:06:25 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id l13-20020a9d708d0000b02904d343673c7csf8661602otj.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 14:06:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627938385; cv=pass;
        d=google.com; s=arc-20160816;
        b=GPqlrVli45I3YHR7ZYrUI89i21kHz3oOxgxM6nPHOu6nQpmt7V7052WyLzkEXbFoXs
         9+lCCgaa8veHDRjlAwxNznU6QpB5KYdA1nvuwqsR/TtrzMsPbYIFSfbHlcU2fv1D3Zl5
         oL6xlNSKQErzQ5ZrfR4z9XQ4B9IMG2pBla1jycGnZnnSpnAl0lKL0vNB1Jk6BWYaNDuW
         mHkUL9rMd0E8Xsr2t5v3ATnF51w9mXhdQ3XMxY3p/tP1glXnix5BRDVa9KdBwrTZBSyV
         RLhDiImrnl1CS2vHRC6/9zsskAkXOu6zOD3qGjiXh6LNyxGnT12M7wbMevWSTcddmvX2
         E02A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=grfEPV7L+O5VyFotSbGo7/6fUvvPFqzmE4b7y3KQDTY=;
        b=jKBXB6zFni62R42j/QFCFZ89//PZWxguRcbWFYhgzgSDHCp31+za58xP8LQk8kJBAQ
         Q/dpBTwRTTJjtYDcagRYD/++qeXyQhyC5xqbn5AyAXF1Zk6TvSsQ6CdJnKjeEfDHDAZm
         27PpFpjY3G5omcGEh4rwQGagcxOhYqXvYoHNX+Ze+4aFnt+F1U0BQ2Yei3DhZ4q1u8f8
         SWzwIdgrVKGu0hJYPqV5BWtzSjgpewNPMVP5QcKtxFwJjbM9NfmUCkHfNHTFguRSvVfm
         7dUjNtEsdmtLxeTzJSlRCk2bug/5yjAV46WzdsRO/2xktMpWEOTSbTnMif0MpQ1BgLiX
         m9Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f4jCW1Q8;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2e as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=grfEPV7L+O5VyFotSbGo7/6fUvvPFqzmE4b7y3KQDTY=;
        b=NOrjIkQVfkUvgYEuTqUogU1P4J8THxi7edEYHz3jRfYy+BBIxK4j+9rheNz+RvrMar
         kKR9Ez1Lp20iP3FeA628ZOL7kGkx65tz5Na9yy0YD5JTdyGs64VCrmDGHa6xSObzzY2V
         QoQwLbaFq7+4h3SVufLr9g2o4Mt3DdVzO+zLeN50wZtwyw0Kpzylv7dwaEtv+A0xOYQG
         lQi6kXfC6cXs4hdI2wgVZ87EHss6HYVkZpjrC5e0ReER8Cz23RxrUeKQvWLkW3ApTxNJ
         3LTn50fb1bDMr51rW2G1GSjzWyjvSku6oIHbBBNdn2jy4HxGzkhf73WRUcHOF7sMn787
         9JMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=grfEPV7L+O5VyFotSbGo7/6fUvvPFqzmE4b7y3KQDTY=;
        b=CWlE+wyPxYtUmAYCey86pXuaTWrkF+MsDlXIz8yiHoV17XQJ0MnYD+dhbI5m7uBNHe
         VXhuRwj5G1ZN+oBwXldzRM69z/7mJuEJhGWdoGbWVIvGaIKff9aGnqXStpm72gK99Opr
         GTbzocrZbTMdmE1zHzksVaRbkeJtqlwztM931QqaoLYdOc0V4AnmAcd2MHZIOvrQFPq0
         yiY1b1pX/1qUe2vzce635v/GPgmNb6UXRnCdOxkvqpG36p6k6zPicJbQQ3K1snkDQ+Og
         2rcE7q9Vlb3muU0FITht71G76N0QpelyDErMpOtWzY4bNDRJzJSNPtVEHQntdi2s7j+2
         1zaQ==
X-Gm-Message-State: AOAM5301cWTYughhaAva1vAfWKHpPHVHIbzcgs3u+nN80i4io8Nvmkie
	i6ec9T7FV0M5O7cf8Y8cPG8=
X-Google-Smtp-Source: ABdhPJxpaq2tQZWLY3XvHbB/U+0Uu7KC4WK1UK0lVtSk8vrMUpaDv9oN/BHakYDxVo669/2aibjr2g==
X-Received: by 2002:aca:6704:: with SMTP id z4mr12031377oix.89.1627938385015;
        Mon, 02 Aug 2021 14:06:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4e06:: with SMTP id c6ls2776993oib.4.gmail; Mon, 02 Aug
 2021 14:06:24 -0700 (PDT)
X-Received: by 2002:aca:1c17:: with SMTP id c23mr701013oic.75.1627938384540;
        Mon, 02 Aug 2021 14:06:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627938384; cv=none;
        d=google.com; s=arc-20160816;
        b=CKMF0jU0wtr90u3MY7OGBgCHHhcmyTzlhKg4dOQCCHV2NS4wJ6TNoyCJcbLIbgeS4r
         X9JWYfzLod7xciKCS5CTQkWDq+KKq0wC2FoXjKH04A7fFcgvOCHNqAhvFW6s5j591tEl
         T6mt/aoWqvpc3PBBJPstooYHJ+akXg61tk8LfwOD6unqG6hYAIxplGCV0Q6VjtDhb0c8
         1261q5YUVciko1BEA6Tw0PMoNS8vkPVcPTg57s7K33NY0hqmsV1POBIUaLZPxrJJiAh7
         CoNAg1/iNzbpNYBbRfqpKXii+UU7RCNSHVrrNmQQVTJMdgZR40porPVxfkj4r+hLAHa5
         jxvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4Gsk+PU6zv89mFYfFw3XbKhLrnW0DMZFFqe7xZQfb8k=;
        b=IZdFgz3NoSK7k7kc+IWC6b/zEvXbN/Sh4h7odlLDAZzX4FRCEiePs5EZBZp6bwyfmv
         jsDFKP/2umrhj1j69xm8B0Ftf5irvrXTTmYu/TWsR7v0xX4UOQtW58negNAUsgrx8zVZ
         5CmtrtJ2oood2wuqkknw+Omx2+BPGGON6tDtz3LmcNGL94+q5LKw+ji4wXNiPun7oobh
         W+zWKfzcpQvLpGOyb9Uw05dD9bhsshR0lMnceX/Ywv3GkK2GNHPpe7CGoKlLT3E/mhHm
         stDfwyB67uzCl25ZGJSbGHNSa8ddC5FItAWVM+ze8si85SpViMLGpNQIDGAv5vGOktXc
         g4QA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f4jCW1Q8;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2e as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com. [2607:f8b0:4864:20::b2e])
        by gmr-mx.google.com with ESMTPS id m17si946861otk.1.2021.08.02.14.06.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 14:06:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2e as permitted sender) client-ip=2607:f8b0:4864:20::b2e;
Received: by mail-yb1-xb2e.google.com with SMTP id w17so30567588ybl.11
        for <clang-built-linux@googlegroups.com>; Mon, 02 Aug 2021 14:06:24 -0700 (PDT)
X-Received: by 2002:a05:6902:1549:: with SMTP id r9mr24716376ybu.308.1627938384181;
 Mon, 02 Aug 2021 14:06:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210802183910.1802120-1-ndesaulniers@google.com> <20210802183910.1802120-2-ndesaulniers@google.com>
In-Reply-To: <20210802183910.1802120-2-ndesaulniers@google.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Mon, 2 Aug 2021 14:06:13 -0700
Message-ID: <CAFP8O3Jc=iwzAQojgBZZzdT8iVBY9TO6GLTq+0vkXoo6L5JJ-A@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] Makefile: move initial clang flag handling into scripts/Makefile.clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=f4jCW1Q8;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2e
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Mon, Aug 2, 2021 at 11:39 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> With some of the changes we'd like to make to CROSS_COMPILE, the initial
> block of clang flag handling which controls things like the target triple,
> whether or not to use the integrated assembler and how to find GAS,
> and erroring on unknown warnings is becoming unwieldy. Move it into its
> own file under scripts/.
>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  MAINTAINERS            |  1 +
>  Makefile               | 15 +--------------
>  scripts/Makefile.clang | 14 ++++++++++++++
>  3 files changed, 16 insertions(+), 14 deletions(-)
>  create mode 100644 scripts/Makefile.clang
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 19135a9d778e..3af8d39f43ef 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4501,6 +4501,7 @@ B:        https://github.com/ClangBuiltLinux/linux/issues
>  C:     irc://chat.freenode.net/clangbuiltlinux
>  F:     Documentation/kbuild/llvm.rst
>  F:     include/linux/compiler-clang.h
> +F:     scripts/Makefile.clang
>  F:     scripts/clang-tools/
>  K:     \b(?i:clang|llvm)\b
>
> diff --git a/Makefile b/Makefile
> index 6b555f64df06..444558e62cbc 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -586,20 +586,7 @@ endif
>  CC_VERSION_TEXT = $(subst $(pound),,$(shell $(CC) --version 2>/dev/null | head -n 1))
>
>  ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
> -ifneq ($(CROSS_COMPILE),)
> -CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
> -endif
> -ifeq ($(LLVM_IAS),1)
> -CLANG_FLAGS    += -integrated-as
> -else
> -CLANG_FLAGS    += -no-integrated-as
> -GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> -CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> -endif
> -CLANG_FLAGS    += -Werror=unknown-warning-option
> -KBUILD_CFLAGS  += $(CLANG_FLAGS)
> -KBUILD_AFLAGS  += $(CLANG_FLAGS)
> -export CLANG_FLAGS
> +include $(srctree)/scripts/Makefile.clang
>  endif
>
>  # Include this also for config targets because some architectures need
> diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
> new file mode 100644
> index 000000000000..297932e973d4
> --- /dev/null
> +++ b/scripts/Makefile.clang
> @@ -0,0 +1,14 @@
> +ifneq ($(CROSS_COMPILE),)
> +CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
> +endif
> +ifeq ($(LLVM_IAS),1)
> +CLANG_FLAGS    += -integrated-as

-i* options are for includes. -fintegrated-as is the canonical spelling.
Since -fintegrated-as is the default (for most llvm/lib/Target/
targets and the ones clang builds actually support),
it can even be deleted.

> +else
> +CLANG_FLAGS    += -no-integrated-as
> +GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> +CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> +endif
> +CLANG_FLAGS    += -Werror=unknown-warning-option
> +KBUILD_CFLAGS  += $(CLANG_FLAGS)
> +KBUILD_AFLAGS  += $(CLANG_FLAGS)
> +export CLANG_FLAGS
> --
> 2.32.0.554.ge1b32706d8-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3Jc%3DiwzAQojgBZZzdT8iVBY9TO6GLTq%2B0vkXoo6L5JJ-A%40mail.gmail.com.
