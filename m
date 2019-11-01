Return-Path: <clang-built-linux+bncBC2ORX645YPRBU636LWQKGQEIUWTHFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id AE819ECB05
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:12:37 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id o185sf9651151ila.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:12:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646356; cv=pass;
        d=google.com; s=arc-20160816;
        b=vJJuehkHRWuvI6Uoe3O7qhbFM8uXNMVRpppVZG9qBVcnV62pWn2YNk/AGEpFkqsy5K
         Bn7ZT6DDTNWbvxWAcfgcvnHmo2bTtsFpFz9X/h/cccfp4QbVQe339/2et5xUo5a27bsr
         /BhFjAN8qnSJvnjAXI6PGAcKcpKET1HZF+/RxUSuEIJwsMLpk2kshpaDOS81UU84tDE4
         nU8Cq7Nyf0+HJGFlIQg1MuSyTd2ixMCVUijR0KWofRSs5VJywOMYdwZfcsQl3QuxWqN+
         H1go+FZ2uRYKonwIImaIwqqwm7c1bnXdaZz+lEUFBw2h0Ft3mWba49UZLimYpRlq4Iyi
         5ImA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Nhh40lIzEPsuy4rRzYqM+9xiLupO2aC+dTa8xFh0DOI=;
        b=zmdMbWoKRhJlkU58Tue35qskNw8SQWIfvGO81/tB+mjJJTmmljSKDX6NopJ5beqy58
         cWDXjyCtnX5nhpasse69l4JGHijvpyyvhkvtZE9AxmWmLsDsofxakKI8Ansp467F3QTA
         uA9mTSzitVLU7ciQh5q43AJFmnF8NoIimFher3UKZ7Adfe8fgiOUuWAIWhR5ouzsZH10
         EWT4dIsO2dt2feceO6JN8iZucNsywCb+yy5+uMQMe+OujlatJmdxx3Wukt7QV8xAFRyE
         iYlkgV+QPNU3Y1HXHzrqkn0xhIs4+ImUZiEPTsplb20C9XzWEI5OA1dK9YXwEqq45n3x
         271Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mLcd5Ko+;
       spf=pass (google.com: domain of 30q28xqwkabudv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=30q28XQwKABUDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nhh40lIzEPsuy4rRzYqM+9xiLupO2aC+dTa8xFh0DOI=;
        b=lcYhhD/TqNd1PXXl8JR9Wb01yh/6Jn0YXkhHl1S3lp3JLUvYAtxpbra7Mo+ggycPCc
         Y468VeBT/tVPn1gSuP+iHcNrpCTVYr5J7kiVBFPpvvrr8J29M2fjUtQaZWsJDl0sF9eQ
         31sDDyT8VilZCztlNSk5WF3MlP7Sv7mraZAkok3bC1MFALGHmDfzHDCesEvSg1C1tAv/
         2tlgQNjdFVKnutPZC3tqLnqALAKHu8qcWEX9QHVf525+lImfdnnGSo02Yxe9GgLQpZAu
         zJiuz6gwKBEyi1P5j54WHOeil00/Zmi9NIx7TEk6JDynYO/lpeBLuG3MooiKJBIbp7w/
         3q9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nhh40lIzEPsuy4rRzYqM+9xiLupO2aC+dTa8xFh0DOI=;
        b=YLh0zVVTSt2XzBIAqlHs7QDVdYnBa0olUmS6sWFE7j/Sl58and5sFP5o5t/uKzELzw
         dPnwcmIm+iVoxElpuPpW6mTzVS9982JVDW75Lwyj/jZuXZgbpjblpd3Gri937PV36fm1
         qvJ++XZ5Z+fj+yaXZp0Tp/3SG+sRHa/zipgOYSFYrtPr5cmQjoAjLB3QEjgZxRRN6fnJ
         tiSeEh9Kk4Sg3Zqyw2rv8Ukdl2gA6DqvRRJ33TE9GCGlpCP+WkWEYjKRqoi2wEfVHkgu
         fXHCyybe988xMFnjnla5pGzhlrDxKr6QbKXs4Cd+/0iNc+Wbo512ZbkJ2BxpBcno4Blk
         NEvg==
X-Gm-Message-State: APjAAAV2354HgrDxy0thiY5vRsfzvt9iZ9nIa5wbSxHZ7vej4ozWnxy2
	vJW3dqoFX7rA0EUqRbzEv14=
X-Google-Smtp-Source: APXvYqwUn724sOUri9bJ/l9oG1Ks1V9UY9hRZ0b1iapwOnGDS4e/4K/O5Qhj+LhBKPxHzF0keKl0Hg==
X-Received: by 2002:a5d:9756:: with SMTP id c22mr13131149ioo.233.1572646356013;
        Fri, 01 Nov 2019 15:12:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:49:: with SMTP id 70ls1590926ila.16.gmail; Fri, 01 Nov
 2019 15:12:35 -0700 (PDT)
X-Received: by 2002:a92:4952:: with SMTP id w79mr2050768ila.70.1572646355663;
        Fri, 01 Nov 2019 15:12:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646355; cv=none;
        d=google.com; s=arc-20160816;
        b=K/G9hWBI2eqcnWw54DrdSZu317hSXVfhb7UiBtEtal6qPfn9zmrDEA+NOTydNApy1X
         XwxxFD9mWGSsXgVJmH/IQu8hmn1rirTgOUcZcMFne7RTpiFcJGkspbdLC/6J3GNSvRGg
         8PQk4BboYkpoeyO++W0cokXBC0VNBKdgtOCQdV9mMBlMGRGv24gqB0vWvQJSqJ/5J+Ep
         mkqY1TnOAP7DUVZg2TOQrgrwnPXpfHsxVFZNPForx5xufVnmnV5un3uDQipH6Y47GRUa
         3ooWZ+jtN6+JCkDiHWGpGafvBKlp+aW9yoNR0jSQUFohuRBJb2OTHYukMFrzT1ub7M2q
         n6fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=oB4lIvjzdBiHgRAUphuiQVPgI+jp2K5bMoUCGUiH4hk=;
        b=bLZ11Ehs8b+2MLSI0PJQ5+S6DBtkk6G3pM3BDcmPsLk/O+dIW0ghN047y/d9VjnOcX
         emceHEsH7kmZOVJdXso2JMPNohpr89qi7JJZEjMAbCgnIxVEpIYqF0vneqo44EYvwp5q
         tazHZFNBuOU/crT+xsJRzWNXYNFynIX9rkEMl7nxWLy3ZuGZAla5kmaJzECMkG8JTYQR
         MH5YGWCpJF1YsvL1cMg65+EDQwyD5Xsw+3y1Acb5j3dfVdOKJHzseDjxPAp+J9ZPL8Yi
         QOHAhc7TrmlFBLVxaw52ZzGCnp/vItGaDBAzYs9i3lzb2dJl8gYUiECsiJZO565dSmNz
         P0Ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mLcd5Ko+;
       spf=pass (google.com: domain of 30q28xqwkabudv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=30q28XQwKABUDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id 75si591521ilw.3.2019.11.01.15.12.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:12:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 30q28xqwkabudv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id d2so7173863pll.0
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:12:35 -0700 (PDT)
X-Received: by 2002:a63:d20c:: with SMTP id a12mr14724175pgg.402.1572646354642;
 Fri, 01 Nov 2019 15:12:34 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:48 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 15/17] arm64: vdso: disable Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=mLcd5Ko+;       spf=pass
 (google.com: domain of 30q28xqwkabudv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=30q28XQwKABUDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
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
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101221150.116536-16-samitolvanen%40google.com.
