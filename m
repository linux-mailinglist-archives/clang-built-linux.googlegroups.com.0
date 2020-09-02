Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUN6YD5AKGQE5Z2FC7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 121CF25B67D
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 00:40:19 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id r15sf447740pjo.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 15:40:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599086417; cv=pass;
        d=google.com; s=arc-20160816;
        b=SuoLWcOio/IVkn5DI+qtZzHSH7cVYpr6PYvbh8diq3+P/klEMqhoRF3pVGwSJBn6Ym
         D8AQpioRGDiUPJHUz4tylI9yOYjoCffoUdxG1GQ23KMhYGQ0K3F7thaWjfLW2k+oprF0
         c9Iz8CNzqE3JnrzCBofvuPB0zdxOp8Tkzsab/GNYTG8Usa8DdbUHUWys1HNVQcg2dkfW
         wWgWHgEt2PC3oxSr4rwML6ZA9b5f1vSzGXFl6YmiqNqcTiuvkUUR7tsvjqfXz0qvIefV
         2nEv2KA1txPGoeePnasVEhjuzVoLlS05M9/+WTP0lRihz9cHR5jd2f0TG59nezEhCSx2
         nymA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=j0kH8YQkubzBzeeBeK193aRdhr2l8123iwh16+Die8Q=;
        b=LhNPxK/sa9o6VGX8ovr1AH/YdSfj62ewIk/fWlE/xVq6IMJAdhkAJvN2FzeVav9Bo3
         GOFs+6gYlRlN4uznW669ZGZFajCsj5+tmeuZ9GRJtrmD1iJg41lZ/DWXhXdAIJaw8SkR
         9Trmbj/S8THUy7cBNbuks6RzQp1EoM8Ldq6KX2QPLr3ycpVETeQnGrQH/tPr+WekLBZa
         yTsKZ38NcJcQjGRS4etGtgY/pUhezZl9R6nP+MDY7w+Ks5zBVCh+mzMP4ctKvt2YBrfh
         ej+Tw1oxUmDtwztoPYkKvJRfrwqAu/GhEOUiKX2jt+xY5CL0WyXaEh1fJIfB84dqyvTb
         CCpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rXWlyxq+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j0kH8YQkubzBzeeBeK193aRdhr2l8123iwh16+Die8Q=;
        b=Gwdj75PBLr88+qkXKzyOr4u0nu5XdZ9zn658DRPpqL8wGEPYkXnytZE1m3Kxgw/g+n
         4I0pbtid7e5egCktOIa4zKRtaWT4YSDncvB1IP61JxQ7wvSIbwwbfeRIUpooKhJP3jX2
         ujLd7I1GC9tEUy2ITaUNljTWkbmEClZ8COMKGi49u3V5N6ZSgOB6sqfcRSgHYGs7f/o7
         VcbR4/oDw61gClqts4yQPA9ihLPBYomMiNqmogFi+sTIDeAhcwG94dT52rul7/j55mXy
         XeovI5DYMZxzZZ4gW0XndyneG5EulCEZTl02j41CuSLGonU9X+O8xMCciOzHiAVl+lsc
         OH8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j0kH8YQkubzBzeeBeK193aRdhr2l8123iwh16+Die8Q=;
        b=ZwauB8p5dRseFj7bTiau2X4uKaDcE3AWsAy3Jd9HnbqBPX5X8L6S4JuH2kevaTpaWH
         OW81rQm9DiV6b98RuddTsDcPhyPRqqvZAHurS66PMrHU7zZs1svr3a+cmENaNaeSIzlH
         dIOR5oyP5toSce0PoWBOafFCu/nj93j2EGzFDZDGhfDWkAY9GzMNunMAek/QLDq9yMv+
         3Wx7kBcvYAL9nZM6c6edhnpAZXkUt8A4nFskspvF4IRXYgWh7DzsSUCOdwykKzfbyrai
         93Y5AhC9g/JH53i4DOtR9cb3945CBEFuI4HSjLMGgdTbZILIlT4POcXmdoUEnKbVluya
         yHAQ==
X-Gm-Message-State: AOAM532adut9dbUViL/ISZIOl/55ELlXUpBSZlxia0wFaBGxReqn0TKH
	VXwlBUAooO05CmPJLD3ffA0=
X-Google-Smtp-Source: ABdhPJyTggWPzNBfEYb1ptzH9qj1lsyx+8FO6tO/KQM9p3jZdrrlDsy9sua6NdeIbuX30yRPboWJwg==
X-Received: by 2002:a17:90a:448e:: with SMTP id t14mr3959328pjg.59.1599086417469;
        Wed, 02 Sep 2020 15:40:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7e90:: with SMTP id z138ls1495181pfc.8.gmail; Wed, 02
 Sep 2020 15:40:15 -0700 (PDT)
X-Received: by 2002:a63:1644:: with SMTP id 4mr138717pgw.232.1599086415244;
        Wed, 02 Sep 2020 15:40:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599086415; cv=none;
        d=google.com; s=arc-20160816;
        b=YuUVCl1VIVwUjWo5ldSGRjXbkz0yn72gOoBMomRuEuQbod2xswUe1OtOpJ04O5Gnv5
         hVqV2TA6CiDjPrT5RwaKPyGsZ46048c279NzERCacxgAhegz/g99pymMh85iOQUarOYK
         zz314d3KCD1Q30Y0a+gvZ4APKYmSZlM4HVamUKmRIz1tXTjwSAAeV1zcWD9O2jYVEx/c
         Yb68JigrQsgZEWEWylf4jpbZTFIgghaA88GIVh3EyRhMqHPT7TzXeoJ5ScIQJTUlqY2E
         SMWL3x4peCzkEiP3KW6VF1tL2b8tbFeEd9HAru9JWSeOkix+K/0hOUYp2o/yFmKdYU2v
         xnfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Et/xc2YROl4qNYcn8Qs+aCkZEYKnAaIEsZ0/FKsLWP4=;
        b=YnfPwP/DyylblD8tGRGdY8tJPMEYNkemqgDBbAvVhgoI11o/3AScs0WHRsORfP9q58
         o7NocMZMBdC30HETQj0VXqbfT+6ln7lBr/vQqnxgTcnDWzkLHyDzDqYWfOF1hihlGNR3
         lSH5NAN2VGo5/O7AbvVTQ7bCMwuGXrdUJ+bASB8+gjee6cR1bRrGy5zQssAvy414Mfwq
         Knf95T0zWzKmsLIZ8pD3H+FwIZ52yagGsVvBAsit5izl0goJu3iQqPHsgswcjofwDt3k
         Kt5W1MwXmm56sA0K8SCy6xHHyrz6kouK7uVy3KErHwnjY2GsbEp9a30I7Tt0k8RIZXi5
         +FTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rXWlyxq+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id lb11si209175pjb.3.2020.09.02.15.40.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 15:40:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id gf14so478998pjb.5
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 15:40:15 -0700 (PDT)
X-Received: by 2002:a17:90a:e517:: with SMTP id t23mr3922497pjy.25.1599086414557;
 Wed, 02 Sep 2020 15:40:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200820220955.3325555-1-ndesaulniers@google.com> <CAK7LNAQO9sKw=7RLPSnsChddrwNCc_si-XgSDQcGHTSxeq4_Pg@mail.gmail.com>
In-Reply-To: <CAK7LNAQO9sKw=7RLPSnsChddrwNCc_si-XgSDQcGHTSxeq4_Pg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Sep 2020 15:40:03 -0700
Message-ID: <CAKwvOdnbdhkB=OG0Gec5jt5H4b4jRGPvKfgJ-JbZY+gym-u3_g@mail.gmail.com>
Subject: Re: [PATCH] Makefile: add -fuse-ld=lld to KBUILD_HOSTLDFLAGS when LLVM=1
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: stable <stable@vger.kernel.org>, Matthias Maennich <maennich@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Stephen Hines <srhines@google.com>, 
	Dan Albert <danalbert@google.com>, Fangrui Song <maskray@google.com>, 
	Elliott Hughes <enh@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rXWlyxq+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Fri, Aug 21, 2020 at 10:14 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Fri, Aug 21, 2020 at 7:10 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > While moving Android kernels over to use LLVM=1, we observe the failure
> > when building in a hermetic docker image:
> >   HOSTCC  scripts/basic/fixdep
> > clang: error: unable to execute command: Executable "ld" doesn't exist!
> >
> > The is because the build of the host utility fixdep builds the fixdep
> > executable in one step by invoking the compiler as the driver, rather
> > than individual compile then link steps.
> >
> > Clang when configured from source defaults to use the system's linker,
> > and not LLVM's own LLD, unless the CMake config
> > -DCLANG_DEFAULT_LINKER='lld' is set when configuring a build of clang
> > itself.
> >
> > Don't rely on the compiler's implicit default linker; be explicit.
>
>
> I do not understand this patch.
>
> The host compiler should be able to link executables
> without any additional settings.

Correct; there is no issue linking working executables. The issue is
which linker is used by default or implied when -fuse-ld=* is not
explicitly set.

>
> So, can you link a hello world program
> in your docker?
>
> masahiro@zoe:~$ cat test.c
> #include <stdio.h>
> int main(void)
> {
>         printf("helloworld\n");
>         return 0;
> }
> masahiro@zoe:~$ clang test.c

It will fail, because:
1. clang will implicitly default to ld.bfd on linux hosts and ld on
OSX hosts (idk about windows).
2. ld.bfd is not installed, and we *dont'* want to install it.
Instead, we *want* to use ld.lld in a hermetic environment.

> If this fails, your environment is broken.

Disagree.  The environment has unique constraints (cross compiling for
Android from OSX host, caring about builds being hermetic, etc.).

> Just do  -DCLANG_DEFAULT_LINKER='lld'
> if you know GNU ld is missing in your docker environment.

I understand your point. However, I have two reasons I still think
this patch should be upstream rather than downstream:

1. The build of clang that is distributed with Android, "AOSP LLVM"
[0], does not and cannot yet set `-DCLANG_DEFAULT_LINKER='lld'`.  See
the discussion in the comments of [1] where I'm trying to do that.
The reason is that AOSP LLVM is used to build Android userspace,
kernel, and is part of the NDK for developers to target Android from
Windows, OSX, and Linux.  If AOSP is used to build a "host binary" on
OSX, LLD will not work there for that quite yet.  OSX has its own
linker that is not LLD, and LLD support for mach-o binaries is a work
in progress.  NDK has their own timeline that's blocking that change.

You might think "that's Android problem" and that we should just carry
the patch downstream/out of tree since it is somewhat self-inflicted
but a very important second point why I think this should be upstream:

2. clang itself (upstream of AOSP LLVM) doesn't yet default to
-fuse-ld=lld (likely for similar reasons related to OSX).  That means
distributions of clang-10 from your distro package manager such as
Debian's apt won't be hermetic.  That means if you build clang from
source, and don't configure it with -DCLANG_DEFAULT_LINKER='lld', then
your kernel builds with LLVM=1 will not be hermetic.  That means we
have to document this somewhere for other people to know or find this.
That means I have to run around and tell all of the different Kernel
CI folks about this compiler configuration in order to test
hermetically.

...

Or, encouraged by the zen of Python, we can just be explicit about
what linker we want when using LLVM=1, which already signals that that
is what we want to do.

I think there are similar issues with other distros changing default
flags of GCC (like -fstack-protector) [2].  The kernel is already
explicit, so that differences in distro's changes to compiler defaults
don't matter for kernel builds (except where people accidentally wipe
out KBUILD_CFLAGS).  I'd argue my change is in the same bucket.
Please reconsider this patch.

(I should also probably add something like this for `make LD=ld.lld`
and `make LD=ld.bfd`, regardless of compiler, since everyone supports
`-fuse-ld=`)

[0] https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/
[1] https://android-review.googlesource.com/c/toolchain/llvm_android/+/1007826
[2] https://fedoraproject.org/wiki/Changes/HardenedCompiler#Detailed_Description
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnbdhkB%3DOG0Gec5jt5H4b4jRGPvKfgJ-JbZY%2Bgym-u3_g%40mail.gmail.com.
