Return-Path: <clang-built-linux+bncBC2ORX645YPRB5MWXWBQMGQEX6SLHFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5B1358C3F
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:29:10 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id b1sf1638980ils.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:29:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617906549; cv=pass;
        d=google.com; s=arc-20160816;
        b=ou/pY26Y9aOdT55f1xWQcTcsD1rqIWvqVwyHYMLi2QENmnfx55WDLydiM/rCNlUTms
         jQ8UPGHRoDFDSQBRWnQnC+ueLt1yuDk4o66mXqwj0OvTb4QURLTyUNnaf24rzGx1ITNK
         AwN28wGbxZlmsCZny/9Zo88zMpUyUidu08lUKYtj9BjwVGM/nHzQHk0OyRqVOHoNhSJn
         qFKWAztadjS2DCkQ4EibTNkKYFMmEQhcsSUA/djDLjTImTI4AJT62V0Qhg3Ut39uay2J
         I8EzemjVZ15AqcyUZbGaTgcA9FxFZLu8vyz5IjOBNJV8nZEntc4fk3bgYeofoNQ4bBbD
         Nh3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ZPz2V1ECAzDn/fpRgbeG/7WQwEICAZzuZn6Qjjq7uNI=;
        b=XFF6nkBWe6gOU6ybgR6fUYoFvxAPbFA3cvIzgnrPNECjoIjcOz9seCvcsS4Bs+6GVA
         TnrTiJgTEftfyaCRCgbFi04h3U4dH/p+o97c4uxl0Bxu+wNkOvGxvn3rz1Wsu3JNkodg
         UtsxvSpqdA+Q3UxRUVH5Uc5ncSw04AmjhNAI8KK7a5+FlO7pC07L2CsUrSsNCJWq5SNS
         If+S+5E6iTDMtj+NNEGUjIvj9x8aNWKbQ+wz1cr9WHQGaLrP21QWce1GKrKWKdHIuuC4
         1eg7E+H98y/LkOTDeY6Gtsj6ow5Ylm/mFQyIGEF+F8yh0u/2RQpPJj9szrdl42SKJzs+
         ZhIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uxzGce9H;
       spf=pass (google.com: domain of 3detvyawkanefx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3dEtvYAwKANEFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZPz2V1ECAzDn/fpRgbeG/7WQwEICAZzuZn6Qjjq7uNI=;
        b=m8cN7h2A+TgbZ+aJKrIb526i4nyBPyU3r5Z3/XOdIfInA5Gp2rquvEygfmKMQdiibj
         4J590hOFzEZZQ/K5kNkGAuvthV21IokEydHoL2Velc2QVHjmkDJJV7RYBG4jYnu7BcTY
         clw2FSp5EnCGZaA9pSQQ9zLG9G1OVw2PKuFi3hLIEsUNEvHgoQmvAGb1kGm653AWnZyp
         QWAp2oTppMKux/E76NClCbx2ObhCmlBx3ZgogNZx9m0s026WCM9vC8On7LiBeDkn8iM6
         1Y68lKhzrsELksxmyrz8L1Y10WTcJaL2tpavShxBALZK7+lwJluUjWr6gWPwDZx2LAzV
         geeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZPz2V1ECAzDn/fpRgbeG/7WQwEICAZzuZn6Qjjq7uNI=;
        b=f7Ob/5SfxMVzsFWb+/IiJZqgLs8E+ktJz6JPb2Fjmk3GoDetfa7VKCgbb+88Wr5urF
         yz0GwUduHcCwUi7dLYD+jiWN/lxtdHwEBsDIHCy2ls5Tlp9HQ/OJnZ52gOy9yiZPWk42
         HsfeAtgqKXsibn+4lhMQ2CwySInVL6sMUxuro/rEz6Is9uYjID2RpZS3e2uffMzaXGCF
         PROeEtnshaRMXuUab3oTNJfLfFnU9VgypYQ7pPMhrehUcDUL9bjn1HFu6orqEk1iWmx1
         WhLxmgxTSs8FVdBtr1e/Aifi/E3YaRAd8INXpVDCGnqKFJZcl81W3naY26cOfbHqsm1j
         sWGw==
X-Gm-Message-State: AOAM530YXzzk3rosIhJQcrT8JapM2NkyH2RlJwnUSW3r5YRpGrWo8np/
	410QmP3sCJMWONHhFhqJnBU=
X-Google-Smtp-Source: ABdhPJw0YcmQVl7kf6iX3tEZ2u3St2MuTBbTEOz+H2FsToBKtYym/SN6q2CDIVgnQHzxkXDcdSYlBw==
X-Received: by 2002:a6b:8e0d:: with SMTP id q13mr137802iod.63.1617906549350;
        Thu, 08 Apr 2021 11:29:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6a02:: with SMTP id x2ls1017846iog.4.gmail; Thu, 08 Apr
 2021 11:29:09 -0700 (PDT)
X-Received: by 2002:a5d:878e:: with SMTP id f14mr8090376ion.176.1617906548982;
        Thu, 08 Apr 2021 11:29:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617906548; cv=none;
        d=google.com; s=arc-20160816;
        b=Unx25BVfbgZA29+u4KdN5YoZDhVb8RoWqFaUIBYF4ljX+SLxHb4pYsHpeSjARHlnPU
         /XCFSfW4xRDjmwhvVxmGKA0emeCFo1lPLvf+j/i3vPcFa3/E4oSVKWFiFsKnBIFYOM7T
         ppqdzGx0y5cuU2O79w3D9IP5udUHHHmtQ6B4WNrA1dnkfiNawmuH9ujA/MQIhNLTSZEN
         mZ1YMNwdE2AW3Gy+flt8/WCmNmCk+xNIJJPJUSL2oKMQNR8Begg2tg756i+YgXnolGpX
         dWWwZ65PxUlMYRmmbxBjjO7tlQPzoFgdvEH6puaCR0FiYPG/o+aRJx+NybRsdKfFzwSS
         VsHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Rfpjk5lcXiQmXeSx6i4pVVD3rq5mJRtqi0n+qpZr8Ec=;
        b=LHa6+k9tDk43rFSPRT60WbCXWGbQsaV45/JHe/TuhjaHduTxFOay6YGrN7VnIYCyxS
         ntrJHvlRsZOuTCYhBCLg7i+9WFWtukIoTaIYvFcAiMcESxHO6z3xDpPs0bNvfZMuraZn
         9ipOUaGccbImCIPtuquDPJBLt5jag81ZbHfwgPhfmnLu6StRLumy0lBS5stHGyXohTvm
         9Mg4viQ+7Q/8TJmCYangft5ulamGh9NRHbWi+b2tRlxeLV3Np0LB1d2f1q6B6S1xVm3T
         TrkoB13yCFYh0e2IEa6Gd1u543xKeqmdCo5T0Vzi9F5B2fxDxUOnSELVhZIZanbyKY8+
         wRng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uxzGce9H;
       spf=pass (google.com: domain of 3detvyawkanefx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3dEtvYAwKANEFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id x7si9294iow.2.2021.04.08.11.29.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:29:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3detvyawkanefx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id g7so1638938qtb.5
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:29:08 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:3560:8505:40a2:e021])
 (user=samitolvanen job=sendgmr) by 2002:a0c:e84e:: with SMTP id
 l14mr10480012qvo.39.1617906548385; Thu, 08 Apr 2021 11:29:08 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:28:37 -0700
In-Reply-To: <20210408182843.1754385-1-samitolvanen@google.com>
Message-Id: <20210408182843.1754385-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210408182843.1754385-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v6 12/18] arm64: implement function_nocfi
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uxzGce9H;       spf=pass
 (google.com: domain of 3detvyawkanefx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3dEtvYAwKANEFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
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

With CONFIG_CFI_CLANG, the compiler replaces function addresses in
instrumented C code with jump table addresses. This change implements
the function_nocfi() macro, which returns the actual function address
instead.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/arm64/include/asm/memory.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index 0aabc3be9a75..3a6f9df63606 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -321,6 +321,22 @@ static inline void *phys_to_virt(phys_addr_t x)
 #define virt_to_pfn(x)		__phys_to_pfn(__virt_to_phys((unsigned long)(x)))
 #define sym_to_pfn(x)		__phys_to_pfn(__pa_symbol(x))
 
+#ifdef CONFIG_CFI_CLANG
+/*
+ * With CONFIG_CFI_CLANG, the compiler replaces function address
+ * references with the address of the function's CFI jump table
+ * entry. The function_nocfi macro always returns the address of the
+ * actual function instead.
+ */
+#define function_nocfi(x) ({						\
+	void *addr;							\
+	asm("adrp %0, " __stringify(x) "\n\t"				\
+	    "add  %0, %0, :lo12:" __stringify(x)			\
+	    : "=r" (addr));						\
+	addr;								\
+})
+#endif
+
 /*
  *  virt_to_page(x)	convert a _valid_ virtual address to struct page *
  *  virt_addr_valid(x)	indicates whether a virtual address is valid
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408182843.1754385-13-samitolvanen%40google.com.
