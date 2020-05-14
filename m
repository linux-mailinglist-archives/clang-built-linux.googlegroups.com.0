Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXUI632QKGQEZUZN2VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CD31D38A3
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 19:48:15 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id y65sf2095549ooa.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 10:48:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589478494; cv=pass;
        d=google.com; s=arc-20160816;
        b=0wzDFnAnwni+Wn5hvy8o+VUIgYpzZC3U/wuaXsl4HW6RM7wIreePxs+KPE4yENmoEc
         QhkYd744hI/cIm1yKMj1qoo2W634T3If42nQtV98J5GM2/dTocWfFcZyDVX1wYRgEC4Q
         5Bxc1QBnZ8KTGrlUpW5O70bZUpA3c2Pfm9VUn8Hwd19u86iduE9zTu/JupcL29QxPAeF
         fpSkrr6LKztbJSwN3WOG86njMf0OQybJBHE7yiAX31rvSdPPExLsW26JPahbg8/jWH8p
         ChfHpf498jFl5n81jIoL3LafgpwlEV3VJLDOIRlNS9bblp0A8wMGcBkj+2iCKG2C4EUP
         1xOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=EVzc1elf+qTC4CRcAWEcHMaruxn49aGMsWXf9e6xNeI=;
        b=Dkl2MDrsuiJoyD2Mdwkg917B2kx+Swuhl9BvAlwrxASrszhVaSxUFgUH240jNlO1LT
         8JMmww+YsImv3pN56xow0FoLEXAdbMq4yiQ2FS9WOMA6QPTsZJtxjn2hfaULW+F+hKt3
         wS+x0RyLmzg7P0tzP22fdUY1tRGm15JZYTf058zo7kh+U3s0JLhvUK3Xxlz9HL0764Zg
         eBfnu2yMqkW6s6SXvZrE51ujxr0H0mvlyfweCj7dYFhIM5qSAQ1Ar259CrYDfK4WQHGf
         0v6EqtucPGKdhGSEH+So58/e6qZrX1cKWSm4elFXl8Fjt3UiuJ3PoX5hBAz5KPkfZMwa
         m49g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cYbSCl8e;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EVzc1elf+qTC4CRcAWEcHMaruxn49aGMsWXf9e6xNeI=;
        b=c74ccGcFM2ll4z8mMl6F8hZmEMzXsr5rwSM1wWZ1Te4uDhGnpZNdTqvK8eB9I4S6Im
         ZgY3ihr6gn3Z/DhTKIO54xoAupdmUxtxAA7NFEXSoMnFdKETFSuRbSr0RUULbLKlxBe0
         fP90ti3NeCNPs64kkQX3wHb810nsp35X+AoqkHXIoLW4l5mgyJQWvYSzSzDHe/85l32k
         YEj7q4bzJR867C8w+nDYUdlnWAnY5yJMkZcBg3KidcE/vExpdHCpZgTseBsC8KUPGYiI
         qTEO9jgwZAYX608ZmBX/wNee13e0rq3tK4WszRewXgXRGjNY5iUi/6Xhi28S1i/0v+It
         1tGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EVzc1elf+qTC4CRcAWEcHMaruxn49aGMsWXf9e6xNeI=;
        b=JuH7N3DekroTS3YyRc86mW8KWHYbU1kjdW22Z3fTNxAzC3FE7m6iWWhFxQdsdRoRGa
         onJJOuagEKtHXkLP2dNe6Sb3gR9pkYjJjUZ1ZaPvnno3HopsOJXJeh6Oz+QgVjXdtt7B
         USrknRf8dPoEYc7G5JJxLoWhbUN7HKxOXDgPXMmVsKJ+j3qnU35a1zTKUQ/7CD3WrtvJ
         LWk1WuzqrpNa3UZ+CnSVNITD8sNgT7rFliVslV/jxl9xE3oyx4SffmXjYedI2LZkg5Ia
         N4K1w4rxtvGNxLLMGbBF2E5X/amArsbLN5jSU11yYrKlNKrzb/v1XYfSZjpFZUj9sv3E
         kyKw==
X-Gm-Message-State: AGi0PubdNVJ4CEgTek3qqvbYlAd6mwgSTK5M/I8sRW8lrpXiw/tRVhPG
	LV8D45eEo+OleCLPgiQW1FE=
X-Google-Smtp-Source: APiQypJ60CTRnyFhHxNvtsWC7PiKP/tV/wmGis619KXFeb2v+xJJp5sliU7HbmSWf4pNHEIFU7Ueyg==
X-Received: by 2002:aca:cf4a:: with SMTP id f71mr29571150oig.111.1589478494224;
        Thu, 14 May 2020 10:48:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:15cb:: with SMTP id j11ls719965otr.10.gmail; Thu,
 14 May 2020 10:48:13 -0700 (PDT)
X-Received: by 2002:a05:6830:1e7c:: with SMTP id m28mr4682737otr.151.1589478493778;
        Thu, 14 May 2020 10:48:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589478493; cv=none;
        d=google.com; s=arc-20160816;
        b=kyWvqpNG0Kuf94Ge3/X1NQk49CGp8H0Wf47hOOPNp3VqAs5vtudKqPcactH5uTTbSV
         +7gTbNTiJh98Na1Xwru1uOgFkjjNlPyjVv+NP+yn8YszvzhUqHkWlyHpDDdxs5RCxbZK
         bBSJTLcbyumzXykSI/6fDhHvMiAxCYwrAVcX4xqIklG9axyn79uX5T3DJpvzxfLiYUmd
         vb12utR3yVG29ezIzmO1UN2I8g/1oTMz7lQRj2FOxxpWivE0th7Mya3YGqiDSBCYv6Rf
         cxRCiYu1UyeuU1UK3cqDnCqbBwCUIEKufajd+6whHH8M2FXsCSAQmIo6AAVLgHwhXOMm
         MZWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=a0d1fR05uC5N0bTQGOD8OPAM3HHdnc9gOnIFkNAWXyA=;
        b=aCwv8308axcoQE33ehr7eWjIYUgtIwE8BTxBlzM0xBX2PI50Sn1Hyrkhx6RJ7X2Bki
         dqkNjKgK4RlhOBOdTSYD1eTrvHud9RQGgw5SbSoU4FU/uo/cmJjLu/g69mYWpuJWSHO0
         nGPp9IX+UjuoPUfL8zx9GWZex1bHerOwqbkfl0UAGUhz0m0dh+dHpVYmZJptktunEHrz
         0skGBCtQKb60fU5WiLmeWGyeQvrD/MivUGUxzorDoWKUkXYWHocA0yoyIVbzMlTUDVoS
         VNkBq0xLyCQwMTpB6DQbhP+JG8Qxl+10c+XWvJ3xhaDAzn4WfCUTC+KMcMZFVONl3Svs
         kTNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cYbSCl8e;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id w1si359227otl.3.2020.05.14.10.48.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 May 2020 10:48:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id 9so1551719pgr.3
        for <clang-built-linux@googlegroups.com>; Thu, 14 May 2020 10:48:13 -0700 (PDT)
X-Received: by 2002:a63:6546:: with SMTP id z67mr4893469pgb.10.1589478492739;
 Thu, 14 May 2020 10:48:12 -0700 (PDT)
MIME-Version: 1.0
References: <CANpmjNNLY9EcSXhBbdjMR2pLJfrgQoffuzs27Xrgx3nOuAUxMQ@mail.gmail.com>
In-Reply-To: <CANpmjNNLY9EcSXhBbdjMR2pLJfrgQoffuzs27Xrgx3nOuAUxMQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 May 2020 10:48:02 -0700
Message-ID: <CAKwvOdnQaeQ2bLqyXs-H3MZTPBd+yteVG4NiY0Wd05WceAad9g@mail.gmail.com>
Subject: Re: ORC unwinder with Clang
To: Marco Elver <elver@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cYbSCl8e;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

+ Josh, Peter

On Thu, May 14, 2020 at 10:41 AM Marco Elver <elver@google.com> wrote:
>
> Hi,
>
> Is CONFIG_UNWINDER_ORC=y fully supported with Clang?

We're down to 4 objtool warnings in an allyesconfig build.  3 I
understand pretty well, and patches exist for them, but I haven't
looked into the 4th yet.  Otherwise it works (to the best of anyone's
knowledge).  Though kbuild test robot has dug up 4 new reports from
randconfigs that I need to look into.

Here's our list of open issues with the objtool label:
https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aopen+is%3Aissue+label%3A%22%5BTOOL%5D+objtool%22

I remember Josh mentioning
https://github.com/ClangBuiltLinux/linux/issues/612 which I haven't
had time to look into.

>
> I'm seeing frames dropped in stack-traces with
> stack_trace_{dump,print}. Before I dig further, the way I noticed this
> is when running the KCSAN test (in linux-next):
>
> CONFIG_KCSAN=y
> CONFIG_KCSAN_TEST=y
>
> The test-cases "test_assert_exclusive_access_writer" for example fail
> because the frame of the function that did the actual access is not in
> the stack-trace.
>
> When I use __attribute__((disable_tail_calls)) on the functions that
> do not show up in the stack traces, the problem goes away. Obviously
> we don't want to generally disable tail-calls, but it highlights an
> issue with the ORC unwinder and Clang.
>
> Is this a known issue? Any way to fix this?

First I've heard of it.  Which functions, and what's the minimal set
of configs to enable on top of defconfig to reproduce?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnQaeQ2bLqyXs-H3MZTPBd%2ByteVG4NiY0Wd05WceAad9g%40mail.gmail.com.
