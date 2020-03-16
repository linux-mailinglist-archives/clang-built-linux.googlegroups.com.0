Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOESYDZQKGQEQNVVZ5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 71065187626
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 00:18:17 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id t12sf11978227oih.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 16:18:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584400696; cv=pass;
        d=google.com; s=arc-20160816;
        b=aHAFkwriYiadQUfjC74rl8FN8kmNAXcv4EiH8xD/xkoWZDQZ8Hq3qYaudMUIGsDYFX
         v7nAOfS+1mF0mxaZoMQUCKyv6CkBWRcLjatVFLMAajwbNFzo8X5p/aPc+wt3pbf0oez3
         AtMEF6Lm0oeKSh1H9c53s95LWltZFi16d3JdxDJlf4qsFdbc+irxqLm0lpUXsAtLk0gM
         5DRoq82cFAUiP4NkrFM6X15WcS0dHHN/iCCQMIUXK5FHX5NwyFHs+s5botr6DmfQH5+9
         MzTb7B7KnNtmlwR8P/BFpwrXy5QDtELk4jQ1FCtUrEMgyI9Zw8yDeWraU5dHP9iMRf9s
         5Elg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=u25cd+5bo4LAobrvwploxMrQGV4zV37TViqO2j/PIPY=;
        b=I3ddfDfxAGYXuA7HqtQL/WAQ9H+7NxC0h1LNapAwZ6kHP8FwzyLH6cGIUHSaTBS4CY
         wxQMzTq2AajNJuaTMQWniFFzStLDd7MWS5/uLeoZ/ICzQ2G+Ce0gOFZgHAPyrheuGq4k
         JVF4y3PAkOUUZXgM0b0MYAKVo0tk25ix/r3LwOjQa0WCzSo4gEOk2RBuWhhU8KQ6pOHH
         0bscNSbhvH/iP+LHklkA/fqAMDniPiniOb5V2x4vKd7MrGKTczm3Jie7Igq49iD6Sh6m
         vxMfhUsciKBu1QHYcWDEGW3zBD3fOzS3P4rGbHlbDrO+7nBndBvcWvtnqf1KLo+4RkjF
         +mxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MmUkFgM4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u25cd+5bo4LAobrvwploxMrQGV4zV37TViqO2j/PIPY=;
        b=ZKAGtY3RHUB8UEJq+RwnDpC6pDnFcWvYjbkn5pi6WPE2NMsz5yUGLxe/dP8A6XiN0/
         LlvVX28LkKyA4exTeCRA5+1UBmK9Mta9CuetEchEoP3ufCZtV9QGzFwckM9pRqaRP6sz
         gwdJCKw2QZpaXyHCZt+sjofSn++rl/q7DRzxT/RAVRw9LVf933taKEeMgGFfjQ+hVx9w
         ic2H9RRwqJ3I5Jcx9DlFHZ+rbOrNFRZtFQ38HKFvRpPixGq8qmrQiegzxLSIRGWZDFHc
         +iRZNzu19sETKfVZ9xFKmnLDEticxk27ohoqj0uaRqVFJkmJRx06adimyFichEbFKBbJ
         AkTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u25cd+5bo4LAobrvwploxMrQGV4zV37TViqO2j/PIPY=;
        b=gytzx2TsRT/PphAcKNNx18PTwB389m9Gg2znR3eNOgi4zba35XeIJoOXU82Pp7lLg8
         xDXBPI5A3UAfW38dejDjH3U7u56y/zNcj5AeNOVz5SxkIfle+hAdzFYkkzxz4AcfRgJS
         B/tANGSdXI5YttKsa+cdESB4DBsf1rPy/jXmLVaCTNx6DZ7+kjoeM4TJtFkpIMxm7gts
         dY7ouv6SFgLllANB0Kep/D/+FRtxuXUhLeEnrAi6QXgElBYbobMgCMLPdDKsV2e1NCk4
         T+zUJTSMPfzNtiDmTpEyF8KcJMFVKoryv001z9R2dd4aRLz0dlkcxr0ohJguu1wW+ETg
         hEzg==
X-Gm-Message-State: ANhLgQ3ae/6EbEhbqXJM57I9sINJaM3LuTM7b0BBfhdr31HMAZ2lWqlo
	AMjSj6vX6tbMNk94AOkGY5c=
X-Google-Smtp-Source: ADFU+vvpB2bHJH+XIMHxqTVmQFfsCgjnGBsLwkEUWEh05KztgRJvjucbCVsWDuHMgWqUnB6X2G88/g==
X-Received: by 2002:aca:1108:: with SMTP id 8mr1411178oir.93.1584400696406;
        Mon, 16 Mar 2020 16:18:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:508d:: with SMTP id e135ls6178823oib.5.gmail; Mon, 16
 Mar 2020 16:18:16 -0700 (PDT)
X-Received: by 2002:a54:4416:: with SMTP id k22mr1467704oiw.167.1584400696008;
        Mon, 16 Mar 2020 16:18:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584400696; cv=none;
        d=google.com; s=arc-20160816;
        b=D9KtGdpLc5vhMn/VcVd7R4MbG0/OsfGCwLIbosgk2Aczfoqu6CGxNsZaMbIw7CDn8U
         ZDd3qWAAI1L5zT1HnBzsqUPzUBhkKdWfZ1qWvRO/8zQNP5MfpOKuba8y+MwbZe0eh3oF
         rwSFZhmK/JS39VwMI8OSLjXCrwDm7mQG13JGPYXoAXHaSha3PhX6Vl9JkYT8tX1oY8pE
         mLByjrqgb9XAFQCyU+MDgQrrc+9UIowBae7ENpwsVKkHMquqTc+A/ZDZopFZTNkeWJfB
         nwzjrrL5c9a7sf7ceDEUbA8VN52hyYLJmQyDV1G3lHo+cDAxFvvlI6yZNFojZ+gdficr
         QjFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3FIhTFNcgat7mhCmnlEZ3vIzM5FnCV33yV9BtfaIwq8=;
        b=n7l331aIOyZIIF1SuEzyzryIsa6Eli1XEwqLZD2AAiLACiSk2uDUYYuClNPWVZKKhk
         2A7ny+VJs4DLcsSfZTZJI+W2H+HYrY/iTSVp1ZSB7IGVM2uPNteQqN9hbWQaw8GVkyiv
         TDuzJa7Z5E2F/AyHa1QSG9JxkjSXgu2rHWdqABo8LXI/FYMeD8u6SDR0nvBcRKpuF7Fc
         s1z1LBEpZ4MOiNU7qB3LaUjUQRwRqyM9rH4gDmpH1r/qpAgCKcWNLnadFPqzrpECektv
         Ohvhm2TkZh98OEwwJN+nTJhBp6j8Rj1XWaz7kJSAhSuYioWo35PjNsxKGewMTgPNQEvP
         0v8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MmUkFgM4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id b1si90853ots.2.2020.03.16.16.18.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 16:18:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id ng8so2128673pjb.2
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 16:18:15 -0700 (PDT)
X-Received: by 2002:a17:90b:311:: with SMTP id ay17mr2003744pjb.27.1584400694892;
 Mon, 16 Mar 2020 16:18:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200311223725.27662-2-masahiroy@kernel.org> <202003121230.lys3M8E8%lkp@intel.com>
 <CAK7LNARwR5X2C_VzK_3RZo+30Cu3uPuiw-rFUut1j8azLhbxAA@mail.gmail.com> <CAKwvOdmGh+NkVvf=e1W_ThZ8hW2KFe0R+AJ=-0jJ5FUg4sGoaA@mail.gmail.com>
In-Reply-To: <CAKwvOdmGh+NkVvf=e1W_ThZ8hW2KFe0R+AJ=-0jJ5FUg4sGoaA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Mar 2020 16:18:03 -0700
Message-ID: <CAKwvOdkxBmGxj5N+3tPD4JUC=a+PRkD0kTPZ4vB6n3yTM=Rb_g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] kbuild: link lib-y objects to vmlinux forcibly
 when CONFIG_MODULES=y
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@vger.kernel.org, Paul Burton <paulburton@kernel.org>, 
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
 header.i=@google.com header.s=20161025 header.b=MmUkFgM4;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

+ linux-mips this time

On Mon, Mar 16, 2020 at 4:13 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Mar 11, 2020 at 11:13 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > Hi MIPS forks,
> >
> >
> > I got the following report from 0-day bot.
> > Please advise me how to fix it.
> >
> >
> > I am not sure how multi-platform works in MIPS.
> >
> > The cavium-octeon platform has its own implementation
> > of various functions.
> >
> > So, vmlinux links different library routines
> > depending on whether CONFIG_CAVIUM_OCTEON_SOC, correct?
> >
> >
> >
> > fw_init_cmdline():
> > arch/mips/cavium-octeon/setup.c
> > arch/mips/fw/lib/cmdline.c
> >
> >
> > __delay(), __udelay(), __ndelay():
> > arch/mips/cavium-octeon/csrc-octeon.c
> > arch/mips/lib/delay.S
> >
> >
> > memcpy(), memmove():
> > arch/mips/cavium-octeon/octeon-memcpy.S
> > arch/mips/lib/memcpy.S
> >
> >
> >
> > FWIW, the following fixes the multiple definition errors.
> >
> >
> >
> > diff --git a/arch/mips/fw/lib/cmdline.c b/arch/mips/fw/lib/cmdline.c
> > index 6ecda64ad184..6ac6e0493e1f 100644
> > --- a/arch/mips/fw/lib/cmdline.c
> > +++ b/arch/mips/fw/lib/cmdline.c
> > @@ -16,6 +16,7 @@ int fw_argc;
> >  int *_fw_argv;
> >  int *_fw_envp;
> >
> > +#ifndef CONFIG_CAVIUM_OCTEON_SOC
> >  void __init fw_init_cmdline(void)
>
> Alternatively, you could define this fw_init_cmdline as __weak, then
> let the strong definition in arch/mips/cavium-octeon/setup.c override
> it. But both should work, so:
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Eitherway, octeon has some multiple definition errors that should get fixed.
>
> >  {
> >         int i;
> > @@ -41,6 +42,7 @@ void __init fw_init_cmdline(void)
> >                         strlcat(arcs_cmdline, " ", COMMAND_LINE_SIZE);
> >         }
> >  }
> > +#endif
> >
> >  char * __init fw_getcmdline(void)
> >  {
> > diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
> > index 479f50559c83..4cc98af4161a 100644
> > --- a/arch/mips/lib/Makefile
> > +++ b/arch/mips/lib/Makefile
> > @@ -3,10 +3,14 @@
> >  # Makefile for MIPS-specific library files..
> >  #
> >
> > -lib-y  += bitops.o csum_partial.o delay.o memcpy.o memset.o \
> > +lib-y  += bitops.o csum_partial.o memset.o \
> >            mips-atomic.o strncpy_user.o \
> >            strnlen_user.o uncached.o
> >
> > +ifneq ($(CONFIG_CAVIUM_OCTEON_SOC),y)
> > +lib-y  += delay.o memcpy.o
> > +endif
> > +
> >  obj-y                  += iomap_copy.o
> >  obj-$(CONFIG_PCI)      += iomap-pci.o
> >  lib-$(CONFIG_GENERIC_CSUM)     := $(filter-out csum_partial.o, $(lib-y))
> >
> >
> >
> > On Thu, Mar 12, 2020 at 1:31 PM kbuild test robot <lkp@intel.com> wrote:
> > >
> > > Hi Masahiro,
> > >
> > > I love your patch! Yet something to improve:
> > >
> > > [auto build test ERROR on kbuild/for-next]
> > > [also build test ERROR on v5.6-rc5 next-20200311]
> > > [if your patch is applied to the wrong git tree, please drop us a note to help
> > > improve the system. BTW, we also suggest to use '--base' option to specify the
> > > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> > >
> > > url:    https://github.com/0day-ci/linux/commits/Masahiro-Yamada/sparc-revive-__HAVE_ARCH_STRLEN-for-32bit-sparc/20200312-073459
> > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git for-next
> > > config: mips-cavium_octeon_defconfig (attached as .config)
> > > compiler: mips64-linux-gcc (GCC) 9.2.0
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # save the attached .config to linux build tree
> > >         GCC_VERSION=9.2.0 make.cross ARCH=mips
> > >
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>):
> > >
> > >    mips64-linux-ld: arch/mips/fw/lib/cmdline.o: in function `fw_init_cmdline':
> > > >> cmdline.c:(.init.text+0x0): multiple definition of `fw_init_cmdline'; arch/mips/cavium-octeon/setup.o:setup.c:(.init.text+0xad8): first defined here
> > >    mips64-linux-ld: arch/mips/lib/delay.o: in function `__delay':
> > > >> delay.c:(.text+0x0): multiple definition of `__delay'; arch/mips/cavium-octeon/csrc-octeon.o:csrc-octeon.c:(.text+0x80): first defined here
> > >    mips64-linux-ld: arch/mips/lib/delay.o: in function `__udelay':
> > > >> delay.c:(.text+0x10): multiple definition of `__udelay'; arch/mips/cavium-octeon/csrc-octeon.o:csrc-octeon.c:(.text+0x8): first defined here
> > >    mips64-linux-ld: arch/mips/lib/delay.o: in function `__ndelay':
> > > >> delay.c:(.text+0x50): multiple definition of `__ndelay'; arch/mips/cavium-octeon/csrc-octeon.o:csrc-octeon.c:(.text+0x40): first defined here
> > >    mips64-linux-ld: arch/mips/lib/memcpy.o: in function `memmove':
> > > >> (.text+0x0): multiple definition of `memmove'; arch/mips/cavium-octeon/octeon-memcpy.o:(.text+0x3a0): first defined here
> > >    mips64-linux-ld: arch/mips/lib/memcpy.o: in function `__rmemcpy':
> > > >> (.text+0x20): multiple definition of `__rmemcpy'; arch/mips/cavium-octeon/octeon-memcpy.o:(.text+0x3c0): first defined here
> > >    mips64-linux-ld: arch/mips/lib/memcpy.o: in function `memcpy':
> > > >> (.text+0x80): multiple definition of `memcpy'; arch/mips/cavium-octeon/octeon-memcpy.o:(.text+0x0): first defined here
> > >    mips64-linux-ld: arch/mips/lib/memcpy.o: in function `memcpy':
> > > >> (.text+0x84): multiple definition of `__copy_user'; arch/mips/cavium-octeon/octeon-memcpy.o:(.text+0x4): first defined here
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> >
> >
> > --
> > Best Regards
> > Masahiro Yamada
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkxBmGxj5N%2B3tPD4JUC%3Da%2BPRkD0kTPZ4vB6n3yTM%3DRb_g%40mail.gmail.com.
