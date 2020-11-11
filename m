Return-Path: <clang-built-linux+bncBD2IDQGOZYPRBOVDV76QKGQEJSPFPTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 967362AF027
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 12:57:47 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id c9sf2179864ybs.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 03:57:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605095866; cv=pass;
        d=google.com; s=arc-20160816;
        b=V5qmJ/suHumi9c6v434o+bevEWkAzLPtSu+7g8ZAKz5WU8bZDSU+cUuivnAfIMORXe
         rND3aoQeAX6Ex9WmKojbv9GBf/UlnzqRo1bzVBmm9iTAAnv5epwmwSQ+UZdchwZTJZGH
         f8sCqlzxSwLFB8q8+A10qakoLcLEbgTHtOdyYYvP8PAhClgTmEsnxEX8/XlIzCTgiPo4
         4TgyyIxtBOZaDX2Rx48yIn/TgMYWq+ZfrUJrbLICkUcT8EgImCkr3rOOVYD4vJM6pevc
         FS/j7tQeFMOdNSbbxMRwJLpN03PY7z5X/t+w3AsPEiELDwy8+BS6StTh4rJUVQaSvc+n
         163g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=oLSfHenWoFMU7PABQ7xQ1kF3xmowTGDHygsq0gbChcA=;
        b=NubbFHas5DnHs8N7SUzSFpfK//aUJ4n22pac88rnFsNvTahVPsuMMwZ2Ra5smp3jyh
         I8RuCmfNXkLUAwqEChu3v/7S0E+AL7qiQfnU9XpjlhFzLjyN0hHOscYdC0rMPqgE5ZvS
         5dpCjyPuKqluaaVFzgYqfItThKSFT+wQGIIL/97QSt1lpNWvLMnHp0ee58XMixaAIvue
         2l80y3bgTOVY83/S1k/Y1d343scE0IMp4E+PvM/XYZX7jE0xgrm75wKb5dbgRV6pdWpB
         xIlO/t6TBAgGx10cMjF4lVQ27JnxbOGOwO/F+ba0b3LvSdrVqNZLkaIJXtIQYcnH4Dg8
         2EWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UyeuFb7T;
       spf=pass (google.com: domain of magnus.karlsson@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=magnus.karlsson@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oLSfHenWoFMU7PABQ7xQ1kF3xmowTGDHygsq0gbChcA=;
        b=MBgzpJCH3sswVfFR4TZYl1FxywK+EP46uQGGmCrYZ6A6lJmN3+Tf5f5RdvCKvbQDNF
         13fuW30+ZoLYZ3txMisaN1wyFmybALRQr8ckkVoOId/r8nj9bidr+L5VXVsdoiAO7Cd+
         Ta3IcLCWE9DjVSgtszerYk6ImWy2D+f7JS7EFhZwU5tYiNggkyQobLJYXVWB5Kziv6xF
         5eb/WE4XrHSXo3l4G2I5v93RAvwVyHcONZa60sWyXuL+Tomqearimh+oW9Ei7/BY00Y3
         yCaqtrkESWqfm54beUch8JySqCXgSWVhSVfkRwmA84JBGipDpjjY8FEyKnpa4KnM3G8E
         zq0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oLSfHenWoFMU7PABQ7xQ1kF3xmowTGDHygsq0gbChcA=;
        b=B8dlCoMss59cu80W3g2Ejs0bPvGqOTGACA2GrULgwF6ekbtU1eV+zDmKJwTPw/VHeG
         2C3FcLLaeoY7iZFa7vYJXz1tDKIB9xIrCeKqEzn5lVt2bHRAlXg8pq3IlrUaPws8+9PU
         yb5Uo0eJq8ovutsks8j1gmfmG1eG1LmVUUm4hhzwPQRjLDa5CIVlr9x1/2UR7JiTMUDE
         nRJHyfbQvfC443Kk6hSPNgFA+TNgvrac9sb89wXEBmer1DvX9LfZ3GeAT9pWRFbAWCzq
         RkN1tWOTbdJ/2UMgw8L3epzmKyUH6pQYiOy0Qy7fTk7jS+646AyamWqlPYvrpBrSj/WY
         N0PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oLSfHenWoFMU7PABQ7xQ1kF3xmowTGDHygsq0gbChcA=;
        b=Zg/ctuWiVzWsdQYyTQF01YVCa1ZmeEqIPPjAnWaQhMUUc6YcO7+0elXs8DLTXTM92o
         s2uJ3cOEsERcEDDqqWM/BggX7cQ9dYpsix9TSlPru/DH4fPrAv1Xf/8U9sdPcQ0416bs
         XKoXffOUax1cyegmuyZIoRwguRsgoSZMevJCi++SKkwwRRbiL6FXrYB0z9JnITCv8wHd
         /dsV+5Y9P2ggTdrFd5TzdsfAEYOjqURVvfvZZouQ5mqh3rDpLF9OYN4YYCcMsb01y2i0
         SnwXET4zRE1Dvub/sFJcrFhpyaWtKHT0MkFMFrDNoMVpLjChrA4XrU8E727IJkIV5Lp2
         KWvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532yfS/a9E/JzpHwiQLqWtlajd9fSKkUJr+A5xDVcbqSqQrqQCVj
	gJEcHrl+kJE03ggFYG0jU6M=
X-Google-Smtp-Source: ABdhPJxgi8XlWeqPXB7RFxkTsXCbk3V40c4uFxrKS0rg+HVUiAsS7h79wpShFdBoaJlReGlGkQaTmA==
X-Received: by 2002:a25:55d7:: with SMTP id j206mr22285861ybb.313.1605095866459;
        Wed, 11 Nov 2020 03:57:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:807:: with SMTP id x7ls4165388ybp.5.gmail; Wed, 11 Nov
 2020 03:57:46 -0800 (PST)
X-Received: by 2002:a25:d98f:: with SMTP id q137mr34876294ybg.128.1605095865942;
        Wed, 11 Nov 2020 03:57:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605095865; cv=none;
        d=google.com; s=arc-20160816;
        b=kPgy0g8QJI4l+S7F7kyC0ihZSqEfK1amlZ6dVYwEN5O1KvWsae/MEgU5XnSUoLPhyq
         xz7vNcnk2tEgDPyxr/0/gryx5LGn+wI2HOlo1+neXwh4nnV8aktAqdFkEpHDiTZDoNZ4
         T1XQ9oo6glod2uQEAvKmxVZlvWbmEbv7Y2BCdXfYb3wSU69QWCknvTWqQ+O3wcolCKSA
         t4oLHmAXY9G6cOYf5OplFC+m2V1dkaOGgy1fzZ/pAUrdDyd0AbSaI+2FhzYnCtwhhGyi
         ainLSAnMAfCTAUTjixPcRD6DKJgMPUIum0KkOCBSG7UJVeznkyA8au3jZpe68ZN70frP
         bgew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dZ66NkK4JlOTGKRXsVDZQA1P1CV0kN8ceHgbcIIfYbY=;
        b=fI3AEO/hfTreOzizpLO0ZnxFbdN1lOgJrlYvD8US+5XNCtZMIaBUjzF2gIL8LpmIyc
         C8zd+Rp9mWE9jnYhZvaQDDc4KHdUtzQQhyElO/m9ZFJ5Y9AxOZ6Tui4TsZI4o9C/gK5o
         nc8gkE3oFqXrjQQtZcigk7hTLt0U9GX+lBnW+LOsuUrWAibvE5ntcdjK/kBODbjcI1P3
         i7N1th9Q7Vuge63g6iyruZY7us2XFR3z9AYH65J51KsP66n5olo/Am4I7EH7FqCeFfVO
         t6PvbS+z65alXioEVFKh/5krK/vNTrhvQQY2Fs1LSHN51pSE4PQ3yHdsJXjj2Kswbr2O
         nqKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UyeuFb7T;
       spf=pass (google.com: domain of magnus.karlsson@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=magnus.karlsson@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id g36si63602ybj.5.2020.11.11.03.57.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 03:57:45 -0800 (PST)
Received-SPF: pass (google.com: domain of magnus.karlsson@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id 62so1283914pgg.12
        for <clang-built-linux@googlegroups.com>; Wed, 11 Nov 2020 03:57:45 -0800 (PST)
X-Received: by 2002:a63:e74a:: with SMTP id j10mr22153791pgk.208.1605095865157;
 Wed, 11 Nov 2020 03:57:45 -0800 (PST)
MIME-Version: 1.0
References: <1605006094-31097-6-git-send-email-magnus.karlsson@gmail.com> <202011110934.GFwFDfqe-lkp@intel.com>
In-Reply-To: <202011110934.GFwFDfqe-lkp@intel.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Wed, 11 Nov 2020 12:57:34 +0100
Message-ID: <CAJ8uoz2aDjLPtcTgZ_pO-=S9TgXm3c57rN8TTPXdqT7HOOKrhA@mail.gmail.com>
Subject: Re: [PATCH bpf-next v2 5/5] i40e: use batched xsk Tx interfaces to
 increase performance
To: kernel test robot <lkp@intel.com>
Cc: "Karlsson, Magnus" <magnus.karlsson@intel.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Network Development <netdev@vger.kernel.org>, Jonathan Lemon <jonathan.lemon@gmail.com>, 
	Jakub Kicinski <kuba@kernel.org>, John Fastabend <john.fastabend@gmail.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, bpf <bpf@vger.kernel.org>, 
	jeffrey.t.kirsher@intel.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: magnus.karlsson@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UyeuFb7T;       spf=pass
 (google.com: domain of magnus.karlsson@gmail.com designates
 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=magnus.karlsson@gmail.com;
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

On Wed, Nov 11, 2020 at 2:38 AM kernel test robot <lkp@intel.com> wrote:
>
> Hi Magnus,
>
> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on bpf-next/master]
>
> url:    https://github.com/0day-ci/linux/commits/Magnus-Karlsson/xsk-i40e-Tx-performance-improvements/20201110-190310
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git master
> config: powerpc64-randconfig-r025-20201110 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4d81c8adb6ed9840257f6cb6b93f60856d422a15)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/b016bbeac6692a93e61b28efa430d64645032b5e
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Magnus-Karlsson/xsk-i40e-Tx-performance-improvements/20201110-190310
>         git checkout b016bbeac6692a93e61b28efa430d64645032b5e
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/net/ethernet/intel/i40e/i40e_xsk.c:417:13: warning: unknown pragma ignored [-Wunknown-pragmas]
>    #pragma GCC unroll 4
>                ^
>    1 warning generated.

And I was hoping that unknown pragmas would be ignored, but that will
obviously not be the case with -Wunknown-pragmas added. The unrolling
of this inner loop where the code spends most of its time gives me
nearly 1 Mpps extra in performance which is substantial, so I would
like to get this unrolled in some way, but without the warning. Need
some advice please. Here are some options that comes in mind:

#1: Suppress unknown pragma warnings in this file only by adding
CFLAGS_i40e_xsk.o += -Wno-unknown-pragmas (or whatever that option
might be) in the Makefile

#2: Force the compiler to loop-unroll the loop with for example a
switch statement with four cases that all fall through. This will make
the code less readable.

#3: Manually loop-unroll the loop. This will make the code even less
readable than #2.

I prefer #1 as I like to keep the code readable, but you might have
other better suggestions on how to tackle this.

Thanks: Magnus

> vim +417 drivers/net/ethernet/intel/i40e/i40e_xsk.c
>
>    408
>    409  static void i40e_xmit_pkt_batch(struct i40e_ring *xdp_ring, struct xdp_desc *desc,
>    410                                  unsigned int *total_bytes)
>    411  {
>    412          u16 ntu = xdp_ring->next_to_use;
>    413          struct i40e_tx_desc *tx_desc;
>    414          dma_addr_t dma;
>    415          u32 i;
>    416
>  > 417  #pragma GCC unroll 4
>    418          for (i = 0; i < PKTS_PER_BATCH; i++) {
>    419                  dma = xsk_buff_raw_get_dma(xdp_ring->xsk_pool, desc[i].addr);
>    420                  xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, desc[i].len);
>    421
>    422                  tx_desc = I40E_TX_DESC(xdp_ring, ntu++);
>    423                  tx_desc->buffer_addr = cpu_to_le64(dma);
>    424                  tx_desc->cmd_type_offset_bsz = build_ctob(I40E_TX_DESC_CMD_ICRC |
>    425                                                            I40E_TX_DESC_CMD_EOP,
>    426                                                            0, desc[i].len, 0);
>    427
>    428                  *total_bytes += desc[i].len;
>    429          }
>    430
>    431          xdp_ring->next_to_use = ntu;
>    432  }
>    433
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJ8uoz2aDjLPtcTgZ_pO-%3DS9TgXm3c57rN8TTPXdqT7HOOKrhA%40mail.gmail.com.
