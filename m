Return-Path: <clang-built-linux+bncBC2ORX645YPRBLHQVP4QKGQEROOXYIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4215D23CE2B
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Aug 2020 20:19:26 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id g4sf21551047qki.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Aug 2020 11:19:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596651565; cv=pass;
        d=google.com; s=arc-20160816;
        b=ReTj05F7DT4uQNaDijGeypXV6j4uopsbag1DYPpbHizyaEsuPkz1+Dwo9Zh+set9jr
         fJ5pAZzUo1OoZjuy0pqskUMmQfkvnRwKuC1xKpp5s4Bkr6Co25V/xkGunl2CH/RCEmJ4
         woTWDRgTju2FkEeeHfp/oIevmbWkAmAADOpE/gkJ3/PsX5MZLFbwae55oKjlh1D/NCUs
         jkbIVwMzF+AYV9b3J9/bon7QxcdQoIWHxmRBLxFxeiu7L4mWz79/UIQN7bm6VTG5HqWD
         6pbbcGpHL0ZxgitHpz5aoWSxxpXBp+76s2WdnAIgAR/p6mv6UWLWVpn2qRgHrlstz02O
         gINw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=YqyDZgUxiyPoplYiDx/J7gdGmNh0eQgqCTydmJGS0YE=;
        b=iFRDJfLv6r9tZiRZaaEv7C7BXR4VWkco07IfNwv1HG/7Y1IDAbbsYtVMz4eOiS/mEe
         F7LMmvtJBisbxGUjFHStQy4YHj8gTp5ttIOPuNKjDOYRSb25jpv+JMbT1PbVrZybi9pl
         Q4iV2l/20ahJuyXHGSk+/E3bO2Lb8+YJrt5miVeYwSWTsS7D4fQPrEtacuvJlZiSDwUi
         gKtPu1mURbV8+BdaGFdt+HYwLZrqJKXTB+EWm0VLoUl0E82JjWJXMM2phXbaUZeaTlyY
         tYoRN65lsQyW5cKv5u/yrIC/cb+2HMZua8MZgDHKYdvydsU15LTCaQUU4fuUF36ZKJb1
         oq7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b7usL0VO;
       spf=pass (google.com: domain of 3lpgqxwwkamc5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3LPgqXwwKAMc5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=YqyDZgUxiyPoplYiDx/J7gdGmNh0eQgqCTydmJGS0YE=;
        b=scF7MG5c8RwPMSQhrZLNWpgORmJSztjTVDaZyYa2a5ENo7lKZ0nYoNSt7/cnFeXam3
         Z+JZt0SvKELFW0DujGPkLX/kJZuMKZqnB99tVTFJRMiqMtvyx2h7lpwED5Z4zkPbAq8N
         NtOI7HBDkhT9ljEVehagl7sUHYI5SesfysfXbzl7/8KGi0BfOangidiuSI4BKIPrmf02
         FOHHG4rgmIV0/HYfYDsWbwgT9ORqLcbhMohr/0vtXR4h9zRpsfXnxw8CrqFYjCTRaZJ4
         6kkL/U0nDFLlB/S4waG+QJi1q2bjXt3jbYm1qrbAxlkqsxL6VneEhrjBEx8HKLGvI+6N
         IXQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YqyDZgUxiyPoplYiDx/J7gdGmNh0eQgqCTydmJGS0YE=;
        b=RQDwqvh8Jpl2+1PmV9ojVHSW8T7FgrzOHKc72C1kEdXoQMldG2D2sjJbospadTJMLE
         jqt5XKy7Z/3j9LtO7ZHR7nvuONNjt+C9qG0Y18rEeqcS9tG5hAoncyGlKw3pk450q8lx
         zDx6DCBAecXb9wo7jb2sH8lqx3iQKUiNgbws0kOBVmKrf9N62hgVjWyXn9V4zgysarLZ
         rYru4cSwUb7v/jTmgwRF3Yj2oKYKDnkKC2B5IvTXi2NCwSH0OLLA+pv7OhQHd2hokh6j
         Gu83kZDFvO9YACOQVetYO00ZXzZWbKGBPRkGzYfMYTHkIxE0yMizBZAhH/Z4BXaAsCEJ
         IOTQ==
X-Gm-Message-State: AOAM532qw/hDtDu9xmw+/a1lYAK57EvDGDlhAYqei5flcXXJeLgQm0rq
	Arcaj4hsoyovY4hyX0lLees=
X-Google-Smtp-Source: ABdhPJyIR0ffmedjB3FyDKttfCgWYP+/vkjup9pxdQRBLPk6v5b9yDJK4iv3JLis5OqtRdlQCus5cA==
X-Received: by 2002:a37:a64e:: with SMTP id p75mr4636391qke.115.1596651564945;
        Wed, 05 Aug 2020 11:19:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:7d2:: with SMTP id bb18ls778393qvb.6.gmail; Wed, 05
 Aug 2020 11:19:24 -0700 (PDT)
X-Received: by 2002:a05:6214:d43:: with SMTP id 3mr5059991qvr.47.1596651564532;
        Wed, 05 Aug 2020 11:19:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596651564; cv=none;
        d=google.com; s=arc-20160816;
        b=pA9NySD71gw+oECD3F4tYvb7Ipf/SMdlS6i1dVkwzcbmKGpktcImrrtfVUvSuTTCLs
         J+jJAeSeYjK1qDtwA8UE1kUXhfOg3gXPZEWdoi5XgbsbsrW8UJRzNxmTB3/QgL6s1P6l
         db1cjFXUvEMQyJ08wk/kuUmwfBdNoJ1CnOWraj/lMxCcEDm1Xwx/F/anEBFNVam4Hc1v
         60ndcHrKWFkU9x2zGEC7QSy57RlOgQvqZzg6YlUQLlxPki7D6k2j1UkbQj7F9S+zhtIc
         DKhfH/iP8u7YTd0m1TcYz6xxPTddlyYQ/RzhhV73rXaUDbPENy6Jdat/Ck92AiXRD7Tp
         DyKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=uiS4vK1ED9a+VphuuXYAfxefFTXitmOIurQShIFya8E=;
        b=as0arRToCtq2AtL5pV+bCqYDUV5+JuufRh63mtLBsxfZj/9mUtm1LCeDEDGWiAD6N5
         lKGFYampDM/4i3HcGZrMcd2yVGc7hOw1SxVa6YviiM8Eisyai2h8rF6ZHzdCKhHnEvMz
         p+eUDdF5+vL2MVb07ZJkxkfpvo1LBzUPzKP2jw1k+k4HYJEblLitVqPz/dAbvSi3U4ux
         /N1ArgrqZ6c5KgNm2VIO0dVMPeuXKckfhP94OYpIBv1uLeo2GzYyQON42GYujbYsG+6y
         m2WhqJhmf0+m96vuwvwQtjh97Y9OXtm38iEDKBGu/i1AcnGiWOQUwWn+lKSZ0ixQpa0T
         NRFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b7usL0VO;
       spf=pass (google.com: domain of 3lpgqxwwkamc5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3LPgqXwwKAMc5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id f38si98251qte.4.2020.08.05.11.19.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Aug 2020 11:19:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lpgqxwwkamc5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id x20so31576089qki.20
        for <clang-built-linux@googlegroups.com>; Wed, 05 Aug 2020 11:19:24 -0700 (PDT)
X-Received: by 2002:a05:6214:8a:: with SMTP id n10mr5030949qvr.13.1596651564177;
 Wed, 05 Aug 2020 11:19:24 -0700 (PDT)
Date: Wed,  5 Aug 2020 11:19:20 -0700
Message-Id: <20200805181920.4013059-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
Subject: [PATCH] arm64: tlb: fix ARM64_TLB_RANGE with LLVM's integrated assembler
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Zhenyu Ye <yezhenyu2@huawei.com>
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=b7usL0VO;       spf=pass
 (google.com: domain of 3lpgqxwwkamc5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3LPgqXwwKAMc5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
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

Commit 7c78f67e9bd9 ("arm64: enable tlbi range instructions") breaks
LLVM's integrated assembler, because -Wa,-march is only passed to
external assemblers and therefore, the new instructions are not enabled
when IAS is used.

As binutils doesn't support .arch_extension tlb-rmi, this change adds
.arch armv8.4-a to __TLBI_0 and __TLBI_1 to fix the issue with both LLVM
IAS and binutils.

Fixes: 7c78f67e9bd9 ("arm64: enable tlbi range instructions")
Link: https://github.com/ClangBuiltLinux/linux/issues/1106
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/include/asm/tlbflush.h | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
index d493174415db..66c2aab5e9cb 100644
--- a/arch/arm64/include/asm/tlbflush.h
+++ b/arch/arm64/include/asm/tlbflush.h
@@ -16,6 +16,16 @@
 #include <asm/cputype.h>
 #include <asm/mmu.h>
 
+/*
+ * Enable ARMv8.4-TLBI instructions with ARM64_TLB_RANGE. Note that binutils
+ * doesn't support .arch_extension tlb-rmi, so use .arch armv8.4-a instead.
+ */
+#ifdef CONFIG_ARM64_TLB_RANGE
+#define __TLBI_PREAMBLE	".arch armv8.4-a\n"
+#else
+#define __TLBI_PREAMBLE
+#endif
+
 /*
  * Raw TLBI operations.
  *
@@ -28,14 +38,16 @@
  * not. The macros handles invoking the asm with or without the
  * register argument as appropriate.
  */
-#define __TLBI_0(op, arg) asm ("tlbi " #op "\n"				       \
+#define __TLBI_0(op, arg) asm (__TLBI_PREAMBLE				       \
+			       "tlbi " #op "\n"				       \
 		   ALTERNATIVE("nop\n			nop",		       \
 			       "dsb ish\n		tlbi " #op,	       \
 			       ARM64_WORKAROUND_REPEAT_TLBI,		       \
 			       CONFIG_ARM64_WORKAROUND_REPEAT_TLBI)	       \
 			    : : )
 
-#define __TLBI_1(op, arg) asm ("tlbi " #op ", %0\n"			       \
+#define __TLBI_1(op, arg) asm (__TLBI_PREAMBLE				       \
+			       "tlbi " #op ", %0\n"			       \
 		   ALTERNATIVE("nop\n			nop",		       \
 			       "dsb ish\n		tlbi " #op ", %0",     \
 			       ARM64_WORKAROUND_REPEAT_TLBI,		       \

base-commit: 4834ce9d8e074bb7ae197632e0708219b9f389b5
-- 
2.28.0.163.g6104cc2f0b6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200805181920.4013059-1-samitolvanen%40google.com.
