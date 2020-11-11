Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKHRWD6QKGQEUDF6RIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C76F2AF8CE
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 20:16:58 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id q4sf1672008plr.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 11:16:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605122216; cv=pass;
        d=google.com; s=arc-20160816;
        b=l3elw5Fy5oNqOsw8tr09thoUZlJNMOeTWaM7xIayWXUOrjEWkN+WZjnGmWFc+rfZWP
         fI3UykQm4tEu0GdXg2xhBPEMUiS4VGnBfXSNztHHsfRLCVLSeEnjh3RCfbXfN15PI15m
         JG28vfSGCPwXLuRHvrucWuJ2Jiwl2V0ilhNfvHx6IkEhKaqDxvvXTM4DQ8Xz3kTD8E3S
         noPvK3eZXVebhQi7X66iUMogZa68WJsDkPAMoWqdrD9NcycZVasI2qVbzXp6cDvA6JB+
         V+/2YatzJ28r0OeP6gu5BCs/zYbyaj+vXu7fNUm/Oq73p5N+EWQOTtFc6lk4FQqfelig
         Nv6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ibyKMI1B2myPNmwYgDe3pBYsVhZaexU4jCmVrUsltLw=;
        b=qrjGsQ5Jl5Zx3dy1Bae47NKT6Z3OAY/RUpKjLsMGDGWIOyNaLiNw27bVE6QqczjfHd
         t9B45/4JbwModdOVKrYw4eWvgT0JSn9SWoG2lgg2MK4H3qgCAVwbkd/p/Dy2haYuWDBv
         Goy/TzmZ5KrV4ufUveaVGVrNFImy8Xs4nsFSb8p6gMb11UUNY3yhsH6n1iu+8z7rE40g
         ui84GDbsxs6Mk/PTHgv2C+Lmxnr04r/3cLYuVFcRkstqrt8hDFF3uHmaW5LXcARXtix1
         kQTTTwq8NzlBss/2LphIlLgK5LX673Zlt80zUo5QUBIjpreXj7Rbd2EQTnbo4NAeHDZj
         6m9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XPWXcEge;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ibyKMI1B2myPNmwYgDe3pBYsVhZaexU4jCmVrUsltLw=;
        b=kUFy3C0jCO3C4VzueFwcpe48UvpfQRsll7lcvrBwn9dArsdXwEwbF/x7FBGOVmrYoB
         BD8bGJuA7q9p97yGtwwO6K4JLMyqLhZqyWkmucWNgRnJSHnGdrdCLqIEcRIA9hCMesto
         UM0jQdCySuPj9Hl3XWCfeX7QcnEHvqbJKKXHMMl3ko2Y5Px71JmcHSxzVV85h0j6SsjJ
         4RQ0U5IY0mKTwFXvceWwozuc3jYm5d6OWFTEQbq2asu3wd630oJ2dS2pbjuPkYEtXExh
         A7gsylU0mlYPEmQzOwWXkIq7Jrrd0pXcySBmqmIOqrTyRYUxQlPz3ULnm5n9u8aOA6VI
         V6XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ibyKMI1B2myPNmwYgDe3pBYsVhZaexU4jCmVrUsltLw=;
        b=Fqmp7x8nHxLwPYM52Y1Cv5gtm/37pN+EzrYzWS3WpebICsrK/ahkSbe+jm67ifcFU/
         dC3WqaxLL2h24Gd0wpCkxRtyvppqMLRSaOCQLcxneeAOw6LIH3UxNz9oQbaYNjixd74c
         hK6VRh4a8ByBmQgRrgdoOtdCL21VbUdFJe6UBV/P9DIyw5fOAdVBoVPSv3zrC8h2njoE
         zIyAMKcZFqsJHPu9MSmoGyTweldkIWGLTiDjghPnNhDNJxpquqamZ4AQnOUvPAyVVHw7
         0jgF1HD1ot3aJxsR9/hO6SC3xXHV6AiQ6aUQiVOBo2Jyu1+pUb2anm+HfASg4rdYM80q
         EJyQ==
X-Gm-Message-State: AOAM533da2/eidv5zzQD732Q+ZBSXKVzCAe4QP4gRaDXU2wkFw0KLRwY
	99848nku/yOcvl+oMkhV9Ag=
X-Google-Smtp-Source: ABdhPJxw+rlytqANQjgL1D2hn0d7R0ataL0Ii0GtHDfInfZzDvxRH46Wj6ELAoEq52BTBoWrJqXPYA==
X-Received: by 2002:a62:1d58:0:b029:18b:f61:4d50 with SMTP id d85-20020a621d580000b029018b0f614d50mr25487989pfd.76.1605122216690;
        Wed, 11 Nov 2020 11:16:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:784b:: with SMTP id t72ls142960pfc.1.gmail; Wed, 11 Nov
 2020 11:16:56 -0800 (PST)
X-Received: by 2002:a65:6205:: with SMTP id d5mr13682578pgv.76.1605122216061;
        Wed, 11 Nov 2020 11:16:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605122216; cv=none;
        d=google.com; s=arc-20160816;
        b=LoQ1cYgXfOVLXhCoIi39CYUNRfwAFHoH4oowYhVVKYyOY77Wbcaj6Mp2Cf/YXINf0Z
         kP529EtUix34+dJxWKyUnVjbwnHAY3z3GC8pYeN1LbYjdQTdtSmTMzKZCqMRXxAfoDOC
         lzzNn6ysbpAQciY/ewFNGH6W9t2il4Z+MVSBsTQL44abb+uE+oJsA+CuHPFUtk3hLMns
         B21OW01AupNcj7TpSwvNrABbWcEEMy4/zUTS+JdwSCXTOyyf2q0VIFJHoAksLGXrePvR
         ZhlWrc76w3R4sA4QtbTRzm1CSQFHYHWbh1hIbssXaz5S5r4ixpto6cnYc/KMknsr44Go
         BAgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=m1i2WRtUNtOVarmfPGFkYgVBE/ms//4ROo7hE84/yM4=;
        b=Uk980TTZ1heqFvBe7PfR2gzD2wVM34g1hlsru0r3OG26jyymsBtFaqapRuDu1K7EdJ
         rImjV9Fr7KiDltvrooKx0A4D4SHDGmfvMjLvpM66MbFTQeV3myIT+UPPBe2VM6aFyy8a
         K7RJDzD1eg6l6t7jVSR/Ec+ia2Wca7R5ofz3PHmBQq9s1OrtB7LC4iW7LmsG3nZfRwUk
         y4CAqp1V+lBxeb+xpZFybOojH/oz86O1DyKLmTBhFIs4K1xM+lby4m2mf9PHAFJlZrMc
         SLJ6FHO4v1nr1YLM1Z2WWwf6vcs/tbJZ2Jg1atWG0NdzEW8LTecLSJP9cpbCsEvOkROu
         Rz1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XPWXcEge;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d2si223675pfr.4.2020.11.11.11.16.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 11:16:56 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id y7so2166757pfq.11
        for <clang-built-linux@googlegroups.com>; Wed, 11 Nov 2020 11:16:56 -0800 (PST)
X-Received: by 2002:a17:90b:110b:: with SMTP id gi11mr5083485pjb.25.1605122215581;
 Wed, 11 Nov 2020 11:16:55 -0800 (PST)
MIME-Version: 1.0
References: <1605006094-31097-6-git-send-email-magnus.karlsson@gmail.com>
 <202011110934.GFwFDfqe-lkp@intel.com> <CAJ8uoz2aDjLPtcTgZ_pO-=S9TgXm3c57rN8TTPXdqT7HOOKrhA@mail.gmail.com>
In-Reply-To: <CAJ8uoz2aDjLPtcTgZ_pO-=S9TgXm3c57rN8TTPXdqT7HOOKrhA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 11 Nov 2020 11:16:43 -0800
Message-ID: <CAKwvOd=Pws8npXdRuOVz+cgUYJ+nnztZCgMnZvP+Jr-dJ4z_Aw@mail.gmail.com>
Subject: Re: [PATCH bpf-next v2 5/5] i40e: use batched xsk Tx interfaces to
 increase performance
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Cc: kernel test robot <lkp@intel.com>, "Karlsson, Magnus" <magnus.karlsson@intel.com>, 
	=?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Network Development <netdev@vger.kernel.org>, Jonathan Lemon <jonathan.lemon@gmail.com>, 
	Jakub Kicinski <kuba@kernel.org>, John Fastabend <john.fastabend@gmail.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, bpf <bpf@vger.kernel.org>, 
	Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XPWXcEge;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Wed, Nov 11, 2020 at 3:57 AM Magnus Karlsson
<magnus.karlsson@gmail.com> wrote:
>
> On Wed, Nov 11, 2020 at 2:38 AM kernel test robot <lkp@intel.com> wrote:
> >
> > Hi Magnus,
> >
> > I love your patch! Perhaps something to improve:
> >
> > [auto build test WARNING on bpf-next/master]
> >
> > url:    https://github.com/0day-ci/linux/commits/Magnus-Karlsson/xsk-i40e-Tx-performance-improvements/20201110-190310
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git master
> > config: powerpc64-randconfig-r025-20201110 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4d81c8adb6ed9840257f6cb6b93f60856d422a15)

^ Note: clang

> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install powerpc64 cross compiling tool for clang build
> >         # apt-get install binutils-powerpc64-linux-gnu
> >         # https://github.com/0day-ci/linux/commit/b016bbeac6692a93e61b28efa430d64645032b5e
> >         git remote add linux-review https://github.com/0day-ci/linux
> >         git fetch --no-tags linux-review Magnus-Karlsson/xsk-i40e-Tx-performance-improvements/20201110-190310
> >         git checkout b016bbeac6692a93e61b28efa430d64645032b5e
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/net/ethernet/intel/i40e/i40e_xsk.c:417:13: warning: unknown pragma ignored [-Wunknown-pragmas]
> >    #pragma GCC unroll 4
> >                ^
> >    1 warning generated.
>
> And I was hoping that unknown pragmas would be ignored, but that will
> obviously not be the case with -Wunknown-pragmas added. The unrolling
> of this inner loop where the code spends most of its time gives me
> nearly 1 Mpps extra in performance which is substantial, so I would
> like to get this unrolled in some way, but without the warning. Need
> some advice please. Here are some options that comes in mind:
>
> #1: Suppress unknown pragma warnings in this file only by adding
> CFLAGS_i40e_xsk.o += -Wno-unknown-pragmas (or whatever that option
> might be) in the Makefile
>
> #2: Force the compiler to loop-unroll the loop with for example a
> switch statement with four cases that all fall through. This will make
> the code less readable.
>
> #3: Manually loop-unroll the loop. This will make the code even less
> readable than #2.

#4 support both compilers.  Note Clang's syntax is slightly different
here; it doesn't accept GCC specific pragmas, and uses a slightly
different form:
https://clang.llvm.org/docs/LanguageExtensions.html#loop-unrolling .
If you wrap that in a macro based on `#ifdef __clang__`, that should
do the trick.

>
> I prefer #1 as I like to keep the code readable, but you might have
> other better suggestions on how to tackle this.
>
> Thanks: Magnus
>
> > vim +417 drivers/net/ethernet/intel/i40e/i40e_xsk.c
> >
> >    408
> >    409  static void i40e_xmit_pkt_batch(struct i40e_ring *xdp_ring, struct xdp_desc *desc,
> >    410                                  unsigned int *total_bytes)
> >    411  {
> >    412          u16 ntu = xdp_ring->next_to_use;
> >    413          struct i40e_tx_desc *tx_desc;
> >    414          dma_addr_t dma;
> >    415          u32 i;
> >    416
> >  > 417  #pragma GCC unroll 4
> >    418          for (i = 0; i < PKTS_PER_BATCH; i++) {
> >    419                  dma = xsk_buff_raw_get_dma(xdp_ring->xsk_pool, desc[i].addr);
> >    420                  xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, desc[i].len);
> >    421
> >    422                  tx_desc = I40E_TX_DESC(xdp_ring, ntu++);
> >    423                  tx_desc->buffer_addr = cpu_to_le64(dma);
> >    424                  tx_desc->cmd_type_offset_bsz = build_ctob(I40E_TX_DESC_CMD_ICRC |
> >    425                                                            I40E_TX_DESC_CMD_EOP,
> >    426                                                            0, desc[i].len, 0);
> >    427
> >    428                  *total_bytes += desc[i].len;
> >    429          }
> >    430
> >    431          xdp_ring->next_to_use = ntu;
> >    432  }
> >    433
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJ8uoz2aDjLPtcTgZ_pO-%3DS9TgXm3c57rN8TTPXdqT7HOOKrhA%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DPws8npXdRuOVz%2BcgUYJ%2BnnztZCgMnZvP%2BJr-dJ4z_Aw%40mail.gmail.com.
