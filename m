Return-Path: <clang-built-linux+bncBC2ORX645YPRBP5O7H2AKGQEN76I3PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E321B1BA1
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 04:15:29 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id o6sf1914611pjl.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 19:15:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587435328; cv=pass;
        d=google.com; s=arc-20160816;
        b=x9965aDqdre6AnNoS1cIX1XyGmx8OO3vrUbaNBY52F5uUhAD8hGDxnE4RqUkWVKKK2
         v81eXpqzhHWE6mBrn5GjFefFjxT346J+sRH6qQIsJGTyym6Fqfl0mpaOoHO6xfMoiP3w
         GbI5cIj1Z1+CSswFPqPvVag0G++EZG8WfdqpusjUVZMPbjaHowlqs6NucPTlBMqCehzC
         CYwaFw2umr6+1hXaNN4+wCbybd0Bu9fuN24n8QUueTNSPO1xf4GDmuJmMwcb/fnL+l5K
         t3Lbw2PEyjM2dKMJCFLKN/mVYE5wvEqMn8l/Bmq2NtXdqitdVvFGLyT+eRhR/CCVYL1p
         /U6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=cfCQMpKtygHoURv96Mgg8Q1yVh3MJqtZWR0cEH9btqY=;
        b=iXg8kk2+98XKSMIpSFfKuwrnJjx/tRyGJk2ExPylKKXB2pLPZaln4O2KWqQoso5cLU
         mG/XXUlALLpcSLDkXiPxVV4wkOUlIUsXd3IRGXJxS+PgJ4x5JQZyPl2YP8vjDp4b/cQt
         qu/K68c4Xfy6gKZrZKb/hmlx5W7tUKwj04gALBD47hXB7EswV7Nbm0RtMRZxV6NPK2wX
         WhE19zLQG8K8tqSGQqYTW7idtYjyDPx5WB4sQD3mz+bM8xKWc59suOLHYX+fiq32uOio
         bbazi3S6Mw/5ziokQFD6cnuhE39FUXySB5Bf6LY7xdNTsk+t3BZA+jxHC65hfVXoAbLi
         43yA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rprfLeuL;
       spf=pass (google.com: domain of 3pleexgwkager9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PleeXgwKAGER9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cfCQMpKtygHoURv96Mgg8Q1yVh3MJqtZWR0cEH9btqY=;
        b=UbInCmxSnOSADtE1/Gf+if0zp7MOzo8T6qJmgxpu2i91gW5MU/yEIu00h1RC+ZQ+5j
         /RYC3WkH9J8JNyu38bIaGZs/KF5keNwYJeogMJrozsCQUSKcNOvhQVpqAWxCN+a3j/nq
         ge/e3Y2CFJXCbdu+Rvt3kUQ29nPejSovHIDc8OVA0K0szxJCnT+XCtn4wtP8oekaXhmy
         FEdYdgRv6AVHZTEmsqNaGhzciHAKYuS+K6wghjdhGHKIV2B136BRGKij/p9ARbuUPgf6
         hUteljSWgxEZGWfzuw+UfPWhA+DQvcLhOj0ejh3EXZXI0EdAd8Mmld4M/BYHVAMkrbOe
         tBSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cfCQMpKtygHoURv96Mgg8Q1yVh3MJqtZWR0cEH9btqY=;
        b=eI37PXMZD8IeB9vpaw94wPLZmBpoLAVcyvI88Z8/Og5HWC1SWsIcUfxYXEWN5JlCai
         LPY5FdNvrIoEbGlapsQ0IHUxpPu+teENcq9XCtxb96iZUWbezeK5LQ90cfcgx44klTR0
         e/Ei5dbS8mhx15GC0XCIqrvQlJ6gyxkT/Lsv/LZDpEF3G4vlf41p+y86oK9M16PKUhs9
         mRUFK9CH9N3OPk5CiCv2PX1hIhZyzFV52kyn1GNmiI84HrXB+hdcT0hQkpNDpcVqoWWq
         /6kkK/JrnLFuWRHhR6idKeefbEYCn35rXSQSZBOCe8VzOUboH1wr2DUPyrUQYYcx4Cpa
         nO4g==
X-Gm-Message-State: AGi0PuaPYeVW1XyasP3ZNfmAXAL7MpHz3e3ClyDiDhLqr1zmy7ucDdgK
	/0gc74g4LwScNvjeMkqPFJw=
X-Google-Smtp-Source: APiQypJIsS/QGKPDqtRcu0of0c1ZizjgpycTpKvE86OF+onKoTaKzUoii0EV8hRlQlmMrGEt11OORA==
X-Received: by 2002:a63:1823:: with SMTP id y35mr157855pgl.25.1587435328024;
        Mon, 20 Apr 2020 19:15:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b488:: with SMTP id y8ls12448436plr.2.gmail; Mon, 20
 Apr 2020 19:15:27 -0700 (PDT)
X-Received: by 2002:a17:902:c193:: with SMTP id d19mr17775486pld.184.1587435327597;
        Mon, 20 Apr 2020 19:15:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587435327; cv=none;
        d=google.com; s=arc-20160816;
        b=MfP0Gm43XHAeeKx1rveOIC7nhYm5ziZIdQUITHomF8Nnmz7DvTAYzrcswWgg6aWpxn
         yIxoOVLOk7k4EebiCPnbeu4ntnd6KFkHwDrJuhBY3gKAyvr/Scq3Ys8IMNsDi/uRzROH
         XZb/tu80ervFKP4dEJERPPVuQXseg27bOtXkolvCXFoSxiNz1pn0wYexQuc83NHwb0fZ
         /UUanBivpQr7anaBu5jlzuGMRrilKb6g3E4te+GHwCO+1099jfAPet6vU1Nf8+R+Qkyk
         wenut8hhYw2RBfyO3YLqHEHsCEYq7R5NUI1xwDFL2zXFE3EEMVWBwWu1wZNqnhHv6B8F
         HjnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=0RQ1N542RT3QYdW6h+S0B1gn+F6MhyfTNdXGmDt/FSM=;
        b=d46w3Vw1xFIGahfp7tigwmnrbuI/6LKh+wujnDryZO0CWynX6Hj4o23smnYS4sozOD
         K9xAvgpK58PQFrfzD9A65JLuhvq+KM+RcQYPERbIfL+JGK3UCaceDMiwbTMSZ8AMW0pX
         o0wXCXcueJBAsOqgjD283MkgRkJ2IxM/pnN/2BMFV/GCQO67cx+R3J6VmOgvla/8T66h
         S4epOaj0OB/UiAChOc8lZWGPZXOwZevg98CDz5//IQRQbHj7qOu7pEOE9wHXqLoiUlGe
         4cXtBKqonLStOxUREqAvMKZzm0JjxBkEFE2lbTV/D2ViOXwcib/sD1LrW3sRiDkiNJrD
         au4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rprfLeuL;
       spf=pass (google.com: domain of 3pleexgwkager9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PleeXgwKAGER9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id gn24si251700pjb.2.2020.04.20.19.15.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 19:15:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pleexgwkager9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id e140so13974239ybb.8
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 19:15:27 -0700 (PDT)
X-Received: by 2002:a5b:112:: with SMTP id 18mr24192885ybx.103.1587435326655;
 Mon, 20 Apr 2020 19:15:26 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:53 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 12/12] efi/libstub: disable SCS
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
	Sami Tolvanen <samitolvanen@google.com>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rprfLeuL;       spf=pass
 (google.com: domain of 3pleexgwkager9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3PleeXgwKAGER9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
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

Shadow stacks are not available in the EFI stub, filter out SCS flags.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/firmware/efi/libstub/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 094eabdecfe6..b52ae8c29560 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -32,6 +32,9 @@ KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
 				   $(call cc-option,-fno-stack-protector) \
 				   -D__DISABLE_EXPORTS
 
+# remove SCS flags from all objects in this directory
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+
 GCOV_PROFILE			:= n
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421021453.198187-13-samitolvanen%40google.com.
