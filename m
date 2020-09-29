Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBUOZ35QKGQEJYDFS7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B221F27D683
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 21:12:07 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id j9sf1733498vsf.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 12:12:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601406726; cv=pass;
        d=google.com; s=arc-20160816;
        b=p0rsZE50Hb1WKNIwxp/14oqltr3nKiERKX1F18do7g/z3OHknIryT1r6Pq5Y9ZEyh3
         xnmQzcXeNXayN2hVlJtejl3h7Q4LfIJwAEximEwqyPUyVdQDhC1jG6EN5e7UWhasFhcx
         Og4/sFO2/QCZmPOYuX/nsEDjuV+elEBz37h8Ec8mCYCtrNYX9loIRmP9J7S94yeXQq9W
         4FPvFWUyTDJQkKKWe+tzdSbjhUG+IF/sQbH7CkFHDWm73aXbrOffSVnTKqs2V6TgqjJN
         xxw9D/50sPIjhuHW9D+9/t+XxxQVL8SE45bL9RX7ZGTrKkWGAtwrU2/5/GIlZYFKt0AJ
         rLHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=eqzdk+d0eoLkE8T5jqhi7HitF6MvmM3WVyUjLDHfzsI=;
        b=zu+sO9mUaPg4beeHkEBkYTz27SQrELvDxXwmMOG0PLyScCdCaOKvmpgtLOqXoQ/r9n
         w2cqpXn7EanARZwZA/nJVcNFvevEW7rZxYz5d+Fqdj8eCbh/j/GtIu4gYb0ItWdZCdWQ
         XGg7C2ZOtR7wHi741Jyivo8mUbFv6aTCEQMcY8AICVVCZ3rCNDFsAW0S/8zDBzqFPKO6
         qu/oVbqIU+8NCH1UVVcWYmh2LypxxyatCspQjnOzO7z2Qv226oso+Bt6NK2N5dqAVn9F
         gxJOiCJMtecIqZBea0pWUGUtBsCIUf3wX3NexrWf/MeOuGVGWM+R2rpviNdCNPrndUTH
         CYoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=doBc36xp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eqzdk+d0eoLkE8T5jqhi7HitF6MvmM3WVyUjLDHfzsI=;
        b=dsJFImA83oU/mPGqxZiqHpRF+L3JOzeISfXoKSzoBaj8NXR0R+frvtrIe4rlfH5Z62
         j+ioaGbJYIj7I2I9ZZKNBc9HCsrOM8yaRWMU967jMEFhc6GqilsReGA0TiFU8TJo9X/p
         MaOh4cUjdMIykguM7N0bXfT9/Jlb3H2ACqNBME4U63YjcMxS4m2njxePoOKnPUHDG9yd
         jQEqsVkcDL7S1iRwv5MI9734Uv+yKdCU9LUaick7o/ntpAT9tARHA0aZZHq4dileJIKj
         xzep8J9s2TTbgmtQj7ssomVKJuxiopk0CcRMKgjl8LUIhmf9RaV9Uc/QWvhGLhRhqjlk
         2dOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eqzdk+d0eoLkE8T5jqhi7HitF6MvmM3WVyUjLDHfzsI=;
        b=oVPD4VDcMrBxkB9Mne0yMgZbpb1fwPyVJJTcRtzUGGGiesf0Y3Sl7qmPUCBWXtocH9
         FDm+ZDtVrGLUWzFvW9NQuFLp1P7+ev5b3ps2QqGNPlJMf0Z90XZRmXmDJDL+QUAgHhOr
         z13EQf3DX52+Z+JXy1IIUI5U5oz+al09SPV0OiyTDmmnDYtzaYrc+yiyp4XxXQqvfufQ
         tgbtMgXb5XdDPZ/TPRHWj78SHmw9NS7QJI1rtP4mIrqa16xpC7si15P+XGJGRGwzl9H5
         bJJuhr/3xfMxR21fhTCwDFOxtRBavM5QnrCmE+3zdEIvQUvnd5PBjr7MkhC11LfMPd41
         BOAg==
X-Gm-Message-State: AOAM5310pH0Cdcjs2xMCuDSEjuQxDliWYvh9KLOLHqirw2j3cbApD5Cm
	7t44vetRRCWGKXJhbLd0hfA=
X-Google-Smtp-Source: ABdhPJyroeorEcVvlrTB+ZuNV0Y+cobZ8Xm1/5BGge5sYZC5qILtbvoi75/xiwshDcFn3DC31bd2TQ==
X-Received: by 2002:a05:6102:910:: with SMTP id x16mr4142371vsh.42.1601406726607;
        Tue, 29 Sep 2020 12:12:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e158:: with SMTP id o24ls361509vsl.6.gmail; Tue, 29 Sep
 2020 12:12:06 -0700 (PDT)
X-Received: by 2002:a67:e991:: with SMTP id b17mr4244036vso.16.1601406726104;
        Tue, 29 Sep 2020 12:12:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601406726; cv=none;
        d=google.com; s=arc-20160816;
        b=IbkDh9jzTYpxSjwUA+77YLtiBfLa1TlfGk9pKjc0UDjxIuLlzS6XzL3w/tqRUOA6f2
         qmBaSQv6YCWc+XS92UGvXpv8SK2qbWsWYjArhr8ncc3P1ch5q4hRYqCk8giy3DtEllpP
         XeIaRVzsxbhG7RQU6BvY3vsgsYyPXeIrNoRrNHXjEoh36S7oB2oFeSYFjxCG94ZB1u8L
         MyjAIsWYYovBUZPL6wGFB7j79O2SrzbLMjgX6jWTBbYXv4gVwdOIu6HTPSlPCMiE0zJw
         QDuncIMOPL/O9FFplOddYt41/+fklBhJLVDu/tbwW7cnO9wmzFWuL9Qj9Ou8IaS8hDCK
         U39Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SMM12hjKpM137C5HAYkPhXrTRzJet3Ycgixfk570+jY=;
        b=GrVYhLGrGhmbD9534qcpAhlppS1v8I30NycnXWXJngnm9NQ1GaPaHRyzFYvjOfO0lx
         R+VUF8EJHN1XRlyjX0PBynx4LU22xHuLCa4ovsjjZdN+TkOQLi6P7S+YXi879Z2SHdw6
         YGtgcubA9sw6ylmPa7t+Sevpc+q2Xi55AkFQVPlyMVW9XSvIyDc5/CEyuWDff3E0CwJS
         UVrDFuJ884hSr2XRmRjGZai1MeslMuQHYDYNk82SB60O4NawApqhWJRH/f9MzvYaOSI1
         fens55jBChzOxuox3iNlyk582Pz0ueHjhORfgo9yhuOABBdqDSu9FynxlZcYZmhCEuRe
         6Edg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=doBc36xp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id x127si337473vkc.4.2020.09.29.12.12.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 12:12:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id t7so3193811pjd.3
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 12:12:06 -0700 (PDT)
X-Received: by 2002:a17:90a:cc16:: with SMTP id b22mr5225142pju.32.1601406724986;
 Tue, 29 Sep 2020 12:12:04 -0700 (PDT)
MIME-Version: 1.0
References: <202009262204.3foBZGl2%lkp@intel.com> <CAKwvOdnc9dGor-3FT3DG0U7im7TzR-6u8aHctH+NybA+4i8b9A@mail.gmail.com>
 <202009281901.845F0C551@keescook>
In-Reply-To: <202009281901.845F0C551@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 29 Sep 2020 12:11:53 -0700
Message-ID: <CAKwvOdmYM-qk7Jn6=qZY=bLJJEW=bObEV1HDbhkaGVFTMLQ2Zg@mail.gmail.com>
Subject: Re: [linux-next:master 11142/11173] ld.lld: warning:
 arch/arm/built-in.a(kernel/elf.o):(".discard.ksym") is being placed in '".discard.ksym"'
To: Kees Cook <keescook@chromium.org>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=doBc36xp;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Mon, Sep 28, 2020 at 7:05 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, Sep 28, 2020 at 02:10:39PM -0700, Nick Desaulniers wrote:
> > On Sat, Sep 26, 2020 at 7:07 AM kernel test robot <lkp@intel.com> wrote:
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > head:   20dc779fdefc40bf7dd9736cea01704f29228fae
> > > commit: ebf18610b8fcacb3bb5c147e4256d05711c55bf2 [11142/11173] Merge branch 'akpm-current/current' into master
> > > config: arm-randconfig-r022-20200925 (attached as .config)
> >
> > ^ randconfig
> >
> > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a83eb048cb9a75da7a07a9d5318bbdbf54885c87)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install arm cross compiling tool for clang build
> > >         # apt-get install binutils-arm-linux-gnueabi
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=ebf18610b8fcacb3bb5c147e4256d05711c55bf2
> > >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > >         git fetch --no-tags linux-next master
> > >         git checkout ebf18610b8fcacb3bb5c147e4256d05711c55bf2
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > >    ld.lld: warning: lld uses blx instruction, no object with architecture supporting feature detected
> > >    ld.lld: warning: lld uses blx instruction, no object with architecture supporting feature detected
> > >    ld.lld: warning: init/built-in.a(main.o):(".discard.ksym") is being placed in '".discard.ksym"'
> >
> > Hi Kees, did your orphan section placement series explicitly add .discard.ksym?
>
> The DISCARDS macro includes .discard.* so something Funny(tm) must be
> going on here. However, in looking closely here, I think this is actually:
>
>         ".discard.ksym"
>
> not:
>
>         .discard.ksym
>
> so it's yet another double-quote issue.
>
> $ git grep '__section("'
> arch/arm64/mm/mmu.c:u64 __section(".mmuoff.data.write") vabits_actual;
> include/linux/compiler.h:       __section("___kentry" "+" #sym ) \
> include/linux/export.h: static int __ksym_marker_##sym[0] __section(".discard.ksym") __used
> include/linux/srcutree.h:               __section("___srcu_struct_ptrs") = &name
>
> I think compiler.h isn't wrong, but the others are...

https://github.com/ClangBuiltLinux/linux/issues/1166
https://lore.kernel.org/lkml/20200929190701.398762-1-ndesaulniers@google.com/T/#u


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmYM-qk7Jn6%3DqZY%3DbLJJEW%3DbObEV1HDbhkaGVFTMLQ2Zg%40mail.gmail.com.
