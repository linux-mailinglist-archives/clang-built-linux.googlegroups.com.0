Return-Path: <clang-built-linux+bncBC2ORX645YPRB3UYQL6AKGQEIM6QWAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 327D1288E23
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:40 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id 139sf7107019qkl.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260079; cv=pass;
        d=google.com; s=arc-20160816;
        b=KrP/oZBEgM9slqXjngJxzJ0XMkys5L0Oy5CPyOyfeOFoOwsHPyEwMD50z39VFZlbOq
         QMI28N1ZL1LLFKFH7rB/sZOo2wqQ2bUzI846KQ21DDEhNE2+cjoBroyEaWG3doD1mVib
         D/waZTGr/GF5HmqpxVTs26qpyvRDIvzrTDH0EGSos5sMyT3gH9CNQjrgkchA6Aa0RvVs
         yh8gIk/Qw4b/nwcI51lofwogiQkuwlprNj+ny/ChjQDjJ1vwg5wLC0QHjW5PL3H5yoQ9
         Zyuf97x9SL7KaqN1Z8oPxh4HUyXiz7E//f3oAaryVyKfYRTAwA0qsUPAKcyKM/kTmpcD
         SEbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=CGO4yKIEGY0F3sssrulfbLF5FipaQaHX4TDddyCAJM8=;
        b=CAFTlNm4SKq96WVmwTfkqdqnw+fKzhUoRH4ITIn3ac9Dt0ANaODL55D4/nZWvzr7Jf
         axl8Px0FmXVq481rq6D5EjrtCNGbJX6+t9TbvPjLwe6x55k0reHp8/QTZhWSbVAL0eOI
         mm+8dJ2332MYGB2zeMM7qNIM3h9yIwpT0s+sxzYWqFw+A/0V3fAEXo3jClbYqq0GEkxd
         BIPYf7M19WqYzA+rdsEuy6W6oMSJnYvA7cuwDhYq9IVJ2PjancPJ25vCXGQwqLSleN3Y
         eT/f3UFxjMnb7j7yCiBtwVUYQ6nU5gx18klsing7/GA1k13mAUvWMZOAu7q8l+GAVfji
         QggQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AhkHxYzR;
       spf=pass (google.com: domain of 3boyaxwwkais7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3boyAXwwKAIs7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CGO4yKIEGY0F3sssrulfbLF5FipaQaHX4TDddyCAJM8=;
        b=rfpDQSnDru9rpuLBsZmaf2nluzNKcPZ5uSpcWCMS/L4Vm5GsNPq+VVOTDvydZ6y4Ot
         xBqcrMoZBJUG5NeKZsme7IhRM3gahDs1RvIGlwsCgda57IubSj1pv5VGE7BkyWo5EIdT
         3zz2BNFyeIWr/fViQOxVQzLOMRC6Vf2xpyLZyR7LtTEmS/m6/ivDOe1INSjia7w87idO
         vb4VnEh/pBZdaAT5IWukOS7+CcMF2q9tSj6ojXEMphx2le+CawhqnS5B8IYYzXFsFruw
         OYmq9/hkZIKAbKgNqQ7ayCvoU9lWUMz8o1OMP/pNDiMlEenmgoi5uc8DgMVoguiH541P
         BabQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CGO4yKIEGY0F3sssrulfbLF5FipaQaHX4TDddyCAJM8=;
        b=CKxd3XTLS4m1Es7aZhpjZyal2byV3ImUJ0Lf5F9uUaRIxAnINFjxhmrzuKMbAZxX+C
         cOFvMikzt5EvpHDuY4ZspBknlAMwJ77nvwzuAUA1jLbFzQkpSd6OOg7KH4L/RUP4LRx6
         UzqRyke2sbIp2q8WSOw5662g5QWa7Gz7PkdIZAZzw0FVRV75+zrgK+mQ0L/4+8M7H8xn
         taP1qxEOtjg9g/AiqcYdYp73iQqBFG9pBvgwJEkON+1/klU2OyL6UIvsV5uSlwF41vUl
         V1JT56vsK0DSVe4lCeXVVztEthNe23QTG1IAI9dellMku8KCN9+zmxkrJvYc/+/tXb1m
         iRrA==
X-Gm-Message-State: AOAM532WjJbhn6/fSdbRZWttFzY8gEquEk//b5ifrcU0FgbPjuQ/yHvJ
	TA4xtFwZu79v/v/Wi4LtzGw=
X-Google-Smtp-Source: ABdhPJw04dxYtHOUORlVwdoZQp4DrtWUkVDjYmr4P4ZtgwZUqW12XX+DpCwu8QxXvS6FRRPmsqjKVg==
X-Received: by 2002:a0c:8e07:: with SMTP id v7mr13754632qvb.16.1602260079081;
        Fri, 09 Oct 2020 09:14:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4721:: with SMTP id l1ls2323778qvz.2.gmail; Fri, 09 Oct
 2020 09:14:38 -0700 (PDT)
X-Received: by 2002:a0c:b31c:: with SMTP id s28mr13674570qve.17.1602260078630;
        Fri, 09 Oct 2020 09:14:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260078; cv=none;
        d=google.com; s=arc-20160816;
        b=Gez5H1yxfki43qgzf4/PNDpvdSgTlrtLHatneMgYn7i4iYV9vTM5ngjCF/6Fg4GePi
         16dnVHW0il+FCOUSeO9GNX3NJtI5bZfGlgGFp8edSjVZ0DJRmZ1/6eCJiHp47W0VX3OS
         aOlBSjswHgKuEE6MhlVkBz2muhM/bAp0aXKp8v9gfFPJmiF4fx4EmrXsKa3J9ffkO+mt
         4K6Y5v49Y3x4gy0DiQcImHDXvOuG+u8QBiA7cm4UdnWuvUiKMiQZesBfzmkZ2zA2VvJP
         QuFa7thP0RoX+Pwp4zAM7+Bi2Q/CIxt7PLEIhRYt+WxnZ+x6WMDHkhZW0K7nOGGq9P3D
         LsQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=NB4DqWz6+fIfMXcokXEeMggmgfFph8OJ/Hk6TSxy9cU=;
        b=w5Adbfrnka87lJowcteCt3MICRvSGhyf2W/yvyCSpoYS13NOAY4oQDvXp6t3oDFpg2
         A5KReLajN7rw0xbgWag1pT0GVSx7dN6G5QQbvK2uZT8MZDWz1dZRPONH0upAp4NccP2C
         iRlDpaYBFdgWAKAsCUqQCYbbGVQrad1LB4NEfGkfswlJU80I8+zlvM6FDjBS5WIefjpp
         N9b97j2MNcF+RjdsdjVwUPAGsSVr5Zm+ql7M7/9JMgKPPSSZGsYW5SdS8NQq+Y0TNi6W
         0aindQVaT3iBKs+lofflm1rnahaP8SvPwv5IKmmYp2LfSOyG4Det8jJEKt5W5z8QU7ot
         pEyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AhkHxYzR;
       spf=pass (google.com: domain of 3boyaxwwkais7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3boyAXwwKAIs7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id z6si525398qkj.6.2020.10.09.09.14.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3boyaxwwkais7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id v4so9455649ybk.5
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:38 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:df91:: with SMTP id
 w139mr1273962ybg.13.1602260078214; Fri, 09 Oct 2020 09:14:38 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:38 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-30-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 29/29] x86, build: allow LTO_CLANG and THINLTO to be selected
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AhkHxYzR;       spf=pass
 (google.com: domain of 3boyaxwwkais7p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3boyAXwwKAIs7p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
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

Pass code model and stack alignment to the linker as these are
not stored in LLVM bitcode, and allow both CONFIG_LTO_CLANG and
CONFIG_THINLTO to be selected.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/Kconfig  | 2 ++
 arch/x86/Makefile | 5 +++++
 2 files changed, 7 insertions(+)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 6d67646153bc..c579d7000b67 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -92,6 +92,8 @@ config X86
 	select ARCH_SUPPORTS_ACPI
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_NUMA_BALANCING	if X86_64
+	select ARCH_SUPPORTS_LTO_CLANG		if X86_64
+	select ARCH_SUPPORTS_THINLTO		if X86_64
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 154259f18b8b..774a7debb27c 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -173,6 +173,11 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
 	KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
 endif
 
+ifdef CONFIG_LTO_CLANG
+KBUILD_LDFLAGS	+= -plugin-opt=-code-model=kernel \
+		   -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
+endif
+
 # Workaround for a gcc prelease that unfortunately was shipped in a suse release
 KBUILD_CFLAGS += -Wno-sign-compare
 #
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-30-samitolvanen%40google.com.
