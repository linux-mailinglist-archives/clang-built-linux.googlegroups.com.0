Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBL45TL3AKGQENM23CHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5566D1DCF84
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 16:22:40 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id e43sf7930353qtc.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 07:22:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590070959; cv=pass;
        d=google.com; s=arc-20160816;
        b=x93+/4t42/UUkyOiQ/6yh8neJw8ORWffMrxo5/BxtjI25Hh2MZ3jmM1dN6ns83/it5
         dxwy3SmgdZCjHQ+Gg9+iMdQ/c8ydjdAjsyVR9BH4n+/X+kFvn8IhXCp4sjiUKWCuRNMb
         V1e6bQ4DeBv+6KHlHT/ROo/Zji7E64fj5xRn+Q8TbO3OiZ6Ew3k2+00ESmkpHy363mI7
         2jrAEgpPBhCZPTEJcmOjIXsSpexWZC7hVO3Lf4WreUvKIcBV/5QdzAditJ8ISpDigW8O
         jwGSPEwTA/2VR3JWQkC8UFuESqqe9K8JyzdALcQIgAgOkDmcVFZUaXvkzOvEFzz7g0VI
         4h5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=vvYMcrCQ2ZgwVYlwt98cFYA5OiZEuy8SgjGhw9GMGBo=;
        b=ZhU6DYMDHBcN4182xSdzAH1ZKHVJI/rkVuv37c4EHk1+RabbveH8AVQiliPJ4Hr97r
         nZj8oZiGYwT7PBJohplFUNFUuyCh+MouiDKoPyLBoG+I8TNcWujzFKEIV7zYmdSDgU6i
         paNm+AubFJqo5mcHDdqopdD5kYCWbyiUo64E+rHky8kJuBihEpFDSVKpSkr2N+IOavOU
         p7Q7U8xrFRnya6zmRf8oZoQTr5ngYFjleRH8AU5K2XSomH0qN3yIOep2lqqC6hqT54pT
         m/bZKRptYCBRluR56vVLwrnoOmsEt6a3jImHe+/Fv2JnOJ8UyjGFDVJ+YPEE76PMaLa+
         F03g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="L/OPRcba";
       spf=pass (google.com: domain of 3ro7gxgukeeehoyhujrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3ro7GXgUKEeEHOYHUJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vvYMcrCQ2ZgwVYlwt98cFYA5OiZEuy8SgjGhw9GMGBo=;
        b=IZHVqxcFcXTRCHDPHXbl3WqfliWjBnnkshjpgu3sUF99eRCjjOOBRaWZpHvs59q51R
         SMBCtpjCQid69ecyBFjpltamZxkmFGAcDL84FNEEx1bdwc5H9at3wo2AB6ZNd+jgC2kM
         nrT+C9d9Eey06npGHqEIyFvqMW2YNH9eJtKVBQ43g7+8vZKQnXk1vTRdtQ3e/wA1QbDw
         M0Ztp4WlGmEdZHmqvky/godfiWRUFunq0NKnmTYWGKatgbpKss3BesaD+Qf2gStE+l2E
         UTsDZL1fj9JARmtU1OAvQZDY98s1zJ6cZOLu2I8l70FW2uCDghIjOxQejcNracX8NGNW
         gyWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vvYMcrCQ2ZgwVYlwt98cFYA5OiZEuy8SgjGhw9GMGBo=;
        b=YSZOeICxktn9wvByF7NSNqxjKwn9GuR0hJoMHoqQ2a+oCx5coO0nV6QfoVFaU6cTws
         Is0T7/qV3ZKswm32809p6u6UmJgKzG2gxk2gPeGi88sYTMYM26CseBqZm2+E8Sv7uopE
         I5Ih7aDCB72d/Xg2GGvfwuBLCNPSi8gjAEcyHQ5JiYSuhQJhWT/cjthqnQaIfq+08Fn5
         f/3No/fGHPYaSpGzDYxD3ZiNgzR2o0InFj9x0MUZtLiDg+aMPjnbIwz0SDO2zWUx10X+
         ZneqsWXod3gsLbWC52zn1waRhqMv6s2kwvGM0KhFI+m9l85gsPpDYbozAdj185/a7V/2
         0IKA==
X-Gm-Message-State: AOAM531tzBatafpZTF2k8jvaVfL6YgDptmfiiK4ehSPJwgfvgvtWT5u1
	YOCB9Kh0tDyLMc7cvTTK2O8=
X-Google-Smtp-Source: ABdhPJyiGcAJhmCnl59DbuVQcTpUje599TX/cbJTMe58EGlcBGVW/t4bxDYxHRp9Aipk1viHVQFQsg==
X-Received: by 2002:a0c:a892:: with SMTP id x18mr9948320qva.247.1590070959395;
        Thu, 21 May 2020 07:22:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e001:: with SMTP id m1ls1097321qkk.9.gmail; Thu, 21 May
 2020 07:22:39 -0700 (PDT)
X-Received: by 2002:a37:e50d:: with SMTP id e13mr10432786qkg.500.1590070959008;
        Thu, 21 May 2020 07:22:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590070959; cv=none;
        d=google.com; s=arc-20160816;
        b=MwKnPlpZ7HLx3+RM3Jabl7d6D7PuTS2+8alDwcIubLfTbSfNHj4C0KJsDt8VGHwnfo
         QhWURhpQ15ZaL7UZ/1skTIyCunXaEalZEjBixK75MxHeoDFEkYXnYGRZMWTPbw8eM7nX
         Y2dENeTd/G6IQBYMG4tgYs1SSyWLnjy2qpr7WNt0E4a4ugMS0k+v2WcXsgyb1MNDj4yP
         yqwZXoCwaHiVieiB9hlsjCJv02jP8hv+fpaebiAoCbLV9D04A6NsMyNqyKtuXhzFU3g4
         LJTQRAzKZBUz8/qzFZnurWQYlOip6oV48GjY4n0GJ436tIwk2gHnFTZ+o0zGOmK2mHGv
         APug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=dz729bx1Pa1pF4PgJy0kCf9Utra9WlCLoUyt1P9z0sg=;
        b=wzbYw3hzaiaFrPWRpKlo4gfK3mLsaGNUNOWHmAP4knOSXO2soE16AzCiK+CtqaPXGN
         MzXVK6UjKEAy3raz6r6tbM9xLuN+UAUxg1y6QrWxHAxNOIfyppTPo5bA6LhCMU/UqIiV
         JjrteZjnblM0klk62ef3YjM2ZwAOgCnA8PWKU0//OX4aAxfp1o5JIdyhqx/Lh7nnW/LW
         uFNbdJwB5nQ7K5soYthel/K2p5PinaMvKlqRS+pQMSpsG2YavEZNxpm22mYazPGdxZGa
         8hv+7YLbjmUXR/2R5Uws7f6lzq3utTU9cnazwoiJ34rwwwirzMbt2G+VVGAQrmq70n9E
         h0WA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="L/OPRcba";
       spf=pass (google.com: domain of 3ro7gxgukeeehoyhujrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3ro7GXgUKEeEHOYHUJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id m128si465327qke.3.2020.05.21.07.22.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 07:22:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ro7gxgukeeehoyhujrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id t57so7858525qte.7
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 07:22:38 -0700 (PDT)
X-Received: by 2002:a0c:c991:: with SMTP id b17mr9979723qvk.16.1590070958659;
 Thu, 21 May 2020 07:22:38 -0700 (PDT)
Date: Thu, 21 May 2020 16:20:44 +0200
In-Reply-To: <20200521142047.169334-1-elver@google.com>
Message-Id: <20200521142047.169334-9-elver@google.com>
Mime-Version: 1.0
References: <20200521142047.169334-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v3 08/11] READ_ONCE, WRITE_ONCE: Remove data_race() and
 unnecessary checks
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
 header.i=@google.com header.s=20161025 header.b="L/OPRcba";       spf=pass
 (google.com: domain of 3ro7gxgukeeehoyhujrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3ro7GXgUKEeEHOYHUJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--elver.bounces.google.com;
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

The volatile accesses no longer need to be wrapped in data_race(),
because we require compilers that emit instrumentation distinguishing
volatile accesses. Consequently, we also no longer require the explicit
kcsan_check_atomic*(), since the compiler emits instrumentation
distinguishing the volatile accesses. Finally, simplify
__READ_ONCE_SCALAR and remove __WRITE_ONCE_SCALAR.

Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Marco Elver <elver@google.com>
---
v2:
* Remove unnecessary kcsan_check_atomic*() in *_ONCE.
* Simplify __READ_ONCE_SCALAR and remove __WRITE_ONCE_SCALAR. This
  effectively restores Will Deacon's pre-KCSAN version:
  https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/tree/include/linux/compiler.h?h=rwonce/cleanup#n202
---
 include/linux/compiler.h | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 17c98b215572..7444f026eead 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -228,9 +228,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
 
 #define __READ_ONCE_SCALAR(x)						\
 ({									\
-	typeof(x) *__xp = &(x);						\
-	__unqual_scalar_typeof(x) __x = data_race(__READ_ONCE(*__xp));	\
-	kcsan_check_atomic_read(__xp, sizeof(*__xp));			\
+	__unqual_scalar_typeof(x) __x = __READ_ONCE(x);			\
 	smp_read_barrier_depends();					\
 	(typeof(x))__x;							\
 })
@@ -246,17 +244,10 @@ do {									\
 	*(volatile typeof(x) *)&(x) = (val);				\
 } while (0)
 
-#define __WRITE_ONCE_SCALAR(x, val)					\
-do {									\
-	typeof(x) *__xp = &(x);						\
-	kcsan_check_atomic_write(__xp, sizeof(*__xp));			\
-	data_race(({ __WRITE_ONCE(*__xp, val); 0; }));			\
-} while (0)
-
 #define WRITE_ONCE(x, val)						\
 do {									\
 	compiletime_assert_rwonce_type(x);				\
-	__WRITE_ONCE_SCALAR(x, val);					\
+	__WRITE_ONCE(x, val);						\
 } while (0)
 
 #ifdef CONFIG_KASAN
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521142047.169334-9-elver%40google.com.
