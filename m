Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHWF5P2QKGQET62NDZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F6B1CFCAA
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 19:53:35 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id a5sf12528954pfk.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 10:53:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589306014; cv=pass;
        d=google.com; s=arc-20160816;
        b=iuABx2Q2/5noow5pHYHULg++4jqSby/SVpjCPJx0Te34a2xK7M/RG/5orkT+ufVysp
         +2jvrwsae80eNpAZVCWoMhFcwHo0PIwClJCi1dpc875aZt/vYX56qVX2IwDzjWk3Aah5
         /mvnOMNMNzsSUlCN6sgDj+zJ118bRptozt3vpB8G3zGSEcpT1ky9/Wt98rWUYfav0IQD
         E+2KmoT202xEqroILOjMrtcehzxapNplmsmzX82PsMseuh3cOdmSnKy8B3tre33J2qME
         ba/p1Jlcd1Nk2Vc3zDqhxZmUd4/GmpPcbnTbmVw9AYOQpP0TmD2nK4Bo+roeqmxWsjKv
         zKYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Z0+diA5DAp7rrCf/BSIU13jaVCAt5du4CuEgw2Rre/U=;
        b=DheotQ1mnzblaTer8og5Hen2sq0+rUvWEsz8ZRtdN+rV7srtk/fzmCQnSuEkL3bBYw
         eBj59Vb4nB/Xe7OFbpb4TSK0uU57jqH3BjxwEFs3XB37S296ebeRJtLJPPVtDXVCN3Q8
         8xQGIBc+cerQqAt46P6czpuh9TC2d0FqMAsnESv/0O3YNjFQRMGaJNPe4Sh4KJx0SF4f
         itPSxAJG8Z44JVjmmNNv2BmGx+q0GIYmhZ5X7aHOPTpism4wc55J7dBWFNAs2ypM900d
         TtoIuAhnIvJk3YiNm0tDINDHVUh364NstZPKdqjSajNvth4C7y83aO9Kxm0Y2VLbyPt2
         l7xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LhTXJky1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z0+diA5DAp7rrCf/BSIU13jaVCAt5du4CuEgw2Rre/U=;
        b=BSqru2zYFktdlOTbyJtPrjPYOZyirnjSCj1GOeTxwiYM6UjGZeohLj88OWNxUfJVRU
         1VM7hfF/3tiq5K8O4g20Ikcz42wgwOCe8MVQO7xyi8F3kK9zipoT4OmuCIY71dkzQ+Xw
         IY8ozARkLJrxbC2W/fwFqOrk6hzSqepIJgFzchjQ4tz0Zza0Ep6gNtZH5pJRr50OfgWM
         ztBCQf5UBLWF3f7xRvpYJsht4KhrUioubGok1Dr7pXpF7al+gWa4Jr5Wx4qcNiau0TpU
         mrvhuEUEozCmw4kSkSilY0KRMFqyb/mmpoY9MtJy/NaQk8hMGaXz4l/GXHY7c9OzHUhe
         mHQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z0+diA5DAp7rrCf/BSIU13jaVCAt5du4CuEgw2Rre/U=;
        b=pyrB/miJn64H009Wxi1N47cqcsgTneRE35sJy0nDvrjE0e0iaHeIDoyL1S8S+YcfxZ
         I+9+q96NXdBsICCxBN6H3MZ/OnlmVjr85jG7iJ2UHZE7iQm7gINYidvZJXDcqNek4ehW
         UuocVBxObfDmaw4RNVvljbB8Ci4NnF9ZaBBBwRj5UE8aytQ9y1ZelpNT5qymCDkOGROI
         8I/CXiwbnOdDA0FNYhDXJ5miyQy4WDFDJ6rJ6cy8LsVlity8YgaQPJQEbR7YzNsZ/jMn
         jwaJtp1Dh2LWM/evSFLldJl8RJ7ppaBgifi1AvLZDEUnyGamFoQEfbwgEi0jkk3UWx+x
         K67A==
X-Gm-Message-State: AGi0PuZUbu4VuxU+H08lXZlIO8AovqmT34bsGTsjs4K9Fjqab6tJgutW
	0xH9olC6Hv7F0uh3rCXp214=
X-Google-Smtp-Source: APiQypIsyWyo8nV5zOpPoeHLmDR/5I33jm7ANAPoqD5585QS+M0qpScF1M1V/lMiQy8z1CvTG4jtug==
X-Received: by 2002:a62:1452:: with SMTP id 79mr22159179pfu.108.1589306014631;
        Tue, 12 May 2020 10:53:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2944:: with SMTP id p65ls1413171pgp.2.gmail; Tue, 12 May
 2020 10:53:34 -0700 (PDT)
X-Received: by 2002:a63:712:: with SMTP id 18mr9920664pgh.96.1589306014220;
        Tue, 12 May 2020 10:53:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589306014; cv=none;
        d=google.com; s=arc-20160816;
        b=F52kNs7patCHrYY4xH/HPkkJPDSRb08ri1UvQEqKSQqTwjnQ9t4K3bmEO1eYcCnu/F
         +slPe/4SzNaVimLQ4faJb8OelaSDiAVRq7A/mJGkgfsF/IOiCXtQf0Wq1er9rbqfAibO
         3yJtd/ICRA85dIidipgobbxE9kq7EZwt9CZAqYFN6/XWDnW7uxbl2HLA+Yp29QCBp3DM
         gmvoXKjE9TL+KAIsmnL7KbPy2aFz2groQYGaMNJBZKNg4oE3Ma+Qk3cBWrJoedY52MS3
         dl97bzZbpEpPwCr3lR0J0aMBwz9ziELI7TB2NQoZBh+bCwlTLS+wIL+D+RzCTWfu4KVC
         0Tcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NFN7gxqWaZ3YkC9qeEMk0Yks4570DH54lSu80CUMPHM=;
        b=GuVvXriTbvVW3B3ysCVDlI3L7CLMaNRVNCTap+K4ItbbgvQKFWP76jJsLonUrfGSFQ
         e1ASBTbSfyUYbLl6iNXNUs9N8r+MiuLlAGuhbzAwR6scUcV6u0Wa0bIp0XFLzSDD30QN
         5mfcQLPUoz+poWaYm/V+adRRq4qan25zfS5i6H2Y0YjHSh2SDgQnasMKqOObNfFKNn6V
         DE9r+qAlEiOXj9sfWDFuYLD/sj49CW4JorbDQ5AtKrSOFNt5VK6qyE4VCxMQkAPf0em3
         6Lv0Krs3KTnjfV81EfbP8l3/5o/1dSiiQYrZ7L1pCWFHDb9De1vD0yHTh4xNYLrfcIsX
         O23g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LhTXJky1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id x5si400391pjo.0.2020.05.12.10.53.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 May 2020 10:53:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id a5so9883725pjh.2
        for <clang-built-linux@googlegroups.com>; Tue, 12 May 2020 10:53:34 -0700 (PDT)
X-Received: by 2002:a17:90a:2a4a:: with SMTP id d10mr4391072pjg.32.1589306013668;
 Tue, 12 May 2020 10:53:33 -0700 (PDT)
MIME-Version: 1.0
References: <202005120804.nsmIMr1X%lkp@intel.com>
In-Reply-To: <202005120804.nsmIMr1X%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 12 May 2020 10:53:20 -0700
Message-ID: <CAKwvOd=+43yo8xaSvbgU0f4MWdZVxdKr7vhjY86QK6UKGGunsw@mail.gmail.com>
Subject: Re: [drm-drm-intel:for-linux-next 4/5] drivers/gpu/drm/i915/gt/gen8_ppgtt.c:392:24:
 warning: duplicate 'inline' declaration specifier
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LhTXJky1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1035
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

On Mon, May 11, 2020 at 5:09 PM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   git://anongit.freedesktop.org/drm/drm-intel for-linux-next
> head:   1c8ee8b92fb6ac9d5975147cc902e8c142eca338
> commit: 84eac0c65940d9633247b0c8c826d4bcb7307351 [4/5] drm/i915/gt: Force pte cacheline to main memory
> config: x86_64-randconfig-a011-20200511 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 68a9356bdea69dbcec1233f8b1fab47e72fca991)
> reproduce:
>         git checkout 84eac0c65940d9633247b0c8c826d4bcb7307351
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/gpu/drm/i915/gt/gen8_ppgtt.c:392:24: warning: duplicate 'inline' declaration specifier [-Wduplicate-decl-specifier]
>    static __always_inline inline void
>                           ^

IIRC __always_inline expands to `inline` plus the __attribute__, so
you don't need __always_inline + inline.  I hit something similar
yesterday with `noinline`.

>    include/linux/compiler_types.h:138:16: note: expanded from macro 'inline'
>    #define inline inline __gnu_inline __inline_maybe_unused notrace
>                   ^
>    1 warning generated.
>
> vim +/inline +392 drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>
>    391
>  > 392  static __always_inline inline void
>    393  write_pte(gen8_pte_t *pte, const gen8_pte_t val)
>    394  {
>    395          /* Magic delays? Or can we refine these to flush all in one pass? */
>    396          *pte = val;
>    397          wmb(); /* cpu to cache */
>    398          clflush(pte); /* cache to memory */
>    399          wmb(); /* visible to all */
>    400  }
>    401
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005120804.nsmIMr1X%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D%2B43yo8xaSvbgU0f4MWdZVxdKr7vhjY86QK6UKGGunsw%40mail.gmail.com.
