Return-Path: <clang-built-linux+bncBC2ORX645YPRBCNQTGBQMGQE2OHKMBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 295E0352396
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 01:32:27 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id f20sf4087543pgj.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 16:32:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617319945; cv=pass;
        d=google.com; s=arc-20160816;
        b=ASZSCZEvhQhRXifyC0vaVkv8O5jXzbExq2EjI0fxfhS0NmTskDEF+Xu42m61REvmzp
         uDqhneIsU+EmsLF9PVGqgou9xUX4wWlpYC86v7OEj50yc5GTbf1tzmT75uorHplxnpqo
         NlIONkD4Drf2tkWBaL3vMsG8ObUCM88+wvg2igpQLhTp/lJxJ87kos/gTSO6rpAt/zay
         oF1pnpscm8cK/TGofKkyOS9B91R8PUNtTZ1Ruh3HBY5B5Z9QtmnT0snV1RsCp+5TeocP
         zvsltzFmptTwGDvNea1JXnQbHg5HrEZgJ6eP1zRz3XRMkTeqPp15kE5/MCn07ExJFp0U
         7GEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=112iAIz/awVogvWzVaq6qItfCqbXAyFxPAIE5FqWmYc=;
        b=RrW3ntAuzNHfGQqfOi774eFKB3THum5eU7gsxZ4tXZie9/xgwucDAifD7BUWMMnclA
         BGus227l4EcuI/WTYqZJ2plaXoUbZbr/UyRNG6CePAZVLa9HFFIu4mwmGw1HWf9mOtBC
         hV1D8ukp48T2DshSYRmpIqD6+v0WaXV2JpdZv4HDwOBlDuu4ZPjFLO3e9fVuth7DoDm1
         rQrFogU0AbgS0o3aejMgNWF/+aWp9wHNm9Pd2fVIw0me/mzrTQVISsEGBp8sIzedlaA/
         23WY+7/42xI4/9YSUwRY/jnqbqEhazBZ8n/A8FqF8PQAVIxFhq/cCHSDcEWijIfVd0w5
         KA3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Rkz+baug;
       spf=pass (google.com: domain of 3cfhmyawkafsl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3CFhmYAwKAFsL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=112iAIz/awVogvWzVaq6qItfCqbXAyFxPAIE5FqWmYc=;
        b=NdEq/88hLEr6xQ3Po4F13pK5m8w0wF16WsMJLBfJBG4+q94cQFOiqETotozHEwO2g3
         Z/qRmM/t0XWOtXDFyCVTWSfKH8D3iDM1OvDFf4su8GYNZEYA5+shYIQAN5EuWKtv2sNF
         UxZAFDWVpPJX2V5oE5THKYyviPV/vUB9Enopv88YtbrIR0VU/xfyS2jF+yP5TS2f5KPj
         HLB280r5eSCfEomajo37QC+htRlbGzQU/garIWId70j7LWIofnJwD1e1iwc8F2QXNmCH
         OLlYNPBneMhpoFWE4E/lRYvGOwPDuBmoo53hSlqgGBHL6iPcdIhTOYDp3WiOR8QqKGGg
         0dOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=112iAIz/awVogvWzVaq6qItfCqbXAyFxPAIE5FqWmYc=;
        b=VkWAz2QF+tAo2rU5oje5PJ95W2rSyxPwuIQTM4VmnZFmhN5ge5A9gFeNVpLtpBsuI7
         c3dgsgDioaslNm6JW17z/5ed1paIwB6sGBxGvM6XFPG39jZsaZsvYGJOSPYQFvPk3swP
         3pUqvPEhw48L5QxHbBB3IXyPF/rWWnP66U64pgkB1I5wnykmforwjqT1m2DIwEMBWcUq
         Wg3C+6itna/oCC5gGsWrupBEZgD4SjpzKJQriihiXyiJDljChdI5SaMRFYnog8Mn9tSh
         5Q6lTmm35MGs920t3lD1hbq8GY6JTyFAWdGJausiwWn8kaE9TXZ3zNnNQe6Un8MmlzAm
         jU2Q==
X-Gm-Message-State: AOAM533dCRvKZFk+RPXRinSyV57lrDlUZHLvowDR2NUrQvrBMhCwuJ49
	eM1xcY1IYmk3r3KMznFxK4M=
X-Google-Smtp-Source: ABdhPJwKsRn88RiSysNSBYbMUol2SVk+tB6NJvB8Mh1ACUpLwgJwqKeBkE8g4e2IbfFowSrxu/quoQ==
X-Received: by 2002:aa7:858e:0:b029:1f1:5df2:1f70 with SMTP id w14-20020aa7858e0000b02901f15df21f70mr9643407pfn.46.1617319945765;
        Thu, 01 Apr 2021 16:32:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:31cc:: with SMTP id v12ls3477540ple.9.gmail; Thu, 01
 Apr 2021 16:32:25 -0700 (PDT)
X-Received: by 2002:a17:903:22c2:b029:e7:1f02:434c with SMTP id y2-20020a17090322c2b02900e71f02434cmr10149542plg.73.1617319945169;
        Thu, 01 Apr 2021 16:32:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617319945; cv=none;
        d=google.com; s=arc-20160816;
        b=gRc9tWqxJ03w/toMTi1ZI0a9WHXqqAARyaP9bMYa4dzkc/9gP9vkzLz+BFQYJu7Yo9
         g7dPMrxSL/mzKPxLoHjedXCRC8bRXP5cSNDL83+xYRK43TEvTtTYYxGNAbPyiDOyqimi
         82J4GYz41gC4rfShNlhmwzdmAqBdtQ5iT89U6CMBoMN8EQjJ//peR+0ek5M6vOu9f8fd
         tID0bxxBcDdKtfAjK5mY8ZHKTQBE+ThK/6AW7p5pytB86pCMAglZlYzedAyPHgRy/4K1
         M/5f1XcPDBuqjJw1Z+QrLh9icclVvW9iI4e/AMRC6EWDKAajvJDUFC4J1w5d8V6rVpu2
         YnoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=MkcfzR92H2jDmq2d4RL+VoRfm9LM05H88oYR/VzcB5I=;
        b=GqVgfxbXvG/GAjUzKOfL2s0PjupnJMK5cyU3rXf55sAAF4/6T2qPtx26VWRcCob7vx
         8hreSEbug7xG44LAhDO9whJl5uHH416jp94i89cfqU2F9dcjiqSaETA/lnnL6RjQ4bng
         BNymJdxT0uNKXOa8ZNRJST7hD0rGs7OWHjoiwKrakFMpCtA19J7e5St9TzwI2T4D4Amq
         eWR+fxOxNd64RC+wNWs6EjFpMWLFs6onEasg1aLEz5IVfBX2xLWZy66gyfz+cTIbqOte
         Elx6fVgNqZQRdRfS0aNX4OEin1gZbnE+tjKgymmtsrc2bvnbWOWrhGS6Wn8uCKRFNndz
         Tgkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Rkz+baug;
       spf=pass (google.com: domain of 3cfhmyawkafsl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3CFhmYAwKAFsL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id 131si566944pfa.2.2021.04.01.16.32.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 16:32:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3cfhmyawkafsl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id y13so7391052ybk.20
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 16:32:25 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:4cd1:da86:e91b:70b4])
 (user=samitolvanen job=sendgmr) by 2002:a25:d045:: with SMTP id
 h66mr15244938ybg.138.1617319944327; Thu, 01 Apr 2021 16:32:24 -0700 (PDT)
Date: Thu,  1 Apr 2021 16:32:01 -0700
In-Reply-To: <20210401233216.2540591-1-samitolvanen@google.com>
Message-Id: <20210401233216.2540591-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v5 03/18] mm: add generic function_nocfi macro
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
 header.i=@google.com header.s=20161025 header.b=Rkz+baug;       spf=pass
 (google.com: domain of 3cfhmyawkafsl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3CFhmYAwKAFsL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
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
2.31.0.208.g409f899ff0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401233216.2540591-4-samitolvanen%40google.com.
