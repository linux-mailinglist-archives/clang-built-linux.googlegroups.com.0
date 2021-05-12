Return-Path: <clang-built-linux+bncBCTZFA6ZZMMRBNGZ6CCAMGQEKK3HFCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F99737D3DF
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 21:29:57 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id 78-20020a250b510000b02904f953c1fb64sf4177295ybl.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 12:29:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620847796; cv=pass;
        d=google.com; s=arc-20160816;
        b=cCi965QqiuWVIRHE0NU6FdvFdhhkIoYTnaLa5tuIl14oTRuvF/GHAf0NbVRK7OBia3
         cb7fxX3t7uwmrVaOc64PD43A7QItSv9vn5n8IopKmLmIYAXVyW5Ee6IoshP7ZxS6lr5N
         xWJ1VIK+N2k0c6TTDFtttP+4Nd/pvX/rArUiYI1LMNEC5phwK/jCksF0qc0Tx3J8iyhH
         gbIuqW0thvKBB2JLtoNqzyk3tvxUG611epWJpLJRh130rfp0zTyovSEq76WCwC0NMSXc
         yXgxPJ/7iTeqRFdl6aRdTf9CGM3fInmygQ7wGCrpXEcT4TBl1fthThdgA+djd8nDDu6h
         tuiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=e3kuq72UcSfAa3wlKFnlxqgl/HPYCtAWXtRYvEdm99g=;
        b=bR+25+etYlk9rvWeeBhZ0OmCG90+6g377xWlDNQf5BKXdAtiFTR357zPWe1w/LOmll
         QddpkgLkmXI2LPSKeQrA1ENO5xLO5+jBCWiCTiHxO+Rk6FF9JJnLF5rLop4zWdm/80ZU
         reWHZzJ21uitNIiFjqCMtaKjW9V9wv+m7avUWbmXEpUzA369WVLScajcrtvFDfYR7UXY
         A4d11a4LtuLZgIcXVmyjh/0KnZAaT5+4ER0Ckb+Q8Ppp0tdmR/1CU0MX9/lF2NhIDxsI
         eVn0c/8MXvPGpZBuHsbAexEn0AXiWfqQi6qw05hsRVCivn83hL7Mtan4o3NRxsgKZLmA
         /b7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WKtVDfyE;
       spf=pass (google.com: domain of axelrasmussen@google.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=axelrasmussen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e3kuq72UcSfAa3wlKFnlxqgl/HPYCtAWXtRYvEdm99g=;
        b=VHQw3B3/fo9Bez9BLqb7Pxv9Gko4sK+ffgUd2Pe1gWlasNAj0fpXsDhfPjFlaviry8
         c9lGopB7HNwdYapv85EvXE/EXh6KpbLJKKSGntnE13flIRtd5KdhH9je0vRPfvWhwZwc
         PRuJfb9xjgnjaPtYUH8VZVZlgBoDJyCzeMKcbovCNTY4y2hhm5ukRIEvB8hjM0q+IC2/
         qii+OQkC+KsdP4uwGwzxBoWsQ9aljmLqTOc3H3p1H0lWBv7DepcxFD5nXLB9Ee4QX61S
         2xIC88Yc84xK4oh1nDPYee01ER1PnxsIF+p24z3cZWnrLEquip2/m2X4SBJSBGSbJJHj
         vn3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e3kuq72UcSfAa3wlKFnlxqgl/HPYCtAWXtRYvEdm99g=;
        b=STYwLggo8SAELb1qYJEquvfBFZ5wkePiy3F9W5pVsdvHE6qYpZBc0dz48Uk46sTcT2
         HdCiSjpGuuO3cmG3msRVaodvIriO1HQVeLLEMRfPs6dxOepNz6dg3TsAUgYi1fGK2l7o
         y2+zzVyqDCpwPHuUywvgjVOI/r1MYVtsIR4Gi40N35eqil0BDE/btIQcfajKkjAAXeZ/
         lE3/dqS7qpm4e9OBN92Z1ylDFKYaY0/N28d13tAu4eExYTEXqle7lMR4dfY+uOrWcMHY
         YYMwLivy/YKwQp2KZKalDU0k5SAZmP6eG7/lsoQS//TsHMJ1moil3zOSnJWXaEdPvExz
         Ls5w==
X-Gm-Message-State: AOAM533lVd/FlHy3pRY0yaEdPwdwwZpOVqpuEUMYIkrJ3U7cY92h8o84
	row7wUNJdRWRf895xCkNnFw=
X-Google-Smtp-Source: ABdhPJw2+nqqiQ2DMEBZFVc1RcQvFkueXg2F4KLeaBi2OOR9eBKcHQs6SlYZRK9bmeYtoGlqsRC27Q==
X-Received: by 2002:a25:8803:: with SMTP id c3mr16835181ybl.115.1620847796519;
        Wed, 12 May 2021 12:29:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls1566811ybc.2.gmail; Wed, 12
 May 2021 12:29:56 -0700 (PDT)
X-Received: by 2002:a25:6a89:: with SMTP id f131mr88965ybc.256.1620847796041;
        Wed, 12 May 2021 12:29:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620847796; cv=none;
        d=google.com; s=arc-20160816;
        b=VbmNkCTeqLKYz+IljRdIKfWv2SDGYJhRaMcvEAY/9nS0jgxI+Slc5jFsk797YuEca4
         Tv6r/tY01qXiv/2nHIfOcanvgOw+/fp17ndxPXUADxz39BMo2KBzVYq5oIuN3y8TKQvp
         34oR5wi+q40zH+2ALfZ6qgGrVnCnfph5cBmvnHlV4Owp9GR2RCOaqXzhZhDMCh0hN+9a
         K9008cf5y948gCABngFwKKnQtyJ6tOIGF753c0Hqhp6iaEprhsa2fBBkYg3Z2F3gQ1Up
         ept9pfhtjuk39WDwl17ex6NnXVku1XguyMjeXCuk2gRFVbqm08nbBxytVrGgZJAKdjlW
         aniw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fXSEYjzURqZe/rhzGwaoLJmTe5r20EicuqgCItC3qOU=;
        b=z9/3FdLXj88FnMB0WvSbFDQ6/gv61vqdN59u/Y6p0d7b0xB+wwOVYptCdmjFvWGDAi
         WBBjIcBILH+pMmdrMCJ3NzgzCA4CNgekNJfhCZ9yNylc7MBmYSFSoY9tX+vyKOh9qU/X
         eLD7knn6RRWE6tje4jBgYpBlr5EW4rEh0adT8d2sacpSkNjsbTYyI/hKjpBHFvFVFStD
         SrwAR9aRRGksN1u/gw45CBIa7NzlW9jvVAeQNI4OVd479wEFrxWUrJKHFkOsuMNdBNHH
         K5Yh2KTAR7e/ArSKHbrcUzm9DJrOki9Zlj5b972JHw9B7283DT74wXbcHA6SxkMiaYox
         eZPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WKtVDfyE;
       spf=pass (google.com: domain of axelrasmussen@google.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=axelrasmussen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com. [2607:f8b0:4864:20::d34])
        by gmr-mx.google.com with ESMTPS id f9si65178ybg.5.2021.05.12.12.29.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 May 2021 12:29:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of axelrasmussen@google.com designates 2607:f8b0:4864:20::d34 as permitted sender) client-ip=2607:f8b0:4864:20::d34;
Received: by mail-io1-xd34.google.com with SMTP id p11so22763371iob.9
        for <clang-built-linux@googlegroups.com>; Wed, 12 May 2021 12:29:56 -0700 (PDT)
X-Received: by 2002:a6b:b409:: with SMTP id d9mr26771251iof.57.1620847795421;
 Wed, 12 May 2021 12:29:55 -0700 (PDT)
MIME-Version: 1.0
References: <202105122224.mJzg3ncL-lkp@intel.com> <CAJHvVcgMpveuO0VEM4Vr2op5m0Oso3ghW4f0HuFL7DgbZ8HcqA@mail.gmail.com>
 <alpine.LSU.2.11.2105121123010.4486@eggly.anvils>
In-Reply-To: <alpine.LSU.2.11.2105121123010.4486@eggly.anvils>
From: "'Axel Rasmussen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 12 May 2021 12:29:19 -0700
Message-ID: <CAJHvVchkv1Y5sBD94ZPxGp0UnJtLZr1EdNov96f471Pjc6HVPg@mail.gmail.com>
Subject: Re: [linux-next:master 2078/2633] include/linux/hugetlb.h:340:30:
 error: variable has incomplete type 'enum mcopy_atomic_mode'
To: Hugh Dickins <hughd@google.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Peter Xu <peterx@redhat.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: axelrasmussen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WKtVDfyE;       spf=pass
 (google.com: domain of axelrasmussen@google.com designates
 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=axelrasmussen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Axel Rasmussen <axelrasmussen@google.com>
Reply-To: Axel Rasmussen <axelrasmussen@google.com>
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

On Wed, May 12, 2021 at 11:56 AM Hugh Dickins <hughd@google.com> wrote:
>
> On Wed, 12 May 2021, Axel Rasmussen wrote:
>
> > Andrew, the straightforward fix is just to drop this commit, which is
> > currently in the mm tree (not in v5.13-rc1):
>
> Yes, that's easiest.
>
> >
> > 09ff184a3eb1c9 userfaultfd/hugetlbfs: avoid including userfaultfd_k.h
> > in hugetlb.h
> >
> > (Happy to send a revert patch, but I suspect it's easier for you to
> > drop than to revert + squash later?)
> >
> > Adding Hugh as well, since he suggested this cleanup and might prefer
> > doing something else instead.
>
> Yes, sorry for dropping you in it.
>
> >
> > On Wed, May 12, 2021 at 7:45 AM kernel test robot <lkp@intel.com> wrote:
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > head:   ec85c95b0c90a17413901b018e8ade7b9eae7cad
> > > commit: 09ff184a3eb1c9cb42f64325ca4a51e36206f4f5 [2078/2633] userfaultfd/hugetlbfs: avoid including userfaultfd_k.h in hugetlb.h
> > > config: s390-randconfig-r023-20210512 (attached as .config)
> > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a0fed635fe1701470062495a6ffee1c608f3f1bc)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install s390 cross compiling tool for clang build
>
> I was puzzled, thinking it was something special to s390 or to clang;
> until noticing that it says s390-randconfig above.
>
> > >         # apt-get install binutils-s390x-linux-gnu
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=09ff184a3eb1c9cb42f64325ca4a51e36206f4f5
> > >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > >         git fetch --no-tags linux-next master
> > >         git checkout 09ff184a3eb1c9cb42f64325ca4a51e36206f4f5
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=s390
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>):
> > >
> > >    In file included from arch/s390/mm/fault.c:33:
> > > >> include/linux/hugetlb.h:340:30: error: variable has incomplete type 'enum mcopy_atomic_mode'
> > >                                                    enum mcopy_atomic_mode mode,
> > >                                                                           ^
> > >    include/linux/hugetlb.h:18:6: note: forward declaration of 'enum mcopy_atomic_mode'
> > >    enum mcopy_atomic_mode;
> > >         ^
>
> And line 340 is not the first, usual use of mcopy_atomic_mode in hugetlb.h,
> but its use in the CONFIG_USERFAULTFD=y CONFIG_HUGETLB_PAGE=n static inline
> stub.  Right, the compiler would probably want to compile that before
> optimizing it away; and want to know more about the enum to do so.
>
> My actual preference would be to keep the "enum mcopy_atomic_mode;"
> patch, and fix it with the patch below: since the only call to
> hugetlb_mcopy_atomic_pte() is under #ifdef CONFIG_HUGETLB_PAGE anyway.
>
> But since I have not even tried building with this patch on x86_64 gcc,
> in any configuration at all, I expect you all to be rather wary of my
> suggestions by now, and prefer to just drop the troublesome patch.
> But in case anyone is tempted, now or later,

Yeah, I would want to do some more testing first on various compilers
and things. My understanding is that the C standard says enums may be
as small as a char or as big as an int depending on the value(s) they
can have, so with just a forward declaration we can't know the size
which I think is needed even for just a function signature. But, GCC
seems to do something to make this "work" (at least without
-pedantic).

Another small cleanup I'd like to do is, after our other code review,
I think "enum mcopy_atomic_mode" should rather be named "enum
mfill_atomic_mode" - since Andrea intended "mcopy" to refer
specifically to copy_from_user, and "mfill" to refer to the more
general operation. So, I think we drop this patch for now, and I'll
keep this in mind for some future cleanup series.

>
> --- mmotm/include/linux/hugetlb.h       2021-05-11 08:33:39.987553392 -0700
> +++ linux/include/linux/hugetlb.h       2021-05-12 11:20:52.385063935 -0700
> @@ -331,20 +331,6 @@ static inline void hugetlb_free_pgd_rang
>         BUG();
>  }
>
> -#ifdef CONFIG_USERFAULTFD
> -static inline int hugetlb_mcopy_atomic_pte(struct mm_struct *dst_mm,
> -                                               pte_t *dst_pte,
> -                                               struct vm_area_struct *dst_vma,
> -                                               unsigned long dst_addr,
> -                                               unsigned long src_addr,
> -                                               enum mcopy_atomic_mode mode,
> -                                               struct page **pagep)
> -{
> -       BUG();
> -       return 0;
> -}
> -#endif /* CONFIG_USERFAULTFD */
> -
>  static inline pte_t *huge_pte_offset(struct mm_struct *mm, unsigned long addr,
>                                         unsigned long sz)
>  {

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJHvVchkv1Y5sBD94ZPxGp0UnJtLZr1EdNov96f471Pjc6HVPg%40mail.gmail.com.
