Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBL5R6CCAMGQEJU26AMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7544137D1C1
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 20:04:32 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id d3-20020a1709026543b02900ef00d14127sf7688618pln.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:04:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620842671; cv=pass;
        d=google.com; s=arc-20160816;
        b=kTaAF/QM1ePl+AfZc0kZYVKE8sW80txsoEkAGucDaoeZ/H3ol/CcBFm0k1NNtKgXQA
         tE0vzK/AdbKfwq2ojxKoyaOYGgqoNOWhyTIYtgLaW59vSmFG99FzHZaLvYlTDj3J9T6B
         RDJZ9NCkVHxAtsdwBkqe+CLAVc2FVlS0uRVPImHdw74hcj2xcd8y6RmEC2r7UTUcxjOK
         27O6jWfnz5wTw5NTX3Q5rn/zcLPpxESTFZ3joAn+a4rpp4O//aJ+1aZ+XFNyp1sHhzLB
         SX9v3lDZgrKSZ5qsR4R+Pvg54YiNWbpASOavr7BrnbNYebSsmvpJ+ZsBK3639KoKFHIq
         EZXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=lxirMGive2wkyaT2Jusk/dRN0Kda9smmuj1+AyPMFSs=;
        b=aL0DLwbOjANAvT/aTS8hLOX5NmtQrc42aCkyIohv2pj1kV/KVXGR9ATNgZwlSEUbp1
         K3XH5hxnfCqdPf9MY61uo+a7hNt4EuEoRyFhtzgCqm9eesQhpCLLxTqps7OpsaKOZPRr
         59EwrF+ZL1eqg/rDeelJ72hWTVpCYagNWOOmmAYJ6xSSndyypyP3kDAmSs8TNHPh0rpM
         2tNEgp8S9vvFFSBNGGSXCAO7oCBQtNB7kIjZSBrbcYOh49D+VLwmSmrL1xmUm88o0O1A
         54TW1trYIldON6tn2g8kLsTk8uzwrzzHSWP6yPaoT8IECprh4uVWHJYwF1p2YMHfmxMj
         yylg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=d5nP07Aa;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lxirMGive2wkyaT2Jusk/dRN0Kda9smmuj1+AyPMFSs=;
        b=a/fxsrqhBuFnXODNMFTNUL9FS67whTpEHcIhFK3TgrD9a/X1GSFQaBVINdLfFh9Tbv
         UL+ie92VEbzLm7ZApdcnA+spDLYrTiw8VVOTMbZvdHPHwtcNTR/42KJVHfa5IZ1T+UfQ
         9QnnfCmCuASa/KWfzfWjxPyuDQc5r6X2krTJPpj+xNp9ndSMQ4kSX+NvNJ4WhhFLMgMA
         gPmlhe5wRcxo+QcMPIFMVwd1nW7t0qHSNgFcLZRcZwodvVdWfBszx8d+Fk6cXUEEfmp4
         eP6t+57y+ZnDtKzehfYxdgxyNh1vxa/+vzaNE3Vx87Y98oCcPFp9QtouVGliB+K2golH
         HWHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lxirMGive2wkyaT2Jusk/dRN0Kda9smmuj1+AyPMFSs=;
        b=clOVswoVZ2AkYKtD7wBo7ULzTHJ7k6UB0O6FcFiyPbfqyeCtK+e7Tq8p0rdXKN3yl7
         dU68G3SJ2z90cwJCnPZYaWYW1/y55Y3sSFd/V43OYMAD21JnzTiF73yDjNF5QfZdu1oP
         n0M3YiWONOzfb7ZzKG9qwfLwIbBorPdvwncxCZLuQcYlCnJiSuL8qucgcmtPK5aIKFWf
         yOEe+EGqTCCwn151HpHbI9TaDTMHkTH1sA0wp5jIEgfYdrMAnAsO7og+bBBLjLitlt/I
         2xHNbu7t7kAzw15dE5eEBkikJFCWWp+j2wN0BCzb2glLGLze9uNRoxpM02B/tf5qrTqW
         PNTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fhmEf8XBfIV0t3CcsuFkYUFMEhc3s64ItovYrilUC7pfUZ9mM
	JsUeaUgolZraUX4E6d58ND4=
X-Google-Smtp-Source: ABdhPJzozGUMaISVJvhyZzJ6ttxtY3wL9TBMzBNk38oFSar0cwZOpzHpR868HjN8zDxDdo2eDwpZIA==
X-Received: by 2002:a17:903:1cb:b029:ef:2221:ce7a with SMTP id e11-20020a17090301cbb02900ef2221ce7amr25576597plh.80.1620842671220;
        Wed, 12 May 2021 11:04:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa46:: with SMTP id c6ls1749625plr.4.gmail; Wed, 12
 May 2021 11:04:30 -0700 (PDT)
X-Received: by 2002:a17:90b:604:: with SMTP id gb4mr12077926pjb.178.1620842670592;
        Wed, 12 May 2021 11:04:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620842670; cv=none;
        d=google.com; s=arc-20160816;
        b=pvx+UGr/Rek0D1ouPyy7aRAZCo99SXaMu6MFVR7g60Se3BqpJ8ZyE3y9S6+JIX6CMH
         f1zQxyk3zCLZPDsdRJZ+7/RY8COJa3p6Nhsp5CcMEe9KHK6ioTX3I77i8YbsprtZfw0Z
         MnhouQaaHrgTxwCjOkdia9hCYcB8/xfRudilb6bhWyxs+Yxn2GZ06wVcglwJkLTD/1Iq
         ZgFaDMqwuLl5fg/rJIldJ+VyPJ6INPJv4zf2FjVkqPjHRxKxVPkW8sBcV68NCcEs8WDM
         RwNRc56++nRjbSnq8k5Ywuahm5CjpLI7Uw1jT03BAE7JRMcepDZm8ex/c7hlPuDnGQd+
         p6vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BLIJUT6/SIA22fzxvCOoHTZ80FPxPC8vxYV5lXVlQek=;
        b=AaEFSeIWReA+id7GdH3tKlp5dRS9ap2cBaTkxjN1OTi9bmTYjXlow7hnKH/zSmyhym
         tYoYaqzDJqtY4Y9FuU3A9qtKyH2YRsMw/JY5CUiPbSUfx7tfo7TlexexlylT6tR7cKkF
         WfaWE6mOgbMoCskA5ITYoE2iOSI0FFT/gXQnQmeMqvxwSr49dRJo0A665CDUvtVMobKD
         n39jROJ1n7/ODCieVbrYmiLAa8wUz6Y91qmDn9PcVfybcX4XBVY+Bx3CHOWrxQlVuKH1
         j4icnDTo+v9OrhrXdROytUnxOt/y9P6y+p71dcWBkMZdmN3s5/i+anfLoPtMkAwTimIC
         D3qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=d5nP07Aa;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id md7si639022pjb.3.2021.05.12.11.04.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 11:04:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 28C106157F;
	Wed, 12 May 2021 18:04:29 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	Fangrui Song <maskray@google.com>,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 12/23] scripts/recordmcount.pl: Fix RISC-V regex for clang
Date: Wed, 12 May 2021 14:03:56 -0400
Message-Id: <20210512180408.665338-12-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210512180408.665338-1-sashal@kernel.org>
References: <20210512180408.665338-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=d5nP07Aa;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Nathan Chancellor <nathan@kernel.org>

[ Upstream commit 2f095504f4b9cf75856d6a9cf90299cf75aa46c5 ]

Clang can generate R_RISCV_CALL_PLT relocations to _mcount:

$ llvm-objdump -dr build/riscv/init/main.o | rg mcount
                000000000000000e:  R_RISCV_CALL_PLT     _mcount
                000000000000004e:  R_RISCV_CALL_PLT     _mcount

After this, the __start_mcount_loc section is properly generated and
function tracing still works.

Link: https://github.com/ClangBuiltLinux/linux/issues/1331
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 scripts/recordmcount.pl | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/recordmcount.pl b/scripts/recordmcount.pl
index 0bafed857e17..857d5b70b1a9 100755
--- a/scripts/recordmcount.pl
+++ b/scripts/recordmcount.pl
@@ -395,7 +395,7 @@ if ($arch eq "x86_64") {
     $mcount_regex = "^\\s*([0-9a-fA-F]+):.*\\s_mcount\$";
 } elsif ($arch eq "riscv") {
     $function_regex = "^([0-9a-fA-F]+)\\s+<([^.0-9][0-9a-zA-Z_\\.]+)>:";
-    $mcount_regex = "^\\s*([0-9a-fA-F]+):\\sR_RISCV_CALL\\s_mcount\$";
+    $mcount_regex = "^\\s*([0-9a-fA-F]+):\\sR_RISCV_CALL(_PLT)?\\s_mcount\$";
     $type = ".quad";
     $alignment = 2;
 } elsif ($arch eq "nds32") {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210512180408.665338-12-sashal%40kernel.org.
