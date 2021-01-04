Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQ5PZ37QKGQEKATJDNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A032EA00C
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Jan 2021 23:33:40 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id x4sf14551696uav.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 14:33:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609799619; cv=pass;
        d=google.com; s=arc-20160816;
        b=rP1g2SPj2iiCqd5C6ZQs3yhFQiwD4Yx25PzOEj1kg8B0hOvFvMYz6XL7rTC0lRl4O1
         LEe1j742d8KvpmGhSnev057omLSDJ3CHf/aSm9iSuH+YymPnhGtwKzdV7vf6zozQ4PLI
         X3yqJSUgPZCnDre5Px50LSeYxffAOB3DsqxyrSqU9eznL5Q+cpuuncv+scOC00wbPEgF
         i6ab60DQEq/xu8HLZD4nlervccx6AiZ0GHXKBve1LPYk7DSrdgB8ADZeORaVAT3KRpFM
         B5FtWoa6JS4WC2pUU3GEBx3FpA17kycmFbYFCFNvK1VgpS4S3vaGrQLDHOw8PY+rEQPb
         v14A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=ano+0TbuaZCOI2w9DoH4pZaCcjOT7pb5jfo1lYkp060=;
        b=PX6xYL0j0T2vrGa+/r9KEIIsMwmxyJdY1q45Me2cLN8bIuYDU9seQpp8yRO9+5H+aQ
         PB96B0GBBTth7EZMs5L/1BCsrKxB6f4LtxkEPFLpBFYRTvxxML4b/oHzesPBYomEBTQU
         +ai+EMozI/qv2Z8GW2K5Fi5d3WT3MNoC+vtAl26FqzCJ0bUVHyMs1OtVPsvkuPzIkuSn
         s5tNSPE3QXmfObnrWWV06N+j6cgKtG4AG3DsdZ/3lt2aZFaj6KETuqQrcShEUX6yr415
         +A54xMJy2/UR3Fjed7MD5gh2yoDtg3tKXDDS8z8r4smLRF5tu7vuzfnyq/B6UZdAIlV4
         PaGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P6kivpFJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ano+0TbuaZCOI2w9DoH4pZaCcjOT7pb5jfo1lYkp060=;
        b=Hh2wZTtG687f+OhjyrTDJloPhBDrnzztXUcSGHFwDdfB481NqulA1Fthsf7IfVD81j
         /GqHetKmavFLnwir3g1KQFJrJlwDd5A6P2ROUKC3Ss0R7dfKeUe4s7XEfzsvf7J9JSCH
         KdThKF0dggiIXdSokaQoq/uHc6C/OwGPQkBNC6jRBcn3IkA7D4LYcN81OaMphiK+PF6J
         U3e+L1UYeOs8APC9Q9YKZlkyrhqExxgiaMXmzlToJMOK3jeJFoNZBwyCji9lWVJ6Hb8e
         OiFoDreK7o2xpYI3a081l0WOjalr4HbL2l3w9H/2neWrj4TZj+ZKgPEk4wU8rvC9BAVH
         g5jw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ano+0TbuaZCOI2w9DoH4pZaCcjOT7pb5jfo1lYkp060=;
        b=uBEaU8MQtTZ7PCbZRoAOJHUK4aa7emlx2S8EBYgsd347JgQK+MMNnWe3Day6U8elo4
         WxqwuCUmj3AGN7vDwr7hmaZ0qRPAvHWJFra4B8JmXCDJtOznc91M4EQkHk5yrlHoDIEB
         p4irVQtB8ASVJ+8OZFbyyCyTlpag95SlQfdPR77lEA7yutdS4nPdxuuleNR7+tKM5ktT
         3Kelbhkhw/d15tAKHKUkFuaKs9pkYaS8/apxichuipiCSY9y42M6mGyw3h6aT+vey7mG
         5Yk5FLm440AZ4L6RnBMdsYAgO8J1o2O373yE0TaFvmrUB3/YZaw/mClnmUlJ4WzWTc3f
         pUCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ano+0TbuaZCOI2w9DoH4pZaCcjOT7pb5jfo1lYkp060=;
        b=F0xBwmAkkD7HEiZiotU7NxTKqmyOvfpxtVafXxcunbat75LaWDIgNM8IXo4gE4fQie
         Ui2+oP3IaT9R/O/qX60Au7HhjJeHXFb0ty7G4xLa5C42Evnlh9ZGESk57uSRv2JAT/Kb
         E1uVCrupgjhBeJSb2czzc3igIu5csF0b4IB4VcdVnZo0MiHQv4QVwFITWaRqKeZeCRmU
         w97AZfo5hU7jPNPjFf0Bd1Y+RZ2sXKzIbISUFdtekw3CkZh/B2x7eXlbNcQQmkF3v1pA
         gkX/v3OCfmi4RVObAQxOveAOLMzAzynJMMHyDuYrZv0+jjIhSHR6IP4L7WUc3cQeg5rh
         grhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KRKHOkojdn4OhSSOEdBLlQYkgz81KQ1U/IJAN3TGMm6GeJDUn
	yIlijxCn2F7sGVHcom2Geyc=
X-Google-Smtp-Source: ABdhPJxz/xB0E9u/PT3UkM1nGWjv07UdzESqlpy2H2xcqImwNHRNcsH9CkG7AZq3TncEIL77wG33jw==
X-Received: by 2002:a67:f991:: with SMTP id b17mr43966445vsq.0.1609799619263;
        Mon, 04 Jan 2021 14:33:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4823:: with SMTP id b32ls4654349uad.2.gmail; Mon, 04 Jan
 2021 14:33:38 -0800 (PST)
X-Received: by 2002:ab0:3c8f:: with SMTP id a15mr23830391uax.127.1609799618905;
        Mon, 04 Jan 2021 14:33:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609799618; cv=none;
        d=google.com; s=arc-20160816;
        b=yq9MZABfqlIDaho0QEZ/YV3QHcmHaeK9OOKm55Q0PIribUA88j1GZeKWyHUm+Znzoz
         QKPLYLHmgi+EmI3MxoDxuhUMNY5h99ljH6zl3wLkhvVNsJ/71VBINCunnf/u2dDOpQto
         H2aihm8pMvTvZq6jGwxhZHxnN21RyJWwgmSpB5bWu6eDJIICZ8DF04xIf67dXwO4aWaS
         5VmtVAQfh/qZAb27wwEXLBioKKt0OzuvtQGviik+y8HleSgL7c33EPoUIaMocyE0lV4w
         bc362rVxM/aYmWZ7GAhTrPaNynHdmWf8sOn7PrNLs2yqXNEipHgEEVxaRFX0T/EnVUKC
         E+Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Uxg7zL2o2W1pUcEzcScyKfNn1LjA1ShXjqEgvTJLC0E=;
        b=xcz75JwO9f4+NjCzvye9EhaEs8nIoPLotaWmZFLg4EKeBz/jypiaV0t3BENvCjCRA+
         S663lTb0wbPGo8oqw1AzfzKjALqwcwx+ff/7/eQggY6qpFy9qWcQZfCcUY4fGJU1W3cd
         uj/DCdwdag+P9SasJbAX1e1qSeBKjqf6vzOWSP/JQeKIWou4TTp6WLLBbpwubDsGGhWL
         XdqUHE90p7tgNCYaQOSG4eNoAQAsTmilHaVTT2lrIUs+trSQPNwgH4bCtd/l+ATTtsTx
         d/a24V+3+6y16q3GkN3xQ1NiAVZmCBwMzUra8l4CsyBLAD/IraNNX5pa2ZPbrFiL2tH1
         8Z7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P6kivpFJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com. [2607:f8b0:4864:20::830])
        by gmr-mx.google.com with ESMTPS id v23si3317479uap.1.2021.01.04.14.33.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 14:33:38 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) client-ip=2607:f8b0:4864:20::830;
Received: by mail-qt1-x830.google.com with SMTP id z20so19657573qtq.3
        for <clang-built-linux@googlegroups.com>; Mon, 04 Jan 2021 14:33:38 -0800 (PST)
X-Received: by 2002:ac8:5159:: with SMTP id h25mr41268979qtn.199.1609799618534;
        Mon, 04 Jan 2021 14:33:38 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id 74sm37192516qko.59.2021.01.04.14.33.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 14:33:37 -0800 (PST)
Date: Mon, 4 Jan 2021 15:33:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Marco Elver <elver@google.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Kees Cook <keescook@chromium.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	George Popescu <georgepope@android.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ubsan: disable unsigned-integer-overflow sanitizer with
 clang
Message-ID: <20210104223336.GA2562866@ubuntu-m3-large-x86>
References: <20201230154749.746641-1-arnd@kernel.org>
 <CANpmjNNGmbgg_pFMC6X_6vZcj53jy7PsNyZAC88rOQC5zrOiFw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNNGmbgg_pFMC6X_6vZcj53jy7PsNyZAC88rOQC5zrOiFw@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=P6kivpFJ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Dec 30, 2020 at 05:13:03PM +0100, Marco Elver wrote:
> On Wed, 30 Dec 2020 at 16:47, Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > Building ubsan kernels even for compile-testing introduced these
> > warnings in my randconfig environment:
> >
> > crypto/blake2b_generic.c:98:13: error: stack frame size of 9636 bytes in function 'blake2b_compress' [-Werror,-Wframe-larger-than=]
> > static void blake2b_compress(struct blake2b_state *S,
> > crypto/sha512_generic.c:151:13: error: stack frame size of 1292 bytes in function 'sha512_generic_block_fn' [-Werror,-Wframe-larger-than=]
> > static void sha512_generic_block_fn(struct sha512_state *sst, u8 const *src,
> > lib/crypto/curve25519-fiat32.c:312:22: error: stack frame size of 2180 bytes in function 'fe_mul_impl' [-Werror,-Wframe-larger-than=]
> > static noinline void fe_mul_impl(u32 out[10], const u32 in1[10], const u32 in2[10])
> > lib/crypto/curve25519-fiat32.c:444:22: error: stack frame size of 1588 bytes in function 'fe_sqr_impl' [-Werror,-Wframe-larger-than=]
> > static noinline void fe_sqr_impl(u32 out[10], const u32 in1[10])
> >
> > Further testing showed that this is caused by
> > -fsanitize=unsigned-integer-overflow.
> >
> > The one in blake2b immediately overflows the 8KB stack area on 32-bit
> > architectures, so better ensure this never happens by making this
> > option gcc-only.

This patch also fixes the failed BUILD_BUG issue in mm/mremap.c that you
sent a patch for [1], along with a couple of other issues I see such as:

ld.lld: error: undefined symbol: __bad_mask
>>> referenced by gpi.c
>>>               dma/qcom/gpi.o:(gpi_update_reg) in archive
>>>               drivers/built-in.a
>>> referenced by gpi.c
>>>               dma/qcom/gpi.o:(gpi_update_reg) in archive
>>>               drivers/built-in.a

[1]: https://lore.kernel.org/lkml/20201230154104.522605-1-arnd@kernel.org/

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> > Fixes: d0a3ac549f38 ("ubsan: enable for all*config builds")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  lib/Kconfig.ubsan | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> > index 8b635fd75fe4..e23873282ba7 100644
> > --- a/lib/Kconfig.ubsan
> > +++ b/lib/Kconfig.ubsan
> > @@ -122,6 +122,8 @@ config UBSAN_SIGNED_OVERFLOW
> >
> >  config UBSAN_UNSIGNED_OVERFLOW
> >         bool "Perform checking for unsigned arithmetic overflow"
> > +       # clang hugely expands stack usage with -fsanitize=object-size
> 
> This is the first time -fsanitize=object-size is mentioned. Typo?

Copy and paste issue from CONFIG_UBSAN_OBJECT_SIZE

> > +       depends on !CC_IS_CLANG
> >         depends on $(cc-option,-fsanitize=unsigned-integer-overflow)
> >         help
> >           This option enables -fsanitize=unsigned-integer-overflow which checks
> > --
> > 2.29.2
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210104223336.GA2562866%40ubuntu-m3-large-x86.
