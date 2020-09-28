Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBR62ZH5QKGQEEZD5GSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 0292D27B781
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 01:10:01 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id t23sf1081901ooc.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 16:10:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601334600; cv=pass;
        d=google.com; s=arc-20160816;
        b=I4dsTpzLGAkujTuKd81KgdiQ7v4lbsnJJgPXHSaruIlJLnUW1E/j8rKcasWqCLu60l
         net5cHjG9Xf34V/5rCHBhMzEiHyLSJj4JD9Y+KDVZS+d0MsZg+oV/GphskaKxIZls2MJ
         2CrAf4VDRwYbVreEYmKMjuY/cRrSrZoqKzkh1uBg+okMY6hfV4zimG+z0kX/kSmDS8GA
         plrNG0G0Vg+EMc/twHpVQnRUyg59GplHp7Z6W2wyuuIzsIBUZqEcc6FshUxhH7Sc2EUe
         13MxcLbQDiOVuZ1vyg97nHR6HewYdgva0jn/hQhL3KhReeM5mfeOaRZaN4LKG4mC/6cG
         ANNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=ubGdYOfFDNfZeBIBut+deVvc7CEQCp5JnqDvohMsD5M=;
        b=T3gHI9U0OolOQFfRsPiZVmjdDjxtNcC/2sMMRQdfpPNzcCt3sNpaoxTF8JzYxPcp91
         MfF6NOrspxrn5Cwskrskb5tfyLKQ2M08YgMc3pkRR2eCWExl2A/9j7u2q1VmpmtY7isY
         Y2/jEbmGRdYKjAZMq09r2s0SasQNR2LSEfVbbzALq4FCKMiQ8Z2RHAdiwUzZPZGt5kMj
         nEVPpGkcX4Xcv7y0EyEhJRhnuMccQYdRJZwVBC3tlOLxZ677bIiSUMQ/w8WHfTNlLqcB
         8UTeifwDeGS4yMIYH3fbDg9Jdcr1HAfklmotwQNlx2O5GKuzrCqxaviSdBG6O/8QeGmm
         0L1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G+4Y7xPK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ubGdYOfFDNfZeBIBut+deVvc7CEQCp5JnqDvohMsD5M=;
        b=OGLdfv0ns2y2d28youj8k/GyhxirVP1RbCay9dwZayEYMPXzMoMr+WFOGk9Xk5VRHf
         QjuEqievO75bV5rn7OqaiDtnOlsewJzZr4OPjC1IduyBI/dOnhcNOt/+jvPV1X69x1fU
         95yLHrs4qCJ449nhmAl4kNxsSlMGW0tnESQRI97DSDflZRU8ZtXfbRB7Ptv/3nFurCay
         2tHhKMqfvLisKZHtzqz1b6A/4LgMnagQ2+6xXOEgLYEH/SovgoZizmvKmYs7oyX+ehxq
         MQsafOQ64lTA0clFbmPrk312t2knMCVovB3cIcpFVkgA/ckAQaVY6pcHyD4RT02QwrSI
         H3lg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ubGdYOfFDNfZeBIBut+deVvc7CEQCp5JnqDvohMsD5M=;
        b=KWoYVoeNSuWVlAii+P689eME7opegWz8j/R4Zr2ApwvvdLNkmDqts+FLpT1wE98JRZ
         fBcK7P7r6pJOXZz1DvEeQnzOdc38wySy2CV5QWArgd7TtTDoqCpxuvSqGHpgz+iB/9Ri
         rM1bFi+nsb5dZVVZ0L9ik931x8IEZVVpMqWMJe3ukiGFa9zKPcj9RJwFk1/RF1UNO0+k
         MblpmkkqnqRlyCkguMmLZ72HSzb1R3UDMabRUZ7M2dO78vQilwAXgDJ5kwr9dQJT3Nov
         CkvD/HyBqp6qlmnUyKI3/RXxmrxN0vjCRNJIXlKyaBfyzNVIGmHhAS0SM5IHVFm/iQeJ
         sWtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ubGdYOfFDNfZeBIBut+deVvc7CEQCp5JnqDvohMsD5M=;
        b=IafY6bc7l1/ZxLsirFS2wqrWnC5mF3WL34digQ2x3MhqLmG4Ozk9IsqHnBpuFBfyB6
         ZHMw8FfEgCcZUB/CupNTsQt2bKFNCbRlODk7jIMJE4VNYPBxRAb/ys2g7rFvM7FqDWbX
         Ov1N1t+Iped/W6A05SXQbZpN55bHh/yiU5aKM519VVNLV3fk+1NPzSFX4A8toeAYEah6
         jVSX9qW0cOOXph/dsAPjkRRqub6f/mKLnfxm4ppzR9RDLA9sPg1SC9IIxniXQ+bmvh0d
         PnPQ6HUxjFnumSB48CHTbMoNeNfjDE6tVYhJwKgkw9K2i5uVkydi3FT6KO8HSigivbDf
         lREQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IM1ZFQ5mw65PZoGyDq/W4Oc5QwYQxbxSnZzHQcEGd6Z92WlrV
	2ZePZrPh5A5wLaY7P5/deGk=
X-Google-Smtp-Source: ABdhPJzbmRz26dpDCeNywWH65+NU3VrcWE/45NvuDAbtJQyJ7ods/D+2wFguyv+N05mdS2CL3aFWLw==
X-Received: by 2002:a4a:b30d:: with SMTP id m13mr2456232ooo.50.1601334599941;
        Mon, 28 Sep 2020 16:09:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:72ca:: with SMTP id p193ls599619oic.3.gmail; Mon, 28 Sep
 2020 16:09:59 -0700 (PDT)
X-Received: by 2002:aca:3158:: with SMTP id x85mr805692oix.112.1601334599628;
        Mon, 28 Sep 2020 16:09:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601334599; cv=none;
        d=google.com; s=arc-20160816;
        b=XsGziZzzwzikkWWB53QpUwdi0VA8vnqegwLp7VDT8tdP4pk5CXQaWAMrNsCT7/e5LF
         BFwxlJBvNoN7Hiea465WX3w+8mKo2O56wkKzqSnDJfQPZJITaoLw5c487EuiYnbf+AA3
         lh9jB9l9V69uth6URxOUHN6Ix5J+0H/zZuawXjrDsNAkV+4TZSeKiGLWs8XlBR/rpYw0
         6rpj3MB48klgeeV2NVTpdOfwNb87mmDzviG3xCXHE8M8wHWUlgWT2ijwHEtSlV34GDl6
         WaUK/ykXLPul+lKZaLQlR5u+61yHaJ+mlZE8L1THArecPmJaOmVP1RWlDJiE9t5RtBy7
         iOGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=zHbi8BQw4tLw7R6QaxvOI8q15BGzFHU+jorKQdIZSUY=;
        b=nUsOGhbohVVSgdiwedFllqzaOAtJJiIM7cubhEzMNksCljOuH1EPHY8BnEMPgzoSdF
         a9yInghNYSYqkWNfhatq3a3EKVLPlP4F3N0ubFtIGu8CcbZk9CpBO4n2dTWGb1uTzyvk
         Jv32WLkDDPRduBni4wsg0CXF+Ll1X3WziVuwoZ0DAXTCTJZKoWxLTSf3BeJWI+gW+/YA
         2YzJfF1njUdtOheNY2qk2l+NAQBhSStuDizK+a8L5q/cN+EphbqEfPiEX473WjHWd0SG
         8Vs7rxtGA4navs2VOcFp1yP5waoXmjAewOp/Y/d064sqf6lN6i68CJX97mIbqXAzbg0w
         5/Vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G+4Y7xPK;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id m3si285525otk.4.2020.09.28.16.09.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 16:09:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id q5so2706911qkc.2
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 16:09:59 -0700 (PDT)
X-Received: by 2002:a37:ef05:: with SMTP id j5mr1792884qkk.456.1601334599120;
        Mon, 28 Sep 2020 16:09:59 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id y22sm2848538qka.18.2020.09.28.16.09.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2020 16:09:58 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ingo Molnar <mingo@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>
Cc: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sami Tolvanen <samitolvanen@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] static_call: Fix return type of static_call_init
Date: Mon, 28 Sep 2020 16:09:39 -0700
Message-Id: <20200928230939.5574-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=G+4Y7xPK;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

Functions that are passed to early_initcall should be of type
initcall_t, which expects a return type of int. This is not currently an
error but a patch in the Clang LTO series could change that in the
future.

Fixes: 9183c3f9ed71 ("static_call: Add inline static call infrastructure")
Link: https://lore.kernel.org/lkml/20200904044559.GA507165@ubuntu-n2-xlarge-x86/
Link: https://lore.kernel.org/lkml/20200903203053.3411268-17-samitolvanen@google.com/
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 include/linux/static_call.h | 6 +++---
 kernel/static_call.c        | 5 +++--
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/include/linux/static_call.h b/include/linux/static_call.h
index bfa2ba39be57..695da4c9b338 100644
--- a/include/linux/static_call.h
+++ b/include/linux/static_call.h
@@ -136,7 +136,7 @@ extern void arch_static_call_transform(void *site, void *tramp, void *func, bool
 
 #ifdef CONFIG_HAVE_STATIC_CALL_INLINE
 
-extern void __init static_call_init(void);
+extern int __init static_call_init(void);
 
 struct static_call_mod {
 	struct static_call_mod *next;
@@ -187,7 +187,7 @@ extern int static_call_text_reserved(void *start, void *end);
 
 #elif defined(CONFIG_HAVE_STATIC_CALL)
 
-static inline void static_call_init(void) { }
+static inline int static_call_init(void) { return 0; }
 
 struct static_call_key {
 	void *func;
@@ -234,7 +234,7 @@ static inline int static_call_text_reserved(void *start, void *end)
 
 #else /* Generic implementation */
 
-static inline void static_call_init(void) { }
+static inline int static_call_init(void) { return 0; }
 
 struct static_call_key {
 	void *func;
diff --git a/kernel/static_call.c b/kernel/static_call.c
index f8362b3f8fd5..84565c2a41b8 100644
--- a/kernel/static_call.c
+++ b/kernel/static_call.c
@@ -410,12 +410,12 @@ int static_call_text_reserved(void *start, void *end)
 	return __static_call_mod_text_reserved(start, end);
 }
 
-void __init static_call_init(void)
+int __init static_call_init(void)
 {
 	int ret;
 
 	if (static_call_initialized)
-		return;
+		return 0;
 
 	cpus_read_lock();
 	static_call_lock();
@@ -434,6 +434,7 @@ void __init static_call_init(void)
 #ifdef CONFIG_MODULES
 	register_module_notifier(&static_call_module_nb);
 #endif
+	return 0;
 }
 early_initcall(static_call_init);
 

base-commit: de394e7568ce2cdb4643ed230169f484f25f9442
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200928230939.5574-1-natechancellor%40gmail.com.
