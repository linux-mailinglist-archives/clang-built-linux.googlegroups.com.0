Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBFGDTH3AKGQEYNPTSSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A471DCBC5
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 13:10:13 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id 12sf4880099pgu.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 04:10:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590059412; cv=pass;
        d=google.com; s=arc-20160816;
        b=FCcjgZgH58en1Pi7tltPUgByIbzxLejvIKjg6OtFbtkDTkm0ybqn2Sm52lcdZ2f+rB
         WoBMvgvZDNraFTNHT7PCWIFwwCY4XF2iioVWKjWBYAX1Qs9JSIwikLDucqeq+sA7WptJ
         DcodLoiqBeuv0XoBpg3OIrbkKOEfULiduqHYqa8EPQK7iKQBBLuQw7csY6QxMi/wwEkK
         e/mBwUY2Cup9czbX2zUzQ01EUm5LU8b1Y8VdaD2RQqTB7czoD2FqouwSQNNlTJuHy5LD
         pYqK/TxMxMgo5Flf+wigi6ktsgtrJhMxsomsj7MoViGoefsev4P6nkvUNBYNzcMIg0Dx
         AIww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=QpywRvUDvza4BRQLqvMCzQEJceBo7O73zgA8+G5/QRk=;
        b=t72p/331QeJOM7zysvQ0mnannzMArcDpoA1F6vb5DWWMdPymF8SezybTBLbZOG9pXu
         1IA+AwZRdHsvdOmyCKtHuu1Q2vobGoJ81rWmAvN80/2dkrubaDP+rXi3YECL5plpeZpS
         CpEBEyiCHjLti6mkJGh9J09QMjb6Q4VbBFtb5FcQMK+oM3HvofoffCXOFT/6J1JAngna
         8rjburb3lZOrcqsrKXYxawBvFh6Yidc0YeFdOgaXKWhspilv+E0VSjIBmaot3kCQlXBB
         ChIuX/S+cmHm0zJODnzFtmQ7c7xRNUVeDni1qpA+Ru4UgM6sehGCMb8z+lESPup2EzKx
         LhRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LW0ey+ZE;
       spf=pass (google.com: domain of 3kmhgxgukewsnuenapxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3kmHGXgUKEWsNUeNaPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QpywRvUDvza4BRQLqvMCzQEJceBo7O73zgA8+G5/QRk=;
        b=phB2KuZemWIBEBupqclT5DozumUJuQdjy3gOWt3lVAhWYFjH1PlVM/2ddszPmaw8E3
         14W4bAFMbmuFiaxGB+ugM9q9XLKva4gwNsdg14XpYYgDGmJTGNK2Owafx0jeMTMdiJTN
         f1MVQzaQDLIbykJAM39oCmgSwg0qkl+4AcGSuJdQ4ILXhUtbqZNADLiuMt77ZTPFKn7r
         3eh7cx1LYdndNbwQsUZcBhU3lWWQxaNcORIO62ugB/WqGbv8AS+pZQlxZVfvQ9yqLSa2
         A89NhpKVZtblLMjOxRM2p+I3IQHFAuZfec9akRP8RwgLwLVkOpolWcBkwobf1zVEM8jB
         Dj8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QpywRvUDvza4BRQLqvMCzQEJceBo7O73zgA8+G5/QRk=;
        b=r2L8k3mqdT21BjN/Ftrqxu3sx0FrcybGBCj8MboDQgh6DKjHtcKK9ksqD2FLZLQwJ+
         wjLWT58VlyJb3hd7u836F20LereGCerp5vDOiIi4BPeSktU1TaRE8ng0QL0otPi720Ik
         ho7bqLjVEIO0YUYScThBxCbkRlBseYkDk3WbYbC8De0HKXbf/s6GmbMI8SS9f+miiYDC
         7YnveazQwwLtGgG69uLD5lOFMUmH/EAPMAHjlw2EWFHgcor77zJXpH8RTDpd84jXOKdh
         NCSPxcduPwHuwobfC0UZ6ZhbDrIN4+gW55w6HMcxez0cW580X+l5d+zxNfz0t9ay+dMJ
         lwnw==
X-Gm-Message-State: AOAM532rZHhltE+RKxhxoDaQ/v+P14lTPle9cnsfGJaJNGdR9PT9MDRB
	J4UDwoE2fZKd5JP+Y0GbmWk=
X-Google-Smtp-Source: ABdhPJyzGb3GF7Zek7Su+CQY/IIompExDFgDuyqCe9XkjVWgsd0C+OxV/1UDU/hq5c3D/xRcWg3h1A==
X-Received: by 2002:a17:90a:8415:: with SMTP id j21mr10537930pjn.186.1590059412123;
        Thu, 21 May 2020 04:10:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b82:: with SMTP id w2ls745338pll.1.gmail; Thu, 21
 May 2020 04:10:11 -0700 (PDT)
X-Received: by 2002:a17:90a:ad08:: with SMTP id r8mr11131353pjq.154.1590059411726;
        Thu, 21 May 2020 04:10:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590059411; cv=none;
        d=google.com; s=arc-20160816;
        b=JqhNshS8XqCj5lu3vwrSlFoL6l6fc4N39u6XAeRa+ZAjyhpyy83qfgDUJ4fNclHKS6
         H9gAMdfp6KccY058xRd0yxfH4bxxM7KsTm5xKNLHg4mSFwVrGh8gxlhcrFIWFoFNRWIU
         lWyt4izqXOcGLyhZOTMq3i1HLvKXKeq/KcLcJ8xWust3euliFbvXIhyF9aCyzhUZ0WvP
         KnqCvkt6dR/5YOCqlYzKIHRsXyC0LWbhx/MzuGHcC3nPKBMAW8BdWIkHDOYQqzEb6gbw
         xcrtqeEh6ryAczSomWi9tUvQGP8LGgnrzuFR1H31Nrb3vbv7PobISAJpGZGY4BBR4YVO
         2C8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=YxAJO5zjAlDcESQjL2hotUlRyCYCv27YW58n87FzjMM=;
        b=XBhhYIOJWYZLwS1P863XbcjcKcBGBYT5smRf6aHkQT8Vt7SJNIO7xheNIIIyCY5Arj
         +aDF+UTHC2cezU0ewwiG+bMZz9GjB8U5gsRI5C+4hwW7U0nnwigerGOQBem/cPQyC7uv
         n4LPKgp+btYlFBhqquzPwQ2IEBJbUMnqrPwX7j6wOTBfFcCQl1MAH9+49utFj35kXdrF
         UOABQMnV312bpVyJtN+qhtwP7TGaBundPR+Xuk3g8ttHSNxswplCilqBVJjXsFWj55x0
         VnTUiKtDwYznsz79GQ4y3t6Ug9Y+rL/g5ceGTLnY/X6F2Dn74PFkncDI9ecuxS4zQtju
         Reaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LW0ey+ZE;
       spf=pass (google.com: domain of 3kmhgxgukewsnuenapxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3kmHGXgUKEWsNUeNaPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id a1si343410plp.2.2020.05.21.04.10.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 04:10:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kmhgxgukewsnuenapxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id q10so6776954qvs.16
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 04:10:11 -0700 (PDT)
X-Received: by 2002:a0c:8d0d:: with SMTP id r13mr9507280qvb.53.1590059410838;
 Thu, 21 May 2020 04:10:10 -0700 (PDT)
Date: Thu, 21 May 2020 13:08:52 +0200
In-Reply-To: <20200521110854.114437-1-elver@google.com>
Message-Id: <20200521110854.114437-10-elver@google.com>
Mime-Version: 1.0
References: <20200521110854.114437-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v2 09/11] data_race: Avoid nested statement expression
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
 header.i=@google.com header.s=20161025 header.b=LW0ey+ZE;       spf=pass
 (google.com: domain of 3kmhgxgukewsnuenapxxpun.lxvlujwp-kdruc-urwdgpxxpunpaxdyb.lxv@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3kmHGXgUKEWsNUeNaPXXPUN.LXVLUJWP-KdRUc-URWdgPXXPUNPaXdYb.LXV@flex--elver.bounces.google.com;
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

It appears that compilers have trouble with nested statements
expressions, as such make the data_race() macro be only a single
statement expression. This will help us avoid potential problems in
future as its usage increases.

Link: https://lkml.kernel.org/r/20200520221712.GA21166@zn.tnic
Signed-off-by: Marco Elver <elver@google.com>
---
v2:
* Add patch to series in response to above linked discussion.
---
 include/linux/compiler.h | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/include/linux/compiler.h b/include/linux/compiler.h
index 7444f026eead..1f9bd9f35368 100644
--- a/include/linux/compiler.h
+++ b/include/linux/compiler.h
@@ -211,12 +211,11 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
  */
 #define data_race(expr)							\
 ({									\
+	__unqual_scalar_typeof(({ expr; })) __v;			\
 	__kcsan_disable_current();					\
-	({								\
-		__unqual_scalar_typeof(({ expr; })) __v = ({ expr; });	\
-		__kcsan_enable_current();				\
-		__v;							\
-	});								\
+	__v = ({ expr; });						\
+	__kcsan_enable_current();					\
+	__v;								\
 })
 
 /*
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521110854.114437-10-elver%40google.com.
