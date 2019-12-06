Return-Path: <clang-built-linux+bncBC2ORX645YPRBQ5FVPXQKGQEAWZMCHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2AE115909
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Dec 2019 23:14:28 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id c188sf223812qkf.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Dec 2019 14:14:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575670468; cv=pass;
        d=google.com; s=arc-20160816;
        b=n5PPi8w/K0U4vur9REU/muFSB35D12GJ86BEKcyVrKmdVbPopCOLdAtO6k4k2MPGFC
         5nogRkgndUBGkxyWbdrJAiMbzgMJWaGQ4XoYw3fEC3f6vzd7Ue2EPi7zdTnYDtLIZRb8
         3QHD10et/FlNjdIa5XdPPg6NXV82MehM+aEeKV++8ZXQfLBrziMbHRxahGZS17Rq/wOY
         RmV9P3Z10CwTuO1Hsd6rL4ESFJeOL7VwEr/zhfK8SPlJNtHIGDyfCrFSOHfkAqbJphFu
         cBvcLSQw0xZer32a9DQj1i4y2FJE3/wO48FVIC5JwVZqO2ah/kpqFHieYHFhygq1Zivt
         d36A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=V25T2yUdZBHyPXZKANX09MDMiL0ksN16w+vGjg3ynMI=;
        b=rG8eOdHVL0tIO5s1dGAD1XNwHEH+YW5v8cL+1fDFobAu1N0tAggS4SJF1qh+whvFFN
         VF8IFtBOfpV9zeDxa+2VsqUf+o5DN5n9XZ2FvC8X41W9xywM606z5KOk0/iv/qKeGXWP
         K8Jl+b7hUBS6P2OBQ/hhC5ZPhyGph/csvB/21Tap3BCIi8o3Zby2ox6b8mVoeSP1n2fl
         xHeNNYS9oWnvBHx8I+3MB94zLSn6Xpxp8Yknfj4NGk3m8M+xwOUXiQdRQ+z1FS4+IXwD
         gy79mPo3lV8kyeyBdZzPYZp/A8RDklXB/nkq9bv8ltxQF296JYHEB7GzZmptCgqxg9uf
         Doyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r3PF25I8;
       spf=pass (google.com: domain of 3wtlqxqwkaak1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3wtLqXQwKAAk1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V25T2yUdZBHyPXZKANX09MDMiL0ksN16w+vGjg3ynMI=;
        b=nEjy0JCm4X5Y5H0nkQhfNgY91wyA3Cn6oHuPG4K/YxnNFS0q179jv/7WWZJfcMy4Gp
         Hgx4XUtYo05UrgiAUQDZ/l0BZMYomDXEMY/VyynSImqFCxqS5C+ytfaQM9eOx41Fo6aX
         jYCP73Tyad9X+DxfJAnWumiQbwsjKYLb54Mb06gt381Na34daekCE6VuIadNDhiJHE13
         xKTG8JAGH4KoaqeO9QZF5YarZQfjaTeicurDnmAuCgUtzMi9FU2MHHPhr1tIp0TeqPlm
         BY9vzLREKoIiCE93JYLO9IdeDcmVQoKMo0FYjCWM2rqVF71wfO8mlav668feeEFuByf7
         JQ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V25T2yUdZBHyPXZKANX09MDMiL0ksN16w+vGjg3ynMI=;
        b=hU4SbBGlg17g1ffl+TLV4dzebcQd9qpUaH+R50B8YRzU+Z/x4hJmk+MzGCx4MAV8A5
         xUWaxA5tK7nRSHzS37UOpnD3tPFIwatbCXjuQ9jntzWZ/PwTgBBBTbA3CqgP4KfMbUVA
         tvcvxZIlIlx0o29zoR/B+HHqOSF+VRjiap1KOYpra11tA/N0vUIowhAtZy/jziyXACu2
         /EToNkM24q2oQLSPVMBGgpictOzTxPLjRAs3F/m/dUCoLDU4Ov3QzX9LCNSfyQjZDL8N
         pCUVONVqVyILLvpo3cw+una8kdHJTNMr1NXsurToUbO4ZtqUlZJK1DdLMW5Iz2xuJ3G+
         qfYg==
X-Gm-Message-State: APjAAAX8MWOz0y3ZHxuaDfMoD0vsF6tCsK/LbZpKEDAVrSW3MWrTkK0n
	lBjL735zTRGbw27vtVDi4oI=
X-Google-Smtp-Source: APXvYqx2H3v/ZHmO0QbHWTlURMoL7IJrlDpaH6OIaUmXE1GfUQVD44xdwJPBN146WiAdCjB7iiekOQ==
X-Received: by 2002:a37:b702:: with SMTP id h2mr16245813qkf.398.1575670467849;
        Fri, 06 Dec 2019 14:14:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3a07:: with SMTP id w7ls2307849qte.15.gmail; Fri, 06 Dec
 2019 14:14:27 -0800 (PST)
X-Received: by 2002:ac8:2898:: with SMTP id i24mr15112859qti.259.1575670467419;
        Fri, 06 Dec 2019 14:14:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575670467; cv=none;
        d=google.com; s=arc-20160816;
        b=J4PYLF35FjXsU3zGr7cWIGSeliRz8gB4tzUMyjlMxUbxKf5HRiI5THTjMB9rGE7l5e
         ly7Oxj+2EXEppUIBTipy/3qGVsh9F3eIs6O1Wj4WyhVYqdsjOj5x+Ofoun1TszT/uJEr
         /ZsgjhCV2/bjbbihkS3jQnMvvOVzkHvCeVdvC9llYZz7EJDTzCY2oe7wL8xCjN4BWZEd
         NXkfjne6r5VSZ0U6XGZXfnt0oKv1xVb7IB6IBKn6nOaev1WXFetK5Os7wpGA5OLMnsWs
         YnJE3qDzReHTDMhMPp5yc8rCEDjhTv3S/1y5WJXFtboJLfeaMu7yoobrpVQHeoyRSPlz
         IpcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Ve3ap/e8LZQd2dbv+oe7rMBjURea5FcvbovcdBkDba8=;
        b=G2n8Q4SDjB74RAqtISN1IxDO+zTl3eywTg8vowZrLQMzLLendxqezVKR9xVvvYAhcM
         mhrhhaahZX1sPsQGi9xQgBj8zaHIxCVt7GYnmD9nOQMYyyD1YekXu4Vno9VB1UdJdi+S
         t6Kbg4cmeGFzhH5Pvosw+P9BIJnpz3RqiLtljdKpMPzWtp6YthBXapTqGDIx8KPBDwkh
         l6fbdMHXiy7qYKPII89aYPjg+MYZ03yIs842psIkRKQpD5SqgXWVi2cS9eNaDoCItJlY
         D4nuRyV3Dc0zCH2WEbULN7iiikxHhI2vR0QEjnV8atbrWdw/6Wh9jaJiLB0Jt/4j/Zlg
         GgcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r3PF25I8;
       spf=pass (google.com: domain of 3wtlqxqwkaak1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3wtLqXQwKAAk1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id 123si625622qkh.3.2019.12.06.14.14.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 14:14:27 -0800 (PST)
Received-SPF: pass (google.com: domain of 3wtlqxqwkaak1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id d24so4256123pll.14
        for <clang-built-linux@googlegroups.com>; Fri, 06 Dec 2019 14:14:27 -0800 (PST)
X-Received: by 2002:a63:220b:: with SMTP id i11mr6011463pgi.50.1575670466460;
 Fri, 06 Dec 2019 14:14:26 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:48 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 12/15] arm64: vdso: disable Shadow Call Stack
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
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
 header.i=@google.com header.s=20161025 header.b=r3PF25I8;       spf=pass
 (google.com: domain of 3wtlqxqwkaak1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3wtLqXQwKAAk1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
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

Shadow stacks are only available in the kernel, so disable SCS
instrumentation for the vDSO.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index dd2514bb1511..a87a4f11724e 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -25,7 +25,7 @@ ccflags-y += -DDISABLE_BRANCH_PROFILING
 
 VDSO_LDFLAGS := -Bsymbolic
 
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)
 KBUILD_CFLAGS			+= $(DISABLE_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191206221351.38241-13-samitolvanen%40google.com.
