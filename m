Return-Path: <clang-built-linux+bncBCMIZB7QWENRBYPPWGEQMGQEWQXFYGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 916B63FB119
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 08:17:06 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id q13-20020a05620a038d00b003d38f784161sf641601qkm.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Aug 2021 23:17:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630304225; cv=pass;
        d=google.com; s=arc-20160816;
        b=J0IAB9HJq2Sub0HC6aOhOCG72K3OoG+KWf1jbJD8g8GYodJWxWfrf41aLsqYQAGnCe
         dA+F+B+Nv8z+fG44oA0L/857vPFa7eLVI3iDDNz0WbwMj3p41//usky1vJdpA1+4B/b2
         FjouJOEj1CSjfodaLKdtB9FGTJrPflHsxYmbr1sAvlkHb1IsvuhYNzyt+pM8mDoszzh1
         wX3E6jN4pJlKCINsgtCaG5nL6MnSLuPFDIhGh8q3GmBbTfTPGK6/PYnrmHkHNryKXBTU
         5oXij0K/GZRhnczN9KC7SM0fDR4skpJH99lNpu0iHZCCjQp7YexFqE0fjsUTkeSPA4cs
         dAAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=UE9qUrgxpTaMX21IzntpBQx9WG3JiVDafN4F13P8gTI=;
        b=QkJ9cvDSwDm/pxtm1J6wSx8bB64ayBxSv/53thnr3yQzB2OtNd4FsU/dlWj/OSSQxx
         Q9cgt6JLB8g+KeTEMMkIscSUggCxCxPodp8erBeBEDXr2JOqx+EQqWEhD9xU611wVhnP
         xZEeJyh6Tqgrtp2gHtd1ORDP1n4CgqHYrXkmTl4nGCXngSrNkjFRwX1ihAyeprjSzPjz
         7uR+jS8Ub+neM9ajgvAkpHUcHsjNgphUaXPjLwKbbe9y4ruMd3A39boX0R9zdEVD1aLm
         2Ec9JmriA6UCAd74N8f8wFqVZmiqbDrr+QgU22mCY4sMd9S6rRk5tCcgfO7eFmrHubET
         Amzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mnqfjqdn;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UE9qUrgxpTaMX21IzntpBQx9WG3JiVDafN4F13P8gTI=;
        b=K0y3uG0JACkBt7ly92PViVrrupOYfT768hietGeEyl2LUK6SwznQSdTYN1Uj6MogXd
         AlF6M/iLActcDXH9cBFL/DDvYZdgjLS6uqxk4krfKqY/fVP1w08VWm+o25cN/eOVg2y0
         LpesiAeoXjmrJOPKMeKT+sxRa9mBNSiVnTKpmCC5hGW3LhznROiXPHPx0ZNLGDxNakpj
         y50x5VK/VpXlUxWY2TCh662TSUgnCAIh8QhI4xHt0gia4WiwsWrpDGZsRgQqZOiKltUy
         xjdRxFyK8l0Kz8m+7FqKwOKFhGQM7Ac09xUA2ioMPKx3t2rtNhfVaR52CVFP/VRjkxpg
         NMRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UE9qUrgxpTaMX21IzntpBQx9WG3JiVDafN4F13P8gTI=;
        b=iJdo+jGn20xF+SL7A38pampDf6jBdPkEeXw1KF5JE79pczrvSkpvFmGUACuAErQVFk
         16FM6O/zF8IW3DiZaImOv8yXRHZWRRAyvqmr4nI8nVYQ2K5m59JvauCrssuPRga4ajg+
         JAwpOa1xKsM6pa4mCRt66xWUZQuXR5QxYe4BotbfA1ajb+MVuC1s5fsaYNuGRQ3lQhyG
         Id1c5EJ+n52Mg2p5D32AByfprOb9nPneqYGCChA9U6+RjcLOFzGTSHnJGeyVqwRRQI4V
         gBkEuT0o9hoijEu9PezJcyVWCrqQh4w/kBbJaLd27Ju6rEtMYm26meh4bRR+JPCpOYcF
         4SmA==
X-Gm-Message-State: AOAM530t/hb5p4lgZFXo/1L4iA7nQu6eaC62CZRxg1yXtcRwIrzykGGg
	rvMC4euMKoQrP1x/qYiZrwo=
X-Google-Smtp-Source: ABdhPJxNjGg9+Gnh3C7bIsgyEQcD5gOK8I8xTgCJN6HF+MT75usg+UPY0i5pXV3jrrDCFOKKqrCwvw==
X-Received: by 2002:a05:620a:2914:: with SMTP id m20mr20828631qkp.497.1630304225525;
        Sun, 29 Aug 2021 23:17:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:c5:: with SMTP id d5ls7278373qtg.1.gmail; Sun, 29 Aug
 2021 23:17:05 -0700 (PDT)
X-Received: by 2002:aed:3022:: with SMTP id 31mr19415626qte.343.1630304225014;
        Sun, 29 Aug 2021 23:17:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630304225; cv=none;
        d=google.com; s=arc-20160816;
        b=JFoMcLgAW0PUOm2DtoSGWESRv9wqw+Yx0SWGRs63gY+E0gV/gl1DXLWArsNfVsj+7m
         IYmimHnAnopcoplz+zufUeUMZR3OrQoYdylMDtHvGt2EnLPZp4HepOLdI1XgXFCbkqQO
         nCq9pqdYVPF76Vl1RjBavh+Uhy5KO8//stKxrHipykVtVfat1Rjd1djt0fF6+fr66Tts
         BtNcnx7uoQdWuaFyH75nEheU2vyPNWkTSZIhfQdhjpO+yA9kbouAyAd/uCgEk0IjXwkV
         78QeWK2bvd9xL5UFIJopCH2abZmn36AoY7ZMV793phB10//IbFXiziAPsH1AgV+YwGTf
         71zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hf2WI7Rbrjj6uR0eXDNgfuxaWPxRJpkbkrXhl2fWk6g=;
        b=hmsZPO1r2LIjG07DCt2EDLs7DLPr9gVaEy3y+8jaCD6MWND3OYifKVptbr6uPSDZ9r
         +oefIgYsQhOVYMhmivbkD1j5oMsE5AHyl/P/P4WR5IyFO7Lh+WvQaO369CJCfTN7iIoB
         j936Z8JyMkJgLdK+2bYWf/YhGRF3YW//TGu803SXU63BiZHs9ZnsOXQgNnAvWCGfB5Mb
         R8W0aWxTwuIv/wawMMWOGDeuGmghrN/pwuH7hrV9Gg762MaHL6ZkYHiWgTx5sxEyte0Q
         F6yeqo8AY8wB39XlOXQBL5Odbb7QK07GIK1zGd1PL/SeMxit+C1ujnetg0zNAKQQDIJ2
         6qYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mnqfjqdn;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com. [2607:f8b0:4864:20::333])
        by gmr-mx.google.com with ESMTPS id d201si1035923qkg.4.2021.08.29.23.17.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Aug 2021 23:17:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::333 as permitted sender) client-ip=2607:f8b0:4864:20::333;
Received: by mail-ot1-x333.google.com with SMTP id q11-20020a9d4b0b000000b0051acbdb2869so12086854otf.2
        for <clang-built-linux@googlegroups.com>; Sun, 29 Aug 2021 23:17:04 -0700 (PDT)
X-Received: by 2002:a9d:450b:: with SMTP id w11mr18074611ote.254.1630304224313;
 Sun, 29 Aug 2021 23:17:04 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000790a6a05ca675029@google.com>
In-Reply-To: <000000000000790a6a05ca675029@google.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Aug 2021 08:16:00 +0200
Message-ID: <CACT4Y+abiC4sn1eYZhb-QdqB6NZ-oQesvRb8VH08Kmr+YdokTg@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - Aug 25, 2021
To: ndesaulniers@google.com
Cc: clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com, 
	kernel-dynamic-tools <kernel-dynamic-tools@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mnqfjqdn;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::333
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Wed, 25 Aug 2021 at 21:32, <ndesaulniers@google.com> wrote:
>
> http://go/clang-built-linux-notes
> Meeting: Hangouts Meet
>
> Aug 25, 2021
>
> Error+warning attributes landed
>
> https://reviews.llvm.org/D106030
>
> 30 years of Linux!
>
> https://lwn.net/Articles/867315/
>
> -Wimplicit-fallthrough for 5.15?
>
> https://github.com/ClangBuiltLinux/linux/issues/1429
> https://github.com/llvm/llvm-project/commit/9ed4a94d6451046a51ef393cd62f00710820a7e8
> https://lore.kernel.org/r/20210819040517.GA329693@embeddedor/
>
> ThinLTO regression in LLVM
>
> https://github.com/ClangBuiltLinux/linux/issues/1440
> https://reviews.llvm.org/D106056
> https://lore.kernel.org/r/5913cdf4-9c8e-38f8-8914-d3b8a3565d73@kernel.org/
>
> CFI x86_64 v2 series
>
> https://lore.kernel.org/r/20210823171318.2801096-1-samitolvanen@google.com
> Currently limited to clang-14 but compiler side fix should be going in clang-13.
>
> -falign-jumps=0 warning
>
> https://lore.kernel.org/r/202108210311.CBtcgoUL-lkp@intel.com/
> https://lore.kernel.org/r/20210824022640.2170859-1-nathan@kernel.org/
> https://lore.kernel.org/r/20210824232237.2085342-1-nathan@kernel.org/
>
> clang-13 and sanitizer coverage in CI merged
>
> https://github.com/ClangBuiltLinux/continuous-integration2/pull/178
> https://github.com/ClangBuiltLinux/continuous-integration2/pull/179

Hi Nick,

Always impressed by your notes. It looks like quarterly notes rather
than bi-weekly :)
And I saw some mentions of clang in LPC kernel report as well:
https://youtu.be/C-I9qNsgPVQ?t=755

I wanted to ask regarding sanitizer coverage and CI in general.
I don't see any mentions of "coverage" in the referenced PRs. What do
you do with coverage? Do you collect kernel coverage from tests? Do
you visualize it?
I wonder if https://codecov.com can be used for visualization. We use
it for syzkaller:
https://app.codecov.io/gh/google/syzkaller/compare/2727/diff
As far as I understand the repo only contains CI, but the kernel is in
a different repo. Codecov action has some args to override
branch/commit associated with coverage:
https://github.com/codecov/codecov-action/blob/master/README.md
But I don't see how to override the repo (e.g. to point to Linus tree
on github). Maybe it can work with a separate branch that contains
kernel sources.

For CI you use github actions and build kernel right in github
actions, right? Don't you run into some capacity limitations/timeouts?
And you also boot kernels in qemu's, presumably using TCG/emulation
(to test arm and x86 probably don't expose nested KVM as well), right?
Does it work acceptably?
Does the CI run any tests or just boots kernels?

Thanks



> cc-option-yn removal
>
> https://lore.kernel.org/r/20210817002109.2736222-1-ndesaulniers@google.com/
>
> -Wbool-operation enhancement
>
> https://reviews.llvm.org/D108003
>
> PowerPC '-z notext' fix for CONFIG_RELOCATABLE
>
> https://lore.kernel.org/r/20210812204951.1551782-1-morbo@google.com/
>
> Getting help from Intel on certain bugs
>
> https://groups.google.com/g/clang-built-linux/c/fIy6K5Uxr3s/m/vV--Yt78BgAJ
>
> llvm@lists.linux.dev
>
> https://subspace.kernel.org/lists.linux.dev.html
> https://subspace.kernel.org/#subscribing
>
> LTO kbuild patches
>
> https://lore.kernel.org/lkml/CAK7LNARoxA875uynQHs-HpcfXtzFvuxkzSha9tquR2uV0Za10A@mail.gmail.com/
>
> Fortify source series for 5.15 then 5.16?
> Bill looking into zero call registers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BabiC4sn1eYZhb-QdqB6NZ-oQesvRb8VH08Kmr%2BYdokTg%40mail.gmail.com.
