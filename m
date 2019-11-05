Return-Path: <clang-built-linux+bncBC2ORX645YPRBO4YRDXAKGQE7LTDXJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id E6020F0A97
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 00:56:44 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id s8sf6965038yba.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 15:56:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572998204; cv=pass;
        d=google.com; s=arc-20160816;
        b=CLLOcfpYr7PSv8tssTjS5HjPfZPQs480HpwILNgptOI3Lbfhp4rlHr+VMeogY3XGJ9
         o+pN4dY5fHhT4jx5XGvpy+IvLIMqta6Vg6F7KWYog345Mhy+8eRX411sQUWxyYPJjk39
         9CtwW7yzNoee6fr85w7A/XDU0cXA7UbFNIIg4kUODBnOdGwyyjkFKVE0g+O41utxXU00
         DgGedciO8+mmr2gh3dY+YH39KfoeTVHFF1fTUwxcT8VyhxUwtnNj3MABx312Gt44aBPc
         aNCMeBGtwfO0cm4owTnOXZsqzoihByTChTF+p/n1B/NKKmBTNfduEsvlyyxXKa/WUq6l
         MNzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ujBdwnj4FtOMKhjo8XXH1bB08UCK6dgX4e498rWIp+Y=;
        b=OnyEkPOa69Jkb80XFbVIOU9ho6N+BLOB1jbTy7cJ2+mcuM1IAtELL0KgjQAbPbY/jo
         ZHmEDvIk508mer7I9VHlAF/2PAXDToSzvEanJSMmo21DnV/bYaMxwTfKOEYv8dtka8Cx
         2O/jTJ2N8DQMsrEkqkfNtUr8kMb/20H+M00THxAHPLLJt/K1ix3r1r7h3n964JSNkwpG
         CBQAkUspnLIFiyZ215Eab+VBmWl0dUOABJqy99oDsVrEhSUrQVrf7Rdd7LfhS5wxJsRG
         2bDt1b44jZREy6y2UAC+uH33TyX/GwStRrTftUP6XhqBfiRVb9zc7zKj5Vq5NeKEPvEJ
         3Y2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jWGQrW7g;
       spf=pass (google.com: domain of 3ogzcxqwkae89r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3OgzCXQwKAE89r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ujBdwnj4FtOMKhjo8XXH1bB08UCK6dgX4e498rWIp+Y=;
        b=TYJS7R8igL/reSiB3qbBckbcL8J3N+3YHOYPzzsQ9QJXfsRoplAI4PaqbcXs7OJv4e
         p10hdM7SzEWdX2RwJfkd2BcnBb4xW72KIGw0E45t06ANu0rhOFNX5k8GXl3rt08U3D+w
         TIgL3mOPQFTOxr1Tvqk6uy5LoEFEt1aBKwi5wDs7Y2iIERRatV3VZurimbkSaj9eI5EB
         TBj5sfdSf0oFe/PD3O1m3v/oWlMa+50C1XkEamc0uT81m806O7w03dV4rljgfBXK+sn+
         6jGNowWMQncu9gQCVlQC7widF0zBcRE7X6aQVvHpOsE2WVVw7skJcSTWcIE5b9NoSZXU
         vgdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ujBdwnj4FtOMKhjo8XXH1bB08UCK6dgX4e498rWIp+Y=;
        b=Z9zYRosKgIAKKOQrU8l3hS+1nS0ojMYkzGbDxxhBuT8HsWgzJQ6s85PoWuDvqpD3vF
         wydxy21J63rx0IH0bfn/9uiAzCGqoX1dEDfkSBQCYKs/OyFB5a13vYyvNB75zytZEHKf
         6YorFJW9+fJwUr/vpvWzpRU6p5Pgx943p2kdFstEJnu/nUIwjIQmcsXUqaRSKzf5GYpM
         Nt9N7nF4CyCsyqBhJLazO6GdA5bdl2cJE6u4SsrWL96LqrX+3TM05BdHukHINx2j499n
         8z9ny9znIxeFGSeGPrUBb7H7Ra9N0GvQ49SHzTyh6xHyKJ/d6BupnhiM76mVSVOV9LSE
         6qzg==
X-Gm-Message-State: APjAAAXvwvM2Qx93GK+5ed4nDY+nkJNDZJBsEmIGObCPV15WsT8TOclx
	vqCUtBljP7ohs48GSvhqyuY=
X-Google-Smtp-Source: APXvYqxJNrtCHGBcpu77R+WDaJY+KbZN3daTRj70Feyog8Y0+fYdKRtzLiqdlg0ReB5mIASCRpSA3A==
X-Received: by 2002:a81:5794:: with SMTP id l142mr7574761ywb.107.1572998203883;
        Tue, 05 Nov 2019 15:56:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:edc1:: with SMTP id w184ls73444ywe.11.gmail; Tue, 05 Nov
 2019 15:56:43 -0800 (PST)
X-Received: by 2002:a81:7606:: with SMTP id r6mr8063900ywc.418.1572998203486;
        Tue, 05 Nov 2019 15:56:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572998203; cv=none;
        d=google.com; s=arc-20160816;
        b=kcD86RkSZyrjguEaIsZwDXxGc2cGLwOtlWWLVDMYp80Sxm+YYfOzhAr+5bGgKpCtqu
         GR0hk0owXZoFP/Tc6KcdPLDxc7H3e2YhumRmAoTQH7UdFf/vUTZej0E5BRas7kmvOQBU
         brs6LV3fAGr+MtG3C6T5PrAgI2Pv6lK+DW51EAsJaT4HuIj249Nws+EnmjRQUzpfcsiv
         b94SGQLQ0aRLZArPAWws2J5OOky+dC80i09OAy+hsYf1z0jPkbz3SlcirNq6RFlUmTUI
         9/ymWoRNqHs77s2FpzkEC22NVuJDMzx+/4QUus9S8Led0kJXRfX8gAzIb1mgLfevP2/R
         TLfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=uzQ8cGBP/iiy1dmy29qxsrkA2y8A3VyyoGWk/X1qxUc=;
        b=JoW+YN0JMavJ94qcC3C5enFjaiot95PMmM1Q/wA4xKqkwzmMRlPTt73CkHYMaRENW1
         yMUmmh+fEnK9sRpw4od7QTvDcLbKaBRN9MAxuD5MN1VJgIS1lY44o/9Z6CTCuWRbvcQg
         LvM5f78IY0p7mgJsa3OlvAKVl9TYEwrTSb+Z+3UkIu+/Z7OsyVksCatms0HGW2lZ8/NL
         5CCr1PazgeyiygT6oXwf3v/RAzkPElYp0hOdNmFeH5SIyB8DyoUgNUZya9AZSLLNMSlO
         bR6mvQ6UBClVQwMYb7cnwrfv20e4NiSfuwEs+isAFogMhRpSlfzcX+V9A2MTNf0B+02F
         kTXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jWGQrW7g;
       spf=pass (google.com: domain of 3ogzcxqwkae89r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3OgzCXQwKAE89r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id u8si318948ybc.2.2019.11.05.15.56.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 15:56:43 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ogzcxqwkae89r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id m1so4990473pfh.5
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 15:56:43 -0800 (PST)
X-Received: by 2002:a65:5382:: with SMTP id x2mr1469482pgq.420.1572998202872;
 Tue, 05 Nov 2019 15:56:42 -0800 (PST)
Date: Tue,  5 Nov 2019 15:56:04 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 10/14] arm64: preserve x18 when CPU is suspended
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jWGQrW7g;       spf=pass
 (google.com: domain of 3ogzcxqwkae89r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3OgzCXQwKAE89r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
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
index fdabf40a83c8..5c8219c55948 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -49,6 +49,8 @@
  * cpu_do_suspend - save CPU registers context
  *
  * x0: virtual address of context pointer
+ *
+ * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
  */
 ENTRY(cpu_do_suspend)
 	mrs	x2, tpidr_el0
@@ -73,6 +75,11 @@ alternative_endif
 	stp	x8, x9, [x0, #48]
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
+	/*
+	 * Save x18 as it may be used as a platform register, e.g. by shadow
+	 * call stack.
+	 */
+	str	x18, [x0, #96]
 	ret
 ENDPROC(cpu_do_suspend)
 
@@ -89,6 +96,13 @@ ENTRY(cpu_do_resume)
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
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191105235608.107702-11-samitolvanen%40google.com.
