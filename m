Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5UV2T3QKGQEVB6DMDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9C120A6D5
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 22:37:12 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id m14sf5005694iln.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 13:37:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593117431; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZSELukEogx3BE/AmNHjDf57mX3dO8CCztxsLwQd6M62toneKsKl3KbbxchpP/Uc10p
         DxcmxV3pRxIM+1YnAxKosQ7wia0MWEKcAi3TLj9WemBlu8WsS9R113NVfCw6prMxY9ou
         OALO3RZ60v7GwTqmVagp7BUtBT6FnEv9vGuSFb63FDqYmxc5zd1br38ysHvoyEyYFSw9
         ATq56gbJDbkjjxlqBUv5ocSiNcteNgkd/jNJ3KMB3JXRNnTmGMQiOtrkhO7FehmKFvSn
         NUswVNuKP4bfXxQerm4WstXPU8/dI3pKug9vBVuZ6/gbeXtjgthziTzC9P79+AVXpfnW
         VIgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5Q+bQYlXrGhJhbN68nA5pVgM3VDd2LJyG/T/xm/igcI=;
        b=FACFhmfVDBdJQS78F//eCYafXTjZtOQv9SBQf36cmq2EXjXQTr2mgM5/187ByI+Ha+
         M7qYMCu4KItB54Jb/BVMDCgWmCwMkviC2+f0dZLWsXqkKLrqxx1NzG2tdMyUz3CuuRH+
         ddrQSLbKY7DpKGa4AxfbWnE0P2+iLQPa+L8MVY7qT49yeW8dj7475qIrQo1K+kMQD4dq
         VBsn4rESygETRIlWNfe/7wnGFXDUv1+pQ2xq6Ihjxtqr8xz1itfASAOApIDyg7RsvyMR
         h5lgDXSMQtSoToCC/+N/b/CKskGAC0K982GPnl9hKWlNBZjhR3PUc41NMI+Wrf1C1brh
         5W8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Z+l6Gdwk;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5Q+bQYlXrGhJhbN68nA5pVgM3VDd2LJyG/T/xm/igcI=;
        b=f3E/4wIj509wumE04fXpEzKqq4pyFzY0ruFK6s7PD0uwXKWcjbkpeQmLVOYQV1Qf/4
         3ZFOOcWW3fkFO/lmVKqtxU8H5X0u33+1wtERXvweRQngWkEW+u1tz4Q4KuVMoMgvis2C
         N8U3TsmJwRcFsFs6LHG1ZI+g3wC55SAnN0Ruxx2CEIWvCLGFWFBEooUIsxWYW7roz4it
         nlG5LLpLzq1yOt2IWPA33xDxANnIk/tr03HQMSS5YtVCkrNjeD4rwD+Xxl++uarvF0dC
         rQrsgCJ3Ih6ddBGCDyPc0YtCdQqVX2u/ZXUOHuH3roM3cEUTiXxw90+948E0cnrgBy+i
         7/mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5Q+bQYlXrGhJhbN68nA5pVgM3VDd2LJyG/T/xm/igcI=;
        b=BB/PkMxygcEL9uln+219wI5/c/GIwr8c8jksuD6/fEawx9yqoa9MeylunzdvgBAwrS
         nnyzSDI1hQqQecT0WLm09wWs7D5ad1j+5kiFyHLE/L1lrbhNDGIOrlLUSR2RsuMMdzJw
         jwr5F3RMODX67bzrDL7ybq2UcDqS7kC7JTPVEoAbQjn6rVtcEzryhtmHpGL33/Bbo3ye
         LcjIAPzbdAOMovZ6PU7oy5jGbb0iJComNxR5iH81q2rVwZPE9F9UubtiZBZaLF0WtYOl
         62M0eY4fIdKCb9ZmaI/7e6jXQedwdfTFs7ntxRmD1/g1lhELFvdBunGpZQehmepN2cO5
         JQmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NT7kCFVoT/aXNpfg75HTVHeT6ijZchjp2Ruly56z0ldR+BFNx
	dBhbPfBjdzH1/9n0XIWWURE=
X-Google-Smtp-Source: ABdhPJzHwAw9ydyk/61nfb2PzjZ87pl90qm+TZFM1pl6Ao5MfF4MOm1ICgKch7SHnQCxBfzYfz2vOA==
X-Received: by 2002:a05:6638:686:: with SMTP id i6mr26354154jab.123.1593117431069;
        Thu, 25 Jun 2020 13:37:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:5b18:: with SMTP id v24ls1417809ioh.10.gmail; Thu, 25
 Jun 2020 13:37:10 -0700 (PDT)
X-Received: by 2002:a05:6602:164f:: with SMTP id y15mr39465300iow.210.1593117430679;
        Thu, 25 Jun 2020 13:37:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593117430; cv=none;
        d=google.com; s=arc-20160816;
        b=m7dAsQDmk2Q4f4W1TzynFwg73g5wfCV0QgWHM3q5iAOjmoy1onJ+sl8pD6dmD7lCf3
         DWnqtNURcK/I9E85RFL9Six/L8HtwBa/CLnWfZ9YFiuEWe8NdHIcU/S+UXj0akvg8ZBE
         9XDsPX0BwGgFacQsl9VINkOvxE0bq7kPHmWmhgHgI4GaxN33+I51JoJ67rf/dPqs6xc9
         xZx+Ndu/pSjIs7YSzTXngcISS0ZJ5J6L14YT4BFaRO+l9nfAkKmCaBM3/CWTCyrcf6eO
         9UDTX82tF52KeG8QfM9u+MqpBhFoQew5MIKG9Y3Fk9IKv7wJLPBHgC2gmfEzB2BU6drx
         Vg0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SR6ATnMcWEmdUOJ6DbZTTEtf2IDw/YJ2aizPOaBcct0=;
        b=ErJZYVr8iYS40CYxEnU5ISNVC5FLEMCsZecv6w0KlKGC8XuvDaS4lFjQDSVTXoQ7KU
         J+amnBTqernWGtBOIp/sEUHt5UQZ07wUbrMaS7yOqwekuFipN5lErhqadxtDnoKmfRpq
         8Ow122jeD5+zK7FjS0q7BJSbfO1I6Dhwv6m8A5l22fx2IFCfIdktWigOthzb1JhnQ/zW
         3c/jt4weLIZjQFmDjaKi2Pr7/yhqdFKH0oUog6Oy8EWDTwYLAMuah29G5hPxjm0Tr6b/
         mcd7fACCF/FO/jUC4yCQltYUx4/2Huzp5jbTosj+WhTewM0H17iLb/242QUvgQ+5QUyP
         7WvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Z+l6Gdwk;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id f15si814434ilr.0.2020.06.25.13.37.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 13:37:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id t6so3881065pgq.1
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 13:37:10 -0700 (PDT)
X-Received: by 2002:a62:a218:: with SMTP id m24mr2510238pff.156.1593117430052;
        Thu, 25 Jun 2020 13:37:10 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q6sm23903896pff.163.2020.06.25.13.37.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 13:37:07 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Prasad Sodagudi <psodagud@codeaurora.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Richard Weinberger <richard@nod.at>,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH drivers/misc v2 1/4] lkdtm: Avoid more compiler optimizations for bad writes
Date: Thu, 25 Jun 2020 13:37:01 -0700
Message-Id: <20200625203704.317097-2-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200625203704.317097-1-keescook@chromium.org>
References: <20200625203704.317097-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Z+l6Gdwk;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
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
Fixes: 9ae113ce5faf ("lkdtm: add tests for additional page permissions")
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/misc/lkdtm/bugs.c     | 11 +++++------
 drivers/misc/lkdtm/perms.c    | 22 +++++++++++++++-------
 drivers/misc/lkdtm/usercopy.c |  7 +++++--
 3 files changed, 25 insertions(+), 15 deletions(-)

diff --git a/drivers/misc/lkdtm/bugs.c b/drivers/misc/lkdtm/bugs.c
index 736675f0a246..08c70281c380 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625203704.317097-2-keescook%40chromium.org.
