Return-Path: <clang-built-linux+bncBC2ORX645YPRBKWIU7WQKGQEWSWUH4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 341A4DCA73
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:11:23 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id q187sf2576245vkq.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:11:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415082; cv=pass;
        d=google.com; s=arc-20160816;
        b=bDQzPlT8JBHXVtq+7iGaDOkiVxdjxw5r8BZwDdNgLHmZ2Zgoonmhvg03kO0ffGYzRE
         EdV3D+UIBFjlRvPC2wEnNenEH4IwlYWICh1ONXvpHlsZdiiFSQ06ea9Qq7js0W3EjfkG
         7qdaNrOMPT62OPvl+kpA6bVN7/BLXlevkoHVMjJ57D+8qt+qIHM/fuM2YsLAQR5UMaWQ
         gUBeZI7qXxFRrnleXSVsg8xb0XcQ2SVqIpb8gygsB+V9dCnybBTAvia7f5hWJWANI9wq
         8WPKcF3YRCClKoEvP4dtn2Rem9aec9uDuG2n3a4jxJh/qQg4bUokWBpnUc/uBF88Tg/Z
         MaIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=mGEe9LA88NcM2wecpXvkW7OlguYOEpqaP8z5iIGvRS8=;
        b=PWgCww/rPdTEgNMYnQi+veJUUgM1ajp3VPSYLLYvBI6cHsisdRc55usco5KZX7y4wt
         VpILdJ8q8GAnZN9bnI2rzA2qQYVdsQqlwDJYcfqw/LuJxcB6DdEHkfJ4oXAlRTVopDcC
         dNlcRxzmRr0+6PEygWSOrGAbumu0kj7JFh7e3rV9HzRtuYZSFybTHFSmM89OkZtlALOe
         VgMyLdalGwHlTjnwTRcz1o1uFH0/rhA6ugcATII8dOUg+cVrPsIGo7NVD8shwQfwj036
         62UHK7aap3HdOXEEvmp/IJtpAvv6+hvLN2d7P6NC4Djq7pvsMzwtOuI4bY+G5JdR6v/B
         ByVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sClupJ7s;
       spf=pass (google.com: domain of 3kospxqwkais7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3KOSpXQwKAIs7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mGEe9LA88NcM2wecpXvkW7OlguYOEpqaP8z5iIGvRS8=;
        b=VNsqPNPNv//jOB/q87mDgO2gcekdFWUPMB6IQcWlSh1N+7ufAhVM+CrT9xytm9Earr
         ooqomuwIoXfabqn5mAYKGZgle2ENcmZlO5GWj8zpA2zF355NaqNS3ZMZi7u9aNrzoSpE
         yI724RzsMWRjuHgG3uNWR+RCR3EkS42M5KHULAE9mZagOH7MUMdW2YT6lH/fnSSXHmk9
         gBbnu92ZSy841BSAYHXDEFl3optAt/YK5Wa4IHqsGKi/TBFLt45lX0xe+6X4m1dywLAn
         ZRtJMiTSdsUAaPE3NMd/fgFjER6DJWhxenfxmwUtzo+la47PVRMTFxds+DU072c5YoG9
         fN4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mGEe9LA88NcM2wecpXvkW7OlguYOEpqaP8z5iIGvRS8=;
        b=HfvOgpvVMdczYVo+erG/Cu4eXRqQNSCJ+g4DhaSJi0DnHZgnrs27DHsxBKXSnpUr+X
         zEFx1mfOUBM/vnBLuFvEl20NjaLH8lxRIa7ReuDxRoWToB9T0XUmV8unELNpw/FZxW/W
         8ZpjC2+QaFihn25huM3ms+m14uf2ew3nUunrx+tD0QbXNnsY2g+ChHrDOJiIf44P3u5h
         XLVSgj/pEjxhrpQQk6ytc/zxRVc4UW0oltXs/UfvQIuX7ww9Lh7PtKEFPZQjiBp5YD2F
         sL9UnSE0EzucIFYLYKSOmb9nJRlWQBkpGgm4O794/ROJoO+5i6TSB/40FrRll9BaIDz1
         3nKg==
X-Gm-Message-State: APjAAAWl1smec2pKzuFh2LTGt0IdLMHkzffcHF/GGgqdarqaIXnMaayZ
	WzQinUO7RRillWc/lgce/o0=
X-Google-Smtp-Source: APXvYqwPs7wkCoZtZd7OtolLaQShGJ/hBCVUnhBg2LixlwamXx+3KiM9sM8CfeNAXe0ZGT8JRyEaVw==
X-Received: by 2002:a1f:cac2:: with SMTP id a185mr5472094vkg.49.1571415082167;
        Fri, 18 Oct 2019 09:11:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:e144:: with SMTP id y65ls266406vkg.7.gmail; Fri, 18 Oct
 2019 09:11:21 -0700 (PDT)
X-Received: by 2002:a1f:1ad4:: with SMTP id a203mr5809423vka.81.1571415081735;
        Fri, 18 Oct 2019 09:11:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415081; cv=none;
        d=google.com; s=arc-20160816;
        b=xwy3PRrN/h5EHm08gCQILHIptOz5+JzOt22wmgfEKklzKDlBWGOf1+mGYYdIyaoVY8
         SiyKmvMl+IKZ/MY7nPmPFAA/v5ZIcT5ZPIs1+wSRYxq/q2nirfwwPSpNODCCXL8oa2sV
         BmaWxU1F0wGl9Uo0GiN1grPQg1BrqsdW37BBwc9oM/kGIDjpojaBxLfkUHuWqWvNCbwX
         wYxJSKOTcK9+2MD9juJ/BM/y8seFRe1Nfumy6C5/yxcfGbTKHY6DWT28T595PTW32LKp
         +G2Yq4HWLz52PPYMUU5cIsucppPTLPSAzYvawFvO+RmOEXkvxVHwOXUuKA0qoOVgEyIq
         HUNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=K1ZhNofnBR/XSzepuNm2GXj6CjTITzvlb/GIVw7T7D4=;
        b=B53KXOGl+Ydx68VyLW88Vvrve7e9VydkD0IkegZbjONA3EaYc8m4Ht9J0h1ZfW6noB
         SRjuyJnUSyX1KpLelVWemMYr9QU8JyXiIQcVaHzqpRMbIlyxi6Dr55mEJJZkXLvw9LuP
         Nzqpii67q767IQOVWkrBsheS3IyIadG3oWsVRTT/HvcBSu0wGQ3cdcFo3uIYo+PAGaWd
         62MvjO0j7W8aGDH2eYq3juTxW3DDF/9k1jqg3/tenQoLejr8gDc8IK9IB299xjF9048L
         B564tJYIdtTDZxB7q1u0TmMtIqg3UIEQ8CeNgnS8u6TgyIcu3dY2uxtHDMK2FNyACoIb
         X1qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sClupJ7s;
       spf=pass (google.com: domain of 3kospxqwkais7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3KOSpXQwKAIs7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id r72si416992vke.5.2019.10.18.09.11.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:11:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kospxqwkais7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id r25so4569579pga.20
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:11:21 -0700 (PDT)
X-Received: by 2002:a63:eb52:: with SMTP id b18mr10634742pgk.205.1571415080458;
 Fri, 18 Oct 2019 09:11:20 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:27 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 12/18] arm64: reserve x18 only with Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=sClupJ7s;       spf=pass
 (google.com: domain of 3kospxqwkais7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3KOSpXQwKAIs7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
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

Only reserve x18 with CONFIG_SHADOW_CALL_STACK. Note that all external
kernel modules must also have x18 reserved if the kernel uses SCS.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Makefile | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 1c7b276bc7c5..ef76101201b2 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -55,7 +55,7 @@ endif
 
 KBUILD_CFLAGS	+= -mgeneral-regs-only $(lseinstr) $(brokengasinst)	\
 		   $(compat_vdso) $(cc_has_k_constraint)
-KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables -ffixed-x18
+KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
 KBUILD_CFLAGS	+= $(call cc-disable-warning, psabi)
 KBUILD_AFLAGS	+= $(lseinstr) $(brokengasinst) $(compat_vdso)
 
@@ -72,6 +72,10 @@ stack_protector_prepare: prepare0
 					include/generated/asm-offsets.h))
 endif
 
+ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
+KBUILD_CFLAGS	+= -ffixed-x18
+endif
+
 ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__AARCH64EB__
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-13-samitolvanen%40google.com.
