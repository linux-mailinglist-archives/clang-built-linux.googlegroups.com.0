Return-Path: <clang-built-linux+bncBD3ZHYEG5YFBBROJ6CCAMGQEQBKLBTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CF637D3AE
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 20:56:07 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id x11-20020a9f2f0b0000b029020331a0ba74sf2973635uaj.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:56:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620845766; cv=pass;
        d=google.com; s=arc-20160816;
        b=MKPujkMeADI+V7/9UPb8yw/S1up2RyvsRiUyfhzctD0+IbNBIx5jVR+bgYcxNFkCAh
         QV5Z0hRKNvGBKmLDVhLEp+ySzs6VR8glddISYGCbYz8wPfjXJ28Dq7sdXh7XtgMGGWrx
         Px2v1Z3q1eguCojPzBif6kfhn8qU2FtaWtaG2utMGOmuN16etreKl8diLhm+ahT+XDc9
         sN1ZoonyPEj7wzgP09DsPP4o/5pU9EJ8VRJ5osbYZtThgx69XmrIW2tJQw2ELF2uBA8q
         bm7teYyDXrpHrXn2uIBcOn6l4qiswFPQ8m83QzuyjCLuUaaY4y2tRoBH9YUm9Whjg+c8
         q6cA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :dkim-signature;
        bh=qB5a5NHXXyxPwz9K78GDVHK54gqX2Ll2OYQKQbqeBlM=;
        b=FH5krtBartEXdgGlL3ZWROEkec3JjOjTAIfEXsTqnnlKRJlY5ru3/qg5MHZ8bqdHZN
         WUlrQDRz2W8k7MWl72dC//uFLOFR6ZxHv8SXHGlAwMqjeZVu8Y/xk/3c7TgDDNk+mfu0
         baiaxiGRlHmBwqIy2uOlrQf7/djR4EFLN3M3LJv5uhFS1IoevrUrOnK7HO/PSPTPk6PE
         np1MCRvxWJCE9w8oXCl8R/yr8qaajYmh43AzPvVTohBUhxflhy/Ahs03Y6HWj8+AVOdT
         7nQdqkpidQnj5ZSXdVzcFep9weIO60eB2PR53WS4PsrfGnY7DFsq121NTbgETgDcv2HL
         JQNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hoDagBMw;
       spf=pass (google.com: domain of hughd@google.com designates 2607:f8b0:4864:20::f2d as permitted sender) smtp.mailfrom=hughd@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qB5a5NHXXyxPwz9K78GDVHK54gqX2Ll2OYQKQbqeBlM=;
        b=N0VfRKi7qYfAV2dcTtKMit+oMStQIqxPmuf+71a2WbzWllsqGIIFoMZCDRSKeienaq
         gUJkX3oeBNKYlcDBrGu8wh2hrspOY8rlcOT9Rc+BTjqLVqSMudWfZ+EpmQYeCS4bFVXV
         2APtWC4n6ZMkpTuFn7WZGPnw2FNVFvjid6bxLDuOYIj2tTOW/ai+9z77x7tp8JMsHQ29
         KClPfzsj3214RJscJRphBooUoyoFSBvtirphI0UM5Fwl/rJFV5jjxL2hdPtyjqmcvtNO
         +ddtHXiPNXIPzZCXCenz63z8mb/3E619VEyx3Eh49fk0NRTL7949JqpOAOHhw+FS3ri9
         0hLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qB5a5NHXXyxPwz9K78GDVHK54gqX2Ll2OYQKQbqeBlM=;
        b=tHjJWkvjBz+I0+QEzgvbIsv7UrUdO7TyetaRlHV+THk5qrIOoXPQZadc6oNX/A6+EK
         FrHd/NWOKGi/Z80vS8oIC7PAGTCRIUpjr9I0b0rSMrVZEr6okorQk8TOMHa53F1aj/19
         7VaO5j+Wpm1S0CBzvs/lroP0qywgeZNSwc1nTkc2QnsKbEfpIzdQEkC9lMdm09kepFum
         CGWKY1dASPsX6quXMtBV9s/l3VKdbPcmCZzSEK4BGRLtma+DXLzOVd8kuO/O4pR2sBGF
         o8d3ldA+GYdjyxEUSpNN/OJxgyI+BX1oVPEJHnDuh3KmCOguDcxEHynwWYb/TatEf9ft
         uDUA==
X-Gm-Message-State: AOAM53209I7j6J46oWaU8ceQOzWsa8L2rWHoo56/Fhz3cL84j5bBZ9Xa
	5NXHQDmuqt3K/Dt6n/wzsl8=
X-Google-Smtp-Source: ABdhPJy/rOFJtV0IH/mDmr3EtaKKruxxI2ZGf0I9wlGT40QUJObKa5+8z8Mh0LgweNES9JnxpKGsuA==
X-Received: by 2002:a1f:e746:: with SMTP id e67mr29446557vkh.3.1620845766008;
        Wed, 12 May 2021 11:56:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ea93:: with SMTP id f19ls841259vso.1.gmail; Wed, 12 May
 2021 11:56:05 -0700 (PDT)
X-Received: by 2002:a67:5e42:: with SMTP id s63mr32260997vsb.14.1620845765496;
        Wed, 12 May 2021 11:56:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620845765; cv=none;
        d=google.com; s=arc-20160816;
        b=ywLhYXBwEPjNwoqPAh1gzwyLdxFlbUZYwPvUtkASYHiJ6rauhT+aDVVoduHUEmr2yz
         8xBBCT+RKDf7aKmePduzuOWFgD9/fGda4bYq7Ld5eSfrc5NLtb/Zjxl/xwrZ1oV6FfDT
         WziWbu3rBcWmPnd3J9h9GWaDNZTw1GGhrGulB33FMfmYNyOwkHCcx0+Wv0xqEDbU8X+0
         VVPE/44gkJocx6as3KmNGMefTO5r1/U9j2Fg2sc1muWDuE6GQnQxR0GUZfoLBPAy7r/6
         syHFu9pzQFd1EH6dU0KyI7Uw+r7GenIdulasI13gOj4WA07J2RRFWbacLdJU//RDw+F/
         VEUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature;
        bh=qB5a5NHXXyxPwz9K78GDVHK54gqX2Ll2OYQKQbqeBlM=;
        b=mVnkvNXWMLvufEi0xnaqlV+VRuE82qE+x6oZgKIFbiJlJINX674tCRLyYMh5r26ZK5
         iEk0j26BEQc+r6McxH29JkY0EOLRcTVQJ/K/CCgLmvOIpv4PAXfqqqgrafQKIwDdPANY
         7MTRzml0du04wsegMVT27RHSElBS7oyFcGWuAkpYQcZ9Opwj2A8lboRq4UYnkJXHLfJD
         IKe5gc/2qhejL3fDAhTQalfJF29+LtfgulZG8dAd9V2sd/ORFGpb5NzYm7Q2ofqwo8X9
         yzB8TBClGWDk21QzQEBQc+iV5CB/oxgiQ9CzQ88AT4WphLE7WatWjOL6vObwU1+NnNAh
         IS4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hoDagBMw;
       spf=pass (google.com: domain of hughd@google.com designates 2607:f8b0:4864:20::f2d as permitted sender) smtp.mailfrom=hughd@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com. [2607:f8b0:4864:20::f2d])
        by gmr-mx.google.com with ESMTPS id a6si42847vkh.0.2021.05.12.11.56.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 May 2021 11:56:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of hughd@google.com designates 2607:f8b0:4864:20::f2d as permitted sender) client-ip=2607:f8b0:4864:20::f2d;
Received: by mail-qv1-xf2d.google.com with SMTP id ee9so2336841qvb.8
        for <clang-built-linux@googlegroups.com>; Wed, 12 May 2021 11:56:05 -0700 (PDT)
X-Received: by 2002:a0c:9e0f:: with SMTP id p15mr36291316qve.27.1620845764907;
        Wed, 12 May 2021 11:56:04 -0700 (PDT)
Received: from eggly.attlocal.net (172-10-233-147.lightspeed.sntcca.sbcglobal.net. [172.10.233.147])
        by smtp.gmail.com with ESMTPSA id y23sm665706qtm.54.2021.05.12.11.56.03
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 12 May 2021 11:56:04 -0700 (PDT)
Date: Wed, 12 May 2021 11:55:52 -0700 (PDT)
From: "'Hugh Dickins' via Clang Built Linux" <clang-built-linux@googlegroups.com>
X-X-Sender: hugh@eggly.anvils
To: Axel Rasmussen <axelrasmussen@google.com>
cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
    clang-built-linux@googlegroups.com, 
    Linux Memory Management List <linux-mm@kvack.org>, 
    Peter Xu <peterx@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, 
    Hugh Dickins <hughd@google.com>, Mike Kravetz <mike.kravetz@oracle.com>
Subject: Re: [linux-next:master 2078/2633] include/linux/hugetlb.h:340:30:
 error: variable has incomplete type 'enum mcopy_atomic_mode'
In-Reply-To: <CAJHvVcgMpveuO0VEM4Vr2op5m0Oso3ghW4f0HuFL7DgbZ8HcqA@mail.gmail.com>
Message-ID: <alpine.LSU.2.11.2105121123010.4486@eggly.anvils>
References: <202105122224.mJzg3ncL-lkp@intel.com> <CAJHvVcgMpveuO0VEM4Vr2op5m0Oso3ghW4f0HuFL7DgbZ8HcqA@mail.gmail.com>
User-Agent: Alpine 2.11 (LSU 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: hughd@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hoDagBMw;       spf=pass
 (google.com: domain of hughd@google.com designates 2607:f8b0:4864:20::f2d as
 permitted sender) smtp.mailfrom=hughd@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Hugh Dickins <hughd@google.com>
Reply-To: Hugh Dickins <hughd@google.com>
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

On Wed, 12 May 2021, Axel Rasmussen wrote:

> Andrew, the straightforward fix is just to drop this commit, which is
> currently in the mm tree (not in v5.13-rc1):

Yes, that's easiest.

> 
> 09ff184a3eb1c9 userfaultfd/hugetlbfs: avoid including userfaultfd_k.h
> in hugetlb.h
> 
> (Happy to send a revert patch, but I suspect it's easier for you to
> drop than to revert + squash later?)
> 
> Adding Hugh as well, since he suggested this cleanup and might prefer
> doing something else instead.

Yes, sorry for dropping you in it.

> 
> On Wed, May 12, 2021 at 7:45 AM kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   ec85c95b0c90a17413901b018e8ade7b9eae7cad
> > commit: 09ff184a3eb1c9cb42f64325ca4a51e36206f4f5 [2078/2633] userfaultfd/hugetlbfs: avoid including userfaultfd_k.h in hugetlb.h
> > config: s390-randconfig-r023-20210512 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a0fed635fe1701470062495a6ffee1c608f3f1bc)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install s390 cross compiling tool for clang build

I was puzzled, thinking it was something special to s390 or to clang;
until noticing that it says s390-randconfig above.

> >         # apt-get install binutils-s390x-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=09ff184a3eb1c9cb42f64325ca4a51e36206f4f5
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout 09ff184a3eb1c9cb42f64325ca4a51e36206f4f5
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=s390
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> >    In file included from arch/s390/mm/fault.c:33:
> > >> include/linux/hugetlb.h:340:30: error: variable has incomplete type 'enum mcopy_atomic_mode'
> >                                                    enum mcopy_atomic_mode mode,
> >                                                                           ^
> >    include/linux/hugetlb.h:18:6: note: forward declaration of 'enum mcopy_atomic_mode'
> >    enum mcopy_atomic_mode;
> >         ^

And line 340 is not the first, usual use of mcopy_atomic_mode in hugetlb.h,
but its use in the CONFIG_USERFAULTFD=y CONFIG_HUGETLB_PAGE=n static inline
stub.  Right, the compiler would probably want to compile that before
optimizing it away; and want to know more about the enum to do so.

My actual preference would be to keep the "enum mcopy_atomic_mode;"
patch, and fix it with the patch below: since the only call to
hugetlb_mcopy_atomic_pte() is under #ifdef CONFIG_HUGETLB_PAGE anyway.

But since I have not even tried building with this patch on x86_64 gcc,
in any configuration at all, I expect you all to be rather wary of my
suggestions by now, and prefer to just drop the troublesome patch.
But in case anyone is tempted, now or later,

--- mmotm/include/linux/hugetlb.h	2021-05-11 08:33:39.987553392 -0700
+++ linux/include/linux/hugetlb.h	2021-05-12 11:20:52.385063935 -0700
@@ -331,20 +331,6 @@ static inline void hugetlb_free_pgd_rang
 	BUG();
 }
 
-#ifdef CONFIG_USERFAULTFD
-static inline int hugetlb_mcopy_atomic_pte(struct mm_struct *dst_mm,
-						pte_t *dst_pte,
-						struct vm_area_struct *dst_vma,
-						unsigned long dst_addr,
-						unsigned long src_addr,
-						enum mcopy_atomic_mode mode,
-						struct page **pagep)
-{
-	BUG();
-	return 0;
-}
-#endif /* CONFIG_USERFAULTFD */
-
 static inline pte_t *huge_pte_offset(struct mm_struct *mm, unsigned long addr,
 					unsigned long sz)
 {
