Return-Path: <clang-built-linux+bncBC2ORX645YPRBNEDTT2QKGQEGYPQM6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBFF1BA984
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 18:00:53 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id cr5sf11344223qvb.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 09:00:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588003253; cv=pass;
        d=google.com; s=arc-20160816;
        b=U6wSkK1/KBDy8fq+Qqxjz04oLO2oyqTdcrR97M6GZzAE/0y3eHCFHIxoQ9xkfjWUmL
         +Dt/BWiIK4FNCuoayqDtucdztFQ9HyGNs+DueF2ywl62TAx87KjtzuVhPQQm7cUhOrxi
         H3b3NuvDnfWJlSNbtHWFsNSr60UHAnv6sNucrv2WRZM7/lzTwQSQdpy3rZCLyWgB+PHm
         lgpgeGy9TTjRvZjUi6FPj9FovKOd5YPlCorwNQavabW3by2edoiZkoCTsjler4YvOhFu
         I7cVfadS3G3t0gc+I0egEARfLwZDi6Ps+Atc5f7L4CdXFr4QmmKu9cvDEHhSMRK1DZ33
         Ffvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=aBy20Vu1fkZ2aoE9c4+akqnJhKTZKvvPw3S/1HDvm8w=;
        b=bPLa2TPuewyoP8E0PM3dJsdugo9/j0F/NNDQvtvqG52hgcQ7Xo5b8W7No1Hu8CJlDz
         N6+x6HFxJvpsac0i3qvsv4O7sHRk8IhziGxPMKzmhowycIGszMdSxFpYYLnRnWxlXRmX
         rnzafjWEBZm/WmyRFjXiklj1upLSFwqXQaJXDFDqyqkcE8AwnR6xPel1ySpLlRv0f22i
         1P5Xw8ZNeHdX3dPKUOydPkV+w706OWfR7+XQgKEVesyd3aFQieq27zs25LiBn3roOvgr
         b98b+SNlTf/W+ECR8KsR5dpUr1OFg6U3hFdBhXVb0nxFJlLOywSnzaAmABZvzvohzfFc
         l3Ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aKKOaYv8;
       spf=pass (google.com: domain of 3swgnxgwkae48q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3swGnXgwKAE48q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aBy20Vu1fkZ2aoE9c4+akqnJhKTZKvvPw3S/1HDvm8w=;
        b=OYYykxg6MZpaUc7pEp6klKSsDu1I2tVh2AhnGrW3MDCGqzb6PfCQgUGGQ1Beg69sqO
         NlrtW+w3cEGWdO/qDTCbbsAiIq3X4HIi/bILBGutE3i44oCWSNpX2WvujbF6VRpF0/fA
         O95336ruU9EUV8TIqQes2OahvxPNv1PJxjfoFo5JlvCVOl++zIa8dzlJgrelZDWVS441
         tzHBk+VsA87D/qwLBcSHWHc6Mfx3Ob7RbmC+hTCwcvTT8IvybGpmksk0hTgs1w0s3kWp
         5QOE/l0sf1vtLjKsMuJ3Yy8HvgxrwnAEmSvF6fY9Tc6GrZNXltCHyoANoHBnTg6a11zd
         Pwmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aBy20Vu1fkZ2aoE9c4+akqnJhKTZKvvPw3S/1HDvm8w=;
        b=ICxkv4QPSK6A7ttgpq5jz6IBJuPUE7y/6/diRPEhYn7G7bkWPoI55WrPd36XbfZos9
         3NKlkUVuLrJ6l0Ez18BHm5sfE3eIOvB04waUxs7TCfRbuGBCYvdHtH8mZQ55Z9rQpIha
         cO54bbZ7Ol/mqNd2aPN9O9MOc2mamJywgsDkWSNz8yW8AmFBbjs4jcyVOoI0reSp+PVf
         L/eF7+M/C3qm6PfTb2ROK4tGuTBC4m1969R7vU3QANU+wVPoNCavt0ONkCnA0hdud35l
         Gd/XWNRkZ3zGOPrBuO1PSV56scf5OJZbKo9NnZp3V/EJ/PzkGyh49fmpONyDhNiFhbq/
         /fRQ==
X-Gm-Message-State: AGi0PuYhvFJ/uoCP/EGB119ixJyYJJRhslucrvWwoWe9nVTAo+t1EeMM
	b79RqPS3cHbetJdqUS81CC0=
X-Google-Smtp-Source: APiQypKyyQreNzEASj/shmR19fL//4L/vOpM6LeSREVh6Tn7Ji+0fbgpQVOfGGrySaAsk+BTlgUjBQ==
X-Received: by 2002:ac8:180f:: with SMTP id q15mr23177202qtj.42.1588003252702;
        Mon, 27 Apr 2020 09:00:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2208:: with SMTP id o8ls10758072qto.10.gmail; Mon, 27
 Apr 2020 09:00:52 -0700 (PDT)
X-Received: by 2002:ac8:37e6:: with SMTP id e35mr23883662qtc.19.1588003252111;
        Mon, 27 Apr 2020 09:00:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588003252; cv=none;
        d=google.com; s=arc-20160816;
        b=znThPYRRZHuvp3vY6HtejYFqSYyL7RPVPutPlGlWeIiSBScaXeX6m4nx2ZZHv9CaRJ
         cl63Fqbdf+PV0l6rfvlg/8tyLV9C8J5iatdmp809K3a0n7bN6jPKny9fmqOq71nQbVE2
         RMxDmeD6Mi3V/F6dPCKYA8gpMdzwHxzVdwOqcYBRUOl7DH5xCspoCzpjn+GW+5s7R2/y
         W5VK09By+EIY99Yl/l1K80g0ZHSkka3o/Q1M+SluvS6DYwMdoFtyNhSUeJi1tcDrYiJa
         jQE+khW3qGVSFzt+4h05VjkIuxU9C94UnTXGDlBZ944djaJTWXroX5soB3Hvz8InEAHE
         bUpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=s5XAabWLI2BrMJh1ovnuwgRiP/5q7kOCrh3Tv97TlA0=;
        b=ZuVake0Zht+zuSfvKgbHQljlYSUq5TgkPLipOJnorKWQoXdrMe7gR5O1VORFtMGA+2
         LVLZvVVKfesNTbdx960Q6Sqbj+8Gl5BF/rEmQlRr/trDOdb0oTh7evY3DZ57GiV15Fkz
         6BK9X5ymJnz3jKKawrxl7KXIUFHTZhfkYxE7sj1h5vIiBZ8uXNEzsgA4+a2GB1IWbvCH
         7RHFA4884qiU6A7YH61dCO9VARCDbc27OPX3Gzc7disAqhLKnrGATVlsvdmeJNRnv4S8
         puJC7KvckgYxyaFDodFLwE3es6fx8fAohCkgvX+CI86TcOfE6xMMVBITZSrMK7Wr6oVb
         7Lmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aKKOaYv8;
       spf=pass (google.com: domain of 3swgnxgwkae48q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3swGnXgwKAE48q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id h33si978891qtd.2.2020.04.27.09.00.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 09:00:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3swgnxgwkae48q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id k197so20823356ybk.21
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 09:00:52 -0700 (PDT)
X-Received: by 2002:a25:abed:: with SMTP id v100mr3797424ybi.96.1588003251771;
 Mon, 27 Apr 2020 09:00:51 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:14 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 08/12] arm64: vdso: disable Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b=aKKOaYv8;       spf=pass
 (google.com: domain of 3swgnxgwkae48q2y941bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3swGnXgwKAE48q2y941Bq3u3w44w1u.s42@flex--samitolvanen.bounces.google.com;
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
Acked-by: Will Deacon <will@kernel.org>
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
2.26.2.303.gf8c07b1a785-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200427160018.243569-9-samitolvanen%40google.com.
