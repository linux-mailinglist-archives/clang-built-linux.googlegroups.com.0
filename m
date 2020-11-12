Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ46W36QKGQE53HPQOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDAA2B0E2E
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 20:39:21 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id s130sf4404835pgc.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 11:39:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605209960; cv=pass;
        d=google.com; s=arc-20160816;
        b=MsCxAKLrO4FSCOnG3RK9eyun7bzLtSvJgU5cNhvDihjjLznw3MaFR9F1r65EK9Ftru
         6l8dYsm79Fi0bons6Gh56KL9SxJUhE8PK9yQRT4IBOGi9P9DR+A8Wn90PcWYD4U+wyaU
         iItC3TirGaZMO4zF0xsb1l822KtUnu2LntUFEsRDwBd80j7VksE/msDXz46E+HYZ5ROl
         DGo4792R0pJR1tvvu0Pq8f6z78bkPwD9DmSE7T1u/LLgRfqrIuBOYhSSYrAWdY+J3FZd
         PqBe1i0NVaGlZkEi4BAzyYS/ScC+HOB6PZl3k+f6b6mKHSgFD+ej62zUzFaV67M9BIvd
         Glew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nMsgN/1c5NUNwW+T4IPOHHd2CHck4o9wzMquCGHY1sE=;
        b=FdOfd5li45CWUPDsW9NucBotJ6cBLgKBbMcQEzU7IrbxtdDx3AA5uetl+t111gu/M/
         BATIeRa/nvRoJemq1XJoJbCHXLvNi+f+MLq5eVdN33omZ5jJGHwfk7HFYT921LeRqX6f
         iXKo8XOiIoF5JyFb8IgEyFCz2JZdk3fFyKceJ14AkpVPtAv9KXtE+/8lADQMSyGmkTfk
         cypvbzIxgpVNbYNbMntx8Kb8vdjem+x/7NNwD8dZzju27xrSCUbusC+By4C6+atFJ/zB
         yjCyTK9ksSgldjajp0y5SoN6ba1RNBPCrdy3cIifPytHXqSVZyBUoW4CunCSeT4wiu5r
         IH4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fx8cSFnH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nMsgN/1c5NUNwW+T4IPOHHd2CHck4o9wzMquCGHY1sE=;
        b=eOWgmV805Hz1SXfP+V7XNouBCJczWZvW6KCQ9AuD+UmAxMTqjhRyagwsBkgadUO4Xs
         EmoGqPuel40bOdUZ4wJ51ntvi0ykxoqDiSIRcF+E8LA7gG8SvwVLnDNjDCR4/vRcEvxN
         tfL/zfB74g2LjusKDVYVWl2ys+XbdEeNss6xq6m6ojAuU3gb07FIkv5d60IOVhS/y9eI
         G9jIVkdNNhFFMb+GbGosS0rcZXJ/oU+iU0F/Tq7RLYwk6uFWV3z8FsVhlC2UcF3r1lF/
         Rt86UmZg3TG/p5cl0C1mdGaJT7D0KH3t49YuaCMbdtaJAB19BcX8LBiwBrBF4fVEir9f
         B/0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nMsgN/1c5NUNwW+T4IPOHHd2CHck4o9wzMquCGHY1sE=;
        b=bFBES6AG75p19NEYg8+BHEX/mmnffOd53XMLJ7WFNfeXm178JB1ORsLLYowcwbkrSg
         p2YHZ6QU1IdVYpz+vL6pMH3+dvWqHWrDLJ9WWFOLSx2ih1C3Jbq/gIQh4Lda0Y5KmGbT
         JCz+cTuMQAN47qwzi7eWNxIccnnIotgIqtIwfuT43KWzqcaD1eOq3HtscHAjANIYGdgy
         M1u+otwKqEuryZyZoE8Wa9rxBC52ps9jELkWdZ5TCJUh2RtVL3GcBEXGMrawhhQXoMJr
         T3uBiZRlirX24LZb0e4q3P3H7B+4I8+GYjj+6CNLEmyRTYr2t12ysFqu0etzaQbHocI2
         Xejg==
X-Gm-Message-State: AOAM531TpKMclnjKsXNBe6UgkDzgVLWrxlUswEePT1dOM/IX5+hMmhFW
	bon7we5wAKfh9CGPh3EbrJ4=
X-Google-Smtp-Source: ABdhPJy9t52pKvc8pvyAR2aV/+ZHOHGvYjfCPBn+K/HepyQ5HnYt/YiI0O/pQtlarysZcRQbIYxOKQ==
X-Received: by 2002:a62:870c:0:b029:18b:d345:70f3 with SMTP id i12-20020a62870c0000b029018bd34570f3mr1128736pfe.30.1605209960107;
        Thu, 12 Nov 2020 11:39:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7745:: with SMTP id s66ls1353229pfc.0.gmail; Thu, 12 Nov
 2020 11:39:19 -0800 (PST)
X-Received: by 2002:aa7:8154:0:b029:156:4b89:8072 with SMTP id d20-20020aa781540000b02901564b898072mr808717pfn.51.1605209959513;
        Thu, 12 Nov 2020 11:39:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605209959; cv=none;
        d=google.com; s=arc-20160816;
        b=RJVGFS4jZGru19w5N6lv9wtBop0Nt5SwVU4WbpQT097p9Uv3beAvQ3l/rPwFJRRk44
         /gI0gCjBAXp3XjqyDeEpLiQ5PzXC7pqOPObeidwXlyVBT3qSSmPyi55Yu1JUfGbR7EVx
         EY19pHmMcBAcTNz1xR72+it4PIK6gEpGFiXU6yQGuhJMUG3NBJ+n6klUPDmjogJegc+s
         4KWV6zAkldImhQ9FIoQhnIf6o7N6+Ckov28SMW/Yce130VE1vS9fjtcbs1AzwdZPw0WA
         I4tRSbOTDPXe8FJF9cj6gTrmp519m0nK4aIUdOHuUVzRwJ7kVMifjaN11qLzMYZOXWEG
         EIfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=T6j1c8kOzPGeWxx6vJPWmOZFl41b2ThqYxcvjK4xAac=;
        b=YOcB1cJH1lSfN4uocXJTMQMDaZ1djt8yGhAvcJiD+fbnmnXGGrUZbWs0O1TA2P3p7W
         frncV0EbyxgNXxhjOXZ6rrz4+A9y6lsyi0RrNJkyKR5RlR83nGha3Zyv6EgmMkhkL04y
         UxKxln1RZ9gD2QTH12PBqLerSerJ+86eyI2bigWE3RnchQkQr7TYUzCPiiwN80IQgwuS
         ZZ8Os1uEWxzi/leh5kMYlWKzdDQf7eSTHPY3CtSrNCngsBTPimM0i4cz8bd/Bu+rNckZ
         euAc0eekT/qwfw2MR/tGL+XjE39qhbEog9PYVFCH9fM3+DYyScG+CvP+tA9j1cxR+I1E
         r7Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fx8cSFnH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id l8si514581pjt.1.2020.11.12.11.39.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 11:39:19 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id c66so5504636pfa.4
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 11:39:19 -0800 (PST)
X-Received: by 2002:a63:b55e:: with SMTP id u30mr830468pgo.381.1605209958904;
 Thu, 12 Nov 2020 11:39:18 -0800 (PST)
MIME-Version: 1.0
References: <1605006094-31097-6-git-send-email-magnus.karlsson@gmail.com>
 <202011110934.GFwFDfqe-lkp@intel.com> <CAJ8uoz2aDjLPtcTgZ_pO-=S9TgXm3c57rN8TTPXdqT7HOOKrhA@mail.gmail.com>
 <CAKwvOd=Pws8npXdRuOVz+cgUYJ+nnztZCgMnZvP+Jr-dJ4z_Aw@mail.gmail.com> <CAJ8uoz2PxgZybUKDpe0Y4OJOHmK3gAxU7diTc1raPJoanze4sA@mail.gmail.com>
In-Reply-To: <CAJ8uoz2PxgZybUKDpe0Y4OJOHmK3gAxU7diTc1raPJoanze4sA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Nov 2020 11:39:07 -0800
Message-ID: <CAKwvOdnEfRFnO60mB9D7SAjCVijW5UBVYCGGXwhQ+EGw6c18BA@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=Fx8cSFnH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Wed, Nov 11, 2020 at 11:45 PM Magnus Karlsson
<magnus.karlsson@gmail.com> wrote:
>
> On Wed, Nov 11, 2020 at 8:16 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Wed, Nov 11, 2020 at 3:57 AM Magnus Karlsson
> > <magnus.karlsson@gmail.com> wrote:
> > >
> > > On Wed, Nov 11, 2020 at 2:38 AM kernel test robot <lkp@intel.com> wrote:
> > > >
> > > > Hi Magnus,
> > > >
> > > > I love your patch! Perhaps something to improve:
> > > >
> > > > [auto build test WARNING on bpf-next/master]
> > > >
> > > > url:    https://github.com/0day-ci/linux/commits/Magnus-Karlsson/xsk-i40e-Tx-performance-improvements/20201110-190310
> > > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git master
> > > > config: powerpc64-randconfig-r025-20201110 (attached as .config)
> > > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4d81c8adb6ed9840257f6cb6b93f60856d422a15)
> >
> > ^ Note: clang
> >
> > > > reproduce (this is a W=1 build):
> > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         # install powerpc64 cross compiling tool for clang build
> > > >         # apt-get install binutils-powerpc64-linux-gnu
> > > >         # https://github.com/0day-ci/linux/commit/b016bbeac6692a93e61b28efa430d64645032b5e
> > > >         git remote add linux-review https://github.com/0day-ci/linux
> > > >         git fetch --no-tags linux-review Magnus-Karlsson/xsk-i40e-Tx-performance-improvements/20201110-190310
> > > >         git checkout b016bbeac6692a93e61b28efa430d64645032b5e
> > > >         # save the attached .config to linux build tree
> > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > >
> > > > All warnings (new ones prefixed by >>):
> > > >
> > > > >> drivers/net/ethernet/intel/i40e/i40e_xsk.c:417:13: warning: unknown pragma ignored [-Wunknown-pragmas]
> > > >    #pragma GCC unroll 4
> > > >                ^
> > > >    1 warning generated.
> > >
> > > And I was hoping that unknown pragmas would be ignored, but that will
> > > obviously not be the case with -Wunknown-pragmas added. The unrolling
> > > of this inner loop where the code spends most of its time gives me
> > > nearly 1 Mpps extra in performance which is substantial, so I would
> > > like to get this unrolled in some way, but without the warning. Need
> > > some advice please. Here are some options that comes in mind:
> > >
> > > #1: Suppress unknown pragma warnings in this file only by adding
> > > CFLAGS_i40e_xsk.o += -Wno-unknown-pragmas (or whatever that option
> > > might be) in the Makefile
> > >
> > > #2: Force the compiler to loop-unroll the loop with for example a
> > > switch statement with four cases that all fall through. This will make
> > > the code less readable.
> > >
> > > #3: Manually loop-unroll the loop. This will make the code even less
> > > readable than #2.
> >
> > #4 support both compilers.  Note Clang's syntax is slightly different
> > here; it doesn't accept GCC specific pragmas, and uses a slightly
> > different form:
> > https://clang.llvm.org/docs/LanguageExtensions.html#loop-unrolling .
> > If you wrap that in a macro based on `#ifdef __clang__`, that should
> > do the trick.
>
> Yes, that did the trick. Tried it out with the compiler explorer at
> https://godbolt.org/ and it compiles nicely even for clang-powerpc64.
> Will spin a v3.
>
> Thank you: Magnus

Great job Magnus, I appreciate it!

>
> > >
> > > I prefer #1 as I like to keep the code readable, but you might have
> > > other better suggestions on how to tackle this.
> > >
> > > Thanks: Magnus
> > >
> > > > vim +417 drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > > >
> > > >    408
> > > >    409  static void i40e_xmit_pkt_batch(struct i40e_ring *xdp_ring, struct xdp_desc *desc,
> > > >    410                                  unsigned int *total_bytes)
> > > >    411  {
> > > >    412          u16 ntu = xdp_ring->next_to_use;
> > > >    413          struct i40e_tx_desc *tx_desc;
> > > >    414          dma_addr_t dma;
> > > >    415          u32 i;
> > > >    416
> > > >  > 417  #pragma GCC unroll 4
> > > >    418          for (i = 0; i < PKTS_PER_BATCH; i++) {
> > > >    419                  dma = xsk_buff_raw_get_dma(xdp_ring->xsk_pool, desc[i].addr);
> > > >    420                  xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, desc[i].len);
> > > >    421
> > > >    422                  tx_desc = I40E_TX_DESC(xdp_ring, ntu++);
> > > >    423                  tx_desc->buffer_addr = cpu_to_le64(dma);
> > > >    424                  tx_desc->cmd_type_offset_bsz = build_ctob(I40E_TX_DESC_CMD_ICRC |
> > > >    425                                                            I40E_TX_DESC_CMD_EOP,
> > > >    426                                                            0, desc[i].len, 0);
> > > >    427
> > > >    428                  *total_bytes += desc[i].len;
> > > >    429          }
> > > >    430
> > > >    431          xdp_ring->next_to_use = ntu;
> > > >    432  }
> > > >    433
> > > >
> > > > ---
> > > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJ8uoz2aDjLPtcTgZ_pO-%3DS9TgXm3c57rN8TTPXdqT7HOOKrhA%40mail.gmail.com.
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnEfRFnO60mB9D7SAjCVijW5UBVYCGGXwhQ%2BEGw6c18BA%40mail.gmail.com.
