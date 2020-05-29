Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBLOVYX3AKGQE24Q7G3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DD31E8869
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:03:58 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id d9sf2784886pll.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:03:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590782637; cv=pass;
        d=google.com; s=arc-20160816;
        b=A2nd9C834Rory5yrM06vFYcePLz5I7FHij6u9ZvnX3KjfulWt7MDV9zNEAlQGW6n3d
         rm3Xtnrmqq5rvBrwq7Pki3MURWcOQgpNcY6I94hYikvl8ZF3IS1Gpjq3vw7IEx8VNIHU
         KVtNyKpUJAWEP5HpbtqrIIL3bbfsHE0hQ4UxgfYzYIqN5cRE1ypiCKx0gBcc5tLKVUXk
         Yrnf+W2HJPdaQi1m/QuMiPAJb/vACM29cbZ0pEqL6Y86mIUKicwuXyzTxd30o8JywqWv
         WOiocDnxjHO0HxCWDTDLXYudxx9eKK1uVxLL4nVMEgIESEOgbLxKIXI5nzgI6oRHx7Vl
         dzjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vqN2bp1w3yjqWaKZoF4lvYGXSfJhRiSKO4EjkgdYbEY=;
        b=w4/rdn/3YyvukunZDnhMpEI8j3tcnDFUr+3icoFwyk9UG1vG9Jg3tJWcMuKKIlj1xw
         +IMIAMEBND2CP8o8mK4cgeK6hGg3lhdEZNMW36nZq9ETCmS9EDh7B9GwgSSiTKoV1tm/
         sxb6DDLFSBGVzSOD9oQHPQAGPRWTzEHV5d0y52cbJTOBzGXosdM0MqyzzNbYxthW3tDF
         E00KlaHR0Vi5XrPgq2kMxYvHzNBUVFSgP/99JrTre5ANc1EN5nXV86Ni0rZVZmBhllMR
         LhnVPM3U4VU04OzD77weevwRVMJlhS0DVo/qVZS9Mbnvbgx3Lms7FvgXB8A6p/0aZbx9
         g//g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VPgK1V3r;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vqN2bp1w3yjqWaKZoF4lvYGXSfJhRiSKO4EjkgdYbEY=;
        b=I8y6WaSTwccF9vhG6fW2iBJiShA79zYGDgHoCpYtnjeR6id8cmE5t7MWMYuHoKZ4DM
         J6CInbPa3dgCUi2b9d0SLmgj8YTm84y2APg4rXDm6BUKapPutkPZy9pSNMvZf632WAKT
         2uTAKxWIcrocLAHOOdJGjA9ojyPB5q5ZOgt4lIGj7xDoDh3pffm0fIs1zjbuc8p0VpXG
         KB5y/YMo03YOOOuXZoKP557ixWjdtU0obmmRiNuFeikR4AtvK1DHB/hnw37z0BJfaEG7
         nZDVMs9FMcklZdek7kplmKttfn+E8NdEjTAehPQqjn0xgmsKc2pJxh/plD+/Dld8NJsa
         /zFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vqN2bp1w3yjqWaKZoF4lvYGXSfJhRiSKO4EjkgdYbEY=;
        b=n6EX06qXS2+OQjgloJMc7BtOpUAknFswp1PXJDBfoDI17I9jK4jZR2Q++EH8dSAeUY
         kYp+NmeqLVGoQPzgzXvxuVa9vJ/dr4dInA6A/M6LzU5aEtPGvRF5SNFCTUreNxG7rsDl
         PK/K6rbsMHTe2KdjUXx2FUEWXEK2+OzH7xRv0vbW1QVc6+JZDb0E89JhfbiAF2xtVpRD
         l04VD0jADu7VQ+u9Xc/XpYkA2M1iWdkbRv0vjY88exHiJ99QHVSYOrP10/oTuMCToTAy
         AisxfhP9nq+apbUNtFLSmfp8NABloJwixZWAnyQsVYiHKF0CAb0jzw3ww6WO6ZPv+ax4
         kd9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531FmYY3KeRfcfwhCBmvDJXV2Zt+U0UZNSmDNYZR5aeaC84MGOzW
	1yJlk8z1AjwsZhk9rj3xnRQ=
X-Google-Smtp-Source: ABdhPJwCySryXFr4DhyyaSqAA6evou0+hIam54dFc4CVsFBWGx+DCAYtK364iRs4nsnVECi0eRMB3A==
X-Received: by 2002:a17:902:7b94:: with SMTP id w20mr10622495pll.123.1590782637082;
        Fri, 29 May 2020 13:03:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:104a:: with SMTP id gq10ls919958pjb.0.canary-gmail;
 Fri, 29 May 2020 13:03:56 -0700 (PDT)
X-Received: by 2002:a17:902:c082:: with SMTP id j2mr10624250pld.268.1590782636671;
        Fri, 29 May 2020 13:03:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590782636; cv=none;
        d=google.com; s=arc-20160816;
        b=UFvu5hsMA2zRY4nq7vsr6tATzIUuftvdkKEn6Om1OiiLvIlo5DZkEHo2OUW+vGtpcS
         eAHeHgMgXkV4rULxAOXmzjh8kolHtzFA/GX0oS9JWGnRrvgtM8KT9MdiDJ8JMwfJXU3m
         4k/eN3pn9azw5IIyonQk+JsnP1+MsBep8PiRVJRGZziWrIIZVVldeWULrRzmtI54tCLI
         0Cj6VrsbpVf/k9PvrNPVEG+MauHj8P/nCKHLEeEB6+GUJAB9dmhiew/e5fDQXVuKvg6H
         rd7WwRYKiuGBkIEHYbvG/d+3YQ6wiuJVz043C7nXPlsGc7b0e/4i1JAXdz6ibKk1SSra
         4kSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vXTP+Se3yIkI89g0fJMXKoRVrwz9jV/dqS5u7kTh71Q=;
        b=BBKfkVvloTgoPdSlWJ5gTkmKAwahgnozWJZTxf7WN0vhm10QnOpWs60qALN01T9PT+
         s6aOBuGNcj1lvvVjPVru6+01ObiJzAbQcViOYQtlHSItsPqGKDKwYkYndOk8VwVlseEB
         3phygxkbpCgC3dn3YOSa+dIGHzOzuZOXAF14cqFt1O7O/E2UE1BEb5XnyeZgmoshzAxZ
         n7XZZLxSYPAX3QjHghPHN3/D8Em/aKcDtopH17/oSF630Hye6cz4zQgkPrta1wQGYYfW
         j71lciq+4mWEc0ojDNJmAH6G2GPJQEFCtnpxr8iC7sCPudH2JMdvFXWdoEpVhPVZDnbV
         Lidg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VPgK1V3r;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id u79si402253pfc.0.2020.05.29.13.03.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 13:03:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id j21so431882pgb.7
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 13:03:56 -0700 (PDT)
X-Received: by 2002:aa7:9096:: with SMTP id i22mr10330016pfa.250.1590782636345;
        Fri, 29 May 2020 13:03:56 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p19sm4775093pff.116.2020.05.29.13.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 13:03:54 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Prasad Sodagudi <psodagud@codeaurora.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] lkdtm: Avoid more compiler optimizations for bad writes
Date: Fri, 29 May 2020 13:03:44 -0700
Message-Id: <20200529200347.2464284-2-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200529200347.2464284-1-keescook@chromium.org>
References: <20200529200347.2464284-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VPgK1V3r;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
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

It seems at least Clang is able to throw away writes it knows are
destined for read-only memory, which makes things like the WRITE_RO test
fail, as the write gets elided. Instead, force the variable to be
volatile, and make similar changes through-out other tests in an effort
to avoid needing to repeat fixing these kinds of problems. Also includes
pr_err() calls in failure paths so that kernel logs are more clear in
the failure case.

Reported-by: Prasad Sodagudi <psodagud@codeaurora.org>
Suggested-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/misc/lkdtm/bugs.c     | 11 +++++------
 drivers/misc/lkdtm/perms.c    | 22 +++++++++++++++-------
 drivers/misc/lkdtm/usercopy.c |  7 +++++--
 3 files changed, 25 insertions(+), 15 deletions(-)

diff --git a/drivers/misc/lkdtm/bugs.c b/drivers/misc/lkdtm/bugs.c
index 886459e0ddd9..e1b43f615549 100644
--- a/drivers/misc/lkdtm/bugs.c
+++ b/drivers/misc/lkdtm/bugs.c
@@ -118,9 +118,8 @@ noinline void lkdtm_CORRUPT_STACK(void)
 	/* Use default char array length that triggers stack protection. */
 	char data[8] __aligned(sizeof(void *));
 
-	__lkdtm_CORRUPT_STACK(&data);
-
-	pr_info("Corrupted stack containing char array ...\n");
+	pr_info("Corrupting stack containing char array ...\n");
+	__lkdtm_CORRUPT_STACK((void *)&data);
 }
 
 /* Same as above but will only get a canary with -fstack-protector-strong */
@@ -131,9 +130,8 @@ noinline void lkdtm_CORRUPT_STACK_STRONG(void)
 		unsigned long *ptr;
 	} data __aligned(sizeof(void *));
 
-	__lkdtm_CORRUPT_STACK(&data);
-
-	pr_info("Corrupted stack containing union ...\n");
+	pr_info("Corrupting stack containing union ...\n");
+	__lkdtm_CORRUPT_STACK((void *)&data);
 }
 
 void lkdtm_UNALIGNED_LOAD_STORE_WRITE(void)
@@ -248,6 +246,7 @@ void lkdtm_ARRAY_BOUNDS(void)
 
 	kfree(not_checked);
 	kfree(checked);
+	pr_err("FAIL: survived array bounds overflow!\n");
 }
 
 void lkdtm_CORRUPT_LIST_ADD(void)
diff --git a/drivers/misc/lkdtm/perms.c b/drivers/misc/lkdtm/perms.c
index 62f76d506f04..2dede2ef658f 100644
--- a/drivers/misc/lkdtm/perms.c
+++ b/drivers/misc/lkdtm/perms.c
@@ -57,6 +57,7 @@ static noinline void execute_location(void *dst, bool write)
 	}
 	pr_info("attempting bad execution at %px\n", func);
 	func();
+	pr_err("FAIL: func returned\n");
 }
 
 static void execute_user_location(void *dst)
@@ -75,20 +76,22 @@ static void execute_user_location(void *dst)
 		return;
 	pr_info("attempting bad execution at %px\n", func);
 	func();
+	pr_err("FAIL: func returned\n");
 }
 
 void lkdtm_WRITE_RO(void)
 {
-	/* Explicitly cast away "const" for the test. */
-	unsigned long *ptr = (unsigned long *)&rodata;
+	/* Explicitly cast away "const" for the test and make volatile. */
+	volatile unsigned long *ptr = (unsigned long *)&rodata;
 
 	pr_info("attempting bad rodata write at %px\n", ptr);
 	*ptr ^= 0xabcd1234;
+	pr_err("FAIL: survived bad write\n");
 }
 
 void lkdtm_WRITE_RO_AFTER_INIT(void)
 {
-	unsigned long *ptr = &ro_after_init;
+	volatile unsigned long *ptr = &ro_after_init;
 
 	/*
 	 * Verify we were written to during init. Since an Oops
@@ -102,19 +105,21 @@ void lkdtm_WRITE_RO_AFTER_INIT(void)
 
 	pr_info("attempting bad ro_after_init write at %px\n", ptr);
 	*ptr ^= 0xabcd1234;
+	pr_err("FAIL: survived bad write\n");
 }
 
 void lkdtm_WRITE_KERN(void)
 {
 	size_t size;
-	unsigned char *ptr;
+	volatile unsigned char *ptr;
 
 	size = (unsigned long)do_overwritten - (unsigned long)do_nothing;
 	ptr = (unsigned char *)do_overwritten;
 
 	pr_info("attempting bad %zu byte write at %px\n", size, ptr);
-	memcpy(ptr, (unsigned char *)do_nothing, size);
+	memcpy((void *)ptr, (unsigned char *)do_nothing, size);
 	flush_icache_range((unsigned long)ptr, (unsigned long)(ptr + size));
+	pr_err("FAIL: survived bad write\n");
 
 	do_overwritten();
 }
@@ -193,9 +198,11 @@ void lkdtm_ACCESS_USERSPACE(void)
 	pr_info("attempting bad read at %px\n", ptr);
 	tmp = *ptr;
 	tmp += 0xc0dec0de;
+	pr_err("FAIL: survived bad read\n");
 
 	pr_info("attempting bad write at %px\n", ptr);
 	*ptr = tmp;
+	pr_err("FAIL: survived bad write\n");
 
 	vm_munmap(user_addr, PAGE_SIZE);
 }
@@ -203,19 +210,20 @@ void lkdtm_ACCESS_USERSPACE(void)
 void lkdtm_ACCESS_NULL(void)
 {
 	unsigned long tmp;
-	unsigned long *ptr = (unsigned long *)NULL;
+	volatile unsigned long *ptr = (unsigned long *)NULL;
 
 	pr_info("attempting bad read at %px\n", ptr);
 	tmp = *ptr;
 	tmp += 0xc0dec0de;
+	pr_err("FAIL: survived bad read\n");
 
 	pr_info("attempting bad write at %px\n", ptr);
 	*ptr = tmp;
+	pr_err("FAIL: survived bad write\n");
 }
 
 void __init lkdtm_perms_init(void)
 {
 	/* Make sure we can write to __ro_after_init values during __init */
 	ro_after_init |= 0xAA;
-
 }
diff --git a/drivers/misc/lkdtm/usercopy.c b/drivers/misc/lkdtm/usercopy.c
index e172719dd86d..b833367a45d0 100644
--- a/drivers/misc/lkdtm/usercopy.c
+++ b/drivers/misc/lkdtm/usercopy.c
@@ -304,19 +304,22 @@ void lkdtm_USERCOPY_KERNEL(void)
 		return;
 	}
 
-	pr_info("attempting good copy_to_user from kernel rodata\n");
+	pr_info("attempting good copy_to_user from kernel rodata: %px\n",
+		test_text);
 	if (copy_to_user((void __user *)user_addr, test_text,
 			 unconst + sizeof(test_text))) {
 		pr_warn("copy_to_user failed unexpectedly?!\n");
 		goto free_user;
 	}
 
-	pr_info("attempting bad copy_to_user from kernel text\n");
+	pr_info("attempting bad copy_to_user from kernel text: %px\n",
+		vm_mmap);
 	if (copy_to_user((void __user *)user_addr, vm_mmap,
 			 unconst + PAGE_SIZE)) {
 		pr_warn("copy_to_user failed, but lacked Oops\n");
 		goto free_user;
 	}
+	pr_err("FAIL: survived bad copy_to_user()\n");
 
 free_user:
 	vm_munmap(user_addr, PAGE_SIZE);
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529200347.2464284-2-keescook%40chromium.org.
