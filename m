Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHMNTTVQKGQEUOHUYZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 19166A0DE4
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:56:31 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id j12sf814306pll.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:56:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567032989; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cx4FDh9zuGMl3NjgNvS0+M6+KXduDZn7pzyRIiBFEqeOcBPQPVoXZm3uBjcIU00M3X
         zX6Fv7a5XeP4demX8laKkSD+ZJCHXwBKbKlOyx6/a8gbQTNwF1eMiT5EWDirvAftgFB4
         cnmSrAylpt2eCjqglvot3uYYDwEZqGu8Wi3U8PCrdGnmhTJ3enrWU0MAjqVak8emPHwc
         N5AV8KC+jkAnIGQ+pTAHoIklac+LZopGDcuhEDa6TKmTRdrns/ic+5mG+w047/s9Eb2M
         X81x5Zt1NF0gdyA2bSou2b5uMaFOZCTOiSl057Iy62Hbc6AFpFoRGaugxNijYBSSO/UV
         w0TA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=gF4i5OGFIqPFOfc4f6adsRcXuN0m++xxwDAf4d8m41U=;
        b=TgsSoTWGkrVcSTeXgE6D4w0BT7Ok1054t+6gmjWlRvOEeFK7Bc9t7fyg0DvVW/lnvv
         BriztG4C9Fiog+tyNCKqc5zbpoTbCOh32xSWrlRH/qZO3Qz6HDEsP1G0JOUmDRPAx19r
         N/LtNRaos4SGCBAW1UacANolvtxMLV1ukBu15S1F9pNI/I29E1D9rxmzZ4QiB4sYEFek
         ZqFG4o8TWCf2Up9hk1qflfhHIE09wWMWk7kyuKqmc2lhzt2VMs6Z+BErQEujQYgeJKJy
         Ux7fmPnS6iG6VfRDRg42AoW+qyipdybENMu2wB7V0YLtiwjpN8hhh1xL8TRNVxLfOKKK
         URpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r9JORaju;
       spf=pass (google.com: domain of 3naznxqwkadcgwxltnegbxklzhhzex.vhf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3nAZnXQwKADcgWXlTnegbXklZhhZeX.Vhf@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gF4i5OGFIqPFOfc4f6adsRcXuN0m++xxwDAf4d8m41U=;
        b=TBFVV03CSfkBqIpUFj4kZujdemRVuB+KBnrIgKW1QSBWEkm8eTb8SMlBfZghlOd71F
         S3sOzRGvNmURhzKFTG+HBKKrzWD5jueH/xx05qzzJCumNFA9Fx4O3Xueun9X3iAdofB3
         JqdPDH9apvLnam5z1PEX2ANhvMmQFC5RjmxSUdmXmFT67/A0wwMdTZuYRrBME9INpkLW
         N8OwQGc5J6kJh9Zieo76SYTN8ei8Ry9yxOHexurWDlrZAQBOw1FQwKyk8er+mVopAIp/
         SC1+nchyQZJjTHCvrxj6aicne1VE4ZFU96VsroKBIVvcPAAnKdBoJR0r268EoUv9A1jV
         pk1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gF4i5OGFIqPFOfc4f6adsRcXuN0m++xxwDAf4d8m41U=;
        b=Lzk7YKb1D5E8gRdmiiWf2tzT+ZVQpzjc4OxQdbjzLofcgJuTPC1B+IUvRjlGMvCv67
         RRk9As0IZ9QsOCSHCKw6CTCBAaU5iSy+hwz2EVJOV9HqEe1Kz61Qc+mskQXq6PesEVLt
         6hmLaGKHlz30GmPjCgBSh5QIq+FU3DcaNxKJ8Ao4vjDUmnE8aw39HYG0eMtijT0Jv3tV
         9jUhrTsppr0QB+G8X3c2SuRitgEfpdKxwCjX0rYbpgpUYI299nS80+OF3kj4prKA1t3u
         hsRhPwRj3eXVnHcD/8hpRjwAZhz017BIM8h4E0nAnqCbs4ICk5kMe4D8yjhsNVtE7Xll
         4C2w==
X-Gm-Message-State: APjAAAV/WNEWIr301IHezHgERN86vGdJB0HxKBFaCSKq1+Z2tQFTYTTD
	towYxAeb+nqfTBqLJnb85cc=
X-Google-Smtp-Source: APXvYqwO18TWV/xRGvmB+ikN/SHCQFPQeDn6zSZcrov7YA7kEFfpgIr4+xAGnhYjWNRvyOMXrDGRxg==
X-Received: by 2002:a17:902:8301:: with SMTP id bd1mr6214186plb.120.1567032989801;
        Wed, 28 Aug 2019 15:56:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7549:: with SMTP id q70ls149674pfc.16.gmail; Wed, 28 Aug
 2019 15:56:29 -0700 (PDT)
X-Received: by 2002:a65:6096:: with SMTP id t22mr5746206pgu.204.1567032989490;
        Wed, 28 Aug 2019 15:56:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567032989; cv=none;
        d=google.com; s=arc-20160816;
        b=kc9s6Ye47+WeKC58DTwRhuAPYVDGMStGMpcT0BN4iIskCaF95FT4DAVaugTtEkajnv
         O1ReINFBraGn5F15CcfshHd64apChzhxOGFZ+/R9wwAjAd2W6EpDVSwW88ErmAutoqP5
         SXHJOlVm1v8MFwjlNYqE6PQJrHKNMdy/toRMhSL0lA5iIjkXkB0vJfynvnByE80P836n
         4kEDPDJgcoJb/PX+jiWHKKrY135AgtkIobXrwiIdgO5opRVF7S6RsGIbZpkhYs/7luo0
         Q6DQkcmCOP4GyqUCnApDoMVUaH9WHHCUtYp32OzMy5xFHJI+8d2Is/dz6zgM1HSqvaVI
         3xDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=xAknKHqXr0xCfYuKxMybFQP6qX0ULDYjjg9JhyAUNI4=;
        b=I+kMi4JwD5xK0W4bKoqj3D5SKb4jS6nMAOCOVfuHJN0Le6TftG66YX/0SyHIbxh/5T
         0bLNFYjvzq2vAcMg/Jw7Qd6xoBDR2HLVO1nd7OMfFzDUF5SjfI/E1AaHMzLNHI286QcZ
         KlY9EhHsuusauEfZk5t0QaMfGm5Lez4ExunFQP4YdaI2i991lKjueItNSxcuOQXcuxIQ
         h+SoyHzMYBC23eyJvlN+NLHTBXfOkRysFu7yiiW/51HdorEwq+e7/ZQDfELEgIh/CXb1
         BCsjRLPfJ3uPW5c6D/XvOo0HYgz1H45TgGMXnPJrnSxAVeicIKP2FAUhpBXRmrCHbWvM
         TLiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r9JORaju;
       spf=pass (google.com: domain of 3naznxqwkadcgwxltnegbxklzhhzex.vhf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3nAZnXQwKADcgWXlTnegbXklZhhZeX.Vhf@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id az14si35791pjb.0.2019.08.28.15.56.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:56:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3naznxqwkadcgwxltnegbxklzhhzex.vhf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id l11so756550pgc.14
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:56:29 -0700 (PDT)
X-Received: by 2002:a63:f04:: with SMTP id e4mr5384375pgl.38.1567032988724;
 Wed, 28 Aug 2019 15:56:28 -0700 (PDT)
Date: Wed, 28 Aug 2019 15:55:33 -0700
In-Reply-To: <20190828225535.49592-1-ndesaulniers@google.com>
Message-Id: <20190828225535.49592-13-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 12/14] include/linux: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=r9JORaju;       spf=pass
 (google.com: domain of 3naznxqwkadcgwxltnegbxklzhhzex.vhf@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3nAZnXQwKADcgWXlTnegbXklZhhZeX.Vhf@flex--ndesaulniers.bounces.google.com;
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

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn't need to be escaped.

Instead, we should:
1. Prefer __section(.section_name_no_quotes).
2. Only use __attribute__((__section__(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Link: https://github.com/ClangBuiltLinux/linux/issues/619
Acked-by: Will Deacon <will@kernel.org>
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/cache.h       | 6 +++---
 include/linux/cpu.h         | 2 +-
 include/linux/export.h      | 2 +-
 include/linux/init_task.h   | 4 ++--
 include/linux/interrupt.h   | 5 ++---
 include/linux/sched/debug.h | 2 +-
 include/linux/srcutree.h    | 2 +-
 7 files changed, 11 insertions(+), 12 deletions(-)

diff --git a/include/linux/cache.h b/include/linux/cache.h
index 750621e41d1c..3f4df9eef1e1 100644
--- a/include/linux/cache.h
+++ b/include/linux/cache.h
@@ -28,7 +28,7 @@
  * but may get written to during init, so can't live in .rodata (via "const").
  */
 #ifndef __ro_after_init
-#define __ro_after_init __attribute__((__section__(".data..ro_after_init")))
+#define __ro_after_init __section(.data..ro_after_init)
 #endif
 
 #ifndef ____cacheline_aligned
@@ -45,8 +45,8 @@
 
 #ifndef __cacheline_aligned
 #define __cacheline_aligned					\
-  __attribute__((__aligned__(SMP_CACHE_BYTES),			\
-		 __section__(".data..cacheline_aligned")))
+	__aligned(SMP_CACHE_BYTES)				\
+	__section(.data..cacheline_aligned)
 #endif /* __cacheline_aligned */
 
 #ifndef __cacheline_aligned_in_smp
diff --git a/include/linux/cpu.h b/include/linux/cpu.h
index fcb1386bb0d4..186bbd79d6ce 100644
--- a/include/linux/cpu.h
+++ b/include/linux/cpu.h
@@ -166,7 +166,7 @@ void cpu_startup_entry(enum cpuhp_state state);
 void cpu_idle_poll_ctrl(bool enable);
 
 /* Attach to any functions which should be considered cpuidle. */
-#define __cpuidle	__attribute__((__section__(".cpuidle.text")))
+#define __cpuidle	__section(.cpuidle.text)
 
 bool cpu_in_idle(unsigned long pc);
 
diff --git a/include/linux/export.h b/include/linux/export.h
index fd8711ed9ac4..808c1a0c2ef9 100644
--- a/include/linux/export.h
+++ b/include/linux/export.h
@@ -104,7 +104,7 @@ struct kernel_symbol {
  * discarded in the final link stage.
  */
 #define __ksym_marker(sym)	\
-	static int __ksym_marker_##sym[0] __section(".discard.ksym") __used
+	static int __ksym_marker_##sym[0] __section(.discard.ksym) __used
 
 #define __EXPORT_SYMBOL(sym, sec)				\
 	__ksym_marker(sym);					\
diff --git a/include/linux/init_task.h b/include/linux/init_task.h
index 6049baa5b8bc..50139505da34 100644
--- a/include/linux/init_task.h
+++ b/include/linux/init_task.h
@@ -51,12 +51,12 @@ extern struct cred init_cred;
 
 /* Attach to the init_task data structure for proper alignment */
 #ifdef CONFIG_ARCH_TASK_STRUCT_ON_STACK
-#define __init_task_data __attribute__((__section__(".data..init_task")))
+#define __init_task_data __section(.data..init_task)
 #else
 #define __init_task_data /**/
 #endif
 
 /* Attach to the thread_info data structure for proper alignment */
-#define __init_thread_info __attribute__((__section__(".data..init_thread_info")))
+#define __init_thread_info __section(.data..init_thread_info)
 
 #endif
diff --git a/include/linux/interrupt.h b/include/linux/interrupt.h
index 5b8328a99b2a..29debfe4dd0f 100644
--- a/include/linux/interrupt.h
+++ b/include/linux/interrupt.h
@@ -741,8 +741,7 @@ extern int arch_early_irq_init(void);
 /*
  * We want to know which function is an entrypoint of a hardirq or a softirq.
  */
-#define __irq_entry		 __attribute__((__section__(".irqentry.text")))
-#define __softirq_entry  \
-	__attribute__((__section__(".softirqentry.text")))
+#define __irq_entry	__section(.irqentry.text)
+#define __softirq_entry	__section(.softirqentry.text)
 
 #endif
diff --git a/include/linux/sched/debug.h b/include/linux/sched/debug.h
index 95fb9e025247..e17b66221fdd 100644
--- a/include/linux/sched/debug.h
+++ b/include/linux/sched/debug.h
@@ -42,7 +42,7 @@ extern void proc_sched_set_task(struct task_struct *p);
 #endif
 
 /* Attach to any functions which should be ignored in wchan output. */
-#define __sched		__attribute__((__section__(".sched.text")))
+#define __sched		__section(.sched.text)
 
 /* Linker adds these: start and end of __sched functions */
 extern char __sched_text_start[], __sched_text_end[];
diff --git a/include/linux/srcutree.h b/include/linux/srcutree.h
index 9cfcc8a756ae..9de652f4e1bd 100644
--- a/include/linux/srcutree.h
+++ b/include/linux/srcutree.h
@@ -124,7 +124,7 @@ struct srcu_struct {
 # define __DEFINE_SRCU(name, is_static)					\
 	is_static struct srcu_struct name;				\
 	struct srcu_struct * const __srcu_struct_##name			\
-		__section("___srcu_struct_ptrs") = &name
+		__section(___srcu_struct_ptrs) = &name
 #else
 # define __DEFINE_SRCU(name, is_static)					\
 	static DEFINE_PER_CPU(struct srcu_data, name##_srcu_data);	\
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828225535.49592-13-ndesaulniers%40google.com.
