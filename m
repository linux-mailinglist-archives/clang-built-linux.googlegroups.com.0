Return-Path: <clang-built-linux+bncBC2ORX645YPRBGPRZ33QKGQEPHP7UZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id AF803207D1B
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:30 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id i7sf2392886ilq.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030809; cv=pass;
        d=google.com; s=arc-20160816;
        b=BVkfgZMcxBB4M+E9nnsxRM4HEgoKxqSrx628OlmwZph8V7WQeT+AV1LhgFksiDH8h7
         a+seoME65LRhnVgYsFiPhgF53f+Mo031RsS3xiOZGVDlvVvNcPSxy/D3bgD8NoPtVCvo
         M1XyKBzhiBcYIGXeBjHMk5oC10vOxDltIj10buRjjOThSF3Z9pHeh3/qnpPqxozkNGL2
         3sGSuiuC5UKxI3+ygJ9+E/4ejEzwICkaI+o5frC+3zHMu46XpaPlOcK1g9OFMe56F0yn
         n87MR/q1PDFniKDRHe8OkNdcVuHy1Zbwv628DaEETbv1hwHiKJGfsk2DHPlttbccd6ux
         0ZdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=HA182TD/NXZSvTxQn5t/wdEzJUdvt8HGskrwprwpiCc=;
        b=nXztcz/lJR36iRUkUPHOV/1Q6fPepXWTkkANewmb+BLyPRYDdttvfxLr2GpX1jvLA7
         Ysf3+7/RQWSI9e/Zz1OZmz9yTrSABdkEhRWpZz4HRJ8iJ3h3XH5Aee240MfF1zjN+SEN
         ByV4QtofN/KhiwkAj0fMKaf7kHj1Q29x+ZynLJnUPxjMDeRK2FUDXMXtCM4vA2HjVXKY
         tQwMtCpVcFvCQKVCFvIN6lGxhftfHu3HkOGlcf4Z3Vx1BvHvPsbsHJVyLda1Gk7bjvaJ
         hpAbZaO15GKqjAqOopUza7Df+S8Rb4Aicbl2DWiHeEk3h2qQ6DvTGvpspZW53MxcJDmY
         yA1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BZIaPVfK;
       spf=pass (google.com: domain of 3mljzxgwkanuj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3mLjzXgwKANUJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HA182TD/NXZSvTxQn5t/wdEzJUdvt8HGskrwprwpiCc=;
        b=AeRt4uDAGYBynhLJsFpRbwymkBE5AouU/LEiEEVmkCykMOxQzMs0+xNr4uwNzDQ6Q2
         W1QQqNCAUI31R9o2yKP0apAvLObuvq++g3X40er82wqUOvc7i71enxIveEKemrFBIit3
         DOC076aFInuIZdKRnxaBGUlHy+d9pNymEPTHBGS+S+Cbt2fFTRFuWqa7wqZUx1yyrTUo
         HLXVjLokP9RgqBVD7CFlmSFbR+beaHv9Ea98MFDXA9ByTeD/6Cscjsgy3IxWnJxjjl/Q
         pM5CSXylsTEGGZU6A4WGU+50L7RjkrdhTzkrgcx/oXYmdpcXbsC6IUH/T0Yk+Bb6Kt9c
         4eXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HA182TD/NXZSvTxQn5t/wdEzJUdvt8HGskrwprwpiCc=;
        b=I6af2RBHu2f6Iu6i2ZFbeQnjKWlveMCi16phTowdgiMBAM0zPqQpianWuc5H+XM3iG
         8wQ1Q1T6hK29AedWfwXtdfFBdb0mIonyaSB0lGUGxDqGkIBKLtBWdipDLXXMVAQ6Qqqi
         6jqKe8KchHiwf9KKieOc78mGL8Oj5Jir/0satzZMc+fXw3LLsMpVhjIF3doGB882Vk/C
         uNBHnf+y6nmHDOY3nN9Nmz1wq95mXxzsxJ6m580pM8L5OrWY6z3rCwHWVydX571tZkWi
         n9V08TSZudgoVmUxqr5/ArvoL2z1qNgKslx1ORBVrr3/XJ+DjKTCK63RA8M5t40upD1k
         EwWA==
X-Gm-Message-State: AOAM5331Zpwn64OEGrTMfSLUSsiAExSD3eyoRZ34bd3lIhsZK5juW70S
	08llDQrCiyFykqTMCaoetAU=
X-Google-Smtp-Source: ABdhPJw3KCMSVss8n2rX7pZuxBMHbSIYPtK+YiwT7I4+3P3bmjA5yyCjl8YQRdbkqsS9l9SbFayhuw==
X-Received: by 2002:a5d:958e:: with SMTP id a14mr33016606ioo.157.1593030809752;
        Wed, 24 Jun 2020 13:33:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1584:: with SMTP id e4ls739117iow.0.gmail; Wed, 24
 Jun 2020 13:33:29 -0700 (PDT)
X-Received: by 2002:a5e:9318:: with SMTP id k24mr31448999iom.115.1593030809376;
        Wed, 24 Jun 2020 13:33:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030809; cv=none;
        d=google.com; s=arc-20160816;
        b=AKwR+j4mYoD8RUrfGLV+TFeZScpbtflR8I/gjtUGSIngQ/SxOjLwRUx6Z8SUA9LEbh
         bjj+N4Yhd7J2R2iliYL5lrqGyE2Z870+0mZIcFq27Gyupf7//SIUI08htMhD8/9IeSKe
         sMvyVD1U2facJeFad4HWeP+jvYaNDS897rghTL8kDh+Cmu3xO7cOIHxKLngL0B7tppb9
         E050XJoOMQs3A+5N7ScLHADefOvoGlbHqyQABiqejGvtji/3Smh6z9KIC80FOrnY0BAs
         MRGHesTXebOmfvMjVN47okGoP6TyN63dqr5RBu/EtRWoVQzO+wfaw3vIVtVI6peCxhC0
         uy+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=0gnBAHJLx9lqO/s+HwJkcFCIJr1VhaUKeKhoSxpNVYo=;
        b=EeGJsyisvpwjm4Jlr+TTgV65D1V0cExA0EqDRPvHBxPBosJ2thuQT9u8nAjrJt5nLl
         wsLuQiR2Upe18ncbTtAVryvdBzYYC/xJkz/7SKe2escIfeXC0BUMvEIaZKRjQuFPbSxd
         s5hxWpkRDbYlNEKEwxCoJg6vWB770s2LjALeGqWlY5NEeYUkuy6Kb1oYpD0j90a3+OmV
         uNRPCL2Rr6FFt4X4NM50lYcq7YnMFv+dYv8MJQRwndwiWxspZH1ZEv0Qb72x3EKzTyWs
         NAJRNRYDm7+1Ob13yErjwQ3O00HejiKiPaRzAi9lwmaudtwAsoz9K7pyQ57pLoG8scZY
         eSxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BZIaPVfK;
       spf=pass (google.com: domain of 3mljzxgwkanuj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3mLjzXgwKANUJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id g12si12606iow.3.2020.06.24.13.33.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mljzxgwkanuj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id n185so2463382qkc.21
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:29 -0700 (PDT)
X-Received: by 2002:a0c:ec4b:: with SMTP id n11mr33232031qvq.103.1593030808901;
 Wed, 24 Jun 2020 13:33:28 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:55 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-18-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 17/22] arm64: vdso: disable LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BZIaPVfK;       spf=pass
 (google.com: domain of 3mljzxgwkanuj1d9kfcm1e5e7ff7c5.3fd@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3mLjzXgwKANUJ1D9KFCM1E5E7FF7C5.3FD@flex--samitolvanen.bounces.google.com;
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

Filter out CC_FLAGS_LTO for the vDSO.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/vdso/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index 556d424c6f52..cfad4c296ca1 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -29,8 +29,8 @@ ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv \
 ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
 ccflags-y += -DDISABLE_BRANCH_PROFILING
 
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)
-KBUILD_CFLAGS			+= $(DISABLE_LTO)
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS) \
+				$(CC_FLAGS_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
 OBJECT_FILES_NON_STANDARD	:= y
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-18-samitolvanen%40google.com.
