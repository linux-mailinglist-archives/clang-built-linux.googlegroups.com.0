Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUH6V2BAMGQET6KRPPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 01449339755
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 20:21:54 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id d11sf13828134plc.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 11:21:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615576912; cv=pass;
        d=google.com; s=arc-20160816;
        b=c9jhJOkPE03NDmfMd6KMPPnLJqxpZU+zaQhrN/oXGYnbCSk1GPc4P3TowwgGPZOIPU
         hY/jZZfNJkux6ejXdd5I3UK9lN5CNqFI2krloP7DBmMrTmSV1m/FfWQv13qRx8VJbbLT
         oyTxqYO6bwQ7RP2hcJLnwWoNIM++sD3foFFkfZEgOZ8iG0RyIZTuev+MwuYGm3rtmi9h
         Gd5CS6bytmncwZ3E4pj4o5kGsKkfS+MEigtVlWBAszxtLSxi3fLRmzwIICwjM58CmOr9
         457mZKA9gZAaBvK5H622Wb+nJQRGHXl58L6bmBKZX71Nfo0aGkHa5WaPmm//k+6O+ejG
         o5ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=zySCuUoeHW6d0IMVeoGDX7q5Vhv1y4b+RdUU8rZad3M=;
        b=PBkpfuaCwBRMAsw3A4S21lzrIjOShboL+7HO2+l7xl6lXfGHtnH3h9YPyiHiZ1gC9F
         HM3rfBY77ADFpIXv4qsg2Jlx8LJmgWR26LnVPl5k5ajCIy8Esp4jWs1DDdADb0ER8YR1
         qxFMQ1lP5yIiHEkZDZ7I/muLT7qEXm/8CoX7PlgrxBuWJ6P9ID4PDeYwmfegO19Y3v91
         m62cyfGTkuxCq3TD54WRW1RXeJU6yGEBbUHLmrGYZ3t+F5a96mb9JNLRDi/0dPFKswlm
         7vyAo+AevoIdNkp1ulAbX+X5viNDwNu6gSkkVMPvVx+Wwh9VhAdn98F7yvNhq9Jbgk3f
         fW4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nC4vXrBz;
       spf=pass (google.com: domain of 3tb9lyawkaaqrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3Tb9LYAwKAAQrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=zySCuUoeHW6d0IMVeoGDX7q5Vhv1y4b+RdUU8rZad3M=;
        b=gc/HHP++vA9F7U3oNYZO+EW22cwJDjbB1+g+1PkOTmYO049kdygFTzS0fps6IEYp2e
         9+e8/CjCGUgyKhzY7S+qf7iibhXq+OZVqMPHuuI0XQRt5TkzUNKtXI/ZV3ipEXV5BVo8
         KT8GIRYRKGZGkz+1srvajmxqBDEsKC9Ei+MUq/PirdKtdGpTm23r+Hx3beYyL3Z2vm1O
         vMwASbXhCU70YCOOHi9rh77q8Kwr5sZ2TfNA62vmeFk8Pnqxi2/t48Sx0kmDqulvRN1+
         i4VSOBTW8bnbdSp4wEcx6knUuQNipHp2m2lBCyLwb37o9bwlODsrlmFjZEihu5WZsQ2L
         xLJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zySCuUoeHW6d0IMVeoGDX7q5Vhv1y4b+RdUU8rZad3M=;
        b=OHG0RFRT7GF/YqTPB4AgAKdmJS9KoT9cdv2850ywS2rfAifbv618+/FTThhvLRXhRP
         3JuLXmBNfGUlqjwLcl51a2qfRd7bupYf9keUSRjA0eGhl6YomBpFVFEHmbxb81SB8y+T
         NHmjSt/JPQrLNRJT2470Wxzdo5V5Lwx/t5W+B5bqnBDzmh7MBD8lAvn4KBlRS+5I/X4o
         UruEYA/gLzhx0M+4AyPx6+W8rVsIMx2oHBR4tzg4Us6JG3xXXoCu6hgjQZdZ3zZIxs5B
         UrBJDXpbae2axNsKER2e6mfLWd98nVROWq6HRjrtARruOIVmdycj0/HkONLuJJnxu59U
         qEnw==
X-Gm-Message-State: AOAM532FAtzwmsDsjfz4kG/CbaGEgz+7SWGlDky4Mn5bk+h2c9VXqiCk
	P257sbDPooJ599VduKv/cGM=
X-Google-Smtp-Source: ABdhPJyQSMEKKXt9saqlxUHIaXr/DJdxfko5ovPq4dmPJlbxw92KDBUgglW7zvjjCiYJyG9uXev21A==
X-Received: by 2002:a17:902:d886:b029:e1:7784:4db5 with SMTP id b6-20020a170902d886b02900e177844db5mr33153plz.72.1615576912597;
        Fri, 12 Mar 2021 11:21:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:930c:: with SMTP id bc12ls1286295plb.10.gmail; Fri,
 12 Mar 2021 11:21:52 -0800 (PST)
X-Received: by 2002:a17:902:ce8d:b029:e4:bc38:c4 with SMTP id f13-20020a170902ce8db02900e4bc3800c4mr549888plg.48.1615576910304;
        Fri, 12 Mar 2021 11:21:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615576910; cv=none;
        d=google.com; s=arc-20160816;
        b=GBbnsIzjYRp+66Ju4WMqDhAX1p9DyU+9PrtbeikqX6uAr8scdkzQpWrrvNVQR/F1c5
         9nVrlecJiWQIz5mTascj1UGJRW56axdRzNKFyC27+2+lL+4RUhniMIZQKFSzzZjTKW/b
         e5nE8dFQegtlY8Deo8gPT0A8ex7f4u4PYhZqIo9STBIIZY8gmRzDQX1YC11++Uro5K35
         mguvTh92gI0T9d8YHScOzGeyZuW1NFbXH0x2aP8c/frtdWYgZuSYoFov5dgyrlrveLFn
         R5sYw0ogS9JeZBZauxEdZKL83G/+6+phcarHv+S/mcinfvRGAE0I7egSWlK4rxwIstev
         dj+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=fdqfNR+CjGGNSuJTg55c2hFzZvvxvJUGhqyHXXg4ybs=;
        b=XBmI+BaTVAXsiIch47EHMsDIIjR79EssLzFvyKw686XN+JYUK51siNPkb4meEYeur1
         Y9V2mXxReRSthFJxeFs+1UewCFI8/V1F/iatiIfNAQU16THM7wMdrymipm1k0NUq1QIn
         sGARWajNam2ZQjOALJ4T/XN1a6SYx5Eyqai0umcdB5ahVFgqLukXQqkMvi9fsE5QvNv8
         T3iwl9bzdQN+McDgSH4ADGnP2J/oKySQCHdZ96NizDp1p8uWQnyOO0JVClm86vegw/TZ
         Pkn7L1+HPFfuoivzP7nagcV96aDHtvE8Xajkj+ytemF5kDE4P83lPehd0KUiyTvLDJSi
         VJUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nC4vXrBz;
       spf=pass (google.com: domain of 3tb9lyawkaaqrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3Tb9LYAwKAAQrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id h7si471205plr.3.2021.03.12.11.21.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 11:21:50 -0800 (PST)
Received-SPF: pass (google.com: domain of 3tb9lyawkaaqrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id a16so2625610qtw.1
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 11:21:50 -0800 (PST)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f1f4:3252:5898:ad84])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:425:: with SMTP id
 a5mr8339289qvy.55.1615576909351; Fri, 12 Mar 2021 11:21:49 -0800 (PST)
Date: Fri, 12 Mar 2021 11:21:39 -0800
Message-Id: <20210312192139.2503087-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
Subject: [PATCH] gcov: fix clang-11+ support
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Oberparleiter <oberpar@linux.ibm.com>, Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	Prasad Sodagudi <psodagud@quicinc.com>, Nathan Chancellor <nathan@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nC4vXrBz;       spf=pass
 (google.com: domain of 3tb9lyawkaaqrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3Tb9LYAwKAAQrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
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

When we drop clang-10 support from the kernel, we should carefully
update the original implementations to try to preserve git blame,
deleting these implementations.

Link: https://reviews.llvm.org/rGcdd683b516d147925212724b09ec6fb792a40041
Link: https://reviews.llvm.org/rG13a633b438b6500ecad9e4f936ebadf3411d0f44
Cc: Fangrui Song <maskray@google.com>
Reported-by: Prasad Sodagudi<psodagud@quicinc.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 kernel/gcov/clang.c | 69 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
index c94b820a1b62..20e6760ec05d 100644
--- a/kernel/gcov/clang.c
+++ b/kernel/gcov/clang.c
@@ -75,7 +75,9 @@ struct gcov_fn_info {
 
 	u32 num_counters;
 	u64 *counters;
+#if __clang_major__ < 11
 	const char *function_name;
+#endif
 };
 
 static struct gcov_info *current_info;
@@ -105,6 +107,7 @@ void llvm_gcov_init(llvm_gcov_callback writeout, llvm_gcov_callback flush)
 }
 EXPORT_SYMBOL(llvm_gcov_init);
 
+#if __clang_major__ < 11
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
 
+#if __clang_major__ < 11
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
 
+#if __clang_major__ < 11
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
+#if __clang_major__ < 11
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210312192139.2503087-1-ndesaulniers%40google.com.
