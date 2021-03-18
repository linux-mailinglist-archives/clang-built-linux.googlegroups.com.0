Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBIPVZSBAMGQEU3RGBOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FB33404A9
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Mar 2021 12:33:55 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id r1sf2301172pgg.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Mar 2021 04:33:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616067233; cv=pass;
        d=google.com; s=arc-20160816;
        b=YHeMRZKDmhZgnROCXsyVY8Wpj3d+2JYzZHYU+NzOiTYO0Ma1pQh22JJglpErHj8jcW
         HeJZBsznLdU/JQVdvxxebtkGAqNgx+d3sczNA99ytALmBxvxfzJqsoZVD5N23HhP911D
         VcKAM5z4cndjAv63FtnBT8lABYmTk9hrL3oXzZcCSHDCvlzKOERo3SyQz1aRj9FEtIZe
         wAGLgmnr0HdS19EcLLh3TF8lSMw0EE9yIuyMFiBqjL0Ye0pWLWWwk5r6Q8lTENOa5DUG
         SDFQl82/IEbiCXUoS+iH1KSJRIoiQZ3lpFTwzNKP8Ke/yMVW4tRpIuajOkV1NEKS8sUm
         sW8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ElM3moPKZpFDT+ysDioExYJ0woskX70MVeDVqRjdMfo=;
        b=wzqiMfEjtq9UHk7lQfIw6PWvBsH2hDD7SshGxPgVCVAP+MMW5HhVsODt7i27UwozJo
         vFL28mkwUxh+SezzLiBq4E0LR8Fx5m8s4l2qRtHK/9tWefUXpGFKti6y/8V34GWpYIXh
         XURzdgWfHTp3HMy9f1I6Pw8KH0S4Xz4m2EzJ6easYs60ndBUF7x2w0DjCW59+FaHS+SE
         OMVNawWzO/Xi/XeFRF62upOcRW7aNboJBSygPMJ/PLOAY2k6Aq5MWx7XQbT3oNIDWCSR
         exJxN0Fo1StRGYsiTWOEeBeQz4ZHoaNEisKnH1gIoh2spWenHxc492wXCtmHAMxZjxsW
         pu7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sQV1jB+v;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::236 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ElM3moPKZpFDT+ysDioExYJ0woskX70MVeDVqRjdMfo=;
        b=Magx8gp6WEBH0IMd0PZO66SWHBDt0VmDGeidBkIwFI94+T4kQQTTDQ4ww3M+KGiV9F
         aw8SJvcptI0QWVAzzzLjsVYPtVHrc+95saR8cQfDMnnWUwcNtN43WExYGY+9lKUfacyH
         DUQuHDmoQKdkEv2i9a6pxSLfwgDSSvyZXsxAS/Croh//tDh6Yco1cGeiDZSZYZzg7TNm
         tB5bOFAjwe3y+qjq/QGdS90VEbUEH390Uy0OIKTRRiVfveQFNd1JNEZnr0L2RXAhZ4JE
         FYIBuA4VFeu7d6AsZPops1M0w8I+M6A9dZ8PRAO7DJhVhnzHy2cHl9zM35CeXiwA8R59
         pMwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ElM3moPKZpFDT+ysDioExYJ0woskX70MVeDVqRjdMfo=;
        b=DgSuEL9siXicGXCvCZpnSoIqvLQNrHFRdnfShw9by+iT1KBjd9DfCTvhbt3jTGoy+X
         PVrE81Glz9x2VxQIcd7e0UEDwX8xlItHvXTz94eUjFVpaqLzlS9+sQGVnvkh/vMcyPaP
         C1dRBJzNDlBOwRSbMQaogKE9Bb9ImsG9T+OITHdtQ+jlAEuiJRPBOLDSZssnbXJ12qvl
         0fCkwnr9SnPJ11IOSCWaKdg9FMeyEejChIWI1ttu5WOblexeEBjfFeDf6/q2yxVWegZq
         1bb3nKMNoEe6ZOWyX0i0+m45JX0mPlS53JlEc0rWRO1Rp10wxYz8o56VAzmiqlx9EfFV
         A32w==
X-Gm-Message-State: AOAM533+2Fc+7XTS5FwENuU00KksrsCaaQVI0XSgWM+z9GDv2u0V+uWE
	LrTv9E57ayROObpveLfOWQQ=
X-Google-Smtp-Source: ABdhPJz+pTDOn7iFh1Qfim85NdreMwsQSSbme0DS/rUl2TXAhEaUVpAqSqzAyxRIu+au4/EIiFluOQ==
X-Received: by 2002:aa7:8e51:0:b029:1ed:2928:18ff with SMTP id d17-20020aa78e510000b02901ed292818ffmr3611873pfr.76.1616067233807;
        Thu, 18 Mar 2021 04:33:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6a11:: with SMTP id m17ls684461pgu.6.gmail; Thu, 18 Mar
 2021 04:33:53 -0700 (PDT)
X-Received: by 2002:aa7:9a89:0:b029:1f6:26b9:bb73 with SMTP id w9-20020aa79a890000b02901f626b9bb73mr3678113pfi.78.1616067232994;
        Thu, 18 Mar 2021 04:33:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616067232; cv=none;
        d=google.com; s=arc-20160816;
        b=EgOW9yue4MP8jGy60cXJa5kYtqqapA0WWBlpaPl/YNG8AT3Rw22UEpdG5Td3CnyXwA
         y87rxziC6ZjM8YeaiK9+PNlg9gKotV9o2afV90nAsap9JUpznQ/QDsf9r8mHDTGfVwlA
         EmFo7HWpXMSvR9GOfE0tyvSg1heDbAB28idMfzCKr55/8YZXJASwzs8/UBNeyANLXc8p
         0muBqgx5ClCOH3hnHs1e5x8x3igJg7pCXPjprtobhnBsTGE7eC52xQz6ZEDg44nGaBz2
         ZSDwHS9RvDzs3ClvBe6zkHFthzQfYhbEHl+l0+CzPgRANCOkNnekohgfKe+NEzoiX5Yh
         cUjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tln9Cf6YXovRzvCEbIdoWQXhqU5IKqiApXmsrwWqBsk=;
        b=OabqD4N5BloVdTTPxG7ZRmFOAajaMXOJ5w8VQyyoxsBRRs03lvAa5DTN3vNNilfiYU
         /51qlrEGewYnzJXampg0moPgcqKx9QOl4gVVAmxmbJ5iEw4sVapnxldB8i2PzcVQGxod
         2eezJimGHwlxy9irXo9XX6HHGNmrToq9ZAVFWRpwTL1R+nc9VyYyYjjrCDCTzVRdCT9l
         QiENUVN0cJGw64Lg/7XQqyt3HiD1cKfsjMZAyGp0GqzslFdJCgpuk7roRd3uFg/szMpP
         aKZtP9TZIe9T9iJz/1xv+49SN5rdLjRVfhGovpqf23rqqCdflb/nELMPhUF//JjIQ1ze
         QBIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sQV1jB+v;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::236 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com. [2607:f8b0:4864:20::236])
        by gmr-mx.google.com with ESMTPS id r23si84957pfr.6.2021.03.18.04.33.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Mar 2021 04:33:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::236 as permitted sender) client-ip=2607:f8b0:4864:20::236;
Received: by mail-oi1-x236.google.com with SMTP id n140so977995oig.9
        for <clang-built-linux@googlegroups.com>; Thu, 18 Mar 2021 04:33:52 -0700 (PDT)
X-Received: by 2002:aca:bb06:: with SMTP id l6mr2644622oif.121.1616067232234;
 Thu, 18 Mar 2021 04:33:52 -0700 (PDT)
MIME-Version: 1.0
References: <CA+G9fYtZWp4MPs4QmM2gKTZGxX8PNzYRFHDy+zkhVTgOmitr7Q@mail.gmail.com>
In-Reply-To: <CA+G9fYtZWp4MPs4QmM2gKTZGxX8PNzYRFHDy+zkhVTgOmitr7Q@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 18 Mar 2021 12:33:40 +0100
Message-ID: <CANpmjNNYW+xoTbfLfJ_+JtCspb804=R9LJ=z4tSrqTa1NVoY5w@mail.gmail.com>
Subject: Re: next: arm64: compiler_types.h:320:38: error: call to
 '__compiletime_assert_417' declared with attribute error: BUILD_BUG_ON
 failed: KMALLOC_MIN_SIZE > 16 | KMALLOC_SHIFT_HIGH < 10
To: Naresh Kamboju <naresh.kamboju@linaro.org>, glittao@gmail.com
Cc: Linux-Next Mailing List <linux-next@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	lkft-triage@lists.linaro.org, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Borislav Petkov <bp@suse.de>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>, 
	David Rientjes <rientjes@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sQV1jB+v;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::236 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

This is a new test.
+Oliver Glitta, who authored test_slub.c.

On Thu, 18 Mar 2021 at 12:26, Naresh Kamboju <naresh.kamboju@linaro.org> wrote:
>
> While building arm64 kernel modules the following kernel warnings /
> errors noticed on
> linux next 20210318 tag the gcc version is 7.3.0. I will check latest
> gcc version builds
> and keep you updated.
>
>  In file included from <command-line>:0:0:
>  In function 'resiliency_test',
>      inlined from 'test_slub_init' at   lib/test_slub.c:120:2:
>    include/linux/compiler_types.h:320:38: error: call to
> '__compiletime_assert_417' declared with attribute error: BUILD_BUG_ON
> failed: KMALLOC_MIN_SIZE > 16 | KMALLOC_SHIFT_HIGH < 10
>    _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>                                        ^
>    include/linux/compiler_types.h:301:4: note: in definition of macro
> '__compiletime_assert'
>      prefix ## suffix();    \
>      ^~~~~~
>    include/linux/compiler_types.h:320:2: note: in expansion of macro
> '_compiletime_assert'
>    _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
>    ^~~~~~~~~~~~~~~~~~~
>    include/linux/build_bug.h:39:37: note: in expansion of macro
> 'compiletime_assert'
>   #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>                                       ^~~~~~~~~~~~~~~~~~
>    include/linux/build_bug.h:50:2: note: in expansion of macro
> 'BUILD_BUG_ON_MSG'
>    BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
>    ^~~~~~~~~~~~~~~~
>    lib/test_slub.c:101:2: note: in expansion of macro 'BUILD_BUG_ON'
>    BUILD_BUG_ON(KMALLOC_MIN_SIZE > 16 | KMALLOC_SHIFT_HIGH < 10);
>    ^~~~~~~~~~~~
>  make[2]: *** [  scripts/Makefile.build:273: lib/test_slub.o] Error 1
>  make[1]: *** [  Makefile:1980: lib] Error 2
>
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
>
> https://ci.linaro.org/view/lkft/job/openembedded-lkft-linux-next/DISTRO=lkft,MACHINE=juno,label=docker-buster-lkft/984/consoleFull
>
> https://ci.linaro.org/view/lkft/job/openembedded-lkft-linux-next/DISTRO=lkft,MACHINE=juno,label=docker-buster-lkft/984/consoleFull
>
>
> - Naresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNYW%2BxoTbfLfJ_%2BJtCspb804%3DR9LJ%3Dz4tSrqTa1NVoY5w%40mail.gmail.com.
