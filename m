Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOUBTKEQMGQECE6H2ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 915583F7BA3
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 19:41:16 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id u8-20020a17090341c8b029012d5f2333bfsf1422ple.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 10:41:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629913275; cv=pass;
        d=google.com; s=arc-20160816;
        b=Geql6tXasrrXeavDpngkM97qLbM6K4FgN73boAKI4dltTTLcs0XGE+u9641VyQjaJX
         Ie/XOXpsw8WR1HDYasgSJA2xOxOclf4Dtcf3557eNjQtXEBXliboUlXNl0aUdIvibGqo
         cDhsBrfLPO0fRmJVPtLZwJeuGseAs5JADC7ZSGpO5Iy3ocs1OCuK4Si4M1K+4X81gI0x
         PdimWbKu8mruRaTMt6KfdXiMxTMujLuM9tpu6M5dpC0dC0Upzy/FehHifwGRuDx/+k5h
         ux0CzBaF9MG+Ye4sXErLoY6cBgc1UHx1D3HmNuTnO1Y7oqxEIEzANWyEv1X8WZkXYjB/
         22eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pDJY7IKMY2stgOkFuTraxG77XO8UdtYfLiwdH5PMn18=;
        b=wgDP8EQ5FeMvtGNjchmfRqXsa44qLbugy+V8hVWxNnlOERqrm8fSgGERhkJCJG9kpR
         HD1qlGvY9JjiorvA38OMnXu5YNpTxe95t9guPJiSFQ08X2ZIH3LQbx8feMwtgXhhdaSt
         76+yy6ZTJjbm6SUJjyz0Qd5NCC2Ljd8BtWk7tzLBd0d/wa2Ss+9sgmOfEGZF39TfvmR1
         Z5NLtUtUV7ZDgHYqW7rURhMHLiejJTwHL09If7YqMCo5oBU3qA+H6693wpN4D2O9SJzU
         3My7qYBeTtq0pyqI/z40lk5PPSKrEKfBQ2cC0Rne4v49DgAESPzomJQzQ0H1/rfZ0VxF
         OeVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Zbqh2TYR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::c29 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pDJY7IKMY2stgOkFuTraxG77XO8UdtYfLiwdH5PMn18=;
        b=nR4ZZqPV6MJgxLmB7qde004g2l8JYnqQIQPPaaRwXEho/YqMEYXU5kvqBRcbRWPy0c
         HZAzWDg4EWaMDmHGb3t3Oh0SJGpMdtjoQjx7+s6xiSBN2haMwqapFl44a7nvEAcpByeK
         3HQl7/jzG1LzkJytlI75h9aRP2ffGSpamyWpM7H8jTjIL86DQmNJVhqI+qoHWX8Lq3t2
         e7EJa03n7F1zmc6t7e+bgBa2QqV/7NH4tvnHNxMRFUtrWd1KVVL7UmLZiVbF/Aqgof8F
         WoqN0stSqW8HXE4RVlUSvhA/7BG5yfKLq9gO1rXThPHYT0jLL+lsDTdJfMa9AP8uVIUF
         G6ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pDJY7IKMY2stgOkFuTraxG77XO8UdtYfLiwdH5PMn18=;
        b=pQB9WyrIElSwWos/l/RBTKijhHCKC3L6HNQ0Y6dfKmBLRA8QkFikHR2vn+5YdLWBgC
         e2SCRrI2fJDmIu+UmUFsr5H0FgCUKiWy0jOAIK6LUeTGgtUYDncG9jrGp3hjILb856oX
         rQ213gMLfjiUwgCKwyzT4lRog9BLo4K2uEiwmpXZwBn5x5scVpUv4TPuS0FESYjfXSUe
         NSKl0ptWqsAihIf/3p0ZviqeFfR9oc1ymlksmQcFxj5UBgimfx4rahNoqOGDmKvIXIkG
         mR+6TWsLPDtzA/MDNDBaG9aPPJE2VACynvutsNpWLPwvwLVa0xhfwMCFzO5ezY3UWW/h
         LvHw==
X-Gm-Message-State: AOAM530rfDsBuieIJjz8tE0eICbLo6qOyU69L/no9XieXuWY6WTttpBg
	WqZYdoQa56uoOjUCOHT0kOk=
X-Google-Smtp-Source: ABdhPJyK3EVQncKwE3HcQ0dGei/Rtyo+qybKwIMMPWnHt5F0lQt5qrDL2uUKQITS2z9Vy8pVvEzFCg==
X-Received: by 2002:a63:184a:: with SMTP id 10mr990923pgy.149.1629913275084;
        Wed, 25 Aug 2021 10:41:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1490:: with SMTP id v16ls1142290pfu.9.gmail; Wed,
 25 Aug 2021 10:41:14 -0700 (PDT)
X-Received: by 2002:aa7:8a19:0:b0:3ed:c54d:663c with SMTP id m25-20020aa78a19000000b003edc54d663cmr9476444pfa.24.1629913274428;
        Wed, 25 Aug 2021 10:41:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629913274; cv=none;
        d=google.com; s=arc-20160816;
        b=eEWV0tv+WvHGu1yw6rONmumcJXf/2KEkkEGDunlUkaL3Ww+WVS+z3Ma8D0JahWIrHr
         vPpdf0lE9CLBIjGEM5xQ5usFRGLtFNkvO0QQ5D+BgrIVXAeu1cLLaDhhuMR00fQYXRJQ
         t0IYwnH99lORZurlGOvFVhPwkflAOIfWREvIHhM9kqWRHrPcsDll/MEKMNhDfVYZ2kvI
         V4ZYJmapJMmA/V5AFxmobptpPkuI1zmNP9iviZ2ygZ8AetS7DOpnDLQsmeMWjGaLNf5/
         IAOysF56q9xTXa/wYET7d7G/oTAazBqJKq0HEngxQngNfZE77CVbQQAMI/edKLAMuxQD
         ojkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Aw3brOwN5Jhb/Bo2iMjArzjo8QBTyjKlASCK9C+nljI=;
        b=wH73Ye6Yh2zSJKo4ABl4QlCLDR84coVNbCUBgodUkRmCiWmSKHqynPHVzmZLz2ZH6R
         wn4juh+WUio1hK5rlprafaq1b72XinEFPXZl+pWBvth7hvOLbtY7r+5q/C+yacMUULNZ
         gNGRv5YQ7RFw7O6zSHCRAzhG/vd266tLPigKb4wASHUir9wE6E2sFeGFbkdYF7hnGhnD
         +S8p/oMZEkdsNmdx0SV5nL9oCNk0bxRANIzgBM/d/DH6+BSJ5JOsQICL/+HwWOS51w5o
         Kq/V4+qPtRvxvTo9jWmp/zkQoyLA4PY886LHk9xa+9jRP9KTr2Jy3N/RwlV2PL13/fzQ
         uAEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Zbqh2TYR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::c29 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com. [2607:f8b0:4864:20::c29])
        by gmr-mx.google.com with ESMTPS id r14si84566pgv.3.2021.08.25.10.41.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 10:41:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::c29 as permitted sender) client-ip=2607:f8b0:4864:20::c29;
Received: by mail-oo1-xc29.google.com with SMTP id t2-20020a4ae9a2000000b0028c7144f106so50447ood.6
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 10:41:14 -0700 (PDT)
X-Received: by 2002:a4a:e907:: with SMTP id z7mr35471221ood.20.1629913273561;
 Wed, 25 Aug 2021 10:41:13 -0700 (PDT)
MIME-Version: 1.0
References: <202108141331.fMjjWaW2-lkp@intel.com> <CAMuHMdXUpk_dLhvcdgs1H6yLPrwXFJz_86dfXpm8PYxNq+DXrQ@mail.gmail.com>
In-Reply-To: <CAMuHMdXUpk_dLhvcdgs1H6yLPrwXFJz_86dfXpm8PYxNq+DXrQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 10:41:03 -0700
Message-ID: <CAKwvOd=HkZPN-0k=QYGx6y4q1ig7=8dQY3d_OU10Qp0N__tZcA@mail.gmail.com>
Subject: Re: arch/arm/boot/compressed/fdt_check_mem_start.c:62:10: warning: no
 previous prototype for function 'fdt_check_mem_start'
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: kernel test robot <lkp@intel.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild-all@lists.01.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>, 
	Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Zbqh2TYR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::c29
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

On Sat, Aug 21, 2021 at 1:46 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Dear Robot,
>
> On Sat, Aug 14, 2021 at 7:43 AM kernel test robot <lkp@intel.com> wrote:
> > FYI, the error/warning still remains.
>
> Yes, and that's fine, as this function is never called from C code,
> only from assembler.

That's fine, then you can add a prototype to the .c source file.  See
what we do for stpcpy: 1e1b6d63d6340.

>
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   dfa377c35d70c31139b1274ec49f87d380996c42
> > commit: 0673cb38951215060d7993b43ad3c45cd413c2c3 ARM: 9045/1: uncompress: Validate start of physical memory against passed DTB
> > date:   6 months ago
> > config: arm-randconfig-r003-20210814 (attached as .config)
> > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 62df4df41c939205b2dc0a2a3bfb75b8c1ed74fa)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0673cb38951215060d7993b43ad3c45cd413c2c3
> >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >         git fetch --no-tags linus master
> >         git checkout 0673cb38951215060d7993b43ad3c45cd413c2c3
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> arch/arm/boot/compressed/fdt_check_mem_start.c:62:10: warning: no previous prototype for function 'fdt_check_mem_start' [-Wmissing-prototypes]
> >    uint32_t fdt_check_mem_start(uint32_t mem_start, const void *fdt)
> >             ^
> >    arch/arm/boot/compressed/fdt_check_mem_start.c:62:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> >    uint32_t fdt_check_mem_start(uint32_t mem_start, const void *fdt)
> >    ^
> >    static
> >    1 warning generated.
> >
> >
> > vim +/fdt_check_mem_start +62 arch/arm/boot/compressed/fdt_check_mem_start.c
> >
> >     46
> >     47  /*
> >     48   * Check the start of physical memory
> >     49   *
> >     50   * Traditionally, the start address of physical memory is obtained by masking
> >     51   * the program counter.  However, this does require that this address is a
> >     52   * multiple of 128 MiB, precluding booting Linux on platforms where this
> >     53   * requirement is not fulfilled.
> >     54   * Hence validate the calculated address against the memory information in the
> >     55   * DTB, and, if out-of-range, replace it by the real start address.
> >     56   * To preserve backwards compatibility (systems reserving a block of memory
> >     57   * at the start of physical memory, kdump, ...), the traditional method is
> >     58   * always used if it yields a valid address.
> >     59   *
> >     60   * Return value: start address of physical memory to use
> >     61   */
> >   > 62  uint32_t fdt_check_mem_start(uint32_t mem_start, const void *fdt)
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
>
>
> --
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdXUpk_dLhvcdgs1H6yLPrwXFJz_86dfXpm8PYxNq%2BDXrQ%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DHkZPN-0k%3DQYGx6y4q1ig7%3D8dQY3d_OU10Qp0N__tZcA%40mail.gmail.com.
