Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQEQYDZQKGQEPZ6JLFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 041C018761C
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 00:14:10 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id 64sf11307768plf.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 16:14:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584400448; cv=pass;
        d=google.com; s=arc-20160816;
        b=BlyO+Qfjvf7++IqLmVMycMsGN5CwyVQeSKvlgw/uOoajel1gzvsBQscwKZtIfMexOb
         HRFiUfuM/GDkqbh2dKiLOoj8z7ezqjVapI65oUVebY/vf2HR90TTRt2AL/xvXcK//JJO
         ay5Xa70OOFzEgKJGaObtVr64WgoLYLgqAbZaICuqB41euQsRARPl8M7bzNYGj6FTCeHu
         Va6axZWQz7kAfEHK0sh0BouiCehdWm7my9wrQNQ7g0agDIYWP5ZXooEcxa6Dp8ohvW0p
         EJL0SOltSY8i1Z3AmbtfgohizhVBmI+xn+I9BMAdiwY+1Zt0wMf+w6XyLNVJnwhaCyfv
         oEgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ERdIw32JwD0UT7e+iTeMq5oNjIQbpUTjln0EIxxg6wc=;
        b=yfq348HiRR8F898pNgKf++OC8oK3LUN9mwb6Gl5YS+mMroi0yf6JqvaUilmrY+naYf
         ktnQr6L//tacwxI5h8vqsEFmiMxXHwzySKtbmV4m2nLopCPlvjlnQrlLWXMd9OGn0B4t
         i7QYoWyayZq++MLoedraFCZ7echQDO1HbDVa5wvnXKQhC+/AYSxX053PiVSBQfSFWZAs
         k7iKFLCDHoM64W4nEESa/1vqYr+4oylbIzmKYzL6EtCCciZMmpizOdzTL4CukfsiLzfk
         86FW0keYqCvTKABSF4fzYCZU9SdQZ5eX010b+S9o8kX7xWRp6Xrsr5TlJS9R98dLa/D7
         gxVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N1NKpdHl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ERdIw32JwD0UT7e+iTeMq5oNjIQbpUTjln0EIxxg6wc=;
        b=XXCab86exwFPQ05ZvCjPXzGbMni8spY00EctlDn9QQTdKPYZ5wNOiLYvvomhQ65TKN
         vzkx5F9QlkrmTyujOYaQ2qITiGvZRiGQOKM9g6aUH89Nm1INw7N7F9kC0kIzHV72zMAS
         1vH99MUtk85/Bc21+iNYHk6LLEREVBA+qeQbGLYU2/Mbn2J5sGz+aTeBDwjsHm9m0KVh
         ylMwFEVG4di3ZEP2peISVZ5kZKeGXFelBxK/qPxkIOWdIrWVl0ZYIr5LR+VY2Xz0PIh0
         vvmjBB/y6UtWwDIgzu5iVKawBOwKvRGaCw/Zg1uRSRnitu+BjdPlDpYKBgxpmfO9u147
         QD5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ERdIw32JwD0UT7e+iTeMq5oNjIQbpUTjln0EIxxg6wc=;
        b=DsM8v6SWqbwdlKx07yeTGc6T/+mk05F2Hx2Yk1PN8zsm4HWODRszW7Qh6rST2+I8Fo
         itYI+z7ZSbLh8OdX9O/2561RDWM847/Vg78ifZ0A3COIK+LNBQbyKf4c8FObwh+Yvb2X
         N50SugsydFCQ7w/Wt5wB3leL/8u8Hrwc2okArFC7PE0mEnBvJKRSaHV8PXDmh/j5NMiU
         pOUdVhpakld55FOK9Mff7sMZIl1elO6xb6tAEUwaW8sjEEGzbmFm9lPIE20GNW7a0XAk
         +D4xdBLGgcOPd3PhgXMAaDAulT/E0UYizV6gG0BIYo2x1yPhZWdr9Nubx3p6Cp3poWxd
         W/8w==
X-Gm-Message-State: ANhLgQ2Tf5hNG5YobxWGxYLkgX+IeWsB6FGJO0AkB6OR5qqKiU7QQ5Ro
	sTV7/Qg16MSe9R8g0OiAssI=
X-Google-Smtp-Source: ADFU+vskV9aMJhm0VC6VZY2pYfzHY3EPP4Hl1APsnsfuH+hVlZl/8MyaT5ICgO6xXDex7wgTkcOP1w==
X-Received: by 2002:a63:a746:: with SMTP id w6mr2187308pgo.76.1584400448492;
        Mon, 16 Mar 2020 16:14:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd4b:: with SMTP id b11ls7806962plx.4.gmail; Mon, 16
 Mar 2020 16:14:08 -0700 (PDT)
X-Received: by 2002:a17:902:b789:: with SMTP id e9mr393568pls.49.1584400447987;
        Mon, 16 Mar 2020 16:14:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584400447; cv=none;
        d=google.com; s=arc-20160816;
        b=IV0NITWuZDbS/315muvZqSmfldJ9L5/yzsiSBP+WNW/cRIFSOo2Leu4Z5iyH52Tj3j
         o6oeNYBD0iWBWXXlRLVtIDqm77pYspJjqlQUsn76Jlro03SglUcjVofPtqerj3vYTEc7
         3k5i/DuRKWcwqOZpHgRV+WwFmUry/1pHrCFeQT2CthjLCBfCtO4Kmi6Naj1/nmTMIgbl
         DWP+J5WkqEssHtshrHXKDWj19NinvhZa6LTYgRfoDCOVGNn98oXiQHqnk80XFk/s9ZON
         0rz018AozAdAqbPkb7f+zSscTNXqq/29UdvE8Z9M8zb6IwBtpKr1/+NdTX7awuiIdKOp
         KRRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WKhNi3AyDEr1M2ELEjYwXf0ptk3NE9Y1hnct/nl8tYU=;
        b=guu5pSoc0Nifre6JCne3yPOHB+/54jNU/XtwrMr3Tjdu9f2DiQ2vIBh2s/BgWWmROA
         iWtKjPR63txbvGUQAKJyc7M3t+8Ey3pDAeqz5/jvPZGQI/MT/mmVSQrRwTubS3zL/Z34
         m2F0iF5UEctjPl3SWzdNRhlBDwOnd15D5mWNaGlGyIQSyRjnxAy9PLa1mJipn19zAk16
         vXEaqZMYW8YsrnK/QUC7dwtGY2nahtDAcjxGa0Zdyrre6bmx8UFNk3EY4H2SNtLcZXH4
         eAeeummp0gTX9HRJgJC9qOMtGSTzjYgAyi7FbfVN3u7Il6o2z1SIqsYbPdW/fTenqv//
         bacg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N1NKpdHl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id x12si117915plv.3.2020.03.16.16.14.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 16:14:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id u12so10599269pgb.10
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 16:14:07 -0700 (PDT)
X-Received: by 2002:a63:4d6:: with SMTP id 205mr2134957pge.10.1584400447305;
 Mon, 16 Mar 2020 16:14:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200311223725.27662-2-masahiroy@kernel.org> <202003121230.lys3M8E8%lkp@intel.com>
 <CAK7LNARwR5X2C_VzK_3RZo+30Cu3uPuiw-rFUut1j8azLhbxAA@mail.gmail.com>
In-Reply-To: <CAK7LNARwR5X2C_VzK_3RZo+30Cu3uPuiw-rFUut1j8azLhbxAA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Mar 2020 16:13:55 -0700
Message-ID: <CAKwvOdmGh+NkVvf=e1W_ThZ8hW2KFe0R+AJ=-0jJ5FUg4sGoaA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] kbuild: link lib-y objects to vmlinux forcibly
 when CONFIG_MODULES=y
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: inux-mips@vger.kernel.org, Paul Burton <paulburton@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, kbuild-all@lists.01.org, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"sparclinux@vger.kernel.org, David S . Miller" <davem@davemloft.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Ilie Halip <ilie.halip@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=N1NKpdHl;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Wed, Mar 11, 2020 at 11:13 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Hi MIPS forks,
>
>
> I got the following report from 0-day bot.
> Please advise me how to fix it.
>
>
> I am not sure how multi-platform works in MIPS.
>
> The cavium-octeon platform has its own implementation
> of various functions.
>
> So, vmlinux links different library routines
> depending on whether CONFIG_CAVIUM_OCTEON_SOC, correct?
>
>
>
> fw_init_cmdline():
> arch/mips/cavium-octeon/setup.c
> arch/mips/fw/lib/cmdline.c
>
>
> __delay(), __udelay(), __ndelay():
> arch/mips/cavium-octeon/csrc-octeon.c
> arch/mips/lib/delay.S
>
>
> memcpy(), memmove():
> arch/mips/cavium-octeon/octeon-memcpy.S
> arch/mips/lib/memcpy.S
>
>
>
> FWIW, the following fixes the multiple definition errors.
>
>
>
> diff --git a/arch/mips/fw/lib/cmdline.c b/arch/mips/fw/lib/cmdline.c
> index 6ecda64ad184..6ac6e0493e1f 100644
> --- a/arch/mips/fw/lib/cmdline.c
> +++ b/arch/mips/fw/lib/cmdline.c
> @@ -16,6 +16,7 @@ int fw_argc;
>  int *_fw_argv;
>  int *_fw_envp;
>
> +#ifndef CONFIG_CAVIUM_OCTEON_SOC
>  void __init fw_init_cmdline(void)

Alternatively, you could define this fw_init_cmdline as __weak, then
let the strong definition in arch/mips/cavium-octeon/setup.c override
it. But both should work, so:
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Eitherway, octeon has some multiple definition errors that should get fixed.

>  {
>         int i;
> @@ -41,6 +42,7 @@ void __init fw_init_cmdline(void)
>                         strlcat(arcs_cmdline, " ", COMMAND_LINE_SIZE);
>         }
>  }
> +#endif
>
>  char * __init fw_getcmdline(void)
>  {
> diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
> index 479f50559c83..4cc98af4161a 100644
> --- a/arch/mips/lib/Makefile
> +++ b/arch/mips/lib/Makefile
> @@ -3,10 +3,14 @@
>  # Makefile for MIPS-specific library files..
>  #
>
> -lib-y  += bitops.o csum_partial.o delay.o memcpy.o memset.o \
> +lib-y  += bitops.o csum_partial.o memset.o \
>            mips-atomic.o strncpy_user.o \
>            strnlen_user.o uncached.o
>
> +ifneq ($(CONFIG_CAVIUM_OCTEON_SOC),y)
> +lib-y  += delay.o memcpy.o
> +endif
> +
>  obj-y                  += iomap_copy.o
>  obj-$(CONFIG_PCI)      += iomap-pci.o
>  lib-$(CONFIG_GENERIC_CSUM)     := $(filter-out csum_partial.o, $(lib-y))
>
>
>
> On Thu, Mar 12, 2020 at 1:31 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > Hi Masahiro,
> >
> > I love your patch! Yet something to improve:
> >
> > [auto build test ERROR on kbuild/for-next]
> > [also build test ERROR on v5.6-rc5 next-20200311]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >
> > url:    https://github.com/0day-ci/linux/commits/Masahiro-Yamada/sparc-revive-__HAVE_ARCH_STRLEN-for-32bit-sparc/20200312-073459
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git for-next
> > config: mips-cavium_octeon_defconfig (attached as .config)
> > compiler: mips64-linux-gcc (GCC) 9.2.0
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         GCC_VERSION=9.2.0 make.cross ARCH=mips
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    mips64-linux-ld: arch/mips/fw/lib/cmdline.o: in function `fw_init_cmdline':
> > >> cmdline.c:(.init.text+0x0): multiple definition of `fw_init_cmdline'; arch/mips/cavium-octeon/setup.o:setup.c:(.init.text+0xad8): first defined here
> >    mips64-linux-ld: arch/mips/lib/delay.o: in function `__delay':
> > >> delay.c:(.text+0x0): multiple definition of `__delay'; arch/mips/cavium-octeon/csrc-octeon.o:csrc-octeon.c:(.text+0x80): first defined here
> >    mips64-linux-ld: arch/mips/lib/delay.o: in function `__udelay':
> > >> delay.c:(.text+0x10): multiple definition of `__udelay'; arch/mips/cavium-octeon/csrc-octeon.o:csrc-octeon.c:(.text+0x8): first defined here
> >    mips64-linux-ld: arch/mips/lib/delay.o: in function `__ndelay':
> > >> delay.c:(.text+0x50): multiple definition of `__ndelay'; arch/mips/cavium-octeon/csrc-octeon.o:csrc-octeon.c:(.text+0x40): first defined here
> >    mips64-linux-ld: arch/mips/lib/memcpy.o: in function `memmove':
> > >> (.text+0x0): multiple definition of `memmove'; arch/mips/cavium-octeon/octeon-memcpy.o:(.text+0x3a0): first defined here
> >    mips64-linux-ld: arch/mips/lib/memcpy.o: in function `__rmemcpy':
> > >> (.text+0x20): multiple definition of `__rmemcpy'; arch/mips/cavium-octeon/octeon-memcpy.o:(.text+0x3c0): first defined here
> >    mips64-linux-ld: arch/mips/lib/memcpy.o: in function `memcpy':
> > >> (.text+0x80): multiple definition of `memcpy'; arch/mips/cavium-octeon/octeon-memcpy.o:(.text+0x0): first defined here
> >    mips64-linux-ld: arch/mips/lib/memcpy.o: in function `memcpy':
> > >> (.text+0x84): multiple definition of `__copy_user'; arch/mips/cavium-octeon/octeon-memcpy.o:(.text+0x4): first defined here
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
>
>
> --
> Best Regards
> Masahiro Yamada



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmGh%2BNkVvf%3De1W_ThZ8hW2KFe0R%2BAJ%3D-0jJ5FUg4sGoaA%40mail.gmail.com.
