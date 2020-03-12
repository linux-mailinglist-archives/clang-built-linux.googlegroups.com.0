Return-Path: <clang-built-linux+bncBDYJPJO25UGBB77BVHZQKGQETISVWNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE1E18377A
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Mar 2020 18:27:28 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id g8sf2180408pfo.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Mar 2020 10:27:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584034047; cv=pass;
        d=google.com; s=arc-20160816;
        b=g2brBN4oTq0pl9cvRwdjcO3NLIvmi1sS2GcxNiMhLjGWj8QF6gUblpCIC2PUikGWWt
         Dh7CXsM1VO15G9LRCo6FZO4I9ibgE32U0jw6i+J4KDt6oz4fHa9/xt236/UkP5ZYLSrE
         +fn40zX4Ef3+tiNLi8AnGwcfKgj/VjFjQK4kPqzKrlTnImNSfr7hcSMFed+/iPh9gTkc
         14hzsKNObJCAsSjgkwjCgDzDZZzRgrY1u0Kw124d/xa3kxw8T67y9TPlnGZQyOO08ntO
         Thyz8PIFqmxHTtwxkIREaQixrldd5GVWXGngJQ+n1fNGjav/jqxzp+5LmY5/F6TIE41e
         OI6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XtGAbAxjBRu7oxz0J4AeVJPhN1pZO2xTq0kuq1jI0Zw=;
        b=ppmvt6l2in8raAxg0rxyYbptYxPohvyoSbZH8Xnc0Oy7ImEDq5xLAnJRpX/DQ2SSOY
         I7bTHCr9Rf9iT59lFqJdZKh6tAnNhkL49n6P98DxaPDm2H7DkDNPqePZMJ2MS4Dt7S5+
         1LXDoSLrBAoirPxOYWyap9Tz5pXbfAAiRzftmdqsMHPJz0aoTpUeoGSPnd0YQ+4xme14
         SIHTZSuTvg5OlbeaOxTKPaLcHvk+WT/vXQ4qKVSOYMCO59sYP1mJbTKbOlIF9YI0xdZZ
         XC8b85n2nfa0Ozvhx5CGHaZlomJVp9bRJVYq3y+gQfWWMrKlOjVdk4SZJQHn9ZDne80h
         /K7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d8JADKDE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=XtGAbAxjBRu7oxz0J4AeVJPhN1pZO2xTq0kuq1jI0Zw=;
        b=lh6XLmPI2Pd7+KJkB1IbJTTcCGu4ycGoBm0NLLK4gpS1+acqmi7V8qLzDMOw86jvfS
         5O/vzT7bpW9RNLUHtNUt+Mcbk2z/4ROZGRSnBYcSUIT3yENZC3QpSSUeiE0Pb/IuvUzL
         oAXuLFYbtF2c9paszOCZXZlz3rrgjiHEioFCzMQFmnUn75yoT5rgUlgToqKI/t2I6Cs2
         I89oSESjGe53lkgq/vZCZHLzA19v3Ul1+bGIuDtrDCxKCpF449+vHxvzwjruNJiPEgVl
         QfYt7Rswi/Ft8S4GX0pWcaKJimNMbqc5sXSkIe6iZf7vJrGC+Jv6w1Fwbz08WJ0PE5js
         3U4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XtGAbAxjBRu7oxz0J4AeVJPhN1pZO2xTq0kuq1jI0Zw=;
        b=U8MuGCZdkKFlGS1QXHL8NYbXtuYgjCeiTrgTam5wssYF0y1VoqVaCU4z9oNbPAH2QC
         BJqd9J7ZMBI8KgD0Ixl8hmJ7u42VDHg4u5DSjSRUi3YkIFmaNe3h4qW1Q/RXx6poKIM+
         jmpeZyukIvXCT4g+GZqboNSd6VKOEGTzT111GkK6ja1xwSKu9yrCU106ZUvRIHLCnTU8
         cZrY7mgjm3rHQ0w3eAV5Ho8f7SSTVFhPUcwz80wi5qhyl5lRJ+r/gibrCuPzlbrlXTaZ
         QSitkDAQGvcA0U5gELclwH+KYnHTv3eyEBDBDdyclszG9s4wyGZMIh1WnvnnYt4toDIj
         P3iQ==
X-Gm-Message-State: ANhLgQ3hMxydiMbF+feuG7y+lnuJPm7/6eTss1j1g9E6lQIx8ZJGEMD5
	Fs4+KeLkosb+yC4fLEc43A4=
X-Google-Smtp-Source: ADFU+vsS87tYKQY0UY/6czEZSjU8IwePzN2ZeNmtcSTQc3Ao2c9GMdojw6GtHZBQ7dHTWXmu8WXddA==
X-Received: by 2002:a17:90a:5898:: with SMTP id j24mr5439021pji.118.1584034047196;
        Thu, 12 Mar 2020 10:27:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ab0b:: with SMTP id p11ls2655357pff.0.gmail; Thu, 12 Mar
 2020 10:27:26 -0700 (PDT)
X-Received: by 2002:aa7:9471:: with SMTP id t17mr6950751pfq.272.1584034046685;
        Thu, 12 Mar 2020 10:27:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584034046; cv=none;
        d=google.com; s=arc-20160816;
        b=oxD6gD50O5PianTXjwYooPuSB3i7GNWadr6qQuUHrSipKM7SFxNtpMmhfrkiV2P2pG
         H3Sod7zmaP/85mLKiaAvpkacm2zVn0Kvgb/P1ttt/hnEgIUHu1ZKcvEUv9o67ZGlxRff
         K2v805v9DPkgL5gLQo9dhXpuPZqRMT8KhDXQDwcwjdROA1wb6Y8+TA+MUtWp3Dn5vGAJ
         KWPkl14HW11tygcnIn3sjifR4jTPLMFP5YnbAG9SWY1zIwFUXqMk/gP3+NDdeunN1PoW
         nQ+Dsy29CyG6Bjr0myssN5y4ETWxh0++i5Tf3sYogZE5CFekbFqSGCnrhieH5CnaYi+B
         GTbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=s2PgMEQ+AJXBiGghvqAfAUvNhwK3l0ButubORYByip4=;
        b=HM0nMm0yUQOEx6Joq2S9X+bMtgqbUJ4cgzOvTbieaNVm5Lt+LeApzclkGv121KH+/p
         juJddo3l2xq0h00h4GFt8f9hONIJ1Be17YmGzZrO5HTbIrrT046ruu10fMDhrWuBB1w+
         GL/kuRYn8F7/V6UPmdS5uIy/yEJmrcIpCl9AIOLF8ZRh9Klk0kA10fOCWHSfqe5M06ch
         cdT6lNbCwlFR2iTKUAUIdennx5TXEvUGpqai8hAEpCvgsh7uvhZKfQBtHR7O2ZU2cuDB
         c0/pGpTatYN2Zt0986GYRG58JgULxOCaF3AX0K5zWXH8Z8Vo8G0OPIG7jOlm1V/V+yRA
         DI7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d8JADKDE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id x128si323277pgx.2.2020.03.12.10.27.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 10:27:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Received: by mail-pf1-x42a.google.com with SMTP id x2so3221587pfn.9
        for <clang-built-linux@googlegroups.com>; Thu, 12 Mar 2020 10:27:26 -0700 (PDT)
X-Received: by 2002:aa7:87ca:: with SMTP id i10mr9170160pfo.169.1584034045842;
 Thu, 12 Mar 2020 10:27:25 -0700 (PDT)
MIME-Version: 1.0
References: <M2AyAx0--3-2@kdrag0n.dev>
In-Reply-To: <M2AyAx0--3-2@kdrag0n.dev>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Mar 2020 10:27:13 -0700
Message-ID: <CAKwvOdnN6dEwUQCrdEoiDBnjZxPPHVfYcck0sRqcCujYeRHU3Q@mail.gmail.com>
Subject: Re: LLVM Polly optimizations for Android
To: Danny Lin <danny@kdrag0n.dev>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	android-llvm <android-llvm@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=d8JADKDE;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a
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

+ AOSP LLVM's public email list, CBL

On Wed, Mar 11, 2020 at 4:40 PM Danny Lin <danny@kdrag0n.dev> wrote:
>
> Hi Nick,

Hi Danny, great to hear from you.  Thank you for taking the time to
write all this up!  I can tell a lot of care was put into it.

>
> Polly is LLVM's polyhedral loop optimizer, which analyzes loops and optim=
izes them for cache locality as well as reduced memory accesses, similar to=
 GCC Graphite. It can also perform automatic loop parallelization using Ope=
nMP, but that's definitely out-of-scope for the kernel and most likely for =
Android as well. You can read more about it here: https://polly.llvm.org/

I admit I don't know too much about Polly (though I can describe it
better than most people); my opinion is limited from my experience on
TensorFlow's XLA compiler which didn't use Polly intentionally, though
that team is mostly replaced with folks working on MLIR now actively
researching Polly.

>
> LLVM needs to be built with the "polly" project enabled in LLVM_ENABLE_PR=
OJECTS for it to be available. After that you need to enable the use of Pol=
ly by passing flags when invoking Clang. These are LLVM flags, not Clang on=
es, so each one needs to have "-mllvm" before it. Below is a list of the on=
es I've tested, along with the explanations to the best of my knowledge:

It's probably low hanging fruit for us to enable polly in the
configuration of AOSP LLVM, since it seems like making use of it at
compile time is also gated on the flags you describe below.  That
seems like it should give us fine grain control over disabling it for
projects should they miscompile with it enabled, if any.

>
> -polly: Base flag to enable Polly itself
> -polly-run-dce: Polyhedral dead code elimination, analyzes and eliminates=
 statements that can be proven dead (https://polly.llvm.org/doxygen/DeadCod=
eElimination_8cpp_source.html)
> -polly-run-inliner: Run an early LLVM inlining pass before running Polly
> -polly-opt-fusion=3Dmax: Optimization fusion strategy (default min)
> -polly-ast-use-context: Pass context around loops to the optimizer so tha=
t it can make better decisions
> -polly-detect-keep-going: Don't fail on the first error encountered (this=
 is probably a bad idea)
> -polly-vectorizer=3Dstripmine: Generate vector code automatically (https:=
//polly.llvm.org/docs/UsingPollyWithClang.html#automatic-vector-code-genera=
tion)
> -polly-invariant-load-hoisting: Hoist loads of invariant memory values ou=
t of loops, when possible (https://reviews.llvm.org/D31842)

Thanks for the research (and testing of D31842, though seeing Johannes
resign is curious), this is a great starting point for folks looking
to try Polly!

>
> I have a kernel commit that exposes the ones I deemed useful through a Kc=
onfig option: https://github.com/kdrag0n/proton_zf6/commit/00f711eead423
> And a prebuilt toolchain with Polly support that can be used for prelimin=
ary testing and evaluation: https://github.com/kdrag0n/proton-clang

So no new compiler warnings, boot issues, or otherwise noticeable
runtime issues? That's impressive, and worth paying attention to.

Thanks for all of the work you do on Proton kernels (and toolchains),
too BTW, which I've watched from afar.  The Android ROM scene on XDA
is a vibrant and competitive edge that Android has in the market.

> While it hasn't provided much of a performance improvement for kernels in=
 the past, I've recently done some new tests and it looks like that's chang=
ed drastically. On my 4.14 kernel, Polly is now showing a larger performanc=
e improvement than LTO in terms of hackbench times. Without LTO the improve=
ment is 14% over not using Polly, and with LTO it's 10% =E2=80=94 still sub=
stantial. The results are available here: https://docs.google.com/spreadshe=
ets/d/1mhjyshujZz8jYI7dMoCe-yFbxymW-fWaC08vMhBbEmQ/edit

That's a good start, though hackbench is not the be-all end-all of
benchmarks, and N=3D3 isn't statistically significant.  Internally, we
have a composite of numerous first and third party performance test
suites.  Quantifying it in terms of speedup relative to what we saw
with LTO is brilliant, and eye opening though!

> At least with the kernel, I haven't observed any noticeable differences i=
n compile times.

Impressive as well.  Another thing we measure is binary size; kernel
boot time is strongly correlated with kernel image size (decompressing
the kernel image scaling with kernel image size). But everything is a
tradeoff; quantifying the tradeoff is important.

> I'd be willing to submit an AOSP LLVM patch to enable Polly given instruc=
tions on doing so.

Great!  Personally, that would make me so happy to help you do this; I
think Google+Android in general could be doing more outreach to the
fantastic XDA developers who sacrifice a lot of their time and money
for improving the Android ecosystem.  I'm committed to changing the
current status quo in that regard.

If you clone this repo: https://android.googlesource.com/toolchain/llvm_and=
roid/

and modify the stage 2 cmakes flags (stage2_extra_defines) in do_build.py:
https://android.googlesource.com/toolchain/llvm_android/+/refs/heads/master=
/do_build.py#1371

Send me a patch on https://android-review.googlesource.com/ and we'll
go from there.

>
> At any rate, I'd be curious to see the results of your testing and whethe=
r there are any stability issues with it in production. Let me know if you =
need more info!
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnN6dEwUQCrdEoiDBnjZxPPHVfYcck0sRqcCujYeRHU3Q%40mai=
l.gmail.com.
