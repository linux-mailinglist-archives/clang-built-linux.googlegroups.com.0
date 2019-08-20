Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNGH6DVAKGQEYFP2KRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1AE966AD
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 18:45:41 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id p18sf7478882qke.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 09:45:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566319541; cv=pass;
        d=google.com; s=arc-20160816;
        b=rBJEuykHtwa1nudbew9FAamTiHzO1omeXOyDlTm1FvzvjZRUd9taY/hUxrsU3pX3yo
         TNhz5OVcVJbYVtekBFwb/Ee3EvcLaSetjGVH5BtHJey/8ceoue9hvfC5MwfF3qOBRBr7
         lySjL3y33TMaVqu1y00WiGRwycOs4uYORpTTkmxGMMPumReNBQ0rF3SaPi8kUFX1yMrK
         sXq9ouHxQZU1q0Ja5qJrccw5igUEmfBxNcuoLWF+eScU49E+yPqqTuvUOoSemH45mo+a
         HAARUfsZNmPUK7M5xnxeLxogZWjvCxtwRcDZwkCSC2velTcEuaOrJpc/NgXs7DHUx0rG
         TFQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=X8s6S8U3R9d4+WVkX9gouLIwgLjzA+9oFlZHwuwoYdI=;
        b=bywAgCAaBKjl9deaVeJiiVzXbwrKhSkhGShZqN1t0Cs9rlUdO9ui+u9C8mv9wvj+gM
         I+lJYelizcz85XlcUQ7BR2qwDgHeXvGpBxKiFu6Ivx6xdIRsy4hUlrJZZItVxq55bs8R
         puzi2/96TsBPMyZaBAHSbYG2zyV4/AWu3x4F84mMKtwEgHRgkEh10ECjedUzoqNHwiZM
         Se8MskFLJCNzfaIEyYqKQRk3WGpe/wMGe1Jtc01cXwihhUSLTd6Fp9a1/GQjdL49+t+z
         D/jR6vuboG5vC5x5EkSB4cIcwh49yl2YoJTizYDXRAGU6dzY8jtdraJ2P6pndnR3W0lJ
         6ZeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HjbTVM66;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X8s6S8U3R9d4+WVkX9gouLIwgLjzA+9oFlZHwuwoYdI=;
        b=q4MUS+YufM7fYrJmiRh+h6mLYa9ms0awb31Vvf4hc8uXBFnON/tHyIzxyiZN/AtvZ7
         lWwgyR7/Yk1szZ7s0p7+eg+BnTnDG49O3XYdCflvolbRzfRYbugF3wIzFN/+gjxMBF6s
         zNJRfUesK9l59Xeg/rXW9aIYfnbCoxt7fjTF3ibbIHNeXmcBbcsmE53ZnhaaF5qjPn3E
         SqCo7jLjE6VBhkK4NcIl2jMOf50apZzVjiXhKB3DaKPKLnzxtpePJV7S+RQ8b/9f8hOe
         9Csx0SjsyeiYXwHRxeEpxepJ2U4p6xEcurY4shKGCtQCe8OB+P8wq47usMC+Fd8Ss1fp
         ydJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X8s6S8U3R9d4+WVkX9gouLIwgLjzA+9oFlZHwuwoYdI=;
        b=WNIQDjK1DmKGVOjX0wBX0vB4cJtLXhKjIdqvlc9f5WVlJV+xHYLeqoRSwX43RNwW0E
         alk9siNVwA59OaonV6x9zZ3EeT1PTIvu5RaudO1BAp0Db2klNZabb1pcsI6rx0XRJvi0
         l02gpfLAam7ZZYjnoYWJ4lMrtf3AjK6wSkXC7ayQYhq8jDyK5/mN6bB5g6khUr0rikrE
         13JrJTUpWIt/t91QiUpTljI2qVdpuLq3NM2TlpmDnWzSj2TEPktQyfsXR8ocm9IajU7/
         T/43D0ivAq0j8lyyujcwsikKH7nBqSTf/le2aFTZ8Iz/UgO5oRv+r0b9k8X1SOrXj8SS
         BAqg==
X-Gm-Message-State: APjAAAWP3sadCUQqQsur9hOeMWCmxB+lVtBmvj/m0ZnH0g8Uvs/vxJZg
	wek4Qw2SVtF9t8BuPjP12cI=
X-Google-Smtp-Source: APXvYqxPLGdKTelZ5cbF+hm0MVxVI9psL+QH8n7AaEI+1DHH+cFxzh1V63L2WJ6KXDSAGwOzbJsExA==
X-Received: by 2002:ac8:13cb:: with SMTP id i11mr27289352qtj.262.1566319540964;
        Tue, 20 Aug 2019 09:45:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:75c1:: with SMTP id z1ls3471136qtq.3.gmail; Tue, 20 Aug
 2019 09:45:40 -0700 (PDT)
X-Received: by 2002:ac8:4652:: with SMTP id f18mr11425445qto.5.1566319540745;
        Tue, 20 Aug 2019 09:45:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566319540; cv=none;
        d=google.com; s=arc-20160816;
        b=zKx650mo3215GPXu5CokqNIaEIPalUGda+yztP6Omi1N0N4VxTLqTvRpFsabd+NvUS
         JEHAC9LcXSLdnZEFUssK9txVdnmQLT9lrBM3O+r6foMTgt4iv6MWqt4m4XAnLCmV+JfM
         eZTXcGFJLpfEcX1Y4U/5k9oSnbgcHnyqhszLCj3iVJaapda3vcusdNlJOkDOPWnwG+Jn
         gLseounbWgcxKmZB/dBR4mSYe4DMwGVLd2/PKnnfoFy/GrsKk/yNTEYABZrMCItr/7ml
         cr3VIQoUkFwhrJaz5z84b+AZiRGWK0e408V3hn0YaC+Y2QLhGWydRDhm++4VmOr8hHbT
         omHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jv0N4V6Sfmtf1Pl6Z63NbCIlxINS8WmH/Ya1bGI9zTM=;
        b=CXndDmCCCYQi8Y9djBcHadFeDOdCK6BJz4cpcVhRphto5vcfLd63hmLjWMPrNJRD9K
         UehWuLq5jamqCnJmw8Z6s3n4CsCRw7Rj22oLrx2QkTyn7b2NpNcVhEWARgSYGx0V/MI2
         /tUQNixBnaikNOmGGtubR8ReYTZMUo9bI3FJhOwBHe/oedyS0MEgXfdL5F8ZyFnzCII2
         TazOnSF0gg9Utn3ScGQlYD0j84pootNiagNqJNx/ZF0+tLldb20la3o4FabHNU3R2cTs
         1gjsGgHFdJXdxGl4Aycvcsl37Usac4QP6+AHYoty/OmJMRvuOoV2C5r3B+LPbA4n4p7N
         l9bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HjbTVM66;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id h2si890185qtn.4.2019.08.20.09.45.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 09:45:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id g2so3726411pfq.0
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 09:45:40 -0700 (PDT)
X-Received: by 2002:a63:60a:: with SMTP id 10mr25232074pgg.381.1566319539260;
 Tue, 20 Aug 2019 09:45:39 -0700 (PDT)
MIME-Version: 1.0
References: <201908162005.7Fg7QAeo%lkp@intel.com>
In-Reply-To: <201908162005.7Fg7QAeo%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Aug 2019 09:45:27 -0700
Message-ID: <CAKwvOdnrjjRN1zXGoM=+t_Usv2EHecccDy0vOmLPeCe9jFQGNw@mail.gmail.com>
Subject: Re: [feng:latencytop 16/20] mm/migrate.c:2069:5: warning: implicit
 conversion from enumeration type 'enum migrate_hmem_reason' to different
 enumeration type 'enum migrate_reason'
To: feng.tang@intel.com
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HjbTVM66;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

Hi Feng,
Clang warns when implicitly converting from one class of enums to
another.  If they're meant to share the same value, please add an
explicit cast, otherwise there may be a bug here.

On Fri, Aug 16, 2019 at 5:36 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> TO: Feng Tang <feng.tang@intel.com>
>
> tree:   feng/latencytop
> head:   122e8adaba02569cd18c36a4a66ee43e0d78b04f
> commit: 0090fba8904699bccce17dad9d22e46f2b4f29cf [16/20] swapcache migration patch
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 0090fba8904699bccce17dad9d22e46f2b4f29cf
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> mm/migrate.c:2069:5: warning: implicit conversion from enumeration type 'enum migrate_hmem_reason' to different enumeration type 'enum migrate_reason' [-Wenum-conversion]
>                                    MR_HMEM_SWAPCACHE_PROMOTE;
>                                    ^~~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.
>
> vim +2069 mm/migrate.c
>
>   2033
>   2034  /*
>   2035   * Attempt to migrate a misplaced page to the specified destination
>   2036   * node. Caller is expected to have an elevated reference count on
>   2037   * the page that will be dropped by this function before returning.
>   2038   */
>   2039  int migrate_mapped_page(struct page *page, struct vm_area_struct *vma,
>   2040                             int node, int is_numa_migration)
>   2041  {
>   2042          struct migrate_detail m_detail = {};
>   2043          pg_data_t *pgdat = NODE_DATA(node);
>   2044          int isolated;
>   2045          int nr_remaining;
>   2046          LIST_HEAD(migratepages);
>   2047
>   2048          /*
>   2049           * Don't migrate file pages that are mapped in multiple processes
>   2050           * with execute permissions as they are probably shared libraries.
>   2051           */
>   2052          if (page_mapcount(page) != 1 && page_is_file_cache(page) &&
>   2053              (vma->vm_flags & VM_EXEC))
>   2054                  goto out;
>   2055
>   2056          /*
>   2057           * Also do not migrate dirty pages as not all filesystems can move
>   2058           * dirty pages in MIGRATE_ASYNC mode which is a waste of cycles.
>   2059           */
>   2060          if (page_is_file_cache(page) && PageDirty(page))
>   2061                  goto out;
>   2062
>   2063          isolated = numamigrate_isolate_page(pgdat, page);
>   2064          if (!isolated)
>   2065                  goto out;
>   2066
>   2067          list_add(&page->lru, &migratepages);
>   2068          m_detail.reason = is_numa_migration ? MR_NUMA_MISPLACED :
> > 2069                                  MR_HMEM_SWAPCACHE_PROMOTE;
>   2070          nr_remaining = migrate_pages(&migratepages, alloc_misplaced_dst_page,
>   2071                                       NULL, node, MIGRATE_ASYNC, &m_detail);
>   2072          if (nr_remaining) {
>   2073                  if (!list_empty(&migratepages)) {
>   2074                          list_del(&page->lru);
>   2075                          dec_node_page_state(page, NR_ISOLATED_ANON +
>   2076                                          page_is_file_cache(page));
>   2077                          putback_lru_page(page);
>   2078                  }
>   2079                  isolated = 0;
>   2080          } else {
>   2081                  count_vm_numa_event(NUMA_PAGE_MIGRATE);
>   2082          }
>   2083          BUG_ON(!list_empty(&migratepages));
>   2084          return isolated;
>   2085
>   2086  out:
>   2087          put_page(page);
>   2088          return 0;
>   2089  }
>   2090
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnrjjRN1zXGoM%3D%2Bt_Usv2EHecccDy0vOmLPeCe9jFQGNw%40mail.gmail.com.
