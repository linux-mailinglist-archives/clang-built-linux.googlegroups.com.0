Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQM45LVQKGQESQWTQKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id A96DAB146B
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 20:28:18 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id o34sf28466615qtf.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 11:28:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568312897; cv=pass;
        d=google.com; s=arc-20160816;
        b=hvMkOuJg7MuHf6CXPbfTbbEDcZ9u3aPsg3zyh+BBgBQZntUjUbRvsbil81/xRsw/KM
         vdGvW61lrHL9cwZZH/u3PCTZtwmnrEJ97ZC2wcc4deIgTbKAh9YWbEVbAyqtrJqXc3pZ
         HF5ZvLIaEVXuSbEIzlTnt3Jk65E8viUIKPDQoJvjzam22HFtO9xmHxCTmzMWpnYsclek
         CiFcvxY2nYoZ894jR3FjJ3eWTB3/gnXp+zSrzvBAP/dzWffi64+8IiTYsz2w5tugaEdd
         Qm8L5CG1KFf0HGXcSEXWNVWu6gJH8rLOcP9GeU2JwODQmSAvn2IiOrs2dpRDcprMOoGS
         lzLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=HbW4WYLS0Kf3f/2/OL+DpZ1Py9EMVCk22M7Vg5fO3nM=;
        b=sg0jsdtfVcuzNYo1/vH/8zDteXUD/m3q0W2At2Mtx7Bl+6PvSfGdx1BtkRdbo/b53V
         E/7uZeflA639+NlFQQB6vJ2uj8LzDAI9hfW0CRzrf2BsGvM/3AN5ff8jSzckEMYkvWb0
         GMt9WkfPGEeev/ptyCgwCL06cLi0ymjggDVlW8pbG/vwwNn8q7CfNz5z6+u/l1Xs49vo
         0AVv1yjJZlprhFKe1xe/m5dxdZkpd3LCTyw5Uf5wyRgVWXAT7a42Qih0NAW8E+xqdH/v
         WA0qn9qEistOIECz32OgvqoLJpOoGwDD9iXxc7lUrIoQS7Xs6AaHvYJNxEdbrFYMw6BY
         bQDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bqeTJ7Ol;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HbW4WYLS0Kf3f/2/OL+DpZ1Py9EMVCk22M7Vg5fO3nM=;
        b=lMZxRUlViwVcn40qI5D/141F0+SEOMxccaXsi0usphdx6FGIaQNCTEc4Ots+8GpVuR
         f7bnc6BVZYFUdCrdfos5d4ISvrFQuEuTrjH7YjKoLQRmBbvHM6DnKxPauQEAf6td5o1B
         TsPAZnMspPMKiYoLDjflsv2ZphN+ygaVgzo77Tu0v3CCB8pk1tQKDxI8JkWD6wjtjTum
         tycPSPZTwhTuCTrSepkyME9Ht3j/4LigXHyE7GTUzMBfQOo8z7mtP845km6OLWnXC3yG
         Zii7PYM04alCtwuy+DsaYgNhqUjBDKVx1rFzt1+E0kJO4155S1YUteZb39I1Nsr9aBEA
         bBhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HbW4WYLS0Kf3f/2/OL+DpZ1Py9EMVCk22M7Vg5fO3nM=;
        b=kxoOyTU33W8iZYLTF/wDF0BxXI5VtdC/kgL/daGV3aAjOX39bt5uh83oEea/VONy2F
         Mpfgi78akcbuuFJmaF0RaRTe/EoWB8yd5Bu8PyjelX66yC03PcUeWdzE85nhkSkgYMR/
         x5+UFTM22bx37Ja5llMturfk0UUnBRNz1brcLH8L/ADe3sh92X8pyatzPFPaderGCiX2
         nnx1wBbHbiM1sF36+2hzjXm1jonmmZ+3/R5ofonHV7cMPNWW5bFcEzhm0IdLfn97uppQ
         r3MHyMBt5KMO5+Z5Ws73TVkzDLdBx2gFQZFsjfSMG3sKlnqbQd77IAne6+ewCxL8mXTi
         Gd/A==
X-Gm-Message-State: APjAAAWb+dr9H+HFAfgJr2jUAqCc/ze6IjjLAyKQse3J8vGnGbDqGNlT
	wtF7C7G7wuBAsV8JWYn64LU=
X-Google-Smtp-Source: APXvYqxB1xnp/Jn3ItPVJgS8e4l4D6fKeuNma1dz63+WKwoWLSwm9aYTEYjTh49ltExQ3kYEBnUpwg==
X-Received: by 2002:a37:b6c5:: with SMTP id g188mr43498679qkf.40.1568312897423;
        Thu, 12 Sep 2019 11:28:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4852:: with SMTP id v79ls1444513qka.2.gmail; Thu, 12 Sep
 2019 11:28:17 -0700 (PDT)
X-Received: by 2002:a37:6789:: with SMTP id b131mr22418406qkc.358.1568312897152;
        Thu, 12 Sep 2019 11:28:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568312897; cv=none;
        d=google.com; s=arc-20160816;
        b=0UphLFOdyRl+MQgpZjG15cpk/L0apCCbliaWU0mwYlG4aXzatGVa93pKueE8YmIf3t
         /zImloh9PxQc8Y3/DIsjnjFR5QLKqTyqCZX0ey8a/F7rAxgAJEfzJqIGYvOgpj0Iz/vH
         W19uDgj6Ya/SqRqZr1EZI8Yn9iw1DuQsozJi6GLJh+DtP4o4P1h/csq/lKs2vksQYh3W
         jUL0gWuFpxnxgOpY/tkDf7D8JwEqXr8MTXWhzCsHne0k1T8bwxADVgq4nNq9zqLVyo7g
         yKuEpEsYnBSRJ52nX5GSls2n1P4QL2QwnD1/qzu7j14k4pBsNznMsFeMhNwX9k10rGf1
         2erw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3RMa5VyYXryUSDFG8ARrtGPLgGqS257sM0XAsCKKwVE=;
        b=bxfWLAE75+dSlRX/cBE9bKxtbdwvNW54C1ehdf1FcnMppm+hHRoZgS3p894ZmnLCA+
         q3wSYMA6TDOZoOiubYdQzHluXEEiP9NplEawWeuZf3XgTMr9BXImiZCcSTA/rCwjMnW2
         Ii4KZWWdbKYS6+K2ubcJMnLkxL20bfudVyRR7HTdFbiUeAF7tnbDbzbdjVBtIwlvSUda
         B5eVcinZvLt48Xh2brC9YAdBve/wiuQVMvHrtkhlegu6qa5paZxsCnS51sJMtKNamkBd
         8K8PwIYOO4eu7EIdC/A68lZ3NgX5f9BTwjfLJjE57jMQRAjnn6E1WPkTsPfikwPHqorv
         d+eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bqeTJ7Ol;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v7si327699qkf.5.2019.09.12.11.28.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Sep 2019 11:28:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id q10so16517669pfl.0
        for <clang-built-linux@googlegroups.com>; Thu, 12 Sep 2019 11:28:17 -0700 (PDT)
X-Received: by 2002:a17:90a:c210:: with SMTP id e16mr52155pjt.123.1568312895654;
 Thu, 12 Sep 2019 11:28:15 -0700 (PDT)
MIME-Version: 1.0
References: <201909121423.Cex3Lbv6%lkp@intel.com>
In-Reply-To: <201909121423.Cex3Lbv6%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Sep 2019 11:28:04 -0700
Message-ID: <CAKwvOdm_Tu0bmdfhzNNTgn4sPF6T5uAkynj=N2WsCTtOpqrFig@mail.gmail.com>
Subject: Re: [alexshi:lru_lock 2/2] mm/huge_memory.c:2774:38: warning:
 variable 'flags' is uninitialized when used here
To: kbuild test robot <lkp@intel.com>, alex.shi@linux.alibaba.com
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@01.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bqeTJ7Ol;       spf=pass
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

+ Alex
0day bot reported this error when building your tree with Clang; looks legit.

On Wed, Sep 11, 2019 at 11:00 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> TO: Alex Shi <alex.shi@linux.alibaba.com>
>
> tree:   https://github.com/alexshi/linux.git lru_lock
> head:   e6d9a352eb39a6d71ec34cec92c6274cb4d58648
> commit: e6d9a352eb39a6d71ec34cec92c6274cb4d58648 [2/2] version 4
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout e6d9a352eb39a6d71ec34cec92c6274cb4d58648
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> mm/huge_memory.c:2774:38: warning: variable 'flags' is uninitialized when used here [-Wuninitialized]
>                    __split_huge_page(page, list, end, flags);
>                                                       ^~~~~
>    mm/huge_memory.c:2681:21: note: initialize the variable 'flags' to silence this warning
>            unsigned long flags;
>                               ^
>                                = 0
>    1 warning generated.
>
> vim +/flags +2774 mm/huge_memory.c
>
> b8f593cd0896b8 Huang Ying         2017-07-06  2652
> 6d0a07edd17cfc Andrea Arcangeli   2016-05-12  2653  /*
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2654   * This function splits huge page into normal pages. @page can point to any
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2655   * subpage of huge page to split. Split doesn't change the position of @page.
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2656   *
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2657   * Only caller must hold pin on the @page, otherwise split fails with -EBUSY.
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2658   * The huge page must be locked.
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2659   *
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2660   * If @list is null, tail pages will be added to LRU list, otherwise, to @list.
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2661   *
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2662   * Both head page and tail pages will inherit mapping, flags, and so on from
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2663   * the hugepage.
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2664   *
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2665   * GUP pin and PG_locked transferred to @page. Rest subpages can be freed if
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2666   * they are not mapped.
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2667   *
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2668   * Returns 0 if the hugepage is split successfully.
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2669   * Returns -EBUSY if the page is pinned or if anon_vma disappeared from under
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2670   * us.
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2671   */
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2672  int split_huge_page_to_list(struct page *page, struct list_head *list)
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2673  {
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2674      struct page *head = compound_head(page);
> a3d0a918502cc7 Kirill A. Shutemov 2016-02-02  2675      struct pglist_data *pgdata = NODE_DATA(page_to_nid(head));
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2676      struct anon_vma *anon_vma = NULL;
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2677      struct address_space *mapping = NULL;
> 9949f0e1655854 Alex Shi           2019-07-24  2678      struct lruvec *lruvec;
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2679      int count, mapcount, extra_pins, ret;
> d965432234db94 Kirill A. Shutemov 2016-01-15  2680      bool mlocked;
> 0b9b6fff7b4caf Kirill A. Shutemov 2016-01-20  2681      unsigned long flags;
> 006d3ff27e884f Hugh Dickins       2018-11-30  2682      pgoff_t end;
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2683
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2684      VM_BUG_ON_PAGE(is_huge_zero_page(page), page);
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2685      VM_BUG_ON_PAGE(!PageLocked(page), page);
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2686      VM_BUG_ON_PAGE(!PageCompound(page), page);
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2687
> 59807685a7e77e Huang Ying         2017-09-06  2688      if (PageWriteback(page))
> 59807685a7e77e Huang Ying         2017-09-06  2689              return -EBUSY;
> 59807685a7e77e Huang Ying         2017-09-06  2690
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2691      if (PageAnon(head)) {
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2692              /*
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2693               * The caller does not necessarily hold an mmap_sem that would
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2694               * prevent the anon_vma disappearing so we first we take a
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2695               * reference to it and then lock the anon_vma for write. This
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2696               * is similar to page_lock_anon_vma_read except the write lock
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2697               * is taken to serialise against parallel split or collapse
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2698               * operations.
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2699               */
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2700              anon_vma = page_get_anon_vma(head);
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2701              if (!anon_vma) {
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2702                      ret = -EBUSY;
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2703                      goto out;
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2704              }
> 006d3ff27e884f Hugh Dickins       2018-11-30  2705              end = -1;
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2706              mapping = NULL;
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2707              anon_vma_lock_write(anon_vma);
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2708      } else {
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2709              mapping = head->mapping;
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2710
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2711              /* Truncated ? */
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2712              if (!mapping) {
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2713                      ret = -EBUSY;
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2714                      goto out;
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2715              }
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2716
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2717              anon_vma = NULL;
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2718              i_mmap_lock_read(mapping);
> 006d3ff27e884f Hugh Dickins       2018-11-30  2719
> 006d3ff27e884f Hugh Dickins       2018-11-30  2720              /*
> 006d3ff27e884f Hugh Dickins       2018-11-30  2721               *__split_huge_page() may need to trim off pages beyond EOF:
> 006d3ff27e884f Hugh Dickins       2018-11-30  2722               * but on 32-bit, i_size_read() takes an irq-unsafe seqlock,
> 006d3ff27e884f Hugh Dickins       2018-11-30  2723               * which cannot be nested inside the page tree lock. So note
> 006d3ff27e884f Hugh Dickins       2018-11-30  2724               * end now: i_size itself may be changed at any moment, but
> 006d3ff27e884f Hugh Dickins       2018-11-30  2725               * head page lock is good enough to serialize the trimming.
> 006d3ff27e884f Hugh Dickins       2018-11-30  2726               */
> 006d3ff27e884f Hugh Dickins       2018-11-30  2727              end = DIV_ROUND_UP(i_size_read(mapping->host), PAGE_SIZE);
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2728      }
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2729
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2730      /*
> 906f9cdfc2a080 Hugh Dickins       2018-11-30  2731       * Racy check if we can split the page, before unmap_page() will
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2732       * split PMDs
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2733       */
> b8f593cd0896b8 Huang Ying         2017-07-06  2734      if (!can_split_huge_page(head, &extra_pins)) {
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2735              ret = -EBUSY;
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2736              goto out_unlock;
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2737      }
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2738
> d965432234db94 Kirill A. Shutemov 2016-01-15  2739      mlocked = PageMlocked(page);
> 906f9cdfc2a080 Hugh Dickins       2018-11-30  2740      unmap_page(head);
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2741      VM_BUG_ON_PAGE(compound_mapcount(head), head);
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2742
> d965432234db94 Kirill A. Shutemov 2016-01-15  2743      /* Make sure the page is not on per-CPU pagevec as it takes pin */
> d965432234db94 Kirill A. Shutemov 2016-01-15  2744      if (mlocked)
> d965432234db94 Kirill A. Shutemov 2016-01-15  2745              lru_add_drain();
> d965432234db94 Kirill A. Shutemov 2016-01-15  2746
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2747      /* prevent PageLRU to go away from under us, and freeze lru stats */
> e6d9a352eb39a6 Alex Shi           2019-09-09  2748      lruvec = lock_page_lruvec_irqsave(head, pgdata);
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2749
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2750      if (mapping) {
> aa5dc07f70c50a Matthew Wilcox     2017-12-04  2751              XA_STATE(xas, &mapping->i_pages, page_index(head));
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2752
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2753              /*
> aa5dc07f70c50a Matthew Wilcox     2017-12-04  2754               * Check if the head page is present in page cache.
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2755               * We assume all tail are present too, if head is there.
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2756               */
> aa5dc07f70c50a Matthew Wilcox     2017-12-04  2757              xa_lock(&mapping->i_pages);
> aa5dc07f70c50a Matthew Wilcox     2017-12-04  2758              if (xas_load(&xas) != head)
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2759                      goto fail;
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2760      }
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2761
> 0139aa7b7fa12c Joonsoo Kim        2016-05-19  2762      /* Prevent deferred_split_scan() touching ->_refcount */
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2763      spin_lock(&pgdata->split_queue_lock);
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2764      count = page_count(head);
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2765      mapcount = total_mapcount(head);
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2766      if (!mapcount && page_ref_freeze(head, 1 + extra_pins)) {
> 9a982250f773cc Kirill A. Shutemov 2016-01-15  2767              if (!list_empty(page_deferred_list(head))) {
> a3d0a918502cc7 Kirill A. Shutemov 2016-02-02  2768                      pgdata->split_queue_len--;
> 9a982250f773cc Kirill A. Shutemov 2016-01-15  2769                      list_del(page_deferred_list(head));
> 9a982250f773cc Kirill A. Shutemov 2016-01-15  2770              }
> 65c453778aea37 Kirill A. Shutemov 2016-07-26  2771              if (mapping)
> 11fb998986a72a Mel Gorman         2016-07-28  2772                      __dec_node_page_state(page, NR_SHMEM_THPS);
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2773              spin_unlock(&pgdata->split_queue_lock);
> 006d3ff27e884f Hugh Dickins       2018-11-30 @2774              __split_huge_page(page, list, end, flags);
> 59807685a7e77e Huang Ying         2017-09-06  2775              if (PageSwapCache(head)) {
> 59807685a7e77e Huang Ying         2017-09-06  2776                      swp_entry_t entry = { .val = page_private(head) };
> 59807685a7e77e Huang Ying         2017-09-06  2777
> 59807685a7e77e Huang Ying         2017-09-06  2778                      ret = split_swap_cluster(entry);
> 59807685a7e77e Huang Ying         2017-09-06  2779              } else
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2780                      ret = 0;
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2781      } else {
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2782              if (IS_ENABLED(CONFIG_DEBUG_VM) && mapcount) {
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2783                      pr_alert("total_mapcount: %u, page_count(): %u\n",
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2784                                      mapcount, count);
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2785                      if (PageTail(page))
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2786                              dump_page(head, NULL);
> bd56086f10186e Kirill A. Shutemov 2016-01-15  2787                      dump_page(page, "total_mapcount(head) > 0");
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2788                      BUG();
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2789              }
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2790              spin_unlock(&pgdata->split_queue_lock);
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2791  fail:               if (mapping)
> b93b016313b3ba Matthew Wilcox     2018-04-10  2792                      xa_unlock(&mapping->i_pages);
> e6d9a352eb39a6 Alex Shi           2019-09-09  2793              spin_unlock_irqrestore(&lruvec->lru_lock, lruvec->flags);
> 906f9cdfc2a080 Hugh Dickins       2018-11-30  2794              remap_page(head);
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2795              ret = -EBUSY;
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2796      }
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2797
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2798  out_unlock:
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2799      if (anon_vma) {
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2800              anon_vma_unlock_write(anon_vma);
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2801              put_anon_vma(anon_vma);
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2802      }
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2803      if (mapping)
> baa355fd331424 Kirill A. Shutemov 2016-07-26  2804              i_mmap_unlock_read(mapping);
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2805  out:
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2806      count_vm_event(!ret ? THP_SPLIT_PAGE : THP_SPLIT_PAGE_FAILED);
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2807      return ret;
> e9b61f19858a5d Kirill A. Shutemov 2016-01-15  2808  }
> 9a982250f773cc Kirill A. Shutemov 2016-01-15  2809
>
> :::::: The code at line 2774 was first introduced by commit
> :::::: 006d3ff27e884f80bd7d306b041afc415f63598f mm/huge_memory: fix lockdep complaint on 32-bit i_size_read()
>
> :::::: TO: Hugh Dickins <hughd@google.com>
> :::::: CC: Linus Torvalds <torvalds@linux-foundation.org>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm_Tu0bmdfhzNNTgn4sPF6T5uAkynj%3DN2WsCTtOpqrFig%40mail.gmail.com.
