Return-Path: <clang-built-linux+bncBC2ORX645YPRBQWSSOBQMGQEOVFGCVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDA1350915
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:27:31 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id y19sf2485095ilj.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:27:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617226050; cv=pass;
        d=google.com; s=arc-20160816;
        b=F5OcgyOMTsQdnff6Yp7r3mj3Yh6RPpmi4lgOkWdVF+AlCvvPo117B1XVl1gN4dC6Pf
         7l0kbOP24GxPVWOd3nQR4SVgVxvP0SS4+gcFbh56/n8a5RMOZ6MtJg4gAT7M4/Rij3H5
         ewzvQfGZec6+rJw+2MP+sgnivEBzRxAaDyg93akepsBacrEB5+H7sUEIcWVwsoOs3v5u
         ZE0rwzQ88WGPaKP6G0nR2+40ImFRxV+MCjjEEFB4mMAtuY4NfDMaC5GVOQPcBPPcw5IN
         U9bUCmJM7yYVxQO56uoAb1TLhkHJ4b5ZKEnz2aCL6EWOss2sd9pp0AGWXbZbM8qYPqo+
         vJjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=R5f1KiTH+W/PvQ3qUqfZC40LbxRfYQrldeAIvALnm2o=;
        b=nivv3ghoSfLQqraiDjp5875Z8xJZzf4cdiGUIw/6IgzBACzp6Bbl26laJXuv0q6YHY
         +zEl/dprAzzrzmdy9zbiMBUhiZ73uZzeEcXdzy8jRQ1nwBXA+Rq49ve5e4gxKRcqyE+9
         qCzTt4wa7ooxgiM1JC2xAz7RQAfEdLwHBA4z3U55P3wXDmrjPkPdpUIyOwhjtGd8X84W
         6TIV53njX+RCserLAjlO9ijo2wyNS0f8EtLFwBmynu8nw17y1gsxDIN8H6yhvFn5fyik
         0xp+67e/IOJncX7lggZ8XxTvlYTabk2PykWaKbXRV3EN1h+oyK5tK1rwHE/uFRL2L8QH
         nFPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UKPRZLEV;
       spf=pass (google.com: domain of 3qelkyawkalaiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3QelkYAwKALAiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R5f1KiTH+W/PvQ3qUqfZC40LbxRfYQrldeAIvALnm2o=;
        b=YcX/uVQg4T06MVa8jl79jXYRqFXac/YdHs++PU6fSR+k0JEy99C2pWzVATDjao1og+
         8sBz1iCiA591YihAEyKwondPKHjCZnLwuX4JxeLJ1SAZ369FBjnicQUgxtei6996fbwB
         weorwpVo5I2fslK6Y93+r7pxVBCJwf2s3ARbifk/Asa7fciiy0L6lKU+jgf9mu9bkiN8
         NbyT7d5nQd/2cOvVEHlsJVFb4z04f7KIMud3A4ONgaKMYj4GVuTeH65uI/2k6tL7gQUN
         VKJSPee+WM3+j7RaYVoHn0NElNdy45ZbDf0yIlnfv4mlpKTUURdlVFklR8mA3bQNOdcr
         3eSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R5f1KiTH+W/PvQ3qUqfZC40LbxRfYQrldeAIvALnm2o=;
        b=nXfP/I0Hptg6NUJNB+fBI1DScutHPZIwwpkBqZTgydwQQSD3a7Y1ujpW1kXJBBSEuA
         rPHbKk0O4KoZBGIuoO8tPy3yy6dJ8mruPmPebyLZQyHEsYx9xqqSaIhcjy0P72Ikkr//
         zyFJYQQEoPwWMG9A2iH7OLeiffgfq6GuyF9I0Xwby6E4sxabkdEUiKZbob+7Wh8UhSVv
         vuVck0aOFsnO2EiBLzgDqwJhiLECfgsQJOWBpmRNY/yjuDz3TvxyQJPdrUeRypzo/yR2
         qeQzkooGLF8YPuG6CvYTy31KJlbURn/Cl4BnQNENy+w8KKEP8yWtVvm5AFLwdTzfJbbl
         8vWQ==
X-Gm-Message-State: AOAM533nvAqDnKZZJhHkj/kKk3VUlTtVx/OUsx1ebsH8jcF3dgw7jHVe
	KqqfvPEyyNonvQph2n1adMU=
X-Google-Smtp-Source: ABdhPJzixdbaA9P2466yXmBpYdYPg4BoY9DBo88foey7eioyYmRovg6LXkNq79hWHW7pEmwcYFQmtw==
X-Received: by 2002:a02:9663:: with SMTP id c90mr4875163jai.16.1617226050457;
        Wed, 31 Mar 2021 14:27:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:907:: with SMTP id y7ls784115ilg.4.gmail; Wed, 31 Mar
 2021 14:27:30 -0700 (PDT)
X-Received: by 2002:a92:c9d1:: with SMTP id k17mr1771199ilq.248.1617226050120;
        Wed, 31 Mar 2021 14:27:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617226050; cv=none;
        d=google.com; s=arc-20160816;
        b=Mh2WKWSyIDDtme9erIFC4R7st1DigY1XCkGVeSp51zshMr/NNPlcxYKg7hKYQhMk2G
         L8f6sQaf2bwTvt1btO6Mo+LAAz3Fk9bV8wIxR6VywfKBZhdEj0T/t342d6EsIsXQfFAh
         L7x3phjK+NRkzoInY3iT4HiBLzPI4Rje9NaR/pNJ27NP/XlVmPBdM0rNbvGFy3/4MIap
         XbHgZi/jwQBhqnUBVuol6f0+q8AO4AyhjTfjNU3ojQncLIq96J6y7hAKHWrbBijdGXt7
         Z8BXHoCQQpPP1ptXHEA+x1cX+n+GLDvpXwvW+gGIZhEJMHbb+Ydp9UvBLnjPGVCJBqvD
         WXVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=YGJePCNXceByqZDSpRB0j7cl0450LnSJo98Rt1jHcOo=;
        b=D/woKnXQqxMNTulOdfilmemqBewxTanlcesQrxGIMpQnfNw1dW1mLVS4qdYKlL2cvy
         ZzfaY4YAamQwjEgX4oMv1Wq7e1SGqU9B3shJn4faWIyih14rk6ZnP7QVuVar1yErJlys
         4nvZSOdcgbczmoG9mKPOYLtxHLVi3gi5whYtuSp9mKwgLZijdDvKSVHhDg8SfdwoTgG9
         YmBTRZM7PvQmYGVm69X32E9ZHK0SuV7q1LsZAnw/OBWZWdZ/Sdc9DX73SLH98Z8AK5Uc
         s1mynb1qLAs2FJO+eIkd+B36x5+HkwXJNS/oY1DtJRHcmVewaThJRQ12EGCoWjjIwOsQ
         WpvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UKPRZLEV;
       spf=pass (google.com: domain of 3qelkyawkalaiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3QelkYAwKALAiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id y13si136354ilv.0.2021.03.31.14.27.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:27:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qelkyawkalaiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id w9so3674926ybw.7
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:27:30 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:7933:7015:a5d5:3835])
 (user=samitolvanen job=sendgmr) by 2002:a25:ba87:: with SMTP id
 s7mr7123638ybg.222.1617226049790; Wed, 31 Mar 2021 14:27:29 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:27:07 -0700
In-Reply-To: <20210331212722.2746212-1-samitolvanen@google.com>
Message-Id: <20210331212722.2746212-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210331212722.2746212-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v4 03/17] mm: add generic function_nocfi macro
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UKPRZLEV;       spf=pass
 (google.com: domain of 3qelkyawkalaiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3QelkYAwKALAiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

With CONFIG_CFI_CLANG, the compiler replaces function addresses
in instrumented C code with jump table addresses. This means that
__pa_symbol(function) returns the physical address of the jump table
entry instead of the actual function, which may not work as the jump
table code will immediately jump to a virtual address that may not be
mapped.

To avoid this address space confusion, this change adds a generic
definition for function_nocfi(), which architectures that support CFI
can override. The typical implementation of would use inline assembly
to take the function address, which avoids compiler instrumentation.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 include/linux/mm.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 8ba434287387..22cce9c7dd05 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -124,6 +124,16 @@ extern int mmap_rnd_compat_bits __read_mostly;
 #define lm_alias(x)	__va(__pa_symbol(x))
 #endif
 
+/*
+ * With CONFIG_CFI_CLANG, the compiler replaces function addresses in
+ * instrumented C code with jump table addresses. Architectures that
+ * support CFI can define this macro to return the actual function address
+ * when needed.
+ */
+#ifndef function_nocfi
+#define function_nocfi(x) (x)
+#endif
+
 /*
  * To prevent common memory management code establishing
  * a zero page mapping on a read fault.
-- 
2.31.0.291.g576ba9dcdaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331212722.2746212-4-samitolvanen%40google.com.
