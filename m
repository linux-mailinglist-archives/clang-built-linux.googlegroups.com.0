Return-Path: <clang-built-linux+bncBCTZFA6ZZMMRBG4KXSAAMGQENGN3K6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBFB30294E
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 18:51:25 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id z9sf8084472plg.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 09:51:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611597083; cv=pass;
        d=google.com; s=arc-20160816;
        b=qF+cPSkhA2zAzz5C2Hz29iMRU6L1H9ruAuxPrxcg0rOQ3ALbZw+HtMRx9cSU6yk9Ju
         aueNFlGd0uGZVinM88vxopl3xR/AA+yZhas1J0aZ/BrpNqnIWlswQKobcdp5JsdCNEnb
         UZAq7IfkKYm+p/fhVTgOMyQuo8Vq+NcmDlUEr1HwgDB3siiPn6kzSi9X7mL6V3EIivwx
         dFRT02wFla/chrA0eg/c3jpmvvrzZ09JLkx2B4xqbZjb2E+6+fgdPd/QOrzEpafL62hB
         FGx/saGsT1yI/HvDjbAjiO7FGl65/gzn6vXPpqWm6618dvBPbuW5TEPtcH8aJOg/JvEh
         uIJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=ENOLkwCOeaYr2wz2L8wHukA88IUC0tlhVZEIsrn2Kqk=;
        b=REVN6MYm266bSrSAHIqib2f1h0vkIyKFYs72tIJoE9yRkg3yBsvyQNukax0Kz1dykw
         luodlw8kO6upXv5Yzw1s667xJoiM2zX0S3Mp0lgz0rQo/w6L/R8lTMqJ0aPtwrTgEBQ/
         DRrEDMsURTspmO9FbqaT/EYLgpCaRLA2+HpiRNwWRrOOu18XqHK+6Myr6YgAbrWOpI8x
         9HTkBTcWc3gk9KwBShtDauRtIYZqsrOXSHhz3zHf7p6uj/yAfyXarnao5DXE7/2PgVVb
         qzZb8cRfV9w9UyoQDB1Y/o/fuEbAg1LskN/gZlXBVwrUYhTBgIAwpzVdRrPwttV5G5Aq
         X2+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vgaUnY0Q;
       spf=pass (google.com: domain of axelrasmussen@google.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=axelrasmussen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ENOLkwCOeaYr2wz2L8wHukA88IUC0tlhVZEIsrn2Kqk=;
        b=d6Xhl1dtrdUzsFqhX5AQl70L10a4mk7q1d0am5jFweVWSbHsAtUpAXs268ZBRNuFoR
         KNDzDDTeq8nq+dxnW73NlWETh0he8tFRJC+PmUNu6c8nGWnAC2MchPot3Ixbx0ns6P4R
         bIrMl64ynZgWkzs8hodhg+i1W7CAa36LBUl9C3Nv+zX9uoqiPV5c3HedJeOG7FF7478D
         m2K4PSWLldnKR0tu/PNSh4VV6R1gOXzwpjOz55Du9N7VTZbE77A+GH29QeuP+3HgnmM9
         5Ku+LzSpa7cKOkG1YwzYqetX4ebJ++E51Y3akY9H6rN16HJwdUnukuLL2ee3Q9QUkrsW
         wl4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ENOLkwCOeaYr2wz2L8wHukA88IUC0tlhVZEIsrn2Kqk=;
        b=eAF9K2R8iGL+xeXAIyaT1sn7cWBKAv4V2rIUHTWlgAQ6E7kfq78c/N+NHf+PcZZ/Xi
         HncvPOcluoMESPZCc76qgLRvalJt0zsEeaTLroOb7JIX3jpeQc04wpI+utHgCHawi44A
         lhF4Kb7o7/Eg02dFd/7B2mWbVqktA5YF58pNqFMOicT8mFOUyP9AnTA6KtxQnvBDnjsO
         R2iQ+mILrYQLCLy/P1wqgcSGF7RDh8vYCROS+b6RfraaFEwcwP+q1SEvsBsLtThxgCtc
         FZrL16ickWsK3Irvw+AVGMkGC76LpIbt8QmkVHZ7htGLsgqJm5Tk+kNveiRat12uhGoE
         g9vQ==
X-Gm-Message-State: AOAM531cYzMMDVpIfF3ltsmQecm8fN8c4sWOvph8d568kxMSViO3N5je
	1XA4CjWL86sgQBDv/3qofTQ=
X-Google-Smtp-Source: ABdhPJxP190PTlkd2zisYHOLfryDbXSz1dWxtYYj6TUH8+lgAIts9u/GwheRNkIA60iwH9TdRENCLg==
X-Received: by 2002:a17:90a:5b05:: with SMTP id o5mr1360189pji.109.1611597083617;
        Mon, 25 Jan 2021 09:51:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5803:: with SMTP id m3ls5061386pgb.3.gmail; Mon, 25 Jan
 2021 09:51:23 -0800 (PST)
X-Received: by 2002:a63:db54:: with SMTP id x20mr1666484pgi.200.1611597082933;
        Mon, 25 Jan 2021 09:51:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611597082; cv=none;
        d=google.com; s=arc-20160816;
        b=WmK3qqi2xnjJDKOtEjul4GHdb8+1IR3BimgdyakJu5fv2GTkWSvJH1e6Pj+VYsKfd1
         mR8s0NKqnVj+5YtvtMD1l/09dVbvtbHW0J2EutP+2sgxMVMj8dIthjbWRZV/br/yOCxL
         CvsirF1k8XU2zwLV+kT0kS0anocNfOnv8ekYbP9B5b5Yg0w9DYkSP1lFmG/7IvGRa1C5
         M3xeBmLpwkecyk4oHIjImZtdy4fmRT10pzHwwnVlPLBOo1JI4BVQyHkLQP9CgOz4DLV1
         j77mU1i+vAVHSRBqzXKW78p8dJwIKc+GJU9DrOlQbNhaoAL9Cyc6IUHowW0baqJI76Lu
         tNfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=KmuBpf7NKlUOglYFnlfk+T60GtPyOjM6FDMax7fCXpY=;
        b=njuH8m/BHaQbCvlJ1qTHpNak/jHuiz4xzFIu5zMrb0MQDLfhjXVZe1NF453JEeqtqn
         IkJt4dcx4cxKaoqEMzbLvD0Pzzka7977IYqxR3gM7T+kC2urnIwLNk6oLk1eGYg8dJ33
         /PtHtj3G+lGK2gnWjE0OSSS2aH6phrB3ct9WO4kLGwQrdHU+fyDCExso+cZO06/ZrUMH
         xj4WWP9BROLa3Y6euN5jbbx+urtYKjZgkD4Gn04opUC+4xB4uQi1kFU1+mJpHv7I9ahW
         G1ewwfecJ4u5XsZQCalFIZCSpSmKPLhjmxnhAw3Mayhd1wCOABwdA4fJuQh2mN28KQFD
         gAWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vgaUnY0Q;
       spf=pass (google.com: domain of axelrasmussen@google.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=axelrasmussen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com. [2607:f8b0:4864:20::d2c])
        by gmr-mx.google.com with ESMTPS id c3si813086pll.0.2021.01.25.09.51.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jan 2021 09:51:22 -0800 (PST)
Received-SPF: pass (google.com: domain of axelrasmussen@google.com designates 2607:f8b0:4864:20::d2c as permitted sender) client-ip=2607:f8b0:4864:20::d2c;
Received: by mail-io1-xd2c.google.com with SMTP id u17so28326722iow.1
        for <clang-built-linux@googlegroups.com>; Mon, 25 Jan 2021 09:51:22 -0800 (PST)
X-Received: by 2002:a02:7610:: with SMTP id z16mt1701871jab.99.1611597082394;
 Mon, 25 Jan 2021 09:51:22 -0800 (PST)
MIME-Version: 1.0
References: <20210122212926.3457593-8-axelrasmussen@google.com> <202101252146.VjG3nQXC-lkp@intel.com>
In-Reply-To: <202101252146.VjG3nQXC-lkp@intel.com>
From: "'Axel Rasmussen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 25 Jan 2021 09:50:46 -0800
Message-ID: <CAJHvVcjHmSNXVNxtR3gJSxUnB0yifr+CSi9GnZDXrHeQwi2EpA@mail.gmail.com>
Subject: Re: [PATCH v2 7/9] userfaultfd: add UFFDIO_CONTINUE ioctl
Cc: Alexander Viro <viro@zeniv.linux.org.uk>, Alexey Dobriyan <adobriyan@gmail.com>, 
	Andrea Arcangeli <aarcange@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Anshuman Khandual <anshuman.khandual@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Chinwen Chang <chinwen.chang@mediatek.com>, Huang Ying <ying.huang@intel.com>, 
	Ingo Molnar <mingo@redhat.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: axelrasmussen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vgaUnY0Q;       spf=pass
 (google.com: domain of axelrasmussen@google.com designates
 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=axelrasmussen@google.com;
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

This build error seems to be caused by a missing #ifdef
CONFIG_USERFAULTFD. I'll send a v3 with this fix, after waiting for
other feedback on the v2 version.

On Mon, Jan 25, 2021 at 5:37 AM kernel test robot <lkp@intel.com> wrote:
>
> Hi Axel,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on arm64/for-next/core]
> [also build test ERROR on powerpc/next s390/features tip/perf/core linus/master v5.11-rc5 next-20210122]
> [cannot apply to hp-parisc/for-next hnaz-linux-mm/master ia64/next sparc-next/master sparc/master]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Axel-Rasmussen/userfaultfd-add-minor-fault-handling/20210125-104035
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/core
> config: x86_64-randconfig-a013-20210125 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 12d0753aca22896fda2cf76781b0ee0524d55065)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/b8fb53c3a341b9b853aa3286286c807088311dbd
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Axel-Rasmussen/userfaultfd-add-minor-fault-handling/20210125-104035
>         git checkout b8fb53c3a341b9b853aa3286286c807088311dbd
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    In file included from mm/hugetlb.c:39:
>    include/linux/hugetlb.h:142:10: warning: declaration of 'enum mcopy_atomic_mode' will not be visible outside of this function [-Wvisibility]
>                                    enum mcopy_atomic_mode mode,
>                                         ^
>    mm/hugetlb.c:4659:13: warning: declaration of 'enum mcopy_atomic_mode' will not be visible outside of this function [-Wvisibility]
>                                enum mcopy_atomic_mode mode,
>                                     ^
> >> mm/hugetlb.c:4654:5: error: conflicting types for 'hugetlb_mcopy_atomic_pte'
>    int hugetlb_mcopy_atomic_pte(struct mm_struct *dst_mm,
>        ^
>    include/linux/hugetlb.h:138:5: note: previous declaration is here
>    int hugetlb_mcopy_atomic_pte(struct mm_struct *dst_mm, pte_t *dst_pte,
>        ^
> >> mm/hugetlb.c:4659:31: error: variable has incomplete type 'enum mcopy_atomic_mode'
>                                enum mcopy_atomic_mode mode,
>                                                       ^
>    mm/hugetlb.c:4659:13: note: forward declaration of 'enum mcopy_atomic_mode'
>                                enum mcopy_atomic_mode mode,
>                                     ^
> >> mm/hugetlb.c:4675:25: error: use of undeclared identifier 'MCOPY_ATOMIC_CONTINUE'
>            if (!*pagep && mode != MCOPY_ATOMIC_CONTINUE) {
>                                   ^
>    mm/hugetlb.c:4692:21: error: use of undeclared identifier 'MCOPY_ATOMIC_CONTINUE'
>            } else if (mode == MCOPY_ATOMIC_CONTINUE) {
>                               ^
>    mm/hugetlb.c:4711:27: error: use of undeclared identifier 'MCOPY_ATOMIC_CONTINUE'
>            if (vm_shared && mode != MCOPY_ATOMIC_CONTINUE) {
>                                     ^
>    mm/hugetlb.c:4771:14: error: use of undeclared identifier 'MCOPY_ATOMIC_CONTINUE'
>            if (mode != MCOPY_ATOMIC_CONTINUE)
>                        ^
>    2 warnings and 6 errors generated.
>
>
> vim +/hugetlb_mcopy_atomic_pte +4654 mm/hugetlb.c
>
> 86e5216f8d8aa25 Adam Litke        2006-01-06  4649
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4650  /*
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4651   * Used by userfaultfd UFFDIO_COPY.  Based on mcopy_atomic_pte with
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4652   * modifications for huge pages.
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4653   */
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22 @4654  int hugetlb_mcopy_atomic_pte(struct mm_struct *dst_mm,
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4655                          pte_t *dst_pte,
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4656                          struct vm_area_struct *dst_vma,
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4657                          unsigned long dst_addr,
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4658                          unsigned long src_addr,
> b8fb53c3a341b9b Axel Rasmussen    2021-01-22 @4659                          enum mcopy_atomic_mode mode,
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4660                          struct page **pagep)
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4661  {
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4662      struct address_space *mapping;
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4663      pgoff_t idx;
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4664      unsigned long size;
> 1c9e8def43a3452 Mike Kravetz      2017-02-22  4665      int vm_shared = dst_vma->vm_flags & VM_SHARED;
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4666      struct hstate *h = hstate_vma(dst_vma);
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4667      pte_t _dst_pte;
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4668      spinlock_t *ptl;
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4669      int ret;
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4670      struct page *page;
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4671
> b8fb53c3a341b9b Axel Rasmussen    2021-01-22  4672      mapping = dst_vma->vm_file->f_mapping;
> b8fb53c3a341b9b Axel Rasmussen    2021-01-22  4673      idx = vma_hugecache_offset(h, dst_vma, dst_addr);
> b8fb53c3a341b9b Axel Rasmussen    2021-01-22  4674
> b8fb53c3a341b9b Axel Rasmussen    2021-01-22 @4675      if (!*pagep && mode != MCOPY_ATOMIC_CONTINUE) {
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4676              ret = -ENOMEM;
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4677              page = alloc_huge_page(dst_vma, dst_addr, 0);
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4678              if (IS_ERR(page))
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4679                      goto out;
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4680
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4681              ret = copy_huge_page_from_user(page,
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4682                                              (const void __user *) src_addr,
> 810a56b943e265b Mike Kravetz      2017-02-22  4683                                              pages_per_huge_page(h), false);
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4684
> c1e8d7c6a7a682e Michel Lespinasse 2020-06-08  4685              /* fallback to copy_from_user outside mmap_lock */
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4686              if (unlikely(ret)) {
> 9e368259ad98835 Andrea Arcangeli  2018-11-30  4687                      ret = -ENOENT;
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4688                      *pagep = page;
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4689                      /* don't free the page */
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4690                      goto out;
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4691              }
> b8fb53c3a341b9b Axel Rasmussen    2021-01-22  4692      } else if (mode == MCOPY_ATOMIC_CONTINUE) {
> b8fb53c3a341b9b Axel Rasmussen    2021-01-22  4693              ret = -EFAULT;
> b8fb53c3a341b9b Axel Rasmussen    2021-01-22  4694              page = find_lock_page(mapping, idx);
> b8fb53c3a341b9b Axel Rasmussen    2021-01-22  4695              *pagep = NULL;
> b8fb53c3a341b9b Axel Rasmussen    2021-01-22  4696              if (!page)
> b8fb53c3a341b9b Axel Rasmussen    2021-01-22  4697                      goto out;
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4698      } else {
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4699              page = *pagep;
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4700              *pagep = NULL;
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4701      }
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4702
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4703      /*
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4704       * The memory barrier inside __SetPageUptodate makes sure that
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4705       * preceding stores to the page contents become visible before
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4706       * the set_pte_at() write.
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4707       */
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4708      __SetPageUptodate(page);
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4709
> b8fb53c3a341b9b Axel Rasmussen    2021-01-22  4710      /* Add shared, newly allocated pages to the page cache. */
> b8fb53c3a341b9b Axel Rasmussen    2021-01-22  4711      if (vm_shared && mode != MCOPY_ATOMIC_CONTINUE) {
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4712              size = i_size_read(mapping->host) >> huge_page_shift(h);
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4713              ret = -EFAULT;
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4714              if (idx >= size)
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4715                      goto out_release_nounlock;
> 1c9e8def43a3452 Mike Kravetz      2017-02-22  4716
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4717              /*
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4718               * Serialization between remove_inode_hugepages() and
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4719               * huge_add_to_page_cache() below happens through the
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4720               * hugetlb_fault_mutex_table that here must be hold by
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4721               * the caller.
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4722               */
> 1c9e8def43a3452 Mike Kravetz      2017-02-22  4723              ret = huge_add_to_page_cache(page, mapping, idx);
> 1c9e8def43a3452 Mike Kravetz      2017-02-22  4724              if (ret)
> 1c9e8def43a3452 Mike Kravetz      2017-02-22  4725                      goto out_release_nounlock;
> 1c9e8def43a3452 Mike Kravetz      2017-02-22  4726      }
> 1c9e8def43a3452 Mike Kravetz      2017-02-22  4727
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4728      ptl = huge_pte_lockptr(h, dst_mm, dst_pte);
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4729      spin_lock(ptl);
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4730
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4731      /*
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4732       * Recheck the i_size after holding PT lock to make sure not
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4733       * to leave any page mapped (as page_mapped()) beyond the end
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4734       * of the i_size (remove_inode_hugepages() is strict about
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4735       * enforcing that). If we bail out here, we'll also leave a
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4736       * page in the radix tree in the vm_shared case beyond the end
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4737       * of the i_size, but remove_inode_hugepages() will take care
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4738       * of it as soon as we drop the hugetlb_fault_mutex_table.
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4739       */
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4740      size = i_size_read(mapping->host) >> huge_page_shift(h);
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4741      ret = -EFAULT;
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4742      if (idx >= size)
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4743              goto out_release_unlock;
> 1e3921471354244 Andrea Arcangeli  2017-11-02  4744
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4745      ret = -EEXIST;
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4746      if (!huge_pte_none(huge_ptep_get(dst_pte)))
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4747              goto out_release_unlock;
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4748
> 1c9e8def43a3452 Mike Kravetz      2017-02-22  4749      if (vm_shared) {
> 1c9e8def43a3452 Mike Kravetz      2017-02-22  4750              page_dup_rmap(page, true);
> 1c9e8def43a3452 Mike Kravetz      2017-02-22  4751      } else {
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4752              ClearPagePrivate(page);
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4753              hugepage_add_new_anon_rmap(page, dst_vma, dst_addr);
> 1c9e8def43a3452 Mike Kravetz      2017-02-22  4754      }
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4755
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4756      _dst_pte = make_huge_pte(dst_vma, page, dst_vma->vm_flags & VM_WRITE);
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4757      if (dst_vma->vm_flags & VM_WRITE)
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4758              _dst_pte = huge_pte_mkdirty(_dst_pte);
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4759      _dst_pte = pte_mkyoung(_dst_pte);
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4760
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4761      set_huge_pte_at(dst_mm, dst_addr, dst_pte, _dst_pte);
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4762
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4763      (void)huge_ptep_set_access_flags(dst_vma, dst_addr, dst_pte, _dst_pte,
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4764                                      dst_vma->vm_flags & VM_WRITE);
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4765      hugetlb_count_add(pages_per_huge_page(h), dst_mm);
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4766
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4767      /* No need to invalidate - it was non-present before */
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4768      update_mmu_cache(dst_vma, dst_addr, dst_pte);
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4769
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4770      spin_unlock(ptl);
> b8fb53c3a341b9b Axel Rasmussen    2021-01-22  4771      if (mode != MCOPY_ATOMIC_CONTINUE)
> cb6acd01e2e43fd Mike Kravetz      2019-02-28  4772              set_page_huge_active(page);
> 1c9e8def43a3452 Mike Kravetz      2017-02-22  4773      if (vm_shared)
> 1c9e8def43a3452 Mike Kravetz      2017-02-22  4774              unlock_page(page);
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4775      ret = 0;
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4776  out:
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4777      return ret;
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4778  out_release_unlock:
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4779      spin_unlock(ptl);
> 1c9e8def43a3452 Mike Kravetz      2017-02-22  4780      if (vm_shared)
> 1c9e8def43a3452 Mike Kravetz      2017-02-22  4781              unlock_page(page);
> 5af10dfd0afc559 Andrea Arcangeli  2017-08-10  4782  out_release_nounlock:
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4783      put_page(page);
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4784      goto out;
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4785  }
> 8fb5debc5fcd450 Mike Kravetz      2017-02-22  4786
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJHvVcjHmSNXVNxtR3gJSxUnB0yifr%2BCSi9GnZDXrHeQwi2EpA%40mail.gmail.com.
