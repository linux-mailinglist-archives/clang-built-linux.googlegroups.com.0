Return-Path: <clang-built-linux+bncBC2ORX645YPRBLGIU7WQKGQESDYICEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DECDCA74
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:11:25 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id i23sf1575468vsp.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:11:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415084; cv=pass;
        d=google.com; s=arc-20160816;
        b=FeDfuRBPJN5gzslrPY9rqEhwI9pC6m/4LPmigx3dgay/X8/DzVXoXyGF/7PWM7lKIG
         bjqV1W4yEBhFEuGWQ+hYeiKvps2/Aj5Jc636cmsTTWc3n8dPah5fkXi9TuAnP5Mg4NEH
         HibLf+Unkq6WFIY4K8GFuFPk2WQAUNe/jG5Gu+Bl5jO4ni5L/F28NXVp5qXdQJeWHwkp
         Xf1WaDTp/tWpoRvIHb1AeNsKO621vtfkSF/RhKXd3dJTUBZHHWeS9G0yeL1E+XVZLq/s
         pxgIu+hvXw5rX3mwu5XptmFvPtGl7DOz8Mr1FpZt3ES5EF8zBZMm6xB2geS7xvpkOsKr
         N6AQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=8RdoURJkoU9OB0j8eyhWJ0b/LpitQxqTwfUtd0+91Hc=;
        b=AFZIQyzqU8n7rOjLmmcLzLXeiw0r6wbDn2zLTzie6hNwcEHxjEr36CBfmaqJOJlcuk
         +RRyNAtU2M0sr5Mvj1dd9uOaQQ/CXf3+P+sJwt1s7L8Bd+kz1LMJZWgNFQt85oHpSVci
         pkxKA48vhObVkrVsenZXgSW4Cg766Hp79RjOOvz5EVuQxGIf5VC8pdwqIEZ1T5VyW3Zr
         G1isRP9j8DiB4WA6fBcFhsyclQIV6yvWAmulyDMfXmLYpfn8/dSsjXj0727VWJaFgbqo
         OqaR7yP6sunU4SklkfIN1vha+tSRAwfS8jFh0nnWl1sTDvicGykYuuKdP9w2cOjxxXU2
         vZIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XB6QWz3N;
       spf=pass (google.com: domain of 3kuspxqwkai09r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3KuSpXQwKAI09r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8RdoURJkoU9OB0j8eyhWJ0b/LpitQxqTwfUtd0+91Hc=;
        b=pzeiJp0Ue89VrAxam1eatPJBEJoH58XofPU2kt5S6VEXwCPQDhqk1f45iSJydPrJoU
         BX+0hTt8miYlSTgjJ3mY74TTrnQRGkSYJs+naLCHyAdkovDN8bmZu+Og82u155UF11ud
         SWaXqkmoKF9eaKEiWxq7TRbpY2EMQkmHiOCs+m3BVtiTb6OCH52sSc1prLEBfk7fX+yn
         4L/EBOPGxiaHwrrx3Oq8Ev6kN/ln1kLmYbV/gf0sqgKJoW23/5rbrvkwHS4RTu/6klQO
         QOjlAxRWsoESujxISgeHgXKaK5PYbIkTJIKGYuBjrFXbUBMBJVp8VhbiREYuypf/T3Qj
         VvfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8RdoURJkoU9OB0j8eyhWJ0b/LpitQxqTwfUtd0+91Hc=;
        b=RMTUXAUDAjG0ie3Rc7j55R+NqU9gAU67nJkjL3Q1t9gPGBFrquSf2Jxsa4Lew70HgU
         mCHeAzIHsp9uXlX8qOpt8Pk//+p71tlBDB/GBsbBA8BJBiOLKPjQ/XdREc31AoTgF+Zn
         Sde8nNWTyG+pj9iBuc95BCqD1cohow0xbklFxyH4S1WGrJYA7ccLKbTvZXAxnYdrfHlu
         W8H96lOOzyL/C7o+EOjSKOFJwdmhEUIyy9BWDxZ5RA5kL3ckTikVAEwtKxpTWPTG70V9
         Yn2NV3kh+oOanNYbdrDeXOs6du/BoBxoEGFOT+CMc/ryXXfWNF9qlyQ0Cx4ad0Ib95MJ
         sNgA==
X-Gm-Message-State: APjAAAUbCaZsGQ5GvXDfCmWQMipibPjmVxskv8nI24+eAejfNil3c3uL
	7c4QJ6erkDPjQG/vcGS+HkM=
X-Google-Smtp-Source: APXvYqzEmIuS5J6L3ZeiZxtc81Dn3JlLggY7UFKzraXIzuPJjm/6l1eJgKKbRTMjY2znZYJ3EGdWZg==
X-Received: by 2002:a1f:2e0a:: with SMTP id u10mr5823852vku.79.1571415084170;
        Fri, 18 Oct 2019 09:11:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7393:: with SMTP id l19ls347039uap.1.gmail; Fri, 18 Oct
 2019 09:11:23 -0700 (PDT)
X-Received: by 2002:ab0:4704:: with SMTP id h4mr6121791uac.67.1571415083843;
        Fri, 18 Oct 2019 09:11:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415083; cv=none;
        d=google.com; s=arc-20160816;
        b=U1pNZNua1EnbDT8wZyt7Frz6QDkCwH43oC7F1Q/XXuB8pIxBjvZpxjrMgF7k4SHlIO
         eIarqLVRBJLKa7fSft+tq0QkzcLlLVfhiYohtm/0QJcbKjJd62PfBjEgntr0+NIRXuf3
         EhyqwcKb0QpA/tBgLlI5lSJXU7dYqYAS4fPSydQVYlu6bs1glV9ttAoPnBGcCoLqB4Kj
         6Xh3r70JuIHa4KHIuKgrMGm3GbJlXJkWcezh8JxYUeJqiT+IF988BFf5aaChMxBVFXTV
         GOs+MFp/rYmiE79qqyIFo4TL7o3CrI5F1lamNOZ8KUwO+pl6TJAWVY3NFCLcp2wCQ+Na
         LWkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=J6SOPI1rQkBRz/oAhlc59Qnl/pEg0yYrtpuJkIBOBkk=;
        b=dFbndUXT4J1gy/3QbLc7MRzRbII3VdaLGnOwQiSrBUfXJKor0w8wUaeOeTQJT9lmNb
         cY8B9n4mLYnrIJf77HIBAKyfjCs24H/cIJ1BBLmE6VH4T3rEVqfrFgGbM9dwAB0/GZJq
         llbIyxVFKP9T3r9Auqxj59A4KqdnvTPnJ39X3xOmS/NcsY61fQnQriw60RQAZuYIMgl9
         SbnPrp5LTKuxhFZHXc3ugdgTRPdFM57oimeQm6EbFLyRygAyrfqhSNj9b1oI67lUS3yM
         KfjgRZbd7vne/jXb0+Av750Px1EDGnjpPpWBIUr0huMeuQ6fWVItorxosaEs9zb8zY1z
         sy2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XB6QWz3N;
       spf=pass (google.com: domain of 3kuspxqwkai09r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3KuSpXQwKAI09r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id u65si201887vsb.0.2019.10.18.09.11.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:11:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kuspxqwkai09r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id 62so253905plb.12
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:11:23 -0700 (PDT)
X-Received: by 2002:a63:1e59:: with SMTP id p25mr10856086pgm.361.1571415082807;
 Fri, 18 Oct 2019 09:11:22 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:28 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 13/18] arm64: preserve x18 when CPU is suspended
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XB6QWz3N;       spf=pass
 (google.com: domain of 3kuspxqwkai09r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3KuSpXQwKAI09r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
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
---
 arch/arm64/mm/proc.S | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index fdabf40a83c8..9a8bd4bc8549 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -73,6 +73,9 @@ alternative_endif
 	stp	x8, x9, [x0, #48]
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
+#ifdef CONFIG_SHADOW_CALL_STACK
+	stp	x18, xzr, [x0, #96]
+#endif
 	ret
 ENDPROC(cpu_do_suspend)
 
@@ -89,6 +92,9 @@ ENTRY(cpu_do_resume)
 	ldp	x9, x10, [x0, #48]
 	ldp	x11, x12, [x0, #64]
 	ldp	x13, x14, [x0, #80]
+#ifdef CONFIG_SHADOW_CALL_STACK
+	ldp	x18, x19, [x0, #96]
+#endif
 	msr	tpidr_el0, x2
 	msr	tpidrro_el0, x3
 	msr	contextidr_el1, x4
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-14-samitolvanen%40google.com.
