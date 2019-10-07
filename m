Return-Path: <clang-built-linux+bncBC2ORX645YPRBPVA53WAKGQE3H7MD7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id B50B2CECA5
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Oct 2019 21:21:35 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id s14sf16398215qtn.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 12:21:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570476094; cv=pass;
        d=google.com; s=arc-20160816;
        b=nfqnesHtZ9/cgeefYDl9QRHLl5afm/6Gblgt1RF9XJFOfGCCxJoAAFzBC8PpPySv+F
         2PXxKR2Uh9exZ49Tv2H2v5lh/GpX7ApCQodO+FBMaKim4Lw3/5wUZwp/jXDfB+t9m/vd
         KZrlq5+BgVMcu2J3FXcr8QJIOibGCJ0JB6T9elcBm/TuOqs3a7Sf9Q91DP2StgvoyQUe
         UczD1iw3CCggLKeMx9BarEuCSsWNwnpFLdUCln2Jpl0/rXwQU0Q9+y5hcX99WZrCL7om
         07Xo2HyP/kYMmkeBxGEaUICf2qCD9Ve10/iXm3cVvX3LpYsjswp/WKiDt9TcG8EDX4d0
         8xig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=McQ+UaKfxXf5xBrDILkxDKa7JhuNKRWkCbKctmin2x4=;
        b=bm759JvGqM6iYF0HrJh8mrZxKlc9KUlwFJZcAFUDs3RP5eLQhXYBTUJQzedCoOGlQM
         rCn+azGFDWGAZkqNYam7n7dOXsPjoofuAnT+ul/JDKsr+/A5fYHptE+b4lBj1qkFzz5v
         ARpl2oNk/JXKq4lyAwnMcwD6a94IzeJVBzuVYJycH9/I0Xknstu9evpjjy5L8zMCrHQu
         vf3nnAEKPRjiMu6RG9RAXjl0WvU99x4Ho0f1q7MMfd+r4ZvSKX6vrAqUgBfyyaTPsLgD
         Ge3HLiqJ93PHuK17NcRz6czCthj/2/vu/YxisZdByJAgQ8AHhw5fPSGI3D2fHRYFePmI
         XQcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=U+yUAqFY;
       spf=pass (google.com: domain of 3pzcbxqwkal4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3PZCbXQwKAL4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=McQ+UaKfxXf5xBrDILkxDKa7JhuNKRWkCbKctmin2x4=;
        b=BKseUI+WuwTLg3vD5JCbhg2g87JsQuNZuEv8qp6X/fhWIbjWe/1QyMv8N3rK6gVI8p
         JJ+FjtQTxS0kO2VRFqQCTKaBrz3SMg4O8vj5EjIcy/hsfLdwu/UWwDL59SXHsW1SQ30d
         3Pf2X8m3o9bmuxk3Lpqe3HL7dYLniTlgbMnSO4bw1JVLOq4Q2NvkytKlm4eWYu+PiLjB
         au5CWft/sR+1PtPZuFsfCFh585QQGgr6B8dPbXGs93Eau06tEySzwHRcamnbGu/iYAK4
         Caz4whMwuygIGSuXe253Utr4sX48zIrUnujolgslEUZc5bSGF47p3dxKR7VwPZVgGWUk
         1aHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=McQ+UaKfxXf5xBrDILkxDKa7JhuNKRWkCbKctmin2x4=;
        b=Knu9IWX5N7VyqAzeJkzMd8wsArnq2nMTMa7I7eTycmajF4jczbOOpH6V3j1rlXUW+2
         OAJFqKCf3VvEGPC6nwnZHnXLs3wrv22A63SvofmoT0igesRfbQRpHz382aPSv57Jpd6P
         P2g2zLyELHBCa/vPuYGcFgv89rz6xhfstLG/Z05BVkG1ECCDj576OfHZPi2/+8WN4ImE
         ikV4xKS+4CoGtYJl8DDJSb8joRB+yvRlmuhgRlUuVB74c7Fy0Hxhm+x2+FYMag5mAWGZ
         h3PSV9M7/PoXR5SYLrikPVd1+Am+yN9fojAsrrNCfupNSIoEceDDEAGjWp3LAoLTGEr/
         R39A==
X-Gm-Message-State: APjAAAWBj3YrkrY94vSK8xoRho+jMkKHlA+MrCfJVvgza3xkaClEwtOJ
	aKWjuKH9YrFRIImmKzIFxq0=
X-Google-Smtp-Source: APXvYqw9bMXXzOL6CTNDG9Rmpbb/bJmGiybO3fYtJcYdzG6WI4HlvtgpV5GBss1nxEVFDgHRWl9Rwg==
X-Received: by 2002:ac8:678d:: with SMTP id b13mr21716779qtp.363.1570476094785;
        Mon, 07 Oct 2019 12:21:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3809:: with SMTP id q9ls327251qtb.5.gmail; Mon, 07 Oct
 2019 12:21:34 -0700 (PDT)
X-Received: by 2002:ac8:3243:: with SMTP id y3mr32437139qta.245.1570476094537;
        Mon, 07 Oct 2019 12:21:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570476094; cv=none;
        d=google.com; s=arc-20160816;
        b=m+qe6hYiWluMwgl5LQSuZueiWmzD0xZrSq8JhVFdzEO3wGWbHM2kM5DLazO0+y3i5d
         xaFHcaDO81uHjhbiCk3HwwPbpgca/QEUDUcSCuL7rdjMsAGBmy5WkZJCyyr/7KoClD6r
         gGanqmDlUD26Bxz+Mz2HkhPl5WTkZ7zTswtYUKQh3OI18AdE8oKeXPiysOdoKf98dNL/
         6GKfjeziULlBkB1j/r8Zi1MMnZFWB6urOlgSVrKlCefiSNYCiUUDxPYMGeqiopbS+F24
         3iybQHjv4bAFdiOfIjY9z3a+BDX8LWPitFac+y8FOKUxnlPYRlT60GVUzykkRRtzm5NJ
         XKfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=1VVXgUvR9hWEet6YOYgZ2IeUcSu3A+eaEhovhtmPmIo=;
        b=lEf54pW4WDbiBzDc8xBNmpLOyoZBwVnxkocOOBCFPdaNwh8P2aEjuxjj6Cc16Dd+iL
         E4ULEPOlHDabkmf0q2VkVK9eef25rnlizK1mDiAixsjKvv17QMeh0yw8ShPZzg8xYMt5
         dZZqEZ8fFDmYuIPXoIBr9nLL7uiFOtJhoygJU9kuNA6+lsbAYiORSZKDQlvPtOyVAVdh
         48W7jy+Nya8YVcuAq3fWl6WndIooOO9xzhzvbdifsaNRBOw5BMCAfhE4LUyFKhUgL8VC
         ozhsocVs5sDko94bhjxpYjIYCc6AuKv9abIveofLHRtszIykil9k7ERsIZzkgJJzt1r4
         vsmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=U+yUAqFY;
       spf=pass (google.com: domain of 3pzcbxqwkal4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3PZCbXQwKAL4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id t186si464282qkf.3.2019.10.07.12.21.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 12:21:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pzcbxqwkal4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id b17so11759824pfo.23
        for <clang-built-linux@googlegroups.com>; Mon, 07 Oct 2019 12:21:34 -0700 (PDT)
X-Received: by 2002:a63:1a53:: with SMTP id a19mr32165157pgm.58.1570476093401;
 Mon, 07 Oct 2019 12:21:33 -0700 (PDT)
Date: Mon,  7 Oct 2019 12:21:29 -0700
Message-Id: <20191007192129.104336-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH] x86/cpu/vmware: use the full form of inl in VMWARE_PORT
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Hellstrom <thellstrom@vmware.com>, pv-drivers@vmware.com, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: hpa@zytor.com, Kees Cook <keescook@chromium.org>, x86@kernel.org, 
	virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=U+yUAqFY;       spf=pass
 (google.com: domain of 3pzcbxqwkal4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3PZCbXQwKAL4weqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
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

LLVM's assembler doesn't accept the short form inl (%%dx) instruction,
but instead insists on the output register to be explicitly specified:

  <inline asm>:1:7: error: invalid operand for instruction
          inl (%dx)
             ^
  LLVM ERROR: Error parsing inline asm

Use the full form of the instruction to fix the build.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/kernel/cpu/vmware.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/kernel/cpu/vmware.c b/arch/x86/kernel/cpu/vmware.c
index 9735139cfdf8..46d732696c1c 100644
--- a/arch/x86/kernel/cpu/vmware.c
+++ b/arch/x86/kernel/cpu/vmware.c
@@ -49,7 +49,7 @@
 #define VMWARE_CMD_VCPU_RESERVED 31
 
 #define VMWARE_PORT(cmd, eax, ebx, ecx, edx)				\
-	__asm__("inl (%%dx)" :						\
+	__asm__("inl (%%dx), %%eax" :					\
 		"=a"(eax), "=c"(ecx), "=d"(edx), "=b"(ebx) :		\
 		"a"(VMWARE_HYPERVISOR_MAGIC),				\
 		"c"(VMWARE_CMD_##cmd),					\
-- 
2.23.0.581.g78d2f28ef7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191007192129.104336-1-samitolvanen%40google.com.
