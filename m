Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZVNZH5QKGQEVYN463A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id F01B727B70D
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 23:34:31 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id s12sf1879551pfu.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 14:34:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601328870; cv=pass;
        d=google.com; s=arc-20160816;
        b=NDwsgw2DoTRJ6ai2FIlfZZ/WSrWBE42oovzb8cdh8pwld/eMUmvgiocSymPU0+xVLu
         0VMa63SQWB/fzf5HAm+n3Ma8EBMYoHy47r0piZPe5bWmQ+661Yh8T3nxwLzFxLToRMu2
         346pKCDdm7OB8I+wuo/zx9HPZyrMl+N7YcgfwBvzWJy8ymgCsJOH32VFRm5Isx2oWijd
         X1ZJOKAB328lZrXiY49Qyy1tUhwirITiWEzAQLKyphfirUSC26IPEovote+XXCwG39Yp
         pylUVkIadGbRWpBKRC2suCwLvOJ2ZSnweL+iuJEtuTHjwN83FkQ141TiwOUFDMt0xMEj
         GYUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=19GFqEKqPW7ZAtC/vjKmwYc9iNsr6Y7LrSsHu+/JLaI=;
        b=X++1NSxh/0DaXqkdgxioW/L5TGPSqVA3BPLE3MNTZ3zhMMGmnHFDu9RA/zfRgBX5Ym
         jEyO9BZszs5GhTaNf5BwzGcfBVyO8THa5NwuZdj9mmxHnHLBXxhQS7IwVCy9/al+PR4t
         3X4wOtdydDjQhqAWoBS38DpeW0MyvkYbcusbJVwW3omoifmiUL6jXiTKSMBvtGR1DR2C
         Gi12cYqwtZ/tC54Yo2NkzB6kspOdaGD6Rlm8PV0D4+JpJKvteJr0+OjwCg1g5YzAGbIO
         iBJWqfUBSO4yofYOQ9iz3FNtjyWgLOeysDHahyhxCFj50DimjPFskC/GNIMpiaGBkvDB
         xehg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GQLzz5cH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=19GFqEKqPW7ZAtC/vjKmwYc9iNsr6Y7LrSsHu+/JLaI=;
        b=dZjuMbyRq6q+IaVB0fgipjnWs/8HoIelvqWU2RaNvcM/v9HMo+7vCzW40WdUmb1lmk
         0zghqa7ehOiXtjaCs27Nm3udsXHWjk1MPmEOA30mE7v0DLCbxI3TnfulPOWUE88B5A1Y
         9Vu1XO4v/CbduFEDhMWEZRxVgmIKKVW1ood8H0Dmxy+JhRJYf9xjkLt6rD8hkgHwh4GA
         /GyHO5JBVu0q2LPeBUpMMAZ8X7Qmq76+rVIc7C0Ukrb00btH4x2IgvSLshaHHFX/iXf9
         v6e5YXhw6reOQjZgvpsNhEgOneGqtYot1ukUO/lkIfyEMTeg7tf+kHzHOkYN6cMwhu9C
         FYbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=19GFqEKqPW7ZAtC/vjKmwYc9iNsr6Y7LrSsHu+/JLaI=;
        b=ZghU+PsfhuGW0Kn4lfiuj0mpTw1GXUJ9gmsGl2/jo79ZHT/f82yW62rJ/akJra/F1e
         NilbrhBHzMVeHce/Ms6QaPXLxyDBjisjdjaW4MOrpya6Zqncehm4+xWrloObx8ByJCXr
         7CxfjUL+KmZrzuYQvdUlqlQFSgBs6Gecy9d4AozpV6JIYbxK+rF5NFKslGMvPNpvXnLg
         MIDXFlLHc0DNkGi1ijy6QyyWsQGJQ2kFSnzg9FPO1mHFeXE2pCBTNSQW8lWrkq6NEoOf
         fYQ1u0D7nZcyr3L9ut76BspE8BI+KPIEl4pJkAq6tbdFGvaPoMNkmJyXb/X1rfiBYbGQ
         JzyQ==
X-Gm-Message-State: AOAM5317frbtWlpuDgMRhlCx5T/RdZy2SRjr/St+ykNQ6OmUsGy/Okfr
	Yow+jupeHuYlTVik3wiG6G8=
X-Google-Smtp-Source: ABdhPJypg/19bfgpPzuerEYU2a1OdvKc5DpEOAt5y6rEjXnPPKXXfEKg/UKkM1ldBTX4PGxEyP29Lg==
X-Received: by 2002:a63:8c50:: with SMTP id q16mr784600pgn.10.1601328870636;
        Mon, 28 Sep 2020 14:34:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a412:: with SMTP id p18ls3791644plq.11.gmail; Mon,
 28 Sep 2020 14:34:30 -0700 (PDT)
X-Received: by 2002:a17:902:7608:b029:d0:cbe1:e70e with SMTP id k8-20020a1709027608b02900d0cbe1e70emr1371119pll.28.1601328870119;
        Mon, 28 Sep 2020 14:34:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601328870; cv=none;
        d=google.com; s=arc-20160816;
        b=jm5e3jBTxDH13UNA6IpbIOlCg2sznMq1OaJXNNl8bptQH/vizb0OEwYYRD1b3KXU39
         XX5c/111K/tmV5TyNJ5MMoWa2vC8blkKVgwuJPjGW+BcOBW/OyCcUpKjcR8UNV2B3/ZH
         8r/e+pKglLGdpw796O54BqNGM5T6ToQ9xy6ETQQMyGAJhDAWlm4WjvTUnWivaoW2X7T6
         V3z3/jgwp2UeccPRWlGOiyyiOfPtYUqru7qtoqjCPXPtMotZsl1vsLYAJO8so/+/+Z+t
         Cpkzy+1RqVfKT6taHNpsBQXWOBPKaXPMJslXKo/GEf+9W7mVy/k9TbkfMHtywQi5aY51
         gAcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BBebAY1HV0JoKK17flOfTI67WwZj6s5wZR4Zi/bcS7A=;
        b=UW91WRoIGX5m8Rp2owS6siyrJq+ZXf7FokfEy5SqQpx0mkNhnOAd4OsWpzfzFsfGd7
         2aG6xC6GjRAYnZGqGyqgS5z3xaUXkzpBdtev9Xz7sYexAUzCiTy53vBmbVU5j7/71p6O
         JkeCEYf1KkJYybT9PcojfmB8xm4C79sjUaViMuDX1coPy2diUaVBVCdvpm+a2IPNlUEk
         1XRz2MZzbwtxnPAxlDmQF3wUl0X4vSKQjIytaOsfOoPsmcGrlwScfK6UDp8Rv86VmM/M
         tr5GGHGcxAUH96dAu+T3R1SW3erbATDj0lHN9BXi6jEKtK3GHYs1j0rqZXq2AKrKGU6W
         6qIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GQLzz5cH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id d60si546663pjk.0.2020.09.28.14.34.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 14:34:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id u24so2073292pgi.1
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 14:34:30 -0700 (PDT)
X-Received: by 2002:a17:902:c40d:b029:d2:93e8:1f4b with SMTP id
 k13-20020a170902c40db02900d293e81f4bmr237656plk.29.1601328869579; Mon, 28 Sep
 2020 14:34:29 -0700 (PDT)
MIME-Version: 1.0
References: <202009120721.0ZIcBj7D%lkp@intel.com> <CAKwvOdm7yrbevMyDYc20ymFBRQgDVL2PgAX__PkZBBQOKHSnJA@mail.gmail.com>
 <CAKwvOdnN2Q3R0kpXbv38vVKXkDT1KAS1-O33mONzb4tHbopx5w@mail.gmail.com> <20200928212941.GA1373771@ubuntu-m3-large-x86>
In-Reply-To: <20200928212941.GA1373771@ubuntu-m3-large-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Sep 2020 14:34:17 -0700
Message-ID: <CAKwvOd=SnnsY_7UHZQdfzAgLjTX-=hp1xZ8P_7Wq1teSTHgFMg@mail.gmail.com>
Subject: Re: [linux-next:master 7069/7089] ld.lld: warning:
 arch/arm/built-in.a(kernel/dma.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Stephen Rothwell <sfr@canb.auug.org.au>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GQLzz5cH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Mon, Sep 28, 2020 at 2:29 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Sep 28, 2020 at 02:11:57PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> > On Fri, Sep 11, 2020 at 10:59 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > + Kees
> > >
> > >
> > > On Fri, Sep 11, 2020, 4:55 PM kernel test robot <lkp@intel.com> wrote:
> > >>
> > >> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > >> head:   d5b2251d63b5344ee827d3680fa79bdb9f9ddfa1
> > >> commit: f1187720d7c95127a3db17501c921cb7a3574e30 [7069/7089] Merge branch 'akpm-current/current' into master
> > >> config: arm-randconfig-r023-20200911 (attached as .config)
> >
> > ^ randconfig
> >
> > >> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0448d11a06b451a63a8f60408fec613ad24801ba)
> > >> reproduce (this is a W=1 build):
> > >>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >>         chmod +x ~/bin/make.cross
> > >>         # install arm cross compiling tool for clang build
> > >>         # apt-get install binutils-arm-linux-gnueabi
> > >>         git checkout f1187720d7c95127a3db17501c921cb7a3574e30
> > >>         # save the attached .config to linux build tree
> > >>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> > >>
> > >> If you fix the issue, kindly add following tag as appropriate
> > >> Reported-by: kernel test robot <lkp@intel.com>
> > >>
> > >> All warnings (new ones prefixed by >>):
> > >>
> > >>    ld.lld: warning: init/built-in.a(main.o):(.ARM.extab) is being placed in '.ARM.extab'
> > >>    ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.init.text) is being placed in '.ARM.extab.init.text'
> > >>    ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.ref.text) is being placed in '.ARM.extab.ref.text'
> >
> > ^ so these three probably need to be explicitly mentioned in a linker script?
>
> Isn't this https://github.com/ClangBuiltLinux/linux/issues/1152?
>
> I have been waiting for feedback on that diff before sending it but I
> guess I should draft up a proper commit message and send it along.

Ah, right.  Please send that upstream and I'll help test+review.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DSnnsY_7UHZQdfzAgLjTX-%3Dhp1xZ8P_7Wq1teSTHgFMg%40mail.gmail.com.
