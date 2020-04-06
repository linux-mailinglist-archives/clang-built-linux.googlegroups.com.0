Return-Path: <clang-built-linux+bncBC2ORX645YPRBWNYVX2AKGQEIRXED7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C3219FA9C
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 18:44:10 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id w2sf12089vsf.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 09:44:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586191449; cv=pass;
        d=google.com; s=arc-20160816;
        b=nREO27hzRWx2Aom5adPcjX/pbWx+1A16odcDLT4jOirDR0tzfRZHXZ/wBeMY/gMKUc
         bbaaUYhOhafROJRm1nlIN9xpQnDKEwbgbvm8nZoAbigjaLde64sD+8f5fZi5m/iKF6mf
         EmoJT/Xp+S7Tgm+KeXJNztL0pRswG5Qv3eutdrP6D6/c1Srrsr9HH27SNPhntVbrvDIM
         sf86218TMyT7eb836BVuV5lEoAQYicfnH8rU/SJpESeY7JjTDDbia2R690Q5Lwwo3CVL
         2lgxprhOUlrj6qZVObO0FYa4t/mxS22B4HNyCdPdPIYrTc+pZPU3yQfR5CwH9tdhtcaD
         CrIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=CTkfsj/Sa65nYAEW9eoivuH2xGWT6yqwVbNNpcm1Rdc=;
        b=quXEthLFUHHQrnLJ3u1YVaAIWsaPmQOOoPMfQGtzazfO4xcy/CZKZ8z3Tr23Oz/T89
         QzMBJluGfYUzRQUAxqae2L0dWPV5E1Ub3w+kppo4Ujty4TaA7K7yiYyER/3wrvpnTlgL
         PGSOW+zTSpuvCN9HtbrkJvW6DVphfiUxqXJcgp+Dy/aPLvQATTp93pItDVfdHeSZUCj9
         mI7rxkwTR1trtxhLEXoyXvtC0BQoZLHbLPakBnfatyBXY+pkxi6tmSu21xK2VsO72UKl
         Vp5QbSmxplnL3DJQ/DVrvW5tGwoijKFbTC+xd/ijDCvFRcnqodGyeeWrm8D8llemuMCW
         7dfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HrWDz0fZ;
       spf=pass (google.com: domain of 3yfulxgwkakczhtpavschulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3yFuLXgwKAKcZHTPaVScHULUNVVNSL.JVT@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CTkfsj/Sa65nYAEW9eoivuH2xGWT6yqwVbNNpcm1Rdc=;
        b=Nx+meevTOCOI5ljn7SytpB42BxIq/48iz8T24PayhuhyFOeIFPtQzouqzLb1oNr8s+
         zwq4d6Vzfqz54gQa+knUJSWzmsoYT0aJUuuWpv96MtMvBWMAaW10BbdAWndR1Uo5oQr4
         wL/tl4+HrKWNejF0JaKlZl/r0IOi1YqsxgLG+xDgdCxdhW3P+Ww42J7/DuDeTBNRv10b
         HVzOo54o8pgKic0gcuchMfwUaqKYCy3YRRy7cmr/8F6bugjGo/uuDg4VqoNx2ROiag2c
         Mj/I1NNDw7/TXGCEbY58Q4px+ov2S0Ha9GDqsqBRWhNcSIwe0/SgY6pqA+mnvvi96NqO
         KOoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CTkfsj/Sa65nYAEW9eoivuH2xGWT6yqwVbNNpcm1Rdc=;
        b=GbCRveqvGxDpovu+hG0jrdnQ4i1QBd5K5cXOTVS8RwXy8C25SsDPHNDWPJzijKwZpG
         Q6dDxD49TGxnB0qZaK/k3K3KVTof2uhD2/8px1UEyAW23ZTNMH0wLifHdhM2bjV5PaNq
         VZDXhgCBMue+ePgQkaxhO8S1KilAYmkf1DMNcSN+WTe1yptHlySwPYOCS2paef+2kZdt
         21XAWydfsfLMv+6D5PEaCfKKguVfc2ybvA4Rw27zAIFFtGmotdLMZ+kwwncbbHszV1ux
         q1gdXOAaUTq6iCDXv7B+XgxLYcdUkmXbrubVzsqC3xy44EHMNwX7E1SYWPZyeW2n6PTk
         QhOA==
X-Gm-Message-State: AGi0PubKYV/qg0vRsJLCd9jWwpOge0oLk77YMj3nK8KPhMvlc0ivPnnc
	QjH7sek6jjkO4w4/1CFkE5g=
X-Google-Smtp-Source: APiQypJlAZRIHrGFoQkv+LsAwnkgiKvgBygu47tCwJjZGATmk7Qao31AxYKNR3W1oLmMCDbKxPvkpg==
X-Received: by 2002:a9f:3381:: with SMTP id p1mr290100uab.119.1586191449294;
        Mon, 06 Apr 2020 09:44:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f10c:: with SMTP id n12ls12390vsk.1.gmail; Mon, 06 Apr
 2020 09:44:08 -0700 (PDT)
X-Received: by 2002:a17:902:a40e:: with SMTP id p14mr21410925plq.295.1586191305532;
        Mon, 06 Apr 2020 09:41:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586191305; cv=none;
        d=google.com; s=arc-20160816;
        b=tP+lylOpYYa+iiyjgDiNYlT3W33XtymGUITLi54xZOcF+539KpbNvvNtTeqVQPVYdj
         VFRT8sHKKknAc4TcQzEPDpvXxAcO3yq6QJBuLb5rWY54khDoecWEmKAsoKe/2Bs4KoWX
         g5oG7thi9X8CmtURfEihxrqSGYadzORRh5rBnZmaIG8YlAfMtgN3qZYdav/NYCD1wQx1
         isb8JS3a+Jz8KSQlcZMbiFGwHuBlfzqmdn8/pgQ0KetRkvn8qj+YeoZRnP19U60pZfts
         OOO3qOjBGQeVYyga8dRXbnsz1rF6BWKkCJOyRmBf+sgNNRU5kfJiofcY1WrzAVn9tbB4
         8Aag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=9B6Bbg3gx9O6jKpvJ6qFzEYX2A3WHmV1/UUBgqymv0A=;
        b=fyY4/r6L2CKNiQIowerM6t3sp/vbfuV04tizrjabwkkaKv/5oL9IGn7x7H+2sbnkso
         KEKH6AC8GMAKs/mqe3S0/n8GltmxT62iWcSUwrikP7j8AUeJ9td5ckg49gLnKsx9V7Iz
         Sufo7PomiDHfEULJazJHSqLCDyUIh203/Rr90+M86fP75PFxU+ySBBoiRyb+N5wzwsM+
         EQs/JLiEFLIJwgQHcWsdfpOkx7N6GAJw/8BGSxGZyItfiuh2z3ZlvKnqc1su/5PSs9Pd
         Isoh4FE507ZkqGBft0oHj+htHPykmBzUlCXZg2YTHnYM9dO1yef4vchpmzNPAjFYgvZO
         GBlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HrWDz0fZ;
       spf=pass (google.com: domain of 3yfulxgwkakczhtpavschulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3yFuLXgwKAKcZHTPaVScHULUNVVNSL.JVT@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id i10si6904pli.0.2020.04.06.09.41.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 09:41:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yfulxgwkakczhtpavschulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id v23so1291007pgi.17
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 09:41:45 -0700 (PDT)
X-Received: by 2002:a63:1662:: with SMTP id 34mr22378296pgw.117.1586191304990;
 Mon, 06 Apr 2020 09:41:44 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:14 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 05/12] arm64: reserve x18 from general allocation with SCS
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>
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
 header.i=@google.com header.s=20161025 header.b=HrWDz0fZ;       spf=pass
 (google.com: domain of 3yfulxgwkakczhtpavschulunvvnsl.jvt@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3yFuLXgwKAKcZHTPaVScHULUNVVNSL.JVT@flex--samitolvanen.bounces.google.com;
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
index f15f92ba53e6..34277c60cdf9 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -76,6 +76,10 @@ branch-prot-flags-$(CONFIG_AS_HAS_PAC) += -Wa,-march=armv8.3-a
 KBUILD_CFLAGS += $(branch-prot-flags-y)
 endif
 
+ifeq ($(CONFIG_SHADOW_CALL_STACK), y)
+KBUILD_CFLAGS	+= -ffixed-x18
+endif
+
 ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__AARCH64EB__
-- 
2.26.0.292.g33ef6b2f38-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406164121.154322-6-samitolvanen%40google.com.
