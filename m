Return-Path: <clang-built-linux+bncBC2ORX645YPRBOXLSP6AKGQEANX23AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 5500D28C600
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:59 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id d145sf1696705oig.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549178; cv=pass;
        d=google.com; s=arc-20160816;
        b=EBtd6fiWO0rBvPbIr761t9MLfP1dorr0NLGf1f3+0QjyUIP/Td7LZfGSW9JRi95GvV
         6u2/XpUMlI3aOLCT9R0nZjSjtzNyVicBXTI6yfsKSmDCxnCAqXhxtTODbtQ4VDJAEyNt
         4o4ko3NP71CLighsCVDGPRqsKA1+03SZfGOVPGAZ57KMV/UctCxvxZ3Ijhti+zGi/Gen
         slCeeKndn3V+7pI++/C2ORo/igkB0J5txNAPdyTcpG/aDC3a6W9WZWaQqgAli177wFv7
         EDdbmcPX8LZowNCdJkxzT8/8uqvDl9fcv/S4egzwVM2DNz/tfu2TG/ODdVPdRhZAqchi
         lPpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Axtn0sFdyKIqof5YC2X0wR6yGejQrfgtuK5JDw82eV8=;
        b=G1wVvmCKFNAZ/VGBJBMcAqkLNJRYxtzDxS6tvqSW3QHd6fFCkjmVHK3Lx6czwMkH6N
         mzF59mhwy+S8JfKwr7Fh0KQyukmS5BJRtTvz+6ssMx8FMUUBZB7Pc3zkXTxRnEdFc6F+
         Fady255zA2K4sG/AzqM/7lFk+4vvlFQm4Q+qoLIzmGDVhBXc3L1bzjwijEpqrlcPDoQ4
         G2M9/UscFzSMO8URvGgg0nFHXOqLzy3C4pKsLqYmSj4qAhC1RzyZHo5ft8qtiQBaQ7p3
         OpwWlHEl4mIDA+FnbRm37pZQvu+N25bHpD/Tg4S8pvQFwRR3KRyTAaOh+jfdIwHvUUxy
         AtXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q8OgoYWJ;
       spf=pass (google.com: domain of 3ufwexwwkaloxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ufWEXwwKALoxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Axtn0sFdyKIqof5YC2X0wR6yGejQrfgtuK5JDw82eV8=;
        b=YnDzRaX3a/GS7YTfsIarKM3xL8oMbErJ8E8qOb72fCj6E87dVESIfXlvYrCRNH/euz
         Y9d5Q5RhXSYrEGZHw9YNrsqxzygLf95HP7+if2vl5N34WCpzn2nlcozc9m2rA6ujbe05
         t4tnt3Pi+R4bagFnlBbDOFbIWpGE0c82CbuTe2GLxBYQ8cAhXhJHOEHdt99HHikWadEP
         T+SVB3T+5n9X1lizEOPgMDywhPV8gHsf5zMET5M++EVtCFMuHpvCZ3NaWY7zXP5lhOks
         A/CXyAOC5JYTJMcwfKpXIQsjKGgXLW3rF9z30FV/68OM7xUfBHgipZoo6GLWA0Ecby5w
         9AqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Axtn0sFdyKIqof5YC2X0wR6yGejQrfgtuK5JDw82eV8=;
        b=PWkwLtstK3ioPqAJRulluA9sesHHjZKLOiJ0DU34ZpAfypOVGvv51G+S0dpBqRYHJ/
         t+foVoIxfdiHj+khqq20dUkMsdubGNIlxyW74boUeh0CXMU/yHnMG2CNQDdB3yXAt4uN
         ohjzYilc7mZ7EyCiuxN08N1/3zedRk9km9N4xkkL99ZxnJa/IFt8lI0/N0lWIMgw4qjr
         ROMZJF9AX3EL+HGp6wQSSHUyfRr1ign6aG5FqAWbmojkXrt6qWpRVN4Xj/01dhxnCxoX
         R2UskYCEDrItJmp11ax698xOALUm4eKgdj3x6XwfK+p0ZN8HVzUz9weyboHILlArfldY
         UIvQ==
X-Gm-Message-State: AOAM530zyvhbhL88kdWca2Kf/dm/CM1yutkiVy1glOzTo5xUrOFth6nu
	XvIwfPa09flFyM1Dc/k72rk=
X-Google-Smtp-Source: ABdhPJzEMz0xyuvpdgquJzsUU2izmzYvfpYbiEuet193zTrYK627lFGs4FAy1luV+5zMzMhSeW+oTg==
X-Received: by 2002:a05:6808:3bc:: with SMTP id n28mr9963396oie.171.1602549178309;
        Mon, 12 Oct 2020 17:32:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:310b:: with SMTP id b11ls1482912ots.10.gmail; Mon,
 12 Oct 2020 17:32:58 -0700 (PDT)
X-Received: by 2002:a9d:7387:: with SMTP id j7mr14531750otk.18.1602549177942;
        Mon, 12 Oct 2020 17:32:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549177; cv=none;
        d=google.com; s=arc-20160816;
        b=Ur6qaIkjCp6s23rl+dHnFL1iJeeZecCyUadbhiug3oZgVFSPHOif8isCjqLna/YmTB
         UuV351ri23aPR7iqNDUPMlwCQFAdNmuDamYMhcVSbbf2MdYUDMBXmohZ9bUXHTQ3NKrQ
         kT+azkRzcqNzNb0obHZc0JWbA0rXnwAeAn+7gOKiSQ4KNbln3d+9dkPY9lGjhebtOrVP
         qPQmws4EC74OpEGEsi/d3NefUugYS4hIWCpzI8rnNbIMcrQmIO5KcjV0lOZa08rsW+68
         KhhZVCLhhvLk4o3Q5oHayZchJHeNO3R+TR2+RhA1TdLdmsR+cEooF2qCHTTvWvDMMm1p
         WLeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=hXDRuVDCt6QcdhcOoOZPfzkgSyHjAxTz3vM4hOZGaOg=;
        b=fxQg5UqfJUN06bT1VHxUZKwtrXKWTa6R1DMNQ7Opm3uNxz8lNr7F0qf7tJHxmuy75p
         VHgI/3jtXZncMPHfhDO6+kQONyr+2G4Xm14sN3LAOiZuiRSbz7XtmuW/Dfa68n9g7hdN
         LDVpx4cN6J+8mr/6jXBRG1gO9dz8HqFXjBohEejZ14NjHTWbNQlAdviG0BhIFyCwStyy
         t6GssEkvCtqBe4Mh6aT0m3r/7+rlgrFsb31M2LtREeLuLkXAcnhpWveY9yZ5BPoHIErx
         /lemqCZGjbKqN6383DcZlKKl80oAoIZLRscsxJlUcGkAV8PV5CMArFta1LLMocohkIfB
         lEWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Q8OgoYWJ;
       spf=pass (google.com: domain of 3ufwexwwkaloxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ufWEXwwKALoxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id o22si1741688otk.2.2020.10.12.17.32.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ufwexwwkaloxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id l23so5743757ybl.23
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:57 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:842:: with SMTP id
 63mr33820736ybi.311.1602549177444; Mon, 12 Oct 2020 17:32:57 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:32:01 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-24-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 23/25] x86, vdso: disable LTO only for vDSO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Q8OgoYWJ;       spf=pass
 (google.com: domain of 3ufwexwwkaloxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ufWEXwwKALoxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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

Disable LTO for the vDSO. Note that while we could use Clang's LTO
for the 64-bit vDSO, it won't add noticeable benefit for the small
amount of C code.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/entry/vdso/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/x86/entry/vdso/Makefile b/arch/x86/entry/vdso/Makefile
index ecc27018ae13..9b742f21d2db 100644
--- a/arch/x86/entry/vdso/Makefile
+++ b/arch/x86/entry/vdso/Makefile
@@ -90,7 +90,7 @@ ifneq ($(RETPOLINE_VDSO_CFLAGS),)
 endif
 endif
 
-$(vobjs): KBUILD_CFLAGS := $(filter-out $(GCC_PLUGINS_CFLAGS) $(RETPOLINE_CFLAGS),$(KBUILD_CFLAGS)) $(CFL)
+$(vobjs): KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_LTO) $(GCC_PLUGINS_CFLAGS) $(RETPOLINE_CFLAGS),$(KBUILD_CFLAGS)) $(CFL)
 
 #
 # vDSO code runs in userspace and -pg doesn't help with profiling anyway.
@@ -148,6 +148,7 @@ KBUILD_CFLAGS_32 := $(filter-out -fno-pic,$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out -mfentry,$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out $(GCC_PLUGINS_CFLAGS),$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out $(RETPOLINE_CFLAGS),$(KBUILD_CFLAGS_32))
+KBUILD_CFLAGS_32 := $(filter-out $(CC_FLAGS_LTO),$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 += -m32 -msoft-float -mregparm=0 -fpic
 KBUILD_CFLAGS_32 += -fno-stack-protector
 KBUILD_CFLAGS_32 += $(call cc-option, -foptimize-sibling-calls)
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-24-samitolvanen%40google.com.
