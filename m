Return-Path: <clang-built-linux+bncBCT6537ZTEKRBDFYZ6AQMGQETNQV3RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id E30F6321CFA
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 17:30:04 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id f18sf712899wmq.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 08:30:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614011404; cv=pass;
        d=google.com; s=arc-20160816;
        b=BmXGKodqn7XXZHIihtx72C/G3wzxot+ajQ9l2w9jI2wy1NUJOr714J8on32zJ299A0
         u21lN1Is6iGWlzd6KcoZqXQD6gk/Gx019x91wVos2Q10+ayZEW4g66Ojvg04qp2D0NhU
         LPxCEGT1Slx/e+KWgoJJTLz4wtxUlUayNqOJoIbWVn31mUzB1wQ8Y8cWJDOGhv3UxcHf
         HtU6r3Bu+qKYwEsSyjOtLL+sJp6BbRr9KhNOHDuWQhN0+QZU3MmpEjYuv36V5m7yWMQN
         7qK1SLsKCmh3d4oqc4lGGuR57wyu+nRxVvECW/U2xt0pIPY4185yi86bFR14vVjnARtb
         nFhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=3A9pCIfZAq7yoAFKUquAK8YpxNtZ1iUtqW0j/y5/m5Y=;
        b=FzWWkssd9tmgx8o2XU1rwrwcE0SKmxlfRAvIQDD83Rlm37BVOfkwUrEkA8iHUA/4Pm
         B8NDu8AGcM9q8wWOTyW93loSP7rxAkdsvEE1uq+P9R2/viYrqjg4ihJf1+TM92KuKg6z
         EKiLaLeSF4Ij4tmRQzHS1u3QPB7rynY8QSME3DbGy5Vud/0Jv+zTEwPyr3X+y8rewfMb
         J1sMNdM4vWYh/QuKuCCmJKOKL+7tzd10SQ/3UV9svHgatqa4FoJNd2+fjV4BrE07pgsD
         ObeRnbaOjXNTTXpjfN1ZhA6wTjvtSO3skqnsRYLIqVzWa/ENMTs+CA+/MjppxFbcv1mV
         42kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=FTApkqpO;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3A9pCIfZAq7yoAFKUquAK8YpxNtZ1iUtqW0j/y5/m5Y=;
        b=Ui9357aNPQtyNxTyFkdDXkiUBg7qr9nTOQzViShGnTJNKc1TeiTFHRyPf1bydkzr5h
         UooJYh2flSBvg2IbExGMqjkSbIpvuloervydVkNRSScb98+4bN3cIqOS0nplKOfjWybQ
         u2MEO3OZ8Er8B32ov5Y1GAuOCpE74pyDEfSQ/Yh/7jPj3vMfx2f5mpfiBisCmFUzZBOm
         MlBpaS7CyGNRDPvhCrYqfsdrd3jvD2w/6zzVBzC6T+likUMlu9k8ba9oSS9RZtINS6hh
         d+eP1DXIn3DfevwgkH6wHVoWaSDEIOJVQMWiVbjdA6R57H9aD7/pzz0q3B+8pJvW4nWJ
         7vKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3A9pCIfZAq7yoAFKUquAK8YpxNtZ1iUtqW0j/y5/m5Y=;
        b=DA6FrvZ48WAQIDwTi7ANBnIIQ2W94PStEumThk0R9l9TaBbBAEu3YbsqiIUfgKs9VP
         zxnJ74tFewgZPPyaBpzg2lRRbWKEXoeJdNA736TdoMRAszAJnkRA5Y+BfvT++j4yVo4O
         KLtDGto8P7qXznqe6B8km9QQ7PWylB/lqBZb9O3eMkGJkGFmWLWq27Eqq2PdAq1q7Ula
         ERU9tgNw9TFoo8zTvdfxxvkhlOHG30viIZK7XTDR3o2iAaZ7aL6aep+CS+OIY6RLDmgs
         lQ03K2GF8d3inkRyKtSOvgOrkE55DbiF48QFR6ahtARil7xSW75bP5ogPQjFNGWvxv/t
         VkEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bXEtc3FCIdS1GDvZGj5q9mtNy4AWV7peVqQedGyjPiWJ/lH4l
	zUyVHYbEATznl+5vja06u+0=
X-Google-Smtp-Source: ABdhPJyp8TMaCtyrJDm5RmmWAAPruYgHOo/JBQIQoZRIatGXUSIALX0EoCPE39NY+8+dFJbqbXSVbQ==
X-Received: by 2002:a7b:cd1a:: with SMTP id f26mr3253652wmj.93.1614011404573;
        Mon, 22 Feb 2021 08:30:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5592:: with SMTP id i18ls2022969wrv.2.gmail; Mon, 22 Feb
 2021 08:30:03 -0800 (PST)
X-Received: by 2002:a5d:4b50:: with SMTP id w16mr14242503wrs.34.1614011402243;
        Mon, 22 Feb 2021 08:30:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614011402; cv=none;
        d=google.com; s=arc-20160816;
        b=QPsjS1+Nu90f/H9Ys8aVKnbUW03MXBWTmg6HjL9DyvSFRmdjJ/uzBFaQ2061YpTZ0c
         HKspqkKdrZ80CqRLpeBs4IbTQpOf8J2zSAHBA4MJdYmKrhrK4n2FVYF3pv5UNzghxH4n
         A5OeZqIMIo8GQMpzw1AaZPqWerTJyze7+okCcUeHZMvyyBkhPnvvCB5fy+i1y2rQcKTW
         EwP17dIJHNvyqATbxoXWxqGxiMdK4VRDLNu0n2ai8X7Z3ZSu3YZBwCwk68hHYE4ftU2M
         9aOEiYzU31EWsTQH4QdDuqCjc0IerBScWwt3Vsp8hc5vm4tL+Z53I37jFyqJNjVqHYtH
         yIAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iYFZQhpI9PWFICV4j9Dcg2L4iXOc1SnJH/pDiQOJqnU=;
        b=gK9xs+RhCTDdL8YSXuqJeh+muf2XK+ANnpAmyJq2DZBxW+7jBeBep/KG0dN/vhtVzD
         c4mDDaLRnwGha6tWIRCs8WWOk6zuX4g+nFD/zyRNjoMvAUEaQWb3rMvHvKkwN0fvwjpi
         N9hSRHwIFpgC6oFS/fy0WDPb3SI1HsjW1KtgQwAWXKbJ6ke131ONAOnfOV4MLtB6bUwG
         2N2RZRBTel+kwa02iAs/lXas4hYoof0P/BhSHRjWc/sskNJC0/cbu96MKmSJ/74VluxQ
         zVGoqb4TF8sFCIh4vuzuZFgehSWIgh1zi0UUGVnP3MHqWYmCk2YzTwCYwBz16CoW6ldB
         TpHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=FTApkqpO;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id u1si704659wmj.0.2021.02.22.08.30.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 08:30:02 -0800 (PST)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Received: by mail-ed1-x531.google.com with SMTP id d2so22744168edq.10
        for <clang-built-linux@googlegroups.com>; Mon, 22 Feb 2021 08:30:02 -0800 (PST)
X-Received: by 2002:a05:6402:26c9:: with SMTP id x9mr23507629edd.365.1614011401515;
 Mon, 22 Feb 2021 08:30:01 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYtNOZ-G_RTq_Uedy-7wkFog2q+OWNbWd--eL+i2-OQ7NA@mail.gmail.com>
 <CA+icZUVdpyNC=e8Cdg2bXaKdQGgkY1Te-OEXE7jaKARw0KKrCw@mail.gmail.com>
In-Reply-To: <CA+icZUVdpyNC=e8Cdg2bXaKdQGgkY1Te-OEXE7jaKARw0KKrCw@mail.gmail.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Mon, 22 Feb 2021 21:59:50 +0530
Message-ID: <CA+G9fYvGgR82mwC9Kk6fKR6Cb53u02MQJffBBZ+bTp2nNxHL7A@mail.gmail.com>
Subject: Re: clang-12: i386: Unsupported relocation type: R_386_PLT32 (4)
To: sedat.dilek@gmail.com
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	open list <linux-kernel@vger.kernel.org>, x86-ml <x86@kernel.org>, 
	lkft-triage@lists.linaro.org, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Fangrui Song <maskray@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, linux-stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=FTApkqpO;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Mon, 22 Feb 2021 at 21:44, Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Mon, Feb 22, 2021 at 5:08 PM Naresh Kamboju
> <naresh.kamboju@linaro.org> wrote:
> >
> > While building i386 configs on stable-rc 5.10, stable-rc 5.11 branch
> > and mainline
> > with clang-12 these following warnings and errors were noticed.
> >
>
> Hi Naresh,
>
> Please see commit bb73d07148c405c293e576b40af37737faf23a6a
> ("x86/build: Treat R_386_PLT32 relocation as R_386_PC32").
> Recently accepted into Linus Git tree.

Can this be backported / cherry-picked into stable-rc 5.10 and stable-rc 5.11 ?

>
> [1] says:
>
> Further info for the more interested:
>
>   https://github.com/ClangBuiltLinux/linux/issues/1210
>   https://sourceware.org/bugzilla/show_bug.cgi?id=27169
>   https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6
>
> Hope that helps.
>
> - Sedat -
>
> [1] https://git.kernel.org/linus/bb73d07148c405c293e576b40af37737faf23a6a
>
> > make --silent --keep-going --jobs=8
> > O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp ARCH=i386
> > CROSS_COMPILE=i686-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> > clang'
> >
> > drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2586:9: warning: shift
> > count >= width of type [-Wshift-count-overflow]
> >
> >         return hweight64(VDBOX_MASK(&i915->gt));
> >                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > include/asm-generic/bitops/const_hweight.h:29:49: note: expanded from
> > macro 'hweight64'
> > #define hweight64(w) (__builtin_constant_p(w) ? __const_hweight64(w) :
> > __arch_hweight64(w))
> >                                                 ^~~~~~~~~~~~~~~~~~~~
> > include/asm-generic/bitops/const_hweight.h:21:76: note: expanded from
> > macro '__const_hweight64'
> > #define __const_hweight64(w) (__const_hweight32(w) +
> > __const_hweight32((w) >> 32))
> >                                                                            ^  ~~
> > include/asm-generic/bitops/const_hweight.h:20:49: note: expanded from
> > macro '__const_hweight32'
> > #define __const_hweight32(w) (__const_hweight16(w) +
> > __const_hweight16((w) >> 16))
> >                                                 ^
> > include/asm-generic/bitops/const_hweight.h:19:48: note: expanded from
> > macro '__const_hweight16'
> > #define __const_hweight16(w) (__const_hweight8(w)  +
> > __const_hweight8((w)  >> 8 ))
> >                                                ^
> > include/asm-generic/bitops/const_hweight.h:10:9: note: expanded from
> > macro '__const_hweight8'
> >          ((!!((w) & (1ULL << 0))) +     \
> >                ^
> > drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2586:9: warning: shift
> > count >= width of type [-Wshift-count-overflow]
> >         return hweight64(VDBOX_MASK(&i915->gt));
> >                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > <trim>
> >
> > 32 warnings generated.
> > Unsupported relocation type: R_386_PLT32 (4)
> > make[3]: *** [arch/x86/boot/compressed/Makefile:116:
> > arch/x86/boot/compressed/vmlinux.relocs] Error 1
> > make[3]: *** Deleting file 'arch/x86/boot/compressed/vmlinux.relocs'
> > make[3]: Target 'arch/x86/boot/compressed/vmlinux' not remade because of errors.
> >
> > Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> >
> > Steps to reproduce:
> > ---------------------------
> > # TuxMake is a command line tool and Python library that provides
> > # portable and repeatable Linux kernel builds across a variety of
> > # architectures, toolchains, kernel configurations, and make targets.
> > #
> > # TuxMake supports the concept of runtimes.
> > # See https://docs.tuxmake.org/runtimes/, for that to work it requires
> > # that you install podman or docker on your system.
> > #
> > # To install tuxmake on your system globally:
> > # sudo pip3 install -U tuxmake
> > #
> > # See https://docs.tuxmake.org/ for complete documentation.
> >
> > tuxmake --runtime podman --target-arch i386 --toolchain clang-12
> > --kconfig defconfig  --kconfig-add
> > https://builds.tuxbuild.com/1opxSKxZuRowPsiOsSJ0IoUOXOt/config
> >
> > --
> > Linaro LKFT
> > https://lkft.linaro.org

- Naresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYvGgR82mwC9Kk6fKR6Cb53u02MQJffBBZ%2BbTp2nNxHL7A%40mail.gmail.com.
