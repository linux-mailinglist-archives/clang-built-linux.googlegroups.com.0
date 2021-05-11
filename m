Return-Path: <clang-built-linux+bncBCKM377TVAMBBIPS5GCAMGQEQXZGVSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C4937A6BA
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 14:31:30 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id v7-20020a9f31870000b029020b2d4ea5d9sf748775uad.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 05:31:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620736289; cv=pass;
        d=google.com; s=arc-20160816;
        b=BeD5V0Oe7z8Mo449gUwqS3ttDwrPksb8R+DeWZU9OFK+6JEt588+NyUqqwpoIQ2+vo
         HdVRR2tc16O+jcQCWJEZWiqJmdJrZsIfegYMol/z6wOqbrl6XXeRVt2TvxMiZcOByEm8
         YAxKu4Eze1Pxel+eU0BokZQL1rJ1fvFOTyn5969abLJwmAMt1cLqeryN/+abuuDZ83Gf
         xnn3je9UDVUfbmI4mhehkpTkojoOrmjksSsZJIn2Ha6ElLn+wgGiFmd0Yk0ZEZRyGSxN
         KxP54LOOdLPT+/imG5cjsxxm3acAysYgApsypewrAItS217QhPNqFV5FtqET2xbuVaF+
         XcdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=Y9Y0tNzZN+GzHSm7LBa37xe8b1wVTZQowFYVMff0rDw=;
        b=yTR+T6G60DTAqyqJCcRWVkAwVkqcTZalIjlgtW8Nn8XlkEvNx4SS28kUEHREv2/1WZ
         obcU81GoDK/9Puz7bqwzdi+L5bHPh0FFaCCXu+LiayEg9lB+a9TUDsMUCI/XocgMAj/L
         M1I0XpI1NhubLQ2+2i+i/+ILGzJxrAZZKeP37oIZNarCVHrhzfHJ8DjPfM6bqEI9eM9M
         mN/74lQydxuLvKxjSBuNCwD/kFgsjuYwS/N5eKjYFUSy+bhgXbSLM12R+uU5Ot1DQHso
         QCLQbZEjCFqF5jIDdD3sAque0WKEVbAn8drdoRdUXU0EiAr/yfrQCjolHWkL5V5xYvFx
         Zpow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=U2eBjih+;
       spf=pass (google.com: domain of aarcange@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=aarcange@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y9Y0tNzZN+GzHSm7LBa37xe8b1wVTZQowFYVMff0rDw=;
        b=rmJreGSjUeOjNc5ZHDdZgNbhmlzdTGkixqRw2E7YLMtZNxb1e8wkPZ9AEkvKIcQDRt
         Ow+cJK4Vnll4AJt+aDbPn9NcPGGxSmuPyxSGCrXtdA0+UpOK5FCXX8lpJNDS5miyQ/Ri
         EK8gESt3Jq3g+jrXyDDpQAvQwYYPfT/plQEWBwQm0NFfoxnEtt3YH6pzt1dbAjfvgMqg
         eDdRunvIBNj3d9uPrs9j9tz7TeGdevmoIgid+5LJUAfmjnYLBPX72/MV7xarfzJcANvy
         UyXVTqE5QOnfGK9rL40hUQLS+3+Dp3yxUFi/ZwVQfDLyqaAQg0JrCR7rOtLgi7XMyEUH
         9jkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y9Y0tNzZN+GzHSm7LBa37xe8b1wVTZQowFYVMff0rDw=;
        b=YvGsdBX9t+N5Uaelxh4DlhFkTIVCjr8KY/e5H02HEgisuEIGIm+bSlEo8SdSGs/O0y
         Fc82AuhbxzurW0wXkNHX6Hseq76zRzkSTldWIlBXgaH1n0R+LisYQYX8eFT9jGyGIcPy
         OKu+ovDISHQVORsWgl7WrOjjsjaFA0vHSSQIKcJgi8nOFFFzUsxR3VRSYN6bebLaKcGD
         VXt+6r5QJTHpEf/rMnO6z8wVCHJHsjPXPQ3OjNMUE4yjkue1pqpJQcPgo0mIgDralfd3
         LzNHCOM1DAnpXQlOJlprmbYdlwxGH90CuUC9N1i1Gvfr4dgRXZ6vCt2C3G9jB2NCGGLM
         HtKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Cczao62yMzGqK9MdKhI2cMRmJ6xs+37t6ybNrEDCYUT8qu98x
	hUta7udTyqXrKCD7Wrx46Z0=
X-Google-Smtp-Source: ABdhPJyjFL1p5RoqW0+2eKyHk0xChJr/k02rJMxnxRSKyPNnT+2nrRNDd/ANmjFXnyOwTw6zB+6gcA==
X-Received: by 2002:a67:d715:: with SMTP id p21mr16758032vsj.31.1620736289592;
        Tue, 11 May 2021 05:31:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:725a:: with SMTP id d26ls1912556uap.5.gmail; Tue, 11 May
 2021 05:31:29 -0700 (PDT)
X-Received: by 2002:ab0:20d0:: with SMTP id z16mr24977655ual.33.1620736289022;
        Tue, 11 May 2021 05:31:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620736289; cv=none;
        d=google.com; s=arc-20160816;
        b=mvRDwCCt0pqw/N92y2jQRPjLO1D6AJkwS7fMevJFaE07pxsSRNNgreviTnDe75Oa3N
         hEqWd2S0oMfcGs6Z3HxKnnLw/iiC/z3g5RN4rS65mpiAkXQA6cv0GuFXzKp6hR5xM4os
         +28BxbrSyhBik8gwp+dMmZyF8g7aj68tc5E0WUSSyYQuEd1O8jL/qXHvZ6azKPeW6AHj
         aGeb8DkeAuQi5hzdKHZjS5EfOT5HJllviYoYN0BqAx37K+5sxpAAcW5T4K26PRyFvrH9
         gi/ww2pzATHZm+WGS+jSBV8UM7mWF49Zelall+C7+W6Esi0lV87EdpPb8xgHjYAntdof
         +xlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:user-agent:in-reply-to:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6I17HKpGKAIbzEEi8H4Zbz+2D6FLPlUTf3f7AUFR7+Q=;
        b=esSFjBdG4cgI64BAmYuxpjgWqBrgFUk07JGpDHwpUZLFTXr28DC8rJlfqjHCjTHOyd
         AMsaBa6k/aU2XNhleeExyJx8j6mytw/P8CCy/HEjtnwuNDOJ2OyGmAWpuT+6GsHsNixY
         KkBYxBdMm3D2eyL5LjO4i7Pi7L2+onvMRt5HKDvixgOAnMZ4lodRsMzqmJa00Rdv5Ak9
         IQ6LXoKAbBNbUksEDKm3q6c0iSzsfNcMYSaV6p0fHe3YZaBf5pixw59dWIMvmJ0DNvBe
         DDHOenmR634QDUMvjPjHsy1wzu2Xux8F4awJvVe0fQVlAVTz+LMUhp8W6PP+hAhiMdD/
         3WJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=U2eBjih+;
       spf=pass (google.com: domain of aarcange@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=aarcange@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id p201si359878vke.1.2021.05.11.05.31.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 05:31:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of aarcange@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-241-O1ry1pDhNcCgKsRd_CS6Ww-1; Tue, 11 May 2021 08:31:25 -0400
X-MC-Unique: O1ry1pDhNcCgKsRd_CS6Ww-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CC5B4107ACC7;
	Tue, 11 May 2021 12:31:24 +0000 (UTC)
Received: from mail (ovpn-113-12.rdu2.redhat.com [10.10.113.12])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7ACD4761E1;
	Tue, 11 May 2021 12:31:24 +0000 (UTC)
Date: Tue, 11 May 2021 08:31:23 -0400
From: Andrea Arcangeli <aarcange@redhat.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Peter Xu <peterx@redhat.com>
Subject: Re: [aa:mapcount_deshare 20/27] mm/gup.c:2756:3: error: implicit
 declaration of function 'mm_set_has_pinned_flag'
Message-ID: <YJp5G5gdySlpVHwV@redhat.com>
References: <202105111829.jGDViOAc-lkp@intel.com>
MIME-Version: 1.0
In-Reply-To: <202105111829.jGDViOAc-lkp@intel.com>
User-Agent: Mutt/2.0.7 (2021-05-04)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: aarcange@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=U2eBjih+;
       spf=pass (google.com: domain of aarcange@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=aarcange@redhat.com;
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

Hello,

thanks to the report.

Peter, this isn't immediately clear to me, is it perhaps something
related to clang?

This is commit 8dec302e87453234fc7ac1cf4d09e4d577a06cf3

From 8dec302e87453234fc7ac1cf4d09e4d577a06cf3 Mon Sep 17 00:00:00 2001
From: Andrea Arcangeli <aarcange@redhat.com>
Date: Fri, 7 May 2021 11:05:53 -0400
Subject: [PATCH 1/1] mm: gup: pack has_pinned in MMF_HAS_PINNED

has_pinned 32bit can be packed in the MMF_HAS_PINNED bit as a noop
cleanup.

Any atomic_inc/dec to the mm cacheline shared by all threads in
pin-fast would reintroduce a loss of SMP scalability to pin-fast, so
there's no future potential usefulness to keep an atomic in the mm for
this.

set_bit(MMF_HAS_PINNED) will be theoretically a bit slower than
WRITE_ONCE (atomic_set is equivalent to WRITE_ONCE), but the set_bit
(just like atomic_set after this commit) has to be still issued only
once per "mm", so the difference between the two will be lost in the
noise.

will-it-scale "mmap2" shows no change in performance with enterprise
config as expected.

will-it-scale "pin_fast" retains the > 4000% SMP scalability
performance improvement against upstream as expected.

This is a noop as far as overall performance and SMP scalability are
concerned.

Signed-off-by: Andrea Arcangeli <aarcange@redhat.com>
[peterx: Fix build for task_mmu.c, introduce mm_set_has_pinned_flag, fix
 comment here and there]
Signed-off-by: Peter Xu <peterx@redhat.com>
Signed-off-by: Andrea Arcangeli <aarcange@redhat.com>
---
 include/linux/mm.h             |  2 +-
 include/linux/mm_types.h       | 10 ----------
 include/linux/sched/coredump.h |  8 ++++++++
 kernel/fork.c                  |  1 -
 mm/gup.c                       | 19 +++++++++++++++----
 5 files changed, 24 insertions(+), 16 deletions(-)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 5c297b0a97e1..639b3b27ffb7 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -1352,7 +1352,7 @@ static inline bool page_needs_cow_for_dma(struct vm_area_struct *vma,
 	if (!is_cow_mapping(vma->vm_flags))
 		return false;
 
-	if (!atomic_read(&vma->vm_mm->has_pinned))
+	if (!test_bit(MMF_HAS_PINNED, &vma->vm_mm->flags))
 		return false;
 
 	return page_maybe_dma_pinned(page);
diff --git a/include/linux/mm_types.h b/include/linux/mm_types.h
index ebfece42843c..7fc7a3320ad9 100644
--- a/include/linux/mm_types.h
+++ b/include/linux/mm_types.h
@@ -441,16 +441,6 @@ struct mm_struct {
 		 */
 		atomic_t mm_count;
 
-		/**
-		 * @has_pinned: Whether this mm has pinned any pages.  This can
-		 * be either replaced in the future by @pinned_vm when it
-		 * becomes stable, or grow into a counter on its own. We're
-		 * aggresive on this bit now - even if the pinned pages were
-		 * unpinned later on, we'll still keep this bit set for the
-		 * lifecycle of this mm just for simplicity.
-		 */
-		atomic_t has_pinned;
-
 		/**
 		 * @write_protect_seq: Locked when any thread is write
 		 * protecting pages mapped by this mm to enforce a later COW,
diff --git a/include/linux/sched/coredump.h b/include/linux/sched/coredump.h
index dfd82eab2902..4d9e3a656875 100644
--- a/include/linux/sched/coredump.h
+++ b/include/linux/sched/coredump.h
@@ -73,6 +73,14 @@ static inline int get_dumpable(struct mm_struct *mm)
 #define MMF_OOM_VICTIM		25	/* mm is the oom victim */
 #define MMF_OOM_REAP_QUEUED	26	/* mm was queued for oom_reaper */
 #define MMF_MULTIPROCESS	27	/* mm is shared between processes */
+/*
+ * MMF_HAS_PINNED: Whether this mm has pinned any pages.  This can be either
+ * replaced in the future by mm.pinned_vm when it becomes stable, or grow into
+ * a counter on its own. We're aggresive on this bit for now: even if the
+ * pinned pages were unpinned later on, we'll still keep this bit set for the
+ * lifecycle of this mm, just for simplicity.
+ */
+#define MMF_HAS_PINNED		28	/* FOLL_PIN has run, never cleared */
 #define MMF_DISABLE_THP_MASK	(1 << MMF_DISABLE_THP)
 
 #define MMF_INIT_MASK		(MMF_DUMPABLE_MASK | MMF_DUMP_FILTER_MASK |\
diff --git a/kernel/fork.c b/kernel/fork.c
index dc06afd725cb..e31541da7dbd 100644
--- a/kernel/fork.c
+++ b/kernel/fork.c
@@ -1029,7 +1029,6 @@ static struct mm_struct *mm_init(struct mm_struct *mm, struct task_struct *p,
 	mm_pgtables_bytes_init(mm);
 	mm->map_count = 0;
 	mm->locked_vm = 0;
-	atomic_set(&mm->has_pinned, 0);
 	atomic64_set(&mm->pinned_vm, 0);
 	memset(&mm->rss_stat, 0, sizeof(mm->rss_stat));
 	spin_lock_init(&mm->page_table_lock);
diff --git a/mm/gup.c b/mm/gup.c
index 8ca5e923b54f..d8751840ad0b 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -1382,6 +1382,17 @@ int fixup_user_fault(struct mm_struct *mm,
 }
 EXPORT_SYMBOL_GPL(fixup_user_fault);
 
+/*
+ * Set the MMF_HAS_PINNED if not set yet; after set it'll be there for the mm's
+ * lifecycle.  Avoid setting the bit unless necessary, or it might cause write
+ * cache bouncing on large SMP machines for concurrent pinned gups.
+ */
+static inline void mm_set_has_pinned_flag(unsigned long *mm_flags)
+{
+       if (!test_bit(MMF_HAS_PINNED, mm_flags))
+               set_bit(MMF_HAS_PINNED, mm_flags);
+}
+
 /*
  * Please note that this function, unlike __get_user_pages will not
  * return 0 for nr_pages > 0 without FOLL_NOWAIT
@@ -1404,8 +1415,8 @@ static __always_inline long __get_user_pages_locked(struct mm_struct *mm,
 		BUG_ON(*locked != 1);
 	}
 
-	if ((flags & FOLL_PIN) && !atomic_read(&mm->has_pinned))
-		atomic_set(&mm->has_pinned, 1);
+	if (flags & FOLL_PIN)
+		mm_set_has_pinned_flag(&mm->flags);
 
 	/*
 	 * FOLL_PIN and FOLL_GET are mutually exclusive. Traditional behavior
@@ -2741,8 +2752,8 @@ static int internal_get_user_pages_fast(unsigned long start,
 				       FOLL_FAST_ONLY)))
 		return -EINVAL;
 
-	if ((gup_flags & FOLL_PIN) && !atomic_read(&current->mm->has_pinned))
-		atomic_set(&current->mm->has_pinned, 1);
+	if (gup_flags & FOLL_PIN)
+		mm_set_has_pinned_flag(&current->mm->flags);
 
 	if (!(gup_flags & FOLL_FAST_ONLY))
 		might_lock_read(&current->mm->mmap_lock);


On Tue, May 11, 2021 at 06:45:36PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/andrea/aa.git mapcount_deshare
> head:   3e2f198cce0c1792ad71d6d81974b091019b6483
> commit: 8dec302e87453234fc7ac1cf4d09e4d577a06cf3 [20/27] mm: gup: pack has_pinned in MMF_HAS_PINNED
> config: arm-randconfig-r014-20210511 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a0fed635fe1701470062495a6ffee1c608f3f1bc)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/andrea/aa.git/commit/?id=8dec302e87453234fc7ac1cf4d09e4d577a06cf3
>         git remote add aa https://git.kernel.org/pub/scm/linux/kernel/git/andrea/aa.git
>         git fetch --no-tags aa mapcount_deshare
>         git checkout 8dec302e87453234fc7ac1cf4d09e4d577a06cf3
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> mm/gup.c:2756:3: error: implicit declaration of function 'mm_set_has_pinned_flag' [-Werror,-Wimplicit-function-declaration]
>                    mm_set_has_pinned_flag(&current->mm->flags);
>                    ^
>    1 error generated.
> 
> 
> vim +/mm_set_has_pinned_flag +2756 mm/gup.c
> 
>   2740	
>   2741	static int internal_get_user_pages_fast(unsigned long start,
>   2742						unsigned long nr_pages,
>   2743						unsigned int gup_flags,
>   2744						struct page **pages)
>   2745	{
>   2746		unsigned long len, end;
>   2747		unsigned long nr_pinned;
>   2748		int ret;
>   2749	
>   2750		if (WARN_ON_ONCE(gup_flags & ~(FOLL_WRITE | FOLL_LONGTERM |
>   2751					       FOLL_FORCE | FOLL_PIN | FOLL_GET |
>   2752					       FOLL_FAST_ONLY)))
>   2753			return -EINVAL;
>   2754	
>   2755		if (gup_flags & FOLL_PIN)
> > 2756			mm_set_has_pinned_flag(&current->mm->flags);
>   2757	
>   2758		if (!(gup_flags & FOLL_FAST_ONLY))
>   2759			might_lock_read(&current->mm->mmap_lock);
>   2760	
>   2761		start = untagged_addr(start) & PAGE_MASK;
>   2762		len = nr_pages << PAGE_SHIFT;
>   2763		if (check_add_overflow(start, len, &end))
>   2764			return 0;
>   2765		if (unlikely(!access_ok((void __user *)start, len)))
>   2766			return -EFAULT;
>   2767	
>   2768		nr_pinned = lockless_pages_from_mm(start, end, gup_flags, pages);
>   2769		if (nr_pinned == nr_pages || gup_flags & FOLL_FAST_ONLY)
>   2770			return nr_pinned;
>   2771	
>   2772		/* Slow path: try to get the remaining pages with get_user_pages */
>   2773		start += nr_pinned << PAGE_SHIFT;
>   2774		pages += nr_pinned;
>   2775		ret = __gup_longterm_unlocked(start, nr_pages - nr_pinned, gup_flags,
>   2776					      pages);
>   2777		if (ret < 0) {
>   2778			/*
>   2779			 * The caller has to unpin the pages we already pinned so
>   2780			 * returning -errno is not an option
>   2781			 */
>   2782			if (nr_pinned)
>   2783				return nr_pinned;
>   2784			return ret;
>   2785		}
>   2786		return ret + nr_pinned;
>   2787	}
>   2788	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJp5G5gdySlpVHwV%40redhat.com.
