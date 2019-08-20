Return-Path: <clang-built-linux+bncBD26TVH6RINBB3XV53VAKGQEMUCJ3WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB9095AC9
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 11:18:40 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id b30sf3708848pla.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 02:18:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566292719; cv=pass;
        d=google.com; s=arc-20160816;
        b=KA6GCncCkx7ICPVCrWNnmTMQzpTEx3Hm1ScHc0dU9rIztSHhZBTnX2Jp+8hqE8p8Y8
         b9RGQwAFy39s6jSLgzoLgIC4eyQPNXC0N+ZhiMXMlXRiXDRCZhJ94v/cFX/pxM5IBbWJ
         ErbNnLx+BZLzCy1TU2bByztMjriKZON8GjyKoPn/8E0JQ8Y8gPFuOcsg73yvE8rRTgtO
         5BGV7I84cklnmtFrpEytU/DdolzGV2QehpbzSO23ArFlQ8QNyHi04L4QQo1iUDXXvFrz
         2ByvLf75jI1W2lwYJFTo2txMil1s0WKIBWVVPbXW53E6MKo6WpFW1tqh4KCoCpGqFiZr
         ti/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=N9Kxo42f2yfXZLUtrqSPcRsDDFDFmJdLXAWYCXr6Gc8=;
        b=hHYsQKUJeEYgCBllX4gHorWdIVGTJ5GFl0TXjJwGw6TvgUrCzfe/As62O0R8luP+hL
         At2NE3bH8IMSbWpyRT8id8TduZfHeiJQxEQtG669Fx81zWUii1mmPwVXOP1yaoiS0O/3
         cU6GcuTvVSaJftknjDeUcXpm2uHlOgIZqtpIMnVPAGKpFDGP3bQJcF9gCyJFP8KHBa0v
         GXNPxwhDzl0ZbQIVKKYVJvH3xZ6L8VpTSr+h7JiKP0x/D1OEwD4pc+mKr4DaXTMjWKZ5
         Ccil5F7DfKPQWtnmkGd6r1/4/ckc5co0kB0TcVjfPZBNxa+3pMKthr8S1stW3Iy3V2Fd
         JYtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N9Kxo42f2yfXZLUtrqSPcRsDDFDFmJdLXAWYCXr6Gc8=;
        b=jyTc7ym0VSf65VrZDO074ptl1nBaDox2/k8BjnEt0Mel4uWCjxxqtjo8vKaoHpbl+U
         lDijRqCQk8MKQLCDMNvZb+7NvQRcUbPYnI8p8R2+RRrstceJqbZHpdGWefRhhJfsyxIv
         +0Wt70Y3hqFP5NPI1N+Vso2dDjV+b9jNaq57PGXS1HP+SZTXmNxi/SozVyNdu66jwKTU
         kFn8yGyl2MtbLV9+g/lvrhv6YCvsg6P4SBsZEGfBgNlxdp4A1pkv0gF1V/viFN5qzlpJ
         80RvfXWD+W8dJjS8lFQpMEZ3sLebXC2Cp8NGNDoQRLECB2nGCR2vGrsB79/L9LbdI5L1
         U0qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=N9Kxo42f2yfXZLUtrqSPcRsDDFDFmJdLXAWYCXr6Gc8=;
        b=di3vEg7llORJIJXgAl81V/zJOlDMa7KXSLYwSx8WkQH1HM8cwWtH/Qh7lQ2F+Y6o75
         ysRNvypO5RV4v+19FCrC66Ix+MxfNK6YG1ygi0eQIf82ulH7szjEL17oDnvK2vfVmnLr
         KXvxhikZLDWbJDmAaiHpU01Ql1kiLTUm4I3QeJ5YgXOYU+34k4kF8ynFOxZfoLT8Sre/
         GeXahXJEzjhUMIXFddEU4uszPt+BdSNxAjG3TNlEuTZfoY+1Eo5nifSFofih079P8Ay/
         B2o8OtcOE+LDRn5LwLmSJbcbIQ5YT02P9ryEurcJe8kX2bLkjlQz7+MfTKL4EDop/f6p
         ZYIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVZuLP0sniwiNIWeQ2g3KrRVY03UZL+OPnX5iQXfpucC65movQr
	zifvFw6HAbFuIwqOMIcmWnE=
X-Google-Smtp-Source: APXvYqy0CWAvPFIptNk+4WupgKX/aE8UnsFwbEMRHmBxq8wilp/x2VPCJ2TcRGlKQFePR+2LD6Phxg==
X-Received: by 2002:a63:d84e:: with SMTP id k14mr23873040pgj.234.1566292718962;
        Tue, 20 Aug 2019 02:18:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:b518:: with SMTP id y24ls4732559pfe.14.gmail; Tue, 20
 Aug 2019 02:18:38 -0700 (PDT)
X-Received: by 2002:a63:c442:: with SMTP id m2mr3422536pgg.286.1566292718478;
        Tue, 20 Aug 2019 02:18:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566292718; cv=none;
        d=google.com; s=arc-20160816;
        b=ujc4ZzZCZCbwRcKMN9XWLlSIGvjC1Ir3UzxlrmbEJywMBdnV4grNA7eRwsMpstT0vN
         sYnkQQ8qPRvmaIV963b6zH1jG6fyTm/I5jSW7Kcx3ys31HDkr/MOYfPbM/H3eSLETchB
         8DArdCF2xMQ3OF8CA95jQ4NjeKABTXyp7d0jythoHuu+P1/Jrhsz91+10kRRoENrkvZi
         WWnwuU7C4VwFqZ3DvQHJbyEfb24Q4DCw0E5uFwhzCNSy0G7XWUVHaXt5XkfxWbNKIVwn
         UBU7YsW5xePEGI5P0cgyriZlQdWqqeMemxL/f+4buu5koZWLrLLUOBKRVRx69Y1uBYl9
         bOqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=VPT5/s0egY9EI9NCHESSiPnVRycPcq7InGAClFucLlc=;
        b=EztACUXbUFpzbj36aNAfbk7i0ClRCgdUaBjBhQdD1oxSj85yG4zbYfATCmFcZdQaIF
         D6BDm1+J9yN3joxpDsTxI2gG5Lc05Sxgz5b/7ZzTtprlo0CoU4NcqXE35FOVBI7dy4Vg
         qBLDJ+wPO+VbjF4M0A+HpeLfrqUWJBQ0osdRfmoBOUJ4ESXe+nSFRyjprhvJA1WFRl2X
         pn+wYaNFicS9kpr4wD40A5XHkFcsZD/cSODvtPwz3my+6P6MKmwoHAk3EkvktKHAutsk
         TsnHbXz8UvXelxITie/UD08+Sv/t94y3My0dMqRh1F32rBSOux5he10MizFHNQ+d6+gY
         um7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=rong.a.chen@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id b24si557246pjq.1.2019.08.20.02.18.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Aug 2019 02:18:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Aug 2019 02:18:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; 
   d="scan'208";a="172394226"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.6]) ([10.239.13.6])
  by orsmga008.jf.intel.com with ESMTP; 20 Aug 2019 02:18:36 -0700
Subject: Re: [android-goldfish:b120914098 38/99] kernel/memremap.c:312:2:
 error: implicit declaration of function 'kasan_remove_zero_shadow'
To: Andrey Konovalov <andreyknvl@google.com>,
 Paul Lawrence <paullawrence@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>,
 kbuild test robot <lkp@intel.com>
References: <201908140530.i8rXFzLC%lkp@intel.com>
 <CAKwvOdkCKhCHjteLwDZMon1zo+DAn=M2PGGsrpvs6e=jgXV4=g@mail.gmail.com>
 <CAL=UVf7GjkROhqHymay_QCE_8oR9JpB_OtG6_PF6ePqgNXeArw@mail.gmail.com>
 <CAAeHK+zz5+eKXEafomMHbVVc+a9q6wg-FT9Ufuy2xebn__zPLw@mail.gmail.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <eb85c319-e99c-c20a-4ea1-23eb3a636bfd@intel.com>
Date: Tue, 20 Aug 2019 17:18:37 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAAeHK+zz5+eKXEafomMHbVVc+a9q6wg-FT9Ufuy2xebn__zPLw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rong.a.chen@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rong.a.chen@intel.com designates 192.55.52.136 as
 permitted sender) smtp.mailfrom=rong.a.chen@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 8/14/19 9:50 PM, Andrey Konovalov wrote:
> On Tue, Aug 13, 2019 at 11:27 PM Paul Lawrence <paullawrence@google.com> wrote:
>> It wasn't me officer, I was just carrying this for someone else.
>>
>> See https://android-review.googlesource.com/c/kernel/common/+/989989
>>
>> Note the real culprit is Andrey Konovalov, now cc'd on this thread.
>>
>> Paul
>>
>> On Tue, Aug 13, 2019 at 2:21 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>>> Here he is officer, guilty as charged. ;)
>>>
>>> On Tue, Aug 13, 2019 at 2:14 PM kbuild test robot <lkp@intel.com> wrote:
>>>> CC: kbuild-all@01.org
>>>> BCC: philip.li@intel.com
>>>> TO: Paul Lawrence <paullawrence@google.com>
>>>>
>>>> tree:   https://android.googlesource.com/kernel/goldfish b120914098
>>>> head:   88590f0a97d55a7156cdb09e9d5ecb8d829826e0
>>>> commit: 69c0f72d6ca84158e4cd691fe31db5d0170d38b9 [38/99] BACKPORT: kernel/memremap, kasan: make ZONE_DEVICE with work with KASAN
>>>> config: x86_64-rhel-7.6 (attached as .config)
> Could you forward this attachment as well?
Hi Nick,

The attachment should be in the original mail named as '.config.gz', but 
we didn't preserve it. Could you forward it?

Best Regards,
Rong Chen

>
>>>> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
>>>> reproduce:
>>>>          git checkout 69c0f72d6ca84158e4cd691fe31db5d0170d38b9
>>>>          # save the attached .config to linux build tree
>>>>          make ARCH=x86_64
>>>>
>>>> If you fix the issue, kindly add following tag
>>>> Reported-by: kbuild test robot <lkp@intel.com>
>>>>
>>>> All errors (new ones prefixed by >>):
>>>>
>>>>     In file included from kernel/memremap.c:21:
>>>>     include/linux/swapops.h:327:22: warning: section attribute is specified on redeclared variable [-Wsection]
>>>>     extern atomic_long_t num_poisoned_pages __read_mostly;
>>>>                          ^
>>>>     include/linux/mm.h:2551:22: note: previous declaration is here
>>>>     extern atomic_long_t num_poisoned_pages;
>>>>                          ^
>>>>>> kernel/memremap.c:312:2: error: implicit declaration of function 'kasan_remove_zero_shadow' [-Werror,-Wimplicit-function-declaration]
>>>>             kasan_remove_zero_shadow(__va(align_start), align_size);
>>>>             ^
>>>>>> kernel/memremap.c:448:10: error: implicit declaration of function 'kasan_add_zero_shadow' [-Werror,-Wimplicit-function-declaration]
>>>>             error = kasan_add_zero_shadow(__va(align_start), align_size);
>>>>                     ^
>>>>     kernel/memremap.c:481:2: error: implicit declaration of function 'kasan_remove_zero_shadow' [-Werror,-Wimplicit-function-declaration]
>>>>             kasan_remove_zero_shadow(__va(align_start), align_size);
>>>>             ^
>>>>     1 warning and 3 errors generated.
>>>>
>>>> vim +/kasan_remove_zero_shadow +312 kernel/memremap.c
>>>>
>>>>     285
>>>>     286  #define for_each_device_pfn(pfn, map) \
>>>>     287          for (pfn = pfn_first(map); pfn < pfn_end(map); pfn++)
>>>>     288
>>>>     289  static void devm_memremap_pages_release(struct device *dev, void *data)
>>>>     290  {
>>>>     291          struct page_map *page_map = data;
>>>>     292          struct resource *res = &page_map->res;
>>>>     293          resource_size_t align_start, align_size;
>>>>     294          struct dev_pagemap *pgmap = &page_map->pgmap;
>>>>     295          unsigned long pfn;
>>>>     296
>>>>     297          for_each_device_pfn(pfn, page_map)
>>>>     298                  put_page(pfn_to_page(pfn));
>>>>     299
>>>>     300          if (percpu_ref_tryget_live(pgmap->ref)) {
>>>>     301                  dev_WARN(dev, "%s: page mapping is still live!\n", __func__);
>>>>     302                  percpu_ref_put(pgmap->ref);
>>>>     303          }
>>>>     304
>>>>     305          /* pages are dead and unused, undo the arch mapping */
>>>>     306          align_start = res->start & ~(SECTION_SIZE - 1);
>>>>     307          align_size = ALIGN(res->start + resource_size(res), SECTION_SIZE)
>>>>     308                  - align_start;
>>>>     309
>>>>     310          mem_hotplug_begin();
>>>>     311          arch_remove_memory(align_start, align_size);
>>>>   > 312          kasan_remove_zero_shadow(__va(align_start), align_size);
>>>>     313          mem_hotplug_done();
>>>>     314
>>>>     315          untrack_pfn(NULL, PHYS_PFN(align_start), align_size);
>>>>     316          pgmap_radix_release(res, -1);
>>>>     317          dev_WARN_ONCE(dev, pgmap->altmap && pgmap->altmap->alloc,
>>>>     318                          "%s: failed to free all reserved pages\n", __func__);
>>>>     319  }
>>>>     320
>>>>     321  /* assumes rcu_read_lock() held at entry */
>>>>     322  struct dev_pagemap *find_dev_pagemap(resource_size_t phys)
>>>>     323  {
>>>>     324          struct page_map *page_map;
>>>>     325
>>>>     326          WARN_ON_ONCE(!rcu_read_lock_held());
>>>>     327
>>>>     328          page_map = radix_tree_lookup(&pgmap_radix, PHYS_PFN(phys));
>>>>     329          return page_map ? &page_map->pgmap : NULL;
>>>>     330  }
>>>>     331
>>>>     332  /**
>>>>     333   * devm_memremap_pages - remap and provide memmap backing for the given resource
>>>>     334   * @dev: hosting device for @res
>>>>     335   * @res: "host memory" address range
>>>>     336   * @ref: a live per-cpu reference count
>>>>     337   * @altmap: optional descriptor for allocating the memmap from @res
>>>>     338   *
>>>>     339   * Notes:
>>>>     340   * 1/ @ref must be 'live' on entry and 'dead' before devm_memunmap_pages() time
>>>>     341   *    (or devm release event). The expected order of events is that @ref has
>>>>     342   *    been through percpu_ref_kill() before devm_memremap_pages_release(). The
>>>>     343   *    wait for the completion of all references being dropped and
>>>>     344   *    percpu_ref_exit() must occur after devm_memremap_pages_release().
>>>>     345   *
>>>>     346   * 2/ @res is expected to be a host memory range that could feasibly be
>>>>     347   *    treated as a "System RAM" range, i.e. not a device mmio range, but
>>>>     348   *    this is not enforced.
>>>>     349   */
>>>>     350  void *devm_memremap_pages(struct device *dev, struct resource *res,
>>>>     351                  struct percpu_ref *ref, struct vmem_altmap *altmap)
>>>>     352  {
>>>>     353          resource_size_t align_start, align_size, align_end;
>>>>     354          unsigned long pfn, pgoff, order;
>>>>     355          pgprot_t pgprot = PAGE_KERNEL;
>>>>     356          struct dev_pagemap *pgmap;
>>>>     357          struct page_map *page_map;
>>>>     358          int error, nid, is_ram, i = 0;
>>>>     359          struct dev_pagemap *conflict_pgmap;
>>>>     360
>>>>     361          align_start = res->start & ~(SECTION_SIZE - 1);
>>>>     362          align_size = ALIGN(res->start + resource_size(res), SECTION_SIZE)
>>>>     363                  - align_start;
>>>>     364          align_end = align_start + align_size - 1;
>>>>     365
>>>>     366          conflict_pgmap = get_dev_pagemap(PHYS_PFN(align_start), NULL);
>>>>     367          if (conflict_pgmap) {
>>>>     368                  dev_WARN(dev, "Conflicting mapping in same section\n");
>>>>     369                  put_dev_pagemap(conflict_pgmap);
>>>>     370                  return ERR_PTR(-ENOMEM);
>>>>     371          }
>>>>     372
>>>>     373          conflict_pgmap = get_dev_pagemap(PHYS_PFN(align_end), NULL);
>>>>     374          if (conflict_pgmap) {
>>>>     375                  dev_WARN(dev, "Conflicting mapping in same section\n");
>>>>     376                  put_dev_pagemap(conflict_pgmap);
>>>>     377                  return ERR_PTR(-ENOMEM);
>>>>     378          }
>>>>     379
>>>>     380          is_ram = region_intersects(align_start, align_size,
>>>>     381                  IORESOURCE_SYSTEM_RAM, IORES_DESC_NONE);
>>>>     382
>>>>     383          if (is_ram != REGION_DISJOINT) {
>>>>     384                  WARN_ONCE(1, "%s attempted on %s region %pr\n", __func__,
>>>>     385                                  is_ram == REGION_MIXED ? "mixed" : "ram", res);
>>>>     386                  return ERR_PTR(-ENXIO);
>>>>     387          }
>>>>     388
>>>>     389          if (!ref)
>>>>     390                  return ERR_PTR(-EINVAL);
>>>>     391
>>>>     392          page_map = devres_alloc_node(devm_memremap_pages_release,
>>>>     393                          sizeof(*page_map), GFP_KERNEL, dev_to_node(dev));
>>>>     394          if (!page_map)
>>>>     395                  return ERR_PTR(-ENOMEM);
>>>>     396          pgmap = &page_map->pgmap;
>>>>     397
>>>>     398          memcpy(&page_map->res, res, sizeof(*res));
>>>>     399
>>>>     400          pgmap->dev = dev;
>>>>     401          if (altmap) {
>>>>     402                  memcpy(&page_map->altmap, altmap, sizeof(*altmap));
>>>>     403                  pgmap->altmap = &page_map->altmap;
>>>>     404          }
>>>>     405          pgmap->ref = ref;
>>>>     406          pgmap->res = &page_map->res;
>>>>     407          pgmap->type = MEMORY_DEVICE_HOST;
>>>>     408          pgmap->page_fault = NULL;
>>>>     409          pgmap->page_free = NULL;
>>>>     410          pgmap->data = NULL;
>>>>     411
>>>>     412          mutex_lock(&pgmap_lock);
>>>>     413          error = 0;
>>>>     414
>>>>     415          foreach_order_pgoff(res, order, pgoff) {
>>>>     416                  struct dev_pagemap *dup;
>>>>     417
>>>>     418                  rcu_read_lock();
>>>>     419                  dup = find_dev_pagemap(res->start + PFN_PHYS(pgoff));
>>>>     420                  rcu_read_unlock();
>>>>     421                  if (dup) {
>>>>     422                          dev_err(dev, "%s: %pr collides with mapping for %s\n",
>>>>     423                                          __func__, res, dev_name(dup->dev));
>>>>     424                          error = -EBUSY;
>>>>     425                          break;
>>>>     426                  }
>>>>     427                  error = __radix_tree_insert(&pgmap_radix,
>>>>     428                                  PHYS_PFN(res->start) + pgoff, order, page_map);
>>>>     429                  if (error) {
>>>>     430                          dev_err(dev, "%s: failed: %d\n", __func__, error);
>>>>     431                          break;
>>>>     432                  }
>>>>     433          }
>>>>     434          mutex_unlock(&pgmap_lock);
>>>>     435          if (error)
>>>>     436                  goto err_radix;
>>>>     437
>>>>     438          nid = dev_to_node(dev);
>>>>     439          if (nid < 0)
>>>>     440                  nid = numa_mem_id();
>>>>     441
>>>>     442          error = track_pfn_remap(NULL, &pgprot, PHYS_PFN(align_start), 0,
>>>>     443                          align_size);
>>>>     444          if (error)
>>>>     445                  goto err_pfn_remap;
>>>>     446
>>>>     447          mem_hotplug_begin();
>>>>   > 448          error = kasan_add_zero_shadow(__va(align_start), align_size);
>>>>     449          if (error) {
>>>>     450                  mem_hotplug_done();
>>>>     451                  goto err_kasan;
>>>>     452          }
>>>>     453          error = arch_add_memory(nid, align_start, align_size, false);
>>>>     454          if (!error)
>>>>     455                  move_pfn_range_to_zone(&NODE_DATA(nid)->node_zones[ZONE_DEVICE],
>>>>     456                                          align_start >> PAGE_SHIFT,
>>>>     457                                          align_size >> PAGE_SHIFT);
>>>>     458          mem_hotplug_done();
>>>>     459          if (error)
>>>>     460                  goto err_add_memory;
>>>>     461
>>>>     462          for_each_device_pfn(pfn, page_map) {
>>>>     463                  struct page *page = pfn_to_page(pfn);
>>>>     464
>>>>     465                  /*
>>>>     466                   * ZONE_DEVICE pages union ->lru with a ->pgmap back
>>>>     467                   * pointer.  It is a bug if a ZONE_DEVICE page is ever
>>>>     468                   * freed or placed on a driver-private list.  Seed the
>>>>     469                   * storage with LIST_POISON* values.
>>>>     470                   */
>>>>     471                  list_del(&page->lru);
>>>>     472                  page->pgmap = pgmap;
>>>>     473                  percpu_ref_get(ref);
>>>>     474                  if (!(++i % 1024))
>>>>     475                          cond_resched();
>>>>     476          }
>>>>     477          devres_add(dev, page_map);
>>>>     478          return __va(res->start);
>>>>     479
>>>>     480   err_add_memory:
>>>>     481          kasan_remove_zero_shadow(__va(align_start), align_size);
>>>>     482   err_kasan:
>>>>     483          untrack_pfn(NULL, PHYS_PFN(align_start), align_size);
>>>>     484   err_pfn_remap:
>>>>     485   err_radix:
>>>>     486          pgmap_radix_release(res, pgoff);
>>>>     487          devres_free(page_map);
>>>>     488          return ERR_PTR(error);
>>>>     489  }
>>>>     490  EXPORT_SYMBOL_GPL(devm_memremap_pages);
>>>>     491
>>>>
>>>> ---
>>>> 0-DAY kernel test infrastructure                Open Source Technology Center
>>>> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
>>>
>>>
>>> --
>>> Thanks,
>>> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/eb85c319-e99c-c20a-4ea1-23eb3a636bfd%40intel.com.
