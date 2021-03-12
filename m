Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLO4V6BAMGQESDI7Q7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9803399BF
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 23:41:50 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id y5sf9272704pju.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 14:41:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615588909; cv=pass;
        d=google.com; s=arc-20160816;
        b=qIdwkPquOPrpjZJwA2hwnanTSi09hkEDldaVD6SGbdgn+f3e69EkwDeSLuXqJ+yh1s
         5+2pIFLmawtr0E3nHREWwBnFG+JxlT1HVAnBdxaGd6Ro+9iGpQ1RRNot+4XJJX8p3xAT
         cJ0sXVB/MHR3FEDq1IJmg4tnYd0rxklIcdow/pwnG5YQd8NkN2ghgsQLhsE4AcVnsvB0
         v8OLeg9vlVCAtXzJ8IWxYzw7t/X4I2JpjL2CGu6RhN3IIJKaVgF38J02WI2JKET52H0G
         TPdPkj+bDwvjYbrqwFGXVYDYN21SGyHXpm/pTRTz713YL3ZpQyPwxrE3MKVNZDE9OYCo
         sekw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=20XrWOKTK91pGza1fLTiCROW7n+sl7kwvGAYT4rZpdE=;
        b=hoVqyoKIeqL5+jb8EAq6vrFtPXzANnZsUEjOA6sZou+rHB95FTXV4wH/uz10Tsy+fz
         8dzLNW9jRTESY8pDxakcAdAyIczKe5nAKF7ohe00bGFj34Tk3kt+zsNIAamEwu4C08g8
         3/8Bn/Y6n8hV4W746roo7u9dx4IkdYBTOMo5kXMEIYpLIwJ5CsR049hheroib7ld06td
         kzQqPzGaPkzTos+74hbAqM/pUvzCOXnkSq2TEJkmzpSCn07cr0n+HBlWcTxPYsyo1yIK
         an9LPzfpi0NkPGFwKER2D4EhS0avEaA402JsUCqtPFRmTyYCLRgIjvtLcYGKdHj+45ay
         K1Yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c5Rqb6AD;
       spf=pass (google.com: domain of 3k-5lyawkaeapfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3K-5LYAwKAEApfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=20XrWOKTK91pGza1fLTiCROW7n+sl7kwvGAYT4rZpdE=;
        b=DtkIVsUw/0sGCmmXuwdVWa8uDzqCtrgTEXqYyJGBsWYQ+YXd5jg3TwwJIP/VGFZlnO
         4DDsg5/mlGZ1iZW3Cxm691wDU2akr+CYZPnYxAJOI2Bu+VVoLDcAuJxVboSLo8E88G8u
         DlrEuyjjfG/T9QFT1Z5MoDPdjdArvuWkLmpeMKLzW1JxuLMGUaIJPQe7284kcojo+9au
         YNeQ/DOgdhLW5Fx8D0fEx6rXHFcOjq3lik2usSjjl4ZxQOtIqMCuiEqZrvs2uEFKW+pt
         BmruRIoK/UZFVbIRzsJie2LpffQWwAvmD5Lmiwo5Q4X1cUhn3LAS6iuAGWSR5ESaPoSP
         Xmcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=20XrWOKTK91pGza1fLTiCROW7n+sl7kwvGAYT4rZpdE=;
        b=CwPHfTVASYoEBEOQirqoSyxi7CMMObi2QjxeK0FXiL8XVWGge/yEW8WucB2lDsPlRX
         lbJex5U75Ioksgi8rLPZ8yPFYUljCL0XyeEY5h7QVzVT7FlYJRPWHXwoykDXdHq1T3nM
         5u4JhBvoymaSpA6qL7NXdTm8e/rmI21dGwmRqz5+avlLuSvIgTcrk6TxDhN7HwMZlcY4
         Ix+GOnmWqZ/8HJYIF+ok8mlB3of7U7/d9mNobZcPgnmhIjA5m/jaPbuukxmC8W28mDav
         yb+4/xr/B5JlVx0JfK+69t8cJEx90T/eyCqDTZCAPvJYHBPjo3/11B+E774fAC8BWSIN
         oKPA==
X-Gm-Message-State: AOAM533nWdE5yLRsoCUJ5T4ZHQFaHmyCq5MBacnxWZcqxshyZMJOFuDM
	C57U1wlDcKw31ZOhVau5mo0=
X-Google-Smtp-Source: ABdhPJzhNjqXQvtfXLu3iW0LJk+e5oreg+pkXN5DwAU/8qQLFNgAUEAVzwnoRZG6TZgwl+cHfwI+eg==
X-Received: by 2002:a17:902:e5c8:b029:e4:c22d:4da6 with SMTP id u8-20020a170902e5c8b02900e4c22d4da6mr729064plf.10.1615588909285;
        Fri, 12 Mar 2021 14:41:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1d50:: with SMTP id d77ls4257629pfd.4.gmail; Fri, 12 Mar
 2021 14:41:48 -0800 (PST)
X-Received: by 2002:aa7:8498:0:b029:1f6:8a25:7ade with SMTP id u24-20020aa784980000b02901f68a257ademr354839pfn.76.1615588908748;
        Fri, 12 Mar 2021 14:41:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615588908; cv=none;
        d=google.com; s=arc-20160816;
        b=QuWCyanVT2LMhuiTy33LrZKymUp1dtnQQrbp0Q7A86OhazJxTmmLTe6p6hkciBrXFs
         5bNQt7w/0AA31u63KCh37CaKrfRuKFIkT2RVTGrpUG/6Fu7J+HQv8TMRS1tjvVsTHu4L
         NuR1GhtSRUCnbGcJ+9djalb4ez5h89uR2V4ChQ+HzilqzzB/LV6NG/Y2yN3XZg9QF3r+
         gWZoc/4Del1/9WwFj1JW+4IUTLBvK5aaZAEvx+Xn+YfHQfZmCKLbDz3PpUQjN8dGAREb
         46z8M/UHpDEG6JjflNJq/yJXYsZdb0SwsfpqWJtqlJkmULsH/zrPjMMGGcPtkGZY7VdA
         EvzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=J1whg9fhlESRN1AXNMF/1Wm8AFqRcdPHT/jpGd62N0s=;
        b=ZUN7nl/a9zImVcvzbTpJxrBvrIYS7/6+yktoaSABBzWbBUiqhk4XRjllI9BubcST3F
         2Y8on1He9f43iWxArPcaLNPmBnRygmNy8CPT97aNidHLl2ct9hCqBO5wj6oi4z7MAP2I
         g6uvzAIODfd8k0gYWt7RRZGOvRnKK+vXBiB6H7qTWqHLEp5DlY2rFQWw8/NY3Ifdi49J
         ZJolQ7ItDp/BH8cwbBR15vucUyNHYNalZ+CbuGFGW/6L2OYEUEZUq/IsRL6bIx10SuwB
         3K5ynWZmPn3r70cgng50cqvyf3pVJz8tLQYzENb2moiLNugpX4u7u501sHcOfPM76TVD
         66KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c5Rqb6AD;
       spf=pass (google.com: domain of 3k-5lyawkaeapfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3K-5LYAwKAEApfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id e8si357529pgl.0.2021.03.12.14.41.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 14:41:48 -0800 (PST)
Received-SPF: pass (google.com: domain of 3k-5lyawkaeapfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id b18so5040691qte.21
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 14:41:48 -0800 (PST)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f1f4:3252:5898:ad84])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:5ce8:: with SMTP id
 iv8mr474566qvb.16.1615588907955; Fri, 12 Mar 2021 14:41:47 -0800 (PST)
Date: Fri, 12 Mar 2021 14:41:32 -0800
In-Reply-To: <20210312224132.3413602-1-ndesaulniers@google.com>
Message-Id: <20210312224132.3413602-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210312220518.rz6cjh33bkwaumzz@archlinux-ax161> <20210312224132.3413602-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
Subject: [PATCH v2 2/2] gcov: clang: drop support for clang-10 and older
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Oberparleiter <oberpar@linux.ibm.com>, Andrew Morton <akpm@linux-foundation.org>
Cc: Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Fangrui Song <maskray@google.com>, 
	Prasad Sodagudi <psodagud@quicinc.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=c5Rqb6AD;       spf=pass
 (google.com: domain of 3k-5lyawkaeapfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3K-5LYAwKAEApfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

LLVM changed the expected function signatures for llvm_gcda_start_file()
and llvm_gcda_emit_function() in the clang-11 release. Drop the older
implementations and require folks to upgrade their compiler if they're
interested in GCOV support.

Link: https://reviews.llvm.org/rGcdd683b516d147925212724b09ec6fb792a40041
Link: https://reviews.llvm.org/rG13a633b438b6500ecad9e4f936ebadf3411d0f44
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
For an easier time reviewing this series, reviewers may want to apply
these patches, then check the overall diff with `git diff origin/HEAD`.

 kernel/gcov/Kconfig |  1 +
 kernel/gcov/clang.c | 85 ---------------------------------------------
 2 files changed, 1 insertion(+), 85 deletions(-)

diff --git a/kernel/gcov/Kconfig b/kernel/gcov/Kconfig
index f62de2dea8a3..58f87a3092f3 100644
--- a/kernel/gcov/Kconfig
+++ b/kernel/gcov/Kconfig
@@ -4,6 +4,7 @@ menu "GCOV-based kernel profiling"
 config GCOV_KERNEL
 	bool "Enable gcov-based kernel profiling"
 	depends on DEBUG_FS
+	depends on !CC_IS_CLANG || CLANG_VERSION >= 110000
 	select CONSTRUCTORS
 	default n
 	help
diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
index 8743150db2ac..14de5644b5cc 100644
--- a/kernel/gcov/clang.c
+++ b/kernel/gcov/clang.c
@@ -75,9 +75,6 @@ struct gcov_fn_info {
 
 	u32 num_counters;
 	u64 *counters;
-#if CONFIG_CLANG_VERSION < 110000
-	const char *function_name;
-#endif
 };
 
 static struct gcov_info *current_info;
@@ -107,16 +104,6 @@ void llvm_gcov_init(llvm_gcov_callback writeout, llvm_gcov_callback flush)
 }
 EXPORT_SYMBOL(llvm_gcov_init);
 
-#if CONFIG_CLANG_VERSION < 110000
-void llvm_gcda_start_file(const char *orig_filename, const char version[4],
-		u32 checksum)
-{
-	current_info->filename = orig_filename;
-	memcpy(&current_info->version, version, sizeof(current_info->version));
-	current_info->checksum = checksum;
-}
-EXPORT_SYMBOL(llvm_gcda_start_file);
-#else
 void llvm_gcda_start_file(const char *orig_filename, u32 version, u32 checksum)
 {
 	current_info->filename = orig_filename;
@@ -124,29 +111,7 @@ void llvm_gcda_start_file(const char *orig_filename, u32 version, u32 checksum)
 	current_info->checksum = checksum;
 }
 EXPORT_SYMBOL(llvm_gcda_start_file);
-#endif
-
-#if CONFIG_CLANG_VERSION < 110000
-void llvm_gcda_emit_function(u32 ident, const char *function_name,
-		u32 func_checksum, u8 use_extra_checksum, u32 cfg_checksum)
-{
-	struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
-
-	if (!info)
-		return;
 
-	INIT_LIST_HEAD(&info->head);
-	info->ident = ident;
-	info->checksum = func_checksum;
-	info->use_extra_checksum = use_extra_checksum;
-	info->cfg_checksum = cfg_checksum;
-	if (function_name)
-		info->function_name = kstrdup(function_name, GFP_KERNEL);
-
-	list_add_tail(&info->head, &current_info->functions);
-}
-EXPORT_SYMBOL(llvm_gcda_emit_function);
-#else
 void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
 		u8 use_extra_checksum, u32 cfg_checksum)
 {
@@ -163,7 +128,6 @@ void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
 	list_add_tail(&info->head, &current_info->functions);
 }
 EXPORT_SYMBOL(llvm_gcda_emit_function);
-#endif
 
 void llvm_gcda_emit_arcs(u32 num_counters, u64 *counters)
 {
@@ -326,7 +290,6 @@ void gcov_info_add(struct gcov_info *dst, struct gcov_info *src)
 	}
 }
 
-#if CONFIG_CLANG_VERSION < 110000
 static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
 {
 	size_t cv_size; /* counter values size */
@@ -335,47 +298,15 @@ static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
 	if (!fn_dup)
 		return NULL;
 	INIT_LIST_HEAD(&fn_dup->head);
-
-	fn_dup->function_name = kstrdup(fn->function_name, GFP_KERNEL);
-	if (!fn_dup->function_name)
-		goto err_name;
-
-	cv_size = fn->num_counters * sizeof(fn->counters[0]);
-	fn_dup->counters = vmalloc(cv_size);
-	if (!fn_dup->counters)
-		goto err_counters;
-	memcpy(fn_dup->counters, fn->counters, cv_size);
-
-	return fn_dup;
-
-err_counters:
-	kfree(fn_dup->function_name);
-err_name:
-	kfree(fn_dup);
-	return NULL;
-}
-#else
-static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
-{
-	size_t cv_size; /* counter values size */
-	struct gcov_fn_info *fn_dup = kmemdup(fn, sizeof(*fn),
-			GFP_KERNEL);
-	if (!fn_dup)
-		return NULL;
-	INIT_LIST_HEAD(&fn_dup->head);
-
 	cv_size = fn->num_counters * sizeof(fn->counters[0]);
 	fn_dup->counters = vmalloc(cv_size);
 	if (!fn_dup->counters) {
 		kfree(fn_dup);
 		return NULL;
 	}
-
 	memcpy(fn_dup->counters, fn->counters, cv_size);
-
 	return fn_dup;
 }
-#endif
 
 /**
  * gcov_info_dup - duplicate profiling data set
@@ -416,21 +347,6 @@ struct gcov_info *gcov_info_dup(struct gcov_info *info)
  * gcov_info_free - release memory for profiling data set duplicate
  * @info: profiling data set duplicate to free
  */
-#if CONFIG_CLANG_VERSION < 110000
-void gcov_info_free(struct gcov_info *info)
-{
-	struct gcov_fn_info *fn, *tmp;
-
-	list_for_each_entry_safe(fn, tmp, &info->functions, head) {
-		kfree(fn->function_name);
-		vfree(fn->counters);
-		list_del(&fn->head);
-		kfree(fn);
-	}
-	kfree(info->filename);
-	kfree(info);
-}
-#else
 void gcov_info_free(struct gcov_info *info)
 {
 	struct gcov_fn_info *fn, *tmp;
@@ -443,7 +359,6 @@ void gcov_info_free(struct gcov_info *info)
 	kfree(info->filename);
 	kfree(info);
 }
-#endif
 
 #define ITER_STRIDE	PAGE_SIZE
 
-- 
2.31.0.rc2.261.g7f71774620-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210312224132.3413602-3-ndesaulniers%40google.com.
