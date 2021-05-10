Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAOP42CAMGQE7YYRBAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CC137993C
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 23:37:12 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id v27-20020a67c89b0000b02902227f70aa8fsf8754964vsk.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 14:37:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620682626; cv=pass;
        d=google.com; s=arc-20160816;
        b=fGdF+iQTjmOVtULF5iSyuyQtTp8GEFwwSwp46Fc9yNbqdPg0l4BxSuHCGk1SjrKbxa
         JVazhLmS9mCV5HlO7UCjl2c8TiqgVCRzyFnVmL8vcYiEmuOiVccTVDdgqyJKiG+33QDn
         /FevyQjDFyUQzoLnw4jKWtWPGEM0QkpTUiQtm13qVZhHXLEZsWSFcTtBhia7WEcZOaeI
         xT5qA2SZZrCFPlDfNVLd3tHHiBRD1H3vEjO1EqeuL5bm3evS5hZ+IX2+oqFM3lt1rVlb
         Ap8Iq0PmeZIod+gtYNyTWfYit0K5FMq0CFjnntj6PJ5MUuK58CkmCzdk7RjLCBQ+pxr7
         Q2Ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=eK1CJ+IP7SDdn7juWFB0ssoaV/DylzdbdxA+oxQMlS8=;
        b=Uho6J3dvzLWJrybAtJLPFe8yvy4ZZ7ReFROqCpPMh8gZg6nb2kCV4xL/MctMZS6Opz
         e3pv8KQautiALQdnBO0QWIxtAuZDR+2ZfKVyIF7pLke8vDQwRuKD4cjHrpXMhFyg62Ce
         BT4GdEtBz4HREU+xZFNi/r1R+hlU0LBJWhYWyVfDvCVvpvxktiPECO3wa3/fz4ua/aQ8
         CKnLDFFzAuxAvkB/3TchLkGVLszG/j3glppN2Ubc9nocnz57CRxXGv3DSYTyM0DNY1yr
         fQ2RWohKpEoiMPGTbKodof2/+5iLP5jdYLpRunutekFIEsU8Ll38opZ66K1Kl7bTKYlm
         MJ/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DzIS2oVd;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eK1CJ+IP7SDdn7juWFB0ssoaV/DylzdbdxA+oxQMlS8=;
        b=RsUV+OgtMl+z8CpBAMq88maGgDngAoMR/glpDAeJzdtgWiEmpPi6LhfeeJG7BebUwB
         rMHQj8pLUsrDJ049vf4GzVyWY/iK9vJ0I80+BVFOVIO9dLklzLRqjdrDeluiM5sULMph
         feTz6GVG0vE3ISXwtGG76vj2tP+I4uTiTWCuGSrP8UUFQpmWIB8WI/e/GTYwBWlMdywc
         E4FrtYOO65jmIQ6W99eYir30oYsDLX7ZS8lErE+WyxKCqYf7Z4+bPO9JCg4U3rvRn2ln
         VBucoHrp4WjRoNbkVrKI6Xf/Mo08yewYV1mI0nikgZgoc61hHDDK9I5wYSx4LvU5FcGd
         DzAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eK1CJ+IP7SDdn7juWFB0ssoaV/DylzdbdxA+oxQMlS8=;
        b=fJbZi7SjJ32gnWj9FlZi2Vq8b5Dl56khG7TsSS+Lw82J1eoiIT+ynMDvysx9i4BpOX
         WqdpBq9ThsVuH4a5laUzW+GX8pBemAj0XvEIEph5CGzx1L3sGA03fxqDoJW4lTONJTAj
         hYMn9vzSmyVY+jbYZC4JvJCevW6SfuZ1UDAwwAcrURHjqzn1l0Fza3pKKAdGjg5NXFL7
         AuCiY81VyNac84FAFOFr3AzaUfqUW0ZnF878UwtXFghkPS2PS0Wkl/CsNPbo7dG4+Dkc
         iKLy2CTWjXXCcN+MQ/ZUFM83dKI8WZsnZ2OA1MN9HcpfaXtAIIZzeR3gtYLnjdXK4peS
         gOHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532G3DdiMV+EiWtkc0Fby56aQvPcVqw2zgDxbzdCnE7RhoR050y/
	LL62UNjG05TxMXQLeNhoZzY=
X-Google-Smtp-Source: ABdhPJxaeBD1UmqFM50z8rZDWBKLe0CJfwcb1kzTWhDqvf+KuKvkxlnDgVt+oOoZa+84FuPwdB8lCw==
X-Received: by 2002:a67:2e13:: with SMTP id u19mr22032896vsu.51.1620682625637;
        Mon, 10 May 2021 14:37:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f7c7:: with SMTP id a7ls574506vsp.5.gmail; Mon, 10 May
 2021 14:37:05 -0700 (PDT)
X-Received: by 2002:a67:1082:: with SMTP id 124mr21403809vsq.14.1620682625081;
        Mon, 10 May 2021 14:37:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620682625; cv=none;
        d=google.com; s=arc-20160816;
        b=YDcVQNCcY0UJ511zKSPXtDFiLSoxuUwyybRdPReSGGIRM9P1BW/nay9PyeY4tA+6NV
         FLumTNcm9lBgxsPjUhSfjapxydDKYGvdo4RPK3J+qruayyBhU7UX5aZJj6I8pCDDdjv5
         WS2iwy8jqChxasowlZjRoy1CQyzBx07mZ0NbRCGPGFFrDRPRzP3YitmsnN68LqvSwQ2T
         uV+owgtTZKFHkixF5Ms58KfCwPe679VT6GxGA4awhp35s5FRi3DDJ9Y6aosgZ9ha5FHB
         y7BASyXS+cY6KMBMlk73/8O09Zi2JDKfhYjyeLYzuCLV/1MZkNq5XWFGvImpycbPw/27
         ++6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=d0Q1W1FC2Xp13SgdlpXVNqwJStQtevh5kwFH5YpBeqo=;
        b=XfQX6Tet6ZiZs1ppRkPDQjVaFiGtfzG38T2zJUDPvl/KFn5Egk8u+X4Zdi5oqV1NLZ
         slClv8flbOYgiGwk6zOBLsk+VeviZvHwIUkU0ID1Kx66oMUh9NQb+Qk4nsDK0a0C0j3r
         p9cwHDlaCFBw+wX8h0lHwyaOQW8fwjLjnMnELikNMemJf9Gqz6ByxaaS8sytFiznxLoy
         VIjbVt4N7cYiBjJY/WnO0Pj+RsrIcp4CLW7OT86nl1GKpYmOUWwmtV7Tks1IK5FlOYbg
         l+nf6KLBxArYeG8anC70ofGFtaUPTD4gc3/7BvpkKqpkkrM10W+Un8ScKL3Z23I5YB+9
         fUpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DzIS2oVd;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s70si1176298vkb.3.2021.05.10.14.37.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 14:37:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 05AE060FE7;
	Mon, 10 May 2021 21:37:01 +0000 (UTC)
Date: Mon, 10 May 2021 14:36:58 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Jian Cai <jiancai@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Subject: Backport of 1139aeb1c521 for all supported stable branches
Message-ID: <YJmneuxxFWIrqyWN@archlinux-ax161>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="fLKwDDoTK2blPOcV"
Content-Disposition: inline
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DzIS2oVd;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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


--fLKwDDoTK2blPOcV
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Greg and Sasha,

Please find attached backports of commit 1139aeb1c521 ("smp: Fix
smp_call_function_single_async prototype") upstream, which resolves a
serious looking clang warning seen across several different builds. It
has been build tested with gcc and clang for x86_64 defconfig and
allmodconfig.

Please let me know if there are any problems.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJmneuxxFWIrqyWN%40archlinux-ax161.

--fLKwDDoTK2blPOcV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="1139aeb1c521-4.14.patch"

From 13d0c736b29a5364eec1a7ec21e31f291dec9939 Mon Sep 17 00:00:00 2001
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 5 May 2021 23:12:42 +0200
Subject: [PATCH 4.14] smp: Fix smp_call_function_single_async prototype

commit 1139aeb1c521eb4a050920ce6c64c36c4f2a3ab7 upstream.

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

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Acked-by: Jens Axboe <axboe@kernel.dk>
Link: https://lkml.kernel.org/r/20210505211300.3174456-1-arnd@kernel.org
[nc: Fix conflicts]
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 include/linux/smp.h |  2 +-
 kernel/smp.c        | 10 +++++-----
 kernel/up.c         |  2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/include/linux/smp.h b/include/linux/smp.h
index 9fb239e12b82..6bb7f07bc1dd 100644
--- a/include/linux/smp.h
+++ b/include/linux/smp.h
@@ -53,7 +53,7 @@ void on_each_cpu_cond(bool (*cond_func)(int cpu, void *info),
 		smp_call_func_t func, void *info, bool wait,
 		gfp_t gfp_flags);
 
-int smp_call_function_single_async(int cpu, call_single_data_t *csd);
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd);
 
 #ifdef CONFIG_SMP
 
diff --git a/kernel/smp.c b/kernel/smp.c
index c94dd85c8d41..f9d95d59b7ed 100644
--- a/kernel/smp.c
+++ b/kernel/smp.c
@@ -103,12 +103,12 @@ void __init call_function_init(void)
  * previous function call. For multi-cpu calls its even more interesting
  * as we'll have to ensure no other cpu is observing our csd.
  */
-static __always_inline void csd_lock_wait(call_single_data_t *csd)
+static __always_inline void csd_lock_wait(struct __call_single_data *csd)
 {
 	smp_cond_load_acquire(&csd->flags, !(VAL & CSD_FLAG_LOCK));
 }
 
-static __always_inline void csd_lock(call_single_data_t *csd)
+static __always_inline void csd_lock(struct __call_single_data *csd)
 {
 	csd_lock_wait(csd);
 	csd->flags |= CSD_FLAG_LOCK;
@@ -121,7 +121,7 @@ static __always_inline void csd_lock(call_single_data_t *csd)
 	smp_wmb();
 }
 
-static __always_inline void csd_unlock(call_single_data_t *csd)
+static __always_inline void csd_unlock(struct __call_single_data *csd)
 {
 	WARN_ON(!(csd->flags & CSD_FLAG_LOCK));
 
@@ -138,7 +138,7 @@ static DEFINE_PER_CPU_SHARED_ALIGNED(call_single_data_t, csd_data);
  * for execution on the given CPU. data must already have
  * ->func, ->info, and ->flags set.
  */
-static int generic_exec_single(int cpu, call_single_data_t *csd,
+static int generic_exec_single(int cpu, struct __call_single_data *csd,
 			       smp_call_func_t func, void *info)
 {
 	if (cpu == smp_processor_id()) {
@@ -323,7 +323,7 @@ EXPORT_SYMBOL(smp_call_function_single);
  * NOTE: Be careful, there is unfortunately no current debugging facility to
  * validate the correctness of this serialization.
  */
-int smp_call_function_single_async(int cpu, call_single_data_t *csd)
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd)
 {
 	int err = 0;
 
diff --git a/kernel/up.c b/kernel/up.c
index 42c46bf3e0a5..2080f75e0e65 100644
--- a/kernel/up.c
+++ b/kernel/up.c
@@ -23,7 +23,7 @@ int smp_call_function_single(int cpu, void (*func) (void *info), void *info,
 }
 EXPORT_SYMBOL(smp_call_function_single);
 
-int smp_call_function_single_async(int cpu, call_single_data_t *csd)
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd)
 {
 	unsigned long flags;
 

base-commit: 7d7d1c0ab3eb7c8d8f63a126535018007823b207
-- 
2.31.1.527.g2d677e5b15


--fLKwDDoTK2blPOcV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="1139aeb1c521-4.19.patch"

From b996825ca37f3104a7ff70f8ec707cf3003f8cce Mon Sep 17 00:00:00 2001
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 5 May 2021 23:12:42 +0200
Subject: [PATCH 4.19] smp: Fix smp_call_function_single_async prototype

commit 1139aeb1c521eb4a050920ce6c64c36c4f2a3ab7 upstream.

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

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Acked-by: Jens Axboe <axboe@kernel.dk>
Link: https://lkml.kernel.org/r/20210505211300.3174456-1-arnd@kernel.org
[nc: Fix conflicts]
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 include/linux/smp.h |  2 +-
 kernel/smp.c        | 10 +++++-----
 kernel/up.c         |  2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/include/linux/smp.h b/include/linux/smp.h
index 9fb239e12b82..6bb7f07bc1dd 100644
--- a/include/linux/smp.h
+++ b/include/linux/smp.h
@@ -53,7 +53,7 @@ void on_each_cpu_cond(bool (*cond_func)(int cpu, void *info),
 		smp_call_func_t func, void *info, bool wait,
 		gfp_t gfp_flags);
 
-int smp_call_function_single_async(int cpu, call_single_data_t *csd);
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd);
 
 #ifdef CONFIG_SMP
 
diff --git a/kernel/smp.c b/kernel/smp.c
index 084c8b3a2681..00d208ef07c7 100644
--- a/kernel/smp.c
+++ b/kernel/smp.c
@@ -103,12 +103,12 @@ void __init call_function_init(void)
  * previous function call. For multi-cpu calls its even more interesting
  * as we'll have to ensure no other cpu is observing our csd.
  */
-static __always_inline void csd_lock_wait(call_single_data_t *csd)
+static __always_inline void csd_lock_wait(struct __call_single_data *csd)
 {
 	smp_cond_load_acquire(&csd->flags, !(VAL & CSD_FLAG_LOCK));
 }
 
-static __always_inline void csd_lock(call_single_data_t *csd)
+static __always_inline void csd_lock(struct __call_single_data *csd)
 {
 	csd_lock_wait(csd);
 	csd->flags |= CSD_FLAG_LOCK;
@@ -121,7 +121,7 @@ static __always_inline void csd_lock(call_single_data_t *csd)
 	smp_wmb();
 }
 
-static __always_inline void csd_unlock(call_single_data_t *csd)
+static __always_inline void csd_unlock(struct __call_single_data *csd)
 {
 	WARN_ON(!(csd->flags & CSD_FLAG_LOCK));
 
@@ -138,7 +138,7 @@ static DEFINE_PER_CPU_SHARED_ALIGNED(call_single_data_t, csd_data);
  * for execution on the given CPU. data must already have
  * ->func, ->info, and ->flags set.
  */
-static int generic_exec_single(int cpu, call_single_data_t *csd,
+static int generic_exec_single(int cpu, struct __call_single_data *csd,
 			       smp_call_func_t func, void *info)
 {
 	if (cpu == smp_processor_id()) {
@@ -323,7 +323,7 @@ EXPORT_SYMBOL(smp_call_function_single);
  * NOTE: Be careful, there is unfortunately no current debugging facility to
  * validate the correctness of this serialization.
  */
-int smp_call_function_single_async(int cpu, call_single_data_t *csd)
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd)
 {
 	int err = 0;
 
diff --git a/kernel/up.c b/kernel/up.c
index 42c46bf3e0a5..2080f75e0e65 100644
--- a/kernel/up.c
+++ b/kernel/up.c
@@ -23,7 +23,7 @@ int smp_call_function_single(int cpu, void (*func) (void *info), void *info,
 }
 EXPORT_SYMBOL(smp_call_function_single);
 
-int smp_call_function_single_async(int cpu, call_single_data_t *csd)
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd)
 {
 	unsigned long flags;
 

base-commit: 3c8c23092588a23bf1856a64f58c37f477a413be
-- 
2.31.1.527.g2d677e5b15


--fLKwDDoTK2blPOcV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="1139aeb1c521-5.4.patch"

From 127fde6df531e95e79ffa77b13818bd809a97a82 Mon Sep 17 00:00:00 2001
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 5 May 2021 23:12:42 +0200
Subject: [PATCH 5.4] smp: Fix smp_call_function_single_async prototype

commit 1139aeb1c521eb4a050920ce6c64c36c4f2a3ab7 upstream.

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

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Acked-by: Jens Axboe <axboe@kernel.dk>
Link: https://lkml.kernel.org/r/20210505211300.3174456-1-arnd@kernel.org
[nc: Fix conflicts]
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 include/linux/smp.h |  2 +-
 kernel/smp.c        | 10 +++++-----
 kernel/up.c         |  2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/include/linux/smp.h b/include/linux/smp.h
index 6fc856c9eda5..36a9da719110 100644
--- a/include/linux/smp.h
+++ b/include/linux/smp.h
@@ -57,7 +57,7 @@ void on_each_cpu_cond_mask(bool (*cond_func)(int cpu, void *info),
 		smp_call_func_t func, void *info, bool wait,
 		gfp_t gfp_flags, const struct cpumask *mask);
 
-int smp_call_function_single_async(int cpu, call_single_data_t *csd);
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd);
 
 #ifdef CONFIG_SMP
 
diff --git a/kernel/smp.c b/kernel/smp.c
index 7dbcb402c2fc..3a390932f8b2 100644
--- a/kernel/smp.c
+++ b/kernel/smp.c
@@ -104,12 +104,12 @@ void __init call_function_init(void)
  * previous function call. For multi-cpu calls its even more interesting
  * as we'll have to ensure no other cpu is observing our csd.
  */
-static __always_inline void csd_lock_wait(call_single_data_t *csd)
+static __always_inline void csd_lock_wait(struct __call_single_data *csd)
 {
 	smp_cond_load_acquire(&csd->flags, !(VAL & CSD_FLAG_LOCK));
 }
 
-static __always_inline void csd_lock(call_single_data_t *csd)
+static __always_inline void csd_lock(struct __call_single_data *csd)
 {
 	csd_lock_wait(csd);
 	csd->flags |= CSD_FLAG_LOCK;
@@ -122,7 +122,7 @@ static __always_inline void csd_lock(call_single_data_t *csd)
 	smp_wmb();
 }
 
-static __always_inline void csd_unlock(call_single_data_t *csd)
+static __always_inline void csd_unlock(struct __call_single_data *csd)
 {
 	WARN_ON(!(csd->flags & CSD_FLAG_LOCK));
 
@@ -139,7 +139,7 @@ static DEFINE_PER_CPU_SHARED_ALIGNED(call_single_data_t, csd_data);
  * for execution on the given CPU. data must already have
  * ->func, ->info, and ->flags set.
  */
-static int generic_exec_single(int cpu, call_single_data_t *csd,
+static int generic_exec_single(int cpu, struct __call_single_data *csd,
 			       smp_call_func_t func, void *info)
 {
 	if (cpu == smp_processor_id()) {
@@ -332,7 +332,7 @@ EXPORT_SYMBOL(smp_call_function_single);
  * NOTE: Be careful, there is unfortunately no current debugging facility to
  * validate the correctness of this serialization.
  */
-int smp_call_function_single_async(int cpu, call_single_data_t *csd)
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd)
 {
 	int err = 0;
 
diff --git a/kernel/up.c b/kernel/up.c
index 862b460ab97a..8e8551c8b285 100644
--- a/kernel/up.c
+++ b/kernel/up.c
@@ -24,7 +24,7 @@ int smp_call_function_single(int cpu, void (*func) (void *info), void *info,
 }
 EXPORT_SYMBOL(smp_call_function_single);
 
-int smp_call_function_single_async(int cpu, call_single_data_t *csd)
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd)
 {
 	unsigned long flags;
 

base-commit: b5dbcd05792a4bad2c9bb3c4658c854e72c444b7
-- 
2.31.1.527.g2d677e5b15


--fLKwDDoTK2blPOcV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="1139aeb1c521-5.10.patch"

From 22ffbe67cfd260ab78bec93ad02901932c286d5c Mon Sep 17 00:00:00 2001
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 5 May 2021 23:12:42 +0200
Subject: [PATCH 5.10] smp: Fix smp_call_function_single_async prototype

commit 1139aeb1c521eb4a050920ce6c64c36c4f2a3ab7 upstream.

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

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Acked-by: Jens Axboe <axboe@kernel.dk>
Link: https://lkml.kernel.org/r/20210505211300.3174456-1-arnd@kernel.org
[nc: Fix conflicts, modify rq_csd_init]
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 include/linux/smp.h |  2 +-
 kernel/sched/core.c |  2 +-
 kernel/smp.c        | 20 ++++++++++----------
 kernel/up.c         |  2 +-
 4 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/include/linux/smp.h b/include/linux/smp.h
index 9f13966d3d92..04f44e0aa2e0 100644
--- a/include/linux/smp.h
+++ b/include/linux/smp.h
@@ -74,7 +74,7 @@ void on_each_cpu_cond(smp_cond_func_t cond_func, smp_call_func_t func,
 void on_each_cpu_cond_mask(smp_cond_func_t cond_func, smp_call_func_t func,
 			   void *info, bool wait, const struct cpumask *mask);
 
-int smp_call_function_single_async(int cpu, call_single_data_t *csd);
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd);
 
 #ifdef CONFIG_SMP
 
diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 3a150445e0cb..3c3554d9ee50 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -321,7 +321,7 @@ void update_rq_clock(struct rq *rq)
 }
 
 static inline void
-rq_csd_init(struct rq *rq, call_single_data_t *csd, smp_call_func_t func)
+rq_csd_init(struct rq *rq, struct __call_single_data *csd, smp_call_func_t func)
 {
 	csd->flags = 0;
 	csd->func = func;
diff --git a/kernel/smp.c b/kernel/smp.c
index 25240fb2df94..f73a597c8e4c 100644
--- a/kernel/smp.c
+++ b/kernel/smp.c
@@ -110,7 +110,7 @@ static DEFINE_PER_CPU(void *, cur_csd_info);
 static atomic_t csd_bug_count = ATOMIC_INIT(0);
 
 /* Record current CSD work for current CPU, NULL to erase. */
-static void csd_lock_record(call_single_data_t *csd)
+static void csd_lock_record(struct __call_single_data *csd)
 {
 	if (!csd) {
 		smp_mb(); /* NULL cur_csd after unlock. */
@@ -125,7 +125,7 @@ static void csd_lock_record(call_single_data_t *csd)
 		  /* Or before unlock, as the case may be. */
 }
 
-static __always_inline int csd_lock_wait_getcpu(call_single_data_t *csd)
+static __always_inline int csd_lock_wait_getcpu(struct __call_single_data *csd)
 {
 	unsigned int csd_type;
 
@@ -140,7 +140,7 @@ static __always_inline int csd_lock_wait_getcpu(call_single_data_t *csd)
  * the CSD_TYPE_SYNC/ASYNC types provide the destination CPU,
  * so waiting on other types gets much less information.
  */
-static __always_inline bool csd_lock_wait_toolong(call_single_data_t *csd, u64 ts0, u64 *ts1, int *bug_id)
+static __always_inline bool csd_lock_wait_toolong(struct __call_single_data *csd, u64 ts0, u64 *ts1, int *bug_id)
 {
 	int cpu = -1;
 	int cpux;
@@ -204,7 +204,7 @@ static __always_inline bool csd_lock_wait_toolong(call_single_data_t *csd, u64 t
  * previous function call. For multi-cpu calls its even more interesting
  * as we'll have to ensure no other cpu is observing our csd.
  */
-static __always_inline void csd_lock_wait(call_single_data_t *csd)
+static __always_inline void csd_lock_wait(struct __call_single_data *csd)
 {
 	int bug_id = 0;
 	u64 ts0, ts1;
@@ -219,17 +219,17 @@ static __always_inline void csd_lock_wait(call_single_data_t *csd)
 }
 
 #else
-static void csd_lock_record(call_single_data_t *csd)
+static void csd_lock_record(struct __call_single_data *csd)
 {
 }
 
-static __always_inline void csd_lock_wait(call_single_data_t *csd)
+static __always_inline void csd_lock_wait(struct __call_single_data *csd)
 {
 	smp_cond_load_acquire(&csd->flags, !(VAL & CSD_FLAG_LOCK));
 }
 #endif
 
-static __always_inline void csd_lock(call_single_data_t *csd)
+static __always_inline void csd_lock(struct __call_single_data *csd)
 {
 	csd_lock_wait(csd);
 	csd->flags |= CSD_FLAG_LOCK;
@@ -242,7 +242,7 @@ static __always_inline void csd_lock(call_single_data_t *csd)
 	smp_wmb();
 }
 
-static __always_inline void csd_unlock(call_single_data_t *csd)
+static __always_inline void csd_unlock(struct __call_single_data *csd)
 {
 	WARN_ON(!(csd->flags & CSD_FLAG_LOCK));
 
@@ -276,7 +276,7 @@ void __smp_call_single_queue(int cpu, struct llist_node *node)
  * for execution on the given CPU. data must already have
  * ->func, ->info, and ->flags set.
  */
-static int generic_exec_single(int cpu, call_single_data_t *csd)
+static int generic_exec_single(int cpu, struct __call_single_data *csd)
 {
 	if (cpu == smp_processor_id()) {
 		smp_call_func_t func = csd->func;
@@ -542,7 +542,7 @@ EXPORT_SYMBOL(smp_call_function_single);
  * NOTE: Be careful, there is unfortunately no current debugging facility to
  * validate the correctness of this serialization.
  */
-int smp_call_function_single_async(int cpu, call_single_data_t *csd)
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd)
 {
 	int err = 0;
 
diff --git a/kernel/up.c b/kernel/up.c
index c6f323dcd45b..4edd5493eba2 100644
--- a/kernel/up.c
+++ b/kernel/up.c
@@ -25,7 +25,7 @@ int smp_call_function_single(int cpu, void (*func) (void *info), void *info,
 }
 EXPORT_SYMBOL(smp_call_function_single);
 
-int smp_call_function_single_async(int cpu, call_single_data_t *csd)
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd)
 {
 	unsigned long flags;
 

base-commit: f53a3a4808625f876aebc5a0bfb354480bbf0c21
-- 
2.31.1.527.g2d677e5b15


--fLKwDDoTK2blPOcV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="1139aeb1c521-5.11.patch"

From b49fcd6c8198e8c6c18712a7cac4ad1400593159 Mon Sep 17 00:00:00 2001
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 5 May 2021 23:12:42 +0200
Subject: [PATCH 5.11] smp: Fix smp_call_function_single_async prototype

commit 1139aeb1c521eb4a050920ce6c64c36c4f2a3ab7 upstream.

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

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Acked-by: Jens Axboe <axboe@kernel.dk>
Link: https://lkml.kernel.org/r/20210505211300.3174456-1-arnd@kernel.org
[nc: Fix conflicts]
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 include/linux/smp.h |  2 +-
 kernel/smp.c        | 20 ++++++++++----------
 kernel/up.c         |  2 +-
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/include/linux/smp.h b/include/linux/smp.h
index 70c6f6284dcf..238a3f97a415 100644
--- a/include/linux/smp.h
+++ b/include/linux/smp.h
@@ -73,7 +73,7 @@ void on_each_cpu_cond(smp_cond_func_t cond_func, smp_call_func_t func,
 void on_each_cpu_cond_mask(smp_cond_func_t cond_func, smp_call_func_t func,
 			   void *info, bool wait, const struct cpumask *mask);
 
-int smp_call_function_single_async(int cpu, call_single_data_t *csd);
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd);
 
 #ifdef CONFIG_SMP
 
diff --git a/kernel/smp.c b/kernel/smp.c
index aeb0adfa0606..c678589fbb76 100644
--- a/kernel/smp.c
+++ b/kernel/smp.c
@@ -110,7 +110,7 @@ static DEFINE_PER_CPU(void *, cur_csd_info);
 static atomic_t csd_bug_count = ATOMIC_INIT(0);
 
 /* Record current CSD work for current CPU, NULL to erase. */
-static void csd_lock_record(call_single_data_t *csd)
+static void csd_lock_record(struct __call_single_data *csd)
 {
 	if (!csd) {
 		smp_mb(); /* NULL cur_csd after unlock. */
@@ -125,7 +125,7 @@ static void csd_lock_record(call_single_data_t *csd)
 		  /* Or before unlock, as the case may be. */
 }
 
-static __always_inline int csd_lock_wait_getcpu(call_single_data_t *csd)
+static __always_inline int csd_lock_wait_getcpu(struct __call_single_data *csd)
 {
 	unsigned int csd_type;
 
@@ -140,7 +140,7 @@ static __always_inline int csd_lock_wait_getcpu(call_single_data_t *csd)
  * the CSD_TYPE_SYNC/ASYNC types provide the destination CPU,
  * so waiting on other types gets much less information.
  */
-static __always_inline bool csd_lock_wait_toolong(call_single_data_t *csd, u64 ts0, u64 *ts1, int *bug_id)
+static __always_inline bool csd_lock_wait_toolong(struct __call_single_data *csd, u64 ts0, u64 *ts1, int *bug_id)
 {
 	int cpu = -1;
 	int cpux;
@@ -204,7 +204,7 @@ static __always_inline bool csd_lock_wait_toolong(call_single_data_t *csd, u64 t
  * previous function call. For multi-cpu calls its even more interesting
  * as we'll have to ensure no other cpu is observing our csd.
  */
-static __always_inline void csd_lock_wait(call_single_data_t *csd)
+static __always_inline void csd_lock_wait(struct __call_single_data *csd)
 {
 	int bug_id = 0;
 	u64 ts0, ts1;
@@ -219,17 +219,17 @@ static __always_inline void csd_lock_wait(call_single_data_t *csd)
 }
 
 #else
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
@@ -242,7 +242,7 @@ static __always_inline void csd_lock(call_single_data_t *csd)
 	smp_wmb();
 }
 
-static __always_inline void csd_unlock(call_single_data_t *csd)
+static __always_inline void csd_unlock(struct __call_single_data *csd)
 {
 	WARN_ON(!(csd->node.u_flags & CSD_FLAG_LOCK));
 
@@ -276,7 +276,7 @@ void __smp_call_single_queue(int cpu, struct llist_node *node)
  * for execution on the given CPU. data must already have
  * ->func, ->info, and ->flags set.
  */
-static int generic_exec_single(int cpu, call_single_data_t *csd)
+static int generic_exec_single(int cpu, struct __call_single_data *csd)
 {
 	if (cpu == smp_processor_id()) {
 		smp_call_func_t func = csd->func;
@@ -542,7 +542,7 @@ EXPORT_SYMBOL(smp_call_function_single);
  * NOTE: Be careful, there is unfortunately no current debugging facility to
  * validate the correctness of this serialization.
  */
-int smp_call_function_single_async(int cpu, call_single_data_t *csd)
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd)
 {
 	int err = 0;
 
diff --git a/kernel/up.c b/kernel/up.c
index c6f323dcd45b..4edd5493eba2 100644
--- a/kernel/up.c
+++ b/kernel/up.c
@@ -25,7 +25,7 @@ int smp_call_function_single(int cpu, void (*func) (void *info), void *info,
 }
 EXPORT_SYMBOL(smp_call_function_single);
 
-int smp_call_function_single_async(int cpu, call_single_data_t *csd)
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd)
 {
 	unsigned long flags;
 

base-commit: 44a3370d47be9adf7532431a6d69583bb350ee57
-- 
2.31.1.527.g2d677e5b15


--fLKwDDoTK2blPOcV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="1139aeb1c521-5.12.patch"

From 0032c9cbd15817bad8cee70e6d6441e4b0f9c638 Mon Sep 17 00:00:00 2001
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 5 May 2021 23:12:42 +0200
Subject: [PATCH 5.12] smp: Fix smp_call_function_single_async prototype

commit 1139aeb1c521eb4a050920ce6c64c36c4f2a3ab7 upstream.

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

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Acked-by: Jens Axboe <axboe@kernel.dk>
Link: https://lkml.kernel.org/r/20210505211300.3174456-1-arnd@kernel.org
[nc: Fix conflicts]
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 include/linux/smp.h |  2 +-
 kernel/smp.c        | 20 ++++++++++----------
 kernel/up.c         |  2 +-
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/include/linux/smp.h b/include/linux/smp.h
index 70c6f6284dcf..238a3f97a415 100644
--- a/include/linux/smp.h
+++ b/include/linux/smp.h
@@ -73,7 +73,7 @@ void on_each_cpu_cond(smp_cond_func_t cond_func, smp_call_func_t func,
 void on_each_cpu_cond_mask(smp_cond_func_t cond_func, smp_call_func_t func,
 			   void *info, bool wait, const struct cpumask *mask);
 
-int smp_call_function_single_async(int cpu, call_single_data_t *csd);
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd);
 
 #ifdef CONFIG_SMP
 
diff --git a/kernel/smp.c b/kernel/smp.c
index aeb0adfa0606..c678589fbb76 100644
--- a/kernel/smp.c
+++ b/kernel/smp.c
@@ -110,7 +110,7 @@ static DEFINE_PER_CPU(void *, cur_csd_info);
 static atomic_t csd_bug_count = ATOMIC_INIT(0);
 
 /* Record current CSD work for current CPU, NULL to erase. */
-static void csd_lock_record(call_single_data_t *csd)
+static void csd_lock_record(struct __call_single_data *csd)
 {
 	if (!csd) {
 		smp_mb(); /* NULL cur_csd after unlock. */
@@ -125,7 +125,7 @@ static void csd_lock_record(call_single_data_t *csd)
 		  /* Or before unlock, as the case may be. */
 }
 
-static __always_inline int csd_lock_wait_getcpu(call_single_data_t *csd)
+static __always_inline int csd_lock_wait_getcpu(struct __call_single_data *csd)
 {
 	unsigned int csd_type;
 
@@ -140,7 +140,7 @@ static __always_inline int csd_lock_wait_getcpu(call_single_data_t *csd)
  * the CSD_TYPE_SYNC/ASYNC types provide the destination CPU,
  * so waiting on other types gets much less information.
  */
-static __always_inline bool csd_lock_wait_toolong(call_single_data_t *csd, u64 ts0, u64 *ts1, int *bug_id)
+static __always_inline bool csd_lock_wait_toolong(struct __call_single_data *csd, u64 ts0, u64 *ts1, int *bug_id)
 {
 	int cpu = -1;
 	int cpux;
@@ -204,7 +204,7 @@ static __always_inline bool csd_lock_wait_toolong(call_single_data_t *csd, u64 t
  * previous function call. For multi-cpu calls its even more interesting
  * as we'll have to ensure no other cpu is observing our csd.
  */
-static __always_inline void csd_lock_wait(call_single_data_t *csd)
+static __always_inline void csd_lock_wait(struct __call_single_data *csd)
 {
 	int bug_id = 0;
 	u64 ts0, ts1;
@@ -219,17 +219,17 @@ static __always_inline void csd_lock_wait(call_single_data_t *csd)
 }
 
 #else
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
@@ -242,7 +242,7 @@ static __always_inline void csd_lock(call_single_data_t *csd)
 	smp_wmb();
 }
 
-static __always_inline void csd_unlock(call_single_data_t *csd)
+static __always_inline void csd_unlock(struct __call_single_data *csd)
 {
 	WARN_ON(!(csd->node.u_flags & CSD_FLAG_LOCK));
 
@@ -276,7 +276,7 @@ void __smp_call_single_queue(int cpu, struct llist_node *node)
  * for execution on the given CPU. data must already have
  * ->func, ->info, and ->flags set.
  */
-static int generic_exec_single(int cpu, call_single_data_t *csd)
+static int generic_exec_single(int cpu, struct __call_single_data *csd)
 {
 	if (cpu == smp_processor_id()) {
 		smp_call_func_t func = csd->func;
@@ -542,7 +542,7 @@ EXPORT_SYMBOL(smp_call_function_single);
  * NOTE: Be careful, there is unfortunately no current debugging facility to
  * validate the correctness of this serialization.
  */
-int smp_call_function_single_async(int cpu, call_single_data_t *csd)
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd)
 {
 	int err = 0;
 
diff --git a/kernel/up.c b/kernel/up.c
index c6f323dcd45b..4edd5493eba2 100644
--- a/kernel/up.c
+++ b/kernel/up.c
@@ -25,7 +25,7 @@ int smp_call_function_single(int cpu, void (*func) (void *info), void *info,
 }
 EXPORT_SYMBOL(smp_call_function_single);
 
-int smp_call_function_single_async(int cpu, call_single_data_t *csd)
+int smp_call_function_single_async(int cpu, struct __call_single_data *csd)
 {
 	unsigned long flags;
 

base-commit: 96e86bea450b3a00af5dc7ba5382f1b241e4306a
-- 
2.31.1.527.g2d677e5b15


--fLKwDDoTK2blPOcV--
