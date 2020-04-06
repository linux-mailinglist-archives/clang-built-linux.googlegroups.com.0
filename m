Return-Path: <clang-built-linux+bncBC2ORX645YPRBTNXVX2AKGQE6MLLD2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEE819FA63
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 18:41:51 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id 2sf81753plb.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 09:41:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586191310; cv=pass;
        d=google.com; s=arc-20160816;
        b=MzLh9cc8fPfYKUH532uV74xNkd1T/DnIFxqFFztIu/CGunW+i7zs+1uvI4qem1bCd/
         x++ocJfxFEiHYdhKMJEQ+p0TVndZe8JZQ/R+9fI8mS1ezZMQ4Vsn08oGlQtjw5yIIgcI
         c8l7X7a6rhyFvuRdr7Kv6eue+2HvlK/Zak5qWXhxAspUkylPZCDkt+XYqFxb/YTybpUQ
         ZkNW5NFp5CQSar8i8paIN0M5QNsls9hPXDo1tgCAcpceWUd0tfWjjD5VzKtG/jQUucEr
         pzA+9ssRF/Cmxhe/a5pfRM2B1lRjuRK6phuC5Rt67XavSPxaHxSgxEKg9H2JIAqKldjP
         4UYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=IOa/ZxGr9CXZFXeNYBTSXR58jR9AmEbmQ6GPMm+9NP4=;
        b=G7G8FErXASunKhLOksDN2vgRoTmDOF8oY0aHwgvC1ca8Xg2ZTZnqdSAB+tjnaUbh7M
         fFKoqoi1KVOZ0JsdO3zWK8rJZROX+WDu+Dqg7w+UlUf+k778WZTVIZznJgVNEp9ZBvQg
         VtxKhV7V77hhus1Y+HZbcrautAYD2/O2bGd8Lng4ELTj0a+2YthYmgsusa2cOMXJ5wIo
         atZQGKMHkjb0l5lkcAQtkD6UPeEJkSdjZGVqbsSdL5i0xurrqwgRK5d4sClwuSpsvmoA
         ZnGgZc8FvQViNg5hNcGiPvwUNfKM7is4MGFgxFFORS2+xAb5yEGnIqa8TgrOqZh6YrJU
         sLDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sZgUXhLM;
       spf=pass (google.com: domain of 3zfulxgwkaksdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3zFuLXgwKAKsdLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IOa/ZxGr9CXZFXeNYBTSXR58jR9AmEbmQ6GPMm+9NP4=;
        b=VLPvncE58pH1rP3JsS70F2XPtirG/MIS+6QRLp06fPMBknWrpuySzKdmGmOm8I7a2r
         RkNBXmYaLQmSJmfi7f785o9SOGV/RjznIKS/MhF2U59bEZwqZiNl2msh0IpWlo7He6fB
         F7DyFobIyr+Jf4ZklANyzfCbSroBPMwZmr8+7J3WMb28tkmK64Er6NrhxBnYrDCAQicl
         HC92V5EmDQElk/vsrdtM8Pfo6ooaNIyHfmJB7IKb56be4OPX0uu1pEMUGa311iRmfm5/
         7392oveXjEBJeTv3hVavG4INtYdKLmuh1c7+vwZADsnZIjnsJOxtWVlDDZk9GX/Wp/UQ
         KPfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IOa/ZxGr9CXZFXeNYBTSXR58jR9AmEbmQ6GPMm+9NP4=;
        b=RW+XM8t8iCNu5sw9PSthltjX+tEJNQvsagVTW9rZcKanwAsaCeNKoqBUKJdrmAJK/G
         upWR8pZjn0iI+VX3YsDooOt4w4dCuHECWefQth9okELnhVaZ5rWnh54OyvIsfFlm5Bcm
         Ww10QRzjVLezpV/t6PyNP5+shCRx90A23GVCnWg2+LhTgffkmspmORcKXD2UIvPfKUf7
         T2UuAx6solZpieqeocYzQy+CdY03rmEQsvJkVLiNTlw/cuanjvhPuAqX0jXIC2mAVTts
         akVxrVUX29m1YXZhb1JYEg8hFzvOYWKEpD/qHZ3eWQagPxOlXvMIXPdjDqsb4Mg2ChZj
         adRg==
X-Gm-Message-State: AGi0PuamqiCwLhEGi3KjG/qECYtaw87T32Dio8/Y8PeUhWFjWdSAlBgY
	Nmg38KE/it/x65n/kuFLiSo=
X-Google-Smtp-Source: APiQypLwZFuAwai+xUyDlqqC3j1/M0bcXW/nPhvJB91JiETJbTEjjzJc22YTVlnGgV6+9KFPnsGbZg==
X-Received: by 2002:aa7:9a01:: with SMTP id w1mr321813pfj.256.1586191309851;
        Mon, 06 Apr 2020 09:41:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8488:: with SMTP id c8ls104541plo.8.gmail; Mon, 06
 Apr 2020 09:41:49 -0700 (PDT)
X-Received: by 2002:a17:902:b682:: with SMTP id c2mr21600674pls.36.1586191309218;
        Mon, 06 Apr 2020 09:41:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586191309; cv=none;
        d=google.com; s=arc-20160816;
        b=fsoWqEH3MZh9a02Jbij1MX45XHvgpbOw5ghQZAV4fVKpzySkGGoRHB0JoJ3ylXk2wE
         y4w/mGISaqIcMImWFesdqHH5WHJqxBfx7t6DeDTKP4CArNHAQPuuBOEmGUtiOOir4pCS
         MCH7PEFNkGIJ7ssmr5vgKS5CHkTfJsbbK9SYTXc0Uhk9za6/XBlaqJSKVf0iQHujwqgS
         L0K/k/bHF8HsD/fOyTKwSY5kQ4MngE1rTK5+EXUq/ZgHCOsZGwDMhUmGQciekDuWdAWr
         LXMCjGYVknbpWjsIDPMlLdNnfzJV/7RZap0YJwSQm2m7GmjP3pQMyyAoN+BNkCgDG3wR
         Id7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=FvIJZaGomfz5bQTqJN2U0Xo4/dMI8mtkhTC7egpm8RA=;
        b=vSyoDdAzlq/X6tJwHouYlOC0CSzD5JUFYfHVUl9ry5qF6BNW6V1Zd+R9sa38iKlAlr
         lTc/7Aif56Ytx1VZwEOeCT+h+BGL6jOF6vKOW2iYmgvfdf1ePTRnGy5QbMTjQ2EZ+uwH
         L60dDhyTtCUnZQ7/7ALyjesiQERhikcKAljAI/qsvmyXKEnPnyKFs6/q65oJLkym+qaG
         ACC090av+Pf6z2iMJxIcSJA3cXe/YMK7QfQlrmugI7ardu5as0dk/NeX9TooUy6VZich
         WAQca5I5K7zLmcjH+OE+5ddro7h4dhG3XlXHKa+N26eZ19zE4iUp705W4zOq+L4f/kjh
         fV6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sZgUXhLM;
       spf=pass (google.com: domain of 3zfulxgwkaksdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3zFuLXgwKAKsdLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id 188si44221pfb.1.2020.04.06.09.41.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 09:41:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zfulxgwkaksdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id w16so117446plq.1
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 09:41:49 -0700 (PDT)
X-Received: by 2002:a63:9550:: with SMTP id t16mr19437932pgn.300.1586191308872;
 Mon, 06 Apr 2020 09:41:48 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:15 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 06/12] arm64: preserve x18 when CPU is suspended
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sZgUXhLM;       spf=pass
 (google.com: domain of 3zfulxgwkaksdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3zFuLXgwKAKsdLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
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

Don't lose the current task's shadow stack when the CPU is suspended.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/suspend.h |  2 +-
 arch/arm64/mm/proc.S             | 14 ++++++++++++++
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/suspend.h b/arch/arm64/include/asm/suspend.h
index 8939c87c4dce..0cde2f473971 100644
--- a/arch/arm64/include/asm/suspend.h
+++ b/arch/arm64/include/asm/suspend.h
@@ -2,7 +2,7 @@
 #ifndef __ASM_SUSPEND_H
 #define __ASM_SUSPEND_H
 
-#define NR_CTX_REGS 12
+#define NR_CTX_REGS 13
 #define NR_CALLEE_SAVED_REGS 12
 
 /*
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index 197a9ba2d5ea..ed15be0f8103 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -58,6 +58,8 @@
  * cpu_do_suspend - save CPU registers context
  *
  * x0: virtual address of context pointer
+ *
+ * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
  */
 SYM_FUNC_START(cpu_do_suspend)
 	mrs	x2, tpidr_el0
@@ -82,6 +84,11 @@ alternative_endif
 	stp	x8, x9, [x0, #48]
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
+	/*
+	 * Save x18 as it may be used as a platform register, e.g. by shadow
+	 * call stack.
+	 */
+	str	x18, [x0, #96]
 	ret
 SYM_FUNC_END(cpu_do_suspend)
 
@@ -98,6 +105,13 @@ SYM_FUNC_START(cpu_do_resume)
 	ldp	x9, x10, [x0, #48]
 	ldp	x11, x12, [x0, #64]
 	ldp	x13, x14, [x0, #80]
+	/*
+	 * Restore x18, as it may be used as a platform register, and clear
+	 * the buffer to minimize the risk of exposure when used for shadow
+	 * call stack.
+	 */
+	ldr	x18, [x0, #96]
+	str	xzr, [x0, #96]
 	msr	tpidr_el0, x2
 	msr	tpidrro_el0, x3
 	msr	contextidr_el1, x4
-- 
2.26.0.292.g33ef6b2f38-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406164121.154322-7-samitolvanen%40google.com.
