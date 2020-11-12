Return-Path: <clang-built-linux+bncBD2IDQGOZYPRBD6QWP6QKGQEDWGYVEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4E42B007D
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 08:45:20 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id l67sf2929402qte.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 23:45:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605167119; cv=pass;
        d=google.com; s=arc-20160816;
        b=bumtLoHluIy2bEea6Ts/W0Bw8nejsH68X6ySDLLysA6bZ62V2c7Aye4XasX5esPkNP
         H/WD3SRg3JzBqhYCVBI2wdnFAoXqGh6Zmu64vnmUnbxVGi2qDS8IdwqNM3HPsaKyaOc0
         EFcStEpSynhsIVDdhxjJxxFf/B22OB0V0z9TjVpF/LBVLb7cGRCu0E+EgWxRYZt3NSZ8
         M785qlOcXKzw5t5/n1pBn3wJH949kWqHsRK5K36mHlxIvp/478SohUDbZYHRjtRMLTHi
         yitBY71pq7q6E1IAr3Q9k7q2qWnTrsQ+fvgkc3TGCUVi5wMc7+uoV5H8hJ0xA+VpoqK5
         QlQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=h0wyJCXFlYE8tueP12W+/GhmeyI1OpUrghSrMsLoq3o=;
        b=k5DfMGJD1b0LkJTrwRn4lfQgR1vGU2dNgBR4or+IxbVe0uw2iT2kwbKSojE1NVhy/L
         lyS8gLYt4UskAzcwhqUO6OUqcB+/3KlWcFgS2fU1hanNjmVWSgSXJH5U85XLopAqK1wg
         JMlYKY16Bh9vln/9I8P/0AlDXpvHu3LMAksGn8T4W+NSIaR/SkNUsz57FhlgVfcPmiLk
         KJpDYQ56eNAjxg/6GJ5ML2ULGzqJ/o/RxqRiu7H/DrNNlM2ihv6eCtCsFeEzRXHJm6Vs
         v2/s6Jm88ZZSJA03ouHA/g0UNzkgFZTnRGeuMRfu5d/EieGSphwIUQHIRE/DuuK9sQkk
         GQHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mikqjdLf;
       spf=pass (google.com: domain of magnus.karlsson@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=magnus.karlsson@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h0wyJCXFlYE8tueP12W+/GhmeyI1OpUrghSrMsLoq3o=;
        b=YW3dGqmaazs/qugdLfUfUpe1L0n8GtrRvkCTSMqmYjgQ3Retf0NFHenzhm73Noov5U
         V4el/+tvaUnbFsdrCX9oOjJu4TI1y6EYYPDdVDrHAbHRlsYtnVRRlJkmgZwD5ZV9GPRJ
         YoNfGZjFz+EA6PdqzxDK03STw/eX2fp95QeCO9rXzn8ZgJrhhdQcUX/zg+H+odYhotpJ
         h1NNRNhIIpeEF0wTvvDm2cuVXE2ij5ClJH0PWN1lDupTA0XGWDlp2FGHgnO/seoAcBTp
         7vgGtuHVLMkxBm5WYHk0g7hBW3Pdew+EvGcm8RZFf2rekEgMpXsHSJDuR2F2r0dLh+BQ
         aucQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h0wyJCXFlYE8tueP12W+/GhmeyI1OpUrghSrMsLoq3o=;
        b=ZIBnJ0C3K+M6dEblxofak7ZIJjRIN23ohcR1+1Jj6hZ/VhspNJYGa9STQ89Er+NU9Z
         FP1DLvxUKUkVozqWzN5H+2nj+t4WOjgsc4T7p73T9L8KePGOaaYY59bjGklvW2q2KHgR
         yTqzXpl13hADSa21ZWaWE2gKtgWmVXfXYAXuTgO6zLwlFvnr+z3VB7F4cjDY1sQIehEB
         LZbfnPOqaDzURLQyY38nK5Hk8D70hr4i4Ljvu8oCKy5tvBDR6AlAKhgXowEprZPZXYAV
         mXnSVhriCqy6xhGPwBQguJk6l8GMdZPLtrMltjnHK0NK4NBA1TGp5jDlWzEkuGXeYEqf
         yGHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h0wyJCXFlYE8tueP12W+/GhmeyI1OpUrghSrMsLoq3o=;
        b=GZ2pDadsyqTzvsj9jvX1f3KjCSRuliUv0hea4N94FsWONm/kTv20HQipQ+fXIM2TfO
         K2W0bBtOxX/4Hsepsq0KwC9XDZk/3kYhd9Mv8C+4ggfBtZPbw+mAilR1XPutBxM3f6YC
         ZDvzoO+UFIVVOCuuZqwi285J5OL01sgcE49INWcgBtVnXLqNvJloKhSlMiyBwxOQGW+t
         TWVqWKuXzt1wzQTLA/xshsgBTAKP5ewG/1PJjzkbfWLzTihcltp70YIEDazShONLzHtk
         eUsvcNGXTutwjYZLLh9QSjClrb+Ox6EU8j/AnRngDhLzGYlPXw3jc2QMdckrz5xfahWC
         OOog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533v4Ztvkj/0gtPfukxJ20kgWTmlutq1VJZyLmvA64iftihGaLhO
	DS4wLMXrnJ5txb4u3spriv4=
X-Google-Smtp-Source: ABdhPJz/NNlK3s1VQTU7+5ZmnPEj7l41lXXJcyO7B7U/nmkrn8ASFzym3GZRAFRbymFHoI64eYzcQA==
X-Received: by 2002:a37:d16:: with SMTP id 22mr19707318qkn.335.1605167119287;
        Wed, 11 Nov 2020 23:45:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:59c9:: with SMTP id f9ls695548qtf.8.gmail; Wed, 11 Nov
 2020 23:45:18 -0800 (PST)
X-Received: by 2002:ac8:934:: with SMTP id t49mr28391681qth.129.1605167118765;
        Wed, 11 Nov 2020 23:45:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605167118; cv=none;
        d=google.com; s=arc-20160816;
        b=XrZTi9S2m2QMIBTNHz/cXrrYAPG2byqHvfHa4hl1DMKK+QJl3LA99q8+JRt4io+d6n
         2615X4P1adrumBI+gDTJJka2/VUd4tDdg33HeHkSs3QN4rxvA1vRlV0ikAmzLZIgDf2i
         2cq2RXUxVsnNpwgErP/ZmBYZOdBjenyYb+q7KDpjVECsVQAiYfTDMW7Whva9xr5rHkR4
         sNEJ6zExEsgsIRTxDI+3cmPtTIdS66zf9+n+N6vqh8jyIpN2LHqrzoyQnUSyCmkSTXUS
         C+b1MG2E58Mbv4v6To3u97RDItpH8AuY3GdOXKDnJhrN4YpkZkVibgMqy48oUjQJ7rzD
         MgIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=geTkkLYkNmham7L8WOSL9oUt7IUhwr3Ml72iGwW862I=;
        b=VtBcvSLdCwz45ZEwyluKXkMi7z+FpRDTq1BrDvp7xzffaUBdDDTFn5yGHcP26pchZj
         f9ope7WWYU5YXsacXgjZWOblJo1aq4b5yuCNmgQ7Ht/kGTN66N2o0GWyN5ngvp68Orpn
         wQYVpux3z5ozcURScij8SfgYwlJQhWdOOve11Cd6D+DtiTyRKg237UFwfTQoqfrYlFmJ
         OJY1JgitV9sbJpiUOoO9A/MOzKF0vdcIdhEuyrWjLYi+zXO7ntItA5/x3Qsx9oSCTOoA
         jM5wx0ruHp6crYV9VDs8Ntndp4RFqEJlT/QxwxToReQVw4k7pMLZUCO2CWx1Qp8z/U9G
         QL4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mikqjdLf;
       spf=pass (google.com: domain of magnus.karlsson@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=magnus.karlsson@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id w30si295528qkw.2.2020.11.11.23.45.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 23:45:18 -0800 (PST)
Received-SPF: pass (google.com: domain of magnus.karlsson@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id d3so2361238plo.4
        for <clang-built-linux@googlegroups.com>; Wed, 11 Nov 2020 23:45:18 -0800 (PST)
X-Received: by 2002:a17:902:8d97:b029:d8:94dd:43ea with SMTP id
 v23-20020a1709028d97b02900d894dd43eamr12515950plo.43.1605167117901; Wed, 11
 Nov 2020 23:45:17 -0800 (PST)
MIME-Version: 1.0
References: <1605006094-31097-6-git-send-email-magnus.karlsson@gmail.com>
 <202011110934.GFwFDfqe-lkp@intel.com> <CAJ8uoz2aDjLPtcTgZ_pO-=S9TgXm3c57rN8TTPXdqT7HOOKrhA@mail.gmail.com>
 <CAKwvOd=Pws8npXdRuOVz+cgUYJ+nnztZCgMnZvP+Jr-dJ4z_Aw@mail.gmail.com>
In-Reply-To: <CAKwvOd=Pws8npXdRuOVz+cgUYJ+nnztZCgMnZvP+Jr-dJ4z_Aw@mail.gmail.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Thu, 12 Nov 2020 08:45:06 +0100
Message-ID: <CAJ8uoz2PxgZybUKDpe0Y4OJOHmK3gAxU7diTc1raPJoanze4sA@mail.gmail.com>
Subject: Re: [PATCH bpf-next v2 5/5] i40e: use batched xsk Tx interfaces to
 increase performance
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel test robot <lkp@intel.com>, "Karlsson, Magnus" <magnus.karlsson@intel.com>, 
	=?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Network Development <netdev@vger.kernel.org>, Jonathan Lemon <jonathan.lemon@gmail.com>, 
	Jakub Kicinski <kuba@kernel.org>, John Fastabend <john.fastabend@gmail.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, bpf <bpf@vger.kernel.org>, 
	Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: magnus.karlsson@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mikqjdLf;       spf=pass
 (google.com: domain of magnus.karlsson@gmail.com designates
 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=magnus.karlsson@gmail.com;
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

On Wed, Nov 11, 2020 at 8:16 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Nov 11, 2020 at 3:57 AM Magnus Karlsson
> <magnus.karlsson@gmail.com> wrote:
> >
> > On Wed, Nov 11, 2020 at 2:38 AM kernel test robot <lkp@intel.com> wrote:
> > >
> > > Hi Magnus,
> > >
> > > I love your patch! Perhaps something to improve:
> > >
> > > [auto build test WARNING on bpf-next/master]
> > >
> > > url:    https://github.com/0day-ci/linux/commits/Magnus-Karlsson/xsk-i40e-Tx-performance-improvements/20201110-190310
> > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git master
> > > config: powerpc64-randconfig-r025-20201110 (attached as .config)
> > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4d81c8adb6ed9840257f6cb6b93f60856d422a15)
>
> ^ Note: clang
>
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install powerpc64 cross compiling tool for clang build
> > >         # apt-get install binutils-powerpc64-linux-gnu
> > >         # https://github.com/0day-ci/linux/commit/b016bbeac6692a93e61b28efa430d64645032b5e
> > >         git remote add linux-review https://github.com/0day-ci/linux
> > >         git fetch --no-tags linux-review Magnus-Karlsson/xsk-i40e-Tx-performance-improvements/20201110-190310
> > >         git checkout b016bbeac6692a93e61b28efa430d64645032b5e
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> drivers/net/ethernet/intel/i40e/i40e_xsk.c:417:13: warning: unknown pragma ignored [-Wunknown-pragmas]
> > >    #pragma GCC unroll 4
> > >                ^
> > >    1 warning generated.
> >
> > And I was hoping that unknown pragmas would be ignored, but that will
> > obviously not be the case with -Wunknown-pragmas added. The unrolling
> > of this inner loop where the code spends most of its time gives me
> > nearly 1 Mpps extra in performance which is substantial, so I would
> > like to get this unrolled in some way, but without the warning. Need
> > some advice please. Here are some options that comes in mind:
> >
> > #1: Suppress unknown pragma warnings in this file only by adding
> > CFLAGS_i40e_xsk.o += -Wno-unknown-pragmas (or whatever that option
> > might be) in the Makefile
> >
> > #2: Force the compiler to loop-unroll the loop with for example a
> > switch statement with four cases that all fall through. This will make
> > the code less readable.
> >
> > #3: Manually loop-unroll the loop. This will make the code even less
> > readable than #2.
>
> #4 support both compilers.  Note Clang's syntax is slightly different
> here; it doesn't accept GCC specific pragmas, and uses a slightly
> different form:
> https://clang.llvm.org/docs/LanguageExtensions.html#loop-unrolling .
> If you wrap that in a macro based on `#ifdef __clang__`, that should
> do the trick.

Yes, that did the trick. Tried it out with the compiler explorer at
https://godbolt.org/ and it compiles nicely even for clang-powerpc64.
Will spin a v3.

Thank you: Magnus

> >
> > I prefer #1 as I like to keep the code readable, but you might have
> > other better suggestions on how to tackle this.
> >
> > Thanks: Magnus
> >
> > > vim +417 drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > >
> > >    408
> > >    409  static void i40e_xmit_pkt_batch(struct i40e_ring *xdp_ring, struct xdp_desc *desc,
> > >    410                                  unsigned int *total_bytes)
> > >    411  {
> > >    412          u16 ntu = xdp_ring->next_to_use;
> > >    413          struct i40e_tx_desc *tx_desc;
> > >    414          dma_addr_t dma;
> > >    415          u32 i;
> > >    416
> > >  > 417  #pragma GCC unroll 4
> > >    418          for (i = 0; i < PKTS_PER_BATCH; i++) {
> > >    419                  dma = xsk_buff_raw_get_dma(xdp_ring->xsk_pool, desc[i].addr);
> > >    420                  xsk_buff_raw_dma_sync_for_device(xdp_ring->xsk_pool, dma, desc[i].len);
> > >    421
> > >    422                  tx_desc = I40E_TX_DESC(xdp_ring, ntu++);
> > >    423                  tx_desc->buffer_addr = cpu_to_le64(dma);
> > >    424                  tx_desc->cmd_type_offset_bsz = build_ctob(I40E_TX_DESC_CMD_ICRC |
> > >    425                                                            I40E_TX_DESC_CMD_EOP,
> > >    426                                                            0, desc[i].len, 0);
> > >    427
> > >    428                  *total_bytes += desc[i].len;
> > >    429          }
> > >    430
> > >    431          xdp_ring->next_to_use = ntu;
> > >    432  }
> > >    433
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJ8uoz2aDjLPtcTgZ_pO-%3DS9TgXm3c57rN8TTPXdqT7HOOKrhA%40mail.gmail.com.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJ8uoz2PxgZybUKDpe0Y4OJOHmK3gAxU7diTc1raPJoanze4sA%40mail.gmail.com.
