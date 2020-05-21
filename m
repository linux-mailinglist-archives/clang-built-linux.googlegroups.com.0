Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBLU5TL3AKGQE73Y4M3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 896921DCF83
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 16:22:39 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id k10sf5904357pjj.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 07:22:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590070958; cv=pass;
        d=google.com; s=arc-20160816;
        b=liwcmhfAyamY//pR3Qup6GrSW2UYdGRhQA1yMWeT/MmAjHisFKR+5saZ0oJZ4wM5Q8
         EMdH10Da/tueCr/AEAoUtEVktSlWNO3ZUpheTgDdPJ6K2lfQkfk3tEgzRZV/+++B/UVa
         EzbHvdmgDyLQ9OeubGTwXIHmW5j5m1VYnTcTJd9FGmIjj2jAIvXO/+wbs4uWdoV2ByNt
         ebpbGYDzERGnT1Zw4n42OUSEDgoQ10pJHUHXmjO4fqBPFWA3gyIYIIcuKl4KTzhP0np2
         OM1MOsb8WhLdmAyzo6479QdBE7FzIdv4MYSQstiZnsZySbeKPHnXmsFKTZFQII3mLu/q
         6ADg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=xPjS413wgf+c8cNKubGlqqC0X+b6LB8myNCCs33va9w=;
        b=aM2QzXtzJWE/rQWITNQam4OXkakBHW1XYIQ/v0FDUyqRXGdyHU/qSyG//5q1oCrrWt
         lpHHs4EP7gPO48TISr+/f8PlrizivkvWgFkman3ouaiw8coUkZ9zE3fhtAL9SBbunUss
         0jO0yg4RCnhKuC8lkEg4T3x81mYXz7cAWYWY5Kx+K0k9DNKhp3fvvEIRkOwRh+DDCM1M
         qKBfQtMW2E6ejCXmIzBeieLLYxGQBJ13cMZfs2CrNyxZFFSttkyWn9cvMtxt+ARWXzD/
         mx0NJjuLZAJqqoXEaBx5FfURmokK7JPU/UP41PD48pzAweo+Xl/YAKO0bJBaqJaz9lEJ
         fZIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AousQc5p;
       spf=pass (google.com: domain of 3ri7gxguked8fmwfshpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3rI7GXgUKEd8FMWFSHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xPjS413wgf+c8cNKubGlqqC0X+b6LB8myNCCs33va9w=;
        b=X1t7+IkndTedex+N6jAP8NQrfyUhO4fVaDsTltIjzN2SW3q+8y3aDXtAyWrueDzNZF
         3oywsfVtvQQTr6dVSaiinP8zdK0/llxiV8IyZALRurUewGoglvf6wkYwBesvyz/TIUGw
         uYfxP6OhDYMAfGV4B2PdCCzFwadl1NUZgD0nTXCjo7EclVqvzjpe0Tsj3kk+d2bZQqy3
         w5GyODRfwW9QmZxYU2BHLfvi5f8UwDY36HGS7Nof2RO55AcgYYa9nTrkaHgkixOvwqHb
         nVWqDV87w56aoMOt0NNqqTsgIqreuxIn+E6vFwv3OpY1uW7YUbXpk4YlL7RvLvecNzWu
         uUiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xPjS413wgf+c8cNKubGlqqC0X+b6LB8myNCCs33va9w=;
        b=AEStaw/jBRVP3jneyiOgtl1MePnHqD9Ose/oZy7LjeHqrG8CaIDP3D6PisM1nI3k3t
         B+X/Hoj///KURrpN0CK7nFruMcwgAc0B8uhpO5UOX/9zVVEg2gmKwGQiFqkK3YTh0LM/
         4b2t46oHjuShH4Lh9FnVUsXnHUWtN9EgpQc+AuTfNWpPS5HEDafK0qsRx7b/IIurZqBV
         l+XX6o59fXXs3t219z7PNe7jGZZ4v7fkz2lc88TCcShM7lURVqzieyqny7nM+l7NypiG
         Vr9dPSxFKIxgxCXL8NFBu/7dBgYYoYyBQP4Pi4VtYytUWwyXs+6kahCXxCMP8Pridf6E
         9Nyw==
X-Gm-Message-State: AOAM532ZeGZk0X0P6Op8mD14y8wQbC/ieroGP9o+RlUDxVUYLFFHS9K+
	YvimNcirXPXMQ9Sx8J57SC0=
X-Google-Smtp-Source: ABdhPJxV71JGqMQR4ttTey+++3Ki2+NYhKwvsksUOnDXajL0tclE9n9Xwm4a3G81fTzEWH5AAs/JZQ==
X-Received: by 2002:a63:b64e:: with SMTP id v14mr9396821pgt.164.1590070958212;
        Thu, 21 May 2020 07:22:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d049:: with SMTP id s9ls745773pgi.5.gmail; Thu, 21 May
 2020 07:22:37 -0700 (PDT)
X-Received: by 2002:aa7:82c9:: with SMTP id f9mr9683305pfn.258.1590070957405;
        Thu, 21 May 2020 07:22:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590070957; cv=none;
        d=google.com; s=arc-20160816;
        b=GIulian/tOEcQUmRNE6fgGiJWeAQO/iQoFyV7J3AV1HSt9dro36AWmJy+sdteJaEQb
         K9V6yfpv24fK8OUa5HQcsLSu0ch2ZTSorjul4PDAzrdYYl6ri9x1Wpx8et1pGHUCbRie
         EvQJoLqwLaBMeeH/kQBmgYuahG+OcIQDzP5fDbomHGbsSXS8cc8K+DEXXrauQjJFIrEG
         JOG81RitFRscgpfQj876sO2zklLVSJOqWKylyMvSdKlPAQGjonIm3Ng4cK//3haXc7de
         EolgNAY5dZqdDfIHpKbY8u+42pCwni8yU9664QqH3jM/6DtjHW2avb5jY58e9ZVq8F7a
         WIZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=PgDY4jBoWDmqeTjpUELiZyK5eYsaiohYt+3kMWavVjU=;
        b=xjyi+HA3nZni7k4GzSJ2D8Zoc79f/5SWhUT0lwc+mbOahdIkBOsEQ49v9PsPA9bhjr
         ZU3xpgvChJd051FFshe1DjnlzIymLnrWlRKViyOWtSkJ8AAIpgZp3UisnyGuOj4Skt+z
         Q/xr8kNNNU2awDQIQcIFSfV7XoexycPR71C276WWgWhT8vnNBmneHf5Pz99sDhiAgG8s
         ZEyfh1WGBmxYXWNdk/cf0O+gfQGnSxWqJHPcGr/ofTCKn2pdFOq0Vnqkuynay5j5B4pv
         3aOdymw0nbqORrGKvHzrGLW6VwKuUoaCD+kooF3WqxGboPI8JbcPEEQYnO+LiSYZDCL5
         cg1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AousQc5p;
       spf=pass (google.com: domain of 3ri7gxguked8fmwfshpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3rI7GXgUKEd8FMWFSHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id b5si183907pjn.0.2020.05.21.07.22.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 07:22:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ri7gxguked8fmwfshpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id l11so7814530qti.19
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 07:22:37 -0700 (PDT)
X-Received: by 2002:ad4:4690:: with SMTP id bq16mr9884082qvb.20.1590070956501;
 Thu, 21 May 2020 07:22:36 -0700 (PDT)
Date: Thu, 21 May 2020 16:20:43 +0200
In-Reply-To: <20200521142047.169334-1-elver@google.com>
Message-Id: <20200521142047.169334-8-elver@google.com>
Mime-Version: 1.0
References: <20200521142047.169334-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v3 07/11] kcsan: Update Documentation to change supported compilers
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
 header.i=@google.com header.s=20161025 header.b=AousQc5p;       spf=pass
 (google.com: domain of 3ri7gxguked8fmwfshpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3rI7GXgUKEd8FMWFSHPPHMF.DPNDMBOH-CVJMU-MJOVYHPPHMFHSPVQT.DPN@flex--elver.bounces.google.com;
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

Document change in required compiler version for KCSAN, and remove the
now redundant note about __no_kcsan and inlining problems with older
compilers.

Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Marco Elver <elver@google.com>
---
v3:
* Add missing commit message.
---
 Documentation/dev-tools/kcsan.rst | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/Documentation/dev-tools/kcsan.rst b/Documentation/dev-tools/kcsan.rst
index f4b5766f12cc..ce4bbd918648 100644
--- a/Documentation/dev-tools/kcsan.rst
+++ b/Documentation/dev-tools/kcsan.rst
@@ -8,8 +8,7 @@ approach to detect races. KCSAN's primary purpose is to detect `data races`_.
 Usage
 -----
 
-KCSAN is supported in both GCC and Clang. With GCC it requires version 7.3.0 or
-later. With Clang it requires version 7.0.0 or later.
+KCSAN requires Clang version 11 or later.
 
 To enable KCSAN configure the kernel with::
 
@@ -121,12 +120,6 @@ the below options are available:
     static __no_kcsan_or_inline void foo(void) {
         ...
 
-  Note: Older compiler versions (GCC < 9) also do not always honor the
-  ``__no_kcsan`` attribute on regular ``inline`` functions. If false positives
-  with these compilers cannot be tolerated, for small functions where
-  ``__always_inline`` would be appropriate, ``__no_kcsan_or_inline`` should be
-  preferred instead.
-
 * To disable data race detection for a particular compilation unit, add to the
   ``Makefile``::
 
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521142047.169334-8-elver%40google.com.
