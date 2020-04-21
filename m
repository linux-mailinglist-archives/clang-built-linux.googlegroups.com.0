Return-Path: <clang-built-linux+bncBC2ORX645YPRBLVO7H2AKGQEHUUJNNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id B10621B1B98
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 04:15:12 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id x7sf13223076qtv.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 19:15:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587435311; cv=pass;
        d=google.com; s=arc-20160816;
        b=hB9aU4pvkD1Q/wOupD6RYeBtykVO9WZYnIvRWTBCbSc1QXmBqXrDFD1owvt04egYDl
         2D05jQRlrbT/YW8IS/bRGt8FxUjrabIF9ja2NY8uWDTYhXhRiyBQQ6J4iQqsfCeo+Od1
         JUFfqO3VJ8MI4gjuHFMFl2jyDBFTaZaHCb6c/KytATneMnomOj3TUiP+m4CoMgANeeWC
         uxt6eT6C/MfXV4itESQuIYuSCjEndspq9siIne7bxEkKqsFdGEK2hRf20fje5uS+qmVn
         dngfDOAKJ6rMNpoE8v1TDOGGoXCnA4vIdMHbX5p7+mmrHp6pzsYGm+YZmFEimYz0hYkZ
         CA1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=YafOJeRbiOjXP4468EHmWv/6Y+s/CGxisCts0uOMUAc=;
        b=hueTK6qqMizzFn47abz447Uehf9e5XQjjeJeD2ues8k/2UJm+Z4jfGpVXJiOUOsTUF
         8VwNhRkdgsvO5ZWzD2w6J6dvvIgSmVbDM1f4vAHz/zrzT04LyZzz4rTcLr9mgSA1QzRM
         1EW9vqobNhrAjmEon0U7pkF1C96CKgRDO0AME+JIpFk+o5rfYN6njry0cYp/+ApsRk6m
         2UzMrmR0kJEl74+81njBbz/Af7TkEbb/x6MZtuvJqLtRiOIhh3JQau5ZOhHmPJ0FvcDT
         6A9b1cRBDDxoMney6Nd73xXhaVIF7N06w81BmtdHokPNoW5FAKk+x0UtV3qEhyd8EHwQ
         qb1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kAQ83Kje;
       spf=pass (google.com: domain of 3lveexgwkafaas40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3LVeeXgwKAFAAs40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YafOJeRbiOjXP4468EHmWv/6Y+s/CGxisCts0uOMUAc=;
        b=iK3rl977vmC7uJZ8LwIiVlSkUs7UOrPTUdLtzespfpHuAzw9tpOUAeSqXYMX9Uo02J
         HeNLSSpNEKsbfG/EhBu6ow8LDvWhevpBrh2oG7+FtQI3ECFHIPHnghD6oNOoSM22eL2T
         TEWAzSO5r9Lz0ePoNRtKvhkKrZauzr9l6JaIjsDC5aJpwcWKK1MB/2wWvPoEChC/soYJ
         fnBfTlkquu2en05xiiFIetDoR2wLw9/w8EvZMSDTYUT2pzh1XkOKv4VHz2bZ/HYFEDRP
         Qcr1seuy3OEjVp3ckvN443C6UJzqYIfHKwKdJXTDUDPsSWQ96iAqCifUaLCozpnBguMk
         w8hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YafOJeRbiOjXP4468EHmWv/6Y+s/CGxisCts0uOMUAc=;
        b=gjAhUy81+HhdABUuWn/lf4UW68Cwc0YFr03eecF15FtvcF79HcG0Q8xO/q428DDqHR
         vTCI3iKkrk/PrndAAYeP3hbCbeRJHgWyKTdkpn4VL0G40jLE3GeAUrY+Lk6IIIZg3NrQ
         O0vvvRZCJYA3UfdhKik9DOzGbhF9x/tobchjIuFcoGOc9xsSYurFGLEEHgVyeEL/BKoQ
         SEbNpmdT9wzhRKK1RnMsgx3SyUsR0X3RA/C37nNiIlRe3BAdHqsssu008JDo0cfI2wmI
         +k08w9AsNagVIxz5uGR//reZkGnLO1TyoZeNuXqJFeh41FCPbDryxEkkyGMgYFmBExsB
         P/Ng==
X-Gm-Message-State: AGi0Pua6ewoE6SO6gRFpbz8Z2xYYASquTXLQrg/+k1ewKi9VdIhU9NdO
	AC30h9RY3aD53xscFrqdKoQ=
X-Google-Smtp-Source: APiQypJBYHWcK12i/+EEyhv1ZvJbbOl0iGZazjRbNr1Oza64oA4gkVrbBqt14ELecN+KBhMm0VrN1A==
X-Received: by 2002:ac8:1a85:: with SMTP id x5mr19122916qtj.302.1587435310494;
        Mon, 20 Apr 2020 19:15:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6491:: with SMTP id y139ls8404729qkb.0.gmail; Mon, 20
 Apr 2020 19:15:10 -0700 (PDT)
X-Received: by 2002:a37:8645:: with SMTP id i66mr19940897qkd.229.1587435310141;
        Mon, 20 Apr 2020 19:15:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587435310; cv=none;
        d=google.com; s=arc-20160816;
        b=BzVdb688uGlJGIAoIkmR11ZmKUcq4igbft4Keldfm0yrZYrP0sTMGSJpQNLqDTcmLj
         5DzeATrZU8tuttQE7fXIJHVlyeioWh7S3Q7YC2J0+JeK9sd/dCSZE6hd6Sbht3C1DTC2
         n5ca5ZjQPtYrQnUZeWR30sJhXyq7ye9xpumLIQMsSBeuSnVoD4JvOaGp6dy/g6bMKDfx
         rNUSu/Vvn2JmzTZVbFQAxIeyx7IH8Pm21riIFjhKdH/ETvyEAtmbR/mPjdC2JPC/qEqd
         rw6zpSvy9gS6CvH5Mt52aGi+r3DZ2V5lNUiN713XzPsctIPrNmjd7IO5X9aiOcldLtSA
         fQpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=jhbZSy8N7pmIKGLCoqfuWjSb1n91/ddT1S0YkqMO/sE=;
        b=cxeaU3SwVyXBiG2Hihera1Tosf4x0U+uZ/V4UaX/Qw3zaOJFlEoEISHgOjIalTPZYl
         Vp6hOGbbzvnDi4P6MS30fbwuwGimYLt36a8AYD3KYH/nQ6br10ikVlUVFm2vvss9pNU3
         j2T5dSrv7R2e6FlmHu6hkMPm1bB4sseLQ5033ZBSR3Va+wls1EzHZud1b3EIscYL6iXB
         EHugPcX4bQx4B4VZAsrkdMohBt5LiEp/4b/bQGLxHeYrDCHrNw5Xe3A4nxnwRG1xRN1Z
         yhtkTlAAZ9Qf2LBgPPF65VOlRoJGGKNNr+TPe6tQmv1dWp8xXFaNTjmd1l9/R0+UTpXO
         DNng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kAQ83Kje;
       spf=pass (google.com: domain of 3lveexgwkafaas40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3LVeeXgwKAFAAs40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id r205si77271qke.3.2020.04.20.19.15.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 19:15:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lveexgwkafaas40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id d16so11861495pfo.15
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 19:15:10 -0700 (PDT)
X-Received: by 2002:a63:751:: with SMTP id 78mr5125628pgh.259.1587435309529;
 Mon, 20 Apr 2020 19:15:09 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:46 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 05/12] arm64: reserve x18 from general allocation with SCS
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kAQ83Kje;       spf=pass
 (google.com: domain of 3lveexgwkafaas40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3LVeeXgwKAFAAs40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
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

Reserve the x18 register from general allocation when SCS is enabled,
because the compiler uses the register to store the current task's
shadow stack pointer. Note that all external kernel modules must also be
compiled with -ffixed-x18 if the kernel has SCS enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 85e4149cc5d5..409a6c1be8cc 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -81,6 +81,10 @@ endif
 
 KBUILD_CFLAGS += $(branch-prot-flags-y)
 
+ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
+KBUILD_CFLAGS	+= -ffixed-x18
+endif
+
 ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__AARCH64EB__
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421021453.198187-6-samitolvanen%40google.com.
