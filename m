Return-Path: <clang-built-linux+bncBDYJPJO25UGBB66YZTVAKGQETH2WBUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E44C8C3B9
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 23:32:45 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id a21sf60296862pgv.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 14:32:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565731963; cv=pass;
        d=google.com; s=arc-20160816;
        b=esSeqkTZSNSS0m75pU+aVS0lR3Lc7tyqYWdjj11CwTLiGNPsAIfGMBL6Bkst1ETw5+
         TwSRQiealGGA1LSsu/WLHpjcmeHOB6MLbEHaJltTzQKgLEIABhTmFu6bGiKzPTfWMOZs
         k4LMXTZEErWiS162SXt8vUGW88U8MbRTxwoNb87Pw5CqWRvuyir5VjNdLSu3S5tFAWQu
         CqEmHuPhGaTZ/hMTVO8a3c0v3AXceypVGhTjdQ7Lmxjbbz10VnxPlJyjvSWmjqcxXb39
         czyMYAzSey4l3sgn8Gcg3e47lTbKk7kPoN7TNhfdDjYpNN1Xr77sOmoXHjdBK4w28ESO
         Qxyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=X9ZmZHvfj3ZEWy6eI76YHxiMWrtG4NHQX96RmYIvLhI=;
        b=YHMMzyIDM5298gay1Wp7wJBlGYR7FzRkoh6gHag9++NzKHCpWJ3H/gFzBXzR/Cdiow
         GvXynMICPeGcMAcmrJ4iF5OBSg9AQa8p8+apDZJrspjdfEvXO//SXL/65F8JjyNFhrLw
         lb0dCUW9RbrugQhlJ43GAsCZve0dYb6eUELVVwit/aCHFaHMPmbDNiaEQvV4tmnhI43y
         ol6McUtrK+Uxbi0nqPgv4rULOvWjA7W0vy+is97KqL3/ECB8vJsAWIj+fe+VEiI6bKdV
         EPL9hbgZAlNR5iCmA8CvWz1BzylQP/AAxMZahyFJaCvgmq9Pm+Ry0oKwRcXUjHm+uhe6
         jbTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=STxYPE77;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X9ZmZHvfj3ZEWy6eI76YHxiMWrtG4NHQX96RmYIvLhI=;
        b=Ltn8M1NI/HtGXtjA5LdqAYTsZOSN8P70aPxuzroje1nNwttnzdhC0XC20wCpL6Tfex
         IBmo4zFUQvfpEMiZv5j9tNAYOXDF7T03ivXldyFnYIij+PElZVac/ykcKkUNvIZVN8CV
         id/iTj1LzUkelqkEIbENwRy1IitRlDEVqy+X3qsxhhiPC/2LPSXNk62dwge3CGau09YX
         NMBYepGdNQBy+QEmdhkpIFq3WaJK+vZ1G9lh+KDFbluIsJW6WlIwaj0KuDDl4xwq0Ste
         8lQMwezTcOT5T5eAjvNkcm8njFUEbLHEIY0ZMNMZMvb0iZlrG3XqI5NrwgCNxWEHtdLy
         iTUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X9ZmZHvfj3ZEWy6eI76YHxiMWrtG4NHQX96RmYIvLhI=;
        b=TCvHHZgSZjgWGW1HRbg+Z3vcMPPrJ5kAZXSFE60bs/my0CltBVBgjb4CzLoTBe81ot
         UPifj+TGfMK+f/dx5fZKt0zUpjmGYDM/hTYTm68SWVACBCtgo281vjGhtlk4aB7sP4tD
         +jcdCz3oCXfdwAihUAhifwrBzT0jqlL9QaNleIzrOSbF+bhLGCgujND52dh1OjECUFEw
         sB59bYLqpgWbwlV4wkyc8SMvwH04FDJK3AnRZaUJ9g/YkLPU0dS13zNe1C1Bo5RdV+to
         SkMG+SwVm99wYmo6DEXHjHCHznO+w9A2rr4bk4vPCbGZI6m6J8w5oYzcMXWEk3Jr/MPR
         xItA==
X-Gm-Message-State: APjAAAUKMvRVKnp8keZCZ27Oc+E50jjAcuct5kKvUZKje054bAn6nO1T
	2mjaQPi+i2ZosXyYNryoKoU=
X-Google-Smtp-Source: APXvYqzJLYsNLik0yEUltAf+YBB6f3TdkxHaJre/Tg90bEi0iIPnJpkvz6om+cx0AXy+wZ/whcmj8A==
X-Received: by 2002:a17:902:6a84:: with SMTP id n4mr4559384plk.109.1565731963752;
        Tue, 13 Aug 2019 14:32:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:800d:: with SMTP id j13ls25416688pfi.12.gmail; Tue, 13
 Aug 2019 14:32:43 -0700 (PDT)
X-Received: by 2002:a62:6dc2:: with SMTP id i185mr43573541pfc.40.1565731963417;
        Tue, 13 Aug 2019 14:32:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565731963; cv=none;
        d=google.com; s=arc-20160816;
        b=0w540uEJbNR+duWX9g9rJyuHtcdR6FRBbu1UzhzNord/XwvDsSUy5G9c6KPggHq/sY
         YIgLyWRXOxJnlTsaAXE5WZp+pSmKVAovLOi3PUngJNSWaJQ886TrO16AM2+ir1FSg3u4
         uUgJiAqFy3LPJDEcZS1esWCuFUZSBPxSHIzj4hay/s/MsGD6nio0Ammd9tvLCXbZIEme
         8PIdtes0BQXy+5jLKlYYqb9j7sjvp2W02/VliyQJ0tgi2j2Z6X66pBJfiGlFOhv5zvKN
         7DGjmrFdAiaSxYwjiKCJSvv1UZ0FD5tuQN6HDOtm5RX70quwhVPHZ/IyGOXRF62yrNQX
         8zmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/hgYMHAFK40US6laJxbexb8rTiYlwodYrDhHQi9YSKw=;
        b=QJwbOPrsr1j2cGlLkVNjyUteggU4V70r2fzBd8I3/OjnZaGhzidcPR59cSnkHHktTD
         R6fDJ0yZrlVz8eCj1ACU8x6+WgOkeUSMF1BgfAetrhKL4tPoObxML53N9i62DDKsCrHy
         88F6tA18+ZRRdY7K47JzzaZR0wJYxdzPAJY5UMMm5S6YVXKNca0wsMnmwk7fDtw6nPJH
         VGI61FP20kh90ddrX3Tilw7IHXlBozsFQVyaCvM4LyeMNN4vezRv88iEAHS+/u3YE9yE
         EHHOU+miWpUnVxkazYr5WyWcx9dGA7musF0lx6srCVGCL3h1xncKbtXUPtaLWGSusDZ4
         VDcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=STxYPE77;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 85si3594532pgb.2.2019.08.13.14.32.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 14:32:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id p184so52332535pfp.7
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 14:32:43 -0700 (PDT)
X-Received: by 2002:a17:90a:c20f:: with SMTP id e15mr4001600pjt.123.1565731962622;
 Tue, 13 Aug 2019 14:32:42 -0700 (PDT)
MIME-Version: 1.0
References: <201908140530.i8rXFzLC%lkp@intel.com> <CAKwvOdkCKhCHjteLwDZMon1zo+DAn=M2PGGsrpvs6e=jgXV4=g@mail.gmail.com>
 <CAL=UVf7GjkROhqHymay_QCE_8oR9JpB_OtG6_PF6ePqgNXeArw@mail.gmail.com>
In-Reply-To: <CAL=UVf7GjkROhqHymay_QCE_8oR9JpB_OtG6_PF6ePqgNXeArw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 13 Aug 2019 14:32:31 -0700
Message-ID: <CAKwvOdmmZZsGUV69msTYx8nOooijFcZLHA0+OSiiv4cqbMSNew@mail.gmail.com>
Subject: Re: [android-goldfish:b120914098 38/99] kernel/memremap.c:312:2:
 error: implicit declaration of function 'kasan_remove_zero_shadow'
To: Paul Lawrence <paullawrence@google.com>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild test robot <lkp@intel.com>, Andrey Konovalov <andreyknvl@google.com>, Roman Kiryanov <rkir@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=STxYPE77;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Tue, Aug 13, 2019 at 2:27 PM Paul Lawrence <paullawrence@google.com> wrote:
>
> It wasn't me officer, I was just carrying this for someone else.
>
> See https://android-review.googlesource.com/c/kernel/common/+/989989
>
> Note the real culprit is Andrey Konovalov, now cc'd on this thread.

oh, right.

Notice also:
tree:   https://android.googlesource.com/kernel/goldfish b120914098
config: x86_64-rhel-7.6 (attached as .config)

Is the goldfish team aware or observing the warning currently with
their configs?

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
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmmZZsGUV69msTYx8nOooijFcZLHA0%2BOSiiv4cqbMSNew%40mail.gmail.com.
