Return-Path: <clang-built-linux+bncBCP5TCG4SYBBBJO77SDQMGQEB72F6ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4C13D6916
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 23:56:54 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id g11-20020a25ae4b0000b02905792fb55b0bsf4909087ybe.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 14:56:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627336613; cv=pass;
        d=google.com; s=arc-20160816;
        b=P+ujtPX1RwaIWVGC0lzfernKEYTPFrUGWb9Acs/rPZ1lz9BlSG5O/NxEPcBJJzc0za
         Y9FpXMm+Kpp7TRHC0jCrScwFzxZ5/B6kNXNaouRE+dv5e3AJW3RPgYCZO9ia2QMyd9B1
         9elr9ejDSo5Ykrf+UK2yuLHb9prBWYFx+XJqol4j626eXXiPfd4QRwC8jRu/FOwWd0Xk
         LAuZvvrw7vj/W+WMLCcaUsMeyBFz4kMKmJnqlNXXATFTbhUdHzDe4PC//bujFO3C/b9a
         Ts9yl9rB8MB4Z/kHBHChqBnd6C0s8k3Ye6SMrcf6LJpAKqS4idFxREW8/BuYj+/Tdpda
         ig4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=iVm6O5vzW5hbUjGXSJCJGHdQHEdl14YCeUtS+Jgwnwc=;
        b=DUNDCEjgeaoGnsf6PAXokbkfyP8dpr+isx5qPJAEsErZVDWwHXBQJ5hcV4GXvmtklE
         KWwzoehQDST5CR3c7CfEyF8qG9RCpvVJJDKUWTR5g2U/QA7/6KUXG8yxaLIdE4IHj4Lk
         mMPjsEzLIq7+qNmbxnDBXki7ITpwYGMUyBqXkmiMJy3Ao/ICpeXaQYVXQKs3KG+AvUjb
         XcFjQwgAD85IDaQTbWTao2U225VyjdeX00YZs15HASKKk+uqS4wqxoaWQFbBSpvwCXOf
         sigrUXDocRH6EqF2RFWTZFSW+ZaiyuCAEncSlRPf0Uk6FcRIwDXVsCHT29WscdFNKNmp
         w+Cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KNah28FQ;
       spf=pass (google.com: domain of prabhakar.csengg@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=prabhakar.csengg@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iVm6O5vzW5hbUjGXSJCJGHdQHEdl14YCeUtS+Jgwnwc=;
        b=iHec1cSmkHMVwVpMUYPMuL46Cj+INDRSEXKx8OZQbMpjElPHr2JYvSaQQrILluNKAP
         FrodM9Qpdhg6Ygd3ep4lAH45c0mjnl+Kzn5rICFGhMRUfQ324EbqpptxZKbPfFmomxGX
         VziUwShh2x4SilCZSNC6ICqE69BUQtupBs1csq40w1HTECO2lggzpUO49kCRVi2Zs4Tj
         6TQjuiwnws2WHIYe1Zm6Q+JoUzMXmi2hJLeGGpi8YbRvwvmtUKpkpa53bx7i+SSBton5
         slyOYeqLv3o72x2BwL3aWOZETKzpTCgWhvCOIBOzAa/qt+f/ZD6VRpr3+nBTrjIQbMsH
         4O2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iVm6O5vzW5hbUjGXSJCJGHdQHEdl14YCeUtS+Jgwnwc=;
        b=nxBPnenO2OaSAwVf9Gw3axZyCDXd3aZwpLa0aNiopN/ABz9rKjFt83B7/xi+e3DT72
         OKyvJPdK6tJ5fF7jsWBTHV+oo0ZxjrNgfi/Y94FpnYVWizZAyW1I7J9rsRYWcXaq8yM0
         xkTimL54aCx6VE18l/EQC4eSm1Gr+P9N4T6RIpXhINCWdoSnPmGQH7uw0uLJTZbUt7GR
         j1WD7WbramuOveychg0fF0pkrCQOy5zJJb66caQe8secl0s60qlZIHu/DaJ2QG9g2HCE
         L5uKFE2Q7R4buSuBt6khPzrq+w2ZtNYmGyw0o/sW8IY1hir9eg/Ys2Ridq1I3vq5/kki
         SU4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iVm6O5vzW5hbUjGXSJCJGHdQHEdl14YCeUtS+Jgwnwc=;
        b=GMEYiaN/2iB08JUaz4do0DMDy/5mg6v6912vBJPEMUsFx36f2yqBGhxL81ovGn2Pi3
         FcE6jnqE64ZpDmYtracgA0FVmqhVdlwmHlNjFxjbjw/BC0g/yI+pwG8dQWSFapvTQTJl
         3gY5pk8E+KVUjg6e2od9NMLg6c3yqCLM1yjjtr+LBMRCQqPxcacKknZD8vWVObz8yrZU
         RONBeI0N60AJovEgHV4ywwZKOtm2A+2lJ7qsXPD+8cZORetscwu08o6TnN50fhVsOdek
         iwOYxuBJO7CjI6uB/7DN8SuN/PYOe9wnxncMoR8fQp9Nt4mCd6IB4UuswIRe5dcZxgTL
         4yXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310A3w/NIKVZHTgyQXz2DVbI6QWf5vAnh/37M3tJi73EcWTG+Nf
	t+xjkxSORDqsj88r63oKyo4=
X-Google-Smtp-Source: ABdhPJwkS6nVNaiFTWZrMtYDDJ9tbj6HQKt7BmyjwdcQk/R4+eCr3s4lGh2UdeoXoeWZWFUhRd6E2Q==
X-Received: by 2002:a25:c589:: with SMTP id v131mr18053935ybe.344.1627336613676;
        Mon, 26 Jul 2021 14:56:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9808:: with SMTP id a8ls1704259ybo.11.gmail; Mon, 26 Jul
 2021 14:56:53 -0700 (PDT)
X-Received: by 2002:a25:780e:: with SMTP id t14mr27061930ybc.318.1627336613174;
        Mon, 26 Jul 2021 14:56:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627336613; cv=none;
        d=google.com; s=arc-20160816;
        b=bEabBu1Gk3krDjPhNSZMhbdSCuBtHMw6lTDxtde0j5TaLljzZtfAZp9PNMdy5xvZm/
         d+ZKNp/59K/VeVoJ3aIOK2N4xP4YIBXtopxgyKHze3i/RdqMOhRJz6bf3xxnOJdS12WN
         lLnI/eca6zbU59Qygs4ZI3wvz125MvAzPIwd5CknTjF2uBb/45iacLLXLjAhKdAmY5GJ
         VUSZpNCeuj0SWBv63mWILHYf/yIGqOK0/3TmqN9ZkZ9sY8Raa30Of9xZYghV+YNfQEzJ
         d7FwZLUcoYYAKDMuz/wIMgcG4i3vTLKni8YiyKlIgZCBCrCsaUcK2RXEYWaaognFZoU3
         eUOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sBI78aRCVQAvE8Z8PpiRODU8s6N59NkofucxXTLbXbM=;
        b=on/oNJ/yev3J/3Hk5yEksrNy2522ST7L1hoZEQlKn3Qe5C6a6TnsETJ73zkf/6L9mO
         qQRIFn5mYC5+Qx2sS4YRb56p+1i9GRh0J96lxizk0ddKul+3ltMeaaFITvVFOU2ebb5J
         o/YGUXXyeXcQVXtrutZybBEyD8/LQoDzzZLtOqf9sfheaSaMZHFP2ceL6WSyt7txI7x1
         oCcHnKyTw0f6UikkZOpY179axIrRo2M7KuCoKvy7PKdSjt0dTKLwpgxn5U6HeISQGUbJ
         DVe7mZZLW2tC3U9v4etIMFc3oDmuPrJywdIM+KZXf8xjxs10FZsL3snBb/2IEGVwN75o
         IKfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KNah28FQ;
       spf=pass (google.com: domain of prabhakar.csengg@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=prabhakar.csengg@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com. [2607:f8b0:4864:20::b2f])
        by gmr-mx.google.com with ESMTPS id o187si113405ybo.0.2021.07.26.14.56.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jul 2021 14:56:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of prabhakar.csengg@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) client-ip=2607:f8b0:4864:20::b2f;
Received: by mail-yb1-xb2f.google.com with SMTP id f26so13654608ybj.5
        for <clang-built-linux@googlegroups.com>; Mon, 26 Jul 2021 14:56:53 -0700 (PDT)
X-Received: by 2002:a25:2449:: with SMTP id k70mr10224909ybk.156.1627336612855;
 Mon, 26 Jul 2021 14:56:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210721194951.30983-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <202107251336.iD47PRoA-lkp@intel.com> <20210725094605.gzhrbunkot7ytvel@pengutronix.de>
 <CAMuHMdUuFdc5JJfdsvFTfKPh1Z+o0iTabHLso4U6DUHRJowD6g@mail.gmail.com>
In-Reply-To: <CAMuHMdUuFdc5JJfdsvFTfKPh1Z+o0iTabHLso4U6DUHRJowD6g@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Mon, 26 Jul 2021 22:56:26 +0100
Message-ID: <CA+V-a8s-DDsTqx6R4bqtA3ruWF=8E_==ao45+toYREDvWsrYZg@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] can: rcar_canfd: Add support for RZ/G2L family
To: Geert Uytterhoeven <geert@linux-m68k.org>, Marc Kleine-Budde <mkl@pengutronix.de>
Cc: kernel test robot <lkp@intel.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Rob Herring <robh+dt@kernel.org>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Wolfgang Grandegger <wg@grandegger.com>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, linux-can@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: prabhakar.csengg@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KNah28FQ;       spf=pass
 (google.com: domain of prabhakar.csengg@gmail.com designates
 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=prabhakar.csengg@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Geert, Marc,

On Mon, Jul 26, 2021 at 9:07 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Marc,
>
> On Sun, Jul 25, 2021 at 11:46 AM Marc Kleine-Budde <mkl@pengutronix.de> wrote:
> > On 25.07.2021 13:39:37, kernel test robot wrote:
> > > [auto build test WARNING on renesas-devel/next]
> > > [also build test WARNING on v5.14-rc2 next-20210723]
> > > [cannot apply to mkl-can-next/testing robh/for-next]
> > > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > > And when submitting patch, we suggest to use '--base' as documented in
> > > https://git-scm.com/docs/git-format-patch]
> > >
> > > url:    https://github.com/0day-ci/linux/commits/Lad-Prabhakar/Renesas-RZ-G2L-CANFD-support/20210722-035332
> > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git next
> > > config: arm64-randconfig-r031-20210723 (attached as .config)
> > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9625ca5b602616b2f5584e8a49ba93c52c141e40)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install arm64 cross compiling tool for clang build
> > >         # apt-get install binutils-aarch64-linux-gnu
> > >         # https://github.com/0day-ci/linux/commit/082d605e73c5922419a736aa9ecd3a76c0241bf7
> > >         git remote add linux-review https://github.com/0day-ci/linux
> > >         git fetch --no-tags linux-review Lad-Prabhakar/Renesas-RZ-G2L-CANFD-support/20210722-035332
> > >         git checkout 082d605e73c5922419a736aa9ecd3a76c0241bf7
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> drivers/net/can/rcar/rcar_canfd.c:1699:12: warning: cast to smaller integer type 'enum rcanfd_chip_id' from 'const void *' [-Wvoid-pointer-to-enum-cast]
> > >            chip_id = (enum rcanfd_chip_id)of_device_get_match_data(&pdev->dev);
> > >                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > >    1 warning generated.
> >
> > Seems we need the cast (uintptr_t), that I asked you to remove. Can you
>
> Bummer, I had seen your comment while reading email on my phone,
> but forgot to reply when I got back to my computer...
>
> > test if
> >
> > | chip_id = (enum rcanfd_chip_id)(uintptr_t)of_device_get_match_data(&pdev->dev);
> >
> > works?
>
> Just
>
>     chip_id = (uintptr_t)of_device_get_match_data(&pdev->dev);
>
> should be fine.
>
Above works, cast is not required.

Cheers,
Prabhakar

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

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BV-a8s-DDsTqx6R4bqtA3ruWF%3D8E_%3D%3Dao45%2BtoYREDvWsrYZg%40mail.gmail.com.
