Return-Path: <clang-built-linux+bncBDYJPJO25UGBBS6WUPWAKGQE6MH3DGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F104BB8BE
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Sep 2019 17:57:01 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id i28sf10364280pfq.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Sep 2019 08:57:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569254220; cv=pass;
        d=google.com; s=arc-20160816;
        b=vszNTqPX0PFo+gHJ1eo6VFNlaHBDPhEm0kW86DXWo8u0YaaBDLNz98to0OO3AHIp/L
         WUqeT0Ge3WCAOLkajc2BOUVfgTi9KNJcTIErjMNbtEALYnioUfgBf7WvbFkGxYV1nZH/
         zQ7Xsslp4xkLyFqR50s4MUMS4Vi2AZZPQrzQtH87bJb6vLpqcVhvFXRC4kpll7863p5A
         IMXc/RlcNpvcppz4kyFIbZJUp0eP4voT0Vuhppief6aul0OD61Oktnkk+lMHf9JcYzNM
         9QQUu3VLsW1MXT7n60vchNF4DbwAYEOsLYNDVBLf3Iivs+HIYktgwvIVE+NOSJNvZq9r
         otkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=B1nf+pFSgfYOpqvC6/jlX6O1r8c6Zb1fi2JfnA0S6Ko=;
        b=AIznAqDBtdPuOMIIrLs4sxppRGciLYlmDcnp2F0fEZcwPZMrIK+hLJEiKIwQXhavf2
         7LBtB7GtmXhOZTQlj1twKtHMER8ujJb0dUboHCN8wshx+JK4uA8EQQUEK8pHhhFV0EL0
         peyQveOwKZQJrnBUZrWdMWkfSsJB768tuf+xBXvzPJkWMCZzSx2G6NYRYLpfPaSky2Yu
         x/03xQ5GnKR9Bo0tAn+NzyY8KzhAVR6hPDo83YJNrjtJwPvPUYtO0CgoAR2fRPBYo9Rq
         GMnHGY5b8BxhRU2kNdVZumVtj3MgtHREc+80L8NyQ9GYs3BovZ2PN+VXuLexEaX7TIZU
         pJQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UqjRtyhO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B1nf+pFSgfYOpqvC6/jlX6O1r8c6Zb1fi2JfnA0S6Ko=;
        b=NvAcUmucsd1NSRCmDeRX62Nf/xPiTi9BxBqO7IW+yP3+RjjUPrN8N2JHHOraBO0E75
         B07/WCJjz7uS2lNhSeBFLov0pGd+W4Nc6nA89cYEG63Xo4K8KUoNA0edDpHR0v46Y/12
         WQBzln8hxrWlgV73SAm4iFKAmzkNBUXqmnE08cvwh/pmybD12x/N9M7BpdTVkmSEBI6N
         zQlCVadYmCMk+uh6k6RbbbAa/4y9xIby61i+ajyZsTpWB+JJZQhvrircx9qPMY7FJ8Z6
         TT9sL8nkBJQvIj1tb42tV8gl6bpxI/WLL/8VCT+jG3Et8KzEWSaof2AjyQ5M0WkmFDX6
         HG+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B1nf+pFSgfYOpqvC6/jlX6O1r8c6Zb1fi2JfnA0S6Ko=;
        b=j07MS3bP5xmeLYFYpW0qLp+6NAxCP9j1kganEVkkKiDbCP8qWzuvdK5chczcm/28QD
         MiBk05nfk2m/ZEL1VKY/LC1py6Fwe+Uo834TruhbkyO5dlE7KOezgFG47ZU7fTTdUTy2
         mBk+Sb3TO2F4WCbtbHiFtQjNLI5ZEKaKpNGf9EgPExjYE46Q3VdxNBBxVPhpNTf7xAJw
         UfnCd/LaIuRfggOQixIm1jaudYd+Aj79/vX2jIyhqgjIZUaDqugMhQGMW/Aes15CLFd6
         dfZhqSYkMIYb8sX/uff2VgLIm4OqqmI5hecU9DlJIO+NJf0DSJtiHpIxvhtybYsFICEd
         eRgA==
X-Gm-Message-State: APjAAAXlz2goYnvAU18xLKrZj0oWQMD3AbB47qkk7B7adwVuho5ZTzHt
	TieSoOHglC60inlQ0WiDZag=
X-Google-Smtp-Source: APXvYqw5VoDqldJ5jN89TQyRFZFhquCDBtUletj5q0U06qPMn4tWNcjVeoj2heTkk+b9xUszNa+GcQ==
X-Received: by 2002:a63:d901:: with SMTP id r1mr618971pgg.159.1569254219822;
        Mon, 23 Sep 2019 08:56:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fe0c:: with SMTP id p12ls3116216pgh.6.gmail; Mon, 23 Sep
 2019 08:56:59 -0700 (PDT)
X-Received: by 2002:a62:8209:: with SMTP id w9mr305773pfd.112.1569254219282;
        Mon, 23 Sep 2019 08:56:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569254219; cv=none;
        d=google.com; s=arc-20160816;
        b=W2rmENGBK8+/jqR/qZbfuoYq9I5MllRV1M1FEtev6jJBCXxtOeB4WL4Qv0ifrkHtA8
         p8ebjPIlGMFECkMzBHQHAuV6acc6AenNh1RZ1P6X/9dI1DJvONRt9T/4pG25FyTv1rxb
         xzk3wkOS4Dea/0SLvdpNaIv5YFf0ERwb5xQ9CpjF3JEqLe3nYQGJ0R6H29L5r60rO9WB
         8LU14zm10yUSjdABl9/NBG7dCdzMq+MdHjll1Ywbky6AW/9rVCnzhyUeJipMBVkmAR7/
         7vmXXYxNSOK45pKkh9m2oW6KgXUIUEincMLYQwsUEtRevEKcjijMAQbFEzp2RWWQ1/NA
         LK0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CE7cBE8FZnignqBMlYyNqe5XCWz7R50HscdbBlv0ZcU=;
        b=Gl4KigosnV6m6YqQVWvNQIqeeHvhhX5OZqkbqxmXoyYk//Sz4gUNpV4bq+k2tEb/ct
         CdELHH1Se/cLhhFLeb/ZDQmQ7iK2YhpQ1DtOZ+j4DOHgsJLGOxaStbDY28VX6N3Ir9n7
         IruEd9JSAZExL2p/vc9ELXcpIjRVywsarukrRrmrYVF7l1irdE09vDc7gy7+M8WNNgWq
         +tsd20uGRRL4KBgBWbeKAC7X/AXWB6DJQAIDCZEH3Fq5d4hBGVcRxtvjhEMFfdIQfzex
         1TE+3wu+knktDEnzoRzeidfnYvwq103mB0ZzEG0AXcXn7h/E/4XAAMrIvqN+b6PSSmpJ
         5UVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UqjRtyhO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id x137si723999pfd.1.2019.09.23.08.56.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2019 08:56:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id 4so6672692pld.10
        for <clang-built-linux@googlegroups.com>; Mon, 23 Sep 2019 08:56:59 -0700 (PDT)
X-Received: by 2002:a17:902:d891:: with SMTP id b17mr410193plz.119.1569254218591;
 Mon, 23 Sep 2019 08:56:58 -0700 (PDT)
MIME-Version: 1.0
References: <201909231916.I6vn563z%lkp@intel.com>
In-Reply-To: <201909231916.I6vn563z%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Sep 2019 08:56:47 -0700
Message-ID: <CAKwvOd=h-Uo2iJ8O7t2huJ+zujFTfVE-PcbE5iUUR2ci50qmSQ@mail.gmail.com>
Subject: Re: drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c:473:36:
 warning: expression does not compute the number of elements in this array;
 element type is 'u8' (aka 'unsigned char'), not 'u32' (aka 'unsigned int')
To: Jose Abreu <Jose.Abreu@synopsys.com>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@01.org, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UqjRtyhO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

HI Jose, below is a report from 0 day bot doing a build w/ Clang.

On Mon, Sep 23, 2019 at 4:12 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> CC: linux-kernel@vger.kernel.org
> TO: Jose Abreu <Jose.Abreu@synopsys.com>
>
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   619e17cf75dd58905aa67ccd494a6ba5f19d6cc6
> commit: 76067459c686c4fc6352613e5a6a54e4ffef2861 net: stmmac: Implement RSS and enable it in XGMAC core
> date:   6 weeks ago
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 0e490ae0a93c8b6ec48366ac7d46da442542b902)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 76067459c686c4fc6352613e5a6a54e4ffef2861
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c:473:36: warning: expression does not compute the number of elements in this array; element type is 'u8' (aka 'unsigned char'), not 'u32' (aka 'unsigned int') [-Wsizeof-array-div]
>            for (i = 0; i < (sizeof(cfg->key) / sizeof(u32)); i++) {
>                                    ~~~~~~~~  ^
>    drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c:473:36: note: place parentheses around the 'sizeof(u32)' expression to silence this warning
>    1 warning generated.
>
> vim +473 drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c
>
>    457
>    458  static int dwxgmac2_rss_configure(struct mac_device_info *hw,
>    459                                    struct stmmac_rss *cfg, u32 num_rxq)
>    460  {
>    461          void __iomem *ioaddr = hw->pcsr;
>    462          u32 *key = (u32 *)cfg->key;
>    463          int i, ret;
>    464          u32 value;
>    465
>    466          value = readl(ioaddr + XGMAC_RSS_CTRL);
>    467          if (!cfg->enable) {
>    468                  value &= ~XGMAC_RSSE;
>    469                  writel(value, ioaddr + XGMAC_RSS_CTRL);
>    470                  return 0;
>    471          }
>    472
>  > 473          for (i = 0; i < (sizeof(cfg->key) / sizeof(u32)); i++) {

This doesn't seem right. sizeof(u8) == 1, sizeof(u32) == 4.

>    474                  ret = dwxgmac2_rss_write_reg(ioaddr, true, i, *key++);
>    475                  if (ret)
>    476                          return ret;
>    477          }
>    478
>    479          for (i = 0; i < ARRAY_SIZE(cfg->table); i++) {
>    480                  ret = dwxgmac2_rss_write_reg(ioaddr, false, i, cfg->table[i]);
>    481                  if (ret)
>    482                          return ret;
>    483          }
>    484
>    485          for (i = 0; i < num_rxq; i++)
>    486                  dwxgmac2_map_mtl_to_dma(hw, i, XGMAC_QDDMACH);
>    487
>    488          value |= XGMAC_UDP4TE | XGMAC_TCP4TE | XGMAC_IP2TE | XGMAC_RSSE;
>    489          writel(value, ioaddr + XGMAC_RSS_CTRL);
>    490          return 0;
>    491  }
>    492
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dh-Uo2iJ8O7t2huJ%2BzujFTfVE-PcbE5iUUR2ci50qmSQ%40mail.gmail.com.
