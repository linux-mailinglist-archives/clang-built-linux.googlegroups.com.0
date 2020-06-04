Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBQUI4P3AKGQELOL3HOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 817D51EE1D4
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 11:52:03 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id w1sf4400219pfw.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 02:52:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591264322; cv=pass;
        d=google.com; s=arc-20160816;
        b=cqKca0/kKsKyfYY3umrGeamzsgj3TducsY36VqENzaBDeIfxtihEYd7fGj60qe4yPD
         7bEUR5fjsqbR59iGxVALlY8t5Eub04EzlEubqCkkEkr51VbLLuoO73oA/64U/qntnUef
         SSdPD2saW7uWzu39RHXQZ6Xse+NsOfmJSgN8MOVBd5iNZxquJ/vwo/4lXlypAIoGW9uR
         SKksOWyRvhSPskASU7OBx7FrKqXKmDqEz7KxL5g+rw8NSC//1rX9V9fscs6blCr4NjNw
         7I7W4cIhL9dT8x4i9AdpNRu4pWNrkPReYtglwl8EtLIwnx2e11WsooeXT/5Ef5Vql4Tc
         B7jA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=zzQ07YeOHatjHfA7R3vmyU6Sfb+4eRGVa1s5EfIE0XA=;
        b=XaWdnrERrPdNSUUZzsxN4jB6xG1oXH3qlvUko4t7oY6x/QUJPULKFgdp2zLVWeQC32
         AnxeDujPihUl3c1w+fyOix8K3uDv5BU7xcpod1c0e3wf44r8C/AF11z73lGecrdfqqQL
         wdCeMgPKkegafJMcp5iY2gAHiCods84z31kM59MUW3C1O8H1HWENCxJbZp/dcnDwy8FL
         O304VP5nn2cxs+RxUVg0w6zuljVZZ9M9t089qSxEp0DvlXrK7kYlwWxEUhwHUNrj1NJy
         Bw2DeaxPoLPNgcEC4GsGZ5NfbHcoFx0PxX4WluBOZVmbmSfs2tYhyOaZ0lP6VQedVNr2
         rQiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SeNAh2Su;
       spf=pass (google.com: domain of 3qmtyxgukeskjqajwlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3QMTYXgUKESkJQaJWLTTLQJ.HTRHQFSL-GZNQY-QNSZcLTTLQJLWTZUX.HTR@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=zzQ07YeOHatjHfA7R3vmyU6Sfb+4eRGVa1s5EfIE0XA=;
        b=hKqNbV/h/R3Lsqdwa0+PVeO4Di2et4rTUhelJUck54cQZgilS7GR6ld739BOGqXmrC
         NWUq7Y44M/b4mMtYuTImunMwvjs4ujgRkM/dFb8mx9nr6XCBro2EmE6pytE+c43YWngb
         xOEzrkG9NXhFouOO5rtMMNabReMvUTzyCS9G0GFakbMJQg0bbSzCg3KV97+JxqcDGzTq
         BurWAT/UWpsQD1GvUCWSLXboFX7UJCN3rPUUW0sHCUqJMcjj/fuVKk732XcSgGWNm0A5
         VNtaojDbQlYVJD3Nd6IPrT8XMCKUl8CeXeXw2FGzDwiMbAhMEsXM7hK4gSToRs7Wzy4b
         Ltnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zzQ07YeOHatjHfA7R3vmyU6Sfb+4eRGVa1s5EfIE0XA=;
        b=l1rsX2SFYUN+S4NN8IlVNRT9cthSTXTPQ/N4olTN2KY9+IoSlgKX7HHbMXKIZOUZXO
         cHqcO7IuiM+u0qgYjrNQUwu5KPrjr7WNvRJJ46EzaIX6bCUZDbbzJnd1zxVEVWAhEQLt
         nk/GbuYSx0PObah9sA4/mRRJ7ywJhp+bNz+pEW9bomvUXSsFBgbfoUo0ed88g6LPhquX
         keO+52JlO2xiNXMqfvGmSsrMjU7BKEvwZDs5BD0N8ParKT26t+dWQKdSPjEIEE6x48Z7
         YnH+pcXzzvuzQY4/W9T57X3/gjc9TE0pktovw6gVs2d99TdUEC5Gu7UaARo3iNoTmt40
         bqew==
X-Gm-Message-State: AOAM532t7gh5s9upmV4yD4bu7dPAOHsxArjvZoELUsk3XaEW/076+BXX
	PXSXXa1umpHKcIN2h21nGHk=
X-Google-Smtp-Source: ABdhPJzWkRuaZwmWvnVY4g7mPw9YqxCfgGnS1D61LtZ19V6cfTQUnBpMXChMnJgji6r+mTOg3OU5mA==
X-Received: by 2002:a17:90a:3b09:: with SMTP id d9mr5306718pjc.225.1591264322172;
        Thu, 04 Jun 2020 02:52:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7a0c:: with SMTP id v12ls1252007pfc.1.gmail; Thu, 04 Jun
 2020 02:52:01 -0700 (PDT)
X-Received: by 2002:a62:7a4a:: with SMTP id v71mr3572482pfc.35.1591264321523;
        Thu, 04 Jun 2020 02:52:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591264321; cv=none;
        d=google.com; s=arc-20160816;
        b=DqdBNwez1hRcTXeeoITbV+jZG2PPbFIka1XJTLPTRt2xJVkymVMiIE7aNjLo21X52W
         zjkQm6mcMNHyRWxQiHqv64k78wZZckNsYX/1djSxWLbjfSJeWvTph7YD2bSkjS7qfDh8
         eYH6yBm7r4BeRBq2g89q+zU2L6cu4hzSE5jXvGxwvkeqwKYfhXk8lTbnZQgjfiIa6iRW
         l4E0Tl21usOrDJnxM8/q8fkmqo/QbAPO/bMkIITWifOS8cyWYO838ODhcn6UBnvRZuXB
         3c1RKJ7Pz7/iIMmTG2P+4GZDgPRT+zeEhdN0dVNtOd5+5MmTA1rP+l0dH/auXR7Cgusl
         NoAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=r692uYxf+UU+Krdksb9nzub5hLmbN/XbgAudqBHpBo4=;
        b=F/kIta/RLXmR736/HtDFL0x5Gb3iy/aT5B9OF2lfY4oRgerybdY0eK0CT0E/iqDsVw
         W0MvIzB2jalGBg87miF0OqPpWVPghf1BIwxuf9dPfg8tL1aUFIEEUnufzTAwP9FZ5bBq
         Za0ysTi7f8qn+XJOv/6PTbwhKCbIdT3NokOeItV1Sv1iVFL26qEHw23EQ+UcMWLLxZEo
         OYa6TGweTU+/nNHqCBvF2OrsruXSd5Oxa+Gonxxl5K92VY9EEah05YM/vVXnMv8J0AdN
         P5+DmLofif2fjaY+zM/4TlBx7TUsFWLdyriDAtETDNaEz4veaCFDAo8yDpypiwV1579t
         mcGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SeNAh2Su;
       spf=pass (google.com: domain of 3qmtyxgukeskjqajwlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3QMTYXgUKESkJQaJWLTTLQJ.HTRHQFSL-GZNQY-QNSZcLTTLQJLWTZUX.HTR@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id q1si234830pgg.5.2020.06.04.02.52.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 02:52:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qmtyxgukeskjqajwlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id r18so7325572ybg.10
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 02:52:01 -0700 (PDT)
X-Received: by 2002:a25:2f4f:: with SMTP id v76mr6129459ybv.7.1591264320706;
 Thu, 04 Jun 2020 02:52:00 -0700 (PDT)
Date: Thu,  4 Jun 2020 11:50:57 +0200
Message-Id: <20200604095057.259452-1-elver@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.rc2.251.g90737beb825-goog
Subject: [PATCH -tip] kcov: Make runtime functions noinstr-compatible
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: peterz@infradead.org, bp@alien8.de, tglx@linutronix.de, mingo@kernel.org, 
	clang-built-linux@googlegroups.com, paulmck@kernel.org, dvyukov@google.com, 
	glider@google.com, andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SeNAh2Su;       spf=pass
 (google.com: domain of 3qmtyxgukeskjqajwlttlqj.htrhqfsl-gznqy-qnszclttlqjlwtzux.htr@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3QMTYXgUKESkJQaJWLTTLQJ.HTRHQFSL-GZNQY-QNSZcLTTLQJLWTZUX.HTR@flex--elver.bounces.google.com;
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

The KCOV runtime is very minimal, only updating a field in 'current',
and none of __sanitizer_cov-functions generates reports nor calls any
other external functions.

Therefore we can make the KCOV runtime noinstr-compatible by:

  1. always-inlining internal functions and marking
     __sanitizer_cov-functions noinstr. The function write_comp_data() is
     now guaranteed to be inlined into __sanitize_cov_trace_*cmp()
     functions, which saves a call in the fast-path and reduces stack
     pressure due to the first argument being a constant.

  2. For Clang, correctly pass -fno-stack-protector via a separate
     cc-option, as -fno-conserve-stack does not exist on Clang.

The major benefit compared to adding another attribute to 'noinstr' to
not collect coverage information, is that we retain coverage visibility
in noinstr functions. We also currently lack such an attribute in both
GCC and Clang.

Signed-off-by: Marco Elver <elver@google.com>
---
Note: There are a set of KCOV patches from Andrey in -next:
https://lkml.kernel.org/r/cover.1585233617.git.andreyknvl@google.com --
Git cleanly merges this patch with those patches, and no merge conflict
is expected.
---
 kernel/Makefile |  2 +-
 kernel/kcov.c   | 26 +++++++++++++-------------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/kernel/Makefile b/kernel/Makefile
index 5d935b63f812..8e282c611a72 100644
--- a/kernel/Makefile
+++ b/kernel/Makefile
@@ -35,7 +35,7 @@ KCOV_INSTRUMENT_stacktrace.o := n
 KCOV_INSTRUMENT_kcov.o := n
 KASAN_SANITIZE_kcov.o := n
 KCSAN_SANITIZE_kcov.o := n
-CFLAGS_kcov.o := $(call cc-option, -fno-conserve-stack -fno-stack-protector)
+CFLAGS_kcov.o := $(call cc-option, -fno-conserve-stack) $(call cc-option, -fno-stack-protector)
 
 # cond_syscall is currently not LTO compatible
 CFLAGS_sys_ni.o = $(DISABLE_LTO)
diff --git a/kernel/kcov.c b/kernel/kcov.c
index 8accc9722a81..d6e3be2d0570 100644
--- a/kernel/kcov.c
+++ b/kernel/kcov.c
@@ -142,7 +142,7 @@ static void kcov_remote_area_put(struct kcov_remote_area *area,
 	list_add(&area->list, &kcov_remote_areas);
 }
 
-static notrace bool check_kcov_mode(enum kcov_mode needed_mode, struct task_struct *t)
+static __always_inline bool check_kcov_mode(enum kcov_mode needed_mode, struct task_struct *t)
 {
 	unsigned int mode;
 
@@ -164,7 +164,7 @@ static notrace bool check_kcov_mode(enum kcov_mode needed_mode, struct task_stru
 	return mode == needed_mode;
 }
 
-static notrace unsigned long canonicalize_ip(unsigned long ip)
+static __always_inline unsigned long canonicalize_ip(unsigned long ip)
 {
 #ifdef CONFIG_RANDOMIZE_BASE
 	ip -= kaslr_offset();
@@ -176,7 +176,7 @@ static notrace unsigned long canonicalize_ip(unsigned long ip)
  * Entry point from instrumented code.
  * This is called once per basic-block/edge.
  */
-void notrace __sanitizer_cov_trace_pc(void)
+void noinstr __sanitizer_cov_trace_pc(void)
 {
 	struct task_struct *t;
 	unsigned long *area;
@@ -198,7 +198,7 @@ void notrace __sanitizer_cov_trace_pc(void)
 EXPORT_SYMBOL(__sanitizer_cov_trace_pc);
 
 #ifdef CONFIG_KCOV_ENABLE_COMPARISONS
-static void notrace write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
+static __always_inline void write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
 {
 	struct task_struct *t;
 	u64 *area;
@@ -231,59 +231,59 @@ static void notrace write_comp_data(u64 type, u64 arg1, u64 arg2, u64 ip)
 	}
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
2.27.0.rc2.251.g90737beb825-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200604095057.259452-1-elver%40google.com.
