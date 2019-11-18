Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVGBZPXAKGQEMPVJ27Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 92475100B60
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 19:20:05 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id q1sf17077037ile.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 10:20:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574101204; cv=pass;
        d=google.com; s=arc-20160816;
        b=PMRJC3V2ubAJTG6Ks+i+X+Rk8Rdlb85ACMu9MDmIXgQcvKZHjOqPUCOOUZIqluw/xO
         8qHsRImSVuR27h8K0Qk1/qt8HTAERo3+psWF2KNnGCX5FiMP6xYH9Cipu9E9+eLYKVkd
         XwPKetHo4lyvWqykv4CfH/n4To5l6AHMElFAxwafDFElplGZQe5U1bnD7Peo93nLkuIa
         Ow8VFg3mcaZFER85yY8BOWRyeNwVs+Ziu+KqdN25Hh2vQrIonMuXhDx6UuY0rFcEG4fo
         a44jWphZStsrbkp78lov2Q1YVAbcrMHR1bG5aIwYh1JMMIZxhdXX+FipsKAXok87QbH0
         +FnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JERHxs/a8pFhv3kawTFQl+9jnWDemFhkeJSyLol1FPU=;
        b=gwU/QW7ZUlcY2t0aOfyTcpz3ZPw2d3HnLUbUKt3ioXlSiCqgNi87v1rxBg8ArLdQEJ
         j+yhT+PJnf2X2p29MJcBG6S+o8gdjbsT51UGXQ87hoQ/SL/fAVLsZszKaDwHHQeLpizR
         h/X1QhIFWB1TlhOSNFylYsRZ6tPc+jihd7TQfOW6KrmiuppxC1MG/rzLPNEsFZ7FanXD
         BWOpwciXLp/BWrX58aQM3TydAPrBqDr9TwQUd5kFfXwS/g1z6phLBxC+iCbqYhWGINRV
         KwOe3ml/gnHaC7pqQi5bebxuzU7unHq5HyZ74NXotoKRodqKEBA026CWIIUSIvmc4Zqq
         PJug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LOmfDMUE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JERHxs/a8pFhv3kawTFQl+9jnWDemFhkeJSyLol1FPU=;
        b=itE7dWfrmXErw/64ZUs7apu+766F3rMQPjlfGbna8jIKfQQ3HZfmLP1Ww4LOICnL5i
         Oj+DQsoKSxWRh7ir15Ha0vQ9BGl2Iubivka5XalI3Tb2ZchAImOBmofcBMfOdOG8IBRo
         JD59KC9LaGq7JvLGzXcro81LRgZJA5KFQaBtwQzlxo5X+KrSYSvSHsdcKFiDUignEf5l
         /PESvhOdBkD0TW8YwraIt2m52MWNQgjfLQujPMiRGf/+EIE5x73coop56mW9p4sTBCwe
         Ao7S+KGV1pefGUIVF0s63NFl01A/W3Mv+9z2nlaK/paUUbqjP4et2h1giF6FZFAuOV92
         uZ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JERHxs/a8pFhv3kawTFQl+9jnWDemFhkeJSyLol1FPU=;
        b=onTA4NXDBux9uUHqsavH0TnDLSIBNG7zg9otxkfIaqKqmMCz4rh6N5RO3LKIQ07crb
         yXywIutZ3bBGl/D36YTTErx3mFwJAlqQCKIgK3HlJsqr5nliOSQmoSYveOXINkL5iS6D
         9cP3NdHK7OUBbQEwekLPXMNzXkBKQZQOQm3cwSpwShRDDHvssYtaN24nBmv0d/OxOfb6
         HCze/dgQvvpuLdlSilpO823CG+LaoRSLO/I8dPZ0dScXC7tTdFeuc9DMq5zcVjPVelca
         nx05wmwKBPhFcoPDkrnf6t+ilSRqIZanyOlbtA7eRz7mX+da6wp2GaIjs6FoHi8Xg9vp
         7G8w==
X-Gm-Message-State: APjAAAW7JCvskgc6w8TpsqRUgXi+niiPeuHx168r8KxqrGbY/Px9Rf9F
	2sTlBRaV9iH0i44rg0+tJSY=
X-Google-Smtp-Source: APXvYqy0HZtx0v4C4SwRKrNrG7IRt6SCrVjoyrGK22TR8YKT+AMC+zNCnH+h963A34TzBxRvdqXZUw==
X-Received: by 2002:a6b:6e0a:: with SMTP id d10mr10586107ioh.111.1574101204483;
        Mon, 18 Nov 2019 10:20:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:397:: with SMTP id y23ls1340244jap.14.gmail; Mon,
 18 Nov 2019 10:20:04 -0800 (PST)
X-Received: by 2002:a02:c54b:: with SMTP id g11mr15026543jaj.136.1574101204016;
        Mon, 18 Nov 2019 10:20:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574101204; cv=none;
        d=google.com; s=arc-20160816;
        b=NYEwb9m7wTnnN7c7CWk9G7vjI7rgpNeU6zjWjN6zSE4EGyunip6XeU9vdLfifyuXG9
         8uEWf6EPSezvwAUDPud/sNUJg7q+y/ei8WD7AFPFd3nm9JqlcS8cl+573LEtNONiLlWz
         9C1r1S+b0Qlsk1v+r5YdF1B1GOL8bctiwL7wEBIzUbMV8y7LMp6ozifRFXEmzIIa8bF4
         TMsGMlH5/L3AoKSZGd0BaTzvAM8fFzELiQkL1Wy/vuE80Xt/+UA/kYdri4DJippexRHT
         d+51zer60qqA9ujkf84NzjRnnf4LqNzY/+0NaqLeLV0aZOSuz86fvGlc04m+lW5sTXLt
         pI/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xHxaepY/XsExcaoO9ZBZCDqbAjqKRJghjQ9vW9q/pQY=;
        b=DswuVkFOtyZt7QPl/Ft2NF7UyCed3Qy4TOOmulR7KMLqCcupn6Mvqpiq8hvITEWhMG
         yiQLW4iiXF1Wa6LxnFRXCC4f9zj8lJ7uEz7aWjZi1BFvVwkAdMs2bzY+ba8tU40wsT3B
         mRlSN637k9QDroJb2KQDowOuk37iA/egpjbBKPlMfcm2l+VF83lQEwhV1oc1VJpbNb6p
         sBxXc/sIX11DKcXFIG4sKB6cAN672yd6lXNWz7b0+pP/6DeCW67hsw/UfPKYyo/wUuBW
         lAN/mMaegc1yVlr96Ny39HwYNAhJZMBmxLX7pFz44FpMFUPj5aCAIN9yeGfQVxm4UBeN
         mpKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LOmfDMUE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id k11si1116011ilg.4.2019.11.18.10.20.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Nov 2019 10:20:03 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id d29so10229128plj.8
        for <clang-built-linux@googlegroups.com>; Mon, 18 Nov 2019 10:20:03 -0800 (PST)
X-Received: by 2002:a17:90a:be05:: with SMTP id a5mr387048pjs.73.1574101202963;
 Mon, 18 Nov 2019 10:20:02 -0800 (PST)
MIME-Version: 1.0
References: <201911160531.VrqGMTij%lkp@intel.com>
In-Reply-To: <201911160531.VrqGMTij%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 18 Nov 2019 10:19:52 -0800
Message-ID: <CAKwvOdk70dd5F7JjZW5oNaSkQKh8_3P9D8VJ7aPpgx1vYw8Uog@mail.gmail.com>
Subject: Re: [linux-next:master 11878/12136] mm/vmscan.c:2216:39: warning:
 implicit conversion from enumeration type 'enum lru_list' to different
 enumeration type 'enum node_stat_item'
To: Johannes Weiner <hannes@cmpxchg.org>
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	kbuild test robot <lkp@intel.com>, Suren Baghdasaryan <surenb@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LOmfDMUE;       spf=pass
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

Hi Johannes,
Below is a 0day report from a build with Clang, can you please take a look?

On Fri, Nov 15, 2019 at 1:44 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> TO: Johannes Weiner <hannes@cmpxchg.org>
> CC: Suren Baghdasaryan <surenb@google.com>
> CC: Andrew Morton <akpm@linux-foundation.org>
> CC: Linux Memory Management List <linux-mm@kvack.org>
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   5a6fcbeabe3e20459ed8504690b2515dacc5246f
> commit: 07976d367592d6613370c93706795b4ebc0850f1 [11878/12136] mm: vmscan: enforce inactive:active ratio at the reclaim root
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project f7e9d81a8e222f3c9d4f57e0817f19bbb795e5b6)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 07976d367592d6613370c93706795b4ebc0850f1
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> mm/vmscan.c:2216:39: warning: implicit conversion from enumeration type 'enum lru_list' to different enumeration type 'enum node_stat_item' [-Wenum-conversion]
>            inactive = lruvec_page_state(lruvec, inactive_lru);
>                       ~~~~~~~~~~~~~~~~~         ^~~~~~~~~~~~
>    mm/vmscan.c:2217:37: warning: implicit conversion from enumeration type 'enum lru_list' to different enumeration type 'enum node_stat_item' [-Wenum-conversion]
>            active = lruvec_page_state(lruvec, active_lru);
>                     ~~~~~~~~~~~~~~~~~         ^~~~~~~~~~
>    mm/vmscan.c:2746:42: warning: implicit conversion from enumeration type 'enum lru_list' to different enumeration type 'enum node_stat_item' [-Wenum-conversion]
>            file = lruvec_page_state(target_lruvec, LRU_INACTIVE_FILE);
>                   ~~~~~~~~~~~~~~~~~                ^~~~~~~~~~~~~~~~~
>    3 warnings generated.
>
> vim +2216 mm/vmscan.c
>
>   2180
>   2181  /*
>   2182   * The inactive anon list should be small enough that the VM never has
>   2183   * to do too much work.
>   2184   *
>   2185   * The inactive file list should be small enough to leave most memory
>   2186   * to the established workingset on the scan-resistant active list,
>   2187   * but large enough to avoid thrashing the aggregate readahead window.
>   2188   *
>   2189   * Both inactive lists should also be large enough that each inactive
>   2190   * page has a chance to be referenced again before it is reclaimed.
>   2191   *
>   2192   * If that fails and refaulting is observed, the inactive list grows.
>   2193   *
>   2194   * The inactive_ratio is the target ratio of ACTIVE to INACTIVE pages
>   2195   * on this LRU, maintained by the pageout code. An inactive_ratio
>   2196   * of 3 means 3:1 or 25% of the pages are kept on the inactive list.
>   2197   *
>   2198   * total     target    max
>   2199   * memory    ratio     inactive
>   2200   * -------------------------------------
>   2201   *   10MB       1         5MB
>   2202   *  100MB       1        50MB
>   2203   *    1GB       3       250MB
>   2204   *   10GB      10       0.9GB
>   2205   *  100GB      31         3GB
>   2206   *    1TB     101        10GB
>   2207   *   10TB     320        32GB
>   2208   */
>   2209  static bool inactive_is_low(struct lruvec *lruvec, enum lru_list inactive_lru)
>   2210  {
>   2211          enum lru_list active_lru = inactive_lru + LRU_ACTIVE;
>   2212          unsigned long inactive, active;
>   2213          unsigned long inactive_ratio;
>   2214          unsigned long gb;
>   2215
> > 2216          inactive = lruvec_page_state(lruvec, inactive_lru);
>   2217          active = lruvec_page_state(lruvec, active_lru);

Look like lruvec_page_state() defined in include/linux/memcontrol.h
takes an `enum node_stat_item` for its second parameter, but `enum
lru_list`'s are being passed instead?  I see what's going on with the
definitions, but a function should be used to safely convert between
the two different enums in case their definitions ever change,
otherwise we'll continue to see this warning.

>   2218
>   2219          gb = (inactive + active) >> (30 - PAGE_SHIFT);
>   2220          if (gb)
>   2221                  inactive_ratio = int_sqrt(10 * gb);
>   2222          else
>   2223                  inactive_ratio = 1;
>   2224
>   2225          return inactive * inactive_ratio < active;
>   2226  }
>   2227
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk70dd5F7JjZW5oNaSkQKh8_3P9D8VJ7aPpgx1vYw8Uog%40mail.gmail.com.
