Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3WCYP3QKGQEQSOSBVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED28203D12
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 18:50:59 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id x11sf3762843oox.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 09:50:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592844657; cv=pass;
        d=google.com; s=arc-20160816;
        b=XKYAEXwcBVaYSUL5PorD41dttd3+GvDofVtMZ5PkORkwO3yoWtDMIQnwdMz2zvIGH4
         gKT/IMT8C8qpy8dijgjFuaSAlnNqEll9gL7UHXy6Cct5v/mW0A5i14gTwV833A7Hel7P
         LkflOZ6yE3V//uh1fEysbi57v8pVMV35VaudWwA5kRWBOTN/1/YvKkjAacSaYYBxbCW3
         cu/rj4rvMZs9kxjsqUGIob+B37lgf8wSblDEgboGCO0goiPtptw7aUrRlkxhHQQZdE8f
         NTkfdyhNZn1wFH6mNAcGIZrIHVVSpQinJvU2LkFfjjCEe2mBf31BQQrGBaBVVEjQ327p
         CVdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8c0H6JOoo9uVTH6na3hRCV5WdWVyoMk2Q05VhaUCa1w=;
        b=PnxINTq0RkO2QvK0RFoNQ4DAmgCLZNmuVcYfZG52ZjqOjtRo3bYSdKhoW6k/Vauy8N
         BInNfz4MKpFC+9Kpr3f2lG30PIQgaz7R7X91NX+cVUNfA6iSyo28dBKQmMwieV/UYUuE
         utSSVCfHrKOQiq0+D8A3eSWM1CJNnfDyfVqqIr6zrqatZY8ORewn2kuJ7Wr92Pv69Hws
         lTe+6NZS0G1v+jhZzwtz6mNJpflQB4cmtZno9tbQ5iwCEf+p/uchxbVl75RX3FMW7uZy
         Qd5f1jeFtkMCBlDqALKz7MSNXzwYb83OFM7WnbxisjSYurrImbHXTbzLWy5ki3+J5VUe
         DkcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="jvfk/Xmx";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8c0H6JOoo9uVTH6na3hRCV5WdWVyoMk2Q05VhaUCa1w=;
        b=jXaDQS4ORFFdxOFYKdJG/gZWkSXjl+NqlJ9Tvq84Ui/VwHx10R8YraYeS0chR/qLvB
         S98MtaTHszK9+CiRkcmcyq5CnT6NkcHhVInYqGaxSvPco4zVGGgZOHwgHe/Cb/nqGXmP
         cqpvIHfVGxoo6V6p/KtRRZwcsjaR7VvF7gJd3qIT6UMmAbVdRF+omZvVYcEqQ9GGbf9G
         rNJXYK3BLHxBms2aC7PmvuQE7xAJFh20UD0PAT0SgZj1baDTjwiZcmFbfdjnN0Cu7/Ch
         /W+JqV66rlcyslhsJMExF6LfyvRUOiEKWmLfmm35srzIu/2DICx4126EGIND1iSQPnil
         Y1vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8c0H6JOoo9uVTH6na3hRCV5WdWVyoMk2Q05VhaUCa1w=;
        b=trqGgEHdN4pY3Dx8pPCWbq60g+hcHhhB+5H8tLZhbiseFxND4EC1ZGWqt0dkVxIVF9
         UmdShrubMI22Hnu/7ioTPLaY4FTohU2GTx6/YqbzqCkOPz06kbvL7o2RdGlGfdZwESyo
         nBkCv/fsMwqM5ZYxSd5w5u+HPkWzhAKq1BH0t4IsgYtqH2JJe/peCjtl87Arc5VOhe5C
         Y/3YOVH1LEU2iVUXVYgVUjuamk42NvMrGCbhYlUcywjOdrCPo1Q/H5jvNyUNP0rXfafe
         L+qWv/OmbHm+/X0PVaTUcSNL5b3leUmC9Oh3UAlIG/7pqpHImGLCny9NpDHiX+n8sbJA
         0ozg==
X-Gm-Message-State: AOAM5329PbW/ZsxQOA6mD/2CSwh75E31zbxxP651pXiqumVU9X3wjnzt
	lHIcHYtInrqpg2klkdTt6VQ=
X-Google-Smtp-Source: ABdhPJwe1RCQM7+empVNEKrTOBycQXayKZiCtkmC67QzdZC138Ftd2vPSXpYDZ+g/HC5W52yLORUSQ==
X-Received: by 2002:a05:6808:602:: with SMTP id y2mr9256139oih.148.1592844655054;
        Mon, 22 Jun 2020 09:50:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1db7:: with SMTP id z23ls3696907oti.9.gmail; Mon,
 22 Jun 2020 09:50:54 -0700 (PDT)
X-Received: by 2002:a05:6830:118d:: with SMTP id u13mr15425434otq.323.1592844654651;
        Mon, 22 Jun 2020 09:50:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592844654; cv=none;
        d=google.com; s=arc-20160816;
        b=viJgVkrz2FUe/FX6dp00u2CsakbWuxiL6c3xkFtBZXQzMFpL7ng/AuQj7LGToPqNr3
         2DIBVf6IO0FlwwlOvU8B/RBxSz4M9PIUmq2P58KqWvS40pisP8DRU45O0pfFDTuPH8B4
         28PREwH0Urf/b7+KrEcvolVzWxU9rkzu0ipFpyJ7/N7maSGC1j8F0Npz3v09US/NIi+S
         JmpU90mBQLOYEVDSgJR4qLsrTZLIyTzgieHip651LkKCw9YLSH49IzmIlWVTvKf2rqFI
         XcfC0KIMmg3V75kPhZY6JEYL2tJVEQPeCqyU9ztGYLIUZSGmOAkJzOeFuKg3i4jqt8f2
         V2oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BEBQDr1/QBCoBYOVCmxtB+zBdOSv7ckRqajJbZ4Zh4A=;
        b=U3C0GqXsqMcoKIsg8eiUAc0SJuo0z+zWdkLzv3cBoC+GAWWYlN5HXZqbqWr/0eBWW/
         P63GXEdUkXFIeEAJnh74Wkk+y329220EifshNAaR48f/hsnpuLnc1LAgXSgYmkvJT+ci
         98htJbEQE+nkS9UOiWVwmLPEsgIRd34jvd3EL+jHZ4/NqMZiEKMTrLSUz+S0OwSWL90/
         pziebq0hzhjKTFCkHF+geenBBhh1tsOq1CVxTivuiZiGhke3B6YgpdUZz0r8sXYdETAC
         ga+hWjRT6gOIm4CQB7+TSxJnFt28tUcmj5h+S6PeGHDF1g9sN0Bkrp3sezuneRsdfKTW
         nNAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="jvfk/Xmx";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id c22si1245097oto.3.2020.06.22.09.50.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 09:50:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id d66so8654613pfd.6
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 09:50:54 -0700 (PDT)
X-Received: by 2002:aa7:9abc:: with SMTP id x28mr21103448pfi.39.1592844653223;
 Mon, 22 Jun 2020 09:50:53 -0700 (PDT)
MIME-Version: 1.0
References: <202006210249.QHly8bQZ%lkp@intel.com> <CA+h21hpABfDvthiwq_JwWGpqZ68VJxu5TOBVbw_Gaxpq8j+XQg@mail.gmail.com>
In-Reply-To: <CA+h21hpABfDvthiwq_JwWGpqZ68VJxu5TOBVbw_Gaxpq8j+XQg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Jun 2020 09:50:41 -0700
Message-ID: <CAKwvOdnAKR_CtOccZohR_r1kzKKVuvo8LbpLi0s3ek+3u+c_zw@mail.gmail.com>
Subject: Re: drivers/gpu/drm/panel/panel-samsung-ld9040.c:240:12: warning:
 stack frame size of 8312 bytes in function 'ld9040_prepare'
To: Vladimir Oltean <olteanv@gmail.com>
Cc: kernel test robot <lkp@intel.com>, Thierry Reding <thierry.reding@gmail.com>, sam@ravnborg.org, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	dri-devel <dri-devel@lists.freedesktop.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkml <linux-kernel@vger.kernel.org>, 
	Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="jvfk/Xmx";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432
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

On Sat, Jun 20, 2020 at 3:09 PM Vladimir Oltean <olteanv@gmail.com> wrote:
>
> On Sat, 20 Jun 2020 at 21:22, kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   4333a9b0b67bb4e8bcd91bdd80da80b0ec151162
> > commit: 79591b7db21d255db158afaa48c557dcab631a1c spi: Add a PTP system timestamp to the transfer structure
> > date:   9 months ago
> > config: x86_64-randconfig-a014-20200620 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f5bbe390d23d7da0ffb110cdb24b583c2dc87eba)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         git checkout 79591b7db21d255db158afaa48c557dcab631a1c
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> >
> > >> drivers/gpu/drm/panel/panel-samsung-ld9040.c:240:12: warning: stack frame size of 8312 bytes in function 'ld9040_prepare' [-Wframe-larger-than=]
> > static int ld9040_prepare(struct drm_panel *panel)
> > ^
> > 1 warning generated.
> >
> > vim +/ld9040_prepare +240 drivers/gpu/drm/panel/panel-samsung-ld9040.c
> >
> > ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c Andrzej Hajda 2014-03-26  239
> > 099b3e8699322e drivers/gpu/drm/panel/panel-ld9040.c Ajay Kumar    2014-07-31 @240  static int ld9040_prepare(struct drm_panel *panel)
> > ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c Andrzej Hajda 2014-03-26  241  {
> > ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c Andrzej Hajda 2014-03-26  242       struct ld9040 *ctx = panel_to_ld9040(panel);
> > ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c Andrzej Hajda 2014-03-26  243       int ret;
> > ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c Andrzej Hajda 2014-03-26  244
> > ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c Andrzej Hajda 2014-03-26  245       ret = ld9040_power_on(ctx);
> > ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c Andrzej Hajda 2014-03-26  246       if (ret < 0)
> > ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c Andrzej Hajda 2014-03-26  247               return ret;
> > ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c Andrzej Hajda 2014-03-26  248
> > ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c Andrzej Hajda 2014-03-26  249       ld9040_init(ctx);
> > ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c Andrzej Hajda 2014-03-26  250
> > ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c Andrzej Hajda 2014-03-26  251       ret = ld9040_clear_error(ctx);
> > ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c Andrzej Hajda 2014-03-26  252
> > ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c Andrzej Hajda 2014-03-26  253       if (ret < 0)
> > 8141028278c2ea drivers/gpu/drm/panel/panel-ld9040.c Ajay Kumar    2014-07-31  254               ld9040_unprepare(panel);
> > ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c Andrzej Hajda 2014-03-26  255
> > ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c Andrzej Hajda 2014-03-26  256       return ret;
> > ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c Andrzej Hajda 2014-03-26  257  }
> > ff219937763253 drivers/gpu/drm/panel/panel-ld9040.c Andrzej Hajda 2014-03-26  258
> >
> > :::::: The code at line 240 was first introduced by commit
> > :::::: 099b3e8699322efb7229913d2c1651588205f182 drm/panel: ld9040: Add dummy prepare and unprepare routines
> >
> > :::::: TO: Ajay Kumar <ajaykumar.rs@samsung.com>
> > :::::: CC: Thierry Reding <treding@nvidia.com>
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> I really don't get what's the problem here. The listing of
> ld9040_prepare at the given commit and with the given .config is:

I wrote a tool to help debug these.
https://github.com/ClangBuiltLinux/frame-larger-than
If you fetch the randconfig and rebuild with debug info, that tool
will help show you which variables are used in which stack frames and
what their sizes are.  Also note that strange things get dug up from
randconfigs.


>
> 0000000000000630 <ld9040_prepare>:
> {
>  630:    f3 0f 1e fa              endbr64
>  634:    e8 00 00 00 00           callq  639 <ld9040_prepare+0x9>
>             635: R_X86_64_PLT32    __fentry__-0x4
>  639:    41 56                    push   %r14
>     ret = regulator_bulk_enable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
>  63b:    48 8d 77 30              lea    0x30(%rdi),%rsi
> {
>  63f:    41 55                    push   %r13
>  641:    41 54                    push   %r12
>     ret = regulator_bulk_enable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
>  643:    4c 8d 67 f8              lea    -0x8(%rdi),%r12
> {
>  647:    55                       push   %rbp
>  648:    48 89 fd                 mov    %rdi,%rbp
>     ret = regulator_bulk_enable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
>  64b:    bf 02 00 00 00           mov    $0x2,%edi
>  650:    e8 00 00 00 00           callq  655 <ld9040_prepare+0x25>
>             651: R_X86_64_PLT32    regulator_bulk_enable-0x4
>  655:    41 89 c5                 mov    %eax,%r13d
>     if (ret < 0)
>  658:    85 c0                    test   %eax,%eax
>  65a:    0f 88 3f 02 00 00        js     89f <ld9040_prepare+0x26f>
>     msleep(ctx->power_on_delay);
>  660:    48 b8 00 00 00 00 00     movabs $0xdffffc0000000000,%rax
>  667:    fc ff df
>  66a:    48 8d 7d 68              lea    0x68(%rbp),%rdi
>  66e:    48 89 fa                 mov    %rdi,%rdx
>  671:    48 c1 ea 03              shr    $0x3,%rdx
>  675:    0f b6 04 02              movzbl (%rdx,%rax,1),%eax
>  679:    84 c0                    test   %al,%al
>  67b:    74 08                    je     685 <ld9040_prepare+0x55>
>  67d:    3c 03                    cmp    $0x3,%al
>  67f:    0f 8e 38 02 00 00        jle    8bd <ld9040_prepare+0x28d>
>  685:    8b 7d 68                 mov    0x68(%rbp),%edi
>     gpiod_set_value(ctx->reset_gpio, 0);
>  688:    4c 8d 75 60              lea    0x60(%rbp),%r14
>     msleep(ctx->power_on_delay);
>  68c:    e8 00 00 00 00           callq  691 <ld9040_prepare+0x61>
>             68d: R_X86_64_PLT32    msleep-0x4
>     gpiod_set_value(ctx->reset_gpio, 0);
>  691:    4c 89 f2                 mov    %r14,%rdx
>  694:    48 b8 00 00 00 00 00     movabs $0xdffffc0000000000,%rax
>  69b:    fc ff df
>  69e:    48 c1 ea 03              shr    $0x3,%rdx
>  6a2:    80 3c 02 00              cmpb   $0x0,(%rdx,%rax,1)
>  6a6:    0f 85 53 02 00 00        jne    8ff <ld9040_prepare+0x2cf>
>  6ac:    48 8b 7d 60              mov    0x60(%rbp),%rdi
>     msleep(ctx->reset_delay);
>  6b0:    4c 8d 6d 6c              lea    0x6c(%rbp),%r13
>     gpiod_set_value(ctx->reset_gpio, 0);
>  6b4:    31 f6                    xor    %esi,%esi
>  6b6:    e8 00 00 00 00           callq  6bb <ld9040_prepare+0x8b>
>             6b7: R_X86_64_PLT32    gpiod_set_value-0x4
>     msleep(ctx->reset_delay);
>  6bb:    4c 89 ea                 mov    %r13,%rdx
>  6be:    48 b8 00 00 00 00 00     movabs $0xdffffc0000000000,%rax
>  6c5:    fc ff df
>  6c8:    48 c1 ea 03              shr    $0x3,%rdx
>  6cc:    0f b6 14 02              movzbl (%rdx,%rax,1),%edx
>  6d0:    4c 89 e8                 mov    %r13,%rax
>  6d3:    83 e0 07                 and    $0x7,%eax
>  6d6:    83 c0 03                 add    $0x3,%eax
>  6d9:    38 d0                    cmp    %dl,%al
>  6db:    7c 08                    jl     6e5 <ld9040_prepare+0xb5>
>  6dd:    84 d2                    test   %dl,%dl
>  6df:    0f 85 00 02 00 00        jne    8e5 <ld9040_prepare+0x2b5>
>  6e5:    8b 7d 6c                 mov    0x6c(%rbp),%edi
>  6e8:    e8 00 00 00 00           callq  6ed <ld9040_prepare+0xbd>
>             6e9: R_X86_64_PLT32    msleep-0x4
>     gpiod_set_value(ctx->reset_gpio, 1);
>  6ed:    4c 89 f2                 mov    %r14,%rdx
>  6f0:    48 b8 00 00 00 00 00     movabs $0xdffffc0000000000,%rax
>  6f7:    fc ff df
>  6fa:    48 c1 ea 03              shr    $0x3,%rdx
>  6fe:    80 3c 02 00              cmpb   $0x0,(%rdx,%rax,1)
>  702:    0f 85 ea 01 00 00        jne    8f2 <ld9040_prepare+0x2c2>
>  708:    48 8b 7d 60              mov    0x60(%rbp),%rdi
>  70c:    be 01 00 00 00           mov    $0x1,%esi
>  711:    e8 00 00 00 00           callq  716 <ld9040_prepare+0xe6>
>             712: R_X86_64_PLT32    gpiod_set_value-0x4
>     msleep(ctx->reset_delay);
>  716:    4c 89 ea                 mov    %r13,%rdx
>  719:    48 b8 00 00 00 00 00     movabs $0xdffffc0000000000,%rax
>  720:    fc ff df
>  723:    48 c1 ea 03              shr    $0x3,%rdx
>  727:    0f b6 14 02              movzbl (%rdx,%rax,1),%edx
>  72b:    4c 89 e8                 mov    %r13,%rax
>  72e:    83 e0 07                 and    $0x7,%eax
>  731:    83 c0 03                 add    $0x3,%eax
>  734:    38 d0                    cmp    %dl,%al
>  736:    7c 08                    jl     740 <ld9040_prepare+0x110>
>  738:    84 d2                    test   %dl,%dl
>  73a:    0f 85 98 01 00 00        jne    8d8 <ld9040_prepare+0x2a8>
>  740:    8b 7d 6c                 mov    0x6c(%rbp),%edi
>  743:    e8 00 00 00 00           callq  748 <ld9040_prepare+0x118>
>             744: R_X86_64_PLT32    msleep-0x4
>     ld9040_dcs_write_seq_static(ctx, MCS_USER_SETTING, 0x5a, 0x5a);
>  748:    ba 03 00 00 00           mov    $0x3,%edx
>  74d:    48 c7 c6 00 00 00 00     mov    $0x0,%rsi
>             750: R_X86_64_32S    .rodata+0x520
>  754:    4c 89 e7                 mov    %r12,%rdi
>  757:    e8 f4 fc ff ff           callq  450 <ld9040_dcs_write>
>     ld9040_dcs_write_seq_static(ctx, MCS_PANEL_CONDITION,
>  75c:    ba 18 00 00 00           mov    $0x18,%edx
>  761:    48 c7 c6 00 00 00 00     mov    $0x0,%rsi
>             764: R_X86_64_32S    .rodata+0x4e0
>  768:    4c 89 e7                 mov    %r12,%rdi
>  76b:    e8 e0 fc ff ff           callq  450 <ld9040_dcs_write>
>     ld9040_dcs_write_seq_static(ctx, MCS_DISPCTL,
>  770:    ba 06 00 00 00           mov    $0x6,%edx
>  775:    48 c7 c6 00 00 00 00     mov    $0x0,%rsi
>             778: R_X86_64_32S    .rodata+0x4a0
>  77c:    4c 89 e7                 mov    %r12,%rdi
>  77f:    e8 cc fc ff ff           callq  450 <ld9040_dcs_write>
>     ld9040_dcs_write_seq_static(ctx, MCS_MANPWR, 0x04);
>  784:    ba 02 00 00 00           mov    $0x2,%edx
>  789:    48 c7 c6 00 00 00 00     mov    $0x0,%rsi
>             78c: R_X86_64_32S    .rodata+0x460
>  790:    4c 89 e7                 mov    %r12,%rdi
>  793:    e8 b8 fc ff ff           callq  450 <ld9040_dcs_write>
>     ld9040_dcs_write_seq_static(ctx, MCS_POWER_CTRL,
>  798:    ba 08 00 00 00           mov    $0x8,%edx
>  79d:    48 c7 c6 00 00 00 00     mov    $0x0,%rsi
>             7a0: R_X86_64_32S    .rodata+0x420
>  7a4:    4c 89 e7                 mov    %r12,%rdi
>  7a7:    e8 a4 fc ff ff           callq  450 <ld9040_dcs_write>
>     ld9040_dcs_write_seq_static(ctx, MCS_ELVSS_ON, 0x0d, 0x00, 0x16);
>  7ac:    ba 04 00 00 00           mov    $0x4,%edx
>  7b1:    48 c7 c6 00 00 00 00     mov    $0x0,%rsi
>             7b4: R_X86_64_32S    .rodata+0x3e0
>  7b8:    4c 89 e7                 mov    %r12,%rdi
>  7bb:    e8 90 fc ff ff           callq  450 <ld9040_dcs_write>
>     ld9040_dcs_write_seq_static(ctx, MCS_GTCON, 0x09, 0x00, 0x00);
>  7c0:    ba 04 00 00 00           mov    $0x4,%edx
>  7c5:    4c 89 e7                 mov    %r12,%rdi
>  7c8:    48 c7 c6 00 00 00 00     mov    $0x0,%rsi
>             7cb: R_X86_64_32S    .rodata+0x3a0
>  7cf:    e8 7c fc ff ff           callq  450 <ld9040_dcs_write>
>     ld9040_dcs_write(ctx, ld9040_gammas[ctx->brightness],
>  7d4:    48 8d bd a8 00 00 00     lea    0xa8(%rbp),%rdi
>  7db:    48 b8 00 00 00 00 00     movabs $0xdffffc0000000000,%rax
>  7e2:    fc ff df
>  7e5:    48 89 fa                 mov    %rdi,%rdx
>  7e8:    48 c1 ea 03              shr    $0x3,%rdx
>  7ec:    0f b6 04 02              movzbl (%rdx,%rax,1),%eax
>  7f0:    84 c0                    test   %al,%al
>  7f2:    74 08                    je     7fc <ld9040_prepare+0x1cc>
>  7f4:    3c 03                    cmp    $0x3,%al
>  7f6:    0f 8e d2 00 00 00        jle    8ce <ld9040_prepare+0x29e>
>  7fc:    48 63 85 a8 00 00 00     movslq 0xa8(%rbp),%rax
>  803:    4c 89 e7                 mov    %r12,%rdi
>  806:    48 8d 14 80              lea    (%rax,%rax,4),%rdx
>  80a:    48 8d 04 50              lea    (%rax,%rdx,2),%rax
>  80e:    ba 16 00 00 00           mov    $0x16,%edx
>  813:    48 8d b4 00 00 00 00     lea    0x0(%rax,%rax,1),%rsi
>  81a:    00
>             817: R_X86_64_32S    .rodata+0x840
>  81b:    e8 30 fc ff ff           callq  450 <ld9040_dcs_write>
>     ld9040_dcs_write_seq_static(ctx, MCS_GAMMA_CTRL, 0x02, 0x5a);
>  820:    ba 03 00 00 00           mov    $0x3,%edx
>  825:    48 c7 c6 00 00 00 00     mov    $0x0,%rsi
>             828: R_X86_64_32S    .rodata+0x2e0
>  82c:    4c 89 e7                 mov    %r12,%rdi
>  82f:    e8 1c fc ff ff           callq  450 <ld9040_dcs_write>
>     ld9040_dcs_write_seq_static(ctx, MIPI_DCS_EXIT_SLEEP_MODE);
>  834:    ba 01 00 00 00           mov    $0x1,%edx
>  839:    48 c7 c6 00 00 00 00     mov    $0x0,%rsi
>             83c: R_X86_64_32S    .rodata+0x360
>  840:    4c 89 e7                 mov    %r12,%rdi
>  843:    e8 08 fc ff ff           callq  450 <ld9040_dcs_write>
>     ld9040_dcs_write_seq_static(ctx, MIPI_DCS_SET_DISPLAY_ON);
>  848:    ba 01 00 00 00           mov    $0x1,%edx
>  84d:    4c 89 e7                 mov    %r12,%rdi
>  850:    48 c7 c6 00 00 00 00     mov    $0x0,%rsi
>             853: R_X86_64_32S    .rodata+0x320
>  857:    e8 f4 fb ff ff           callq  450 <ld9040_dcs_write>
>     int ret = ctx->error;
>  85c:    48 8d bd ac 00 00 00     lea    0xac(%rbp),%rdi
>  863:    48 b8 00 00 00 00 00     movabs $0xdffffc0000000000,%rax
>  86a:    fc ff df
>  86d:    48 89 fa                 mov    %rdi,%rdx
>  870:    48 c1 ea 03              shr    $0x3,%rdx
>  874:    0f b6 14 02              movzbl (%rdx,%rax,1),%edx
>  878:    48 89 f8                 mov    %rdi,%rax
>  87b:    83 e0 07                 and    $0x7,%eax
>  87e:    83 c0 03                 add    $0x3,%eax
>  881:    38 d0                    cmp    %dl,%al
>  883:    7c 04                    jl     889 <ld9040_prepare+0x259>
>  885:    84 d2                    test   %dl,%dl
>  887:    75 3e                    jne    8c7 <ld9040_prepare+0x297>
>  889:    44 8b ad ac 00 00 00     mov    0xac(%rbp),%r13d
>     ctx->error = 0;
>  890:    c7 85 ac 00 00 00 00     movl   $0x0,0xac(%rbp)
>  897:    00 00 00
>     if (ret < 0)
>  89a:    45 85 ed                 test   %r13d,%r13d
>  89d:    78 0b                    js     8aa <ld9040_prepare+0x27a>
> }
>  89f:    5d                       pop    %rbp
>  8a0:    44 89 e8                 mov    %r13d,%eax
>  8a3:    41 5c                    pop    %r12
>  8a5:    41 5d                    pop    %r13
>  8a7:    41 5e                    pop    %r14
>  8a9:    c3                       retq
>
> I don't see it having a stack frame of 8312 bytes?
>
> Thanks,
> -Vladimir
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2Bh21hpABfDvthiwq_JwWGpqZ68VJxu5TOBVbw_Gaxpq8j%2BXQg%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnAKR_CtOccZohR_r1kzKKVuvo8LbpLi0s3ek%2B3u%2Bc_zw%40mail.gmail.com.
