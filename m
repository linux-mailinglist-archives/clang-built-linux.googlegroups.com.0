Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4HA5KEAMGQEV7OH5WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB3F3EDD2A
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 20:37:36 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id q19-20020adfbb93000000b00156a96f5178sf2413780wrg.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 11:37:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629139056; cv=pass;
        d=google.com; s=arc-20160816;
        b=bZjXDZzlVCcS93PlnZtEmfx6ooVc6kphhRbFuNeMrGNbkJVQJKAK1QLxR5DiDhhqvQ
         KhG2c626omb5lCK2T+Nt81giVzVI4nDVctm3H0vmHZGgmYG5EWmfrvvPU+FJK3UIBhqy
         oa0J96FIRviKtXtQvnIhiFtWAFRo614m6hiqdMVtGhnL70ejilj2xsgB0enrWRmD5yS+
         g5LsIMsj2LaBQet1i+6FgiXh31t/5j13JoZxXSZbWXhWaP+M+Bo54WCRwLGIe8XNEknE
         BS0/gPhq4LfLGGTTeFao9jRznwp7lERPD8yjDfa51v1GAK8gqu0OhUVhZzPMTIDbnLsd
         btYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Z2vXEv2RHfg4uT/hGuXIs+BnCja5jDe9Ah1sZe0DB4c=;
        b=fvOasRGDtGtRiUBLKt3TGf0pRvXJ8RtZ6ardq6POIbeUReR+nW7yEWYK/dl3rGJhe+
         3FL7p2+poutYGHL8BX3EBxBLUF9mOEbbNqCRphvjjYH0zBFJyCHycDvV0yVRHqbjHiHI
         9ylz5MWooOMuQ+Cv7Ex2QCEoZPkxtrmnguFGd4GkBP0jYNQihpL5uXecsBFXN3YQHgiZ
         1KtqOBZpna/kocxvjoAKyqGtzRScrmZsX11edNomq8kosmQDNI2R/AE14mOp99RLDYTC
         iAVoUOYijQhQlJafj3OetJ2lZZiInuRiSy6OK+UNik1TYv2bNiEeKaRFtBXShvYFa9El
         fI7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=clzrAfCZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z2vXEv2RHfg4uT/hGuXIs+BnCja5jDe9Ah1sZe0DB4c=;
        b=kOarKpG5XV//tgUyf2Y7tdmU8MFY1Us+6XXIl7R9DcplHOcy78/VzuhELpLvnrM+Ta
         pph1cM6oZTMi0v91w7CcjARfG4Y8SuT0UJuainjkCzTjkByH2/BZVc6AtScxOpVjTghA
         3J4HfCnXWyyBV4xaLgohktkC76WjFfNA9i/2B5yEl161TlXrLS4iiKHDiEuhYhj6nUOt
         DL4WtnRZFkH48Hszt/yP4YE4+0SUO3mpYbSNMtholXQGYmQf/mWZDYUZF2gERazgJois
         Fu/CM3jfz6IOGEqiJYGjfF0Qcc4P9/YJ/X3braaoU2dSimR1OltM9mNNiTylpULB+v7F
         uOzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z2vXEv2RHfg4uT/hGuXIs+BnCja5jDe9Ah1sZe0DB4c=;
        b=K1y94vxPJnrzllzjt9g4Skw93Wg0aqlai8he6bLLe1ajIJqJEthf83KQChO73i1Syj
         X0WqbCKKs5ZlO2TNWN9koC0SiviOCLvvb5zTZ0y5TqLBS/gM1jjW5i4moeZhYidPBlkA
         jUx/4rFk+q2eM3q2yMO9evDwnyQ1R/F+9XKaRil15yw++leNtVRthdOE9rs8KsDwUxlQ
         V2FxjjqeZADHvhUuj9s4SJQft5WkRQP7T2AsUUQlO8zczls4gyxroHsKmID0eEb282m6
         nUQxknqnoWpL+28JiRQS1LxWXjD+JpB3OdibzLa7a3RKv4z5c2SCTEaJN8KdrKy3eJOo
         ZhBg==
X-Gm-Message-State: AOAM530Lf3A///ihDHTo3rCvNQ4OH6wOvD3fRU1BeVdF7Hi7mlr4vIJA
	j7eiqj6MJfpZdIPESCPvp8M=
X-Google-Smtp-Source: ABdhPJzmuxZFMuE/8/KLVvN2jXzfMGMoS7cF0EZpmYQ/oDk9bbpYzTC4E/dOmaa7dEZx11t9qmyeMg==
X-Received: by 2002:a1c:e90a:: with SMTP id q10mr438494wmc.39.1629139056310;
        Mon, 16 Aug 2021 11:37:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5383:: with SMTP id d3ls396604wrv.2.gmail; Mon, 16 Aug
 2021 11:37:35 -0700 (PDT)
X-Received: by 2002:adf:ed50:: with SMTP id u16mr20137852wro.174.1629139055397;
        Mon, 16 Aug 2021 11:37:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629139055; cv=none;
        d=google.com; s=arc-20160816;
        b=zVMOdkDz49//+BTWOWkjm4srGGE+Vu+KKshQfuw/FFCEH0VKPJ9AmBSVn8XhBisyMu
         hIbfvk2gWI+lcmfsocceZJTXbhe/2F7mZW3wXPA3g3Q6cLNDHi2NvqudIZ207XHT/daA
         k38X4/IDzXExUndKNpgfZ1iXdBuTJI5SvG9chTdBTc74vWfDXKa7LdqsmojMiP+6l6Gu
         JyU7UZiw5Ky0gMUtAOxF15XAj8rdBJ4guVdXjudWQ2n7Rb6I9+ld7nX+a0M9/69Dznec
         1GI4+XtZAMLZD0Lk5plFSfbb4ZZEp0vo0llJgaNYwiGFOf/dtxE31fouzvxYYfVO3/iL
         rCPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XndSTNBGC/OVGDPTeJO5zkDBc6MmDsbiG3f/bm1ches=;
        b=gxwiM1E16ksZ9eJ+UEB9wf3tC5/U/yL8r936cdHbcsvYEypWvQRsluHDHKncV6NzRU
         9mL2rpxRuRrfH5x/bHztXp1skDMW/kQD0cSF8A3UkUXNUalPMz+bfrS8fQxlh9RsbPAy
         KkhtPn8TWdnZZUgL3nvkBLiMQOq6WJNOI0e2Zq73B5BItBGtLMRCggni/ivlO++fNEjM
         qtZdYoYrDaXMV3Y/MDP+KyN2pKsDsPRL2xfIuBfbnLJySQQAo9avTcJnpaPU+ZsBqqdl
         gDLJcEFjRrN3ktmR7zI4QHlYoJfggXHtLsm87C0qi2OhwCu/zNPncEw58MiLZ6Hk7AB4
         1fZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=clzrAfCZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id c18si5750wru.3.2021.08.16.11.37.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 11:37:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Received: by mail-lj1-x232.google.com with SMTP id q21so7138910ljj.6
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 11:37:35 -0700 (PDT)
X-Received: by 2002:a2e:9ec1:: with SMTP id h1mr48136ljk.0.1629139054576; Mon,
 16 Aug 2021 11:37:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210810204240.4008685-1-ndesaulniers@google.com> <CA+G9fYtPBp_-Ko_P7NuOX6vN9-66rjJuBt21h3arrLqEaQQn6w@mail.gmail.com>
In-Reply-To: <CA+G9fYtPBp_-Ko_P7NuOX6vN9-66rjJuBt21h3arrLqEaQQn6w@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Aug 2021 11:37:23 -0700
Message-ID: <CAKwvOdkckey1=VUHApTcJYufyhdRJ=jb4qYs52f59g6ha7qphw@mail.gmail.com>
Subject: Re: [PATCH] Makefile: remove stale cc-option checks
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <nathan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, 
	Vitor Massaru Iha <vitor@massaru.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Daniel Latypov <dlatypov@google.com>, linux-kbuild@vger.kernel.org, 
	open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Next Mailing List <linux-next@vger.kernel.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Mark Brown <broonie@kernel.org>, lkft-triage@lists.linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=clzrAfCZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232
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

On Sat, Aug 14, 2021 at 4:02 AM Naresh Kamboju
<naresh.kamboju@linaro.org> wrote:
>
> On Wed, 11 Aug 2021 at 02:12, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > cc-option, cc-option-yn, and cc-disable-warning all invoke the compiler
> > during build time, and can slow down the build when these checks become
> > stale for our supported compilers, whose minimally supported versions
> > increases over time. See Documentation/process/changes.rst for the
> > current supported minimal versions (GCC 4.9+, clang 10.0.1+). Compiler
> > version support for these flags may be verified on godbolt.org.
> >
> > The following flags are GCC only and supported since at least GCC 4.9.
> > Remove cc-option and cc-disable-warning tests.
> > * -fno-tree-loop-im
> > * -Wno-maybe-uninitialized
> > * -fno-reorder-blocks
> > * -fno-ipa-cp-clone
> > * -fno-partial-inlining
> > * -femit-struct-debug-baseonly
> > * -fno-inline-functions-called-once
> > * -fconserve-stack
> >
> > The following flags are supported by all supported versions of GCC and
> > Clang. Remove their cc-option, cc-option-yn, and cc-disable-warning tests.
> > * -fno-delete-null-pointer-checks
> > * -fno-var-tracking
> > * -mfentry
> > * -Wno-array-bounds
> >
> > The following configs are made dependent on GCC, since they use GCC
> > specific flags.
> > * READABLE_ASM
> > * DEBUG_SECTION_MISMATCH
> >
> > --param=allow-store-data-races=0 was renamed to --allow-store-data-races
> > in the GCC 10 release.
>
> [Please ignore this if it is already reported]
>
> Linux next 20210813 tag s390 build failed with gcc-8 but pass with
> gcc-9 and gcc-10.
>
>  s390 (defconfig) with gcc-8 FAILED
>  s390 (defconfig) with gcc-9 PASS
>  s390 (defconfig) with gcc-10 PASS

Thanks for the report. Andrew has dropped the patch from mm-next.
Looks like it's too soon to remove build configuration tests for
-mfentry.

>
> Build error:
> -----------
> s390x-linux-gnu-gcc: error: unrecognized command line option
> '-mfentry'; did you mean '--entry'?
> make[2]: *** [/builds/linux/scripts/Makefile.build:272:
> scripts/mod/empty.o] Error 1
> s390x-linux-gnu-gcc: error: unrecognized command line option
> '-mfentry'; did you mean '--entry'?
> make[2]: *** [/builds/linux/scripts/Makefile.build:118:
> scripts/mod/devicetable-offsets.s] Error 1
> make[2]: Target '__build' not remade because of errors.
>
> Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
>
> Build log,
> https://builds.tuxbuild.com/1wfNcaYbsp29k3RvYuPXzxrM4vs/
>
> metadata:
> --------
>     git_describe: next-20210813
>     git_repo: https://gitlab.com/Linaro/lkft/mirrors/next/linux-next
>     git_short_log: 4b358aabb93a (\Add linux-next specific files for 20210813\)
>     target_arch: s390
>     toolchain: gcc-8
>
>
> Steps to reproduce:
> -------------------
> # TuxMake is a command line tool and Python library that provides
> # portable and repeatable Linux kernel builds across a variety of
> # architectures, toolchains, kernel configurations, and make targets.
> #
> # TuxMake supports the concept of runtimes.
> # See https://docs.tuxmake.org/runtimes/, for that to work it requires
> # that you install podman or docker on your system.
> #
> # To install tuxmake on your system globally:
> # sudo pip3 install -U tuxmake
> #
> # See https://docs.tuxmake.org/ for complete documentation.
>
>
> tuxmake --runtime podman --target-arch s390 --toolchain gcc-8
> --kconfig defconfig
>
>
> --
> Linaro LKFT
> https://lkft.linaro.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYtPBp_-Ko_P7NuOX6vN9-66rjJuBt21h3arrLqEaQQn6w%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkckey1%3DVUHApTcJYufyhdRJ%3Djb4qYs52f59g6ha7qphw%40mail.gmail.com.
