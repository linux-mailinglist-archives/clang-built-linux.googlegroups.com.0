Return-Path: <clang-built-linux+bncBD7YZQWS6IOBB6VM5KCAMGQEWWWQ75Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D0437A985
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 16:36:43 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id x2-20020a9d62820000b02902e4ff743c4csf8230555otk.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 07:36:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620743802; cv=pass;
        d=google.com; s=arc-20160816;
        b=o20OYKO4hcsco1UrXdF7onX8Ip7nEfZiveYOTbLC+DE0AdhU7VH7n46dBh2CeAU+zn
         AfoY8ZUuRoFRPjaiR+xshboZQujK2VStwzp6h5MJBN7MRKcte3NIrCxLyUMNC+oMQU+D
         VxSAhWy5aoTccTrudd6/k0BfdCw+oWg4NrivX+ReEUhJcUGsYaDTqc0ckX3F1mZsG+sK
         hCd9hGGFEyV4P/fAAFzvO0NEJTpi3cjk/OcW/DmE5aGs+CzkrnEocz4yMotfrzQyvOnF
         G/uQE/XXdPfvgrq3RCV0VKboxHkM2JH7vkbWX133VhDcPPVIaVGm0PhYAMOFhNgzcGGe
         swxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Nx2AN5Ymqu4+kUkXi8cv3zDY2xCCGYw+VjEfWzAss8Y=;
        b=mIq2LQ0NQJKaq659ZgKGEMw8mG4Wd3TJKDEAzPGfrFMQI05e8Trb5aSYxMl/8Qpc8C
         UBrskwG1v2vpWu5zbTgriJT7M85zpgEFwcvdWPKFQZDBoz4jV9soKQQhcoaT3JwjHSAT
         zGL12vDsRAzTActbVSg4HhAyRWmLYW9QBz0BcSlTatQnNFcA9Xw8x5MtQNn+Es5F/S2d
         4AO8ZyGQynM3bBamN5KaBegPlo8KSqaVlfc6uHsPRb288p8QH5MPi2IBm0ouV00GmP7R
         kHSjhGqDQPTU/vK198ktYBV1XqyaUBDXa0M71RmyLx60gK9zFVIKVkimEYXgJWIklnuo
         3+4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=T5e7RKJj;
       spf=pass (google.com: domain of peterx@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=peterx@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Nx2AN5Ymqu4+kUkXi8cv3zDY2xCCGYw+VjEfWzAss8Y=;
        b=kEDvkkeEfK6hNlZS7/mZTGnRYBV77f0XkQ0CP5l5L3ULXvDcYoZrTQjvdYuJGZviaT
         Y4eapgqQUvcrgWCgh7tvkzvUUN55NoW4oW85mAsYgNKkqCAXaFQRczxuYjvTOb+O+6BQ
         amnThwM6y8mf+oQ4/ZZTT4K6CTTkjJndlc8AOrPjufKaYB/st+rUDV04ZrFhnBQLzRQW
         cLL7QFBv2HoPyFDp92/lqY8EPPj4fg6uZitBvpMP3GVnhxE93/iVclitc88UmzK9MEwu
         CfWdI2TjENfMiWu3QvChToRs8NCl9HJRgjxegEhBUW5+Pk7ZWghUAzIKT9Jw4FByu/SK
         tUXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Nx2AN5Ymqu4+kUkXi8cv3zDY2xCCGYw+VjEfWzAss8Y=;
        b=q/vE61/Uk9OGNKIDfIYQ/2OF5nWOQXU9I6HzVEDa3t97ZOwNlWeniLOctXMXATZn4a
         sendAwbQ4uhJF9gJXqQr7oIiztzUGktRiCa1Av74Yy19N8Y/ZhROZyzsMQUXtR09j4p4
         A4QDZf0qBHOvIdkKGrW4xxfwzbefKKgZGoII3GsbzZjrBOL/j6qidwOl52aHuUutxDZ7
         Gvly6YchAa0Li8NPXMK+9hxLcXZqR8NPnCTHHSGg2H09pJVTemS6aAz/umpoP+eFDVnT
         U1LrfXyNSlf1fpZWVAXM4dTxuUzT/b6ppI19UPR0xGbvahKXqAkU6afNWcN6mv+hlybb
         23VA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QjjFpSkDEsqGBaJBO89hO7lH7Q3qRHgQj/UJvu8KOx2WFM5rZ
	ugMB0T8QWw4XqdCnrL7C4ro=
X-Google-Smtp-Source: ABdhPJwOC/mspTUtZXHt65eN1wp1+eqvYlCp3tipCq3OpSHVgYod2jhLP5N3qG4ygXqL9LKXnel43Q==
X-Received: by 2002:a4a:a3c3:: with SMTP id t3mr12924288ool.50.1620743802442;
        Tue, 11 May 2021 07:36:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:103:: with SMTP id 3ls4527196otu.1.gmail; Tue, 11 May
 2021 07:36:42 -0700 (PDT)
X-Received: by 2002:a05:6830:17cb:: with SMTP id p11mr27590406ota.283.1620743802067;
        Tue, 11 May 2021 07:36:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620743802; cv=none;
        d=google.com; s=arc-20160816;
        b=Ifua8dN1wxv/ivu4qDe0DP97cT38No3nKMyDLTKhTV0iy0dyPgjbPrBeWbY+O8RZ/w
         d/p0sewbkpwHXq/fAKdINXWEvOv+eZBGFMDVftYWUGMbTbb/JZhKtH0rqMHNOh6ffJAm
         O9Dicu2HOuH6kiLJ4GUReZCM0GRS2eZdAWIUg43EqR0YYRZMjK93aAdmZKy1l0aGgrm/
         aCmaPCQr04A7f9ipvyLmXMTZK2/DR/R/BcAam0uB9m9Vh0nbcFar3ffSmLYTj3KsF3cI
         5CcglPKgY6zX9vyWeT/W23YcphXlUscRGNDxBNPRzkyUL9wHhmRxQLDj4aEjBhiRT1D9
         AuNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KsNAe34V0BslJEbFdz8rXNcXWHkkt7gNFm1u5f5Z7DQ=;
        b=Y9D9FVkYqdalLN5nMN5VkKwUfU7FQGJpvr1gg3ag4lf0CK7wj3W0Jj8+LmUXePuRbw
         JbgC0EnGlPEsC7/Gr0UWLQNPB1dFrL/QVNmCcYela4AeaCZy7ooziy75RbdtWNI/g+m9
         xq3LGwJuEwI8K9Us9qZzkKz/yDPsqUa4X5g1zoTtmHxaybbYT/bgWpBDFhasQuJnGlhj
         Hnv2Sh6ECj004llB3sHiMTksKMXbHsMLJ3iC0HkC9n/z3o4oSH5FweNmelQgGlsbK7oZ
         p2PW7EVnbWaHYItl6LllbBTcD/qRoEWIjiqwlrBE+aGpAtVp0NPNnMgt6uvWHMqs2k+V
         Vlpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=T5e7RKJj;
       spf=pass (google.com: domain of peterx@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=peterx@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id l24si2147485otd.5.2021.05.11.07.36.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 07:36:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of peterx@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-506-8BSrhNKkPWyJyANr9FrS6g-1; Tue, 11 May 2021 10:36:39 -0400
X-MC-Unique: 8BSrhNKkPWyJyANr9FrS6g-1
Received: by mail-qk1-f197.google.com with SMTP id i62-20020a3786410000b02902e4f9ff4af8so14563085qkd.8
        for <clang-built-linux@googlegroups.com>; Tue, 11 May 2021 07:36:39 -0700 (PDT)
X-Received: by 2002:a37:b107:: with SMTP id a7mr546551qkf.366.1620743798691;
        Tue, 11 May 2021 07:36:38 -0700 (PDT)
X-Received: by 2002:a37:b107:: with SMTP id a7mr546528qkf.366.1620743798410;
        Tue, 11 May 2021 07:36:38 -0700 (PDT)
Received: from t490s (bras-base-toroon474qw-grc-72-184-145-4-219.dsl.bell.ca. [184.145.4.219])
        by smtp.gmail.com with ESMTPSA id p190sm14096216qke.13.2021.05.11.07.36.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 07:36:37 -0700 (PDT)
Date: Tue, 11 May 2021 10:36:36 -0400
From: Peter Xu <peterx@redhat.com>
To: Andrea Arcangeli <aarcange@redhat.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [aa:mapcount_deshare 20/27] mm/gup.c:2756:3: error: implicit
 declaration of function 'mm_set_has_pinned_flag'
Message-ID: <YJqWdPZEro8Thkcr@t490s>
References: <202105111829.jGDViOAc-lkp@intel.com>
 <YJp5G5gdySlpVHwV@redhat.com>
 <YJqTa+FXy2g/kvEU@t490s>
MIME-Version: 1.0
In-Reply-To: <YJqTa+FXy2g/kvEU@t490s>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: peterx@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=T5e7RKJj;
       spf=pass (google.com: domain of peterx@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=peterx@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, May 11, 2021 at 10:23:39AM -0400, Peter Xu wrote:
> On Tue, May 11, 2021 at 08:31:23AM -0400, Andrea Arcangeli wrote:
> > Hello,
> > 
> > thanks to the report.
> > 
> > Peter, this isn't immediately clear to me, is it perhaps something
> > related to clang?
> > 
> > This is commit 8dec302e87453234fc7ac1cf4d09e4d577a06cf3
> 
> Andrea,
> 
> I guess it's probably a NOMMU arm config so the helper got opted out as I
> errornously put it into a CONFIG_MMU block without noticing..
> 
> So we may need to squash below into that commit.
> 
> I really should think of something to avoid such errors in the future, as this
> is the 2nd time happening at least this year..  Probably I should always start
> adding helpers at the beginning of files so I won't overlook any macros..
> 
> Thanks,
> 
> ----8<----
> diff --git a/mm/gup.c b/mm/gup.c
> index bb130723a6717..0223644d0c61a 100644
> --- a/mm/gup.c
> +++ b/mm/gup.c
> @@ -392,6 +392,17 @@ void unpin_user_pages(struct page **pages, unsigned long npages)
>  }
>  EXPORT_SYMBOL(unpin_user_pages);
>  
> +/*
> + * Set the MMF_HAS_PINNED if not set yet; after set it'll be there for the mm's
> + * lifecycle.  Avoid setting the bit unless necessary, or it might cause write
> + * cache bouncing on large SMP machines for concurrent pinned gups.
> + */
> +static inline void mm_set_has_pinned_flag(unsigned long *mm_flags)
> +{
> +       if (!test_bit(MMF_HAS_PINNED, mm_flags))
> +               set_bit(MMF_HAS_PINNED, mm_flags);
> +}
> +
>  #ifdef CONFIG_MMU
>  static struct page *no_page_table(struct vm_area_struct *vma,
>                 unsigned int flags)
> @@ -1270,17 +1281,6 @@ int fixup_user_fault(struct mm_struct *mm,
>  }
>  EXPORT_SYMBOL_GPL(fixup_user_fault);
>  
> -/*
> - * Set the MMF_HAS_PINNED if not set yet; after set it'll be there for the mm's
> - * lifecycle.  Avoid setting the bit unless necessary, or it might cause write
> - * cache bouncing on large SMP machines for concurrent pinned gups.
> - */
> -static inline void mm_set_has_pinned_flag(unsigned long *mm_flags)
> -{
> -       if (!test_bit(MMF_HAS_PINNED, mm_flags))
> -               set_bit(MMF_HAS_PINNED, mm_flags);
> -}
> -
>  /*
>   * Please note that this function, unlike __get_user_pages will not
>   * return 0 for nr_pages > 0 without FOLL_NOWAIT
> ----8<----

Btw, there's also a space issue with the patch (we need to reindent
mm_set_has_pinned_flag so to use tabs rather than spaces), otherwise checkpatch
seems to complain.  Sorry about both issues!

-- 
Peter Xu

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJqWdPZEro8Thkcr%40t490s.
