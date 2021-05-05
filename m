Return-Path: <clang-built-linux+bncBAABB74UZSCAMGQEXTNPJMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3093749F5
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 23:13:36 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id d13-20020a05622a05cdb02901c2cffd946bsf1926102qtb.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 14:13:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620249215; cv=pass;
        d=google.com; s=arc-20160816;
        b=0X1CgFySa5x8GZTuYPoR/NzQsxUDAZBDD8wg67xzosDYGiIgwplWnOA6KL1Z/wkNAW
         bmPPhuSlC6V+hVxqqwSFScYvWbuMkQ1Gnff8Y/gvOCZkmutbyKqUsOLStpuzHQundTw5
         M36LeyKN7xykiHuDkFrxQy9azbPMNuoYTRGmwKrPn+e6Cuhl18btFwU06WJ06xgB7O8M
         sKRHDoHSgoy0NlL2z61O2KoLVvkrAB7HUizftK6ETweGZBeP4Tss0Sw7m5haTJvgYyek
         j22AF/eExuEitihp3ngaw25wZVW7Y3CTkdS6XBWJG06G8MgUxOmN7A7jEBvv+Ax1g8YJ
         xh5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Do4ce6SBNUUh11ck0buhU0r8OCoMpimYxHgQQupxWdw=;
        b=pSSGJyxccRZEQA6+flIstZjvhwtFY3y7/b2T7pp36l+QENSU9bbHyDKH9mJEhfdIsj
         Q6FCU4m4Ai4JtyoXBOp4UaVy5EWSmuFqK5grSmedhinHQoZAzpSTD3Cq8/w7NBn9R7cF
         487K/HwCrQsfOza8tQCbVy7QuJgGFeoxkGJAs5lueqRnyrJSVXO5n6qCt3EUEeHX4uax
         uiYsQTYuI0Q35b2qhkWBpnhb3NhrF0yZzPUqEQpQpEIg9Bq4+AgBk1mi6SU+8DmOxnLJ
         +CjAkNYWPFYCwIgJluP6j0BrYxfHuv2RdE8EyNfgRXhGaHcLkRo5TTVgwZniOCNAhgl5
         GH4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=B1CgeEw4;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Do4ce6SBNUUh11ck0buhU0r8OCoMpimYxHgQQupxWdw=;
        b=Wwbppyeh77PDzoJ2PO4gsgPiheLup736ZJebCV6t0jhQyXsWsJr2R1y95OPhmsDfAP
         ADsIRY6PwyWuZgjFCli6fPWF8pTW0+7+pObENZTyBxtD4etbpG4v5HLxOZOGhOjJGTQl
         EF2JPYMdnIlUnpLmOfxgGNCNK1YwRC4nK+pFpMetiPOmTqmoVxpmweqGzPPkTaYKtyBp
         hvlsEhM8Ef80pWj0TLwbjSwHKzV0Z9lLCYJrk42SQ0FQBIWgSq2OjRui6y5HPTDdrPpa
         uZ2cAL/q06UBP7uQy6AEGAmjIQORjhXBygEWc/1wpdbwC4NzAYbkBKz1BBVRgYUzTsVS
         yjhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Do4ce6SBNUUh11ck0buhU0r8OCoMpimYxHgQQupxWdw=;
        b=N1yFmRiJIg6zWiFXFdiH9/0KjPNz35sKg+7TKKjHGX2qmi0TANet+m2XYRhmmbJ4Pm
         xrgMtdPvElzc4YqodtQGpY17OynnKfrblJ4YWHyZHPxja+06O25z3Ke2X2Shdvx3vWDT
         ujPW1uJBI/iSi4lTSAc3rx7UlRUl6X3SIy11WgZRSOE9pqCFLnf2l8FLcKkzSFSjqOuX
         LECzseS04TEDbkexux1a2fhyW8/95m9FJSRclLrNnADl/tmes962V4a9mUu8nD1BU9nV
         a7+wjk4O4jWBccm13H3o1yh4Y2aYBUwyGZNUEGhCvv+48xJ8trlOArcrtMRFO+wiDIme
         qflw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530VVpm064L3jLf3iquXV/mPlpiKiz3DKPeFU9voNRJi6mx2FY03
	MqQKBsWpauuVhFRgsZETMMQ=
X-Google-Smtp-Source: ABdhPJzEPC++qm+hlwq0ePGz13HQ/E6scJksu0vaEVnUWIGNhUv/IcdvR3uNee2FdMa6oVsnuyjwSg==
X-Received: by 2002:a37:317:: with SMTP id 23mr812760qkd.66.1620249215736;
        Wed, 05 May 2021 14:13:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7e87:: with SMTP id z129ls175512qkc.4.gmail; Wed, 05 May
 2021 14:13:35 -0700 (PDT)
X-Received: by 2002:a37:8184:: with SMTP id c126mr723395qkd.353.1620249215309;
        Wed, 05 May 2021 14:13:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620249215; cv=none;
        d=google.com; s=arc-20160816;
        b=mlQggMJGaXn+JHKmUXAKHWyYOD+vuTiHIpdXH8F2q6oScFOHG7jEVFCfUBvCQ9PaTI
         d6NpUhqSeGDBCUJK5GHQiUEO4GPCbh2D6IoHHmJb8oy2pI41AUhisQeoh+d0Qwd5DO9G
         N6pWFW5ITZ58zIvJgdJkD33fOrdOABct2VmsCfk8vXgZ5CeqpL8fg8i16TdmoUH6f3+a
         FOwCtglKocqSn6CuC7sVK/t3swV9Vs8OkzQl1tEa3VETxtNAlOoD2qYD8PGIdlkK8JBU
         tyadFhr6Z7B4I/LC5SkgGqamfOhuryCZ8428Ms1i4DXOnmbEFfI9VeER0UqqNeQGmsm0
         Oaeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=kOrNXn5oMQ1jm2ZzOKoWT2a87LueZk/lnfg4FhzBs70=;
        b=E2CzowglCkbpw0zCbwhlRph02McNVR+mgogYnrHBgtWMZPF+NrAL9YcKRo8uthGWx+
         TA2Fsvc87rg3apaoaJZY6Z3lVgOZztU+RnVxf8uZDXqdkuPuK1LpCw4iKlHzuzfyuLzl
         p9PjV+YfkL0LKoTqgUYcjSF4a6LUytLxgqx92t+QJVIpQRGOBpE0NiJHx+yyHtQukwys
         3Es5SDB4pgDeChZA4xOkLaHBgb/0ixl6NLRyenTbE6R2I4Y85F1u+OM4rdF6o9bZesPp
         JR8xrAy16BibtbECvU2jGUJKlu9pkeKjI5BjVa3s3UYNsKxERuFKVUHQ8o1GEjHAaMWg
         T+YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=B1CgeEw4;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t65si55701qke.7.2021.05.05.14.13.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 14:13:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 874A4613E9;
	Wed,  5 May 2021 21:13:30 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Jens Axboe <axboe@kernel.dk>,
	Jian Cai <jiancai@google.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Peter Zijlstra <peterz@infradead.org>,
	"Huang, Ying" <ying.huang@intel.com>,
	Borislav Petkov <bp@suse.de>,
	Eric Dumazet <eric.dumazet@gmail.com>,
	Juergen Gross <jgross@suse.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ingo Molnar <mingo@kernel.org>,
	Frederic Weisbecker <frederic@kernel.org>,
	He Ying <heying24@huawei.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH] [v2] smp: fix smp_call_function_single_async prototype
Date: Wed,  5 May 2021 23:12:42 +0200
Message-Id: <20210505211300.3174456-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=B1CgeEw4;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

As of commit 966a967116e6 ("smp: Avoid using two cache lines for struct
call_single_data"), the smp code prefers 32-byte aligned call_single_data
objects for performance reasons, but the block layer includes an instance
of this structure in the main 'struct request' that is more senstive
to size than to performance here, see 4ccafe032005 ("block: unalign
call_single_data in struct request").

The result is a violation of the calling conventions that clang correctly
points out:

block/blk-mq.c:630:39: warning: passing 8-byte aligned argument to 32-byte aligned parameter 2 of 'smp_call_function_single_async' may result in an unaligned pointer access [-Walign-mismatch]
                smp_call_function_single_async(cpu, &rq->csd);

It does seem that the usage of the call_single_data without cache line
alignment should still be allowed by the smp code, so just change the
function prototype so it accepts both, but leave the default alignment
unchanged for the other users. This seems better to me than adding
a local hack to shut up an otherwise correct warning in the caller.

Link: https://lore.kernel.org/linux-block/20210330230249.709221-1-jiancai@google.com/
Link: https://github.com/ClangBuiltLinux/linux/issues/1328
Acked-by: Jens Axboe <axboe@kernel.dk>
Cc: Jian Cai <jiancai@google.com>
Cc: Guenter Roeck <linux@roeck-us.net>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: "Huang, Ying" <ying.huang@intel.com>
Cc: Borislav Petkov <bp@suse.de>
Cc: Eric Dumazet <eric.dumazet@gmail.com>
Cc: Juergen Gross <jgross@suse.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: avoid adding other warnings by a more thorough change
---
 include/linux/smp.h |  2 +-
 kernel/smp.c        | 26 +++++++++++++-------------
 kernel/up.c         |  2 +-
 3 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/include/linux/smp.h b/include/linux/smp.h
index 669e35c03be2..510519e8a1eb 100644
--- a/include/linux/smp.h
+++ b/include/linux/smp.h
@@ -53,7 +53,7 @@ int smp_call_function_single(int cpuid, smp_call_func_t func, void *info,
 void on_each_cpu_cond_mask(smp_cond_func_t cond_func, smp_call_func_t func,
 			   void *info, bool wait, const struct cpumask *mask);
 
-int smp_call_function_single_async(int cpu, call_single_data_t *csd);
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd);
 
 /*
  * Cpus stopping functions in panic. All have default weak definitions.
diff --git a/kernel/smp.c b/kernel/smp.c
index e21074900006..52bf159ec400 100644
--- a/kernel/smp.c
+++ b/kernel/smp.c
@@ -211,7 +211,7 @@ static u64 cfd_seq_inc(unsigned int src, unsigned int dst, unsigned int type)
 	} while (0)
 
 /* Record current CSD work for current CPU, NULL to erase. */
-static void __csd_lock_record(call_single_data_t *csd)
+static void __csd_lock_record(struct __call_single_data *csd)
 {
 	if (!csd) {
 		smp_mb(); /* NULL cur_csd after unlock. */
@@ -226,13 +226,13 @@ static void __csd_lock_record(call_single_data_t *csd)
 		  /* Or before unlock, as the case may be. */
 }
 
-static __always_inline void csd_lock_record(call_single_data_t *csd)
+static __always_inline void csd_lock_record(struct __call_single_data *csd)
 {
 	if (static_branch_unlikely(&csdlock_debug_enabled))
 		__csd_lock_record(csd);
 }
 
-static int csd_lock_wait_getcpu(call_single_data_t *csd)
+static int csd_lock_wait_getcpu(struct __call_single_data *csd)
 {
 	unsigned int csd_type;
 
@@ -282,7 +282,7 @@ static const char *csd_lock_get_type(unsigned int type)
 	return (type >= ARRAY_SIZE(seq_type)) ? "?" : seq_type[type];
 }
 
-static void csd_lock_print_extended(call_single_data_t *csd, int cpu)
+static void csd_lock_print_extended(struct __call_single_data *csd, int cpu)
 {
 	struct cfd_seq_local *seq = &per_cpu(cfd_seq_local, cpu);
 	unsigned int srccpu = csd->node.src;
@@ -321,7 +321,7 @@ static void csd_lock_print_extended(call_single_data_t *csd, int cpu)
  * the CSD_TYPE_SYNC/ASYNC types provide the destination CPU,
  * so waiting on other types gets much less information.
  */
-static bool csd_lock_wait_toolong(call_single_data_t *csd, u64 ts0, u64 *ts1, int *bug_id)
+static bool csd_lock_wait_toolong(struct __call_single_data *csd, u64 ts0, u64 *ts1, int *bug_id)
 {
 	int cpu = -1;
 	int cpux;
@@ -387,7 +387,7 @@ static bool csd_lock_wait_toolong(call_single_data_t *csd, u64 ts0, u64 *ts1, in
  * previous function call. For multi-cpu calls its even more interesting
  * as we'll have to ensure no other cpu is observing our csd.
  */
-static void __csd_lock_wait(call_single_data_t *csd)
+static void __csd_lock_wait(struct __call_single_data *csd)
 {
 	int bug_id = 0;
 	u64 ts0, ts1;
@@ -401,7 +401,7 @@ static void __csd_lock_wait(call_single_data_t *csd)
 	smp_acquire__after_ctrl_dep();
 }
 
-static __always_inline void csd_lock_wait(call_single_data_t *csd)
+static __always_inline void csd_lock_wait(struct __call_single_data *csd)
 {
 	if (static_branch_unlikely(&csdlock_debug_enabled)) {
 		__csd_lock_wait(csd);
@@ -431,17 +431,17 @@ static void __smp_call_single_queue_debug(int cpu, struct llist_node *node)
 #else
 #define cfd_seq_store(var, src, dst, type)
 
-static void csd_lock_record(call_single_data_t *csd)
+static void csd_lock_record(struct __call_single_data *csd)
 {
 }
 
-static __always_inline void csd_lock_wait(call_single_data_t *csd)
+static __always_inline void csd_lock_wait(struct __call_single_data *csd)
 {
 	smp_cond_load_acquire(&csd->node.u_flags, !(VAL & CSD_FLAG_LOCK));
 }
 #endif
 
-static __always_inline void csd_lock(call_single_data_t *csd)
+static __always_inline void csd_lock(struct __call_single_data *csd)
 {
 	csd_lock_wait(csd);
 	csd->node.u_flags |= CSD_FLAG_LOCK;
@@ -454,7 +454,7 @@ static __always_inline void csd_lock(call_single_data_t *csd)
 	smp_wmb();
 }
 
-static __always_inline void csd_unlock(call_single_data_t *csd)
+static __always_inline void csd_unlock(struct __call_single_data *csd)
 {
 	WARN_ON(!(csd->node.u_flags & CSD_FLAG_LOCK));
 
@@ -501,7 +501,7 @@ void __smp_call_single_queue(int cpu, struct llist_node *node)
  * for execution on the given CPU. data must already have
  * ->func, ->info, and ->flags set.
  */
-static int generic_exec_single(int cpu, call_single_data_t *csd)
+static int generic_exec_single(int cpu, struct __call_single_data *csd)
 {
 	if (cpu == smp_processor_id()) {
 		smp_call_func_t func = csd->func;
@@ -784,7 +784,7 @@ EXPORT_SYMBOL(smp_call_function_single);
  * NOTE: Be careful, there is unfortunately no current debugging facility to
  * validate the correctness of this serialization.
  */
-int smp_call_function_single_async(int cpu, call_single_data_t *csd)
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd)
 {
 	int err = 0;
 
diff --git a/kernel/up.c b/kernel/up.c
index df50828cc2f0..a38b8b095251 100644
--- a/kernel/up.c
+++ b/kernel/up.c
@@ -25,7 +25,7 @@ int smp_call_function_single(int cpu, void (*func) (void *info), void *info,
 }
 EXPORT_SYMBOL(smp_call_function_single);
 
-int smp_call_function_single_async(int cpu, call_single_data_t *csd)
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd)
 {
 	unsigned long flags;
 
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210505211300.3174456-1-arnd%40kernel.org.
