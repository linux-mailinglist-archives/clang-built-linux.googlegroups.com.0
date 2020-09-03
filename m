Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB2UVYH5AKGQENN3JNJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 527F425B863
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 03:46:20 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id l28sf595872oti.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 18:46:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599097579; cv=pass;
        d=google.com; s=arc-20160816;
        b=RXIttEajrcjKnji48LC+qMW2DccY5LwFe/Mh6Tzt86QFryldhg1BnmMFjl3lMiZ1tA
         a5sCueZKMUca4NA96uzfwxrAo0xM920qNgMCnIUuAXiS9IvLB6JYXoiWogeyD+89iUob
         YE42JS4LEr0pY5YhZ9jXk/SIFdq+ay8wyGfngfCHMntkySgR2o1r5euCoNS1qHusHowd
         4Gbz5sBNYGWu+5sax5+2U+FD4fCWFVekHz8xkpx0bQxvKGEpEDg1zFvUdBo+5q9FIH7P
         Rc+l8PASwRu/abAFLtK0N4FiOyy3lZJx23y/bwELIJma6/44Dwn1HBwM0xV7E2kw1a/k
         EbUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=961VlYNwI0R7FBKZ3QT4Mh+dNR/FzSjatwhItO/UaXA=;
        b=V3yvv47sqpgAPzf9HN8J9GU/5bN5ECh43ZTsnfCJ2bHHCQOnNMQgDhA1GH6cAQZGHF
         udnWZlQcfqt9gSyKLUJ1G9waBdcQ+3Z2+zJU9nh7hjhYW8ngc1Emh42/VNTmtbUKZALQ
         BJEY6Jvsjmx6fGbQ/bo1/NcfA1fqN1janm7dyR6IGnYfIEN0DPbDs+Rf+dvZfYDLplLB
         94lYbxQEUN3zI3GUK8cFGIiAwhtm93CRK/4CzHmNJrz+S4fu0253F6gU6vHVPhU8Ml8/
         aPjIwj+pZ6h5dGfz/OXl3u6xV5miFKU2tMfYeWFigdp7aL4Cz4PQFOc2/rbrQjIc4OEw
         Ptdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1Dit0Ta5;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=961VlYNwI0R7FBKZ3QT4Mh+dNR/FzSjatwhItO/UaXA=;
        b=tTBL/eZb0O/H+s8nLPmS9cQUbxtDXMIG4Scj72oN036p2HuMBncEtaMyZ4pGn5YDNx
         NMA0+oW7yseluY3QfqSQYtjSOFIL/S1EU9o55YW0dQMosrIcJ/O4XsSsC4gUGXo0ewi8
         4u99prpQJHhWqnQtCoSB6cYmf4qA22RWJS5WBwXlwOy21dmNY20LSxjlNgKMgavNiwLS
         U4O3Kp6hAH9It3qcdc8QXnlD0RM771uvZFU/ilSDgI3H7b4dwXfAUmKz+0OinSU5U7/h
         KY/wdjgCbXmijl4pDkeKgrprBXbU5r4zskmVtSwsXFzBtBlX+jU0D1K5Rl5CR7u90pou
         guSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=961VlYNwI0R7FBKZ3QT4Mh+dNR/FzSjatwhItO/UaXA=;
        b=lVked9sesegUUPxo1/dklhkQH9YmoOe4g1r4cD8/0AVtb2INGLnfyD4UwDE5etFbBi
         LCVmdfaSjX8vXQVjWgTG4D3/4zpv+BkFf/G5/hCQTCR2mOlpz/yR2UxdrwHICSSb8kSe
         oNKpATH8dNXXG3lBuQ/k/afGRDFXd6TkptvI7q/wE7NqK9/MvJHKhuBB2av0Iyvon/Q2
         vFV3KMwVL/8XphNEFZEv2rmJRbMMmYil9VE3zAfgHQkF9dUHmLHfAVQZu2ug5bkvSiq7
         Bpd2YjVVWmU5ea6SY2NIdhidZg/FIlSZgR6aWRCBGWK6N7+6PQv0Re63PoPivaxzNAQI
         iWug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322UvVokcNULJa0D1VlGOpavQ1TtyIyPSyK2t2S9JZh4s3aUkz9
	1aL7YPSPcqW+CF8IVxpSQZc=
X-Google-Smtp-Source: ABdhPJyEP2HM6aiYK9CVtFRgNEqMbF5vmfHMErnz64dT4gvIAJwT24r5Poi0lpG/yJxRQ1HGxj8xDQ==
X-Received: by 2002:aca:d885:: with SMTP id p127mr662819oig.1.1599097578920;
        Wed, 02 Sep 2020 18:46:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:bc3:: with SMTP id 61ls1055058oth.0.gmail; Wed, 02 Sep
 2020 18:46:18 -0700 (PDT)
X-Received: by 2002:a9d:7283:: with SMTP id t3mr857072otj.303.1599097578513;
        Wed, 02 Sep 2020 18:46:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599097578; cv=none;
        d=google.com; s=arc-20160816;
        b=cEZJydP2QKMx72EuSolOR+/XQjO+QB/I+2fLG6Gt1K/UCBADTl2m++4uoSuBWZi3nr
         JPTRbBdPAVhD3KQh+a2nnse7QVPsXF9Yb3FvEC8sNaiKQ54mFadB2lkRFsNslI5BSt1m
         EIg20sEqqGjdqmTWbSbp2kBUMOPj9GHJB8NEspH269UECGo275pNk7R4b0InvUD6xcEf
         hdq59B24iEmAqcTSWJCseDKMC5w5KFOpf+FXfzn5ps/NyShMyqd0oaIdd04JAWPr/VcK
         6GlbAX7Mbx61ZBHL/dtjEiMestVjXt8TFFVY1xCtEmNdnm1kv98dvkFcc0YDdk4P+OAe
         Ej1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=1/mxdzsfMle0lQOkE8hY9bEbmZGVcwgm8MgV0/tr0lo=;
        b=KlzfLvTikTdLZp8oMjNftyIXoWtRVUMiT9D71Osl3mt3mobZgyHXUZqav9EzMFw716
         Qzuk0JGs9a7tWV06BeCHdrtrOY8AlTAX8tBENwfQRr3saFWhBcZAIfaqJdlxq2GkeGlX
         jx6ZPjIRKB5BzBg09050m+8RlZtxA3Ctb/Is5Cc6vgC3pjeOJfdPPOUVuAh+oWa/s0mv
         b1oKNKlU9nAYWQ0JGOo2/LEDoLJRHGH4bKZEzYb9hI6n6N0RRRz3rMpVArarQ2etedEp
         W4ziFz7qyseKq+rfVc4mwURhCNPuJ1SHvZ63LGIgWjQ8s3HofR2h6ZB5a8Rrf9j+/VJh
         H6Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1Dit0Ta5;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id 22si71998oiy.5.2020.09.02.18.46.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Sep 2020 18:46:18 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 0831k03b007980
	for <clang-built-linux@googlegroups.com>; Thu, 3 Sep 2020 10:46:00 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 0831k03b007980
X-Nifty-SrcIP: [209.85.215.174]
Received: by mail-pg1-f174.google.com with SMTP id e33so792095pgm.0
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 18:46:00 -0700 (PDT)
X-Received: by 2002:a63:e018:: with SMTP id e24mr693958pgh.175.1599097559845;
 Wed, 02 Sep 2020 18:45:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200820220955.3325555-1-ndesaulniers@google.com>
 <CAK7LNAQO9sKw=7RLPSnsChddrwNCc_si-XgSDQcGHTSxeq4_Pg@mail.gmail.com> <CAKwvOdnbdhkB=OG0Gec5jt5H4b4jRGPvKfgJ-JbZY+gym-u3_g@mail.gmail.com>
In-Reply-To: <CAKwvOdnbdhkB=OG0Gec5jt5H4b4jRGPvKfgJ-JbZY+gym-u3_g@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 3 Sep 2020 10:45:23 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT9KN4dBgyuXqoiFbP_Sa335DahudshJTjcK354=QpBLQ@mail.gmail.com>
Message-ID: <CAK7LNAT9KN4dBgyuXqoiFbP_Sa335DahudshJTjcK354=QpBLQ@mail.gmail.com>
Subject: Re: [PATCH] Makefile: add -fuse-ld=lld to KBUILD_HOSTLDFLAGS when LLVM=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: stable <stable@vger.kernel.org>, Matthias Maennich <maennich@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Stephen Hines <srhines@google.com>, Dan Albert <danalbert@google.com>,
        Fangrui Song <maskray@google.com>, Elliott Hughes <enh@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=1Dit0Ta5;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Sep 3, 2020 at 7:40 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Fri, Aug 21, 2020 at 10:14 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Fri, Aug 21, 2020 at 7:10 AM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > While moving Android kernels over to use LLVM=1, we observe the failure
> > > when building in a hermetic docker image:
> > >   HOSTCC  scripts/basic/fixdep
> > > clang: error: unable to execute command: Executable "ld" doesn't exist!
> > >
> > > The is because the build of the host utility fixdep builds the fixdep
> > > executable in one step by invoking the compiler as the driver, rather
> > > than individual compile then link steps.
> > >
> > > Clang when configured from source defaults to use the system's linker,
> > > and not LLVM's own LLD, unless the CMake config
> > > -DCLANG_DEFAULT_LINKER='lld' is set when configuring a build of clang
> > > itself.
> > >
> > > Don't rely on the compiler's implicit default linker; be explicit.
> >
> >
> > I do not understand this patch.
> >
> > The host compiler should be able to link executables
> > without any additional settings.
>
> Correct; there is no issue linking working executables. The issue is
> which linker is used by default or implied when -fuse-ld=* is not
> explicitly set.
>
> >
> > So, can you link a hello world program
> > in your docker?
> >
> > masahiro@zoe:~$ cat test.c
> > #include <stdio.h>
> > int main(void)
> > {
> >         printf("helloworld\n");
> >         return 0;
> > }
> > masahiro@zoe:~$ clang test.c
>
> It will fail, because:
> 1. clang will implicitly default to ld.bfd on linux hosts and ld on
> OSX hosts (idk about windows).
> 2. ld.bfd is not installed, and we *dont'* want to install it.
> Instead, we *want* to use ld.lld in a hermetic environment.
>
> > If this fails, your environment is broken.
>
> Disagree.  The environment has unique constraints (cross compiling for
> Android from OSX host, caring about builds being hermetic, etc.).
>
> > Just do  -DCLANG_DEFAULT_LINKER='lld'
> > if you know GNU ld is missing in your docker environment.
>
> I understand your point. However, I have two reasons I still think
> this patch should be upstream rather than downstream:
>
> 1. The build of clang that is distributed with Android, "AOSP LLVM"
> [0], does not and cannot yet set `-DCLANG_DEFAULT_LINKER='lld'`.  See
> the discussion in the comments of [1] where I'm trying to do that.
> The reason is that AOSP LLVM is used to build Android userspace,
> kernel, and is part of the NDK for developers to target Android from
> Windows, OSX, and Linux.  If AOSP is used to build a "host binary" on
> OSX, LLD will not work there for that quite yet.  OSX has its own
> linker that is not LLD, and LLD support for mach-o binaries is a work
> in progress.  NDK has their own timeline that's blocking that change.
>
> You might think "that's Android problem" and that we should just carry
> the patch downstream/out of tree since it is somewhat self-inflicted
> but a very important second point why I think this should be upstream:
>
> 2. clang itself (upstream of AOSP LLVM) doesn't yet default to
> -fuse-ld=lld (likely for similar reasons related to OSX).  That means
> distributions of clang-10 from your distro package manager such as
> Debian's apt won't be hermetic.  That means if you build clang from
> source, and don't configure it with -DCLANG_DEFAULT_LINKER='lld', then
> your kernel builds with LLVM=1 will not be hermetic.


I am still not convinced with this.

If you care which linker is internally used,
you can/should set -DCLANG_DEFAULT_LINKER='lld',
and that is what 'configure' exists for.



> That means we
> have to document this somewhere for other people to know or find this.
> That means I have to run around and tell all of the different Kernel
> CI folks about this compiler configuration in order to test
> hermetically.


Is it so important?
This is just host programs we are talking about.

If you really want to ensure lld is used everywhere,
you need to ask any other projects to add -fuse-ld=lld
in their build systems, but it is not realistic.

So, I tend to stick to the default
for host programs.


Your environment is _unique_, at least.

Kbuild provides a way to add extra flags to HOSTCC.

What do you think about doing this?

$ make LLVM=1 HOSTCFLAGS=-fuse-ld=lld


This is documented in Documentation/kbuild/kbuild.rst

HOSTCFLAGS
----------
Additional flags to be passed to $(HOSTCC) when building host programs.






>
> ...
>
> Or, encouraged by the zen of Python, we can just be explicit about
> what linker we want when using LLVM=1, which already signals that that
> is what we want to do.
>
> I think there are similar issues with other distros changing default
> flags of GCC (like -fstack-protector) [2].  The kernel is already
> explicit, so that differences in distro's changes to compiler defaults
> don't matter for kernel builds (except where people accidentally wipe
> out KBUILD_CFLAGS).  I'd argue my change is in the same bucket.
> Please reconsider this patch.
>
> (I should also probably add something like this for `make LD=ld.lld`
> and `make LD=ld.bfd`, regardless of compiler, since everyone supports
> `-fuse-ld=`)
> [0] https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/
> [1] https://android-review.googlesource.com/c/toolchain/llvm_android/+/1007826
> [2] https://fedoraproject.org/wiki/Changes/HardenedCompiler#Detailed_Description
> --
> Thanks,
> ~Nick Desaulniers



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT9KN4dBgyuXqoiFbP_Sa335DahudshJTjcK354%3DQpBLQ%40mail.gmail.com.
