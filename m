Return-Path: <clang-built-linux+bncBDYJPJO25UGBB26HZD5QKGQE77YLWYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E30627B3BD
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 19:57:01 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id x25sf2599899otq.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 10:57:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601315820; cv=pass;
        d=google.com; s=arc-20160816;
        b=OCRAi/yX3VF2QMMFW4AxjJ4hZphgdk87dBrWdicb+EQ25KiBHQQkm1eBxKE3mdDeqZ
         liSHuvuPyXTR8cpiwgeWkfV/rgo9zIQB8r5QKs2MHbKlOqnMI813MkrLw3SP1eZVe6UD
         yDkKKEWdjVV1VodyZFDAl/EWTCxCzDF2lhev9K0oG1AIk3RTSO9SW313gSHhneC/8Y55
         NmvBnGf/np3C8pHo/C+/UkB69jlZx9rg4AnF0571hn4ceUIdvwiJQexTPumLCl/94zlz
         oIgG/035KZJPM6t7JNmzovRm0cqZz0o3XN9EKjiQBXs/0SWNZO44WgF27wYrH1jU80Sw
         8+Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cqXAkBzaVgpTBdxC6af1kd3LG7t7EKsKk2NEBI7fmYI=;
        b=uK/V0MzJDfjiTPX5V73DPCbV80ohf2TRCdZJLLfUPKqijA2NOW27ripmvoSZS8gHvJ
         nl0lvOZr3d7gli5O471uNQ5Vw2by6qHe3Ywj1iCi4hY3Td4aRmRlU1tTkO9g1JNvTw4b
         dKRr2vSSXlcZAksM2iu9ZPbZAT6rQ9DB6NGvnXgYdFoqMwDzbXYGAVek/cIBcgg87tJW
         LS1z9xRGx/nMpagyKLcdYj/zVAJxzN1WzjbQ5W5zgLm+MI8eJzGyByXsbxFqEyycGXJG
         ruEWGqikVdB9FIUtJ1rtL5TreGO//gizwrqdNzaLPBxwJrhGTTKTutyhRyK6e5cvywJ/
         7CGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EpAhnTW8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cqXAkBzaVgpTBdxC6af1kd3LG7t7EKsKk2NEBI7fmYI=;
        b=S4sbaxiRxFmyDBg1M1gIrFeKrTWalI4UKMYM8XYk4kR8X7b5ulrNsR9qODzOosTbCP
         3oFJK8JR9xKfJC5Wf6/NlWATwwuxf2GB+ULrCgDM00zCk19Z5BpMJh+UHdGKsE/5Pu1k
         15yRuz3M6FqaAGEfooLqIhAEoc7xUyHbNpjT5pf0ZLt0PoARHNGc7YAQ24TEPYfTQJSA
         UGRZkYzG/+IpJ4ISxKJhTwC/YEiMOF6/pzSY+V8jQnTvVGFpAHpm6ME7xU6EeuGXRm46
         G1FVFyeHJ8N80OyncIuzmdys5EszvJxyLYllUgvJ4qGnWgzAcynqo04bGusrLjAOIOoD
         OpbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cqXAkBzaVgpTBdxC6af1kd3LG7t7EKsKk2NEBI7fmYI=;
        b=UF1jnnyPYoKAMGj2De9NFX6MRTT6hxHsHoAZE8e2a8Qu2A7lB/l+8oBGzmSsBW1YvL
         l3PZRn9Q1cO4lRltB6lWaAQ6y8cYliwIP1tu6KSdZqzZu62V++GfueA2gRKlnQFOQwSR
         eIHNYf9Z0voUtZD/JX0Y+VmyczIt1XjZrx4BXMIMls0UHjk+QcsDjpgGD5Vi1V+wAmeP
         Kdyg5UMCJ/46hpH5tYdyfZQpmCq0IkiiQ9QeMmTcGfoDIZo5HlZJaoitNhO9xdTC/g4M
         te021Lchls3/oeLER6NgZzx1afN+tzc6gZjYjb+93pBx87ZrmjaNN5QaXwVt9GHwVdrr
         rXMw==
X-Gm-Message-State: AOAM533LdkUvaT45PQzCsfcAseG2dldpNLJgRUL3YxecBIsY+wIRXjc9
	F3ydFsiEF4pN7+ddD7QKPeY=
X-Google-Smtp-Source: ABdhPJy9VR/aU5xrcMxQs0dJl+rBoj9UffPQTwRczlh4nYPv7zy0S7AS3CHubp6BWS6BSqaVSlqN7w==
X-Received: by 2002:a9d:6d0b:: with SMTP id o11mr136905otp.114.1601315819820;
        Mon, 28 Sep 2020 10:56:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:119a:: with SMTP id u26ls467764otq.6.gmail; Mon, 28
 Sep 2020 10:56:59 -0700 (PDT)
X-Received: by 2002:a05:6830:1f13:: with SMTP id u19mr113855otg.127.1601315819324;
        Mon, 28 Sep 2020 10:56:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601315819; cv=none;
        d=google.com; s=arc-20160816;
        b=MivunbU5qRh/xgfOIvvbwZAOj2/hxJ9z9ZFDSuvAh1C772+ELFbTW0x+qfr6Wrbn3f
         A/sIKGP+39DkHfwcZ6sa4scP5n/Dq93odAxY0DVIcb3si4tjnKbB3MSHCQQsWB28S2+G
         eJEiiuQSuWpu1us9DpXqI0s7ncyEGyxYbq6qZoYjGXScnrD01whz6Kxsyk+A/vWQvrRs
         S+Q7PuPbcRJgb1BTCAb7ZxSBuP3hhJrsXBAjA4dxHPePQLSoCXf56lZYBoEIywzEpsOb
         SpYnU8MKZlOyrsy5tXf5Xgygb2XviZHhhPF/ClTo3bbCErm84uzK0Fx/8iXH2xgDdVYs
         XiXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+2E+AcVLP39Ffh1UN6mFPMMEjem7/dyE7I5dIaGI8zw=;
        b=Di8HCSNLG0xB3IPtwQohbyry1lpQhwzPAdiXNCqKlTq/wxYLQTGlp0FRAybQlkqfRf
         RQIESH/l6rNs9vSlf3PJwz3SEnWvBRimgW5QCxxe3kQcoCesitrJpgkGeStJ7NPPVoNS
         9FqKfGir/E+vqG5fXnf4zyDp/Suv+CsebC9lXOmImHvoz9JKdVJWfIYZZepUA14C5BEu
         5gd+RtFZdyBZNn6cw330EP2BQ2qG1QTtWjFJxP39gxp0JsgJessmLfiU+C7TVG3/6/4/
         sCBFfCytDw800tN8comHYUlY6Km2cxb2ZUdCvZQm64a9UE0kNpWNsIVJAqzcoXTjaQp3
         KUdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EpAhnTW8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id o22si181497otk.2.2020.09.28.10.56.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 10:56:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id mn7so1069405pjb.5
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 10:56:59 -0700 (PDT)
X-Received: by 2002:a17:90a:e517:: with SMTP id t23mr381798pjy.25.1601315818441;
 Mon, 28 Sep 2020 10:56:58 -0700 (PDT)
MIME-Version: 1.0
References: <202009280455.Qidf5AqU%lkp@intel.com> <CANpmjNNcRCipPdd0C0z-dxb1nfz35bkgAY6eJwGF8sYq=2wOqQ@mail.gmail.com>
In-Reply-To: <CANpmjNNcRCipPdd0C0z-dxb1nfz35bkgAY6eJwGF8sYq=2wOqQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Sep 2020 10:56:46 -0700
Message-ID: <CAKwvOdnExnJWnDWH1+yG820m5_u0Q7rRsmdm_=oAaTHivJbGbg@mail.gmail.com>
Subject: Re: [linux-next:master 11080/11173] drivers/media/common/saa7146/saa7146_hlp.c:648:5:
 warning: stack frame size of 1072 bytes in function 'saa7146_enable_overlay'
To: Marco Elver <elver@google.com>
Cc: kernel test robot <lkp@intel.com>, George Popescu <georgepope@android.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, David Brazdil <dbrazdil@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EpAhnTW8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Mon, Sep 28, 2020 at 12:03 AM 'Marco Elver' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On Sun, 27 Sep 2020 at 22:14, kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   20dc779fdefc40bf7dd9736cea01704f29228fae
> > commit: 2ce416ba162877d5cf267ac35548ea45eba84150 [11080/11173] ubsan: introduce CONFIG_UBSAN_LOCAL_BOUNDS for Clang
> > config: powerpc-randconfig-r004-20200927 (attached as .config)

^ randconfig

> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 6d374cf78c8a80a0bbfc7ce9bc80b3f183f44c80)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install powerpc cross compiling tool for clang build
> >         # apt-get install binutils-powerpc-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=2ce416ba162877d5cf267ac35548ea45eba84150
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout 2ce416ba162877d5cf267ac35548ea45eba84150
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/media/common/saa7146/saa7146_hlp.c:648:5: warning: stack frame size of 1072 bytes in function 'saa7146_enable_overlay' [-Wframe-larger-than=]
> >    int saa7146_enable_overlay(struct saa7146_fh *fh)
> >        ^
> >    1 warning generated.
>
> This warning must have existed before, because the UBSAN patch didn't
> add any features, it just guarded them with extra Kconfig options.

Likely.

>
> Also, this is with Clang 12, which is very much in development and
> quite unstable.

I wrote a tool that can help debug these:
https://github.com/ClangBuiltLinux/frame-larger-than

The compiler is quite unhelpful in the warning; but recompiling with
debug info gives you info about stack slots and the size of those
types.  This is a randconfig, so always weird things get pulled in.
Sometimes these are large stack allocations that should be heap
allocated; sometimes it's KASAN enabled via randconfig.  I noticed
that KASAN+clang has pretty poor stack slot reuse, which triggers
these often: https://github.com/ClangBuiltLinux/linux/issues/39  I
didn't check this config to see if KASAN was set or not, but I
wouldn't chalk it up to "clang 12 being unstable."

>
> > vim +/saa7146_enable_overlay +648 drivers/media/common/saa7146/saa7146_hlp.c
> >
> > ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  647
> > ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16 @648  int saa7146_enable_overlay(struct saa7146_fh *fh)
> > ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  649  {
> > ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  650        struct saa7146_dev *dev = fh->dev;
> > ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  651        struct saa7146_vv *vv = dev->vv_data;
> > ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  652
> > 5da545ad08a3c6 drivers/media/common/saa7146_hlp.c Hans Verkuil   2012-05-01  653        saa7146_set_window(dev, vv->ov.win.w.width, vv->ov.win.w.height, vv->ov.win.field);
> > 5da545ad08a3c6 drivers/media/common/saa7146_hlp.c Hans Verkuil   2012-05-01  654        saa7146_set_position(dev, vv->ov.win.w.left, vv->ov.win.w.top, vv->ov.win.w.height, vv->ov.win.field, vv->ov_fmt->pixelformat);
> > ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  655        saa7146_set_output_format(dev, vv->ov_fmt->trans);
> > ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  656        saa7146_set_clipping_rect(fh);
> > ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  657
> > ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  658        /* enable video dma1 */
> > ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  659        saa7146_write(dev, MC1, (MASK_06 | MASK_22));
> > ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  660        return 0;
> > ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  661  }
> > ^1da177e4c3f41 drivers/media/common/saa7146_hlp.c Linus Torvalds 2005-04-16  662
> >
> > :::::: The code at line 648 was first introduced by commit
> > :::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2
> >
> > :::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
> > :::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNcRCipPdd0C0z-dxb1nfz35bkgAY6eJwGF8sYq%3D2wOqQ%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnExnJWnDWH1%2ByG820m5_u0Q7rRsmdm_%3DoAaTHivJbGbg%40mail.gmail.com.
