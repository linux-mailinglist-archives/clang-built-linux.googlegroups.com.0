Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCOWV2BAMGQEILZMD5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA5D339598
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 18:55:22 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id b14sf10088045ljf.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 09:55:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615571722; cv=pass;
        d=google.com; s=arc-20160816;
        b=q7OnQSyf6xxHS3E6PK4XucBLHskjW+mfXiQAL4EY0Z14Trmk2BWqeoFME19q61EU67
         Bz+bF6LbyS8V/2dkAk9FrbWOCXoQnneE/itAr+wKr4itTIVTliCiFJz55/lamutZwVvG
         reegRYa7D4eOw/0wuazZtAXiMwW50bqusq8on4+QDYrGOkIncnQeASpNRtZsoLk17Oze
         pCaG3T5s9EACwkzgikLySJiwc2/zNoZpuLSKaKVXqHD7JyQu7gGK2zFvH/0wCXWn3/3w
         jB8k0+nt52FDpMWj344AkRcDDDw6jiaXNdvoHa3hzp/nFWh5clkXv6b3WHP/uqfkT8Zx
         3y6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KXNyMxrtO7T7MxMa3hxc4KidRBeeXpkEVNFg8q2RojU=;
        b=IV1aMytliP6W5/W7Dl2qZwAK2DZQqt1kd7QmHCKjwZbyrWlu2Qkgys1orJfDa0XmUb
         8XJ5gsulmWaIfMO3wovmtwfJEwq9eMXgiVTO2/I1hvSnAoFUEj3DLoIglxJJ3I3AjyQI
         zFBIv/QJZ2OiHFcX0+hDqhxkzdL2sdSrrTAPjG3gYZ5oYdWHepPn9b9JOieDk/4EPeCY
         ePm0XRuyy0DbQMquhRQwOksZVpoignGD9gAseBmVkGGuShHK7LBGOGlv2X1L/J6uNvQJ
         83Lox9MrpCgZ/NwQQEb8MNEx1S/QD1sxj8Qw52ehJSU4AVCnAo5QJFKEvUtXjnMIXwX+
         AgaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QJkTONM+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KXNyMxrtO7T7MxMa3hxc4KidRBeeXpkEVNFg8q2RojU=;
        b=MZUPvyDVheF8E3p6RXyeu/LDxPovuh71xzzL0yXJtJY6nNZ4Lyr2s7aVBhCFAoWbbD
         sxR95q4onqBa0M4zWETOHJMNMH2YQ4IpTNHdnGR8ZDVyIfT48Z6bnlvCzlJkEpg5Azlq
         iKf5k+3G2T2Qj8Fa/x4d8Nrgg/OH97dnXlhXeEMWXyV+rGmyUTvpijWmmqgrHLMRazbW
         tGEPlWaDFraaJFOhUl9FXqSevmkSGwJmt5TZegeIbzG/6xSyq14gPHcRudZ4yRty26aW
         IobETJAxlXU83FkP9PiIQq51shU2KJ8wwcuCbqv7j0/5+EZd8BvHFikdU7tlp8auWvOe
         JXVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KXNyMxrtO7T7MxMa3hxc4KidRBeeXpkEVNFg8q2RojU=;
        b=H3kr1hs7Hnv7TCjpzqLz48cpMYXVs7zE5XYyu/ZqDGgIGsvperWtr1kXVNHEKjlv8a
         7GQNTCxlIDJ/HT9d3i9yKuXrj0Aw4O2okJP+4D/Bsx12sK5BphcYp+D1Xzi8Ut2COrGm
         2okWT5UCBtWB7Lmsdn3PFpPZtplXWhrTfAD3TEjoLn3k/1juQWQ7uTeJw8BNa5RseIzo
         +YDvAebJSlvmsG6fOo6GA+k4XMGntNxh2iZ027kT/r972aPpZ+vhnV5gZVI/1RWyYTcG
         wH9+1ReUZjgOEnGgBePle5/ej+wW9448mOL53GzKs8UpsTm/kVsO0zzsEoOJWuRtPMQA
         5dCw==
X-Gm-Message-State: AOAM531Bb0bzIT6c/6cbWeAH7bLylq4Q4/G9cHG8PbByjnrdviEGIC/g
	dJU8ZzIyt1ZpNAM84IO+yzA=
X-Google-Smtp-Source: ABdhPJwUPI18fzvdnGWlnqZiBkWYSfiuubdWRFWlfUAb+UDEcu45sYvAyZrj84DYhCCwgUdg//MFSQ==
X-Received: by 2002:a19:48ca:: with SMTP id v193mr227071lfa.323.1615571722093;
        Fri, 12 Mar 2021 09:55:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls4027473lfo.0.gmail; Fri, 12 Mar
 2021 09:55:21 -0800 (PST)
X-Received: by 2002:ac2:491d:: with SMTP id n29mr219464lfi.541.1615571721087;
        Fri, 12 Mar 2021 09:55:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615571721; cv=none;
        d=google.com; s=arc-20160816;
        b=Z/bPJBawhG1PYkJeSyQ2m+WKEo1cTBb8/mTIvb8DWX0kN+nUH7zH554XxSHzjM/8r5
         vtLzdXf3TMMsbb5/5XN4zSJPX5sRfMTY8QczVpgwFp6hWQDk8LipbcULz5FcbmbAulUn
         HH+QgreuhwMMHHyTy0irGofCcyYXbdlzelJnTK9UGMg6JZ0xWBMEId7494fxYSJkvpsg
         ishqLeN8g6hoRKBCsdxThkb+jMrdKqm+e4rC4mw/FHVsIglAplgJQZeiDdPprAWImXzg
         eO6gDHNYp75r0+SimKyB0u23iARIX6gzNWcqGwrF4HTlpUFU0+iHPjKoHnPcgJ104v+I
         lTYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5w7ZZe4gkot9I65XhFVTJi33unNIut/Zvam2Whsvv4M=;
        b=kDApdTLslPLg/384eZR3PsyyqhauK8JyrYRDkHWRAA4ZOqjatq5zSTbRU1fEXo16m+
         g/xVWBRZnaiEUc/EzUIWcNpq2yoavI7OhWkcavVP7Mt9+URrZQP9vI/H0bZT/Jqc9gj+
         W8NqXmCHFgUgOBXjroTe8dDiKpan4McuzCZhuMSggqsyzYJu1HQ1PpOIvlnJrzPwUTr2
         gd72gx2o4SMzQZkaAdb56rx4eak1QPrX5LrLzFlhhYK1aYF5cJiDNOsBF7/ng2UD0p0y
         42a2qTGukRRodWg8H/jnW4oPCpQvLzjxwUAyTba2lKAitecl5kGp0T9vjjEDYicnxr0S
         ym0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QJkTONM+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id d19si246364ljo.1.2021.03.12.09.55.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 09:55:21 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id u4so47145911lfs.0
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 09:55:21 -0800 (PST)
X-Received: by 2002:a05:6512:12c1:: with SMTP id p1mr256755lfg.374.1615571720669;
 Fri, 12 Mar 2021 09:55:20 -0800 (PST)
MIME-Version: 1.0
References: <20210312010942.1546679-1-ndesaulniers@google.com>
In-Reply-To: <20210312010942.1546679-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 12 Mar 2021 09:55:09 -0800
Message-ID: <CAKwvOdnPhpKRs6SePCUCPs_2MUFbWgJiaf9F9J+aQZGESSQ9yA@mail.gmail.com>
Subject: Re: [PATCH] Makefile: LTO: have linker check -Wframe-larger-than
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Candle Sun <candlesea@gmail.com>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <nathan@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QJkTONM+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f
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

On Thu, Mar 11, 2021 at 5:09 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> -Wframe-larger-than= requires stack frame information, which the
> frontend cannot provide. This diagnostic is emitted late during
> compilation once stack frame size is available.
>
> When building with LTO, the frontend simply lowers C to LLVM IR and does
> not have stack frame information, so it cannot emit this diagnostic.
> When the linker drives LTO, it restarts optimizations and lowers LLVM IR
> to object code. At that point, it has stack frame information but
> doesn't know to check for a specific max stack frame size.
>
> I consider this a bug in LLVM that we need to fix. There are some
> details we're working out related to LTO such as which value to use when
> there are multiple different values specified per TU, or how to
> propagate these to compiler synthesized routines properly, if at all.
>
> Until it's fixed, ensure we don't miss these. At that point we can wrap
> this in a compiler version guard or revert this based on the minimum
> support version of Clang.
>
> The error message is not generated during link:
>   LTO     vmlinux.o
> ld.lld: warning: stack size limit exceeded (8224) in foobarbaz
>
> Cc: Sami Tolvanen <samitolvanen@google.com>
> Reported-by: Candle Sun <candlesea@gmail.com>
> Suggested-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> LTO users might want to `make clean` or `rm -rf .thinlto-cache` to test
> this.
>
>  Makefile | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/Makefile b/Makefile
> index f9b54da2fca0..74566b1417b8 100644
> --- a/Makefile
> +++ b/Makefile

Candle sent me a private message that we probably also want coverage
for kernel modules. Let me revise this and test/send a v2.

> @@ -910,6 +910,11 @@ CC_FLAGS_LTO       += -fvisibility=hidden
>
>  # Limit inlining across translation units to reduce binary size
>  KBUILD_LDFLAGS += -mllvm -import-instr-limit=5
> +
> +# Check for frame size exceeding threshold during prolog/epilog insertion.
> +ifneq ($(CONFIG_FRAME_WARN),0)
> +KBUILD_LDFLAGS += -plugin-opt=-warn-stack-size=$(CONFIG_FRAME_WARN)
> +endif
>  endif
>
>  ifdef CONFIG_LTO
> --
> 2.31.0.rc2.261.g7f71774620-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnPhpKRs6SePCUCPs_2MUFbWgJiaf9F9J%2BaQZGESSQ9yA%40mail.gmail.com.
