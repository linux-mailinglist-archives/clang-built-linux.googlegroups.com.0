Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBEODTH3AKGQEIMEA3DI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEC21DCBC4
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 13:10:10 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id p33sf3234417ooi.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 04:10:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590059409; cv=pass;
        d=google.com; s=arc-20160816;
        b=ErBw9qWwFz8gpC+focU+KDJJfTd1YxvEA0Dmcq37+4Y9BCCqqJq+D9N+Gj6dQkNK1Z
         ZDLb8T5BIb4MmJdTYGUgtzI7IAJcM31bPMNvRDj9cFQsJGowHm+ih6OAfz0mHcR8ONMp
         GOwrHkh5nauIrd6X00O4aO+odJrSFKpaQgNYTYvX+66awWDfALUYfRR7yEk+JHjT1sMs
         YEiRWByJzsuxaOWXyRbWZuRjZcECKMeaN8vWjxyyYektHh3bEh9Kkhj4oCN16Kri4Cc0
         nP0k9s8I3Gp8+A97MvgNaru33eaAzq5asZQMLQT3ZNtssLMAx6+wVW++uxMds6ks7lxF
         01mA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Zje1NaHaV7uHvynGcYx49vDol717LkclWSHNX0FSpZI=;
        b=xtCEeHnadXvokhMqqkoU/O1gXyldMUcuMyhYa+oQ6dobypGQY/UdvSn64ve2vZ1RbY
         VPmonBWxHpjREEe9jC9lURT2rWuBNfT1bWha60S8gz4LKJlCfSkhLheKBJIkpOcYVvkw
         kAQvH6fNEtCrbrrOuuxYsdLWz3g3nXpT8vNVEYpUo++EVIVn9A4hiH26FDaiR730CAF6
         2UaQ3fFwU/x7QBTOuGbmwpYuDii5ZChuve9tmo9w6K5KgFbYXkvkqg2Jdj0VpeXI6FlR
         z7f4LMSQbhCLt5nFp4GPGe3Z3kQNa7uS1RyVhaEZn+dfhsWuRjdM1ghllbdycDNNfL0u
         ODUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FdoZFAIo;
       spf=pass (google.com: domain of 3kghgxgukewklsclynvvnsl.jvtjshun-ibpsa-spubenvvnslnyvbwz.jvt@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3kGHGXgUKEWkLScLYNVVNSL.JVTJSHUN-IbPSa-SPUbeNVVNSLNYVbWZ.JVT@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zje1NaHaV7uHvynGcYx49vDol717LkclWSHNX0FSpZI=;
        b=Cqu4NsxkG9qSwivZGo16O2yDWetFqxG7EryveChnAW7qFoIttwwK7oDzbPlzULvVfJ
         oTH50PMaHyTmzHAMyHHEjrGFlr0ehanSWHKu1mn6gPiwxI6KDKU2CurR47TmhjC4O7Z2
         YrJb0F6TshMNd62j9w/z+TPj7edxtSvQ4pKBIiSUNOI/P/86ZfRhKihJVHcTEMRH8E2J
         zelQf5EpPviITdj4NsxTSGMNqnr63Q1D8g4058m38l+G7DnhDD4nGRr1sOuDOjxdQIvk
         IS+SLAG4uV+wIKEw32t4Xu6NDN58JWtXIgLuqvPYm0gML+xYToz1g8mOaCBTGWpT0KAu
         BWmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zje1NaHaV7uHvynGcYx49vDol717LkclWSHNX0FSpZI=;
        b=Hukk54AnONHCdQkvgTlykDBblrqDDKjfnK2mfvkf6/W3Ku6g7BvAPvNR3+Ve25jQ4f
         B2/xSHgtttowkaM0X++U/owK3SF2tTB28Cs9OgE/CrS2M3J3vtsQuG+UPGdxbCJrc2i/
         x7mrBql2aqG83m9nXFgQyInh3GWnNHgkHiwq9Ey7WYLFUUgiEspLg0rMhn6Ons8bh+CW
         Lp13jZb6CnDudYjnb9Ubw5tVjKXFvt3T/exIzvbxUEs3XS6lWj3S8ezIcciNHzkygVpl
         +n2lxDB9UTaS5L5/iOD3aqtit2Eey67b5KGGmW01t8KVlAf62p+PtxjxVkuqTYTW8BBV
         2YWQ==
X-Gm-Message-State: AOAM53038Yj7VDX4eL0+GkBiXXg4rw6c1USlQzPTbaKZTXLQwgwUT9Eg
	u5oQP32huidmr26IPVGNUrA=
X-Google-Smtp-Source: ABdhPJyrplXOArG0X4YgV7TvCZNViQCb5hJI4ETRSSpHFV/5PksfL48RD3kI7CDGJw1znh4PqxRekA==
X-Received: by 2002:a9d:7d15:: with SMTP id v21mr6250397otn.70.1590059409312;
        Thu, 21 May 2020 04:10:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:61a:: with SMTP id w26ls386677oti.8.gmail; Thu, 21
 May 2020 04:10:08 -0700 (PDT)
X-Received: by 2002:a9d:694b:: with SMTP id p11mr7076921oto.83.1590059408864;
        Thu, 21 May 2020 04:10:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590059408; cv=none;
        d=google.com; s=arc-20160816;
        b=kS8a4sq5t3u0cSVUXdJpPOHaZBZ8U3R8Jv1MdNqBAhHkl+qyd4Kf5AFMIIlbCx11eY
         GfQINnXBJBowUg++HmcjCMkihkwXmiU3b4nfV+iIJDbpbMWphec1mzEv0QK251l+zDfZ
         DyQSjT+oqKtpnTqkOrZV2zUBGNyhkAGcndcPQEo4QH/Y7F59wD4BG2NxLp9cUlz8r+bq
         pC8x63Ekjf9NUAArtfR18wnpBnZ+mE1Q9IlTTZ8Ucu4l3/jOaRWbDtXTVadR5qFssJDA
         wgKn88UGoXBsRIellw6mcXct+vEDfIwkOSQHy97+DwHAiSmsIOzUoK9w83Qe9it874yK
         HNWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=yPM4FruOpCgqlY8Fa/KGpo+V+oloeiebiyu3mkE+4Yw=;
        b=XAj43D94A3uOjFfN6wUnYDe7HlzW2hlSaT/lasWOYqJjNhndrIPvqda+Td8OC5t7vZ
         1dCGgFoqSTEUurSr6oS7ZHx9muiT/GEfgPryxRB1NiYocT0aP1gFo8fS6e+zQrDG+qG/
         KUla1B+DGb4Hxe4yJUND28wt1xoLxv4bVgTFMycI8neK6p/9G/JtyfV86T2n2nVrWiww
         UJ9qA2YCot6/RkMaoMdMzkxPRYzXAepfdfMgWoU00+BOVjmnBhr7PKX7rNykUI/6ncXE
         B9vPOkxXJRhM9SBpc+1evhxN8H9KhrCLaFDgZP/EWtOVIgY2S/CCySmQSpqGM3xd9tAG
         c5qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FdoZFAIo;
       spf=pass (google.com: domain of 3kghgxgukewklsclynvvnsl.jvtjshun-ibpsa-spubenvvnslnyvbwz.jvt@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3kGHGXgUKEWkLScLYNVVNSL.JVTJSHUN-IbPSa-SPUbeNVVNSLNYVbWZ.JVT@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id d4si372253oic.3.2020.05.21.04.10.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 04:10:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kghgxgukewklsclynvvnsl.jvtjshun-ibpsa-spubenvvnslnyvbwz.jvt@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id h129so4865679ybc.3
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 04:10:08 -0700 (PDT)
X-Received: by 2002:a5b:58a:: with SMTP id l10mr14644958ybp.483.1590059408475;
 Thu, 21 May 2020 04:10:08 -0700 (PDT)
Date: Thu, 21 May 2020 13:08:51 +0200
In-Reply-To: <20200521110854.114437-1-elver@google.com>
Message-Id: <20200521110854.114437-9-elver@google.com>
Mime-Version: 1.0
References: <20200521110854.114437-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v2 08/11] READ_ONCE, WRITE_ONCE: Remove data_race() and
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
 header.i=@google.com header.s=20161025 header.b=FdoZFAIo;       spf=pass
 (google.com: domain of 3kghgxgukewklsclynvvnsl.jvtjshun-ibpsa-spubenvvnslnyvbwz.jvt@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3kGHGXgUKEWkLScLYNVVNSL.JVTJSHUN-IbPSa-SPUbeNVVNSLNYVbWZ.JVT@flex--elver.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521110854.114437-9-elver%40google.com.
