Return-Path: <clang-built-linux+bncBCXOVLVRYUBBBPGWZTVAKGQEPNNULJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC428C3A7
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 23:27:25 +0200 (CEST)
Received: by mail-yw1-xc37.google.com with SMTP id l22sf6232141ywa.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 14:27:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565731645; cv=pass;
        d=google.com; s=arc-20160816;
        b=HK7csuXwVhlwSeHCEOJ9bjLafA7MATR0r9XTKM3S81e0TgzCSdGHJcMsZpfIHaL6U5
         OJFFs6EH2Ome0DdbnvVc9tcwKQ1Ohh7J6aYaj1rnk9Kv1T7SV3dEEK8+ZezqHp0z/RQP
         sxc4Jgc/jNEYbVi7w7MR/yBdsbYTqN/jk7GpgD0hSfO4vLTQi5in5l1SPmz/gBi2q6RN
         gBhWXWfBrVyMNr2wN3JkKuC1tRw2hBxMFqgUNKYS7/id4t5gfv3jnoepHqmm+JR6QkMg
         F4OQPkxRk2CYZ4GdQktavsjh6G83KkXZBqdLcoiXVAYU/hQO/bNux+azrBsWMviXMVOS
         wMrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AE8uPcaWkxIivaJ/gJSBixrgkK5Lg1VR2WnIgI2U/dA=;
        b=U4pbQtdAotOKJrXij/G7io3oXOEwL+lqE+0xfEz9Z00yTo5+NXCKX6ZPr3f21oi6Gb
         +zyYcqnUBjPcc40rDWyUJKpBDjByT3dMAGCEXMI8+JXwFAP/XwavA9k5wsnNxHpFFijR
         +wkMjF/x3kKhPDu0AJ/3WNSFYa38GwD+cylfmoCfkwPx4gXg7CguUIIWXp8DrD0bPBIZ
         wIH6C4mYjN2wlR6p3irHQPyW2mEGB05IUomE1VTFxtBwhMecRfDWoeTZ6CkU7XQSJCug
         DIcOmMtfvn5zLpWj06OQIJDJz1TVP9YgByUI0Z5P9jlJqa5VysXrSusEheOpKIg0EZZl
         bZNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MTsnNxvr;
       spf=pass (google.com: domain of paullawrence@google.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=paullawrence@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AE8uPcaWkxIivaJ/gJSBixrgkK5Lg1VR2WnIgI2U/dA=;
        b=OjXf0HsSQFIVr6hz17YNnFFvG/M45mpEm5lydag+ilWbSXG41bzn4niX4HlXBXLCzd
         dMTKUoEYuzoV1xeGHR1MDECf/cZJSV92VIa5z6Lrbv7uFkS7GQLgJxeaUCKd76TzDk1X
         d5M6DWvA6kQtU138za3mxv1rvK1jnHRY+ZXlhTygbRbMSQPf49CPkgSKwjwrFHCkZ/W+
         7ArrCt+0fsLtS1OjsAN9N2+MQFLMDrEnqjeGgYeMXW8hls7d+zZhJh2dk0fTyPUKgNiz
         TPiJjPDlwX8VjkDjDgvPNbAQdq7Rxzw2j87KB0MqbNaw11PNppLXD13tifcng5VhK7ow
         iBIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AE8uPcaWkxIivaJ/gJSBixrgkK5Lg1VR2WnIgI2U/dA=;
        b=ge3fVb8O55H/avIeCOY/YhgXsJTSR6og2SIAKgqC+aisS92O5DYnw6qiZkJnxBY1O3
         M1wkR1AYT6ppy3Wm5ijD8Xcxtei8tCfqqtmPMJ6/FqdigJH2xaIJDToN/DxYQ2LFUyS4
         aUuTpHddKkG6EjnRm2R+1CIf+dCBoh7mdDJu230Yz0odZVjoIjSf0i7pc8VRockTG1OS
         5ZNp3RxadYB+I96NoBu33sFS1M+3EBBA8nJ3di7/3W0eHyFsuiGtxRMSuzBpDjciIIdi
         8CK9rI6562ASi0G9XKKNcwX/Kzy+i8ed1cSjKaUcRv/8IniJnF2FyqsK23sPP/9JB9mx
         4nXA==
X-Gm-Message-State: APjAAAVv/6Hlkh5MOW0q3vEoO9whrTm5MPvBu+mR9C+mEvmKKTkRNL3B
	Ih58/1YUn196LftN57DafvI=
X-Google-Smtp-Source: APXvYqxjvZKa0qtKqL63gWAhyOysCdvD1PySWtKOmtpHKYN5cKRZ5oTrpm4L8+17y93YABQMZwTsmA==
X-Received: by 2002:a81:9293:: with SMTP id j141mr16319236ywg.363.1565731644980;
        Tue, 13 Aug 2019 14:27:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4a8a:: with SMTP id x132ls3956yba.1.gmail; Tue, 13 Aug
 2019 14:27:24 -0700 (PDT)
X-Received: by 2002:a25:4189:: with SMTP id o131mr11687890yba.191.1565731644666;
        Tue, 13 Aug 2019 14:27:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565731644; cv=none;
        d=google.com; s=arc-20160816;
        b=VEZzgIxPMNMFupyzlMhJdjW1Ktt5dL9C8W6lFQhlsYZdmhiH0hRrNJa2fCDo2tOyj5
         /30A6PFsnS/gSjGK4n1MraMcG9UlXjQOY4xxAaoVKD5a6F+GoSKtrBlSTAEBioxuQ24F
         lAjL309ZeNSByzumzvGuhMsreppGGspE0KIiGz5UP724eUrbsxrcnFCPjZMd/9AKhTKE
         bh1ZKhGCg7rtLzN+yVgGpLdCWwRhqITNCWZbvXexH1spYaqW2RZ/lSb5GgV4A1Iikt6H
         oWIMrAbt+3JkU2qVnfmbABjVXyV2CbaGLX3ZhhiL+xoZijFUdcS/ckLtrKq9a/rr2pVJ
         fnuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JKuMlWoiP597B9ca2U0LpnEw8fmTjQsPA8+VQ79ceXw=;
        b=uGM0a/saHzG+PzwnpoeCj6a9qE3mI8F1V4jgLuL+oRzSihaKp90FRft/AgIlzIe/VL
         CQ1TqZup+gPwf/8IZeHCLCRuMEXVmRYDYAL4ffZhtNmSnK+SlqfL/f6TvkOSD84zDwqQ
         kQZwbrYZQ1D+1mEkLs6ez2qrun93OkA/TYp+JK9iJ8LqrGqYWKGbZVd2auzohLDjA1IA
         T55WqtFrNkTc9R/ztCtKLKv+sPgQ42t3OlpBvbb1nBwKbVmfIaRRImlE22qUg+gLfVrf
         OvObynTUh4HaRoenQ0sTpacL1XLdNZHtYj7/sDJ2ejWMJLJHdu96WG9JH0Ye8o/BE6Ec
         XAkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MTsnNxvr;
       spf=pass (google.com: domain of paullawrence@google.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=paullawrence@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id r1si6320789ywg.4.2019.08.13.14.27.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 14:27:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of paullawrence@google.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id 44so76867091qtg.11
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 14:27:24 -0700 (PDT)
X-Received: by 2002:ac8:2af8:: with SMTP id c53mr36032701qta.387.1565731643837;
 Tue, 13 Aug 2019 14:27:23 -0700 (PDT)
MIME-Version: 1.0
References: <201908140530.i8rXFzLC%lkp@intel.com> <CAKwvOdkCKhCHjteLwDZMon1zo+DAn=M2PGGsrpvs6e=jgXV4=g@mail.gmail.com>
In-Reply-To: <CAKwvOdkCKhCHjteLwDZMon1zo+DAn=M2PGGsrpvs6e=jgXV4=g@mail.gmail.com>
From: "'Paul Lawrence' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 13 Aug 2019 14:27:12 -0700
Message-ID: <CAL=UVf7GjkROhqHymay_QCE_8oR9JpB_OtG6_PF6ePqgNXeArw@mail.gmail.com>
Subject: Re: [android-goldfish:b120914098 38/99] kernel/memremap.c:312:2:
 error: implicit declaration of function 'kasan_remove_zero_shadow'
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild test robot <lkp@intel.com>, Andrey Konovalov <andreyknvl@google.com>
Content-Type: multipart/alternative; boundary="0000000000007233890590064ee0"
X-Original-Sender: paullawrence@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MTsnNxvr;       spf=pass
 (google.com: domain of paullawrence@google.com designates 2607:f8b0:4864:20::844
 as permitted sender) smtp.mailfrom=paullawrence@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Paul Lawrence <paullawrence@google.com>
Reply-To: Paul Lawrence <paullawrence@google.com>
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

--0000000000007233890590064ee0
Content-Type: text/plain; charset="UTF-8"

It wasn't me officer, I was just carrying this for someone else.

See https://android-review.googlesource.com/c/kernel/common/+/989989

Note the real culprit is Andrey Konovalov, now cc'd on this thread.

Paul

On Tue, Aug 13, 2019 at 2:21 PM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> Here he is officer, guilty as charged. ;)
>
> On Tue, Aug 13, 2019 at 2:14 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > CC: kbuild-all@01.org
> > BCC: philip.li@intel.com
> > TO: Paul Lawrence <paullawrence@google.com>
> >
> > tree:   https://android.googlesource.com/kernel/goldfish b120914098
> > head:   88590f0a97d55a7156cdb09e9d5ecb8d829826e0
> > commit: 69c0f72d6ca84158e4cd691fe31db5d0170d38b9 [38/99] BACKPORT:
> kernel/memremap, kasan: make ZONE_DEVICE with work with KASAN
> > config: x86_64-rhel-7.6 (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project
> 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > reproduce:
> >         git checkout 69c0f72d6ca84158e4cd691fe31db5d0170d38b9
> >         # save the attached .config to linux build tree
> >         make ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    In file included from kernel/memremap.c:21:
> >    include/linux/swapops.h:327:22: warning: section attribute is
> specified on redeclared variable [-Wsection]
> >    extern atomic_long_t num_poisoned_pages __read_mostly;
> >                         ^
> >    include/linux/mm.h:2551:22: note: previous declaration is here
> >    extern atomic_long_t num_poisoned_pages;
> >                         ^
> > >> kernel/memremap.c:312:2: error: implicit declaration of function
> 'kasan_remove_zero_shadow' [-Werror,-Wimplicit-function-declaration]
> >            kasan_remove_zero_shadow(__va(align_start), align_size);
> >            ^
> > >> kernel/memremap.c:448:10: error: implicit declaration of function
> 'kasan_add_zero_shadow' [-Werror,-Wimplicit-function-declaration]
> >            error = kasan_add_zero_shadow(__va(align_start), align_size);
> >                    ^
> >    kernel/memremap.c:481:2: error: implicit declaration of function
> 'kasan_remove_zero_shadow' [-Werror,-Wimplicit-function-declaration]
> >            kasan_remove_zero_shadow(__va(align_start), align_size);
> >            ^
> >    1 warning and 3 errors generated.
> >
> > vim +/kasan_remove_zero_shadow +312 kernel/memremap.c
> >
> >    285
> >    286  #define for_each_device_pfn(pfn, map) \
> >    287          for (pfn = pfn_first(map); pfn < pfn_end(map); pfn++)
> >    288
> >    289  static void devm_memremap_pages_release(struct device *dev, void
> *data)
> >    290  {
> >    291          struct page_map *page_map = data;
> >    292          struct resource *res = &page_map->res;
> >    293          resource_size_t align_start, align_size;
> >    294          struct dev_pagemap *pgmap = &page_map->pgmap;
> >    295          unsigned long pfn;
> >    296
> >    297          for_each_device_pfn(pfn, page_map)
> >    298                  put_page(pfn_to_page(pfn));
> >    299
> >    300          if (percpu_ref_tryget_live(pgmap->ref)) {
> >    301                  dev_WARN(dev, "%s: page mapping is still
> live!\n", __func__);
> >    302                  percpu_ref_put(pgmap->ref);
> >    303          }
> >    304
> >    305          /* pages are dead and unused, undo the arch mapping */
> >    306          align_start = res->start & ~(SECTION_SIZE - 1);
> >    307          align_size = ALIGN(res->start + resource_size(res),
> SECTION_SIZE)
> >    308                  - align_start;
> >    309
> >    310          mem_hotplug_begin();
> >    311          arch_remove_memory(align_start, align_size);
> >  > 312          kasan_remove_zero_shadow(__va(align_start), align_size);
> >    313          mem_hotplug_done();
> >    314
> >    315          untrack_pfn(NULL, PHYS_PFN(align_start), align_size);
> >    316          pgmap_radix_release(res, -1);
> >    317          dev_WARN_ONCE(dev, pgmap->altmap && pgmap->altmap->alloc,
> >    318                          "%s: failed to free all reserved
> pages\n", __func__);
> >    319  }
> >    320
> >    321  /* assumes rcu_read_lock() held at entry */
> >    322  struct dev_pagemap *find_dev_pagemap(resource_size_t phys)
> >    323  {
> >    324          struct page_map *page_map;
> >    325
> >    326          WARN_ON_ONCE(!rcu_read_lock_held());
> >    327
> >    328          page_map = radix_tree_lookup(&pgmap_radix,
> PHYS_PFN(phys));
> >    329          return page_map ? &page_map->pgmap : NULL;
> >    330  }
> >    331
> >    332  /**
> >    333   * devm_memremap_pages - remap and provide memmap backing for
> the given resource
> >    334   * @dev: hosting device for @res
> >    335   * @res: "host memory" address range
> >    336   * @ref: a live per-cpu reference count
> >    337   * @altmap: optional descriptor for allocating the memmap from
> @res
> >    338   *
> >    339   * Notes:
> >    340   * 1/ @ref must be 'live' on entry and 'dead' before
> devm_memunmap_pages() time
> >    341   *    (or devm release event). The expected order of events is
> that @ref has
> >    342   *    been through percpu_ref_kill() before
> devm_memremap_pages_release(). The
> >    343   *    wait for the completion of all references being dropped and
> >    344   *    percpu_ref_exit() must occur after
> devm_memremap_pages_release().
> >    345   *
> >    346   * 2/ @res is expected to be a host memory range that could
> feasibly be
> >    347   *    treated as a "System RAM" range, i.e. not a device mmio
> range, but
> >    348   *    this is not enforced.
> >    349   */
> >    350  void *devm_memremap_pages(struct device *dev, struct resource
> *res,
> >    351                  struct percpu_ref *ref, struct vmem_altmap
> *altmap)
> >    352  {
> >    353          resource_size_t align_start, align_size, align_end;
> >    354          unsigned long pfn, pgoff, order;
> >    355          pgprot_t pgprot = PAGE_KERNEL;
> >    356          struct dev_pagemap *pgmap;
> >    357          struct page_map *page_map;
> >    358          int error, nid, is_ram, i = 0;
> >    359          struct dev_pagemap *conflict_pgmap;
> >    360
> >    361          align_start = res->start & ~(SECTION_SIZE - 1);
> >    362          align_size = ALIGN(res->start + resource_size(res),
> SECTION_SIZE)
> >    363                  - align_start;
> >    364          align_end = align_start + align_size - 1;
> >    365
> >    366          conflict_pgmap = get_dev_pagemap(PHYS_PFN(align_start),
> NULL);
> >    367          if (conflict_pgmap) {
> >    368                  dev_WARN(dev, "Conflicting mapping in same
> section\n");
> >    369                  put_dev_pagemap(conflict_pgmap);
> >    370                  return ERR_PTR(-ENOMEM);
> >    371          }
> >    372
> >    373          conflict_pgmap = get_dev_pagemap(PHYS_PFN(align_end),
> NULL);
> >    374          if (conflict_pgmap) {
> >    375                  dev_WARN(dev, "Conflicting mapping in same
> section\n");
> >    376                  put_dev_pagemap(conflict_pgmap);
> >    377                  return ERR_PTR(-ENOMEM);
> >    378          }
> >    379
> >    380          is_ram = region_intersects(align_start, align_size,
> >    381                  IORESOURCE_SYSTEM_RAM, IORES_DESC_NONE);
> >    382
> >    383          if (is_ram != REGION_DISJOINT) {
> >    384                  WARN_ONCE(1, "%s attempted on %s region %pr\n",
> __func__,
> >    385                                  is_ram == REGION_MIXED ? "mixed"
> : "ram", res);
> >    386                  return ERR_PTR(-ENXIO);
> >    387          }
> >    388
> >    389          if (!ref)
> >    390                  return ERR_PTR(-EINVAL);
> >    391
> >    392          page_map = devres_alloc_node(devm_memremap_pages_release,
> >    393                          sizeof(*page_map), GFP_KERNEL,
> dev_to_node(dev));
> >    394          if (!page_map)
> >    395                  return ERR_PTR(-ENOMEM);
> >    396          pgmap = &page_map->pgmap;
> >    397
> >    398          memcpy(&page_map->res, res, sizeof(*res));
> >    399
> >    400          pgmap->dev = dev;
> >    401          if (altmap) {
> >    402                  memcpy(&page_map->altmap, altmap,
> sizeof(*altmap));
> >    403                  pgmap->altmap = &page_map->altmap;
> >    404          }
> >    405          pgmap->ref = ref;
> >    406          pgmap->res = &page_map->res;
> >    407          pgmap->type = MEMORY_DEVICE_HOST;
> >    408          pgmap->page_fault = NULL;
> >    409          pgmap->page_free = NULL;
> >    410          pgmap->data = NULL;
> >    411
> >    412          mutex_lock(&pgmap_lock);
> >    413          error = 0;
> >    414
> >    415          foreach_order_pgoff(res, order, pgoff) {
> >    416                  struct dev_pagemap *dup;
> >    417
> >    418                  rcu_read_lock();
> >    419                  dup = find_dev_pagemap(res->start +
> PFN_PHYS(pgoff));
> >    420                  rcu_read_unlock();
> >    421                  if (dup) {
> >    422                          dev_err(dev, "%s: %pr collides with
> mapping for %s\n",
> >    423                                          __func__, res,
> dev_name(dup->dev));
> >    424                          error = -EBUSY;
> >    425                          break;
> >    426                  }
> >    427                  error = __radix_tree_insert(&pgmap_radix,
> >    428                                  PHYS_PFN(res->start) + pgoff,
> order, page_map);
> >    429                  if (error) {
> >    430                          dev_err(dev, "%s: failed: %d\n",
> __func__, error);
> >    431                          break;
> >    432                  }
> >    433          }
> >    434          mutex_unlock(&pgmap_lock);
> >    435          if (error)
> >    436                  goto err_radix;
> >    437
> >    438          nid = dev_to_node(dev);
> >    439          if (nid < 0)
> >    440                  nid = numa_mem_id();
> >    441
> >    442          error = track_pfn_remap(NULL, &pgprot,
> PHYS_PFN(align_start), 0,
> >    443                          align_size);
> >    444          if (error)
> >    445                  goto err_pfn_remap;
> >    446
> >    447          mem_hotplug_begin();
> >  > 448          error = kasan_add_zero_shadow(__va(align_start),
> align_size);
> >    449          if (error) {
> >    450                  mem_hotplug_done();
> >    451                  goto err_kasan;
> >    452          }
> >    453          error = arch_add_memory(nid, align_start, align_size,
> false);
> >    454          if (!error)
> >    455
> move_pfn_range_to_zone(&NODE_DATA(nid)->node_zones[ZONE_DEVICE],
> >    456                                          align_start >>
> PAGE_SHIFT,
> >    457                                          align_size >>
> PAGE_SHIFT);
> >    458          mem_hotplug_done();
> >    459          if (error)
> >    460                  goto err_add_memory;
> >    461
> >    462          for_each_device_pfn(pfn, page_map) {
> >    463                  struct page *page = pfn_to_page(pfn);
> >    464
> >    465                  /*
> >    466                   * ZONE_DEVICE pages union ->lru with a ->pgmap
> back
> >    467                   * pointer.  It is a bug if a ZONE_DEVICE page
> is ever
> >    468                   * freed or placed on a driver-private list.
> Seed the
> >    469                   * storage with LIST_POISON* values.
> >    470                   */
> >    471                  list_del(&page->lru);
> >    472                  page->pgmap = pgmap;
> >    473                  percpu_ref_get(ref);
> >    474                  if (!(++i % 1024))
> >    475                          cond_resched();
> >    476          }
> >    477          devres_add(dev, page_map);
> >    478          return __va(res->start);
> >    479
> >    480   err_add_memory:
> >    481          kasan_remove_zero_shadow(__va(align_start), align_size);
> >    482   err_kasan:
> >    483          untrack_pfn(NULL, PHYS_PFN(align_start), align_size);
> >    484   err_pfn_remap:
> >    485   err_radix:
> >    486          pgmap_radix_release(res, pgoff);
> >    487          devres_free(page_map);
> >    488          return ERR_PTR(error);
> >    489  }
> >    490  EXPORT_SYMBOL_GPL(devm_memremap_pages);
> >    491
> >
> > ---
> > 0-DAY kernel test infrastructure                Open Source Technology
> Center
> > https://lists.01.org/pipermail/kbuild-all                   Intel
> Corporation
>
>
>
> --
> Thanks,
> ~Nick Desaulniers
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAL%3DUVf7GjkROhqHymay_QCE_8oR9JpB_OtG6_PF6ePqgNXeArw%40mail.gmail.com.

--0000000000007233890590064ee0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif;font-size:small">It wasn&#39;t me officer, I was just carrying th=
is for someone else.</div><div class=3D"gmail_default" style=3D"font-family=
:tahoma,sans-serif;font-size:small"><br></div><div class=3D"gmail_default" =
style=3D"font-family:tahoma,sans-serif;font-size:small">See=C2=A0<a href=3D=
"https://android-review.googlesource.com/c/kernel/common/+/989989" style=3D=
"font-family:Arial,Helvetica,sans-serif">https://android-review.googlesourc=
e.com/c/kernel/common/+/989989</a></div><div class=3D"gmail_default" style=
=3D"font-family:tahoma,sans-serif;font-size:small"><br></div><div class=3D"=
gmail_default" style=3D"font-family:tahoma,sans-serif;font-size:small">Note=
 the real culprit is=C2=A0Andrey Konovalov, now cc&#39;d on this thread.</d=
iv><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font=
-size:small"><br></div><div class=3D"gmail_default" style=3D"font-family:ta=
homa,sans-serif;font-size:small">Paul</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 13, 2019 at 2:21 PM =
Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@google.com">ndesaulnier=
s@google.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">Here he is officer, guilty as charged. ;)<br>
<br>
On Tue, Aug 13, 2019 at 2:14 PM kbuild test robot &lt;<a href=3D"mailto:lkp=
@intel.com" target=3D"_blank">lkp@intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; CC: <a href=3D"mailto:kbuild-all@01.org" target=3D"_blank">kbuild-all@=
01.org</a><br>
&gt; BCC: <a href=3D"mailto:philip.li@intel.com" target=3D"_blank">philip.l=
i@intel.com</a><br>
&gt; TO: Paul Lawrence &lt;<a href=3D"mailto:paullawrence@google.com" targe=
t=3D"_blank">paullawrence@google.com</a>&gt;<br>
&gt;<br>
&gt; tree:=C2=A0 =C2=A0<a href=3D"https://android.googlesource.com/kernel/g=
oldfish" rel=3D"noreferrer" target=3D"_blank">https://android.googlesource.=
com/kernel/goldfish</a> b120914098<br>
&gt; head:=C2=A0 =C2=A088590f0a97d55a7156cdb09e9d5ecb8d829826e0<br>
&gt; commit: 69c0f72d6ca84158e4cd691fe31db5d0170d38b9 [38/99] BACKPORT: ker=
nel/memremap, kasan: make ZONE_DEVICE with work with KASAN<br>
&gt; config: x86_64-rhel-7.6 (attached as .config)<br>
&gt; compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206=
fb06f77a08968c99a8172cbf2ccdd0f)<br>
&gt; reproduce:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0git checkout 69c0f72d6ca84158e4cd691f=
e31db5d0170d38b9<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# save the attached .config to linux =
build tree<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0make ARCH=3Dx86_64<br>
&gt;<br>
&gt; If you fix the issue, kindly add following tag<br>
&gt; Reported-by: kbuild test robot &lt;<a href=3D"mailto:lkp@intel.com" ta=
rget=3D"_blank">lkp@intel.com</a>&gt;<br>
&gt;<br>
&gt; All errors (new ones prefixed by &gt;&gt;):<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 In file included from kernel/memremap.c:21:<br>
&gt;=C2=A0 =C2=A0 include/linux/swapops.h:327:22: warning: section attribut=
e is specified on redeclared variable [-Wsection]<br>
&gt;=C2=A0 =C2=A0 extern atomic_long_t num_poisoned_pages __read_mostly;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0^<br>
&gt;=C2=A0 =C2=A0 include/linux/mm.h:2551:22: note: previous declaration is=
 here<br>
&gt;=C2=A0 =C2=A0 extern atomic_long_t num_poisoned_pages;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0^<br>
&gt; &gt;&gt; kernel/memremap.c:312:2: error: implicit declaration of funct=
ion &#39;kasan_remove_zero_shadow&#39; [-Werror,-Wimplicit-function-declara=
tion]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kasan_remove_zero_shadow(__va=
(align_start), align_size);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>
&gt; &gt;&gt; kernel/memremap.c:448:10: error: implicit declaration of func=
tion &#39;kasan_add_zero_shadow&#39; [-Werror,-Wimplicit-function-declarati=
on]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 error =3D kasan_add_zero_shad=
ow(__va(align_start), align_size);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^=
<br>
&gt;=C2=A0 =C2=A0 kernel/memremap.c:481:2: error: implicit declaration of f=
unction &#39;kasan_remove_zero_shadow&#39; [-Werror,-Wimplicit-function-dec=
laration]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kasan_remove_zero_shadow(__va=
(align_start), align_size);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>
&gt;=C2=A0 =C2=A0 1 warning and 3 errors generated.<br>
&gt;<br>
&gt; vim +/kasan_remove_zero_shadow +312 kernel/memremap.c<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 285<br>
&gt;=C2=A0 =C2=A0 286=C2=A0 #define for_each_device_pfn(pfn, map) \<br>
&gt;=C2=A0 =C2=A0 287=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for (pfn =3D pfn_fi=
rst(map); pfn &lt; pfn_end(map); pfn++)<br>
&gt;=C2=A0 =C2=A0 288<br>
&gt;=C2=A0 =C2=A0 289=C2=A0 static void devm_memremap_pages_release(struct =
device *dev, void *data)<br>
&gt;=C2=A0 =C2=A0 290=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 291=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct page_map *pa=
ge_map =3D data;<br>
&gt;=C2=A0 =C2=A0 292=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct resource *re=
s =3D &amp;page_map-&gt;res;<br>
&gt;=C2=A0 =C2=A0 293=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 resource_size_t ali=
gn_start, align_size;<br>
&gt;=C2=A0 =C2=A0 294=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct dev_pagemap =
*pgmap =3D &amp;page_map-&gt;pgmap;<br>
&gt;=C2=A0 =C2=A0 295=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long pfn;<=
br>
&gt;=C2=A0 =C2=A0 296<br>
&gt;=C2=A0 =C2=A0 297=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for_each_device_pfn=
(pfn, page_map)<br>
&gt;=C2=A0 =C2=A0 298=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 put_page(pfn_to_page(pfn));<br>
&gt;=C2=A0 =C2=A0 299<br>
&gt;=C2=A0 =C2=A0 300=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (percpu_ref_tryg=
et_live(pgmap-&gt;ref)) {<br>
&gt;=C2=A0 =C2=A0 301=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 dev_WARN(dev, &quot;%s: page mapping is still live!\n&quot;, __f=
unc__);<br>
&gt;=C2=A0 =C2=A0 302=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 percpu_ref_put(pgmap-&gt;ref);<br>
&gt;=C2=A0 =C2=A0 303=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 304<br>
&gt;=C2=A0 =C2=A0 305=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* pages are dead a=
nd unused, undo the arch mapping */<br>
&gt;=C2=A0 =C2=A0 306=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 align_start =3D res=
-&gt;start &amp; ~(SECTION_SIZE - 1);<br>
&gt;=C2=A0 =C2=A0 307=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 align_size =3D ALIG=
N(res-&gt;start + resource_size(res), SECTION_SIZE)<br>
&gt;=C2=A0 =C2=A0 308=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 - align_start;<br>
&gt;=C2=A0 =C2=A0 309<br>
&gt;=C2=A0 =C2=A0 310=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mem_hotplug_begin()=
;<br>
&gt;=C2=A0 =C2=A0 311=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 arch_remove_memory(=
align_start, align_size);<br>
&gt;=C2=A0 &gt; 312=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kasan_remove_zero_sha=
dow(__va(align_start), align_size);<br>
&gt;=C2=A0 =C2=A0 313=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mem_hotplug_done();=
<br>
&gt;=C2=A0 =C2=A0 314<br>
&gt;=C2=A0 =C2=A0 315=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 untrack_pfn(NULL, P=
HYS_PFN(align_start), align_size);<br>
&gt;=C2=A0 =C2=A0 316=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pgmap_radix_release=
(res, -1);<br>
&gt;=C2=A0 =C2=A0 317=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_WARN_ONCE(dev, =
pgmap-&gt;altmap &amp;&amp; pgmap-&gt;altmap-&gt;alloc,<br>
&gt;=C2=A0 =C2=A0 318=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;%s: failed to free all reserve=
d pages\n&quot;, __func__);<br>
&gt;=C2=A0 =C2=A0 319=C2=A0 }<br>
&gt;=C2=A0 =C2=A0 320<br>
&gt;=C2=A0 =C2=A0 321=C2=A0 /* assumes rcu_read_lock() held at entry */<br>
&gt;=C2=A0 =C2=A0 322=C2=A0 struct dev_pagemap *find_dev_pagemap(resource_s=
ize_t phys)<br>
&gt;=C2=A0 =C2=A0 323=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 324=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct page_map *pa=
ge_map;<br>
&gt;=C2=A0 =C2=A0 325<br>
&gt;=C2=A0 =C2=A0 326=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 WARN_ON_ONCE(!rcu_r=
ead_lock_held());<br>
&gt;=C2=A0 =C2=A0 327<br>
&gt;=C2=A0 =C2=A0 328=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 page_map =3D radix_=
tree_lookup(&amp;pgmap_radix, PHYS_PFN(phys));<br>
&gt;=C2=A0 =C2=A0 329=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return page_map ? &=
amp;page_map-&gt;pgmap : NULL;<br>
&gt;=C2=A0 =C2=A0 330=C2=A0 }<br>
&gt;=C2=A0 =C2=A0 331<br>
&gt;=C2=A0 =C2=A0 332=C2=A0 /**<br>
&gt;=C2=A0 =C2=A0 333=C2=A0 =C2=A0* devm_memremap_pages - remap and provide=
 memmap backing for the given resource<br>
&gt;=C2=A0 =C2=A0 334=C2=A0 =C2=A0* @dev: hosting device for @res<br>
&gt;=C2=A0 =C2=A0 335=C2=A0 =C2=A0* @res: &quot;host memory&quot; address r=
ange<br>
&gt;=C2=A0 =C2=A0 336=C2=A0 =C2=A0* @ref: a live per-cpu reference count<br=
>
&gt;=C2=A0 =C2=A0 337=C2=A0 =C2=A0* @altmap: optional descriptor for alloca=
ting the memmap from @res<br>
&gt;=C2=A0 =C2=A0 338=C2=A0 =C2=A0*<br>
&gt;=C2=A0 =C2=A0 339=C2=A0 =C2=A0* Notes:<br>
&gt;=C2=A0 =C2=A0 340=C2=A0 =C2=A0* 1/ @ref must be &#39;live&#39; on entry=
 and &#39;dead&#39; before devm_memunmap_pages() time<br>
&gt;=C2=A0 =C2=A0 341=C2=A0 =C2=A0*=C2=A0 =C2=A0 (or devm release event). T=
he expected order of events is that @ref has<br>
&gt;=C2=A0 =C2=A0 342=C2=A0 =C2=A0*=C2=A0 =C2=A0 been through percpu_ref_ki=
ll() before devm_memremap_pages_release(). The<br>
&gt;=C2=A0 =C2=A0 343=C2=A0 =C2=A0*=C2=A0 =C2=A0 wait for the completion of=
 all references being dropped and<br>
&gt;=C2=A0 =C2=A0 344=C2=A0 =C2=A0*=C2=A0 =C2=A0 percpu_ref_exit() must occ=
ur after devm_memremap_pages_release().<br>
&gt;=C2=A0 =C2=A0 345=C2=A0 =C2=A0*<br>
&gt;=C2=A0 =C2=A0 346=C2=A0 =C2=A0* 2/ @res is expected to be a host memory=
 range that could feasibly be<br>
&gt;=C2=A0 =C2=A0 347=C2=A0 =C2=A0*=C2=A0 =C2=A0 treated as a &quot;System =
RAM&quot; range, i.e. not a device mmio range, but<br>
&gt;=C2=A0 =C2=A0 348=C2=A0 =C2=A0*=C2=A0 =C2=A0 this is not enforced.<br>
&gt;=C2=A0 =C2=A0 349=C2=A0 =C2=A0*/<br>
&gt;=C2=A0 =C2=A0 350=C2=A0 void *devm_memremap_pages(struct device *dev, s=
truct resource *res,<br>
&gt;=C2=A0 =C2=A0 351=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 struct percpu_ref *ref, struct vmem_altmap *altmap)<br>
&gt;=C2=A0 =C2=A0 352=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 353=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 resource_size_t ali=
gn_start, align_size, align_end;<br>
&gt;=C2=A0 =C2=A0 354=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long pfn, =
pgoff, order;<br>
&gt;=C2=A0 =C2=A0 355=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pgprot_t pgprot =3D=
 PAGE_KERNEL;<br>
&gt;=C2=A0 =C2=A0 356=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct dev_pagemap =
*pgmap;<br>
&gt;=C2=A0 =C2=A0 357=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct page_map *pa=
ge_map;<br>
&gt;=C2=A0 =C2=A0 358=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 int error, nid, is_=
ram, i =3D 0;<br>
&gt;=C2=A0 =C2=A0 359=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct dev_pagemap =
*conflict_pgmap;<br>
&gt;=C2=A0 =C2=A0 360<br>
&gt;=C2=A0 =C2=A0 361=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 align_start =3D res=
-&gt;start &amp; ~(SECTION_SIZE - 1);<br>
&gt;=C2=A0 =C2=A0 362=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 align_size =3D ALIG=
N(res-&gt;start + resource_size(res), SECTION_SIZE)<br>
&gt;=C2=A0 =C2=A0 363=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 - align_start;<br>
&gt;=C2=A0 =C2=A0 364=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 align_end =3D align=
_start + align_size - 1;<br>
&gt;=C2=A0 =C2=A0 365<br>
&gt;=C2=A0 =C2=A0 366=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 conflict_pgmap =3D =
get_dev_pagemap(PHYS_PFN(align_start), NULL);<br>
&gt;=C2=A0 =C2=A0 367=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (conflict_pgmap)=
 {<br>
&gt;=C2=A0 =C2=A0 368=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 dev_WARN(dev, &quot;Conflicting mapping in same section\n&quot;)=
;<br>
&gt;=C2=A0 =C2=A0 369=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 put_dev_pagemap(conflict_pgmap);<br>
&gt;=C2=A0 =C2=A0 370=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 return ERR_PTR(-ENOMEM);<br>
&gt;=C2=A0 =C2=A0 371=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 372<br>
&gt;=C2=A0 =C2=A0 373=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 conflict_pgmap =3D =
get_dev_pagemap(PHYS_PFN(align_end), NULL);<br>
&gt;=C2=A0 =C2=A0 374=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (conflict_pgmap)=
 {<br>
&gt;=C2=A0 =C2=A0 375=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 dev_WARN(dev, &quot;Conflicting mapping in same section\n&quot;)=
;<br>
&gt;=C2=A0 =C2=A0 376=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 put_dev_pagemap(conflict_pgmap);<br>
&gt;=C2=A0 =C2=A0 377=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 return ERR_PTR(-ENOMEM);<br>
&gt;=C2=A0 =C2=A0 378=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 379<br>
&gt;=C2=A0 =C2=A0 380=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 is_ram =3D region_i=
ntersects(align_start, align_size,<br>
&gt;=C2=A0 =C2=A0 381=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 IORESOURCE_SYSTEM_RAM, IORES_DESC_NONE);<br>
&gt;=C2=A0 =C2=A0 382<br>
&gt;=C2=A0 =C2=A0 383=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (is_ram !=3D REG=
ION_DISJOINT) {<br>
&gt;=C2=A0 =C2=A0 384=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 WARN_ONCE(1, &quot;%s attempted on %s region %pr\n&quot;, __func=
__,<br>
&gt;=C2=A0 =C2=A0 385=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 is_ram =
=3D=3D REGION_MIXED ? &quot;mixed&quot; : &quot;ram&quot;, res);<br>
&gt;=C2=A0 =C2=A0 386=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 return ERR_PTR(-ENXIO);<br>
&gt;=C2=A0 =C2=A0 387=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 388<br>
&gt;=C2=A0 =C2=A0 389=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!ref)<br>
&gt;=C2=A0 =C2=A0 390=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 return ERR_PTR(-EINVAL);<br>
&gt;=C2=A0 =C2=A0 391<br>
&gt;=C2=A0 =C2=A0 392=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 page_map =3D devres=
_alloc_node(devm_memremap_pages_release,<br>
&gt;=C2=A0 =C2=A0 393=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sizeof(*page_map), GFP_KERNEL, dev_t=
o_node(dev));<br>
&gt;=C2=A0 =C2=A0 394=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!page_map)<br>
&gt;=C2=A0 =C2=A0 395=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 return ERR_PTR(-ENOMEM);<br>
&gt;=C2=A0 =C2=A0 396=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pgmap =3D &amp;page=
_map-&gt;pgmap;<br>
&gt;=C2=A0 =C2=A0 397<br>
&gt;=C2=A0 =C2=A0 398=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 memcpy(&amp;page_ma=
p-&gt;res, res, sizeof(*res));<br>
&gt;=C2=A0 =C2=A0 399<br>
&gt;=C2=A0 =C2=A0 400=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pgmap-&gt;dev =3D d=
ev;<br>
&gt;=C2=A0 =C2=A0 401=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (altmap) {<br>
&gt;=C2=A0 =C2=A0 402=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 memcpy(&amp;page_map-&gt;altmap, altmap, sizeof(*altmap));<br>
&gt;=C2=A0 =C2=A0 403=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 pgmap-&gt;altmap =3D &amp;page_map-&gt;altmap;<br>
&gt;=C2=A0 =C2=A0 404=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 405=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pgmap-&gt;ref =3D r=
ef;<br>
&gt;=C2=A0 =C2=A0 406=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pgmap-&gt;res =3D &=
amp;page_map-&gt;res;<br>
&gt;=C2=A0 =C2=A0 407=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pgmap-&gt;type =3D =
MEMORY_DEVICE_HOST;<br>
&gt;=C2=A0 =C2=A0 408=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pgmap-&gt;page_faul=
t =3D NULL;<br>
&gt;=C2=A0 =C2=A0 409=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pgmap-&gt;page_free=
 =3D NULL;<br>
&gt;=C2=A0 =C2=A0 410=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pgmap-&gt;data =3D =
NULL;<br>
&gt;=C2=A0 =C2=A0 411<br>
&gt;=C2=A0 =C2=A0 412=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mutex_lock(&amp;pgm=
ap_lock);<br>
&gt;=C2=A0 =C2=A0 413=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 error =3D 0;<br>
&gt;=C2=A0 =C2=A0 414<br>
&gt;=C2=A0 =C2=A0 415=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 foreach_order_pgoff=
(res, order, pgoff) {<br>
&gt;=C2=A0 =C2=A0 416=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 struct dev_pagemap *dup;<br>
&gt;=C2=A0 =C2=A0 417<br>
&gt;=C2=A0 =C2=A0 418=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 rcu_read_lock();<br>
&gt;=C2=A0 =C2=A0 419=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 dup =3D find_dev_pagemap(res-&gt;start + PFN_PHYS(pgoff));<br>
&gt;=C2=A0 =C2=A0 420=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 rcu_read_unlock();<br>
&gt;=C2=A0 =C2=A0 421=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (dup) {<br>
&gt;=C2=A0 =C2=A0 422=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_err(dev, &quot;%s: %pr collides =
with mapping for %s\n&quot;,<br>
&gt;=C2=A0 =C2=A0 423=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 __func__, res, dev_name(dup-&gt;dev));<br>
&gt;=C2=A0 =C2=A0 424=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 error =3D -EBUSY;<br>
&gt;=C2=A0 =C2=A0 425=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
&gt;=C2=A0 =C2=A0 426=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 427=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 error =3D __radix_tree_insert(&amp;pgmap_radix,<br>
&gt;=C2=A0 =C2=A0 428=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PHYS_PFN=
(res-&gt;start) + pgoff, order, page_map);<br>
&gt;=C2=A0 =C2=A0 429=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (error) {<br>
&gt;=C2=A0 =C2=A0 430=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dev_err(dev, &quot;%s: failed: %d\n&=
quot;, __func__, error);<br>
&gt;=C2=A0 =C2=A0 431=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
&gt;=C2=A0 =C2=A0 432=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 433=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 434=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mutex_unlock(&amp;p=
gmap_lock);<br>
&gt;=C2=A0 =C2=A0 435=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (error)<br>
&gt;=C2=A0 =C2=A0 436=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 goto err_radix;<br>
&gt;=C2=A0 =C2=A0 437<br>
&gt;=C2=A0 =C2=A0 438=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 nid =3D dev_to_node=
(dev);<br>
&gt;=C2=A0 =C2=A0 439=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (nid &lt; 0)<br>
&gt;=C2=A0 =C2=A0 440=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 nid =3D numa_mem_id();<br>
&gt;=C2=A0 =C2=A0 441<br>
&gt;=C2=A0 =C2=A0 442=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 error =3D track_pfn=
_remap(NULL, &amp;pgprot, PHYS_PFN(align_start), 0,<br>
&gt;=C2=A0 =C2=A0 443=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 align_size);<br>
&gt;=C2=A0 =C2=A0 444=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (error)<br>
&gt;=C2=A0 =C2=A0 445=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 goto err_pfn_remap;<br>
&gt;=C2=A0 =C2=A0 446<br>
&gt;=C2=A0 =C2=A0 447=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mem_hotplug_begin()=
;<br>
&gt;=C2=A0 &gt; 448=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 error =3D kasan_add_z=
ero_shadow(__va(align_start), align_size);<br>
&gt;=C2=A0 =C2=A0 449=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (error) {<br>
&gt;=C2=A0 =C2=A0 450=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 mem_hotplug_done();<br>
&gt;=C2=A0 =C2=A0 451=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 goto err_kasan;<br>
&gt;=C2=A0 =C2=A0 452=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 453=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 error =3D arch_add_=
memory(nid, align_start, align_size, false);<br>
&gt;=C2=A0 =C2=A0 454=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!error)<br>
&gt;=C2=A0 =C2=A0 455=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 move_pfn_range_to_zone(&amp;NODE_DATA(nid)-&gt;node_zones[ZONE_D=
EVICE],<br>
&gt;=C2=A0 =C2=A0 456=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 align_start &gt;&gt; PAGE_SHIFT,<br>
&gt;=C2=A0 =C2=A0 457=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 align_size &gt;&gt; PAGE_SHIFT);<br>
&gt;=C2=A0 =C2=A0 458=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mem_hotplug_done();=
<br>
&gt;=C2=A0 =C2=A0 459=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (error)<br>
&gt;=C2=A0 =C2=A0 460=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 goto err_add_memory;<br>
&gt;=C2=A0 =C2=A0 461<br>
&gt;=C2=A0 =C2=A0 462=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for_each_device_pfn=
(pfn, page_map) {<br>
&gt;=C2=A0 =C2=A0 463=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 struct page *page =3D pfn_to_page(pfn);<br>
&gt;=C2=A0 =C2=A0 464<br>
&gt;=C2=A0 =C2=A0 465=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 /*<br>
&gt;=C2=A0 =C2=A0 466=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0* ZONE_DEVICE pages union -&gt;lru with a -&gt;pgmap back<=
br>
&gt;=C2=A0 =C2=A0 467=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0* pointer.=C2=A0 It is a bug if a ZONE_DEVICE page is ever=
<br>
&gt;=C2=A0 =C2=A0 468=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0* freed or placed on a driver-private list.=C2=A0 Seed the=
<br>
&gt;=C2=A0 =C2=A0 469=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0* storage with LIST_POISON* values.<br>
&gt;=C2=A0 =C2=A0 470=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0*/<br>
&gt;=C2=A0 =C2=A0 471=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 list_del(&amp;page-&gt;lru);<br>
&gt;=C2=A0 =C2=A0 472=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 page-&gt;pgmap =3D pgmap;<br>
&gt;=C2=A0 =C2=A0 473=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 percpu_ref_get(ref);<br>
&gt;=C2=A0 =C2=A0 474=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (!(++i % 1024))<br>
&gt;=C2=A0 =C2=A0 475=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cond_resched();<br>
&gt;=C2=A0 =C2=A0 476=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 477=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 devres_add(dev, pag=
e_map);<br>
&gt;=C2=A0 =C2=A0 478=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return __va(res-&gt=
;start);<br>
&gt;=C2=A0 =C2=A0 479<br>
&gt;=C2=A0 =C2=A0 480=C2=A0 =C2=A0err_add_memory:<br>
&gt;=C2=A0 =C2=A0 481=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kasan_remove_zero_s=
hadow(__va(align_start), align_size);<br>
&gt;=C2=A0 =C2=A0 482=C2=A0 =C2=A0err_kasan:<br>
&gt;=C2=A0 =C2=A0 483=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 untrack_pfn(NULL, P=
HYS_PFN(align_start), align_size);<br>
&gt;=C2=A0 =C2=A0 484=C2=A0 =C2=A0err_pfn_remap:<br>
&gt;=C2=A0 =C2=A0 485=C2=A0 =C2=A0err_radix:<br>
&gt;=C2=A0 =C2=A0 486=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 pgmap_radix_release=
(res, pgoff);<br>
&gt;=C2=A0 =C2=A0 487=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 devres_free(page_ma=
p);<br>
&gt;=C2=A0 =C2=A0 488=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return ERR_PTR(erro=
r);<br>
&gt;=C2=A0 =C2=A0 489=C2=A0 }<br>
&gt;=C2=A0 =C2=A0 490=C2=A0 EXPORT_SYMBOL_GPL(devm_memremap_pages);<br>
&gt;=C2=A0 =C2=A0 491<br>
&gt;<br>
&gt; ---<br>
&gt; 0-DAY kernel test infrastructure=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 Open Source Technology Center<br>
&gt; <a href=3D"https://lists.01.org/pipermail/kbuild-all" rel=3D"noreferre=
r" target=3D"_blank">https://lists.01.org/pipermail/kbuild-all</a>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Intel Corpora=
tion<br>
<br>
<br>
<br>
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAL%3DUVf7GjkROhqHymay_QCE_8oR9JpB_OtG6_PF6ePq=
gNXeArw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAL%3DUVf7GjkROhqHymay_QCE_8oR9Jp=
B_OtG6_PF6ePqgNXeArw%40mail.gmail.com</a>.<br />

--0000000000007233890590064ee0--
