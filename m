Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4WSXSDQMGQEL6QIUVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2B03C8A8F
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 20:14:11 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id z1-20020a195e410000b0290229c07c3305sf884618lfi.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 11:14:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626286450; cv=pass;
        d=google.com; s=arc-20160816;
        b=R8XJ9RtxbwhBP14hCZOrBHR3+SGV9+AcSUa3Gkg5JfROdVbF7zrdnNzGMivt39xZbl
         eBi1d/Rp+AIiP0NVc+wd1+pUercz6AouOiFCKZGN4wZo5JjOHbQCKGOBRx+13ux6GzEW
         eucufADKUNN1uJZFbI7NkElajSNS+PaLAyGu+e6Gjm6mW7xNl0c3UcO/y1L4qeLwq2K5
         JryEcwhhRVT8RMXxLCyb+e0kQ3o0C2YaO79POMPtqmmcxVLi2H+eRec1f8YM+5Z9bYdm
         Si01CULDC4UfQHWTlyDqIus2zWtBWgV/DjSaWbvQCEYkiwLHnTA4zkowOjnMHxowHmXP
         U9GA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ikZnzQpJ5dcwNigW0/dbclwDjCOs35iR3VycCBxhTb0=;
        b=F+ETEUFCIzcfv2idKyFo0aEQtmh0ABoAkfr1ZenQsEqP3xtF5cvpPLFFDdq75PqRcr
         tfgrVWqyBwVPdWBc8YbgWBbMbX/owWAVAsj7q0AvEJxjkCqBuLD27MEX+fB9wdA6cAj/
         NcLlZ05bDwDR63Ei1xI+j/itsY6t/szzPqPT/u219v5FJUpkff7fPqARSr7dHiHuBIVq
         q8aRsZt+HJ5l/3qc63TJ+GiV2IG/qywxLak1M2hTIBPYb1/z53a+NEyR5Kvy/dnaCO+b
         STo1tRAhBDZw1JK5HimVrZEZBB/1VukWloJO7mvAKImdoVbwtVzhfRac/pPXZ2aX/0sZ
         Ze3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GP0Dd2He;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ikZnzQpJ5dcwNigW0/dbclwDjCOs35iR3VycCBxhTb0=;
        b=h+lOCkqTEd++flKOIcqs190AsO2xPnCrmJv3ZV3JgIRly8U5YztS587+1EQppr1X01
         2BVyam0R84z/0YEjXWpzHTY8nysaaR4jMlMuJu/00fXsYA+oaYvwiiC1QaUQTS/F7hkc
         xSH5FnMM7sfoY5UKctYK0DWfLO8PzTJKF+FHiXp7M8ovkyTzYITmIMxAHv6tkMa3ufxw
         yzQ7XOUEhUsZCWll7BHKk6Baa09hhACE8gHLHaMEII7cD6m+HE1g/fJbapbU9imPEkRZ
         4sc4mJ6JZvF6YaE+ZSCMqC3VhigWh5AQBaQZvq7GOOepNtKYGcaZ14jXeg5rYBpNM7Ht
         AI7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ikZnzQpJ5dcwNigW0/dbclwDjCOs35iR3VycCBxhTb0=;
        b=kLu3+GQCf3tK4m4tSFR9nBElqrUQoofU/ZKTbq6CQykXaxTq+y7EhsS1B6Ykb/O5po
         KSa+2PT6GwySnRx2i21OUfz/T/vtYPSQamQDebyjjZZlSxILb5277EUlNyvrlmkArX3i
         /+bQcMXXlJKIQBhQKw6/0xFFCXiXHUHjw0iFPT0+nRLgkTHI+UJMaVVVLkFjZe3UpuJQ
         UW7RzqPymQMV9er/qVGXj3arglZeLQR8wzYmRrS+sFHuy56OE7Z9hjSrIN7r3ivKs+iw
         TMBpKihFmF4rHEgl3YsbMAkzEKWkYgcyhm6s+PJaDjRGvNBJxtWoWsyd+FybvX/gGvrV
         t63Q==
X-Gm-Message-State: AOAM532zK/9OSKQlRvIr+2RjJv5lcDT4tj1af3KceRhhP86DapRM9HO7
	nXSm8irKao1aHlDhL+k21Gg=
X-Google-Smtp-Source: ABdhPJwnMT8NKsHiaCak/sCWZ06ccMKoHIn1g//eBt1w72nQiJzludX/V6QGp85lZ+kx19hP7LElYg==
X-Received: by 2002:a05:6512:3618:: with SMTP id f24mr8858172lfs.517.1626286450723;
        Wed, 14 Jul 2021 11:14:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7d17:: with SMTP id y23ls866174ljc.10.gmail; Wed, 14 Jul
 2021 11:14:09 -0700 (PDT)
X-Received: by 2002:a05:651c:488:: with SMTP id s8mr608477ljc.328.1626286449672;
        Wed, 14 Jul 2021 11:14:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626286449; cv=none;
        d=google.com; s=arc-20160816;
        b=OUbnfcviH5ivB3yOTCTXDNoqK72+6g8IZ/uOzbvPpP2SkM6NfpPLiHrAq+W+ZsdksQ
         8Zsf6yLLwlDBfzrLLoMJzS15W20C7SdwUFybwQGjnQvSh4/43SvtcfRZAyw5o4Au+dTs
         xiPN2EdtZKGssb7DeES6leIPDVIB6NmKUoEfszKVIY0xX1U1mgt9+wyk93wtw3aahV0J
         S71q3xrfa/ApbPyjRC0S1BaQSoz7Sq0do5i6aR6GFlW0CEis7fNoldWB3U5eK7rrVoLk
         TmX5gyEKQ7xXGawGU5mqWZiH98m+kiEhloBwqIx544p7T7L489HKovYnTgnk3RQh+g3U
         MClA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O8TPU0hqO2c6lrmOpVCEHEZ3QntgeMzfXOeutKZUuGQ=;
        b=eQnK163dcNGvZuRQWaoqcSYZUCusoxQIFWjOsshlU6lavTe6IbGAyiwLKwGXfbI731
         xDlCZYmZ7Gmkgp1gC9wDYIcJGcb/JjIh7ME3s3euu0LVlF0G/0DPIXBk1ATE2F8VFh4H
         BXfUNBrEOj8RkHQC2N0wQ4m+/aiQxIiilQv+NiBQrBg3LIJdEJU6IlAe4vbvTUPll9F7
         uGcQYPbBkF7bEP7JNCPdHY6fWO649KwyJ4sByzF1tE3zbPnM90ZoU8jlbXum+/OosnTn
         fXiNayyiG18S4HarqVYv38uBINd/x7GUCUubySASArOH37GRYh325uVDTbR+qgyen8jm
         Q5pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GP0Dd2He;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id e14si58773ljn.2.2021.07.14.11.14.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jul 2021 11:14:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id x25so5106111lfu.13
        for <clang-built-linux@googlegroups.com>; Wed, 14 Jul 2021 11:14:09 -0700 (PDT)
X-Received: by 2002:a05:6512:3e0c:: with SMTP id i12mr8768338lfv.122.1626286449128;
 Wed, 14 Jul 2021 11:14:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210704202756.29107-1-ojeda@kernel.org> <20210704202756.29107-4-ojeda@kernel.org>
In-Reply-To: <20210704202756.29107-4-ojeda@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 14 Jul 2021 11:13:57 -0700
Message-ID: <CAKwvOdnO1ZbM_FzY3qwokEkWDxsr37t_u57H_wEO6Pbu6CqFZw@mail.gmail.com>
Subject: Re: [PATCH 03/17] Makefile: generate `CLANG_FLAGS` even in GCC builds
To: ojeda@kernel.org
Cc: Linus Torvalds <torvalds@linux-foundation.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, rust-for-linux@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Alex Gaynor <alex.gaynor@gmail.com>, 
	Geoffrey Thomas <geofft@ldpreload.com>, Finn Behrens <me@kloenk.de>, 
	Adam Bratschi-Kaye <ark.email@gmail.com>, Wedson Almeida Filho <wedsonaf@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GP0Dd2He;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
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

On Sun, Jul 4, 2021 at 1:28 PM <ojeda@kernel.org> wrote:
>
> From: Miguel Ojeda <ojeda@kernel.org>
>
> To support Rust under GCC-built kernels, we need to save the flags that
> would have been passed if the kernel was being compiled with Clang.
>
> The reason is that `bindgen` -- the tool we use to generate Rust
> bindings to the C side of the kernel -- relies on `libclang` to
> parse C. Ideally:
>
>   - `bindgen` would support a GCC backend (requested at [1]),
>
>   - or the Clang driver would be perfectly compatible with GCC,
>     including plugins. Unlikely, of course, but perhaps a big
>     subset of configs may be possible to guarantee to be kept
>     compatible nevertheless.
>
> This is also the reason why GCC builds are very experimental and some
> configurations may not work (e.g. `GCC_PLUGIN_RANDSTRUCT`). However,
> we keep GCC builds working (for some example configs) in the CI
> to avoid diverging/regressing further, so that we are better prepared
> for the future when a solution might become available.
>
> [1] https://github.com/rust-lang/rust-bindgen/issues/1949
>
> Link: https://github.com/Rust-for-Linux/linux/issues/167
> Co-developed-by: Alex Gaynor <alex.gaynor@gmail.com>
> Signed-off-by: Alex Gaynor <alex.gaynor@gmail.com>
> Co-developed-by: Geoffrey Thomas <geofft@ldpreload.com>
> Signed-off-by: Geoffrey Thomas <geofft@ldpreload.com>
> Co-developed-by: Finn Behrens <me@kloenk.de>
> Signed-off-by: Finn Behrens <me@kloenk.de>
> Co-developed-by: Adam Bratschi-Kaye <ark.email@gmail.com>
> Signed-off-by: Adam Bratschi-Kaye <ark.email@gmail.com>
> Co-developed-by: Wedson Almeida Filho <wedsonaf@google.com>
> Signed-off-by: Wedson Almeida Filho <wedsonaf@google.com>
> Signed-off-by: Miguel Ojeda <ojeda@kernel.org>

Patch LGTM; please keep an eye on the series:
https://lore.kernel.org/lkml/20210707224310.1403944-2-ndesaulniers@google.com/

If that lands in kbuild before this, this patch will need to be
rebased to avoid a conflict in linux-next.

So (tentatively :-P):
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

If the patch needs to be rebased on the series linked above, please
drop my reviewed by tag and I will re-review. Perhaps putting me
explicitly on Cc: in the commit message will help notify me if there
are successive versions?

> ---
>  Makefile | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 0565caea036..6e823d8bd64 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -573,18 +573,23 @@ endif
>  # and from include/config/auto.conf.cmd to detect the compiler upgrade.
>  CC_VERSION_TEXT = $(subst $(pound),,$(shell $(CC) --version 2>/dev/null | head -n 1))
>
> -ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
> +TENTATIVE_CLANG_FLAGS := -Werror=unknown-warning-option
> +
>  ifneq ($(CROSS_COMPILE),)
> -CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
> +TENTATIVE_CLANG_FLAGS  += --target=$(notdir $(CROSS_COMPILE:%-=%))
>  endif
>  ifeq ($(LLVM_IAS),1)
> -CLANG_FLAGS    += -integrated-as
> +TENTATIVE_CLANG_FLAGS  += -integrated-as
>  else
> -CLANG_FLAGS    += -no-integrated-as
> +TENTATIVE_CLANG_FLAGS  += -no-integrated-as
>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> -CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> +TENTATIVE_CLANG_FLAGS  += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
>  endif
> -CLANG_FLAGS    += -Werror=unknown-warning-option
> +
> +export TENTATIVE_CLANG_FLAGS
> +
> +ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
> +CLANG_FLAGS    += $(TENTATIVE_CLANG_FLAGS)
>  KBUILD_CFLAGS  += $(CLANG_FLAGS)
>  KBUILD_AFLAGS  += $(CLANG_FLAGS)
>  export CLANG_FLAGS
> --
> 2.32.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnO1ZbM_FzY3qwokEkWDxsr37t_u57H_wEO6Pbu6CqFZw%40mail.gmail.com.
