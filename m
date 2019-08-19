Return-Path: <clang-built-linux+bncBCSM5AMF5ANBBNE65PVAKGQE7WI7TTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id C921F949F6
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 18:32:53 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id e20sf631985ljk.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 09:32:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566232373; cv=pass;
        d=google.com; s=arc-20160816;
        b=AUd2vzPIdx/knhq4lw2TtZl9S7+x3REUYHeA4CPQEFH+6K1HkU/qhH4eNI3nqcn/PQ
         Vwynh8y40HdTLVOxsWVx4NceJjD86hzVeMUP+uxl7wDj/5/AqGeZMtHnl3zmPv9HTkHZ
         uuLpxjyLAj+16GUABQu7w9Y+IHh9Xs8Y+qKenc3FqGnRZwrarteLK8+Ej4NrhoJHSNBu
         rOQqg2AB1ETrHQrmYImsvkeIBXYJ4mWDg80Ti0RNMzVbpbbPF+VfTsYkGme5tj40JnhY
         VYymym77mCUgqYXJSaIoINfVQes6pYx5TTsm2ogpnIOeKc9tsXjipvkIPuW4qC4Z2LDq
         Tp6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Zid7VW5cwNLZnNUxr3dkQ3oHPW3sjt4PYzI6bPe63fw=;
        b=l69zAfDQrNM9Kp/EsZb08Gj1HAeWqtcInzofspJ1B0bGXACZYQ9fjTJFu5yI8Sfzc2
         ica5D7Gx78xuD9farMdLSoLC7Hmsr5X9WnZ2A93S3nBzr1Xky4q/41iZBZgDrtODoy0Z
         w2hygHCn03PyM/RzeaZ90eIV7JjUoVu/yD4lyALBZICta7o6TBaPR8ze64pACK5lRU+v
         LQ3qVSG7AlmPZzwPOY2HqO2m4Ge08kP0OwKwfgbajjV3shGXGFwmB5rUncBUHgJEzYHz
         AAdsN2Iw7bTVWKkbOtDBIe4WFsv+D99Jm0hqzOToaZunLwx3jUGDGzJeMpxKZLlKqggn
         bsIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N+uE3PBV;
       spf=pass (google.com: domain of rkir@google.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=rkir@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zid7VW5cwNLZnNUxr3dkQ3oHPW3sjt4PYzI6bPe63fw=;
        b=YPyuSUSp4Qf7isUACTB9CLu+l6sBRxlpgXmKSsX81TVFrNATIEpEy9V+BJ3SqTk9a/
         +LlF2BHHmMlizwz7CxXSXnOLnLArIA+ZTybLpSXZxxV1nxhj+Kwn5/GgLpV3X/9k4O2j
         4qy7bU3jVoiwvE4GeQ5lSBva2+Dz28n8LlGS9zbR6uAbjPSsYz4avWD//uDCU1mqMd5r
         Fo4ynizot3rm1xHHlbgRr4ksCR8fiHLIUXNAQYKUtmyc6A5snkScQQLM7wspaxyYOasu
         MiYIH3WlbtY7P5hI17O4IrihxgRO4UfyK25yM+LKul+bqIv6uRNP+GFUPEy0Th97/XJz
         O4vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zid7VW5cwNLZnNUxr3dkQ3oHPW3sjt4PYzI6bPe63fw=;
        b=O96mfa62jUS5h9350Hb2PcV55ZIyNZWFpsZswZBSjEHBDsBBGjKbw4sOpRri8E3AXg
         a6ii5kyrzfEYsATErl1ha1Hcb1wS9L3OJitDyXv1SDxJJGHWDFOySnUKZwmEeVcAoXZR
         PpQ1vcArpkfH6MYoTU4JaapaKuh9Bpc1kPPi3uBp46Es2hgu2TfPZLx0zNAQMvvMj/X4
         KvuUYDa5JgQL1sDaCD8dxz2mbKeNnOsdjR9mMx5KwxIpaA/uVlmIhOu7dHqFYNPpDYAO
         FJi4Ycd0YTI6uYeNgsJz/tLAWvdU6Qvgzv8JyTiklemsRiD0BZuGJU91ZL5mS5p2pbK8
         pQlA==
X-Gm-Message-State: APjAAAWQWYlvuiJOgSeaB1jz/YuPuo5S6xgUS3wk22CORfrxtsUrVwEe
	umO9YLBq0gDEO5WBpxAS5Sk=
X-Google-Smtp-Source: APXvYqyqKvqwMWytKJ1bK+i+mfAL5xxuFaeLH4y+a5YDwb6aGdP0y1kVzCJ/CINCy6BBV+8MdDRJqQ==
X-Received: by 2002:a2e:9d90:: with SMTP id c16mr6889485ljj.221.1566232372726;
        Mon, 19 Aug 2019 09:32:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:5b91:: with SMTP id m17ls1788635lje.10.gmail; Mon, 19
 Aug 2019 09:32:51 -0700 (PDT)
X-Received: by 2002:a2e:6e0c:: with SMTP id j12mr13111767ljc.123.1566232371528;
        Mon, 19 Aug 2019 09:32:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566232371; cv=none;
        d=google.com; s=arc-20160816;
        b=AXYACnWDfqQsHkBnlV+k8mOnCPZdckrIIJfJ0LEu5WMf7Ftcp/VxxNYwTbMfw7JkXU
         g8f4cQER/CUR5iqT+T5I2m7jqDjNQhqJ8NXG3r0yl/sagqPY4Pt2mmqn+srUSKZuHxkz
         5B25GsUF6x7WJsfnF3CYKCBY8jIzkGaJz0pXAeCxCdxP5wf+Xo8+0sV+D7sQ5dTWnVas
         Rccvh5PrOpw6gGCmEgUEme1vxqqWz2hoYItScHaZuqmHauSgNfv92MpI8u1Mj7HXxdrS
         iYmteX1DrEP8TfmhkPn65rdmpizaBy34LmeDNIp+BAkaVtVLjyi2k+gbdgZ0JZrtCs8I
         owDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3ThtVwnaYYLaPZASRlosVxvBMDvlSIr7fjCF7kq76Fo=;
        b=sukwPwOwZy0xfpsASLuarnDrchGfXCfEQvXGvdftdxYBuiDhNibwg0TJnpRMdlEkGd
         hvSxgCfmAs5DDpcRzIA7ArwrDrfaYe0fRiiC6X3E1qY7eZ0ST9XybhtaWEo6Mw23zCfg
         r0WoczrRzQwanD1K+lKuRNnKKAcm1Y9JjfFQ+DGxuo3cb2eUEJPM7r9Jc+4iV6LhZsvX
         xP3SCr/P4BAzBtu8OD5qxsDQ1BYpSWyhpbxEZ6TzpBcrfvmnNW++X5oyxEqmWxpzNarv
         q7Z9WNFk5XsVK+TFwWCImOvrmTTRJqm2tCZag3DN8Y56m57fnxvPhNrARkua9ksv4y8f
         Y9sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N+uE3PBV;
       spf=pass (google.com: domain of rkir@google.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=rkir@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id c12si282990lji.0.2019.08.19.09.32.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2019 09:32:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of rkir@google.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id l14so2349532ljj.9
        for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 09:32:51 -0700 (PDT)
X-Received: by 2002:a2e:87c5:: with SMTP id v5mr11859418ljj.115.1566232370988;
 Mon, 19 Aug 2019 09:32:50 -0700 (PDT)
MIME-Version: 1.0
References: <201908140530.i8rXFzLC%lkp@intel.com> <CAKwvOdkCKhCHjteLwDZMon1zo+DAn=M2PGGsrpvs6e=jgXV4=g@mail.gmail.com>
 <CAL=UVf7GjkROhqHymay_QCE_8oR9JpB_OtG6_PF6ePqgNXeArw@mail.gmail.com> <CAKwvOdmmZZsGUV69msTYx8nOooijFcZLHA0+OSiiv4cqbMSNew@mail.gmail.com>
In-Reply-To: <CAKwvOdmmZZsGUV69msTYx8nOooijFcZLHA0+OSiiv4cqbMSNew@mail.gmail.com>
From: "'Roman Kiryanov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 19 Aug 2019 09:32:39 -0700
Message-ID: <CAOGAQeq_6Txt+Gn98+TMwh74dBGqrOrNSZyrFvHnYK+wF2C5dQ@mail.gmail.com>
Subject: Re: [android-goldfish:b120914098 38/99] kernel/memremap.c:312:2:
 error: implicit declaration of function 'kasan_remove_zero_shadow'
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Paul Lawrence <paullawrence@google.com>, kbuild@01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	Andrey Konovalov <andreyknvl@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rkir@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=N+uE3PBV;       spf=pass
 (google.com: domain of rkir@google.com designates 2a00:1450:4864:20::242 as
 permitted sender) smtp.mailfrom=rkir@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Roman Kiryanov <rkir@google.com>
Reply-To: Roman Kiryanov <rkir@google.com>
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

Hi Nick,

thank you for looking into this. We (goldfish) are not aware about
these warnings.

Our build log is here and I don't see "kasan" there:

https://android-build.googleplex.com/builds/submitted/5812540/kernel/latest/view/logs/build.log

We use

arch/x86/configs/x86_64_ranchu_defconfig with build.config.goldfish.x86_64
arch/arm64/configs/arm64_ranchu_defconfig with build.config.goldfish.arm64

Could you please point where x86_64-rhel-7.6 comes from?

Regards,
Roman.

On Tue, Aug 13, 2019 at 2:32 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Aug 13, 2019 at 2:27 PM Paul Lawrence <paullawrence@google.com> wrote:
> >
> > It wasn't me officer, I was just carrying this for someone else.
> >
> > See https://android-review.googlesource.com/c/kernel/common/+/989989
> >
> > Note the real culprit is Andrey Konovalov, now cc'd on this thread.
>
> oh, right.
>
> Notice also:
> tree:   https://android.googlesource.com/kernel/goldfish b120914098
> config: x86_64-rhel-7.6 (attached as .config)
>
> Is the goldfish team aware or observing the warning currently with
> their configs?
>
> >
> > Paul
> >
> > On Tue, Aug 13, 2019 at 2:21 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >>
> >> Here he is officer, guilty as charged. ;)
> >>
> >> On Tue, Aug 13, 2019 at 2:14 PM kbuild test robot <lkp@intel.com> wrote:
> >> >
> >> > CC: kbuild-all@01.org
> >> > BCC: philip.li@intel.com
> >> > TO: Paul Lawrence <paullawrence@google.com>
> >> >
> >> > tree:   https://android.googlesource.com/kernel/goldfish b120914098
> >> > head:   88590f0a97d55a7156cdb09e9d5ecb8d829826e0
> >> > commit: 69c0f72d6ca84158e4cd691fe31db5d0170d38b9 [38/99] BACKPORT: kernel/memremap, kasan: make ZONE_DEVICE with work with KASAN
> >> > config: x86_64-rhel-7.6 (attached as .config)
> >> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> >> > reproduce:
> >> >         git checkout 69c0f72d6ca84158e4cd691fe31db5d0170d38b9
> >> >         # save the attached .config to linux build tree
> >> >         make ARCH=x86_64
> >> >
> >> > If you fix the issue, kindly add following tag
> >> > Reported-by: kbuild test robot <lkp@intel.com>
> >> >
> >> > All errors (new ones prefixed by >>):
> >> >
> >> >    In file included from kernel/memremap.c:21:
> >> >    include/linux/swapops.h:327:22: warning: section attribute is specified on redeclared variable [-Wsection]
> >> >    extern atomic_long_t num_poisoned_pages __read_mostly;
> >> >                         ^
> >> >    include/linux/mm.h:2551:22: note: previous declaration is here
> >> >    extern atomic_long_t num_poisoned_pages;
> >> >                         ^
> >> > >> kernel/memremap.c:312:2: error: implicit declaration of function 'kasan_remove_zero_shadow' [-Werror,-Wimplicit-function-declaration]
> >> >            kasan_remove_zero_shadow(__va(align_start), align_size);
> >> >            ^
> >> > >> kernel/memremap.c:448:10: error: implicit declaration of function 'kasan_add_zero_shadow' [-Werror,-Wimplicit-function-declaration]
> >> >            error = kasan_add_zero_shadow(__va(align_start), align_size);
> >> >                    ^
> >> >    kernel/memremap.c:481:2: error: implicit declaration of function 'kasan_remove_zero_shadow' [-Werror,-Wimplicit-function-declaration]
> >> >            kasan_remove_zero_shadow(__va(align_start), align_size);
> >> >            ^
> >> >    1 warning and 3 errors generated.
> >> >
> >> > vim +/kasan_remove_zero_shadow +312 kernel/memremap.c
> >> >
> >> >    285
> >> >    286  #define for_each_device_pfn(pfn, map) \
> >> >    287          for (pfn = pfn_first(map); pfn < pfn_end(map); pfn++)
> >> >    288
> >> >    289  static void devm_memremap_pages_release(struct device *dev, void *data)
> >> >    290  {
> >> >    291          struct page_map *page_map = data;
> >> >    292          struct resource *res = &page_map->res;
> >> >    293          resource_size_t align_start, align_size;
> >> >    294          struct dev_pagemap *pgmap = &page_map->pgmap;
> >> >    295          unsigned long pfn;
> >> >    296
> >> >    297          for_each_device_pfn(pfn, page_map)
> >> >    298                  put_page(pfn_to_page(pfn));
> >> >    299
> >> >    300          if (percpu_ref_tryget_live(pgmap->ref)) {
> >> >    301                  dev_WARN(dev, "%s: page mapping is still live!\n", __func__);
> >> >    302                  percpu_ref_put(pgmap->ref);
> >> >    303          }
> >> >    304
> >> >    305          /* pages are dead and unused, undo the arch mapping */
> >> >    306          align_start = res->start & ~(SECTION_SIZE - 1);
> >> >    307          align_size = ALIGN(res->start + resource_size(res), SECTION_SIZE)
> >> >    308                  - align_start;
> >> >    309
> >> >    310          mem_hotplug_begin();
> >> >    311          arch_remove_memory(align_start, align_size);
> >> >  > 312          kasan_remove_zero_shadow(__va(align_start), align_size);
> >> >    313          mem_hotplug_done();
> >> >    314
> >> >    315          untrack_pfn(NULL, PHYS_PFN(align_start), align_size);
> >> >    316          pgmap_radix_release(res, -1);
> >> >    317          dev_WARN_ONCE(dev, pgmap->altmap && pgmap->altmap->alloc,
> >> >    318                          "%s: failed to free all reserved pages\n", __func__);
> >> >    319  }
> >> >    320
> >> >    321  /* assumes rcu_read_lock() held at entry */
> >> >    322  struct dev_pagemap *find_dev_pagemap(resource_size_t phys)
> >> >    323  {
> >> >    324          struct page_map *page_map;
> >> >    325
> >> >    326          WARN_ON_ONCE(!rcu_read_lock_held());
> >> >    327
> >> >    328          page_map = radix_tree_lookup(&pgmap_radix, PHYS_PFN(phys));
> >> >    329          return page_map ? &page_map->pgmap : NULL;
> >> >    330  }
> >> >    331
> >> >    332  /**
> >> >    333   * devm_memremap_pages - remap and provide memmap backing for the given resource
> >> >    334   * @dev: hosting device for @res
> >> >    335   * @res: "host memory" address range
> >> >    336   * @ref: a live per-cpu reference count
> >> >    337   * @altmap: optional descriptor for allocating the memmap from @res
> >> >    338   *
> >> >    339   * Notes:
> >> >    340   * 1/ @ref must be 'live' on entry and 'dead' before devm_memunmap_pages() time
> >> >    341   *    (or devm release event). The expected order of events is that @ref has
> >> >    342   *    been through percpu_ref_kill() before devm_memremap_pages_release(). The
> >> >    343   *    wait for the completion of all references being dropped and
> >> >    344   *    percpu_ref_exit() must occur after devm_memremap_pages_release().
> >> >    345   *
> >> >    346   * 2/ @res is expected to be a host memory range that could feasibly be
> >> >    347   *    treated as a "System RAM" range, i.e. not a device mmio range, but
> >> >    348   *    this is not enforced.
> >> >    349   */
> >> >    350  void *devm_memremap_pages(struct device *dev, struct resource *res,
> >> >    351                  struct percpu_ref *ref, struct vmem_altmap *altmap)
> >> >    352  {
> >> >    353          resource_size_t align_start, align_size, align_end;
> >> >    354          unsigned long pfn, pgoff, order;
> >> >    355          pgprot_t pgprot = PAGE_KERNEL;
> >> >    356          struct dev_pagemap *pgmap;
> >> >    357          struct page_map *page_map;
> >> >    358          int error, nid, is_ram, i = 0;
> >> >    359          struct dev_pagemap *conflict_pgmap;
> >> >    360
> >> >    361          align_start = res->start & ~(SECTION_SIZE - 1);
> >> >    362          align_size = ALIGN(res->start + resource_size(res), SECTION_SIZE)
> >> >    363                  - align_start;
> >> >    364          align_end = align_start + align_size - 1;
> >> >    365
> >> >    366          conflict_pgmap = get_dev_pagemap(PHYS_PFN(align_start), NULL);
> >> >    367          if (conflict_pgmap) {
> >> >    368                  dev_WARN(dev, "Conflicting mapping in same section\n");
> >> >    369                  put_dev_pagemap(conflict_pgmap);
> >> >    370                  return ERR_PTR(-ENOMEM);
> >> >    371          }
> >> >    372
> >> >    373          conflict_pgmap = get_dev_pagemap(PHYS_PFN(align_end), NULL);
> >> >    374          if (conflict_pgmap) {
> >> >    375                  dev_WARN(dev, "Conflicting mapping in same section\n");
> >> >    376                  put_dev_pagemap(conflict_pgmap);
> >> >    377                  return ERR_PTR(-ENOMEM);
> >> >    378          }
> >> >    379
> >> >    380          is_ram = region_intersects(align_start, align_size,
> >> >    381                  IORESOURCE_SYSTEM_RAM, IORES_DESC_NONE);
> >> >    382
> >> >    383          if (is_ram != REGION_DISJOINT) {
> >> >    384                  WARN_ONCE(1, "%s attempted on %s region %pr\n", __func__,
> >> >    385                                  is_ram == REGION_MIXED ? "mixed" : "ram", res);
> >> >    386                  return ERR_PTR(-ENXIO);
> >> >    387          }
> >> >    388
> >> >    389          if (!ref)
> >> >    390                  return ERR_PTR(-EINVAL);
> >> >    391
> >> >    392          page_map = devres_alloc_node(devm_memremap_pages_release,
> >> >    393                          sizeof(*page_map), GFP_KERNEL, dev_to_node(dev));
> >> >    394          if (!page_map)
> >> >    395                  return ERR_PTR(-ENOMEM);
> >> >    396          pgmap = &page_map->pgmap;
> >> >    397
> >> >    398          memcpy(&page_map->res, res, sizeof(*res));
> >> >    399
> >> >    400          pgmap->dev = dev;
> >> >    401          if (altmap) {
> >> >    402                  memcpy(&page_map->altmap, altmap, sizeof(*altmap));
> >> >    403                  pgmap->altmap = &page_map->altmap;
> >> >    404          }
> >> >    405          pgmap->ref = ref;
> >> >    406          pgmap->res = &page_map->res;
> >> >    407          pgmap->type = MEMORY_DEVICE_HOST;
> >> >    408          pgmap->page_fault = NULL;
> >> >    409          pgmap->page_free = NULL;
> >> >    410          pgmap->data = NULL;
> >> >    411
> >> >    412          mutex_lock(&pgmap_lock);
> >> >    413          error = 0;
> >> >    414
> >> >    415          foreach_order_pgoff(res, order, pgoff) {
> >> >    416                  struct dev_pagemap *dup;
> >> >    417
> >> >    418                  rcu_read_lock();
> >> >    419                  dup = find_dev_pagemap(res->start + PFN_PHYS(pgoff));
> >> >    420                  rcu_read_unlock();
> >> >    421                  if (dup) {
> >> >    422                          dev_err(dev, "%s: %pr collides with mapping for %s\n",
> >> >    423                                          __func__, res, dev_name(dup->dev));
> >> >    424                          error = -EBUSY;
> >> >    425                          break;
> >> >    426                  }
> >> >    427                  error = __radix_tree_insert(&pgmap_radix,
> >> >    428                                  PHYS_PFN(res->start) + pgoff, order, page_map);
> >> >    429                  if (error) {
> >> >    430                          dev_err(dev, "%s: failed: %d\n", __func__, error);
> >> >    431                          break;
> >> >    432                  }
> >> >    433          }
> >> >    434          mutex_unlock(&pgmap_lock);
> >> >    435          if (error)
> >> >    436                  goto err_radix;
> >> >    437
> >> >    438          nid = dev_to_node(dev);
> >> >    439          if (nid < 0)
> >> >    440                  nid = numa_mem_id();
> >> >    441
> >> >    442          error = track_pfn_remap(NULL, &pgprot, PHYS_PFN(align_start), 0,
> >> >    443                          align_size);
> >> >    444          if (error)
> >> >    445                  goto err_pfn_remap;
> >> >    446
> >> >    447          mem_hotplug_begin();
> >> >  > 448          error = kasan_add_zero_shadow(__va(align_start), align_size);
> >> >    449          if (error) {
> >> >    450                  mem_hotplug_done();
> >> >    451                  goto err_kasan;
> >> >    452          }
> >> >    453          error = arch_add_memory(nid, align_start, align_size, false);
> >> >    454          if (!error)
> >> >    455                  move_pfn_range_to_zone(&NODE_DATA(nid)->node_zones[ZONE_DEVICE],
> >> >    456                                          align_start >> PAGE_SHIFT,
> >> >    457                                          align_size >> PAGE_SHIFT);
> >> >    458          mem_hotplug_done();
> >> >    459          if (error)
> >> >    460                  goto err_add_memory;
> >> >    461
> >> >    462          for_each_device_pfn(pfn, page_map) {
> >> >    463                  struct page *page = pfn_to_page(pfn);
> >> >    464
> >> >    465                  /*
> >> >    466                   * ZONE_DEVICE pages union ->lru with a ->pgmap back
> >> >    467                   * pointer.  It is a bug if a ZONE_DEVICE page is ever
> >> >    468                   * freed or placed on a driver-private list.  Seed the
> >> >    469                   * storage with LIST_POISON* values.
> >> >    470                   */
> >> >    471                  list_del(&page->lru);
> >> >    472                  page->pgmap = pgmap;
> >> >    473                  percpu_ref_get(ref);
> >> >    474                  if (!(++i % 1024))
> >> >    475                          cond_resched();
> >> >    476          }
> >> >    477          devres_add(dev, page_map);
> >> >    478          return __va(res->start);
> >> >    479
> >> >    480   err_add_memory:
> >> >    481          kasan_remove_zero_shadow(__va(align_start), align_size);
> >> >    482   err_kasan:
> >> >    483          untrack_pfn(NULL, PHYS_PFN(align_start), align_size);
> >> >    484   err_pfn_remap:
> >> >    485   err_radix:
> >> >    486          pgmap_radix_release(res, pgoff);
> >> >    487          devres_free(page_map);
> >> >    488          return ERR_PTR(error);
> >> >    489  }
> >> >    490  EXPORT_SYMBOL_GPL(devm_memremap_pages);
> >> >    491
> >> >
> >> > ---
> >> > 0-DAY kernel test infrastructure                Open Source Technology Center
> >> > https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> >>
> >>
> >>
> >> --
> >> Thanks,
> >> ~Nick Desaulniers
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAOGAQeq_6Txt%2BGn98%2BTMwh74dBGqrOrNSZyrFvHnYK%2BwF2C5dQ%40mail.gmail.com.
