Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBCMU5PVAKGQEGHHX7QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F8694980
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 18:10:50 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id w16sf2761769pfn.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 09:10:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566231049; cv=pass;
        d=google.com; s=arc-20160816;
        b=B1/ppV7WObrFdYvkzbGFle9wjnekKowvgWluAR+BHl/ofwrQQ9F0CPrXs0qm91AsdR
         f04OA5AuPEmcIe5JdEMGGjd/CwmEWaiCD4tknZE+BE4r+LRQwiumU840sgMQkY3xL39J
         NDdzsKFD1XBkWPiaLnZK5MQSwQbRXXbglePC6PBA9jLQFSGERCFjzK4j86dJws5C65SK
         oO1nMz8lVn/3+1H/6RnNVYJnKZbBcrlP9EF0FQ8GMxUUOvH5NavRGo0swyqL9/XDewwP
         ihkIUJSh3rYQYntfUmWUyy3m/+cmHd2akbtBH2s/xl1WjVLwFASH6a0xVNNHVa8Po2FM
         I5oQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=72zTLV3WayOSa1NgrY/LYpk4GgJwPvinUEGV4C1LTX4=;
        b=KVI1YMO/ab8y6ToUhp/36KHFdxgeh4CZOHO3vS67t0SDtGwRDddjQbBkmapHJeNylT
         EF1PKDExbbXxDXtvji900652Qng1g3KqRymRBrlQjccROuabVGc03Z9wCrEZFT9I+M8H
         Vm692HKMFZ8ZNAkj5btL7GIHruEFPx9w/1omHp7lXtQ/ZGYYocSgjz6t/ZMyHBWRf4L0
         dgx/VhVo6bgjMKZClmJ8dEAW5qUrbneqszSXXMywJIZZAcRBpbYDGxNwoBFq3W1eLPES
         n/cvrj3axQwaHsUkbGCzebkqnAbd6ilojz/n+R0mCr4uHKnMiR7ExCOosWaXVorTRGum
         8H0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JquxouCN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=72zTLV3WayOSa1NgrY/LYpk4GgJwPvinUEGV4C1LTX4=;
        b=mH2h4ZNNytBAmZI0mXghwjl7AkaTb82x0AL0xUPlLAp9bKVgSxdSVtWLCE0j2lkt6j
         QKgT0vKevl5cyx47Vs5L0e0rl4kbaNrj3/yslA/Ws4TR7tw34xM3R1KOk8G6OPh/hYBn
         Nogl9QEctmHbYgdzTlgc9xliZn7LReXMRMnyWh2fgGE2by0Mgg9Ir0iIhI9bgeeBr4es
         ioUy+UpaZ32PAI4QsinunIM7wb1c5JWsqopR/tdHiHu/8EWKAHvHFJ7e8+T7LXEL8/7h
         IE3rvAAXse4cYLEx14YM8Wto/C3LN5HWrliV0lw2h7UpjLlamKxh57tGGkuwvwl9ydIH
         R0fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=72zTLV3WayOSa1NgrY/LYpk4GgJwPvinUEGV4C1LTX4=;
        b=b2otdfWkimGtVY9h2d/hMhVQ84RFy+N6X1Btt1mfKopZesapSfTr5I5Anv9OR0GXq/
         Dm9RVkTAwHmNws2NXyVrwH2PZ5b1Ti7S7O/0StAmaiOEjnnkyxXBlCiqk3OVsK3pTz/Y
         Vk+mAwumdxxerOrjewO/RZwpiA2q4b3umefi8Gz2Eq9QMA6LHRSFOINd6dmYPdF3WmJ8
         3WPLa0HbInoUo9Jr1bItJCGHx2SaSNYsJX8nC4is98Sg2PwIgmfod/2XUEAqbFil9LZn
         YZhdHY+sGtZV392KsFLFpZbPEDNgaThrkZ/p+R5+7GnJwkdbdKvhTm5n2oM00n+GL4hX
         Gbkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWa8lMp+MXagYTNQgOafHZ4o9G/uJAmJS6Gs83V7NN6Wug6wIhG
	WO2y7OG1X5T/1cNVH/n46zM=
X-Google-Smtp-Source: APXvYqyzSwcSo/GlJTkHu0xrtS/hnJp0q85q7NeZ1WJ8MBYZRMe7k7nfXlz4ZAJf/ItAIOUPwGq4jg==
X-Received: by 2002:a17:902:eb:: with SMTP id a98mr22014378pla.75.1566231049189;
        Mon, 19 Aug 2019 09:10:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:68c8:: with SMTP id k8ls3637394pgt.8.gmail; Mon, 19 Aug
 2019 09:10:48 -0700 (PDT)
X-Received: by 2002:a63:2bd2:: with SMTP id r201mr20318145pgr.193.1566231048780;
        Mon, 19 Aug 2019 09:10:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566231048; cv=none;
        d=google.com; s=arc-20160816;
        b=LwEEc1t5VzV3zoEOzPRXXK8csOXLGIh2dbUUwMb4UySMx1P3YcFsjA8489EW2rE1Gu
         4zpbdmG3Q2s/HFx6CuOISbcHtCIs5x7xvhcTRoPCOa6UpUXGyN5xvo9cH29k18jzYh3F
         iEyEKOBiY3nHrDpWVHhbZrNHhQ3Tx9JG+oKODHNX9M1TQsbq72fUUFdQP8TG88wgkLlF
         4XWkA9KRNYY3HoqMQVvNM5uvfu4COAOVc/ZGNC0FkgyepDePShv1TVfTktxzod3pTgyA
         dJ2nXqodrkHCwoJPRtr4yhHo01uOX71NNhObbdJAecb44X54RXhwFr9xOzSxfsP/JZRA
         Ew4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=E6039ciGvAkJtk2bP5W5DDCHWOJVGQXphFuaFI9KXQY=;
        b=p/6PkE3uk9sfsSMDxq2O8rmkYqhNlLn5DEvdEPfQWIldG8LZHp5FNrHV9W5NCIluQj
         TLAO3SVAPMkgIrx881oH/qPG3iKgBh/QrgRD1iZmb4GhEhAxcvztXEuQsXN1zZb2vFC7
         iGXN3PLpfuXWRxtZPehrej1JIIW49jXDarRCpdtrwBAbbbUUNZ28zqTTWE4s5bzCZqx7
         p0DgK6+CmbwHbTYLSH+8+yNqEpE3lHsvhmrV0PjcGgm/5qpgkVK3JV0YqhUJQHrpvqGH
         R/BDuDkNFSFTzgLIKfd9rBc99+I+qXiXzhBHyAL24PbDERYhQru9JhBlo10ypOiRcbAQ
         MrmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JquxouCN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id t14si594696pfc.1.2019.08.19.09.10.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2019 09:10:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id i18so1467559pgl.11
        for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 09:10:48 -0700 (PDT)
X-Received: by 2002:a17:90a:5884:: with SMTP id j4mr22410147pji.142.1566231048482;
        Mon, 19 Aug 2019 09:10:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i14sm18896938pfq.77.2019.08.19.09.10.47
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 19 Aug 2019 09:10:47 -0700 (PDT)
Date: Mon, 19 Aug 2019 09:10:45 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Borislav Petkov <bp@suse.de>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Paul Burton <paul.burton@mips.com>,
	Xiaozhou Liu <liuxiaozhou@bytedance.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] kbuild: enable unused-function warnings for W= build
 with Clang
Message-ID: <201908190910.2E6A18A647@keescook>
References: <20190819105138.5053-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190819105138.5053-1-yamada.masahiro@socionext.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=JquxouCN;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
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

On Mon, Aug 19, 2019 at 07:51:38PM +0900, Masahiro Yamada wrote:
> GCC and Clang have different policy for -Wunused-function; GCC does
> not report unused-function warnings at all for the functions marked
> as 'static inline'. Clang does report unused-function warnings if they
> are defined in source files instead of headers.
> 
> We could use Clang for detecting unused functions, but it has been
> suppressed since commit abb2ea7dfd82 ("compiler, clang: suppress
> warning for unused static inline functions").
> 
> So, we never notice left-over code if functions in .c files are
> marked as inline.
> 
> Let's remove __maybe_unused from the inline macro. As always, it is
> not a good idea to sprinkle warnings for the normal build. So, these
> warnings will be shown for the W= build.
> 
> If you contribute to code clean-up, please run "make CC=clang W=1"
> and check -Wunused-function warnings. You will find lots of unused
> functions.
> 
> Some of them are false-positives because the call-sites are disabled
> by #ifdef. I do not like to abuse the inline keyword for suppressing
> unused-function warnings because it might affect the compiler's
> optimization. When I need to fix unused-functions warnings, I prefer
> adding #ifdef or __maybe_unused to function definitions.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
> 
>  include/linux/compiler_types.h | 10 ++--------
>  scripts/Makefile.extrawarn     |  1 +
>  2 files changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index 599c27b56c29..14de8d0162fb 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -130,10 +130,6 @@ struct ftrace_likely_data {
>  
>  /*
>   * Force always-inline if the user requests it so via the .config.
> - * GCC does not warn about unused static inline functions for
> - * -Wunused-function.  This turns out to avoid the need for complex #ifdef
> - * directives.  Suppress the warning in clang as well by using "unused"
> - * function attribute, which is redundant but not harmful for gcc.
>   * Prefer gnu_inline, so that extern inline functions do not emit an
>   * externally visible function. This makes extern inline behave as per gnu89
>   * semantics rather than c99. This prevents multiple symbol definition errors
> @@ -143,11 +139,9 @@ struct ftrace_likely_data {
>   * (which would break users of __always_inline).
>   */
>  #if !defined(CONFIG_OPTIMIZE_INLINING)
> -#define inline inline __attribute__((__always_inline__)) __gnu_inline \
> -	__maybe_unused notrace
> +#define inline inline __attribute__((__always_inline__)) __gnu_inline notrace
>  #else
> -#define inline inline                                    __gnu_inline \
> -	__maybe_unused notrace
> +#define inline inline                                    __gnu_inline notrace
>  #endif
>  
>  #define __inline__ inline
> diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> index a74ce2e3c33e..92f542797e03 100644
> --- a/scripts/Makefile.extrawarn
> +++ b/scripts/Makefile.extrawarn
> @@ -70,5 +70,6 @@ KBUILD_CFLAGS += -Wno-initializer-overrides
>  KBUILD_CFLAGS += -Wno-format
>  KBUILD_CFLAGS += -Wno-sign-compare
>  KBUILD_CFLAGS += -Wno-format-zero-length
> +KBUILD_CFLAGS += -Wno-unused-function
>  endif
>  endif
> -- 
> 2.17.1
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908190910.2E6A18A647%40keescook.
