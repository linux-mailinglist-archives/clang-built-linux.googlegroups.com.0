Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBR4VY35QKGQEB2ZAE2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB1C27A80B
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 09:03:37 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id t128sf3008467pgb.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 00:03:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601276616; cv=pass;
        d=google.com; s=arc-20160816;
        b=trCewtOVMUlIltZhL1DWEFIJjWqZfdMpEEF3ozHnhNE1q9jO4qqlN2Fk2g5VXgUaK0
         TkNMzSqj3vJxsTf7m3HruQkeMUYpRX++ADEmekk4l/e/BYFcnFMYIBVBPF3HOUZ1LkXs
         yLgjPOwzyxXMHUelsvTpYgMf06/ZKTlE0+ZNvdLOb6NWCtH0Loec0I8NvIJ8M1BpZdCA
         aU6Vj4yVWNrY3N/cp2NLWXshMZvA0SmGQwboblhcXI4SQaz6cgGe0j3KKRQ7kB4xyvX0
         7TC/dGutFOcL1ju+eqZ6Rfrxsj23Fw2iWJf8lhL7tq7KZdKwYtjfWLCjbNbfMCvanSq7
         wFvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=RYTxb8JXVN7teGBYFObeTJdSbOQXRC4MIp5YA2rdR0I=;
        b=P6ibpbyI6xHPCu/jXkBa/aJb93sb5X2ct82LZmXW3O22eBVlLNkwO+Yk0fSOxAFZON
         CA9VGOCgpwDy9SkGojBydYh9okn8dNZNOyuiq1VZSq4NOb6xbGCRVuO1+Avpd3JjIU5W
         WMyEiGaiortuTSoIvbb+Ya25+8kY9+F+/ldVEZMcDoMEQ71HTBqaURIEHca+YcrX3s4h
         rLLaggOy7m5pG0/Yilk4ZJAr/zYucGqdCUMl6V5L4if5P5IPepwDfk7psOZJ+bDoVjJP
         fkDXp+dyXHo30epuM1lla2Zlv4w8w3Lq0cdymIX8eVsiqI+2PwQhON9ucroUuV2DGQ31
         9cmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jfeK2OwT;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RYTxb8JXVN7teGBYFObeTJdSbOQXRC4MIp5YA2rdR0I=;
        b=VEDs0o0DrynmJFdXCSsMT922HLGNBHMpC/9wxyiNJfsq3qZh+XuH+nGldlgZhKZ8oP
         d5pPu5ld4imBDpt4NvAnEQRJKY3RTlElmWCwikesYdSuuUr02IMozhU6wcJJ53UKAORU
         /7hUHF75BFj0e++jQpDynvSfDSN68+24O40S1J95r1uCFSTsF2xtiehu+G4NM8cYwmqh
         gdy2RjBh5Xkt6Fpqg4htBWEk/wnljMefFeWrSUtEP3UakFpjuDfQgcfKuXsqXcm3PHMp
         zbJgxcmtVKNH0yfRvCbbm8QLBN7HaQyG4no5lhzGScMMMj5KPVuORzZETuLCcdLUEl+R
         LFNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RYTxb8JXVN7teGBYFObeTJdSbOQXRC4MIp5YA2rdR0I=;
        b=Wixgb0xC6kR41Dm4h8j1FPdpuebfxt5yNzF7Qww9nMqaKWi48xkjIGkyNK5TNxM/a0
         DI4lQ1L5yxXWPlAYIFR5rYqxiy6inZ0f3rvjsg1slcmwjbOlbEM/t+uCDCJdCWQjUQKA
         QzRL0TtIvxwf2Ddeo/tymVhOVg4FTgEjkQM8DpH41P0azu+vSQ3Kejq6+6adlbs9D3vB
         4iPbzlh6lYc30aWFOrfDh8Tq/GMoXdjfQ1ngvbvtJo/LdXVWpH4C5kyq6Kp9IftbH0Yv
         dx8hQBvg4a43DzAU69CAB8+iGHRmGLOpqfe1K9BpPSo/ujDCNkV65HB+Ma6KBqtauAe/
         43rw==
X-Gm-Message-State: AOAM530E03XFCDhw6XzMOauBmJFcJ4LF2BvJu2xvtohxJaD1ezBHIKli
	VOZwBzTyW9DVrpEA8M1SoEI=
X-Google-Smtp-Source: ABdhPJw/nvESJxwOVZy1Wd1QJ4gD+lmG9rSUwBAhZtHeKSleRJT0fd26TdMq7WcMsZ2L+dsvE18Dpw==
X-Received: by 2002:a17:90a:ea0a:: with SMTP id w10mr82480pjy.165.1601276615901;
        Mon, 28 Sep 2020 00:03:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a412:: with SMTP id p18ls2763921plq.11.gmail; Mon,
 28 Sep 2020 00:03:35 -0700 (PDT)
X-Received: by 2002:a17:90a:b702:: with SMTP id l2mr127046pjr.82.1601276615178;
        Mon, 28 Sep 2020 00:03:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601276615; cv=none;
        d=google.com; s=arc-20160816;
        b=j9N15UaL2qOhfBUneGky5jlMZMhpGm25yEm1iB1FIrGYOrlEOKgrbOKrdFkNWndVh3
         C4A7Yhlpcu8RClE93WitGHinzYCk1168pF8X+rKd1FOBbSOysWS6uf8WzwX7HHBclBoV
         0zfqfZb9elK28TtWfqI2ptuIIZkoDnqFxnjvg+jWV8YpIrqLGZ4GQ0WnhXZlkfk1WPsc
         o+dc3Q4GbjMYgFPKvz/yoGKufZZke3x+2Eg7909WLJ6mnyaccg0qF4yQqyMkjPF+ZNQo
         VQMsFQRaNdxjdAuurCLAFRH387n8ECtfxuaCsOdMZSPjeh5qM+N6o0d3g7Eerf+HfNWs
         W15g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=C/Qpr32EfMGBDFnNDrDqSVauN6ep9cWaocm5eivByKA=;
        b=0kytrVAKuDzHh1Cu10A5Au2jYNCCNsVcX/GFpL1kshO9XagT8nzdIO+96LK8vLMGE7
         vTpQuyVryEP7OuiPJzmnkTh8YfQh7RFdOPZA+sTtmylPoORevUjy9Bvb4uMWCuJOuk44
         HBEn1YiHY78joaTQ9vvdVAxN3adtEbXAcrQkh9+FOa16p/w1/qL3CTu/bpLo24dB7sD2
         CBQZLtSMs0H0/STzQbPYLSCCb4Rae/9IaYdHp1dYemc97H8fjfj+aR8RFcvWFEUAPfE8
         9FRJfy0pDmm3IGiFSSeJ4hyszhdT/1NqxurrWsSdI2rsjFpU1/IFRas/DXTdFXesUxGo
         riyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jfeK2OwT;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id iq17si263292pjb.3.2020.09.28.00.03.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 00:03:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id m7so275535oie.0
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 00:03:35 -0700 (PDT)
X-Received: by 2002:aca:5158:: with SMTP id f85mr122075oib.121.1601276614185;
 Mon, 28 Sep 2020 00:03:34 -0700 (PDT)
MIME-Version: 1.0
References: <202009280455.Qidf5AqU%lkp@intel.com>
In-Reply-To: <202009280455.Qidf5AqU%lkp@intel.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Sep 2020 09:03:22 +0200
Message-ID: <CANpmjNNcRCipPdd0C0z-dxb1nfz35bkgAY6eJwGF8sYq=2wOqQ@mail.gmail.com>
Subject: Re: [linux-next:master 11080/11173] drivers/media/common/saa7146/saa7146_hlp.c:648:5:
 warning: stack frame size of 1072 bytes in function 'saa7146_enable_overlay'
To: kernel test robot <lkp@intel.com>
Cc: George Popescu <georgepope@android.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, David Brazdil <dbrazdil@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jfeK2OwT;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::244 as
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

On Sun, 27 Sep 2020 at 22:14, kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   20dc779fdefc40bf7dd9736cea01704f29228fae
> commit: 2ce416ba162877d5cf267ac35548ea45eba84150 [11080/11173] ubsan: introduce CONFIG_UBSAN_LOCAL_BOUNDS for Clang
> config: powerpc-randconfig-r004-20200927 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 6d374cf78c8a80a0bbfc7ce9bc80b3f183f44c80)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=2ce416ba162877d5cf267ac35548ea45eba84150
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 2ce416ba162877d5cf267ac35548ea45eba84150
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/media/common/saa7146/saa7146_hlp.c:648:5: warning: stack frame size of 1072 bytes in function 'saa7146_enable_overlay' [-Wframe-larger-than=]
>    int saa7146_enable_overlay(struct saa7146_fh *fh)
>        ^
>    1 warning generated.

This warning must have existed before, because the UBSAN patch didn't
add any features, it just guarded them with extra Kconfig options.

Also, this is with Clang 12, which is very much in development and
quite unstable.

> vim +/saa7146_enable_overlay +648 drivers/media/common/saa7146/saa7146_hlp.c
>
> ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  647
> ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16 @648  int saa7146_enable_overlay(struct saa7146_fh *fh)
> ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  649  {
> ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  650        struct saa7146_dev *dev = fh->dev;
> ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  651        struct saa7146_vv *vv = dev->vv_data;
> ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  652
> 5da545ad08a3c6 drivers/media/common/saa7146_hlp.c Hans Verkuil   2012-05-01  653        saa7146_set_window(dev, vv->ov.win.w.width, vv->ov.win.w.height, vv->ov.win.field);
> 5da545ad08a3c6 drivers/media/common/saa7146_hlp.c Hans Verkuil   2012-05-01  654        saa7146_set_position(dev, vv->ov.win.w.left, vv->ov.win.w.top, vv->ov.win.w.height, vv->ov.win.field, vv->ov_fmt->pixelformat);
> ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  655        saa7146_set_output_format(dev, vv->ov_fmt->trans);
> ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  656        saa7146_set_clipping_rect(fh);
> ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  657
> ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  658        /* enable video dma1 */
> ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  659        saa7146_write(dev, MC1, (MASK_06 | MASK_22));
> ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  660        return 0;
> ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  661  }
> ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  662
>
> :::::: The code at line 648 was first introduced by commit
> :::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2
>
> :::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
> :::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNcRCipPdd0C0z-dxb1nfz35bkgAY6eJwGF8sYq%3D2wOqQ%40mail.gmail.com.
