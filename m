Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBO4E5D3AKGQE2E4VUQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CC21EF30F
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 10:28:45 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id k186sf10897434ybc.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 01:28:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591345723; cv=pass;
        d=google.com; s=arc-20160816;
        b=foj8pIFnDsrhy+Jk++P/eHPfJOQgEtJG1x6swGozxriCiJN1yGZfgSDgr3DTxfW4kd
         yJFwqfy/YRdhve8epBhHZjWKTEjwIHsV8wAvWgnxRmWVBaLzuG7OQYhLm2T6Wvb86Axm
         LNGFbiKo5EP5AjOyOEByQh/MguTQ6zFCFt6ruAEnpEcrBwZtTj+dQsJbIke/uxldfZ/i
         TZK4YOpJgiyqDFc5l8s7VWrgi/AGvofbD2JIK8n0G9pa4B9WXoFsS4rzUX3xeEd3nDVF
         A2OhXIRvpeaS5E0uL246yi2ZPI3Rh8Jo5OJZ+jlGO/lHbeC2p6jVNcYebPQ1G4guI1PC
         MP3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=qe5frytcO7rxoas01GIRAU7B5t0ETGlECFY/I4t2gl0=;
        b=w+Prwl1k1emBKC855fConUmUtuoQmShMNAy739UWZd39RgiFbUaLlj6TzYry9sz81t
         s4vGnWWyUBBwGawOpXYvihHfw+dzxs4AiNWS7Hajn6jYt63apv+M/Tvjc4Skcie60BDq
         TimZTsZPfJDWznS9nSaJs74GymYYs90bkM07FKIlcp2eq6gBc6wtRhPxKQsLEjaM18RG
         oq1l1MO54uUXLytKZYdbAyQKVPSZ3fdfEtXLHVSu4rmelxXpvr2UvZgjNldVvQ9cIPiH
         eWSqV4HzO8rmWkVwplxkkciDw9jsj6QDU9cOy8IbtNYxhJcxNvPeJ69LhQWANbTfCrxJ
         dZkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NRNhyOkZ;
       spf=pass (google.com: domain of 3oglaxgukeamhoyhujrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3OgLaXgUKEaMHOYHUJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qe5frytcO7rxoas01GIRAU7B5t0ETGlECFY/I4t2gl0=;
        b=BCEGJGC0Ekn78AyINJNMH8exRomAG1uwNsxue9mQ49oRwDt3E3JR5FMGCf3UM1Uaw3
         xWCOqdxePbu2wnffJ/DmN6QYY+PWAD3c4ZmRQyDK7uwfUwcA0dkooQp4xK8OW1pMrmVR
         HcjMmV/wYjI2JclQvSYn/5kcqMDGOeab/cu1qYQcp6QT/fKFlQ6S4ZX5ybiGsJJvuXqm
         eEfEdRPLUpY6Hwh4b5x7MetIluVg3x43s4lB08vJqUmTbL28Rqq5uFyI2nnHUPVxmguS
         4KLvf29DQf72QyTFhePBrVkRlbrSvgdmsRxZznEOM5LbvK4dP2hcSRD0bhqVPcM91MxR
         gfdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qe5frytcO7rxoas01GIRAU7B5t0ETGlECFY/I4t2gl0=;
        b=Ae3RPCsioLi7U7tvA1UN+UKdk9urQ98oeyDlnR2ttZeSj/p3rq1DByrsoOTOmmH0TE
         zplu268gNGWWJfVZbuJIVEBgRY0wgIsR62ZGzPaz0cMcka+/iLvRoaYJHZf88x5p0KoG
         B7bycA6g/YYJZC/3XLIBlIMBVoEpyu32u/JIUf2mKvsp7ww9iDds4HdOSOmDGAPgNUzR
         EMvQcTrqVl0UBvTGCgmdeGdTDbpJQswVj1+wDJ/ONy/HVFoTPB2WYrO2S2euE85ihm+e
         m50p5wH4J2dNqtSt6wEIlVzS1GMAW/Rciuu8EfLHzsrQ2ZMxC+ZvNPzuPGQCW8e+JxMO
         iktQ==
X-Gm-Message-State: AOAM531ZnpynCws3h01lXr2w0YUxpd9oOkTdN2aROZJB8m0B8UiHiIko
	FbNCMo01inP/z5k5xjYnXQ0=
X-Google-Smtp-Source: ABdhPJzLddgbjaqorJWD4FLmmqJr8JWWRbwjXxMDXzN0cFa74a/juF5Jl9lFf25APEdR9I5SDKmVAg==
X-Received: by 2002:a5b:408:: with SMTP id m8mr14091351ybp.315.1591345723749;
        Fri, 05 Jun 2020 01:28:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4192:: with SMTP id o140ls2913699yba.9.gmail; Fri, 05
 Jun 2020 01:28:43 -0700 (PDT)
X-Received: by 2002:a25:23d6:: with SMTP id j205mr14781600ybj.60.1591345723333;
        Fri, 05 Jun 2020 01:28:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591345723; cv=none;
        d=google.com; s=arc-20160816;
        b=maVxDqP/Un8FvL7zuYKtx3mlx8uVbQUqmDNQEJhPsPXS0XdT//spbm5CPN2L9h3bTU
         YISVTZRF0yW88/3D/EegLGu0AI1i8MP2aJdgR1yTlL7fxtdMcrHcrx/4WWX4JTWjB5Sm
         wV55JXkkr2sOi2uMTnNXAnvHJTI9rhVcaX/UXSBzmh/vSt66gEswZyRRhlUj4XKNbwS3
         HL/Y8NcPPwRpNBGGNn0L4BTv33ayJAdxRveS/205pU7OO7iot+e+LpWW/s4lJfjnY/cn
         7PZ4xDb9+3ECxCKg1CYX7iL33HIdGQmqAlwKi//EEqxGqW0pUG92urInfLgL5gmlj84N
         O6vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=q4xtHULh8K3VSLAHr6h+7DTr9q0n8BVN7sADFLbNyog=;
        b=Yczdc3U45HyGFftodMfpICYd/zCvTi6v5zO9wQEB9uc4CFGk2eKZSFbO4KpvkARo7f
         QjlHyIA5I4XaEeHwQGYTzI0fhDXK4LYO5TyQl5+4NwP3PQUyKmQ6x1lVhgYrios2Kzre
         N3RmMSmM6mSJRik4Oyq/31XpbyGo3GuST81Cwz2xGJLUHGcQicGHoXqymPxJR1jCZfdm
         Ba2KDgPU46cTtlfB0/Yz0I7ILt998nmey0VxW8ZBzDLslDbH66GYBRuMp02qMLjmr8Ot
         HboHR8MkplkJdUr9b0uWf3iHYmxX+da8GMUNDPcvdT/Wpe34UTmVG/AAFUw5mK/lTp4/
         HC2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NRNhyOkZ;
       spf=pass (google.com: domain of 3oglaxgukeamhoyhujrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3OgLaXgUKEaMHOYHUJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id k11si528659ybb.4.2020.06.05.01.28.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2020 01:28:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3oglaxgukeamhoyhujrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id u186so11169979ybf.1
        for <clang-built-linux@googlegroups.com>; Fri, 05 Jun 2020 01:28:43 -0700 (PDT)
X-Received: by 2002:a25:b882:: with SMTP id w2mr14553588ybj.160.1591345722977;
 Fri, 05 Jun 2020 01:28:42 -0700 (PDT)
Date: Fri,  5 Jun 2020 10:28:38 +0200
Message-Id: <20200605082839.226418-1-elver@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.278.ge193c7cf3a9-goog
Subject: [PATCH -tip v3 1/2] kcov: Make runtime functions noinstr-compatible
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: peterz@infradead.org, bp@alien8.de, tglx@linutronix.de, mingo@kernel.org, 
	clang-built-linux@googlegroups.com, paulmck@kernel.org, dvyukov@google.com, 
	glider@google.com, andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, x86@kernel.org, akpm@linux-foundation.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NRNhyOkZ;       spf=pass
 (google.com: domain of 3oglaxgukeamhoyhujrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3OgLaXgUKEaMHOYHUJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

While we lack a compiler attribute to add to noinstr that would disable
KCOV, make the KCOV runtime functions return if the caller is in a
noinstr section, and mark them noinstr.

Declare write_comp_data() as __always_inline to ensure it is inlined,
which also reduces stack usage and removes one extra call from the
fast-path.

In future, our compilers may provide an attribute to implement
__no_sanitize_coverage, which can then be added to noinstr, and the
checks added in this patch can be guarded by an #ifdef checking if the
compiler has such an attribute or not.

Signed-off-by: Marco Elver <elver@google.com>
---
Applies to -tip only currently, because of the use of instrumentation.h
markers.

v3:
* Remove objtool hack, and instead properly mark __sanitizer_cov
  functions as noinstr.
* Add comment about .entry.text.

v2: https://lkml.kernel.org/r/20200604145635.21565-1-elver@google.com
* Rewrite based on Peter's and Andrey's feedback -- v1 worked because we
  got lucky. Let's not rely on luck, as it will be difficult to ensure the
  same conditions remain true in future.

v1: https://lkml.kernel.org/r/20200604095057.259452-1-elver@google.com

Note: There are a set of KCOV patches from Andrey in -next:
https://lkml.kernel.org/r/cover.1585233617.git.andreyknvl@google.com --
Git cleanly merges this patch with those patches, and no merge conflict
is expected.
---
 kernel/kcov.c | 59 +++++++++++++++++++++++++++++++++++++++------------
 1 file changed, 45 insertions(+), 14 deletions(-)

diff --git a/kernel/kcov.c b/kernel/kcov.c
index 8accc9722a81..84cdc30d478e 100644
--- a/kernel/kcov.c
+++ b/kernel/kcov.c
@@ -6,6 +6,7 @@
 #include <linux/compiler.h>
 #include <linux/errno.h>
 #include <linux/export.h>
+#include <linux/instrumentation.h>
 #include <linux/types.h>
 #include <linux/file.h>
 #include <linux/fs.h>
@@ -24,6 +25,7 @@
 #include <linux/refcount.h>
 #include <linux/log2.h>
 #include <asm/setup.h>
+#include <asm/sections.h>
 
 #define kcov_debug(fmt, ...) pr_debug("%s: " fmt, __func__, ##__VA_ARGS__)
 
@@ -172,20 +174,38 @@ static notrace unsigned long canonicalize_ip(unsigned long ip)
 	return ip;
 }
 
+/* Return true if @ip is within a noinstr section. */
+static __always_inline bool within_noinstr_section(unsigned long ip)
+{
+	/*
+	 * Note: .entry.text is also considered noinstr, but for now, since all
+	 * .entry.text code lives in .S files, these are never instrumented.
+	 */
+	return (unsigned long)__noinstr_text_start <= ip &&
+	       ip < (unsigned long)__noinstr_text_end;
+}
+
 /*
  * Entry point from instrumented code.
  * This is called once per basic-block/edge.
  */
-void notrace __sanitizer_cov_trace_pc(void)
+void noinstr __sanitizer_cov_trace_pc(void)
 {
 	struct task_struct *t;
 	unsigned long *area;
-	unsigned long ip = canonicalize_ip(_RET_IP_);
+	unsigned long ip;
 	unsigned long pos;
 
+	if (unlikely(within_noinstr_section(_RET_IP_)))
+		return;
+
+	instrumentation_begin();
+
 	t = current;
 	if (!check_kcov_mode(KCOV_MODE_TRACE_PC, t))
-		return;
+		goto out;
+
+	ip = canonicalize_ip(_RET_IP_);
 
 	area = t->kcov_area;
 	/* The first 64-bit word is the number of subsequent PCs. */
@@ -194,19 +214,27 @@ void notrace __sanitizer_cov_trace_pc(void)
 		area[pos] = ip;
 		WRITE_ONCE(area[0], pos);
 	}
+
+out:
+	instrumentation_end();
 }
 EXPORT_SYMBOL(__sanitizer_cov_trace_pc);
 
 #ifdef CONFIG_KCOV_ENABLE_COMPARISONS
-static void notrace write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
+static __always_inline void write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
 {
 	struct task_struct *t;
 	u64 *area;
 	u64 count, start_index, end_pos, max_pos;
 
+	if (unlikely(within_noinstr_section(ip)))
+		return;
+
+	instrumentation_begin();
+
 	t = current;
 	if (!check_kcov_mode(KCOV_MODE_TRACE_CMP, t))
-		return;
+		goto out;
 
 	ip = canonicalize_ip(ip);
 
@@ -229,61 +257,64 @@ static void notrace write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
 		area[start_index + 3] = ip;
 		WRITE_ONCE(area[0], count + 1);
 	}
+
+out:
+	instrumentation_end();
 }
 
-void notrace __sanitizer_cov_trace_cmp1(u8 arg1, u8 arg2)
+void noinstr __sanitizer_cov_trace_cmp1(u8 arg1, u8 arg2)
 {
 	write_comp_data(KCOV_CMP_SIZE(0), arg1, arg2, _RET_IP_);
 }
 EXPORT_SYMBOL(__sanitizer_cov_trace_cmp1);
 
-void notrace __sanitizer_cov_trace_cmp2(u16 arg1, u16 arg2)
+void noinstr __sanitizer_cov_trace_cmp2(u16 arg1, u16 arg2)
 {
 	write_comp_data(KCOV_CMP_SIZE(1), arg1, arg2, _RET_IP_);
 }
 EXPORT_SYMBOL(__sanitizer_cov_trace_cmp2);
 
-void notrace __sanitizer_cov_trace_cmp4(u32 arg1, u32 arg2)
+void noinstr __sanitizer_cov_trace_cmp4(u32 arg1, u32 arg2)
 {
 	write_comp_data(KCOV_CMP_SIZE(2), arg1, arg2, _RET_IP_);
 }
 EXPORT_SYMBOL(__sanitizer_cov_trace_cmp4);
 
-void notrace __sanitizer_cov_trace_cmp8(u64 arg1, u64 arg2)
+void noinstr __sanitizer_cov_trace_cmp8(u64 arg1, u64 arg2)
 {
 	write_comp_data(KCOV_CMP_SIZE(3), arg1, arg2, _RET_IP_);
 }
 EXPORT_SYMBOL(__sanitizer_cov_trace_cmp8);
 
-void notrace __sanitizer_cov_trace_const_cmp1(u8 arg1, u8 arg2)
+void noinstr __sanitizer_cov_trace_const_cmp1(u8 arg1, u8 arg2)
 {
 	write_comp_data(KCOV_CMP_SIZE(0) | KCOV_CMP_CONST, arg1, arg2,
 			_RET_IP_);
 }
 EXPORT_SYMBOL(__sanitizer_cov_trace_const_cmp1);
 
-void notrace __sanitizer_cov_trace_const_cmp2(u16 arg1, u16 arg2)
+void noinstr __sanitizer_cov_trace_const_cmp2(u16 arg1, u16 arg2)
 {
 	write_comp_data(KCOV_CMP_SIZE(1) | KCOV_CMP_CONST, arg1, arg2,
 			_RET_IP_);
 }
 EXPORT_SYMBOL(__sanitizer_cov_trace_const_cmp2);
 
-void notrace __sanitizer_cov_trace_const_cmp4(u32 arg1, u32 arg2)
+void noinstr __sanitizer_cov_trace_const_cmp4(u32 arg1, u32 arg2)
 {
 	write_comp_data(KCOV_CMP_SIZE(2) | KCOV_CMP_CONST, arg1, arg2,
 			_RET_IP_);
 }
 EXPORT_SYMBOL(__sanitizer_cov_trace_const_cmp4);
 
-void notrace __sanitizer_cov_trace_const_cmp8(u64 arg1, u64 arg2)
+void noinstr __sanitizer_cov_trace_const_cmp8(u64 arg1, u64 arg2)
 {
 	write_comp_data(KCOV_CMP_SIZE(3) | KCOV_CMP_CONST, arg1, arg2,
 			_RET_IP_);
 }
 EXPORT_SYMBOL(__sanitizer_cov_trace_const_cmp8);
 
-void notrace __sanitizer_cov_trace_switch(u64 val, u64 *cases)
+void noinstr __sanitizer_cov_trace_switch(u64 val, u64 *cases)
 {
 	u64 i;
 	u64 count = cases[0];
-- 
2.27.0.278.ge193c7cf3a9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200605082839.226418-1-elver%40google.com.
