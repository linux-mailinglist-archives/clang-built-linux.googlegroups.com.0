Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBSONVD3AKGQEWD2FU3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id B96031DFD94
	for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 09:48:26 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id z24sf7898491ook.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 May 2020 00:48:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590306505; cv=pass;
        d=google.com; s=arc-20160816;
        b=c74WTshVTX8E2wqoTxv8PzlP2GsdSYYU8jLcO/F11i6nv5WVTMjL9obguISrh3y7yz
         6xux9r/VHW7sLr7g8zmJXuAWJ0fK2ut+WxwUtfo9LlbZHMo0+IwfN2TOsmlQb07Xe8AN
         c2iqISTAh+LJSa/y0AiCMbeY9+z8PXN7jscIJtwNpoM5jGbADiMmayCAi1voOL4Bv/bE
         kcWk2akEv6gFGb1esYJcL5p8eyfFRUgFNALUsX/BmwwC8PqKTFRL6z3vL6DLNBEUNYph
         YriOfcDvMiJV0zLSP0eRq2GRbyI8Jv2C7voMb2HIC/Ufxr/NApvvPOhkRJrIJ0URijri
         PXZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=TbVK6rprEWP2MhgHcCvbqCxAufruR4YIlGUCZPswVFA=;
        b=shUreLkXviNQpWaIvVBfLEqtIE2IfPuJKNQBwEvRoBvcICKxt5t+I3jDduc5gzp2Jl
         xesdB38ePsLoMOVqURLPGrbYy0DaO7CCuYtIxLDKWVax8tEHbD4mmUwhplpNc/rhar/H
         sbmLR7tzQVhKqrgT56sCUggDVud9reG6tErP5SWEBGil2Q3ZLL/CxTLV0B+UgGKZTpL+
         bnOCauNdsPFZztiXLacJmZ+nSBp6fY/RjN5zSDCiA/HHcABL3QaXsV0keW6kswZXtwT9
         E9VJvr9QwvPmvLgdlqW5hAVRZWym4eNKANzGyoRxrc5pJpv6eX617N2D/fTF3Ur+73IU
         8rxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fnfN7GAr;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TbVK6rprEWP2MhgHcCvbqCxAufruR4YIlGUCZPswVFA=;
        b=NIxdF4th3vldDG8ARkey6qOH2a5OwDIAjQbymRHYGpreL2qh98EQbUGtPBPuXwCTQJ
         LxGd4b4BgcVw4LwxKsrOIy9ZSF8miK2Cg6UVNzFUbArL4gPenaQFiEci4pWOLcMTcvjO
         /fayNTeh5lF/qVovmRJ3Qhyd/yaGuQv1K2QRvMw2WO2Tn5kPwFavnCmSNIdrIbX7RyP3
         C3X126OBU29cuG/UqM/5HXyrOikf92jZs137xxlGkQZnVCIXnbTPSoR4cwX+kxb3xNkG
         klPQit10qQV8KShXR0vU8W6/YxUCmWSBahS1LNiYTNf/KX94ngu4F96tRKr82JGNBb4d
         IinQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TbVK6rprEWP2MhgHcCvbqCxAufruR4YIlGUCZPswVFA=;
        b=VOQAwl9s1dVSku+2evWz3HpGIqsupDH7K7qHVlTMkNkXMZIvKY9QDZKnbWKVxS2Mnp
         JJorErJKHLrA0CVtWm1Jv0isMN4/nQLaV6fDXItHCGLi0mWurK0SoZZuRZZXXU3/jCix
         FaipW7yeAU2g87CaliaMn+aj5gxpOhrW2i6A+U2hUNgUvBxcFcjVwU+q7oJBj1wZOq/e
         /yHeap0DJgpl5DEg294oQuiaSvjsHNX5YU7hgF+fnmtm9XK+iF7daErVBqw/aDO70cIE
         eJPApzcc2pIIZkvwH850THuIkQs9oFbRtQKamV3LWjoU+qE8zXgks/zf1MvLhXkW8jNT
         ChEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TbVK6rprEWP2MhgHcCvbqCxAufruR4YIlGUCZPswVFA=;
        b=J/Xo3xEBcQPmDB+uhHm024tmJvgQcJSB9ZZ4+S21g4pX9qYQlXZY7nGZn7A3tUYWcq
         5WKCYlcrtr6vf9umAKN9+6CpdVKZt8pTuQtCwDwmcfF1JRiQTO8KupdQyBmygSwnswnH
         0atSvul/gCqLJ0W9Ww0hsVQ3NqwxmD2vXw4ZU30MF/VZJEZqCzCDy5wBgdxnz/0hadjo
         KDoFARyhQ5GMn3v9FmfxWNl96Hw4F/DasTEKBVqBK8phbqHgMPGPY7/xZnYOAtTqewGE
         gnSGMC9v7Cb2z9rSaSAjq1tDEAjL4fvfkfVNt9DO4kGSPrpnXOnIPP3hsXbqw5lVNwRf
         yRzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Z2YpOVjshMzIo2kddhMW+kI5fQdBiZCRPwHiZemLRNiFs80l/
	WnI2WlXO+eROx/4YkBDGHrg=
X-Google-Smtp-Source: ABdhPJwb+0NaL1ITawhC/E9UoDoLAf5xw6lwaoL7FBDohqO+CDq4muin7m6Q+rATrYC0X4vBzgIrbw==
X-Received: by 2002:a05:6830:1455:: with SMTP id w21mr16267698otp.169.1590306505634;
        Sun, 24 May 2020 00:48:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:61a:: with SMTP id w26ls1114207oti.8.gmail; Sun, 24
 May 2020 00:48:25 -0700 (PDT)
X-Received: by 2002:a9d:6a44:: with SMTP id h4mr17642512otn.287.1590306505275;
        Sun, 24 May 2020 00:48:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590306505; cv=none;
        d=google.com; s=arc-20160816;
        b=IHiPQxTzLccwUXhpk0iC8S9YegY4GBdo6hVMxILV7701DchEoM7+lbQr0xBbsVYAgf
         YtmFbmDZ4Tb7RLcyARO0lIcAH8nAjUF1EbJC4ETAjreHVMZHex1wjBRD+JBN1ehDcYLH
         DB4j/y6CFRfX2AKJexA+xPmpQk3toSQPvWuWa5Kv2Vb5fV+dGndpnUtbpQoF3Y+gS1wW
         dfcMpmCMr3EVRvbfqRQHT6yxJNVUviC9nTH16il3e7HEatKpngD/aabI5mxy1/9RiILq
         EJA5GHEoRe+/QR7EVjvb+XLQjVqaaygZ8lwVLT77qCDBjf48z194dZ6Z/54bvxf/8k2F
         Vdaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lYyxQy2basMHk+ymmytrrORebX9PiLqKXhegfXyfuDw=;
        b=c6QMAo9kAtVzgm76kLIBq08vjBPal7rqczC7haERCItGRkf5U7Gz5ONO/GdIam0K/+
         IaeETzQcK96h2l3pELuwDOa3LPnVes1+hv5aNwq7s+9Q11vU8ZW4kIRTsfk7roDnsuxw
         SL4KH4UzIStTtsyiaPLn4fIZQxLPs3f9fkeJCcOxnx4e8jSschTMnDOkn2UPWEIVvdCJ
         +8qyJsV+YFcHCCmWmfCDOvhdNhLGRYl+S+8JVKjiPqdcMOa0Ih4dY4tK/rZdsVEzoB0N
         3PKQ5jk8zy9jymnbR40hV6xqLQNiUr3tMfktRGlcUDocE67RMt6+Po6L6t661IOaKuD3
         t0mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fnfN7GAr;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id u15si1197723oth.5.2020.05.24.00.48.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 May 2020 00:48:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id s18so1926779ioe.2
        for <clang-built-linux@googlegroups.com>; Sun, 24 May 2020 00:48:25 -0700 (PDT)
X-Received: by 2002:a02:ca18:: with SMTP id i24mr3984955jak.70.1590306504893;
 Sun, 24 May 2020 00:48:24 -0700 (PDT)
MIME-Version: 1.0
References: <10f4fb0b-1012-b0e6-af05-0aa5a906de21@redhat.com>
 <20200520193637.6015-1-ndesaulniers@google.com> <CAK7LNAS_PMz9r3e1UcuM+r18JC2KeM2RqGOms1u3kVzN_N1MmA@mail.gmail.com>
 <CAKwvOd=jOr4ZaLx-dSNTqZnGRATY1PZktUfu4JGWKRwRH=Ujnw@mail.gmail.com> <CAK7LNARofo7wawEF4EcA2-wxnQkKw+WFoJ36EOeYFTUrthRfrA@mail.gmail.com>
In-Reply-To: <CAK7LNARofo7wawEF4EcA2-wxnQkKw+WFoJ36EOeYFTUrthRfrA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 24 May 2020 09:48:13 +0200
Message-ID: <CA+icZUXwNLG3ojWMhTuNkvR0AYtc1+BG6neOLZo56CB7ij01JQ@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile: support compressed debug info
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	Nick Clifton <nickc@redhat.com>, David Blaikie <blakie@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Andrew Morton <akpm@linux-foundation.org>, 
	Changbin Du <changbin.du@intel.com>, Randy Dunlap <rdunlap@infradead.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
	Anshuman Khandual <anshuman.khandual@arm.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fnfN7GAr;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, May 24, 2020 at 5:57 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Fri, May 22, 2020 at 6:57 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Wed, May 20, 2020 at 7:48 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > > Suggested-by: Fangrui Song <maskray@google.com>
> > >
> > >
> > > Suggested-by -> Reviewed-by
> > >
> > > https://patchwork.kernel.org/patch/11524939/#23349551
> >
> > Yes, my mistake.
> >
> > > > Suggested-by: Nick Clifton <nickc@redhat.com>
> > >
> > >
> > > I do not know where this tag came from.
> > >
> > > Nick Clifton taught us the version rule of binutils,but did not state
> > > anything about this patch itself.
> > >
> > > https://patchwork.kernel.org/patch/11524939/#23355175
> > >
> > >
> > > > Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> > >
> > > I do not see the source of this tag, either...
> >
> > Not all contributions to open source need to be in the form of
> > patches.  Both Sedat and Nick gave suggestions which ultimately
> > informed the contents of this patch.  They should be rewarded for
> > their efforts, and incentivized to help improve the code base further.
> > I think suggested by tags are a good way to do that; but if it's
> > against a written convention or if you still disagree, it's not the
> > end of the world to me, and you may drop those tags from the v3.
>
>
> Documentation/process/submitting-patches.rst
> gives the guideline.
>
>
> "A Suggested-by: tag indicates that the patch idea is suggested by the person
> named and ensures credit to the person for the idea. Please note that this
> tag should not be added without the reporter's permission, especially if the
> idea was not posted in a public forum. That said, if we diligently credit our
> idea reporters, they will, hopefully, be inspired to help us again in the
> future."
>
>
> I think this tag should be given to people who
> gave the main idea to come up with
> the main part of the patch.
>
>
> Is that David Blaikie who suggested to
> compress the debug info ?
> If so, definitely he deserves to have Suggested-by tag.
>
> For the others, I do not think Suggested-by is a good fit.
>
> I appreciate their contribution to improve this patch.
> So, maybe you can give credit in other form, for example,
> mention it in the commit log explicitly?
>
> Nick Clifton helped us to provide the minimal binutils version.
> Sedat Dilet found an increase in size of debug .deb package.
>
>
> Thanks.

Hi,

first my last name is Dilek - just for the sake of completeness.
No, it is not my first name as Dilek is a female Turkish first name,
so I do not want to change my gender.

So this discussions come up again and again.

Thus some own words on this - this is my personal opinion.

Like the author of Curl and DOH said at FOSDEM 2019 in Bruessel:
I am doing all this work - first - for myself - in my build and
developing environment.
Very very egoistically!

"Share knowledge aggressively!"
...was Nick's words at First ClangBuiltLinux Meetup in Zurich 2020.
In a 2nd round I share my knowledge and I like this - that's why I am
doing Open Source.

For me it sounds like a "Suggested-by" tag or other credits like
"Reviewed-by" have a higher value than a Tested-by tag.

*** The opposite is the case. ***

Here, I am on a Samsung SandyBridge CPU/GPU aka 2nd generation
ultrabook series runing Debian/testing AMD64.

A slightly modified Debian-kernel linux-config takes me approx. 5 (in
words five) hours of compiling and generating Debian packages.

Plus, testing.
Plus, testing.
Plus, testing.

In Linux-next times I run the whole Linux-Test-Project tests plus some
FIO tests.

Finally, I decide depending from what is new and interesting to me to
attend a full single Linux-kernel release cycle.
The last was Linux v5.3 which was the first release to be
compile/link-able - with no modifications - with LLVM/Clang/LLD v9.0.
For upcoming Linux v5.7 I have built each single RC Linux-kernel and
used it in my daily work!
Since RC1 - for me running on bare metal counts - checking QEMU or
other VM is nice - but showed me that says sometimes nothing.

Plus, I am building llvm-toolchains (LLVM/Clang/LLD) and testing with
them (and report if needed).

"...if we diligently credit our idea reporters, they will, hopefully,
be inspired to help us again in the future."

These are some motivating words...

My Tested-by is like a certificate - like a "Made in Germany" seal :-).

Virtual Greeting from North-West Germany,
- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXwNLG3ojWMhTuNkvR0AYtc1%2BBG6neOLZo56CB7ij01JQ%40mail.gmail.com.
