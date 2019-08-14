Return-Path: <clang-built-linux+bncBDX4HWEMTEBRBP5D2DVAKGQED6YAMSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C90C8D563
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 15:50:58 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id v63sf171196vkb.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 06:50:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565790656; cv=pass;
        d=google.com; s=arc-20160816;
        b=XF7zywxK7Nk99Ai7ouH4rThPukz6g54o9lZwyOOlWVt6nF48Tr482lirTB4O5VElNK
         ucWcLBdu5tLN+90u7ovLtun+24s7Co1U/fLP4e0lElPX19UvgE8bZHMv5fbGsdV++Fdv
         Wq6Ksbfb/UXYbUNR/chD3rf1ZFicjnmiW+0v2f/2OLnjv+2Gubwauj49Enx9Sgmma5zb
         Tto0EmnxdnZKN2iORTbHm9Qc73SSoZtNoYbzRxAuWRWsf+8FRETU6VXQ0n6TQ2j4z10n
         Zsshd4FwTH3g0tKzOJ97h+3WY8LsqlVJEcQm7oR1QuHnjyRy3u8hrhIn6mkYbky38mMO
         j15w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Rvf/wS8D1ky+/PvwROFvG5qZzewbwcpZyntdG3wP0ok=;
        b=TU4WopkrSzoxc9KDUFBeI1DmyT/ZhyIDB/j7No6MlEzwgLTsJ4eSjOI8u9SZIMH4Gn
         6MNq1GOAMAUucfCzz601vNycx4d5w1GamSccfX9UKwlyNvG4+Zih8RDeofbfQ9FVIRZM
         1oXCu+8HwEuXQ9m3rO7R7Z15u7gruwlzJnPcy++RJfcg2h562qldh61t2XuQUYKqTXU1
         MkyCx++Apqi3WnKEfvPM/oj64cJFvSi9kUb1gMR9kkZE2MARrjm2yrsyZ5kMYIRYgEma
         iOol53G3HaeSkoJCIlvy3gBed9OoPoHL9kJm0iJVUXda6iv/gn923ZJH1k3ZVuBuFf24
         njTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EJzVJHQT;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rvf/wS8D1ky+/PvwROFvG5qZzewbwcpZyntdG3wP0ok=;
        b=St8jyFRuSjeLw/7moif/+4Hcu55ljGvJotEMIyghWSQWP71C9/gRMQ6vyenSEe74uc
         TD0+4AQqz++z0kKbFxZCs6Oox4uisdnuP2h2ndzl4Bv2fbdYW+ddhbOacN5fqhg6D8cY
         NpZXSie9mc+QEpYkcL+wWC4mAgQ9YZTfsStXK+//2Fwpn+Vd6FynKbT9uCzd9fHF75ev
         ys/4UtWkB4rg/76w5F2eiHIezQEOVniMzwpQ1RR8QAddqHxOFaBR1Kf7nQNgBlDw/4wF
         f3I1nX1K6U81E9EWx9t9xXHLzGkXQZAQoUulT5uHXnekpCA1KkpOsX0IdfQ/KhGeQlpj
         sDGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rvf/wS8D1ky+/PvwROFvG5qZzewbwcpZyntdG3wP0ok=;
        b=SSX7iO5Ahm7P1omn80KbL2ijCxp83SRrPYHhS6XAR+ATkK/ZCtXV7asdGdLh2Sw//H
         nkn+Zvpza4KtTaiZpIGj9ftFqIiqww1BkAucDGCvWdzz/bq4SqGnU5pVZr1QewhP7m1M
         Tl/v1gpKxp5xO2UMvv1fpLV8NAHgB4rk0NwHtjhJNw5gm5Nr2x+rTnrbjN8R6ZGdirmS
         7O7o6ZrCrYRhQj2s+UY56Wq2ge7PbfKw/6hAVy1UKGvhBGKYTUBBr9nrKuYS7OYSngLe
         6Mq6ZGrd10asRUyPQTrIyy3qWLsKkx1pW8vUqVFakNGAwQZf+L77h3nQarrbYp6lub7/
         zePQ==
X-Gm-Message-State: APjAAAXW2Uf84v2AI8UOXa+nBXTPe2uh7U3U4LRe7wMVBe1wlf/31y/f
	8zV1iQxhXnmruRWGFtb4zwk=
X-Google-Smtp-Source: APXvYqwT46+cwXSFai5zy8K0WzH/zF2aKQnzDD1OS9GUmy8OvBD3JkrkUCWqiqqilash+3lG5lK5UQ==
X-Received: by 2002:ab0:c16:: with SMTP id a22mr1740198uak.73.1565790655949;
        Wed, 14 Aug 2019 06:50:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:c4c1:: with SMTP id u184ls62569vkf.14.gmail; Wed, 14 Aug
 2019 06:50:55 -0700 (PDT)
X-Received: by 2002:a1f:d846:: with SMTP id p67mr11784872vkg.73.1565790655109;
        Wed, 14 Aug 2019 06:50:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565790655; cv=none;
        d=google.com; s=arc-20160816;
        b=DeqbjBbWWVjFpXhexuZyrtdKbXpbintOwFQtL2MNJH/6CEznzaAnTyK72rD7VtYPZg
         pVhav1xKyttMF0Xf6Yq54WtIQjZloU4ZMREWG1lrPcbzZJqnnayNXDVfTbEam1gbwjXj
         bwSu7+UBUEmLQLiZ42m1BkULGXVcoVkR+cB1jRkASV+RjoKM8g6v5w9Ag4O/t246v12T
         M8g/1Nwrhoaj6QmWmqdmKd8TtWJaUCfY11VxtsbD+hWD5sfcXJcvTvXLpivedQDuPnDT
         s6RpjdFnvQLTzzBqO3T5rzpBAx0OXIKXF7lpXpmTECe4FD2rvxbSO3Z8Yh64oNhX7JGF
         ++bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EMmulc8SxwF3U16hQ2/STe0ftcasLODptw9jeJcigmU=;
        b=qeCT5ou7+C5KfsbDgPt9fa6PUmiyBqE8/9xki7FO9RGmLPCMoLzgqXVUjJvpWrJvRj
         lIPnwBqVfQkyO2WjHgvOZsGMAXdJD0lxzBgKXZ472XZFc05suNhyY/yM2hwgtRuFHSMQ
         GR3mref7nkwOrXec9FFArcA/QzlXb5Vr5YvcNaIOTvi2ShguDZx4UH/i9VDgsC4CDI6V
         YNeHPYhFh0sFWctWItB4SK2yn5DBPCjtU4RzriomOWbLscynDJ/fKVRcrnq9oX2eM+YY
         MEWRU1iwjrNQjFioHVY4dIN+s6ZdRcBbwa+g/ybUIUdxUp9CT6lra9s3OgkkXzEIlOau
         1OlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EJzVJHQT;
       spf=pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id u189si7491547vkb.2.2019.08.14.06.50.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Aug 2019 06:50:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id g2so53622102pfq.0
        for <clang-built-linux@googlegroups.com>; Wed, 14 Aug 2019 06:50:55 -0700 (PDT)
X-Received: by 2002:a63:3006:: with SMTP id w6mr39442587pgw.440.1565790653655;
 Wed, 14 Aug 2019 06:50:53 -0700 (PDT)
MIME-Version: 1.0
References: <201908140530.i8rXFzLC%lkp@intel.com> <CAKwvOdkCKhCHjteLwDZMon1zo+DAn=M2PGGsrpvs6e=jgXV4=g@mail.gmail.com>
 <CAL=UVf7GjkROhqHymay_QCE_8oR9JpB_OtG6_PF6ePqgNXeArw@mail.gmail.com>
In-Reply-To: <CAL=UVf7GjkROhqHymay_QCE_8oR9JpB_OtG6_PF6ePqgNXeArw@mail.gmail.com>
From: "'Andrey Konovalov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 14 Aug 2019 15:50:41 +0200
Message-ID: <CAAeHK+zz5+eKXEafomMHbVVc+a9q6wg-FT9Ufuy2xebn__zPLw@mail.gmail.com>
Subject: Re: [android-goldfish:b120914098 38/99] kernel/memremap.c:312:2:
 error: implicit declaration of function 'kasan_remove_zero_shadow'
To: Paul Lawrence <paullawrence@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, kbuild@01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreyknvl@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EJzVJHQT;       spf=pass
 (google.com: domain of andreyknvl@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=andreyknvl@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Andrey Konovalov <andreyknvl@google.com>
Reply-To: Andrey Konovalov <andreyknvl@google.com>
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

On Tue, Aug 13, 2019 at 11:27 PM Paul Lawrence <paullawrence@google.com> wrote:
>
> It wasn't me officer, I was just carrying this for someone else.
>
> See https://android-review.googlesource.com/c/kernel/common/+/989989
>
> Note the real culprit is Andrey Konovalov, now cc'd on this thread.
>
> Paul
>
> On Tue, Aug 13, 2019 at 2:21 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>>
>> Here he is officer, guilty as charged. ;)
>>
>> On Tue, Aug 13, 2019 at 2:14 PM kbuild test robot <lkp@intel.com> wrote:
>> >
>> > CC: kbuild-all@01.org
>> > BCC: philip.li@intel.com
>> > TO: Paul Lawrence <paullawrence@google.com>
>> >
>> > tree:   https://android.googlesource.com/kernel/goldfish b120914098
>> > head:   88590f0a97d55a7156cdb09e9d5ecb8d829826e0
>> > commit: 69c0f72d6ca84158e4cd691fe31db5d0170d38b9 [38/99] BACKPORT: kernel/memremap, kasan: make ZONE_DEVICE with work with KASAN
>> > config: x86_64-rhel-7.6 (attached as .config)

Could you forward this attachment as well?

>> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
>> > reproduce:
>> >         git checkout 69c0f72d6ca84158e4cd691fe31db5d0170d38b9
>> >         # save the attached .config to linux build tree
>> >         make ARCH=x86_64
>> >
>> > If you fix the issue, kindly add following tag
>> > Reported-by: kbuild test robot <lkp@intel.com>
>> >
>> > All errors (new ones prefixed by >>):
>> >
>> >    In file included from kernel/memremap.c:21:
>> >    include/linux/swapops.h:327:22: warning: section attribute is specified on redeclared variable [-Wsection]
>> >    extern atomic_long_t num_poisoned_pages __read_mostly;
>> >                         ^
>> >    include/linux/mm.h:2551:22: note: previous declaration is here
>> >    extern atomic_long_t num_poisoned_pages;
>> >                         ^
>> > >> kernel/memremap.c:312:2: error: implicit declaration of function 'kasan_remove_zero_shadow' [-Werror,-Wimplicit-function-declaration]
>> >            kasan_remove_zero_shadow(__va(align_start), align_size);
>> >            ^
>> > >> kernel/memremap.c:448:10: error: implicit declaration of function 'kasan_add_zero_shadow' [-Werror,-Wimplicit-function-declaration]
>> >            error = kasan_add_zero_shadow(__va(align_start), align_size);
>> >                    ^
>> >    kernel/memremap.c:481:2: error: implicit declaration of function 'kasan_remove_zero_shadow' [-Werror,-Wimplicit-function-declaration]
>> >            kasan_remove_zero_shadow(__va(align_start), align_size);
>> >            ^
>> >    1 warning and 3 errors generated.
>> >
>> > vim +/kasan_remove_zero_shadow +312 kernel/memremap.c
>> >
>> >    285
>> >    286  #define for_each_device_pfn(pfn, map) \
>> >    287          for (pfn = pfn_first(map); pfn < pfn_end(map); pfn++)
>> >    288
>> >    289  static void devm_memremap_pages_release(struct device *dev, void *data)
>> >    290  {
>> >    291          struct page_map *page_map = data;
>> >    292          struct resource *res = &page_map->res;
>> >    293          resource_size_t align_start, align_size;
>> >    294          struct dev_pagemap *pgmap = &page_map->pgmap;
>> >    295          unsigned long pfn;
>> >    296
>> >    297          for_each_device_pfn(pfn, page_map)
>> >    298                  put_page(pfn_to_page(pfn));
>> >    299
>> >    300          if (percpu_ref_tryget_live(pgmap->ref)) {
>> >    301                  dev_WARN(dev, "%s: page mapping is still live!\n", __func__);
>> >    302                  percpu_ref_put(pgmap->ref);
>> >    303          }
>> >    304
>> >    305          /* pages are dead and unused, undo the arch mapping */
>> >    306          align_start = res->start & ~(SECTION_SIZE - 1);
>> >    307          align_size = ALIGN(res->start + resource_size(res), SECTION_SIZE)
>> >    308                  - align_start;
>> >    309
>> >    310          mem_hotplug_begin();
>> >    311          arch_remove_memory(align_start, align_size);
>> >  > 312          kasan_remove_zero_shadow(__va(align_start), align_size);
>> >    313          mem_hotplug_done();
>> >    314
>> >    315          untrack_pfn(NULL, PHYS_PFN(align_start), align_size);
>> >    316          pgmap_radix_release(res, -1);
>> >    317          dev_WARN_ONCE(dev, pgmap->altmap && pgmap->altmap->alloc,
>> >    318                          "%s: failed to free all reserved pages\n", __func__);
>> >    319  }
>> >    320
>> >    321  /* assumes rcu_read_lock() held at entry */
>> >    322  struct dev_pagemap *find_dev_pagemap(resource_size_t phys)
>> >    323  {
>> >    324          struct page_map *page_map;
>> >    325
>> >    326          WARN_ON_ONCE(!rcu_read_lock_held());
>> >    327
>> >    328          page_map = radix_tree_lookup(&pgmap_radix, PHYS_PFN(phys));
>> >    329          return page_map ? &page_map->pgmap : NULL;
>> >    330  }
>> >    331
>> >    332  /**
>> >    333   * devm_memremap_pages - remap and provide memmap backing for the given resource
>> >    334   * @dev: hosting device for @res
>> >    335   * @res: "host memory" address range
>> >    336   * @ref: a live per-cpu reference count
>> >    337   * @altmap: optional descriptor for allocating the memmap from @res
>> >    338   *
>> >    339   * Notes:
>> >    340   * 1/ @ref must be 'live' on entry and 'dead' before devm_memunmap_pages() time
>> >    341   *    (or devm release event). The expected order of events is that @ref has
>> >    342   *    been through percpu_ref_kill() before devm_memremap_pages_release(). The
>> >    343   *    wait for the completion of all references being dropped and
>> >    344   *    percpu_ref_exit() must occur after devm_memremap_pages_release().
>> >    345   *
>> >    346   * 2/ @res is expected to be a host memory range that could feasibly be
>> >    347   *    treated as a "System RAM" range, i.e. not a device mmio range, but
>> >    348   *    this is not enforced.
>> >    349   */
>> >    350  void *devm_memremap_pages(struct device *dev, struct resource *res,
>> >    351                  struct percpu_ref *ref, struct vmem_altmap *altmap)
>> >    352  {
>> >    353          resource_size_t align_start, align_size, align_end;
>> >    354          unsigned long pfn, pgoff, order;
>> >    355          pgprot_t pgprot = PAGE_KERNEL;
>> >    356          struct dev_pagemap *pgmap;
>> >    357          struct page_map *page_map;
>> >    358          int error, nid, is_ram, i = 0;
>> >    359          struct dev_pagemap *conflict_pgmap;
>> >    360
>> >    361          align_start = res->start & ~(SECTION_SIZE - 1);
>> >    362          align_size = ALIGN(res->start + resource_size(res), SECTION_SIZE)
>> >    363                  - align_start;
>> >    364          align_end = align_start + align_size - 1;
>> >    365
>> >    366          conflict_pgmap = get_dev_pagemap(PHYS_PFN(align_start), NULL);
>> >    367          if (conflict_pgmap) {
>> >    368                  dev_WARN(dev, "Conflicting mapping in same section\n");
>> >    369                  put_dev_pagemap(conflict_pgmap);
>> >    370                  return ERR_PTR(-ENOMEM);
>> >    371          }
>> >    372
>> >    373          conflict_pgmap = get_dev_pagemap(PHYS_PFN(align_end), NULL);
>> >    374          if (conflict_pgmap) {
>> >    375                  dev_WARN(dev, "Conflicting mapping in same section\n");
>> >    376                  put_dev_pagemap(conflict_pgmap);
>> >    377                  return ERR_PTR(-ENOMEM);
>> >    378          }
>> >    379
>> >    380          is_ram = region_intersects(align_start, align_size,
>> >    381                  IORESOURCE_SYSTEM_RAM, IORES_DESC_NONE);
>> >    382
>> >    383          if (is_ram != REGION_DISJOINT) {
>> >    384                  WARN_ONCE(1, "%s attempted on %s region %pr\n", __func__,
>> >    385                                  is_ram == REGION_MIXED ? "mixed" : "ram", res);
>> >    386                  return ERR_PTR(-ENXIO);
>> >    387          }
>> >    388
>> >    389          if (!ref)
>> >    390                  return ERR_PTR(-EINVAL);
>> >    391
>> >    392          page_map = devres_alloc_node(devm_memremap_pages_release,
>> >    393                          sizeof(*page_map), GFP_KERNEL, dev_to_node(dev));
>> >    394          if (!page_map)
>> >    395                  return ERR_PTR(-ENOMEM);
>> >    396          pgmap = &page_map->pgmap;
>> >    397
>> >    398          memcpy(&page_map->res, res, sizeof(*res));
>> >    399
>> >    400          pgmap->dev = dev;
>> >    401          if (altmap) {
>> >    402                  memcpy(&page_map->altmap, altmap, sizeof(*altmap));
>> >    403                  pgmap->altmap = &page_map->altmap;
>> >    404          }
>> >    405          pgmap->ref = ref;
>> >    406          pgmap->res = &page_map->res;
>> >    407          pgmap->type = MEMORY_DEVICE_HOST;
>> >    408          pgmap->page_fault = NULL;
>> >    409          pgmap->page_free = NULL;
>> >    410          pgmap->data = NULL;
>> >    411
>> >    412          mutex_lock(&pgmap_lock);
>> >    413          error = 0;
>> >    414
>> >    415          foreach_order_pgoff(res, order, pgoff) {
>> >    416                  struct dev_pagemap *dup;
>> >    417
>> >    418                  rcu_read_lock();
>> >    419                  dup = find_dev_pagemap(res->start + PFN_PHYS(pgoff));
>> >    420                  rcu_read_unlock();
>> >    421                  if (dup) {
>> >    422                          dev_err(dev, "%s: %pr collides with mapping for %s\n",
>> >    423                                          __func__, res, dev_name(dup->dev));
>> >    424                          error = -EBUSY;
>> >    425                          break;
>> >    426                  }
>> >    427                  error = __radix_tree_insert(&pgmap_radix,
>> >    428                                  PHYS_PFN(res->start) + pgoff, order, page_map);
>> >    429                  if (error) {
>> >    430                          dev_err(dev, "%s: failed: %d\n", __func__, error);
>> >    431                          break;
>> >    432                  }
>> >    433          }
>> >    434          mutex_unlock(&pgmap_lock);
>> >    435          if (error)
>> >    436                  goto err_radix;
>> >    437
>> >    438          nid = dev_to_node(dev);
>> >    439          if (nid < 0)
>> >    440                  nid = numa_mem_id();
>> >    441
>> >    442          error = track_pfn_remap(NULL, &pgprot, PHYS_PFN(align_start), 0,
>> >    443                          align_size);
>> >    444          if (error)
>> >    445                  goto err_pfn_remap;
>> >    446
>> >    447          mem_hotplug_begin();
>> >  > 448          error = kasan_add_zero_shadow(__va(align_start), align_size);
>> >    449          if (error) {
>> >    450                  mem_hotplug_done();
>> >    451                  goto err_kasan;
>> >    452          }
>> >    453          error = arch_add_memory(nid, align_start, align_size, false);
>> >    454          if (!error)
>> >    455                  move_pfn_range_to_zone(&NODE_DATA(nid)->node_zones[ZONE_DEVICE],
>> >    456                                          align_start >> PAGE_SHIFT,
>> >    457                                          align_size >> PAGE_SHIFT);
>> >    458          mem_hotplug_done();
>> >    459          if (error)
>> >    460                  goto err_add_memory;
>> >    461
>> >    462          for_each_device_pfn(pfn, page_map) {
>> >    463                  struct page *page = pfn_to_page(pfn);
>> >    464
>> >    465                  /*
>> >    466                   * ZONE_DEVICE pages union ->lru with a ->pgmap back
>> >    467                   * pointer.  It is a bug if a ZONE_DEVICE page is ever
>> >    468                   * freed or placed on a driver-private list.  Seed the
>> >    469                   * storage with LIST_POISON* values.
>> >    470                   */
>> >    471                  list_del(&page->lru);
>> >    472                  page->pgmap = pgmap;
>> >    473                  percpu_ref_get(ref);
>> >    474                  if (!(++i % 1024))
>> >    475                          cond_resched();
>> >    476          }
>> >    477          devres_add(dev, page_map);
>> >    478          return __va(res->start);
>> >    479
>> >    480   err_add_memory:
>> >    481          kasan_remove_zero_shadow(__va(align_start), align_size);
>> >    482   err_kasan:
>> >    483          untrack_pfn(NULL, PHYS_PFN(align_start), align_size);
>> >    484   err_pfn_remap:
>> >    485   err_radix:
>> >    486          pgmap_radix_release(res, pgoff);
>> >    487          devres_free(page_map);
>> >    488          return ERR_PTR(error);
>> >    489  }
>> >    490  EXPORT_SYMBOL_GPL(devm_memremap_pages);
>> >    491
>> >
>> > ---
>> > 0-DAY kernel test infrastructure                Open Source Technology Center
>> > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
>>
>>
>>
>> --
>> Thanks,
>> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAAeHK%2Bzz5%2BeKXEafomMHbVVc%2Ba9q6wg-FT9Ufuy2xebn__zPLw%40mail.gmail.com.
