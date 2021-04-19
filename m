Return-Path: <clang-built-linux+bncBD7I3CGX5IPRB3ED6WBQMGQEUI5JCHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEB2363DBC
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 10:40:12 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id a71-20020a1c984a0000b029013841a43c3dsf294546wme.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 01:40:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618821612; cv=pass;
        d=google.com; s=arc-20160816;
        b=bvsYVxE8ibVmvd5mJyM6iMNjRVJAtVdX3rYWY1HPfSIOZFipEV4XX4EuHsKo3uBSkY
         StNhVNFaykz81B5IQfF98NtQ71c/LPyvO981da3sqwTkvy37TXRcbpL1yioJsFPMhFfb
         7F5qblkRk2/KRyUdSgOizUG6L3T2wtoRmjawrmAxj9Tu5Tjs7Z/r1gH6fM8slIuHU1nq
         PC1Zhx5dMVi2Fpi3TyMbWuo+cU66aC65dPZwG7LyloeQ/6+MLMvQ2fA8zXj9m26+P523
         xmV1JNo5BrCto3rXz/lsXYbhjTwunCSjpVMUZlSM/GfMlEXJapmqf6y6RHY/iVAViF3Q
         wXHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=DAxM/KsifzygGtjnBPZIcKQQ4Bi2k75djwiVi+GCBUY=;
        b=kUYEB3fj67oP+HM3Xm6Gc6U1wlg8walxJLTkJe/AOUg/b+XbCsr5L3wmzFQKZkW7oU
         FkBq7/0/YsUmy4HFYplFxQBHi3glkMILGZs+xe4D88C8mBrv8rdLpFQbiJBuBY3ARsAk
         U7rc/1E/C1USykRgJNH7zIbLER7lHO5ovYQvVz3FAeJhE7B6nO9Q/W48NtWXcDUw6M/L
         LvUfaCsIejd3nSsbGO2WIHiKEbG54KgTNHs3cZS8Xt9KvvqENro2wDjKDWbyWx6l/i2K
         2fXhBB6NVfncoqDyrT4NlnSxXkXRPZ2t5OW4qkXEIx3PbVbSRsqv6ybjdupJvwxr5iXS
         6GnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@rasmusvillemoes.dk header.s=google header.b=RuAKp33J;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DAxM/KsifzygGtjnBPZIcKQQ4Bi2k75djwiVi+GCBUY=;
        b=sN8yBXlt6BohJKxddoFnY4xOD0S6IKiPElbmuAfFOHKC0R0Nob4TWGJEVbCZBzzaQG
         pYkzTqGXN24cBAZ2bCBL+gzUCLqgQmRjA2cPE8l7iQUMchds92GINjccSMSsn9V2BXmo
         TuR0xBGKto3aGIeFjtyOba1genhGnsXM3dmfM7TORvcvxklSPkH6laKzzdSQtU9CiDp9
         JqjucCcWlv2keCjMfHTtn7ey9xsB+H0xfsHdKcLdhVgw3Z1C2/xwWrPGqj7AcPP/mRBt
         81VvGxevM1NQDbeny2GIBzNO8JFsVvYWimNYhMVehlRScLGjzA4vUcpGpW7V4Tq7T6zT
         jyXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DAxM/KsifzygGtjnBPZIcKQQ4Bi2k75djwiVi+GCBUY=;
        b=jg4kG3PEfnjr+IV/3znAA/HKl1oE0qoQrq84F5wQXz0dvhvriHUVX2rsUpKrydXRcO
         3ZVgKfzmEWk/d7uqS2cii3xgtMv0WqsRa6kCOx2H3qPcEWlJb4zn9TnZ4FsyYWDYq2yZ
         kMRTQFmCOySsqhHF2vV3sY020D0ZJNMavql/WCnMDd8R2U1ftmIQ3WYtC+BB9uqq/Bke
         e5o9cCNAE0veLg2u3BBMkuiqRJ7s/4df3dMZFFZkSExVE/ijLNafLYNx98WtKHyVLnRf
         MlfwUe1esMYBYk/xPZk+KCONpuiHqH+v3iifLdol9JS3Y+fsaCiKXvFrAg3+rbI9KgbG
         jwKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303lNcloITIQIBNBSBTf9DObPY4BRkI/HkWagOtC9U6F+e0lrGs
	hQUJk9GOpR7px2MDSBFy85U=
X-Google-Smtp-Source: ABdhPJxYYEEvj68n9BDtErE3bY2uAtqE085vLQQ5l9Cr/4Yp6ft9o92QDTL8GziUZGbRTn53ElWmyw==
X-Received: by 2002:a7b:c857:: with SMTP id c23mr21034468wml.28.1618821612254;
        Mon, 19 Apr 2021 01:40:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:d1e5:: with SMTP id g5ls6607452wrd.1.gmail; Mon, 19 Apr
 2021 01:40:11 -0700 (PDT)
X-Received: by 2002:adf:d1ce:: with SMTP id b14mr13439634wrd.159.1618821611442;
        Mon, 19 Apr 2021 01:40:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618821611; cv=none;
        d=google.com; s=arc-20160816;
        b=O2wAf7/RM703CYvmV/FyEj+qz6JUWKHXGv1kHLSOvqmABYpu0g4GS7WTRj52pmBSvS
         ycNXDEVHTH2kLszmpcgRnRowNFddQDnPUAYsUUlzyBzv7oCHbl7jQffDvM/lmeasTvGP
         UUSpUs+Y5nrRLmf3eKq40TT1X+y0vDR/fN2EvTII18+NYyR18hKQTX5nSms5GzX7L3ih
         gPAS+gSBhxK1gl/18Yce3AD4fEh+ZM9Ba6BT4Iga+S89vJ861+E8lpROX2BR4j6o4ur5
         WAUtWzESo9jGODseVgvRY58gbyou1tIRDlflOf5OIl+EarATmdSG3HGQci/ncWCfN2wT
         6Spw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=2y82BOAFsYacLRhgXdKaCVbYWGAg9sRe0z+BWidh9M8=;
        b=MMV71dHfqdlbOLVwQnnd7x3PeXpr87kVJr9U7Ry/Ybtxm0zb2gXhiVuevEK3awHPj+
         kax48BFwzRMJS1zGkMtxlVRrQYxJOMD9HG/InZRSncljF8+0pVe+z4JS7y1xjQsT10Gr
         Iu8SlwL/9wbFhk6MtjAt+uDMLhaw+4y830gdC9fai6ZXh+wIMyo9nj31238SjIW6dpgN
         O5RAS9zoJCw5zTsxRfCSsC+N8ccqfyOrE9LVW0fb7Xyku7zh8ArJw0uq1AQzGFxyp5He
         vSZmI5ivx6Kg/E0CzGfcH36l2OnTITQDdWxd8eloyewwRnY4eVfuckat3JsbBdzV0766
         aP8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rasmusvillemoes.dk header.s=google header.b=RuAKp33J;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com. [2a00:1450:4864:20::535])
        by gmr-mx.google.com with ESMTPS id s21si196617wmh.2.2021.04.19.01.40.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 01:40:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of linux@rasmusvillemoes.dk designates 2a00:1450:4864:20::535 as permitted sender) client-ip=2a00:1450:4864:20::535;
Received: by mail-ed1-x535.google.com with SMTP id g17so38939556edm.6
        for <clang-built-linux@googlegroups.com>; Mon, 19 Apr 2021 01:40:11 -0700 (PDT)
X-Received: by 2002:a05:6402:51c6:: with SMTP id r6mr5493822edd.258.1618821611041;
        Mon, 19 Apr 2021 01:40:11 -0700 (PDT)
Received: from [192.168.1.149] ([80.208.71.248])
        by smtp.gmail.com with ESMTPSA id gz10sm5353737ejc.25.2021.04.19.01.40.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 01:40:10 -0700 (PDT)
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
To: Kees Cook <keescook@chromium.org>, Andy Lutomirski <luto@kernel.org>
Cc: Borislav Petkov <bp@alien8.de>, Sami Tolvanen <samitolvanen@google.com>,
 X86 ML <x86@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor
 <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com>
 <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
 <20210416220251.GE22348@zn.tnic>
 <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
 <202104161519.1D37B6D26@keescook>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <2812c98b-3b5a-7be5-9fd9-2a6260406a45@rasmusvillemoes.dk>
Date: Mon, 19 Apr 2021 10:40:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <202104161519.1D37B6D26@keescook>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: linux@rasmusvillemoes.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@rasmusvillemoes.dk header.s=google header.b=RuAKp33J;
       spf=pass (google.com: domain of linux@rasmusvillemoes.dk designates
 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=linux@rasmusvillemoes.dk
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

On 17/04/2021 00.28, Kees Cook wrote:
> On Fri, Apr 16, 2021 at 03:06:17PM -0700, Andy Lutomirski wrote:

>> The
>> foo symbol would point to whatever magic is needed.
> 
> No, the symbol points to the jump table entry. Direct calls get minimal
> overhead and indirect calls can add the "is this function in the right
> table" checking.
> 
> 
> But note that this shouldn't turn into a discussion of "maybe Clang could
> do CFI differently"; this is what Clang has.

Why not? In particular, I'd really like somebody to answer the question
"why not just store a cookie before each address-taken or
external-linkage function?".

(1) direct calls get _no_ overhead, not just "minimal".
(2) address comparison, intra- or inter-module, Just Works, no need to
disable one sanity check to get others.
(3) The overhead and implementation of the signature check is the same
for inter- and intra- module calls.
(4) passing (unsigned long)sym into asm code or stashing it in a table
Just Works.

How much code would be needed on the clang side to provide a
--cfi-mode=inline ?

The only issue, AFAICT, which is also a problem being handled in the
current proposal, is indirect calls to asm code from C. They either have
to be instrumented to not do any checking (which requires callers to
know that the pointer they have might point to an asm-implementation),
or the asm code could be taught to emit those cookies as well - which
would provide even better coverage. Something like

CFI_COOKIE(foo)
foo:
  ...

with CFI_COOKIE expanding to nothing when !CONFIG_CFI, and otherwise to
(something like) ".quad cfi_cookie__foo" ; with some appropriate Kbuild
and compiler magic to generate a table of cfi_cookie__* defines from a
header file with the prototypes.

Rasmus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2812c98b-3b5a-7be5-9fd9-2a6260406a45%40rasmusvillemoes.dk.
