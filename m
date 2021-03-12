Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKW4V6BAMGQE7OUAJGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 668993399C0
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 23:41:52 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id 38sf15407940otx.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 14:41:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615588909; cv=pass;
        d=google.com; s=arc-20160816;
        b=QX2JSr2LjEDF8UXKyCgzkbSL+7IGXJBbTTNG28ktY7yArwR5PVsjumY5//iYmzaMJR
         M8kdvcw61wVEZHiL0JNeWTEtlplGyWjn8q/YV+SKnTlWvXxjw8LB7P/gE+PJrjRw2/CD
         L3DBZEXfNbCjssRbTGfOckAztV0ThaT8gK/lKc44iLBGCwg5IkujlMR8zpqyjvet141u
         9QOPAHZeIRg3CdeJHk0HgGa2XRcUiOBP3d5uRdRNQ9NFy1PIePqf3/5GR/lds8HVP31S
         WvU+GjFffujc3H3epfKAIk/2KjXiH2zjyDs66i9yufsXMX31svOk07DAywTMsDtWYUTY
         a00A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=5icRDapsBxRDXekFseJnjxc1gn5wLUxxSpjzHHVelRM=;
        b=ClXKMO1YL/qMtAe7UzUs0PQFovL4/lV8a7nQVdn6hu+ThTGUow7YLF9Uc5RbwvIuns
         OIVxTqpEa3Us8gUlubVnwMHrWbWRMoOdkOCPYXiInmZuocuFbFpReDTHgtz/Ei2rkZQm
         kljLdtW5TtdT6xu7294//kcE1fRma7lIpwiEOUBlDjmOrmKX+shFEMQFS1xDiJm99XQv
         Xg6ce55/qZCLnFvwCMdfaEiG5hc5JnLubR6JGdlaG9OvFPIw9BwztEoGeN8mUOmmL6vL
         y1a+VqLBzjEmAIfIsoJs7f9VEWg7n0uSGykF7suhZ0Jx0VjD/GYFYogWPAUaUcpHeo1E
         prtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qBA3e1xb;
       spf=pass (google.com: domain of 3ku5lyawkad8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Ku5LYAwKAD8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5icRDapsBxRDXekFseJnjxc1gn5wLUxxSpjzHHVelRM=;
        b=aqLy8F0Rpun9x3PfKbt1MZbmzncF+9rB2EGyWYNkSyoICY6ZWEU9OJOhf4OvT2K98G
         FbzVgLSnSlK2wSYnSOX2Dwr08b8RjfDoZ6yEPCXTFJMmJm89m+VDdR2A5HOiq19VLfW1
         sOnwyVWXD0HPndEJt8hsf3l5bRHywb5cO4MF3uJJRiCYEcnYxAG5dLgbWDitt11nrjhB
         /zm3WDBszW9bRb7LPC6RxX3cYRfyUPHhGaYKdpqNKUEyjxNhxZdMc2uK3D1aH28ODqJp
         XqSTI3e/Wq4J44p1B2LhQBAor3yWRppFVqit2qBXEpD6QiymG8B0nimVlXQdZ+q8I62V
         ZktA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5icRDapsBxRDXekFseJnjxc1gn5wLUxxSpjzHHVelRM=;
        b=Azx8UpavAo/PRj+jSYKV96oyp4ozPZ0qEx7jWfrmQk8e3cC4lwbxX8g7PVxBYcNLDJ
         sffAALozy2mCas0GDgOC/t9A0LOqhWh9YL8Q2zlsrEbcMweTQYLxUJ2vbp5UWSnQ3cKx
         0Vt/qLDxLc+FXFJF4hbp/6gUcLxW/xWD0iUHd5lMH+dVnYfrqft1iBV0gYWJvU4cx1cK
         6A/ao04oau9RcaQhKzp36NW9DGGOmItGxZNTO2pQqcoRnbeSQK9aUy5TaD2yC4iKM05y
         JjDh85yQXlln9HYzUbeRjbXu9+Aw7QH8NdEgpDcEVbC5Q4AcYkjZRB5VganSjskTeqtV
         zfyg==
X-Gm-Message-State: AOAM533jGFOJBD9T/L0Ko/UP/+TzLcHpx0q40UApPWOMfv0VDeWAR3Im
	H1OY+Z7BO1OoOpkzwM3VGtU=
X-Google-Smtp-Source: ABdhPJybYNQZE671Zl1NPj6rm6/qUEgwwDAWPZFBYCVBDW/UNlTNl/xRS8EFpGyYOC4FCLYqZqFqLA==
X-Received: by 2002:a54:4507:: with SMTP id l7mr11001356oil.165.1615588906963;
        Fri, 12 Mar 2021 14:41:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6c57:: with SMTP id g23ls2667055otq.11.gmail; Fri, 12
 Mar 2021 14:41:46 -0800 (PST)
X-Received: by 2002:a9d:370:: with SMTP id 103mr5048781otv.232.1615588906596;
        Fri, 12 Mar 2021 14:41:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615588906; cv=none;
        d=google.com; s=arc-20160816;
        b=ouN88Kbpwl+M6TVMu3K9Xy1X/3YeE1N9i5hUUGSUfDfYL/msqBy3zZb41oavWn76vJ
         ifS3C+isDzEdrOgWcSFQ8p73Z+QIljHj3rdt6Hz15M52zsbTV/2gpLg4PhzJ8Qjvj63S
         AcSkvGEXqI17/57Dp3CczzeseiAZsAVPC2pOGY7goYrcaMzISd7khhu40YJGsgCHthbs
         dmER495gEbquLTwR15dbMI1o0LZ4ciaWJfD9/gxv7Jck3PTVyzMFK7nc21Wl0863Zjmz
         5hH66Seyj5zFAQdc8cjlzomV3GNJ23kekSaE6vpSw8+Iv2pW+G/TJ+fn1om8GoJHq4nK
         nnyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=HUxwt7fMNMSOl9TDVy0HKmyLht64Yf2wRDVakO/oeqM=;
        b=QvVQbfVsHoB3qQDvPh2DJk+hOCAeeOBVhb+q8EDLfU4nb9JWfGJVSZgZS2iLhknE7H
         G9I8cSh9bruqVNEr03pIneu6nF6S6Lz5d9bcHXtT+k5VFj/ye5xRGA8jxTsm/DBgLclH
         uSMLPjV6TELEFYgo4ZsFFzwS3YjVqZvP0Xt2bFTip/2pb39RXb0cJZc+QB+i7h0efHKn
         pJVPBHrQT/DlFTFwVNM0EQyeo9w0oY2npa3WXhrpbzgicnVGKwhkalolyp6+MvaGCwj9
         XMmvUAFOl+5cdW+bjjxnBmzUl5aFnipI0/Mki1I4Z6pXikb6q/xRd1RUhpUdKR9U/KM2
         Lt5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qBA3e1xb;
       spf=pass (google.com: domain of 3ku5lyawkad8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Ku5LYAwKAD8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id d1si16456oiw.3.2021.03.12.14.41.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 14:41:46 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ku5lyawkad8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id 127so30708692ybc.19
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 14:41:46 -0800 (PST)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f1f4:3252:5898:ad84])
 (user=ndesaulniers job=sendgmr) by 2002:a25:ca8e:: with SMTP id
 a136mr22450826ybg.156.1615588906145; Fri, 12 Mar 2021 14:41:46 -0800 (PST)
Date: Fri, 12 Mar 2021 14:41:31 -0800
In-Reply-To: <20210312224132.3413602-1-ndesaulniers@google.com>
Message-Id: <20210312224132.3413602-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210312220518.rz6cjh33bkwaumzz@archlinux-ax161> <20210312224132.3413602-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
Subject: [PATCH v2 1/2] gcov: fix clang-11+ support
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Oberparleiter <oberpar@linux.ibm.com>, Andrew Morton <akpm@linux-foundation.org>
Cc: Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Fangrui Song <maskray@google.com>, 
	Prasad Sodagudi <psodagud@quicinc.com>, Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qBA3e1xb;       spf=pass
 (google.com: domain of 3ku5lyawkad8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Ku5LYAwKAD8oeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
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
and llvm_gcda_emit_function() in the clang-11 release. Users of clang-11
or newer may have noticed their kernels failing to boot due to a panic
when enabling CONFIG_GCOV_KERNEL=y +CONFIG_GCOV_PROFILE_ALL=y.  Fix up
the function signatures so calling these functions doesn't panic the
kernel.

Link: https://reviews.llvm.org/rGcdd683b516d147925212724b09ec6fb792a40041
Link: https://reviews.llvm.org/rG13a633b438b6500ecad9e4f936ebadf3411d0f44
Cc: stable@vger.kernel.org # 5.4
Reported-by: Prasad Sodagudi <psodagud@quicinc.com>
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---
Changes V1 -> V2:
* Use CONFIG_CLANG_VERSION instead of __clang_major__.
* Pick up and retain Suggested-by, Tested-by, and Reviewed-by tags.
* Drop note from commit message about `git blame`; I did what was
  sugguested in V1, but it still looks to git like I wrote those
  functions. Oh well.

 kernel/gcov/clang.c | 69 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
index c94b820a1b62..8743150db2ac 100644
--- a/kernel/gcov/clang.c
+++ b/kernel/gcov/clang.c
@@ -75,7 +75,9 @@ struct gcov_fn_info {
 
 	u32 num_counters;
 	u64 *counters;
+#if CONFIG_CLANG_VERSION < 110000
 	const char *function_name;
+#endif
 };
 
 static struct gcov_info *current_info;
@@ -105,6 +107,7 @@ void llvm_gcov_init(llvm_gcov_callback writeout, llvm_gcov_callback flush)
 }
 EXPORT_SYMBOL(llvm_gcov_init);
 
+#if CONFIG_CLANG_VERSION < 110000
 void llvm_gcda_start_file(const char *orig_filename, const char version[4],
 		u32 checksum)
 {
@@ -113,7 +116,17 @@ void llvm_gcda_start_file(const char *orig_filename, const char version[4],
 	current_info->checksum = checksum;
 }
 EXPORT_SYMBOL(llvm_gcda_start_file);
+#else
+void llvm_gcda_start_file(const char *orig_filename, u32 version, u32 checksum)
+{
+	current_info->filename = orig_filename;
+	current_info->version = version;
+	current_info->checksum = checksum;
+}
+EXPORT_SYMBOL(llvm_gcda_start_file);
+#endif
 
+#if CONFIG_CLANG_VERSION < 110000
 void llvm_gcda_emit_function(u32 ident, const char *function_name,
 		u32 func_checksum, u8 use_extra_checksum, u32 cfg_checksum)
 {
@@ -133,6 +146,24 @@ void llvm_gcda_emit_function(u32 ident, const char *function_name,
 	list_add_tail(&info->head, &current_info->functions);
 }
 EXPORT_SYMBOL(llvm_gcda_emit_function);
+#else
+void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
+		u8 use_extra_checksum, u32 cfg_checksum)
+{
+	struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
+
+	if (!info)
+		return;
+
+	INIT_LIST_HEAD(&info->head);
+	info->ident = ident;
+	info->checksum = func_checksum;
+	info->use_extra_checksum = use_extra_checksum;
+	info->cfg_checksum = cfg_checksum;
+	list_add_tail(&info->head, &current_info->functions);
+}
+EXPORT_SYMBOL(llvm_gcda_emit_function);
+#endif
 
 void llvm_gcda_emit_arcs(u32 num_counters, u64 *counters)
 {
@@ -295,6 +326,7 @@ void gcov_info_add(struct gcov_info *dst, struct gcov_info *src)
 	}
 }
 
+#if CONFIG_CLANG_VERSION < 110000
 static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
 {
 	size_t cv_size; /* counter values size */
@@ -322,6 +354,28 @@ static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
 	kfree(fn_dup);
 	return NULL;
 }
+#else
+static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
+{
+	size_t cv_size; /* counter values size */
+	struct gcov_fn_info *fn_dup = kmemdup(fn, sizeof(*fn),
+			GFP_KERNEL);
+	if (!fn_dup)
+		return NULL;
+	INIT_LIST_HEAD(&fn_dup->head);
+
+	cv_size = fn->num_counters * sizeof(fn->counters[0]);
+	fn_dup->counters = vmalloc(cv_size);
+	if (!fn_dup->counters) {
+		kfree(fn_dup);
+		return NULL;
+	}
+
+	memcpy(fn_dup->counters, fn->counters, cv_size);
+
+	return fn_dup;
+}
+#endif
 
 /**
  * gcov_info_dup - duplicate profiling data set
@@ -362,6 +416,7 @@ struct gcov_info *gcov_info_dup(struct gcov_info *info)
  * gcov_info_free - release memory for profiling data set duplicate
  * @info: profiling data set duplicate to free
  */
+#if CONFIG_CLANG_VERSION < 110000
 void gcov_info_free(struct gcov_info *info)
 {
 	struct gcov_fn_info *fn, *tmp;
@@ -375,6 +430,20 @@ void gcov_info_free(struct gcov_info *info)
 	kfree(info->filename);
 	kfree(info);
 }
+#else
+void gcov_info_free(struct gcov_info *info)
+{
+	struct gcov_fn_info *fn, *tmp;
+
+	list_for_each_entry_safe(fn, tmp, &info->functions, head) {
+		vfree(fn->counters);
+		list_del(&fn->head);
+		kfree(fn);
+	}
+	kfree(info->filename);
+	kfree(info);
+}
+#endif
 
 #define ITER_STRIDE	PAGE_SIZE
 

base-commit: f78d76e72a4671ea52d12752d92077788b4f5d50
-- 
2.31.0.rc2.261.g7f71774620-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210312224132.3413602-2-ndesaulniers%40google.com.
