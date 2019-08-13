Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWGTZTVAKGQEH2UMOQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 174898C388
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 23:21:30 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id i33sf63632251pld.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 14:21:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565731288; cv=pass;
        d=google.com; s=arc-20160816;
        b=TQontUiLUNeXjVlER015y/D5C23J8RVHi9SA/dZrPpTFhNNp0PqO+B0z/eWhuJ3BpT
         72wLdLz38uyKn1EloEoM+JMRsDSA4FS02tM74/7/VftDJsJF2CKP8qivFswX1R9kEV6M
         4kZJeqjtxcNXH1CLFcuDoDwtCK6iR5Y6sWmnkk0cU+K8pBBkQMutyQivXo1v7yYfOfko
         Uc0rXQR3p3H6lX7Ted5991jU4U8PskKEc6/+iChlM0B2Rmfxyb1QUq4DUZ26/YYZuWxB
         Ua2qRnIwhOL2TkPYhvttcvf29s7dV40RBfceBSq3I1eFssydMAf49qDhCMUmWuuyNtW6
         qGXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Lc6MFJxoEsEAwqaxb5T43EtxiGxuMTNdPrNInDALIDg=;
        b=Yx7rwJhI63nVLqL9k7ZqYOPqBMfc+z/G7LexX1lIp2DZ+lb0Z9HixFIiw1FUICOTvM
         E9mn045xxxx4jqLwX0NbOi66puOqjBZTgIOj7s+5hUgp70At3KWdsI5bb9BYjXrDlm/J
         1Rbs/DL7uctl6KrFvqMbPF/0shf2JjMeDor6IKVCMR90VUWkcDGnKQ6SkzTOjsnIjrer
         CUOvwgsarHcok9Vvi76q1tSEKgBrFl+ZEnrt6W1+BqUJ68JqkG2340VEljMKSdtr0uuM
         4rKpvF+3M2+Uzbgk85S9AfTurymIQpnljB2zch2XiGP5ZRNtv6L2vlV8dC1cjbsL0MAz
         BsCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gkwbr8Uo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lc6MFJxoEsEAwqaxb5T43EtxiGxuMTNdPrNInDALIDg=;
        b=i8Dlm7EeFcZzWhJSHRxI3I9sT/fkbcYztrWWf4dn+jq2vvFEJeVr1AHqb1LJ77qxol
         qcrH6yYDhTQ8RnlmXJ+fI9R1/VDPMKIG3nDHuuC2mOzK+z7p+leJFQ3jE1AfzaEAsGSY
         YaSW3DhXt6UpsggOVFi8bMnb7qGoGxwsmNKWdvrDVD/MSyUIfuSCFyxNA16S/3i3hGv/
         j+MIcFOFt8nXB4JUFnUdHSVqm5AfnmMB+khxpb5SuxEjyCdCRQLCHRMxrl6X7DNPRQ7Q
         SD5KznKU7svzzfcLYJ7xhtdPUvjjbAP2APQS9YZ9bU+LM3KW0Su/StBoHnM/Z4370dn8
         TFQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lc6MFJxoEsEAwqaxb5T43EtxiGxuMTNdPrNInDALIDg=;
        b=ro1n++7G+5oDUXEYBSvVzh57IeR24oZBADAOhtmf0RfZl9uWZRw9Lcx8+j2GyHLQAq
         cC4kvdcb0Y1R1bkDtd/Rp2sLBsnETQGOVahVYhSwuxEiwmwsstBKAuFgg/Gbwi87mKk9
         K4GinqLuHpuL427fqei7NyWZcNj31LJ8POz4cZarfhG1ONpZq1WkcBvgeNnURkiaQHGj
         a4S2viW1C3BOrbEJ7SK1350i5XhKVBZXTXcO6jQ65e6uwQT7Mp9Uw33TBfrCFg+LV3m+
         MfgWHR4nobQIY63aocmPG7rHVJOtbsckg79FXrY5QjVuCdrDQ6PnFA9Sa9oysttSyiMI
         wzuw==
X-Gm-Message-State: APjAAAU6Yb/W+Ok4oMpSUli/WuNDiy/w3zGbsHTvmcexdVxr9F+42aBW
	wDWF7Y4RkwiriJtqYZ61xB0=
X-Google-Smtp-Source: APXvYqx93OULcA6dyODqUP83e9HnPqDqpG6kUbhanN0N5K98Oa0ztH0IjyWC8t4YIJfWpYz+V5ECNg==
X-Received: by 2002:a63:3281:: with SMTP id y123mr35169193pgy.72.1565731288689;
        Tue, 13 Aug 2019 14:21:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:954c:: with SMTP id t12ls23864832pgn.12.gmail; Tue, 13
 Aug 2019 14:21:28 -0700 (PDT)
X-Received: by 2002:a62:ce8a:: with SMTP id y132mr2854449pfg.240.1565731288086;
        Tue, 13 Aug 2019 14:21:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565731288; cv=none;
        d=google.com; s=arc-20160816;
        b=G5PJ3MSPOeq3LEoAQCT30W1UWzkIuSjtvxQ7XMItrVIPq+5GQ/nrloLeCMnWNDSabE
         FaCzeTEik8jwluf02Z/lDPpqBtoVPxPK3cnGaFRz+/dSZhZNvMzJ7S/4yb7KO7jl7ysU
         H2iEryS4zvZQt6+28JCILaK9Upvy8ldb7u5fMQi2NZEaTpd6VNCs8K4vQbiFpK6VJ5ss
         1dUtxfOn58lURm+/zYIbqC73xcqdw3Yxm7KXz6Xht/LQWz2Al+3jXaQDXdxROILtuAyC
         LIUeclASLKXXgoNjXozCmuHcjbafUJ/soDmsUVRrLKPnURbMDyj+OkQGSFN3ckE82OsJ
         T36A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ojn2ywLP52a4c82C+iPIIRqMWRi8dSKp97AisjKq9YY=;
        b=x8pTQRtPL2TKeSNvyBZMr4FvYd6ZpVAOA1SXeqEufbD06PC6AjlnSJKz3sf5+P9xKh
         LeQBfSDB9324wlgjsxyf75EqKhAz1o/Qh9G9M7/UtaZ+c0J4T+h1AicPziC9hNK6OqYZ
         uQteSVDsZEJaqdADcNMdfwVNvDYn9dNDdgFf4gwu0f0fWpNykcb91k2vzgpMArgsBurM
         XywQGvcWqRqcIoyKiUcvSSJEt6lsNeB5US/JpHYByJlPcd6tHM6NjbV0AFWIxZm5qvwj
         A7elT0VEpBeOgsV1sdkkup7jAgGDC/xCDANg/el9LK3bU4bBBCEOkUPqBIvAVn03aQxA
         NN6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gkwbr8Uo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id w72si4886959pfd.2.2019.08.13.14.21.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 14:21:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id a93so49739216pla.7
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 14:21:28 -0700 (PDT)
X-Received: by 2002:a17:902:9f93:: with SMTP id g19mr39163301plq.223.1565731287296;
 Tue, 13 Aug 2019 14:21:27 -0700 (PDT)
MIME-Version: 1.0
References: <201908140530.i8rXFzLC%lkp@intel.com>
In-Reply-To: <201908140530.i8rXFzLC%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 13 Aug 2019 14:21:16 -0700
Message-ID: <CAKwvOdkCKhCHjteLwDZMon1zo+DAn=M2PGGsrpvs6e=jgXV4=g@mail.gmail.com>
Subject: Re: [android-goldfish:b120914098 38/99] kernel/memremap.c:312:2:
 error: implicit declaration of function 'kasan_remove_zero_shadow'
To: Paul Lawrence <paullawrence@google.com>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gkwbr8Uo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

Here he is officer, guilty as charged. ;)

On Tue, Aug 13, 2019 at 2:14 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> BCC: philip.li@intel.com
> TO: Paul Lawrence <paullawrence@google.com>
>
> tree:   https://android.googlesource.com/kernel/goldfish b120914098
> head:   88590f0a97d55a7156cdb09e9d5ecb8d829826e0
> commit: 69c0f72d6ca84158e4cd691fe31db5d0170d38b9 [38/99] BACKPORT: kernel/memremap, kasan: make ZONE_DEVICE with work with KASAN
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout 69c0f72d6ca84158e4cd691fe31db5d0170d38b9
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    In file included from kernel/memremap.c:21:
>    include/linux/swapops.h:327:22: warning: section attribute is specified on redeclared variable [-Wsection]
>    extern atomic_long_t num_poisoned_pages __read_mostly;
>                         ^
>    include/linux/mm.h:2551:22: note: previous declaration is here
>    extern atomic_long_t num_poisoned_pages;
>                         ^
> >> kernel/memremap.c:312:2: error: implicit declaration of function 'kasan_remove_zero_shadow' [-Werror,-Wimplicit-function-declaration]
>            kasan_remove_zero_shadow(__va(align_start), align_size);
>            ^
> >> kernel/memremap.c:448:10: error: implicit declaration of function 'kasan_add_zero_shadow' [-Werror,-Wimplicit-function-declaration]
>            error = kasan_add_zero_shadow(__va(align_start), align_size);
>                    ^
>    kernel/memremap.c:481:2: error: implicit declaration of function 'kasan_remove_zero_shadow' [-Werror,-Wimplicit-function-declaration]
>            kasan_remove_zero_shadow(__va(align_start), align_size);
>            ^
>    1 warning and 3 errors generated.
>
> vim +/kasan_remove_zero_shadow +312 kernel/memremap.c
>
>    285
>    286  #define for_each_device_pfn(pfn, map) \
>    287          for (pfn = pfn_first(map); pfn < pfn_end(map); pfn++)
>    288
>    289  static void devm_memremap_pages_release(struct device *dev, void *data)
>    290  {
>    291          struct page_map *page_map = data;
>    292          struct resource *res = &page_map->res;
>    293          resource_size_t align_start, align_size;
>    294          struct dev_pagemap *pgmap = &page_map->pgmap;
>    295          unsigned long pfn;
>    296
>    297          for_each_device_pfn(pfn, page_map)
>    298                  put_page(pfn_to_page(pfn));
>    299
>    300          if (percpu_ref_tryget_live(pgmap->ref)) {
>    301                  dev_WARN(dev, "%s: page mapping is still live!\n", __func__);
>    302                  percpu_ref_put(pgmap->ref);
>    303          }
>    304
>    305          /* pages are dead and unused, undo the arch mapping */
>    306          align_start = res->start & ~(SECTION_SIZE - 1);
>    307          align_size = ALIGN(res->start + resource_size(res), SECTION_SIZE)
>    308                  - align_start;
>    309
>    310          mem_hotplug_begin();
>    311          arch_remove_memory(align_start, align_size);
>  > 312          kasan_remove_zero_shadow(__va(align_start), align_size);
>    313          mem_hotplug_done();
>    314
>    315          untrack_pfn(NULL, PHYS_PFN(align_start), align_size);
>    316          pgmap_radix_release(res, -1);
>    317          dev_WARN_ONCE(dev, pgmap->altmap && pgmap->altmap->alloc,
>    318                          "%s: failed to free all reserved pages\n", __func__);
>    319  }
>    320
>    321  /* assumes rcu_read_lock() held at entry */
>    322  struct dev_pagemap *find_dev_pagemap(resource_size_t phys)
>    323  {
>    324          struct page_map *page_map;
>    325
>    326          WARN_ON_ONCE(!rcu_read_lock_held());
>    327
>    328          page_map = radix_tree_lookup(&pgmap_radix, PHYS_PFN(phys));
>    329          return page_map ? &page_map->pgmap : NULL;
>    330  }
>    331
>    332  /**
>    333   * devm_memremap_pages - remap and provide memmap backing for the given resource
>    334   * @dev: hosting device for @res
>    335   * @res: "host memory" address range
>    336   * @ref: a live per-cpu reference count
>    337   * @altmap: optional descriptor for allocating the memmap from @res
>    338   *
>    339   * Notes:
>    340   * 1/ @ref must be 'live' on entry and 'dead' before devm_memunmap_pages() time
>    341   *    (or devm release event). The expected order of events is that @ref has
>    342   *    been through percpu_ref_kill() before devm_memremap_pages_release(). The
>    343   *    wait for the completion of all references being dropped and
>    344   *    percpu_ref_exit() must occur after devm_memremap_pages_release().
>    345   *
>    346   * 2/ @res is expected to be a host memory range that could feasibly be
>    347   *    treated as a "System RAM" range, i.e. not a device mmio range, but
>    348   *    this is not enforced.
>    349   */
>    350  void *devm_memremap_pages(struct device *dev, struct resource *res,
>    351                  struct percpu_ref *ref, struct vmem_altmap *altmap)
>    352  {
>    353          resource_size_t align_start, align_size, align_end;
>    354          unsigned long pfn, pgoff, order;
>    355          pgprot_t pgprot = PAGE_KERNEL;
>    356          struct dev_pagemap *pgmap;
>    357          struct page_map *page_map;
>    358          int error, nid, is_ram, i = 0;
>    359          struct dev_pagemap *conflict_pgmap;
>    360
>    361          align_start = res->start & ~(SECTION_SIZE - 1);
>    362          align_size = ALIGN(res->start + resource_size(res), SECTION_SIZE)
>    363                  - align_start;
>    364          align_end = align_start + align_size - 1;
>    365
>    366          conflict_pgmap = get_dev_pagemap(PHYS_PFN(align_start), NULL);
>    367          if (conflict_pgmap) {
>    368                  dev_WARN(dev, "Conflicting mapping in same section\n");
>    369                  put_dev_pagemap(conflict_pgmap);
>    370                  return ERR_PTR(-ENOMEM);
>    371          }
>    372
>    373          conflict_pgmap = get_dev_pagemap(PHYS_PFN(align_end), NULL);
>    374          if (conflict_pgmap) {
>    375                  dev_WARN(dev, "Conflicting mapping in same section\n");
>    376                  put_dev_pagemap(conflict_pgmap);
>    377                  return ERR_PTR(-ENOMEM);
>    378          }
>    379
>    380          is_ram = region_intersects(align_start, align_size,
>    381                  IORESOURCE_SYSTEM_RAM, IORES_DESC_NONE);
>    382
>    383          if (is_ram != REGION_DISJOINT) {
>    384                  WARN_ONCE(1, "%s attempted on %s region %pr\n", __func__,
>    385                                  is_ram == REGION_MIXED ? "mixed" : "ram", res);
>    386                  return ERR_PTR(-ENXIO);
>    387          }
>    388
>    389          if (!ref)
>    390                  return ERR_PTR(-EINVAL);
>    391
>    392          page_map = devres_alloc_node(devm_memremap_pages_release,
>    393                          sizeof(*page_map), GFP_KERNEL, dev_to_node(dev));
>    394          if (!page_map)
>    395                  return ERR_PTR(-ENOMEM);
>    396          pgmap = &page_map->pgmap;
>    397
>    398          memcpy(&page_map->res, res, sizeof(*res));
>    399
>    400          pgmap->dev = dev;
>    401          if (altmap) {
>    402                  memcpy(&page_map->altmap, altmap, sizeof(*altmap));
>    403                  pgmap->altmap = &page_map->altmap;
>    404          }
>    405          pgmap->ref = ref;
>    406          pgmap->res = &page_map->res;
>    407          pgmap->type = MEMORY_DEVICE_HOST;
>    408          pgmap->page_fault = NULL;
>    409          pgmap->page_free = NULL;
>    410          pgmap->data = NULL;
>    411
>    412          mutex_lock(&pgmap_lock);
>    413          error = 0;
>    414
>    415          foreach_order_pgoff(res, order, pgoff) {
>    416                  struct dev_pagemap *dup;
>    417
>    418                  rcu_read_lock();
>    419                  dup = find_dev_pagemap(res->start + PFN_PHYS(pgoff));
>    420                  rcu_read_unlock();
>    421                  if (dup) {
>    422                          dev_err(dev, "%s: %pr collides with mapping for %s\n",
>    423                                          __func__, res, dev_name(dup->dev));
>    424                          error = -EBUSY;
>    425                          break;
>    426                  }
>    427                  error = __radix_tree_insert(&pgmap_radix,
>    428                                  PHYS_PFN(res->start) + pgoff, order, page_map);
>    429                  if (error) {
>    430                          dev_err(dev, "%s: failed: %d\n", __func__, error);
>    431                          break;
>    432                  }
>    433          }
>    434          mutex_unlock(&pgmap_lock);
>    435          if (error)
>    436                  goto err_radix;
>    437
>    438          nid = dev_to_node(dev);
>    439          if (nid < 0)
>    440                  nid = numa_mem_id();
>    441
>    442          error = track_pfn_remap(NULL, &pgprot, PHYS_PFN(align_start), 0,
>    443                          align_size);
>    444          if (error)
>    445                  goto err_pfn_remap;
>    446
>    447          mem_hotplug_begin();
>  > 448          error = kasan_add_zero_shadow(__va(align_start), align_size);
>    449          if (error) {
>    450                  mem_hotplug_done();
>    451                  goto err_kasan;
>    452          }
>    453          error = arch_add_memory(nid, align_start, align_size, false);
>    454          if (!error)
>    455                  move_pfn_range_to_zone(&NODE_DATA(nid)->node_zones[ZONE_DEVICE],
>    456                                          align_start >> PAGE_SHIFT,
>    457                                          align_size >> PAGE_SHIFT);
>    458          mem_hotplug_done();
>    459          if (error)
>    460                  goto err_add_memory;
>    461
>    462          for_each_device_pfn(pfn, page_map) {
>    463                  struct page *page = pfn_to_page(pfn);
>    464
>    465                  /*
>    466                   * ZONE_DEVICE pages union ->lru with a ->pgmap back
>    467                   * pointer.  It is a bug if a ZONE_DEVICE page is ever
>    468                   * freed or placed on a driver-private list.  Seed the
>    469                   * storage with LIST_POISON* values.
>    470                   */
>    471                  list_del(&page->lru);
>    472                  page->pgmap = pgmap;
>    473                  percpu_ref_get(ref);
>    474                  if (!(++i % 1024))
>    475                          cond_resched();
>    476          }
>    477          devres_add(dev, page_map);
>    478          return __va(res->start);
>    479
>    480   err_add_memory:
>    481          kasan_remove_zero_shadow(__va(align_start), align_size);
>    482   err_kasan:
>    483          untrack_pfn(NULL, PHYS_PFN(align_start), align_size);
>    484   err_pfn_remap:
>    485   err_radix:
>    486          pgmap_radix_release(res, pgoff);
>    487          devres_free(page_map);
>    488          return ERR_PTR(error);
>    489  }
>    490  EXPORT_SYMBOL_GPL(devm_memremap_pages);
>    491
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkCKhCHjteLwDZMon1zo%2BDAn%3DM2PGGsrpvs6e%3DjgXV4%3Dg%40mail.gmail.com.
