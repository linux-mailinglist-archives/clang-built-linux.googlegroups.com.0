Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBFODTH3AKGQEGAR5H3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A531DCBC8
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 13:10:15 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id d8sf2964601otc.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 04:10:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590059414; cv=pass;
        d=google.com; s=arc-20160816;
        b=EnIvA/Fc5F4EQ260xylp506lM5L5KNFR5ct7/s6RztoJCy42ZV0phDj2Gzh3jglrS8
         iJcTpI8kTRNhMfDQN+TlZXu5qBuHFUrOFuPMBy899JYpghR3YVPbqaRokzx8ZHzwNkFS
         p8hGzhTHK1cddx0ZIyxt029dRpzSJGxIRJaj2c/KtUFoBO0gMA+9UZUthy7OkAzciOLo
         gVoUuU1yBNELQzyV7qlMPFF/cHJZK1YH/eQLVyUtZ66cGg3X/+5d6jSYwfC0Q0yPwB73
         paln5I6YXxI9zlyx3NUgFOPshlWCzAT5xF+xVXnRBtFQlEGISFn65RHaG2F6ZE2/PSqv
         p7mA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=gsXO+x100cP8fD5xiFF8fS5tQ9+Ply8VaM2NK+sYZho=;
        b=M3G8L6ia2klEWgCkBU9RiCkc+YKrlizlWhKl8ke2u726yHmIQkJvuq2xVTNGmVtPuN
         EggK6hbowuzUQ9Zem2tKM9cg36nSF0obcHKwLzwWnV9g5FY3pu68g0A8xZ6cMXcZxXoS
         hKhmWBWiRRu6x4JDzqiGMu0Uk05DZwREYqlcAwAF1Ra9u8wUZiIToudwZaV6hvpq9Rx0
         IV/EEjI9dZHbdAhv5162k1vs6P43BukdZvLs/NAS3601cppk1HFTbOXq6REfBMk+LxFg
         aCp7nCe8KKckPEx1tK9B/pXq5m51Tkf27bYdzH78PVW3JvYiqS0qprLeVreqASSKLaJK
         jhkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="mALz/ryu";
       spf=pass (google.com: domain of 3lwhgxgukew4qxhqdsaasxq.oayoxmzs-nguxf-xuzgjsaasxqsdagbe.oay@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3lWHGXgUKEW4QXhQdSaaSXQ.OaYOXMZS-NgUXf-XUZgjSaaSXQSdagbe.OaY@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gsXO+x100cP8fD5xiFF8fS5tQ9+Ply8VaM2NK+sYZho=;
        b=FYF8OGvPMOaJau8CBQMu/CRrzPks34O2ciZhmlzoqmje4FuDrWCpFyZAjs8Omae4aK
         s3B1h1h3Ah8nWYGMwqseNugoKz52HubTohK0+JgNntA6RH0LNRd984rEfTNZHimvnCKn
         tZqmuQQ5OI1A2NxS76QK1LJv8HDBU4J6KKVbd9nfprMFh7gasqxxOORTVGqpSMkRRP4F
         +Zjyes0IhI9x4EvpSQQRG7kS3dy5bwnEAjCNKVykYH46Yap+mmibs9k5NFVZPj797h5Y
         plHqAjKmP97S59Q0GRImPeTEvWpxkw2mg0Yh5R8mMHH7eQ8u5Fpcmu1+ZdXZ5z1nYNtV
         Oc/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gsXO+x100cP8fD5xiFF8fS5tQ9+Ply8VaM2NK+sYZho=;
        b=RUfjRQKNVG/gmQc9kPC9KHR3fepbdw637F9EKPQVtoPN0EV1Kw53Q23a5mEUiCHpg+
         Lanv6rsp5W82zsZUKPeH977beXu0u9KtXTf+QYTngDby1o5yTNLS6b6puWMOiCG/PGL/
         pxAMWwDKDiZ8Z38V0bk8me2jmhpzX+dYnClwieyE2j4siFlGrP34SIVvhm0NGwYn7Eqm
         aPv1DbS2g35QGqZj0G8MfdNuFok8mV4Yl8xxh2abElrO1Lx2cp3oqD/CnhDTQ6ZQn7D1
         /XfM1Nwb8E3zpMkcZ7U0vKHLHQ2Tp2InuYG/TAH8dDFMm4ArMFZiLsq7Vh208UXL3NUE
         Fyhg==
X-Gm-Message-State: AOAM531Y54i7C8VsZO4+GMOAC/1rl/TThpAEH1GsigiaSi/ZfbK9kLZp
	P0ekqGX6D7Gq6qG4PsnVx0s=
X-Google-Smtp-Source: ABdhPJwa9Evy1uAQ2qo9Zm7f1EPMU5hM9+PfKhqC84W3uE5kMxXkUhOIZGq8+z0NSK4FiCa/vIUeKQ==
X-Received: by 2002:a9d:61d2:: with SMTP id h18mr5728559otk.247.1590059413860;
        Thu, 21 May 2020 04:10:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d2de:: with SMTP id j30ls102047oos.9.gmail; Thu, 21 May
 2020 04:10:13 -0700 (PDT)
X-Received: by 2002:a4a:e836:: with SMTP id d22mr6923930ood.54.1590059413548;
        Thu, 21 May 2020 04:10:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590059413; cv=none;
        d=google.com; s=arc-20160816;
        b=D2dkV3infwN/MuSYJXCIGFxpLSHuE4SDUvA/1W19sDUkVKcdJPq/DcADCAbt97wU3L
         l94cdO8NopCKJG8F8sZmUr9OmPPg4azevB0fhHd2m0u8MNouTXs57+bDKjdwljtFfPtl
         Ar1vfv+cBP9BrNOq4udkXjBm5Z5SeIjBFmZ15iQm1mvj0T7VCpI0+a2qpB/xdMJDHhDk
         Q4M3wdqS6CCEyWWtQ394njDxmlG7/nTc3nw7KKOND7vqgxMkXM2llf9zIoZlUDTTu0O/
         oNRlKWG9xDteg8K7Q4AT/Mc5oMGuj99oTPmlL2DPjC17oSNsaPbhI7gKUkTdOlbfWyHx
         Gebg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=SvajioAcxE9ANa2I2vNqdu1VYDhOobctmex3U6Yh/nk=;
        b=Hq0zDeXsxsqE+5ef05/x8wPazMqg/8TQfguu33ZsCLh5iWojQ5Z7EcX0bOVOpNl/2r
         nuWwSFJGkXcKfr564D/hnrlJGEyujEoz0B/4rRP+6RxZ51gvQFngjAVIcMSK6lS+ChhK
         /g+IaYmj41rDAllcM+jvqiw9G7r4iOBTSHqNXhtvLRGhCNQitBfo0L6fdWILNSPq0XOc
         yYpb5x8II4NM1PqO1emK8Xyb3MftDt83EBFU2h7eH5DgaVgdSGlscmpi+lZze7wZ2a1e
         kttskDkhBTXnvv0t0+5BzqH4YvwaiZOusAvzRGVgVg3AsKNvOyj3Ie8vUDyxN6AfYGow
         H8KA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="mALz/ryu";
       spf=pass (google.com: domain of 3lwhgxgukew4qxhqdsaasxq.oayoxmzs-nguxf-xuzgjsaasxqsdagbe.oay@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3lWHGXgUKEW4QXhQdSaaSXQ.OaYOXMZS-NgUXf-XUZgjSaaSXQSdagbe.OaY@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id p28si615881ota.3.2020.05.21.04.10.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 04:10:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lwhgxgukew4qxhqdsaasxq.oayoxmzs-nguxf-xuzgjsaasxqsdagbe.oay@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id z7so4913942ybn.21
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 04:10:13 -0700 (PDT)
X-Received: by 2002:a25:f20f:: with SMTP id i15mr14499554ybe.72.1590059413041;
 Thu, 21 May 2020 04:10:13 -0700 (PDT)
Date: Thu, 21 May 2020 13:08:53 +0200
In-Reply-To: <20200521110854.114437-1-elver@google.com>
Message-Id: <20200521110854.114437-11-elver@google.com>
Mime-Version: 1.0
References: <20200521110854.114437-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v2 10/11] compiler.h: Move function attributes to compiler_types.h
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
 header.i=@google.com header.s=20161025 header.b="mALz/ryu";       spf=pass
 (google.com: domain of 3lwhgxgukew4qxhqdsaasxq.oayoxmzs-nguxf-xuzgjsaasxqsdagbe.oay@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3lWHGXgUKEW4QXhQdSaaSXQ.OaYOXMZS-NgUXf-XUZgjSaaSXQSdagbe.OaY@flex--elver.bounces.google.com;
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

Signed-off-by: Marco Elver <elver@google.com>
---
 include/linux/compiler.h       | 29 -----------------------------
 include/linux/compiler_types.h | 29 +++++++++++++++++++++++++++++
 2 files changed, 29 insertions(+), 29 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 1f9bd9f35368..8d3d03f9d562 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -249,35 +249,6 @@ do {									\
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521110854.114437-11-elver%40google.com.
