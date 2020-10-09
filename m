Return-Path: <clang-built-linux+bncBC2ORX645YPRBXMYQL6AKGQESAYDLZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id E63E3288E07
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:22 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id q189sf4212437ooa.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260061; cv=pass;
        d=google.com; s=arc-20160816;
        b=WMiW20Osfwowid2ABZiN+fHRacn8IrOJIeg0gADUXWbxy383Rom1lVELfnhOaG5DDY
         yOVve+PrvLaNrsNTL69XRJApJhGBuJ+LFQVgV7oz1thKzCRmeGP/7ql2ApXJuYdZwBTy
         7Kk8bA8wGI2pGTW7e2OAoeYwRQyQr+Sbn+OapIl79wcfXF5+tRsr7ojix+zVd298XuHP
         IERaccBRw8gdaDRlb8Ddm/ty5H2bHVS3OwWEZiC4OOqkVAcDWJkVj/nIN7ERMcxkzOjV
         MWv1VzgsDu08/eFE2B3TZH++B3ZaS5oTjvsirIZBA2qMCN0n8+YGwVhLTCucZ/yNQgSD
         KAdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=ObzgOo6CaWcp5CQkZrzGlDBPtwUCbesFjuXIC9CIX1s=;
        b=st+/JhUpYBUVzZRqAwjDVmnFwZiY+vfAxYJae6ZUtMto6MlB03gOwrWWUBW2bsv7CP
         2ZgxyQ/sPTqVmtnPo8gDjJmuovNwEYdKg1n8nRRXJHjdwn8BnyIgriypVjzVCdhh9cb3
         INTh6uoSe39CkoReUu1Hx+6uAVBjkUtHNZrZ3whzynQ2MdY9WEk84Yyqp86v+907jXyc
         /6Q1ICUNk7k/t0oUj0Zsbgamb5+mRqGEgScumnbw71e+xdRNHoX6TkDLMFvGDBRE9AMd
         UkbhDPvOhr9M2Zjz7RIdOduG/PQqWD/+uCbc1xWijPmSRmPFMK0FjAxnBckymj+Eacco
         pWMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=icGF2o4B;
       spf=pass (google.com: domain of 3xiyaxwwkahkpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3XIyAXwwKAHkpXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ObzgOo6CaWcp5CQkZrzGlDBPtwUCbesFjuXIC9CIX1s=;
        b=ehX/eClIlZ/rPsDIYZSBIICsRQ2gADUpb09h/4uGythqGF1itIUUd04Ui3FzMcyjyP
         1CYqf56XfdwzcHhiyM1JWuzTSYPNhvTAfGsUdNr3ZMXhvXblVvwlfz4ovJRIRfU7qjQc
         QAEH7vta90YIgmnfyPLy8BD/2Jo8vjQFyc6YGPGr59H61dkYBYpwyURaRdxbgI6S2oOx
         aHUneLlphareiz9JcbVIaB6LvGBt+ctTyS6VmLhvON8cdSgTEp3vn9/xsYVV/OR/ausq
         DxKPbFZtTzMHHfk58BnXHjacMqRozzX6VDWeACPeNGL24sJqk5G0/hA68emcem/WddW+
         zHXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ObzgOo6CaWcp5CQkZrzGlDBPtwUCbesFjuXIC9CIX1s=;
        b=RC5Ba9qnxSbyPGOrPy/BnF0Zq3p3/+HWQsnFByJzFtYT0QErff5mckzvsEoK+9/XDE
         KkokF26HkcLhk39IPclNZ5crDNbvxHAK8PcWZ3YQzFHPnqC9N+vTtHbR0LC3+/q9rCbi
         z2aHrj34bVlz4SswKD4azWB3gfpQEI+r2egVZIXu4ixgJx8Zo5PFlP7IZAdYEe+OgEmX
         iw1cSIVTWoJs4KIzM3YqEj+jTjdk6K0tGmzxvq/PVstDL1suWL2a1CLp2si/bKq/Txmn
         UdAgtO/RrorXriPYGpopnkXkRMhKcKPGNZ+uOKbrwtKbklVMga7OOs9hsoQBCCwR9Cz6
         PNRQ==
X-Gm-Message-State: AOAM533B4QAH1PsfJhv4/lXZ8KYqtvG01fFexXY6CDJiZW7QAmtOwqf4
	CtUzlzWaUVH1AEvczvoerkI=
X-Google-Smtp-Source: ABdhPJzwZD8hvii/5IQW0a8fVZjOeGoNr/jV6+fyeTGwCTwh9hoBpTt5aZ/dOAULYmhJtfXp8I/YQw==
X-Received: by 2002:aca:4ad0:: with SMTP id x199mr2929414oia.113.1602260061754;
        Fri, 09 Oct 2020 09:14:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:40e:: with SMTP id 14ls2248614otc.4.gmail; Fri, 09 Oct
 2020 09:14:21 -0700 (PDT)
X-Received: by 2002:a9d:6f9a:: with SMTP id h26mr521553otq.79.1602260061346;
        Fri, 09 Oct 2020 09:14:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260061; cv=none;
        d=google.com; s=arc-20160816;
        b=JfncSYI2eCD/SBtflZRv4o1l0K9yXUg5IBfEtMiUkNNKv6+fNfk1c8we/AnH4GXlJC
         2HQPDGoMeGw60CJyCbexxgFA8tPIPwfrUFnn6Ho2lV87bTgfXxobMwX3FdtOStYbBJVN
         veqJbZIbpru5Vz0Va6FHs1lozHGbk2VyEeNc8dILdHh0KFxTpGfk+0U0LOCDHxEqvCbu
         vlRKHhV1T3MtBXsDyr6Vw9RKMRDicM0sRfpdJaQe4vhbtmmxCzdSSSbKYVTK8BSYilSe
         7NcqugFQ/NigJ+7fNG08PLhL6gSXHZDjDJLJKQGnzyntUuDu+expa1N63C6ypQiyyh4u
         I1bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=IWlwO4V8zfIKj2VoQVJSOpIzEd6XIOwNzizfhzYsm+I=;
        b=U9IEIRl3JnNvWDZp1CH6yfuQqx8tdF2E4rxAR7YpiPt9Npq6PpVS4uC43NT6L+AXae
         9y+EZpV0m/tBZhFNOYCq5LI6WvbusE+gLzKkTEPhf9jHypK3i81jThmroNn0/H7vBR0Y
         Xuvgp/7WIb7gnLsA3Z4KGjG1Fv0A/cVmm0yLglrZk2vAZvL8mKnL5lnQ/VqBR6CkgUs2
         N47DygxGBngxdF4KOT4gqyH2Ek8XYlOf5tD56ws0tIbqARCXGH742EAmlxMypW1U1CVV
         Sp4ovcCjbWJ/XW9nxfspx8G/ebjzVAsP5CD/y5+yR3I76tw3BpHABpFxqX9bFMqtYawB
         4veg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=icGF2o4B;
       spf=pass (google.com: domain of 3xiyaxwwkahkpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3XIyAXwwKAHkpXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id r6si1581535oth.4.2020.10.09.09.14.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xiyaxwwkahkpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id g184so7132457qke.3
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:21 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:43e5:: with SMTP id
 f5mr13905635qvu.12.1602260060762; Fri, 09 Oct 2020 09:14:20 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:29 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-21-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 20/29] efi/libstub: disable LTO
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
 header.i=@google.com header.s=20161025 header.b=icGF2o4B;       spf=pass
 (google.com: domain of 3xiyaxwwkahkpxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3XIyAXwwKAHkpXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
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

With CONFIG_LTO_CLANG, we produce LLVM bitcode instead of ELF object
files. Since LTO is not really needed here and the Makefile assumes we
produce an object file, disable LTO for libstub.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 drivers/firmware/efi/libstub/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 0c911e391d75..e927876f3a05 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -36,6 +36,8 @@ KBUILD_CFLAGS			:= $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
 
 # remove SCS flags from all objects in this directory
 KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+# disable LTO
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_LTO), $(KBUILD_CFLAGS))
 
 GCOV_PROFILE			:= n
 # Sanitizer runtimes are unavailable and cannot be linked here.
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-21-samitolvanen%40google.com.
