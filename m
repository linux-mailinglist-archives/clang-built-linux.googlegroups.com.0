Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBDPZTSEQMGQE7HJDJOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8213F82D3
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 09:02:38 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id g17-20020aa781910000b0290360a5312e3esf1066246pfi.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 00:02:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629961357; cv=pass;
        d=google.com; s=arc-20160816;
        b=T5LN80vyypzih1btHgVNRu7Nw/cwZFhCDDqMOLaHg7nQtmsIStH4w2YNEWyQFh7TjA
         BzUhWAIwg1LtFQ7i0MW3m6sAun8WPs6s7kWanMQuJP+lU9Pdo/4xOf25X3FStPYTrnFh
         y6964owjTgE5j6/DtG6yOYhyttFNtJuSpivgTEoIyI01uDQNdZYC6xJNnhWel92NPRnm
         BYCTXe8mu2wAp0YsRGtKawIQsoZFnYSHgF6Z5l7QDi84h1BkKXjs9KB3gNIG75K5Yqy+
         bhrsgQDXbOLUMskWiIQBSZcKibjvAwzKv0SL7x999P4a9VhMX/yuVFgM0kZ92sGkraUE
         LmkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=FOc0bFfPrRm7JeLSe5IfvYoLrGOvhG6tTXOde4SMM4s=;
        b=K68G1nc90NK9zUDQV6nScmNKWBn7eGVZLQUftyz3fQGeHo5zKrieZzqmaQlmRBmfnY
         Fs1Ho99adB1oKwtMwPd4+Lmr+uvWpaA2EW+i9NSeMy0fkW0CYYteWUk6wMuBrzB0Kp7f
         1g73bjYyWdhPxG51OylZjzsbj9Pw8Iz+xYiEGH8k1/aJyY3135Bcd6d9/9toQN2PU7SO
         UewKlH7OC5YHZ9rhuXIeII0aygkGPliQXvxLZQ1/003Wz6jVx+Q6TTSukhuZLCBhgkLN
         Byjxn89t3jWehmdfYep1qRSIIdSPHWlDqTkS/I5V4lJIriUz3c26UW0pFoS1fU+CPwlQ
         Mhlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Boj0nZqw;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FOc0bFfPrRm7JeLSe5IfvYoLrGOvhG6tTXOde4SMM4s=;
        b=AKBBGcfDK4Co2oDqT4MGdGm8u53FAgc9IVl8JP7GCNjc6uv79/HERR7DOu9ZqNt5HQ
         X1ejPFG2NC20NHjvOq6r8TkgU0X79FXcep2JDNlSw3DsKZbXdN0IpmZnbpC9SWjb6xm1
         HSwPmdJUP26xZ0SdCzFMJgP1fLYZlN0tvUkfBF05/6o3LexByhoJUP3HIYHcO2uBQIeX
         2jy2QJbiq1UQ+Bho0rEPRbhfWOowA01FCu+sluMH3xQ582v1V333PQoxRrQjwaK3Gkau
         vEtmddmDQJr/kEiyBmsx8E+ybaM9MbOjk29kSsmQ+2GbP7+nU8zJ0ppI/QT5EnT7zlxx
         HYRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FOc0bFfPrRm7JeLSe5IfvYoLrGOvhG6tTXOde4SMM4s=;
        b=jgvnCJRw6q4JmCkiQPr9zoSA5yU+GvJmGozVyOe9wrPS3mqlX5YbRUR6Y2iKQKLdq6
         jWGfsad4fOOtX/q1EZUCHqc4+xxCIlgNTYvWFsJz6OruLt6GigEnOs9XjkEfoIzekjrZ
         0coLeenRVHxA5o+8tcGt6h4cgZoltSKoiRqUkRxKrl1oVTzA/7yYJart0nsBX4+OeZkW
         Ua6PgvBlgAglM/GmEWaWdAecoWK+7E5Sd3KHtMdmCYv2WPhb/0pcgIWuIH6DlgSDIzd+
         /9GE3OVKtlP6S6RbUG8wyAI1oC0mpzeqReMoPJNa2WnFKSYKo6EMXJyNll9hbXgavS1B
         WAsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZgEMsFZmW6wLscyg3oqOMG08DI/c+NmOI6idcXgOae4ajAS8T
	WKqaJ4FyB8lVQfseKdkoiec=
X-Google-Smtp-Source: ABdhPJzExlrdn/LIsyAA4fXqDf5Kby+KE7lxeSER4ce9YesN0ptv9pRGkfHsU5Chdfv51ev3IZG0gw==
X-Received: by 2002:a17:90a:1991:: with SMTP id 17mr6356482pji.149.1629961357142;
        Thu, 26 Aug 2021 00:02:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4f81:: with SMTP id q1ls2441990pjh.1.gmail; Thu, 26
 Aug 2021 00:02:36 -0700 (PDT)
X-Received: by 2002:a17:90b:240e:: with SMTP id nr14mr2639553pjb.170.1629961356462;
        Thu, 26 Aug 2021 00:02:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629961356; cv=none;
        d=google.com; s=arc-20160816;
        b=zvUSLuv3AIE4JpeYIAtrYnTguTwy9wOYn2Hwbj8Xr7M7GkVbzi1PHLLn4kh4ow0yqX
         uF8y7LvkK8z8xyti95OtbKljqC3TgBM2xjx+FRxIhlVUfeW7jBpIueTsyjKn/Dk+MMLi
         BWwZHRhgLuhXVp7JkRhzCMyfdMN1x0AxEGoMMPc0l07rQhwjySCqvEIlVyXQwVnsQ/8Q
         yN7SfZdi6oEFlBPdfaFz7jA16l5GbUcm1BJ0vemhvYFQVvzEOyMybG0LMGvRJG35DPMe
         fNkDjCEVOzNF6EKx/gM9lccAdDyvUIs/S+k0xnfyf9/Py49p6Gbw4dN6yRMGAazOtLdk
         Iimg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KFymdzLg49y8Vb08mDluN7sO+jRvwqlylmuJJ1iR9jU=;
        b=bd7YqT7Gl3uKj4Px1Lz74uEt5UwYa/H4elkjwL10wRCneCXdzxYeo67dI6/6lTTfaD
         2do/ge2pIP2h2BZTIhsucyhi6mHqMUq752nK2wct/i9JSoqF0pLmOSJc9tbIKsodseYg
         6MgCYzM/r5hht71/FCZfPg/11sGNX+RVIOSBba+HnyD0cNvtYpnY2WWQ/WtyvQfIQw+8
         ivZM7z2Ve9EUOPeY/TdQQfRrS1+pyUV9hF/pRW2npkMleiWaOQ1FsNdHiR3//2q/veZa
         hD9d7SyA297ctr/wUwN5tdhCnw8mTiL7BLbTS0fEJHJ59yJv12qYzfaWSaD6xEkb8hNC
         +4kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Boj0nZqw;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e1si541084pjs.3.2021.08.26.00.02.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Aug 2021 00:02:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 328BE610CE
	for <clang-built-linux@googlegroups.com>; Thu, 26 Aug 2021 07:02:36 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id c19-20020a9d6153000000b0051829acbfc7so2232392otk.9
        for <clang-built-linux@googlegroups.com>; Thu, 26 Aug 2021 00:02:36 -0700 (PDT)
X-Received: by 2002:a05:6830:124b:: with SMTP id s11mr1945378otp.90.1629961355206;
 Thu, 26 Aug 2021 00:02:35 -0700 (PDT)
MIME-Version: 1.0
References: <202108141331.fMjjWaW2-lkp@intel.com> <CAMuHMdXUpk_dLhvcdgs1H6yLPrwXFJz_86dfXpm8PYxNq+DXrQ@mail.gmail.com>
 <CAKwvOd=HkZPN-0k=QYGx6y4q1ig7=8dQY3d_OU10Qp0N__tZcA@mail.gmail.com>
In-Reply-To: <CAKwvOd=HkZPN-0k=QYGx6y4q1ig7=8dQY3d_OU10Qp0N__tZcA@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 26 Aug 2021 09:02:24 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHOC+REy57zXeWzz3P032bD_GvO6JHn=SSWuCXLc0rasA@mail.gmail.com>
Message-ID: <CAMj1kXHOC+REy57zXeWzz3P032bD_GvO6JHn=SSWuCXLc0rasA@mail.gmail.com>
Subject: Re: arch/arm/boot/compressed/fdt_check_mem_start.c:62:10: warning: no
 previous prototype for function 'fdt_check_mem_start'
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, kernel test robot <lkp@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Boj0nZqw;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, 25 Aug 2021 at 19:41, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Sat, Aug 21, 2021 at 1:46 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> >
> > Dear Robot,
> >
> > On Sat, Aug 14, 2021 at 7:43 AM kernel test robot <lkp@intel.com> wrote:
> > > FYI, the error/warning still remains.
> >
> > Yes, and that's fine, as this function is never called from C code,
> > only from assembler.
>
> That's fine, then you can add a prototype to the .c source file.  See
> what we do for stpcpy: 1e1b6d63d6340.
>

We should use 'asmlinkage' for this - we should add it to the
definition of this function, and we should teach the tooling that
'asmlinkage' functions don't need a prototype.

> >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > > head:   dfa377c35d70c31139b1274ec49f87d380996c42
> > > commit: 0673cb38951215060d7993b43ad3c45cd413c2c3 ARM: 9045/1: uncompress: Validate start of physical memory against passed DTB
> > > date:   6 months ago
> > > config: arm-randconfig-r003-20210814 (attached as .config)
> > > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 62df4df41c939205b2dc0a2a3bfb75b8c1ed74fa)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0673cb38951215060d7993b43ad3c45cd413c2c3
> > >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > >         git fetch --no-tags linus master
> > >         git checkout 0673cb38951215060d7993b43ad3c45cd413c2c3
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> arch/arm/boot/compressed/fdt_check_mem_start.c:62:10: warning: no previous prototype for function 'fdt_check_mem_start' [-Wmissing-prototypes]
> > >    uint32_t fdt_check_mem_start(uint32_t mem_start, const void *fdt)
> > >             ^
> > >    arch/arm/boot/compressed/fdt_check_mem_start.c:62:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> > >    uint32_t fdt_check_mem_start(uint32_t mem_start, const void *fdt)
> > >    ^
> > >    static
> > >    1 warning generated.
> > >
> > >
> > > vim +/fdt_check_mem_start +62 arch/arm/boot/compressed/fdt_check_mem_start.c
> > >
> > >     46
> > >     47  /*
> > >     48   * Check the start of physical memory
> > >     49   *
> > >     50   * Traditionally, the start address of physical memory is obtained by masking
> > >     51   * the program counter.  However, this does require that this address is a
> > >     52   * multiple of 128 MiB, precluding booting Linux on platforms where this
> > >     53   * requirement is not fulfilled.
> > >     54   * Hence validate the calculated address against the memory information in the
> > >     55   * DTB, and, if out-of-range, replace it by the real start address.
> > >     56   * To preserve backwards compatibility (systems reserving a block of memory
> > >     57   * at the start of physical memory, kdump, ...), the traditional method is
> > >     58   * always used if it yields a valid address.
> > >     59   *
> > >     60   * Return value: start address of physical memory to use
> > >     61   */
> > >   > 62  uint32_t fdt_check_mem_start(uint32_t mem_start, const void *fdt)
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> >
> >
> > --
> > Gr{oetje,eeting}s,
> >
> >                         Geert
> >
> > --
> > Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
> >
> > In personal conversations with technical people, I call myself a hacker. But
> > when I'm talking to journalists I just say "programmer" or something like that.
> >                                 -- Linus Torvalds
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdXUpk_dLhvcdgs1H6yLPrwXFJz_86dfXpm8PYxNq%2BDXrQ%40mail.gmail.com.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXHOC%2BREy57zXeWzz3P032bD_GvO6JHn%3DSSWuCXLc0rasA%40mail.gmail.com.
