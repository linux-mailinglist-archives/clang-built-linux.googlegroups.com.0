Return-Path: <clang-built-linux+bncBAABBKOUTPZQKGQE2JNT4BY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 035F717EDE2
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 02:15:23 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id q128sf18533442ywb.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 18:15:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583802922; cv=pass;
        d=google.com; s=arc-20160816;
        b=rFHTo4VpMEBL5LDWQE7GbCJBD2W6ObO/6BnWunqx5zcP47vgL0A0Zi8Ba411Zg1Q9X
         PLKhtX7R+Qnhiy5Tgk/12a8UJMR7ba9zxECr1MdtpGwgiHVdFcRg6U4aFjyi+8SAVhZz
         WiQhoclXooR5OjZ0VRoXeA7Qm88D0P8Jp1hmNUvZEsKkAGDgXXZoyrKmB+iz2hncP9pf
         U9AD9VGPIAFUsVOQxqm7UbTXJal2V3zrDF5IAcrR2x+apY8z4IvfzSguEFcyDu14pi1G
         Mvin6nJvJLNwIzvgFlYb6Kr43kuSJ1uQ4hlI9d7rW2GbtFt843f9hYIKnaT0++UOgwyA
         QLpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=pIVh/HUlIEusAYhdW8qd0aNgoWdcWDYvkBfPH6J3l3g=;
        b=lxtk688XBR1W/KlNhMKX1jtUX6tMDzmYx0dQcLKbrYJ+VCsii/mhixMe0XLIPw8KcT
         tGKpC8L2Q8GrujZd8NemqxRe5KSpMhMEUhsCKgHRTpn8kN91UJwB5r5EszAOAw31oyae
         gxaGgCI0ueZpW3XSjJuLLfKqf+Ba+531+IZvNeAYcHDC0UIzpIFcKpgTIM/oFt6brYtz
         Qy/iSYh+BkR/rh/SfbY0jXgI/HioS/fI7QbKMWeS/bmA5e7lp3aZi2D7XWbaQOiTRgWe
         ddzYHx9nYoPSbpjaQ+EWXvcLhXKcAzPZGjguOyWewX10JFbokO3eECuzJG8t5H0jtqni
         y6KQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=dqkZwqAp;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pIVh/HUlIEusAYhdW8qd0aNgoWdcWDYvkBfPH6J3l3g=;
        b=I0sPHUFS55Y9mXM8L5uBJkoRnJSN2k+MJ5jXUsxdwnYIC0W0u4+M0KlHOzUDTou8v4
         v7PV3qgfPXwl+cSRDXg412m0GqjR1uPasJWPcxxo36t/iJR32hj/fnm1eB6IFuT7bImc
         4Ycxp/Ic1QAGU6xgYwShkYb7O1p4jCr5qiexxZPJAXYXlhLkmAVsF6Q7PaREV4Bi6tGs
         T6fCtSIJUavnBmJKUloc3EqELUQIm7Hw5/Kz2ADryaS4pQwl8ZRuXeGYLibyHm4ui923
         9nDSiGdDHLcZ5PfSla3oZKTvz17VKd6YdF6e2oXl1AKnrpQyLKWZGcgnUlGk6KdOB/0B
         mfqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pIVh/HUlIEusAYhdW8qd0aNgoWdcWDYvkBfPH6J3l3g=;
        b=HRQL0RZP1GInpTHkx+JYfOvYu2LF3J15kuQzZhQnklRLZcP7nf2I5lUf3TMvtiZTeM
         XXnEzpU5tmvaSOUzPAcHsF7/wb5PpA+CKXDQENVojRuIcHLVkKzh1UxcWbO53kl+btlD
         zE7eER1GdLlsQ0YTU+LUfkRHUD5G9QE197GyrhnG1H3IHpCMUyz92eKDvGbkPThpKacX
         xM4nNAQ+V8lVd1NJslHVfC5YXgW/NsaxPIWIj4qwnEiIPZ4T2uCgZzOlAf4XB69VbfM+
         78aBq2F4ZdXpN5hOAJAFdnKpPxuZgrUH400AJ8qHOpX9ZcTPG/AFbuRYgyZ8krlixHBu
         v2RA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0kt8RUks6GOnI/nnADRDZKb8pdyVmePkUIKKIMVySBGvBJAlt2
	2hEhcrUOxlEvLxn55pE/sus=
X-Google-Smtp-Source: ADFU+vvAjP5TLhqF9XHA+c0Olj02K7+LVwsRzKnRqoMetOQTVpz8/Ppe70Io6f+XiSLw68TsldIwYQ==
X-Received: by 2002:a25:320b:: with SMTP id y11mr20148700yby.19.1583802921784;
        Mon, 09 Mar 2020 18:15:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:cb88:: with SMTP id n130ls171824ywd.2.gmail; Mon, 09 Mar
 2020 18:15:19 -0700 (PDT)
X-Received: by 2002:a81:25d6:: with SMTP id l205mr20001929ywl.139.1583802919405;
        Mon, 09 Mar 2020 18:15:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583802919; cv=none;
        d=google.com; s=arc-20160816;
        b=pf9RchMHu3frG8qmWUkX4zmOwT/84W6xPwUwPwnTjTWuDSUpHDwci0cgfJyfMAKe0q
         PS0mxdDBUsv7cTEHRRTYsZn71a1ywZGEg//mOL8Z2j7jxjz9Jbxt3pvYZt5JqNHa9Q+f
         W0HTApABQ8t6z8RBTbZ01JoNuiK69SRvQEvnkZMbjiH0tq1I/sWj5glSfT0OjWmlhRbY
         QYF8FzUwUgH7AQnIIHhNRMssqzGLU8x8p1+KfYE2ZFqMkADdSKFQv93biEA0HAreBeOH
         F5QWkdNP3oA+RYTNTskHlcD5EyRoL6zkyumh26R3Q5Uto/S3+1+JYt7vXRNbS/EujNBZ
         SlFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=x9xblK1uaL7VxqRXLVjd3zu7PY3ClHR/2zhzP8sWvIM=;
        b=UJ6n9+C10mZ4Y7wVxi2oNsSej06/UjYARBSSkL6Lxb7FZ0fNuCiMIjy8mJQCRA4Ilr
         zhii3qFskFaHCSyV34JzaAXv4PUyjGoOpPESWyRW6yPGD6tqjvk9acXe81mQbAKMLdvt
         Kj6cEllQdCUzmKhUQWCqmkfDSiicJwkBaFQ8xvgQgXfcUbHtnh382kRrRIN8GUhOtou1
         ogHEWlvwv3olFhN9o6g5fWkUNqSCmRmL5pMbNiBXH4/hu9PP/oCXPvtPlxCOmKp0C9og
         pp5P3IY+B6UjCH60g3WJYio9P8rfJztidh7dstF3OmuzIgX9Z93V9GgSmWVKcsCTwVFN
         /81g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=dqkZwqAp;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id u7si886323ywg.5.2020.03.09.18.15.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 18:15:19 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 02A1El75032099
	for <clang-built-linux@googlegroups.com>; Tue, 10 Mar 2020 10:14:48 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 02A1El75032099
X-Nifty-SrcIP: [209.85.222.50]
Received: by mail-ua1-f50.google.com with SMTP id o42so4061306uad.10
        for <clang-built-linux@googlegroups.com>; Mon, 09 Mar 2020 18:14:48 -0700 (PDT)
X-Received: by 2002:ab0:25c8:: with SMTP id y8mr11157670uan.95.1583802887267;
 Mon, 09 Mar 2020 18:14:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200309023910.25370-1-masahiroy@kernel.org> <202003091801.6KQQKZ1Y%lkp@intel.com>
 <CAKwvOdksxVa=NGtyT3hsuHg6SJG4CbNWAepf+dxwVDC1+36zyw@mail.gmail.com>
In-Reply-To: <CAKwvOdksxVa=NGtyT3hsuHg6SJG4CbNWAepf+dxwVDC1+36zyw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 10 Mar 2020 10:14:11 +0900
X-Gmail-Original-Message-ID: <CAK7LNATy3Eb9MNFua1N0vjo1Nn7FH5v6do5aU=cufTXvcEq6jw@mail.gmail.com>
Message-ID: <CAK7LNATy3Eb9MNFua1N0vjo1Nn7FH5v6do5aU=cufTXvcEq6jw@mail.gmail.com>
Subject: Re: [PATCH] kbuild: link lib-y objects to vmlinux forcibly when CONFIG_MODULES=y
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "David S. Miller" <davem@davemloft.net>, kbuild-all@lists.01.org,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>, Al Viro <viro@zeniv.linux.org.uk>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        =?UTF-8?B?Ru+/ve+/ve+/vW5nLXJ177+977+977+9IFPvv73vv73vv71uZw==?= <maskray@google.com>,
        Ilie Halip <ilie.halip@gmail.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Michal Marek <michal.lkml@markovi.net>,
        kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=dqkZwqAp;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Hi Nick, David,

On Tue, Mar 10, 2020 at 4:59 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Mar 9, 2020 at 3:55 AM kbuild test robot <lkp@intel.com> wrote:
> >
> > Hi Masahiro,
> >
> > I love your patch! Yet something to improve:
> >
> > [auto build test ERROR on kbuild/for-next]
> > [also build test ERROR on linux/master linus/master v5.6-rc5 next-20200306]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >
> > url:    https://github.com/0day-ci/linux/commits/Masahiro-Yamada/kbuild-link-lib-y-objects-to-vmlinux-forcibly-when-CONFIG_MODULES-y/20200309-115312
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git for-next
> > config: sparc-defconfig (attached as .config)
> > compiler: sparc-linux-gcc (GCC) 7.5.0
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         GCC_VERSION=7.5.0 make.cross ARCH=sparc
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    arch/sparc/lib/strlen.o: In function `strlen':
> > >> (.text+0x0): multiple definition of `strlen'
> >    lib/string.o:string.c:(.text+0x2b0): first defined here
>
> So this looks like a bug in 32b Sparc, that we should fix first.
>
> arch/sparc/lib/strlen.S provides a definition of strlen, but it does
> not define the preprocessor token __HAVE_ARCH_STRLEN to avoid multiple
> definitions from producing a link error.
>
> Or rather, __HAVE_ARCH_STRLEN is provided in include/asm/string_64.h,
> but not for 32b sparc.  arch/sparc/strlen.o is unconditionally
> required in lib-y in arch/sparc/lib/Makefile.
>
> Either:
> 1. arch/sparc/lib/strlen.S supports 32b sparc, then __HAVE_ARCH_STRLEN
> and a forward declaration of strlen should be provided in
> arch/sparc/include/asm/string.h rather than
> arch/sparc/include/asm/string_64.h, or...
> 2. arch/sparc/lib/strlen.S does not support 32b sparc, then the
> inclusion of strlen.o in arch/sparc/lib/Makefile should be predicated
> on CONFIG_SPARC64.
>
> + Dave who maybe can provide guidance on how to proceed?  The use of
> the BRANCH32 macro in arch/sparc/lib/strlen.S seems to have different
> definitions based on CONFIG_SPARC64 vs CONFIG_SPARC32, which makes me
> thing it's case 1 above, but I'm not familiar with Sparc assembly to
> be confident.



I agree.
The former is probably the intention
according to this commit:

commit ae984d72e0632782dd98c3fcf469b9045ad0d449
Author: David S. Miller <davem@davemloft.net>
Date:   Tue Dec 9 01:07:09 2008 -0800

    sparc: Unify strlen assembler.

    Use the new asm/asm.h header to help commonize the
    strlen assembler between 32-bit and 64-bit

    While we're here, use proper linux/linkage.h macros
    instead of by-hand stuff.

    Signed-off-by: David S. Miller <davem@davemloft.net>



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATy3Eb9MNFua1N0vjo1Nn7FH5v6do5aU%3DcufTXvcEq6jw%40mail.gmail.com.
