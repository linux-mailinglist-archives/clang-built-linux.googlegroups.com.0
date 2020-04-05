Return-Path: <clang-built-linux+bncBCS7XUWOUULBBX67VH2AKGQE64BXRXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E95819EEB6
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 01:55:13 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id w25sf11858568iom.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 05 Apr 2020 16:55:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586130912; cv=pass;
        d=google.com; s=arc-20160816;
        b=nVvphUirI/YC5RODUUpyGAvKah9Wdz4lqAW6vGmTymADBKFC1bCCA8dqx7ByPbxdwo
         Fjna0Peyh3KSQTey8879BmL9lH5MKC/RCVocMingnVbZ34IeUcSWZVq8UBeaqxlNchnY
         2stw/wiIs0MCARt3qlCmodio8SBHldPRSAyVRNXmlqnH2GuUsi4d67btkXppicDEraYc
         tna6lyZzw+32MgNuc+tS1qnSFsDKcwKKjeSzp7l4wLY9VYjp83gY+oX1d1o4mxwOiLNN
         8vSwpNtw7ak7SmZhCASBcD7V2htP6jQ32oFsBWHdHPpaisc7AEEEbPb9jlCV1umULY2w
         lGfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=aPQi9Y5YPrpN9cUVcdJ451A586fFrncmhRV0ynVuSMM=;
        b=oVHLutr3d1tTe8v08HIabWB6xwzBGTGlV770QaRANwX4RpLyvW+crrSRYZCa3+zktb
         +Brk5qRgMKKSJmfGCkuMofAz/mAsPf2mqoY9E3jzh08EK75FPLZnSvFEaF75U+fIkRSq
         ljhAB1Tsht8B0YLrgVbgyvjJwJgyCaA3iLtA5Y8Im75+0p57doiP1dZ3iuW5JvkC5bB9
         STcOUseyw77/8t+r/z0TnwJ8bnFBZv3x60HeCkXmtu/TQ6dK302HvVLA/axJkBcBTvUo
         es3wJKYj9VR9LnFGyxgieGCgcmJ8vt9yQaaOCCd1ZaCUyXsc74I9vjsclVH0JA8muzQy
         LKLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QacU9d9p;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=aPQi9Y5YPrpN9cUVcdJ451A586fFrncmhRV0ynVuSMM=;
        b=c6I4KSBaOZZPMizGeSBMl5c76WmtaG9YwQFywJQLbIddis85jfXDHBqn/k6gJQyYcc
         5Z/7pYP84waWst/A4ah9G9ym1WKCL4vbQ0iJwKmV4W43YA3jwlBKJGl/hu3/xKpBNfOo
         z51vBMjulFyGNGueWbmaj2PxCpUAmkzl9ex2XdqS6DnmBpaPtd63eimXseAyp40X7WUZ
         FVufmuJLj7U1oMRxZLOngvlA5eHbNF5V7ihjEc/zfgu3reJsH6lN2+mR0sYHKJUT/Dh8
         KYmJLq4RcA9/kMrAIcT4Hv0F9jOJEMIcMipX+SJ8htqOzCebLubc7FyQFzQwVy3nVy6R
         w1hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aPQi9Y5YPrpN9cUVcdJ451A586fFrncmhRV0ynVuSMM=;
        b=HeFW4Qy83dxAnUbX3BtTNZotMfX4evQzv7c6xEfmf52Lpi0ApAeOX4PfDZQWX0Zfz2
         XV6HTeif1IoAt0W9mc3LIX1LpEMM5GG7GQaS5qQvOwcvQMXdMkH+g8iMlDTp3DYcFY4k
         bYYzODVR2AK2G00cjt10vZ/zF1AC7mznBKij/GmjybHkEr//RbIH4MHVNyW9J8mXvB6s
         cFhC/224x0dix1s/Y67J2gaeQjeJZixR35b7IzKtoaclKycLjBFy+ycvubESWPpy3jmo
         tz/Tsddt9z3v5uunQtpIt7v77zqFefvr6KDfqbqS90lw14y+YKobHaYrZTcR9bjyeGyN
         1yDw==
X-Gm-Message-State: AGi0PuYzeTFGwfFTRwZd3BumRm61G58Gw6Z9TjCYVDiOcyuVnP/p9/Yw
	iFPB5mZBcDyty4USKNYpnX8=
X-Google-Smtp-Source: APiQypKGzMBYKRq7AB61AmZ9mrF/3aIJI9YxaJAl6emaY2zXK6vtFE7BVd0NEwdCDnEajrCPqXhs3g==
X-Received: by 2002:a5d:9b0d:: with SMTP id y13mr7673168ion.117.1586130912141;
        Sun, 05 Apr 2020 16:55:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d391:: with SMTP id o17ls7913285ilo.10.gmail; Sun, 05
 Apr 2020 16:55:11 -0700 (PDT)
X-Received: by 2002:a92:8c42:: with SMTP id o63mr17776331ild.189.1586130911489;
        Sun, 05 Apr 2020 16:55:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586130911; cv=none;
        d=google.com; s=arc-20160816;
        b=Pfk3xPUS0Sq96yJKwQMoZIiwUJpo9rrGOf8SzPbtBPgiO05uj4vPOcKu3MOO/XJcrO
         ADsbKrhu1dOsJ7OwfAw7h9D3bEx2U69wnIUELdnTCJk5NUPZTDhsBTyICF4nwvR73vbm
         6GdUHCcLAw2bZv03Pr+1+on4WT0PTOgh9M/XUjoc0RZUKAz9SlixooZQE7VQNSj8wBzd
         yu/fwjZ57YSx1wD+CfmlXe1FogTko6CTu4cBuJcZRn7UfmUHIyGdJ9HXUMMnGb40/Ztl
         TnW6CraqLhanJpfb2OjaElZFhlZQsCQXk8IMKNLQxdf7lMLIzzxHRiR20tsaGksEdh7d
         q7kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5IvCPMwMgCr9TiZep7pvcdmLlTzfKXXbeNVllBb7ZKM=;
        b=vfsY4qe/GuWxmEjV4ORZkqabLgK/TmC2lEun4oR66owzsSf4GuEXHP7HMct2pSkKud
         oqDHHbbsIqwK2rquS1469pbVH+q/Hyd6JSWywni6mOr7Dl1k2m0Otflxn58ORdKVxCwb
         bReUPm4wK1mwIYbfv2Lujv+vUk/U/j72WRLlL5htSgE7h9oubHougTcmXciV0YATSYOz
         tVMeLrNqKb7UBYWQHAnxaLFZLZykM90LfNiGv6cpxcwhJLuBH6UNIFJ1xAyrXv3+X8aP
         qkymgO24A+1Tgw9RDGSQ2ybPHOEUMj6gWuOgObmIDby6yK5w5S3eTagPX8pjMEC3E28p
         KC/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QacU9d9p;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id u6si1043521ili.3.2020.04.05.16.55.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Apr 2020 16:55:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id k191so6663552pgc.13
        for <clang-built-linux@googlegroups.com>; Sun, 05 Apr 2020 16:55:11 -0700 (PDT)
X-Received: by 2002:a63:be49:: with SMTP id g9mr18779316pgo.30.1586130910539;
        Sun, 05 Apr 2020 16:55:10 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id v8sm6477353pfn.213.2020.04.05.16.55.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Apr 2020 16:55:09 -0700 (PDT)
Date: Sun, 5 Apr 2020 16:55:07 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Michal Marek <michal.lkml@markovi.net>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Matthias =?utf-8?Q?M=C3=A4nnich?= <maennich@google.com>,
	Sandeep Patil <sspatil@google.com>
Subject: Re: [PATCH] kbuild: support 'LLVM' to switch the default tools to
 Clang/LLVM
Message-ID: <20200405235507.psjjhqa3cxw57xra@google.com>
References: <20200403051709.22407-1-masahiroy@kernel.org>
 <CAKwvOdnaZ6qDVxaPY-GEH8pdUkzH6eqm16ok9_wzRSVRG-1kiQ@mail.gmail.com>
 <CAK7LNAQybfcYiosNU+ybd-Q7-Y2dbLqBVN2XA00wCRnFAoqdew@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAK7LNAQybfcYiosNU+ybd-Q7-Y2dbLqBVN2XA00wCRnFAoqdew@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QacU9d9p;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-04-06, Masahiro Yamada wrote:
>On Sat, Apr 4, 2020 at 3:24 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>>
>> On Thu, Apr 2, 2020 at 10:17 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>> >
>> > As Documentation/kbuild/llvm.rst implies, building the kernel with a
>> > full set of LLVM tools gets very verbose and unwieldy.
>> >
>> > Provide a single switch 'LLVM' to use Clang and LLVM tools instead of
>> > GCC and Binutils. You can pass LLVM=1 from the command line or as an
>> > environment variable. Then, Kbuild will use LLVM toolchains in your
>> > PATH environment.
>> >
>> > Please note LLVM=1 does not turn on the LLVM integrated assembler.
>> > You need to explicitly pass AS=clang to use it. When the upstream
>> > kernel is ready for the integrated assembler, I think we can make
>> > it default.
>>
>> Having this behavior change over time may be surprising.  I'd rather
>> that if you want to not use the integrated assembler, you explicitly
>> negate it, or just don't use the LLVM=1 syntax, ie. `make CC=clang
>> LD=ld.lld ...`.
>>
>> We could modify how `-no-integrated-as` is chosen when LLVM=1.
>>
>> make LLVM=1 LLVMIA=0 ... # add `-no-integrated-as`
>> # what the flag is doesn't really matter to me, something shorter might be nice.
>> make LLVM=1 # use all LLVM tools
>>
>> Since we got rid of $(AS), it would be appropriate to remove/change it
>> there, since no one really relies on AS=clang right now. (We do have 1
>> of our 60+ CI targets using it, but we can also change that trivially.
>> So I think we have a lot of freedom to change how `-no-integrated-as`
>> is set.
>>
>> This could even be independent of this patch.
>
>
>I also thought a boolean flag is preferred.
>
>AS=clang will not live long anyway, and
>I hesitated to break the compatibility
>for the short-term workaround.
>
>But, if this is not a big deal, I can
>replace AS=clang with LLVMIA=1.

My mere complaint is that it may be difficult to infer the intention (integrated
assembler) from the abbreviation "IA" in "LLVMIA" :/

Something with "AS" in the name may be easier for a user to understand,
e.g. CLANG_AS or LLVM_AS.

>> >
>> > We discussed what we need, and we agreed to go with a simple boolean
>> > switch (https://lkml.org/lkml/2020/3/28/494).
>> >
>> > Some items in the discussion:
>> >
>> > - LLVM_DIR
>> >
>> >   When multiple versions of LLVM are installed, I just thought supporting
>> >   LLVM_DIR=/path/to/my/llvm/bin/ might be useful.
>> >
>> >   CC      = $(LLVM_DIR)clang
>> >   LD      = $(LLVM_DIR)ld.lld
>> >     ...
>> >
>> >   However, we can handle this by modifying PATH. So, we decided to not do
>> >   this.
>> >
>> > - LLVM_SUFFIX
>> >
>> >   Some distributions (e.g. Debian) package specific versions of LLVM with
>> >   naming conventions that use the version as a suffix.
>> >
>> >   CC      = clang$(LLVM_SUFFIX)
>> >   LD      = ld.lld(LLVM_SUFFIX)
>> >     ...
>> >
>> >   will allow a user to pass LLVM_SUFFIX=-11 to use clang-11 etc.,
>> >   but the suffixed versions in /usr/bin/ are symlinks to binaries in
>> >   /usr/lib/llvm-#/bin/, so this can also be handled by PATH.
>> >
>> > - HOSTCC, HOSTCXX, etc.
>> >
>> >   We can switch the host compilers in the same way:
>> >
>> >   ifneq ($(LLVM),)
>> >   HOSTCC       = clang
>> >   HOSTCXX      = clang++
>> >   else
>> >   HOSTCC       = gcc
>> >   HOSTCXX      = g++
>> >   endif
>> >
>> >   This may the right thing to do, but I could not make up my mind.
>> >   Because we do not frequently switch the host compiler, a counter
>> >   solution I had in my mind was to leave it to the default of the
>> >   system.
>> >
>> >   HOSTCC       = cc
>> >   HOSTCXX      = c++
>> >
>> >   Many distributions support update-alternatives to switch the default
>> >   to GCC, Clang, or whatever, but reviewers were opposed to this
>> >   approach. So, this commit does not touch the host tools.
>>
>> update-alternatives assumes you've installed Clang via a package manager?
>> $ update-alternatives --list cc
>> /usr/bin/gcc
>> On my system even though clang and friends are in my PATH.
>>
>> And previously, there was feedback that maybe folks don't want to
>> change `cc` on their systems just for Clang kernel builds.
>> https://lkml.org/lkml/2020/3/30/836
>> https://lkml.org/lkml/2020/3/30/838
>>
>> A goal for ClangBuiltLinux is to build a kernel image with no GCC or
>> binutils installed on the host.  Let the record reflect that.  And
>> there's been multiple complaints that the existing syntax is too long
>> for specifying all of the tools.
>>
>> LLVM=1 is meant to be one flag.  Not `make LLVM=1 HOSTCC=clang
>> HOSTCXX=clang`.  If folks want fine grain flexibility, use the
>> existing command line interface, which this patch does not change.
>> LLVM=1 is opinionated, and inflexible, because it makes a strong
>> choice to enable LLVM for everything.
>>
>> Another reason why I don't want to change these over time, and why I
>> want them all to be in sync is that there are 4 different CI systems
>> for the kernel, and they are currently fragmented in terms of who is
>> using what tools:
>>
>> KernelCI: CC=clang only
>> Kbuild test robot aka 0day bot: CC=clang LD=ld.lld
>> Linaro TCWG: CC=clang only
>> our CI: a complete mix due to combinatorial explosion, but more
>> coverage of LLVM than everyone else.
>>
>> That is a mess that we must solve.  Having 1 flag that works
>> consistently across systems is one solution.  Now if those were all
>> using LLVM=1, but some were enabling Clang's integrated assembler, and
>> some weren't because we changed the default over time, then we'd be
>> right back to this mismatch between systems.  I'd much rather draw the
>> line in the sand, and say "this is how this flag will work, since day
>> 1."  Maybe it's too rigid, but it's important to me that if we create
>> something new to solve multiple objectives (1. simplifies existing
>> interface. 2. turns on everything.) that it does so.  It is a partial
>> solution, if it eliminates some of the flags while leaving others. I
>> want a full solution.
>>
>> If folks want the flexibility to mix and match tools, the existing
>> interface is capable.  But for us to track who is using what, we need
>> 1 flag that we know is not different depending on the cc of the
>> system.  Once clang's integrated assembler is good to go, we will
>> begin recommending LLVM=1 to everyone.  And we want feedback if we
>> regress building the host utilities during a kernel build, even if
>> there are not many.
>>
>> I'm on the fence about having all of the above satisfied by one patch,
>> or taking this patch as is and following up on the above two points
>> (related to disabling `-no-integrated-as` and setting HOSTCC).  I
>> trust your judgement and respect your decisions, so I'll defer to you
>> Masahiro, but I need to make explicit the design goals.  Maybe with
>> this additional context it can help inform the design.
>> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>
>
>Thanks for the comments.
>
>I'd rather want to do this incrementally,
>making sure I am doing right.
>
>
>The meaning of LLVM=1 may change over time.
>It means "the recommended settings" at the moment.
>
>If CI does not want to change the behavior across
>kernel versions, it can pass individual variables
>explicitly.
>
>--
>Best Regards
>Masahiro Yamada
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQybfcYiosNU%2Bybd-Q7-Y2dbLqBVN2XA00wCRnFAoqdew%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200405235507.psjjhqa3cxw57xra%40google.com.
