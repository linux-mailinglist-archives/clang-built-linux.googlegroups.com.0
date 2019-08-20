Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4WG6DVAKGQEP3CWXDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id D00AB966AC
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 18:44:35 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id x5sf4452187pln.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 09:44:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566319474; cv=pass;
        d=google.com; s=arc-20160816;
        b=dX3r983LC+uDpq/5erOvv6XbWoFl8g9kgP65tI2N2u81p7+yvzfCtSNfW5WyAT3rpe
         rOT0ljJv+K7zwbO/+AbgZ3MBhfSpgbltpYDmV9OzL6+z0qOMIVIle2heWnsJ2yJXhqEu
         xYaGGIoI475oF6Lg3C1SHiIU/ei0pkiVbt+6ATGPhQvRGF60Sh5TJVo9BUBP5V8EJeFD
         Y08xyhmx3zatJ+nWdobgMh9EaklviSZWz24fysMkEe7jK05W2vLB4NWPcZsKlqO9dWdE
         c3pom7m7nkD0GtCjBYaMGFjhpzwVvTJRHVw1tzGF0ikuggu0G9CIZCjmLkkSp8w9MOjv
         beMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Sd/y7eQQNOOb77Fkx7HwhJamLV2/W5CXQO07HCxYsCc=;
        b=peQtALcc2289nyuFKltVxGiNlKJ8s1GduAuwe3zyOySR6z8bJ2nhd2ETxiMlFUIyHW
         RP3ZcTIjDIYvT/tWz4hld86+plJty9X9SoNIn91otEplMwIAvcZYn2s1M/oMPss5vtNN
         cO6FX7RkTneE0kw8PruRifDt/40MEapwfUaUg3+XZ58IKUZ3w41BoSs2TaCd3FEN8Hgg
         T7KXd9u+ewwK9VhEdwkh/unHNmVtKeh094CCBTQXpAQHZLReaKB+r0UI6eoo28dUIU7V
         S3I0ksm5P3isr/om3GtNYGFyeH96FNRoOZNOtQEY8HneS0eM0u4MiIk4nh9QDHaewRE+
         i+Ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d1iVvPdf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sd/y7eQQNOOb77Fkx7HwhJamLV2/W5CXQO07HCxYsCc=;
        b=tkrzfYLfiZEHq4YXUPyf6Qx4FqqYjKgNtclzlK3Fa2IE+gbqSqnC/c3QIJSit1O9M0
         6qS6co6JV+Il4HyyTfmZW4LgkX0pLXdlVLf3/8MShLM6I9g+ZF4MyvvDvJAfJ6THuiFG
         t9LLsPa671tJ6k4nSQIGgitavwDd0eS//vR1n0aEWk3hZG/oYBUYPSYC09fQ/pIwN6KI
         Qn/pk87FgIfz/IXwxoXuYdscu5CQODbnzPxwYQMxO5ERr2p1h1jtNYOep/2It9HPnWDX
         yqqsQUVk/r7VW6BNmpOjtWA8dV08grC09aToiI0BSZaxhxwHzDW8KkPo+2HgUcuk67Cy
         punA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sd/y7eQQNOOb77Fkx7HwhJamLV2/W5CXQO07HCxYsCc=;
        b=j2Ayjv5kS0Q90HzOVhanwseSwCb/Mf1lM2GcgbXfORZaXq7E8PbulMa5CshCHIuDZz
         Ja1WwixShff/B2NDyisktTYBD99aOAhiE5xWUhYV2AhPzaQaCrlItR7jf2dbyMt4uON6
         bShaEPp/VbJ3U9M+8ZGHlDx4qAbY9djk1ceZ/n7m1i5hFpFHF9EZLWf7Lz4Go40k0Jbh
         8hMo/we4VROyP3DlC9/ISRyf43z1iMY7XQZYbCYQGezYXpMxhrxXvm1oXjsHQ0d986Oz
         EH73BSAheSQ1RE/lwdaqbeYhKO99w8R1/AXXJWd8P8siVS0GAENXU0Q63wustGBajkF+
         jkbw==
X-Gm-Message-State: APjAAAWflZshx4K3aPBipDr+X1m75mtRU400YCUqUaczKGHy2QeBLZ6B
	nWgIYxZT1uNTVDGv+gf8Cy4=
X-Google-Smtp-Source: APXvYqyCLbEz6Q24Zm/iaqme6dgxnDH0mTbiWMSmNldsvVyTnUgm+XbedsubDF3ZGxNXrPA0ijPc0w==
X-Received: by 2002:a17:902:fe06:: with SMTP id g6mr29212275plj.265.1566319474163;
        Tue, 20 Aug 2019 09:44:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ed0b:: with SMTP id u11ls5018528pfh.15.gmail; Tue, 20
 Aug 2019 09:44:33 -0700 (PDT)
X-Received: by 2002:a65:5889:: with SMTP id d9mr25171706pgu.380.1566319473797;
        Tue, 20 Aug 2019 09:44:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566319473; cv=none;
        d=google.com; s=arc-20160816;
        b=p72NC+k6ayhzTlEsbUh8laTZqK0G/12xTsF2SrI25kBKuEIvgsmYD6VsgGOldxmttr
         B9/N7cAkVm9/saTqk9l5CLBnlm4lY129A6JdbaNF9NQ2d+X7ZFRv8iAqF7csvbC+wOT8
         1no+hgveZxWj2UA2etg7cBxq6gHs75Jt3zKNZi6hI3d4ffeyYBRRb+i2qz+YZi96PHTf
         HSaWraByz63/SjPtN/86meCAfT9mP3gIVVgPHABkJ5sDeNX4L8nzHWC6sahmFiiVHj5B
         8gJ1fea2q/r2/AaE/68o8uNxGikhf3AZONSkfzLgOEjs7yHX+qaD/f2fvoFm/xEEPpqr
         o0Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KR5Of8RsRQlhsF52MojXcF2IOm+bQoIQitSOuCTB7mE=;
        b=vIq7WMxBw7Hdeu/1in/KX/UPKiPcC8/cJVqPZM1/onJJaLxLUWUISCBn6ZrsTAittZ
         nzM1Yw0XkmYEEn81s1XKc2Ru/L3yHuzkcJsK2vsX9TQ7Goa5zylxenRwuCHUAWCEuROO
         AI0YHcDTyAJjlGodDVlWl72Nfxfb/QVXXqZeaIYvNQuXu1VtBuGOOLnYCbyxUkEKxjmJ
         Mj572/LCjaLH/7a0cl2QnI9mkRB4k1cNz0KUKDJM7RFjPGIm9LZlaerMps/4hrSqJ9a7
         1s2JTNUYDe2fHOmApukOe/8KaIU3iHVSIvqVrEwBt8Yc0/q3Zbdes57as9O1XbVEVOG/
         ojZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d1iVvPdf;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id a79si818981pfa.5.2019.08.20.09.44.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 09:44:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id m9so3022632pls.8
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 09:44:33 -0700 (PDT)
X-Received: by 2002:a17:902:a9c3:: with SMTP id b3mr28925806plr.179.1566319473077;
 Tue, 20 Aug 2019 09:44:33 -0700 (PDT)
MIME-Version: 1.0
References: <201908162308.F6BiRZEg%lkp@intel.com>
In-Reply-To: <201908162308.F6BiRZEg%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Aug 2019 09:44:20 -0700
Message-ID: <CAKwvOd=2b0KbpAk+wgE1ymzmXWNSBZyz7JoF0eHtiOJ7df597Q@mail.gmail.com>
Subject: Re: [yhuang:autonuma-r0.2b 19/21] kernel/sched/fair.c:2646:13:
 warning: comparison of distinct pointer types ('typeof (nr_page / 8) *' (aka
 'long *') and 'typeof (10240) *' (aka 'int *'))
To: ying.huang@intel.com
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=d1iVvPdf;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

Hi Huang, see below:

On Fri, Aug 16, 2019 at 8:39 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> TO: Huang Ying <ying.huang@intel.com>
>
> tree:   yhuang/autonuma-r0.2b
> head:   c0d77303b0c04d55f2430f5c8007a9262529682d
> commit: 31f0657a6ce249f478d6797783c4c20dc1952cb7 [19/21] autonuma: Enhance histogram aggregation and threshold updating
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 31f0657a6ce249f478d6797783c4c20dc1952cb7
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    kernel/sched/fair.c:1452:34: warning: signed shift result (0x280000000) requires 35 bits to represent, but 'int' only has 32 bits [-Wshift-overflow]
>                    end = start + (MAX_SCAN_WINDOW << 22);
>                                   ~~~~~~~~~~~~~~~ ^  ~~

Not sure what was intended, but the math looks wrong.

> >> kernel/sched/fair.c:2646:13: warning: comparison of distinct pointer types ('typeof (nr_page / 8) *' (aka 'long *') and 'typeof (10240) *' (aka 'int *')) [-Wcompare-distinct-pointer-types]
>                            if (nr < max(nr_page / 8, 10240))
>                                     ^~~~~~~~~~~~~~~~~~~~~~~

Probably should be `10240L`.

>    include/linux/kernel.h:858:19: note: expanded from macro 'max'
>    #define max(x, y)       __careful_cmp(x, y, >)
>                            ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/kernel.h:842:24: note: expanded from macro '__careful_cmp'
>            __builtin_choose_expr(__safe_cmp(x, y), \
>                                  ^~~~~~~~~~~~~~~~
>    include/linux/kernel.h:832:4: note: expanded from macro '__safe_cmp'
>                    (__typecheck(x, y) && __no_side_effects(x, y))
>                     ^~~~~~~~~~~~~~~~~
>    include/linux/kernel.h:818:29: note: expanded from macro '__typecheck'
>                    (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
>                               ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~
>    2 warnings generated.
>
> vim +2646 kernel/sched/fair.c
>
>   2593
>   2594  static void aggregate_numa_latency_histogram(struct mm_struct *mm)
>   2595  {
>   2596          int nid, i;
>   2597          long nr, nr_page, acc, max_latency;
>   2598          unsigned long now = jiffies, max_interval;
>   2599          struct pglist_data *pgdat;
>   2600          struct numa_latency_histogram *mm_histogram, *node_histogram;
>   2601
>   2602          for (nid = 0; nid < nr_node_ids; nid++) {
>   2603                  mm_histogram = &mm->numa_latency_histograms[nid];
>   2604                  nr = atomic_long_read(&mm_histogram->nr);
>   2605                  if (!nr)
>   2606                          continue;
>   2607                  max_interval = msecs_to_jiffies(
>   2608                          sysctl_numa_balancing_scan_period_max);
>   2609                  pgdat = NODE_DATA(nid);
>   2610                  node_histogram = &pgdat->autonuma_latency_histogram;
>   2611                  atomic_long_set(&mm_histogram->nr, 0);
>   2612                  /*
>   2613                   * The histogram of mm has been aggregated into that
>   2614                   * of node in this period, skip.
>   2615                   */
>   2616                  if (node_histogram->generation == mm_histogram->generation) {
>   2617                          for (i = 0; i < NUMA_LATENCY_HISTOGRAM_BUCKETS; i++)
>   2618                                  atomic_long_set(&mm_histogram->buckets[i], 0);
>   2619
>   2620                          if (now < max_interval + \
>   2621                              READ_ONCE(pgdat->autonuma_threshold_jiffies))
>   2622                                  continue;
>   2623                          spin_lock(&pgdat->autonuma_histogram_lock);
>   2624                          goto update_threshold;
>   2625                  }
>   2626                  spin_lock(&pgdat->autonuma_histogram_lock);
>   2627                  atomic_long_add(nr, &node_histogram->nr);
>   2628                  for (i = 0; i < NUMA_LATENCY_HISTOGRAM_BUCKETS; i++) {
>   2629                          atomic_long_add(
>   2630                                  atomic_long_read(&mm_histogram->buckets[i]),
>   2631                                  &node_histogram->buckets[i]);
>   2632                          atomic_long_set(&mm_histogram->buckets[i], 0);
>   2633                  }
>   2634                  mm_histogram->generation = node_histogram->generation;
>   2635
>   2636  update_threshold:
>   2637                  nr = atomic_long_read(&node_histogram->nr);
>   2638                  nr_page = node_page_state(pgdat, NR_ANON_MAPPED) +
>   2639                          node_page_state(pgdat, NR_FILE_MAPPED) -
>   2640                          sum_zone_node_page_state(nid, NR_MLOCK);
>   2641                  if (nr_page > 0 &&
>   2642                      (nr >= nr_page * 4 / 5 ||
>   2643                       now >= READ_ONCE(pgdat->autonuma_threshold_jiffies) + \
>   2644                       max_interval)) {
>   2645                          /* To few data to update threshold */
> > 2646                          if (nr < max(nr_page / 8, 10240))
>   2647                                  goto skip;
>   2648                          /*
>   2649                           * 80% percentile of fast memory is used as
>   2650                           * hot threshold
>   2651                           */
>   2652                          nr = nr * 8 / 10;
>   2653                          acc = 0;
>   2654                          for (i = 0; i < NUMA_LATENCY_HISTOGRAM_BUCKETS; i++) {
>   2655                                  acc += atomic_long_read(
>   2656                                          &node_histogram->buckets[i]);
>   2657                                  if (acc > nr)
>   2658                                          break;
>   2659                          }
>   2660                          i = min_t(int, i, NUMA_LATENCY_HISTOGRAM_BUCKETS - 1);
>   2661                          max_latency = msecs_to_jiffies(
>   2662                                  sysctl_numa_balancing_hot_threshold);
>   2663                          pgdat->autonuma_threshold = (i + 1) * max_latency / \
>   2664                                  NUMA_LATENCY_HISTOGRAM_BUCKETS;
>   2665                          atomic_long_set(&node_histogram->nr, 0);
>   2666                          for (i = 0; i < NUMA_LATENCY_HISTOGRAM_BUCKETS; i++)
>   2667                                  atomic_long_set(&node_histogram->buckets[i], 0);
>   2668  skip:
>   2669                          node_histogram->generation++;
>   2670                          WRITE_ONCE(pgdat->autonuma_threshold_jiffies, now);
>   2671                  }
>   2672                  spin_unlock(&pgdat->autonuma_histogram_lock);
>   2673          }
>   2674  }
>   2675
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D2b0KbpAk%2BwgE1ymzmXWNSBZyz7JoF0eHtiOJ7df597Q%40mail.gmail.com.
