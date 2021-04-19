Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBPWX66BQMGQEZZ2RTMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A095364B80
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 22:44:48 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id u7-20020a259b470000b02904dca50820c2sf9004480ybo.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 13:44:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618865087; cv=pass;
        d=google.com; s=arc-20160816;
        b=mZqzdafhpgd0AZO+WZke7/hVNOMpxZMNJM9VoQS8MQcNJLGfd0QmL7j5r6wqUGSUx5
         6Zl5XNCBsoFjg0dGSxx8wCu48Kpic21JjuVXahKcgcvYvLlVFr5CAdpdC40aIC84MSXO
         TJQqPK+H9rptzDPdjJ00024FtLxvr9Xic88JPXAjVGKC8cu6KMDXwU9u2dWFNmoAYj1O
         cSbwiSHzatrL1+bo6sZ3NskLySObVFfWnbh6O7KQmHAQBCnaGOjg2bbwsORUtHAlR6x6
         kRXqqfRV7QXQPKGqcpC2oAVUKXkLl/vhVyFtZCc7Rmpvd6wGMFat11RN/SBoVrXdVWvD
         JykA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AXyyZKGsAL2GVTfE/BbiBkLXYdof92gJbyhLTz6Gf/Y=;
        b=djjK4zC0viiVGOrjZLLfT6jVTI/Vdx1wBUMsbhYJbGqzFbHfwWvLYDj25w6ImeeEhg
         /TPCgIF4taMsvYlqMJYZItPE9qrOS1CMNhFCQ3ZrYVTVCj5drEHRY7jH6HIA9M3zrw1I
         aQ/ygSsXEUznnVDlttki9gFhPup+8mf8CwlQDPrBl0B//PMZ6zY32TULa28piX4vW428
         ++krl8kWKU499VjKjB5tifYn87/dS6x+BE4aSNd8OyGC5mTP4B6j/fYLZSjjk9XdELOv
         w492bvuLbzLHPutfbU7qR9Sc1Yq9e3dO0+JrZli6+4NBfs3JmtmPNWQb2yLPjMCZMaCi
         tOGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=M1HwRS1G;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AXyyZKGsAL2GVTfE/BbiBkLXYdof92gJbyhLTz6Gf/Y=;
        b=AoW4/c1GtFD3sdgMJZSXPH2WslAgunhf36XFj1Dw7NMtRBApKgJdllbj6RbrTvh7mJ
         H/W3zo0OxtLM1DMdEM7+oKrW8HPcyc+VGhxNZEDsjMMXbnxdd7awiommQJSTLJ0S4da0
         jM0y1CniziKFhBoXngWSgWCNxQ3dtuomf6zgjYq2a0jZg+vTdppAnguks45uWQfEaUx3
         GTOF/nYcMWKYqBSQfb/GasyVyMrJdRDXokzOwfqZNWO5xL9vyD+c1TF0AcYNyoegye6h
         FPBMYo5gclU1rT47OyYwEJxCfJw0nluZzbN1NQPuISHNxbZt8zst3drEgRUZUYX0puSb
         PDuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AXyyZKGsAL2GVTfE/BbiBkLXYdof92gJbyhLTz6Gf/Y=;
        b=b4cb+TiwXg6xMEsUk+z0u13TSenJYPnHEAzNn22iYuAhtNgQhcLsisMX0mgTzyqlWu
         q6aPcvveQddkg9FB+umLrgqhYDsS0zYt6UWiCxIU4kvy3wfHzFZuduSkJ+IXiVjhihZN
         8Suyt1iKeg9Vri/bicl+hy9wDUZ10/+PSB7CdzIhj6Qyk4TXCrVH951OuXpTL/50P8be
         YMiYzDLOGZ1nNIowlqris85oBYMTtkOSbqUzBmvG3ZdHbOFQUZWShXFT8wne6bCFzYNm
         9IYNHMlPKc+oBzZTnpp4CHtEviRrMzjZrVJp1Njd0UbT3QDqNKTG3WbvxbNHVe3lInfe
         NyhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ly02puGdP1DxjmEejsvftkk20usE8Xi+nGdviDQ7fFGCcqz8I
	vnmfau+9qFfuUzU/WTRB8MQ=
X-Google-Smtp-Source: ABdhPJzGVTaELnHnYtlOjP+Juah7g+6hYDUUt41sbctgrtEtFKXvq1VVMrR8EspZRc7thsIvjdioQw==
X-Received: by 2002:a25:c553:: with SMTP id v80mr21565296ybe.221.1618865087090;
        Mon, 19 Apr 2021 13:44:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:a045:: with SMTP id x63ls8675285ybh.1.gmail; Mon, 19 Apr
 2021 13:44:46 -0700 (PDT)
X-Received: by 2002:a25:7705:: with SMTP id s5mr18310103ybc.429.1618865086651;
        Mon, 19 Apr 2021 13:44:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618865086; cv=none;
        d=google.com; s=arc-20160816;
        b=EVT+b+KME8iv3PL7BhmJmMgYsGOoBvYD1YKL0eubIED4SE8PtSwiex0Y7oVY4CtISb
         Hp8Rn4rT7y5kiWsfjXawnzS9lF7pyiscOrik9aUBl+DPyaH0K8WzpofzhapnXXfPU9vF
         T3xXhnWlgU3gC1Txq+sB+94EiEpmjCP5J6oVIiajAZhnzQh08w1ZjxqEm0dc+wnQpeQk
         d9ll0iua/smJ9RFliELpIptggXYToOAZBToONoiAsBQjnW/PU7srIg/t0HlHcYpGPh/N
         X4wYHWx3Ic/Z/EeGkbrO5jJOBZHvOKUSaVH9BWDGbkNolZ5r061wwB+MoYn1L6cMFdBl
         YnbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TvQSC5X9vTcZkOP66NgOg7owX0RHKHn1QOU7Yzx0kPQ=;
        b=gHo/EPvai5CEodqK0wOt88rHD2KLno5YL2z4HYwGgFe5CNhPw++AkWhg+of17h0P5x
         fAGefZIMJUE1XfOaSStTGemKsrUX68PRXou5qGPiSVjW5s+EAvh9O/ySk0PUEv5PrKsK
         gfTcjsl38bVLiC76j9xp2HSymPlhE03UZFRCjRnorCDLW2AA2Hi81hq6pnuWh2ipwIDf
         22h9Ju5Z3aO9x4IpCYSXRPxmCaca6keVmv6y/7HSQEHh3V8ssFRLSwu4hc5GGaKNEp6z
         QmqM9/ivYHX9fH3z+akl02nFt0fA/jriJI6ymtFJMWHhnQyOLMvhRV44qJHaHAcpX6Pv
         lzeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=M1HwRS1G;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a10si259593ybc.1.2021.04.19.13.44.46
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Apr 2021 13:44:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8C78D613D3;
	Mon, 19 Apr 2021 20:44:43 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Andrey Ryabinin <ryabinin.a.a@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Alexander Potapenko <glider@google.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	kasan-dev@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.10 16/21] kasan: fix hwasan build for gcc
Date: Mon, 19 Apr 2021 16:44:14 -0400
Message-Id: <20210419204420.6375-16-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210419204420.6375-1-sashal@kernel.org>
References: <20210419204420.6375-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=M1HwRS1G;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 5c595ac4c776c44b5c59de22ab43b3fe256d9fbb ]

gcc-11 adds support for -fsanitize=kernel-hwaddress, so it becomes
possible to enable CONFIG_KASAN_SW_TAGS.

Unfortunately this fails to build at the moment, because the
corresponding command line arguments use llvm specific syntax.

Change it to use the cc-param macro instead, which works on both clang
and gcc.

[elver@google.com: fixup for "kasan: fix hwasan build for gcc"]
  Link: https://lkml.kernel.org/r/YHQZVfVVLE/LDK2v@elver.google.com

Link: https://lkml.kernel.org/r/20210323124112.1229772-1-arnd@kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Marco Elver <elver@google.com>
Reviewed-by: Marco Elver <elver@google.com>
Acked-by: Andrey Konovalov <andreyknvl@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>
Cc: Andrey Ryabinin <ryabinin.a.a@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Alexander Potapenko <glider@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 scripts/Makefile.kasan | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/scripts/Makefile.kasan b/scripts/Makefile.kasan
index 1e000cc2e7b4..127012f45166 100644
--- a/scripts/Makefile.kasan
+++ b/scripts/Makefile.kasan
@@ -2,6 +2,8 @@
 CFLAGS_KASAN_NOSANITIZE := -fno-builtin
 KASAN_SHADOW_OFFSET ?= $(CONFIG_KASAN_SHADOW_OFFSET)
 
+cc-param = $(call cc-option, -mllvm -$(1), $(call cc-option, --param $(1)))
+
 ifdef CONFIG_KASAN_GENERIC
 
 ifdef CONFIG_KASAN_INLINE
@@ -12,8 +14,6 @@ endif
 
 CFLAGS_KASAN_MINIMAL := -fsanitize=kernel-address
 
-cc-param = $(call cc-option, -mllvm -$(1), $(call cc-option, --param $(1)))
-
 # -fasan-shadow-offset fails without -fsanitize
 CFLAGS_KASAN_SHADOW := $(call cc-option, -fsanitize=kernel-address \
 			-fasan-shadow-offset=$(KASAN_SHADOW_OFFSET), \
@@ -36,14 +36,14 @@ endif # CONFIG_KASAN_GENERIC
 ifdef CONFIG_KASAN_SW_TAGS
 
 ifdef CONFIG_KASAN_INLINE
-    instrumentation_flags := -mllvm -hwasan-mapping-offset=$(KASAN_SHADOW_OFFSET)
+    instrumentation_flags := $(call cc-param,hwasan-mapping-offset=$(KASAN_SHADOW_OFFSET))
 else
-    instrumentation_flags := -mllvm -hwasan-instrument-with-calls=1
+    instrumentation_flags := $(call cc-param,hwasan-instrument-with-calls=1)
 endif
 
 CFLAGS_KASAN := -fsanitize=kernel-hwaddress \
-		-mllvm -hwasan-instrument-stack=$(CONFIG_KASAN_STACK) \
-		-mllvm -hwasan-use-short-granules=0 \
+		$(call cc-param,hwasan-instrument-stack=$(CONFIG_KASAN_STACK)) \
+		$(call cc-param,hwasan-use-short-granules=0) \
 		$(instrumentation_flags)
 
 endif # CONFIG_KASAN_SW_TAGS
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210419204420.6375-16-sashal%40kernel.org.
