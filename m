Return-Path: <clang-built-linux+bncBCT6537ZTEKRBRHAUCFAMGQEADI7YFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 35534410FAC
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Sep 2021 08:55:01 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id j6-20020aa7de86000000b003d4ddaf2bf9sf14697679edv.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Sep 2021 23:55:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632120901; cv=pass;
        d=google.com; s=arc-20160816;
        b=OlutoNz+k+DOg7C1jsBA8mNbjcagtnfJ4IZyYYX7cwx2+iyYbAqe60zGT0nJ5YMduF
         o/TZjUeyLd6ssfPuBWg+ylzFkhXCsBrjaNd9cVC08gy8bhdo4Vkh4CGyfC6msv+/qtEc
         rCOnc9e+kisSuYUi/h2AkFif7x7SRrPjyzaCO/qqEbEPHpjAVdOUS+H9q3EKCVyUK7B8
         jLBlJgSXj6aLn+6W9YtPmPIbOv7AFY34AePbWR4V8GKQ1fKpEVFuMhDdQEgV2NkEPUGW
         lA7nr/fiRterzSsLdneEIlbprAZT6KsAfS/pj30ZqFdpLEN7N5d/2D5ygtkKtMck0xki
         q2Kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=/aOOzb3HC8J2o4v6n0wJ9hc4kI2j3I4hJzfid7vfFdE=;
        b=EN9Jau0Sbw/mNV3tnMrIxASCiZkIVnfL7sP7pdd8Uyehf+fe2iNc4VQdbrwVtUUO18
         ApiKZwWw7D2uXjQ35gNJFGOEcLE7HNbGB/v+hASFQNBbsXI+LTwTswtAYja+W9QRE4z7
         LbWYrbRggIdPksc/7lgZtagbTQCBl0V/C4Fbg4kK4PkC3fIeNSrifY5RbYi6TCWiYmjX
         Iy8m84uEG/CG6yMakKbLfv+H86eOw9epGpk9eg9SJt8YPQy11lo24FZLnx4dyex1E/7D
         TXYIo3NKHaZxxFzPNrMWTmVEhM9tytyxxxzmdW4KlHVIAXwxwfoc07+jEwMaOjGIk2ZO
         4ZCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=czLC+Ngk;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/aOOzb3HC8J2o4v6n0wJ9hc4kI2j3I4hJzfid7vfFdE=;
        b=pGFFt+zv9cyAkVeJJ54zg7oZDZAT5BNaNB9ZsAARIlhm0dWd8KOhYFaIhQnGnKDtLr
         5jEarkCboyC8IOeqFDeFN/so0B2pEGMe8S7nKhX9UYPZqbYrEuprX8LNAhOHEApsK6VW
         vA8BBLIlD5eB2GInRFfj9B2qBzcBk/LyhlICtsZQS8YfUU5GckiKe989AvRnKJ2APXfq
         q8bhKazAT3eQ3L9X6tg0cEoTT7zqgX8+0di8m+TAVyI3FkYMR88lzTZXcWl5scXP1Wox
         GmLPv96OnK7UhVysAGeFhxcrl7OSJ/oJZ4I+ch3XkiInjc/Eorg8QsocqeDKi02c3f8V
         TuIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/aOOzb3HC8J2o4v6n0wJ9hc4kI2j3I4hJzfid7vfFdE=;
        b=ARJ1+BfgHDlcywm5yOdbJMj/ZG15r8RSM6QJclGFB+Fr0M0fy/nVVtdEd2jJqWcbMc
         JJ3iblwDaQk0QLsvz0vpkoMRD+gvdiCNqEpRY/hyQjbrzhTpD0caHMLkV2n547SjKL3N
         uGOfRJFhAMP8WmX+GglwYLrEDDjBBxB48nqck6UlwSOMkgaChjHpjfJgCceACgU/QPQm
         lLXpJ6Laz6uuHH5P9Su3JFuOugpUdIuK95CcKLaAN2XzoZzlvxVRh3HB+pylY3GXWcn/
         NwHgHCNcACd92u77PPy3ajqzozzoXzke/dkYHid7n6d3CONdnNMmYaU5PckckVzGq3ld
         anOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ntdOlXiNr7MAw7jOAn9m64PiftBcgULiv9sRhhGmW3gwpzj1V
	x/AAzDqtrRQ0PQ8FGFLLiZM=
X-Google-Smtp-Source: ABdhPJzrbc/QMytkhHjaTOCyGsuc5/54A33F1O7ZtfqluKf3doTMiaIkOhQq3Gz9DPo2j4LqX22kQw==
X-Received: by 2002:a17:907:98a5:: with SMTP id ju5mr25227529ejc.378.1632120900951;
        Sun, 19 Sep 2021 23:55:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:18c:: with SMTP id r12ls1072258edv.3.gmail; Sun, 19
 Sep 2021 23:55:00 -0700 (PDT)
X-Received: by 2002:aa7:cdc8:: with SMTP id h8mr27779574edw.272.1632120900088;
        Sun, 19 Sep 2021 23:55:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632120900; cv=none;
        d=google.com; s=arc-20160816;
        b=qr3gpdw6/oyaK+fTglQAKwWflZWYLFLszQcqFkGn3mM62vbV2gG1NcG3Xw+x8Fx3sA
         tH/78dJpGeXtBezBDCGpTXxMuQge0VGd/XoLfZrip2np+yKvUfO2KUV1jP8sSTpaq5V3
         WhYw9cyI44N/HQO+vZId0nOO2LkxV6myzupMBa7qv0zWKu0Y05Q8/5EgYSe1mrxa5U+C
         LPNd9GKP5bHOY8JNwt3R1BtaJAAOmjHH88isD2qVlqomKf0WgS0Xl1h3xUPMFsLhk/jS
         J299Lbw9B4vvxX8sQp6plCwo40lygqsPU8B4pWv3dsd5st/vWtac6mvvwNIKi3wGTxWq
         nKCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VCi78mN2x2kHh1l5Km4KZVKR5L77ZE21c4hjNnlzASE=;
        b=fKt+qhI49S4xQI6EqIg3cf2/2Ulm9ZDw7YhmCTHciWQmCB2ussPp4Lnv3QvzJWUhLx
         oqj/qy3spTNxHxZTR+3o/+Ewxmwckx3a5y7/1v1p3asaz7JdmPj68ApweB3EqkLq8xJF
         q/VTt5H9KmqN05dSOU+P53zvT909LWba07WHkzHZvW+RZOJdBzwMhXZW7a7y69IykNnC
         Xw5KneG5tZ4eA2fCGUDOu9Bta60QSR48FMSm7E+ImT9wBJDffdscfH0zjDTf1GyuykpY
         dyk8MqOcmL09m/bf7isVpBmG1TeqLhILRBcAXo4cgRq+N4DrG8YSBLrQhnQM4oeetaXR
         xYgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=czLC+Ngk;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com. [2a00:1450:4864:20::536])
        by gmr-mx.google.com with ESMTPS id 14si930326edv.4.2021.09.19.23.55.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Sep 2021 23:55:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::536 as permitted sender) client-ip=2a00:1450:4864:20::536;
Received: by mail-ed1-x536.google.com with SMTP id h17so57285602edj.6
        for <clang-built-linux@googlegroups.com>; Sun, 19 Sep 2021 23:55:00 -0700 (PDT)
X-Received: by 2002:aa7:d1d3:: with SMTP id g19mr26462988edp.103.1632120899694;
 Sun, 19 Sep 2021 23:54:59 -0700 (PDT)
MIME-Version: 1.0
References: <CA+G9fYvoyDqbCnmcVMHCO3Zxn9=FGTjyTH9u=7FT7rCz-dh6JA@mail.gmail.com>
 <YUgDV31uzAQy5IcN@archlinux-ax161>
In-Reply-To: <YUgDV31uzAQy5IcN@archlinux-ax161>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Mon, 20 Sep 2021 12:24:48 +0530
Message-ID: <CA+G9fYv-EHy3-+ALV3Ev0k6J=e0_y7Xm2KgGFuE4XXFHp5EazA@mail.gmail.com>
Subject: Re: x86_64: clang-10: <instantiation>:2:2: error: unknown use of
 instruction mnemonic without a size suffix
To: Nathan Chancellor <nathan@kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, llvm@lists.linux.dev, 
	open list <linux-kernel@vger.kernel.org>, X86 ML <x86@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=czLC+Ngk;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

Hi Nathan,

On Mon, 20 Sept 2021 at 09:13, Nathan Chancellor <nathan@kernel.org> wrote:
>
> Hi Naresh,
>
> On Mon, Sep 20, 2021 at 08:55:46AM +0530, Naresh Kamboju wrote:
> > [Please ignore this email if it is already reported ]
> >
> > Following build warnings/ errors noticed while building linux mainline
> > master branch
> > with clang-10 for x86_64 architecture.
> > But clang-11, clang-12 and clang-13 build pass.
> >
> > <instantiation>:2:2: error: unknown use of instruction mnemonic
> > without a size suffix
> >  lsl %rax, %rax
> >  ^
> > <instantiation>:1:1: note: while in macro instantiation
> > LOAD_CPU_AND_NODE_SEG_LIMIT %rax
> > ^
> > <instantiation>:2:2: note: while in macro instantiation
> >  GET_PERCPU_BASE %rax
> >  ^
> > /builds/linux/arch/x86/entry/entry_64.S:887:2: note: while in macro
> > instantiation
> >  SAVE_AND_SET_GSBASE scratch_reg=%rax save_reg=%rbx
> >  ^
> > make[3]: *** [/builds/linux/scripts/Makefile.build:379:

> Thanks for the report. This is another case where the implicit switch to
> the integrated assembler exposed a previously fixed issue in LLVM:
>
> https://github.com/ClangBuiltLinux/linux/issues/1079
>
> This cannot be fixed in the LLVM 10 branch as it is no longer updated so
> if you want to keep testing with clang-10 for x86_64 on mainline, please
> add 'LLVM_IAS=0' to your make command like we did in our own CI.

We will update our gitlab pipeline CI configs with 'LLVM_IAS=0'.

>
> As a quick aside, would you mind updating my email address in your
> system for reports to nathan@kernel.org? It will ensure it gets sent to
> the correct inbox so that I do not miss things, as I do not use my
> personal address for kernel development anymore.

Noted.

- Naresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYv-EHy3-%2BALV3Ev0k6J%3De0_y7Xm2KgGFuE4XXFHp5EazA%40mail.gmail.com.
