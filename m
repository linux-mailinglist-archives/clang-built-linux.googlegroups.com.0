Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBM45TL3AKGQEAHW5AYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 108471DCF88
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 16:22:45 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id e15sf3181377otj.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 07:22:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590070964; cv=pass;
        d=google.com; s=arc-20160816;
        b=xfiTxDEGZ9t3K90aj0jB1ZCpruaen+Exoe4gt3XdomlAHg4LhEWFPC56x93dIxJS+R
         VItyDgdPyzjhJ51Q1bA7L5woYflWg1zyurvOuOE2wqrztU9KbrfnWOvDahDIHifkUo50
         OJmLNp8rbTY1mM/kny6viGVlcTM4FGT154j6KLH25Q1bYxg5iFr+Fqx+tP7Ue8JcnWAU
         LbzqJHKwQpwcxHFcYNG+E6U/82VpF3ZSNYpDGl0EZsTvzw6BOadQ+/7azR6naDFy4VXB
         quI0xgoNLa7Eq4yBeWphM2OMU01W5jc4wcyrVEwgKP4nx5SOqtsU24gO0m41V6khGkV1
         8Qqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Hs/WGtbaHLpPe8ct+OxzOddc2D6k20c5UySR82DPHfE=;
        b=GHRPUxUFh5/FuzGJmk9JD4Rm1A2+4+WTHYTXgVPiJfXUF9EIj+6j1cCBwH0rKZT7Wi
         N8iznuOoDy0Pt4RMVmMJO5fePTwSDRm/1tTlBcPt1d8OjFAdgVAWrRJaGZuEZa8j5baq
         I9Yar9fLOjU7LnA1jLba885Ye3tAsHfriHLMTWADi+1b8TwCB7pOf8MGCowIE7vO66m3
         78pGCGlubx6dbNVsGAW7mNBep5MtQSmOm78R9gk9uupNi2aBPxBx3e2ZnA7gJWesRb0K
         9mg+mv+7W00HzC0il/lF8/Fe8V9rlJSBLNPsQqFRvyVRUo5/7feKuV8+L2+cdotq9IM7
         CMqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ry3yF5S5;
       spf=pass (google.com: domain of 3s47gxgukeeymtdmzowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3s47GXgUKEeYMTdMZOWWOTM.KWUKTIVO-JcQTb-TQVcfOWWOTMOZWcXa.KWU@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hs/WGtbaHLpPe8ct+OxzOddc2D6k20c5UySR82DPHfE=;
        b=si+tvfdVlHYIQlcj5akv8t01f7Ls6mvAy1WyLoL1EmmUeoV/9JCeTMFb5m5ThV4JAG
         MYdq7NXdAt8cLubg6de4VCH9gUKBdulW082ZcCFPzy5CB/UZ1iGsxOnFQRC/3ucFE/aS
         yF1osH3T1PkPIjwzcXJXwH6sXK1V7Q3ayURxGoCsxpD6d8Fvhk9i3YDlsd+bmrXGx2tD
         Nq7GbOZ8x3UHrYUbOuPzy1j+jL6WdbTAlBpGVcC4wC2DvjHXVqxRVJzk8H3qIoMu6214
         S1aHdVcDIVwNf97rIUYhoC8HTfgXnh1ZdJKcoZPHaATm/3t6xp76nwMCfY7xKS1dl4oN
         DKBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hs/WGtbaHLpPe8ct+OxzOddc2D6k20c5UySR82DPHfE=;
        b=PC9iI+mv8mQ4uCh26BQwtSvgiEbmf0Px+WbBSIrgrn2As/FTm7veJ7kBKXq4q76u8W
         v8ALW8FJAwvu2oXPTODu7WL3mzH03P/yB7REAtO1B2SKK1L0zivPK8xZF4nsbdTtqaKu
         60wUDbtF3CE+o8JVxUlS1M54nbn3Qso5dgtkuRyPaIUImjsrKQOYOylo/TcwUCAS3NH+
         DHtrI6nWHPVLXOzCOPHKjw6kSeNOhPSx/ElV4LZmwsk3jFdLmMzh4V+ducSvxajdj8zR
         sOJJLR01MoBF/QMSQt34TSZMKHEVn5VGnGkW6cItvejzhGQDeQRjPSwpOF9SMXuMRR1k
         L/Jw==
X-Gm-Message-State: AOAM531NjLxJaTWFZewqqUFVwjEE0oSDADbkw61UR9yHjr0/Aqi2hlQ2
	BHYmaKN4IGxaXnh9YGNStMg=
X-Google-Smtp-Source: ABdhPJwP95MhmYCK3olodpRrkXj6B7TysAvGBFYhYWGRQKeEvzFWWbKJ8Vie3ECh0xuZRhYhA00NWw==
X-Received: by 2002:a05:6830:20c8:: with SMTP id z8mr7150759otq.313.1590070963847;
        Thu, 21 May 2020 07:22:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3987:: with SMTP id y7ls482335otb.11.gmail; Thu, 21 May
 2020 07:22:43 -0700 (PDT)
X-Received: by 2002:a9d:ae9:: with SMTP id 96mr7495930otq.16.1590070963487;
        Thu, 21 May 2020 07:22:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590070963; cv=none;
        d=google.com; s=arc-20160816;
        b=oBv1gsFiO9XOvXdCYbvQT41Je8hlTUGtBhwZGvwRNcPWuOjfy25agRaf2/0vEFMefY
         uAp285Y649MYYhuRk55ogUn8gsym9JSYBg83G/MI+jxOdcVROXB5SgGUuLrFFYBC79nS
         1970mtmA6Wn77KF6xyOtGoKWB75U6fBUePkvySYVQQc11dyn/Bz+3vamcdxKPnm5rNeh
         ZvCFWPsASBdDu7pd9HVBLsqyM/sEuN+yCJTYFIioN71PcC70wjTpzltvVV7rLib5VaRG
         fRYxe2757I/UezSNNKDF5hP+nNBMERxoaxTWC75rSTzpTBPf7o+JG6oPP1p2lsZu4S43
         FjDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Lmm+/+h5qLO6fUy4Is9S48RQHv+8MyPjNoPxJUCaU88=;
        b=BHqb92VTnu3zH4gx6odl9B1NPzGQvsoOaQX7bDua+PcWom5mVFeA04Y/RlwbeTaelt
         Le8AMgA2P+o+5LhTJ8AxbwzOZ88t86QV0Y8H1a+bLSbgFZTZq5flONbtMNUfIvnnqYyh
         tfMaGeCF2b6qhY39lt0C2N1COzT80Q1Q0ztEptcEbSJFTXJdB8mxZgFZ02ltPS/plxAT
         vb3k9nDP7AlIqULhOQ/XjNegs7M517C0cUncadxKzzxypMMTMf2xXRCdJsIRltZ8TPJ3
         8x8N+mQGKxXjNFafuGIe7u92yD8NXt4wY0fQSwjLqvO78BFTQzc2oRahXppCVB1P/bU/
         GOEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ry3yF5S5;
       spf=pass (google.com: domain of 3s47gxgukeeymtdmzowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3s47GXgUKEeYMTdMZOWWOTM.KWUKTIVO-JcQTb-TQVcfOWWOTMOZWcXa.KWU@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id b20si364589ots.0.2020.05.21.07.22.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 07:22:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3s47gxgukeeymtdmzowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id i190so5458660ybg.6
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 07:22:43 -0700 (PDT)
X-Received: by 2002:a25:77d0:: with SMTP id s199mr14286095ybc.333.1590070963005;
 Thu, 21 May 2020 07:22:43 -0700 (PDT)
Date: Thu, 21 May 2020 16:20:46 +0200
In-Reply-To: <20200521142047.169334-1-elver@google.com>
Message-Id: <20200521142047.169334-11-elver@google.com>
Mime-Version: 1.0
References: <20200521142047.169334-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v3 10/11] compiler.h: Move function attributes to compiler_types.h
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com, 
	bp@alien8.de
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ry3yF5S5;       spf=pass
 (google.com: domain of 3s47gxgukeeymtdmzowwotm.kwuktivo-jcqtb-tqvcfowwotmozwcxa.kwu@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3s47GXgUKEeYMTdMZOWWOTM.KWUKTIVO-JcQTb-TQVcfOWWOTMOZWcXa.KWU@flex--elver.bounces.google.com;
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

Cleanup and move the KASAN and KCSAN related function attributes to
compiler_types.h, where the rest of the same kind live.

No functional change intended.

Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Marco Elver <elver@google.com>
---
 include/linux/compiler.h       | 29 -----------------------------
 include/linux/compiler_types.h | 29 +++++++++++++++++++++++++++++
 2 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 379a5077e9c6..652aee025c89 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -250,35 +250,6 @@ do {									\
 	__WRITE_ONCE(x, val);						\
 } while (0)
 
-#ifdef CONFIG_KASAN
-/*
- * We can't declare function 'inline' because __no_sanitize_address conflicts
- * with inlining. Attempt to inline it may cause a build failure.
- *     https://gcc.gnu.org/bugzilla/show_bug.cgi?id=67368
- * '__maybe_unused' allows us to avoid defined-but-not-used warnings.
- */
-# define __no_kasan_or_inline __no_sanitize_address notrace __maybe_unused
-# define __no_sanitize_or_inline __no_kasan_or_inline
-#else
-# define __no_kasan_or_inline __always_inline
-#endif
-
-#define __no_kcsan __no_sanitize_thread
-#ifdef __SANITIZE_THREAD__
-/*
- * Rely on __SANITIZE_THREAD__ instead of CONFIG_KCSAN, to avoid not inlining in
- * compilation units where instrumentation is disabled.
- */
-# define __no_kcsan_or_inline __no_kcsan notrace __maybe_unused
-# define __no_sanitize_or_inline __no_kcsan_or_inline
-#else
-# define __no_kcsan_or_inline __always_inline
-#endif
-
-#ifndef __no_sanitize_or_inline
-#define __no_sanitize_or_inline __always_inline
-#endif
-
 static __no_sanitize_or_inline
 unsigned long __read_once_word_nocheck(const void *addr)
 {
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 6ed0612bc143..b190a12e7089 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -167,6 +167,35 @@ struct ftrace_likely_data {
  */
 #define noinline_for_stack noinline
 
+#ifdef CONFIG_KASAN
+/*
+ * We can't declare function 'inline' because __no_sanitize_address conflicts
+ * with inlining. Attempt to inline it may cause a build failure.
+ *     https://gcc.gnu.org/bugzilla/show_bug.cgi?id=67368
+ * '__maybe_unused' allows us to avoid defined-but-not-used warnings.
+ */
+# define __no_kasan_or_inline __no_sanitize_address notrace __maybe_unused
+# define __no_sanitize_or_inline __no_kasan_or_inline
+#else
+# define __no_kasan_or_inline __always_inline
+#endif
+
+#define __no_kcsan __no_sanitize_thread
+#ifdef __SANITIZE_THREAD__
+/*
+ * Rely on __SANITIZE_THREAD__ instead of CONFIG_KCSAN, to avoid not inlining in
+ * compilation units where instrumentation is disabled.
+ */
+# define __no_kcsan_or_inline __no_kcsan notrace __maybe_unused
+# define __no_sanitize_or_inline __no_kcsan_or_inline
+#else
+# define __no_kcsan_or_inline __always_inline
+#endif
+
+#ifndef __no_sanitize_or_inline
+#define __no_sanitize_or_inline __always_inline
+#endif
+
 #endif /* __KERNEL__ */
 
 #endif /* __ASSEMBLY__ */
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521142047.169334-11-elver%40google.com.
