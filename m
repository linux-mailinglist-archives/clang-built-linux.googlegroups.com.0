Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBCULTGBQMGQE6ZPQ2SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id C850835226C
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 00:13:31 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id d12sf4921716ioo.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 15:13:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617315210; cv=pass;
        d=google.com; s=arc-20160816;
        b=WtWF/SrdBfb5vAXDJFkIFyYVjBsA4dtx7HUKuT2YFp0h1pvWCphXmtb/Dbd/MUc9BK
         VADyQk/1pWyl32R3qot0GJZYEvhCZtc2Gac9enKo0nbeEbZRHHQUWAldv02c9x///HGg
         69/nnsNk2hHD8JB4QosOUwLsWFXANDj3iv0FZKlm6CjAGZPZx5L/cRD7GsbaMYWlpMqt
         sFS/Ep+Jf6IyHTrBLlHHrI5KlwYg+DOFlvU8Sel9X6y1HABy9JEs+ez+8ovMKnFIpAWy
         9iWHPkGKyE+NUj0exRdTz+usZ3gB4MPpfv1D1hau59lTLcbVQuREvlLWS5p9xlax3jI6
         PiXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=A5SivunFiNu+g+8IA174PF7PAyw+36+HZUSsKgi6Duw=;
        b=mkj4r9VYYB1lHT68WsfY6AfLchxJoVpyxZKUlqw1PFtMuJjV+p0z5O/mT3MeTSiLRU
         M1rirBIaGjuhhCrRH3pSat9pgt0DTS/5dmzenIGGDlhmoufpLRUl5VkXG+Hbxd0kxEL/
         te11+VvxyWwiwxEDGR07nrChag7IZI7LpXmeTzJjUc5Ak+Pb7L34j5jAofbaEECjHgMd
         kiZhfiumtYF7+0eF7Fg7ralrZIQslzQceAmM2j3ffr4p86Nii9sifqYiZ+XiGZ+mYh3Y
         KbEFNCKr+H7y1H6rlv4D8sAGgPbSKy1Y/9XieR0k6GiEZ9PyJC8dIuTDohTVAWvdyfcf
         Rokg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cjEHKO3Z;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A5SivunFiNu+g+8IA174PF7PAyw+36+HZUSsKgi6Duw=;
        b=hacpz6xK9LhZHDJXkB56LAJNrI1N/uxW6YcSGTQqYt1Dw6Wk1kNDVGVMgV3KwSrDpO
         BHTIkTavax8i1azRMY9pHEToEcswE7Zr6J9MfAfZGkxY9AGWtutcXgVhuBe5mdXrVeyA
         gAGaVyGTuA+SPt8F1EbUgIadcLmIEPQdWY2xnEwxRGg38NyEuA0aTZu06hJNYH8O/CSM
         2Q4hzBHTK2rinRGfwgAELn5HygHaHD17PtYMglCU4sLzFMm8DxXwMWOMKACksIxdfoiG
         3jcEY7bb2a0qW1iS6e8zUMSGQlU6PlLxKHBk6r5VtFGvDEZokeF3elXZhMrX7loj1DX6
         8spQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A5SivunFiNu+g+8IA174PF7PAyw+36+HZUSsKgi6Duw=;
        b=Kf/czZdAedWlIxr6h/pXB2nvM/bCn/hdADQjnDJpWUkyBqaLDeDwrtoCbsDLacvDhm
         DWfS+vZyCMaoaUM/SdLjnROHqGXr1unoAZ6DbWq0y5GuitmCPR+GLoVugb4jMs2nWN4p
         h/SCeiut60uQexz+e86S1M3pqama0kxF05e+2wy4+JYntjsedPwwSnrHhfj1R76vUOxb
         Wds+aQRhVbBzd1rTLrK7ujGhikM4wShhYD/RfA/mcJyo9IpfTzadU18NiJ8plU0tncEE
         r0ie0P5i/KbBNR8ou+em1WlmkMXxoqOppNs4mrLpkY1pLH5kuM/3dsENhc0nQctg/5UL
         35oA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sac5T406Fb/wWhuY7oDoDT3UD7hZ/+x/8LytcSd35b2zVdYwl
	wY6yFMKmmmKu1qc158ekx3c=
X-Google-Smtp-Source: ABdhPJzxex64aRnIOVeK8mb788Y8rlpULdf4sEQPlef7PtONrcVXD2TauURxvXz44/gZKPky5qY3+g==
X-Received: by 2002:a05:6e02:13c8:: with SMTP id v8mr8268779ilj.290.1617315210794;
        Thu, 01 Apr 2021 15:13:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c6a2:: with SMTP id o2ls956487jan.6.gmail; Thu, 01 Apr
 2021 15:13:30 -0700 (PDT)
X-Received: by 2002:a02:7410:: with SMTP id o16mr10034583jac.37.1617315210418;
        Thu, 01 Apr 2021 15:13:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617315210; cv=none;
        d=google.com; s=arc-20160816;
        b=ZW++HZt19CkZfdZtxMwBtbRY+loqLkOBez9czlaGt2T+p3ADfdGYraQJ+irn+pIayu
         2j7AX/ZkvkEl6v/eBgVAjLwiXFBSR59VBtZB3TYYKwORIv2DrzBckpAp4GMUCWfQHgW8
         C+wDQZlOR7UYk//knm3vxMbKrR+1TWkYWOG0zvrjeYtweW+Bh9ujthQlPW+o1oo8XqBD
         cIWQ/cuOvs4HR/Hcf5pRulMjgIAXFRiR6VQZHnOuYyASitf2iOScaKvmVI6l7Svsa5sQ
         kEwX8nWBtlDYpjEkLPfeKh2dbf1Vn3+mVYzU/sMd47TGtEIFg/WRi0SgHdvj3T/FLlQB
         FZQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Gl97oxPIVXZYcwzInna88mJV+71EBUvsRwHZJgUDTHE=;
        b=l879T9GkVTOTajco/zSFffNZkEQuvg5Pyq0UYoDP8sJYZCAug8GX4MYhRIgysb85tC
         IKpVCelUcWMhp8M2+9tFifJoJ0o11kCMmFFI7ivl4TfJqEBMnVxIfSlYbDaOcKxag2GF
         7bASHC+xxUrZ01yfR/qAd0LzNVZMXHphmsnHTookx6czXF1W8PfrYXvV/7X0m3iL0S+t
         fkZDqTCMEK9sICueUfdPkOQgXXHzbGWej+0+Q5Ob9yrwr39EmdLvqfUaeO8zoTtqwFXI
         WyPLqN4QC3jEKfhKNk/Fv0ZtvoIxr1RWlFGZwbcbZ6t7CPM9XLHWXw5pEL5+8i19zeqw
         H5ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cjEHKO3Z;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id u17si460360ilk.5.2021.04.01.15.13.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 15:13:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id v8so1674828plz.10
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 15:13:30 -0700 (PDT)
X-Received: by 2002:a17:902:8f8d:b029:e7:4a2f:1950 with SMTP id z13-20020a1709028f8db02900e74a2f1950mr9634785plo.77.1617315209867;
        Thu, 01 Apr 2021 15:13:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y68sm7022290pgy.5.2021.04.01.15.13.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 15:13:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Christoph Hellwig <hch@lst.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Tejun Heo <tj@kernel.org>,
	Alexander Viro <viro@zeniv.linux.org.uk>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Shuah Khan <shuah@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kefeng Wang <wangkefeng.wang@huawei.com>,
	"Matthew Wilcox (Oracle)" <willy@infradead.org>,
	linux-kernel@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Michal Hocko <mhocko@suse.com>,
	Alexey Dobriyan <adobriyan@gmail.com>,
	Lee Duncan <lduncan@suse.com>,
	Chris Leech <cleech@redhat.com>,
	Adam Nichols <adam@grimm-co.com>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v4 1/3] lkdtm/heap: Add vmalloc linear overflow test
Date: Thu,  1 Apr 2021 15:13:18 -0700
Message-Id: <20210401221320.2717732-2-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210401221320.2717732-1-keescook@chromium.org>
References: <20210401221320.2717732-1-keescook@chromium.org>
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; g=970fea1dfc54675cf92960ed316cdea27f2a2b55; i=zAev4cjW2dHa2AXn2sZrbiZj58xWVMf9s1WNriwUPTo=; m=qJGeBnIdFmEfwvhoT9HcMsaZ+R0eVHz0QfuZfXAAVFA=; p=jblLmhd9kg9taPt5qJwEBeZbhf2U5OVB9wDFfWdvEwc=
X-Patch-Sig: m=pgp; i=keescook@chromium.org; s=0x0x8972F4DFDC6DC026; b=iQIzBAABCgAdFiEEpcP2jyKd1g9yPm4TiXL039xtwCYFAmBmRX4ACgkQiXL039xtwCZE+hAAnIT uar89s8tk5F3KllVHos+dD9cu+MxDd8FCSDc61glKeq3AnFikTxoWcqrMRrZ/9bWse2ECMyXcUr2G ysUtjKS1/0RP3B2HvYQGOIaO/wQlNkz+55Tmpg/LjiUClRc1uHo27W/0Eo+MeSq54RpUE068a/df/ KIfZpK5b2kv9CZaIk75ZoMiaZ7v+gXmHhijoDN1CrE0K9OfopKWNCLA3f1bkPoStdaA+NHn6PK9Mo mYXcaOEMWLEtcte1ycFNdGEbsSt5O0uMsWUJRI5/fH6NDdWAReHY4CVTImbMDE7S3a+WkYU/nl5wk //eufaod6uCp7vYgXHvnI1DvVOpP7S7uzvDjvx4rL7r7aAWU3vPdbdntw6NXEchs8JnjAZ4BTLXz4 rEC6x4CcxYx6qoT9wgAgHTWSfhMsjCI13Crr4RLZzGLw9oToL60IEoS/2mlwG/+8DgJpKpdwbZqS4 Ka1j23mSyZksyTlOHM6HifEw1QX9rlB41FXJsVAjQIL/lyx/YAW/sUDccJKR3wqmZuesnTD+RbFZ0 4hlR0Q3INkv8RBBg/+lPd8hb9QwftkOxkGMQV0xqsYC81lN3IS+kAxNdgurRWeQzsOTMML37DD60G P9zP81gb39t43FvyY/LDuT2RKBAHd3ffyG2pbPP3v95Y1LhDRICP60gpJ/j+FQ6I=
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=cjEHKO3Z;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Content-Type: text/plain; charset="UTF-8"
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

Similar to the existing slab overflow and stack exhaustion tests, add
VMALLOC_LINEAR_OVERFLOW (and rename the slab test SLAB_LINEAR_OVERFLOW).

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/misc/lkdtm/core.c               |  3 ++-
 drivers/misc/lkdtm/heap.c               | 21 ++++++++++++++++++++-
 drivers/misc/lkdtm/lkdtm.h              |  3 ++-
 tools/testing/selftests/lkdtm/tests.txt |  3 ++-
 4 files changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/misc/lkdtm/core.c b/drivers/misc/lkdtm/core.c
index b2aff4d87c01..c3a5ad21b3d2 100644
--- a/drivers/misc/lkdtm/core.c
+++ b/drivers/misc/lkdtm/core.c
@@ -119,7 +119,8 @@ static const struct crashtype crashtypes[] = {
 	CRASHTYPE(UNALIGNED_LOAD_STORE_WRITE),
 	CRASHTYPE(FORTIFY_OBJECT),
 	CRASHTYPE(FORTIFY_SUBOBJECT),
-	CRASHTYPE(OVERWRITE_ALLOCATION),
+	CRASHTYPE(SLAB_LINEAR_OVERFLOW),
+	CRASHTYPE(VMALLOC_LINEAR_OVERFLOW),
 	CRASHTYPE(WRITE_AFTER_FREE),
 	CRASHTYPE(READ_AFTER_FREE),
 	CRASHTYPE(WRITE_BUDDY_AFTER_FREE),
diff --git a/drivers/misc/lkdtm/heap.c b/drivers/misc/lkdtm/heap.c
index 1323bc16f113..5d491c22e09a 100644
--- a/drivers/misc/lkdtm/heap.c
+++ b/drivers/misc/lkdtm/heap.c
@@ -5,18 +5,37 @@
  */
 #include "lkdtm.h"
 #include <linux/slab.h>
+#include <linux/vmalloc.h>
 #include <linux/sched.h>
 
 static struct kmem_cache *double_free_cache;
 static struct kmem_cache *a_cache;
 static struct kmem_cache *b_cache;
 
+/*
+ * If there aren't guard pages, it's likely that a consecutive allocation will
+ * let us overflow into the second allocation without overwriting something real.
+ */
+void lkdtm_VMALLOC_LINEAR_OVERFLOW(void)
+{
+	char *one, *two;
+
+	one = vzalloc(PAGE_SIZE);
+	two = vzalloc(PAGE_SIZE);
+
+	pr_info("Attempting vmalloc linear overflow ...\n");
+	memset(one, 0xAA, PAGE_SIZE + 1);
+
+	vfree(two);
+	vfree(one);
+}
+
 /*
  * This tries to stay within the next largest power-of-2 kmalloc cache
  * to avoid actually overwriting anything important if it's not detected
  * correctly.
  */
-void lkdtm_OVERWRITE_ALLOCATION(void)
+void lkdtm_SLAB_LINEAR_OVERFLOW(void)
 {
 	size_t len = 1020;
 	u32 *data = kmalloc(len, GFP_KERNEL);
diff --git a/drivers/misc/lkdtm/lkdtm.h b/drivers/misc/lkdtm/lkdtm.h
index 5ae48c64df24..5a852d0beee0 100644
--- a/drivers/misc/lkdtm/lkdtm.h
+++ b/drivers/misc/lkdtm/lkdtm.h
@@ -38,7 +38,8 @@ void lkdtm_FORTIFY_SUBOBJECT(void);
 /* heap.c */
 void __init lkdtm_heap_init(void);
 void __exit lkdtm_heap_exit(void);
-void lkdtm_OVERWRITE_ALLOCATION(void);
+void lkdtm_VMALLOC_LINEAR_OVERFLOW(void);
+void lkdtm_SLAB_LINEAR_OVERFLOW(void);
 void lkdtm_WRITE_AFTER_FREE(void);
 void lkdtm_READ_AFTER_FREE(void);
 void lkdtm_WRITE_BUDDY_AFTER_FREE(void);
diff --git a/tools/testing/selftests/lkdtm/tests.txt b/tools/testing/selftests/lkdtm/tests.txt
index 11ef159be0fd..322a1d2439e3 100644
--- a/tools/testing/selftests/lkdtm/tests.txt
+++ b/tools/testing/selftests/lkdtm/tests.txt
@@ -15,7 +15,8 @@ UNSET_SMEP CR4 bits went missing
 DOUBLE_FAULT
 CORRUPT_PAC
 UNALIGNED_LOAD_STORE_WRITE
-#OVERWRITE_ALLOCATION Corrupts memory on failure
+VMALLOC_LINEAR_OVERFLOW
+SLAB_LINEAR_OVERFLOW
 #WRITE_AFTER_FREE Corrupts memory on failure
 READ_AFTER_FREE
 #WRITE_BUDDY_AFTER_FREE Corrupts memory on failure
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401221320.2717732-2-keescook%40chromium.org.
