Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBPNQ6CCAMGQESIWQLOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 378F437D194
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 20:02:39 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id l13-20020a92d8cd0000b02901bb0166907asf7973579ilo.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:02:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620842558; cv=pass;
        d=google.com; s=arc-20160816;
        b=v4ZHi2eSVOEUn4GPPwP6b8moNmjGeKUsJ4YcZjpVzNun7ZSRyX3g4ooDZqgIxnRlYE
         0HRRX2z4y1mT8Jt+gUySWuImLKq552R2LJdfLpFd2p61PVc3eo+J7w8I+1p/xI31T20V
         h4bM4ivlXN6L+wZCOgCCAdUxXZQxqe/zSDWZNis+s31WhxbLkkMkGu/tnacqp3U/INIO
         E9bCfgVEEW8JTGBxDI6gyUqETjjaMCxJgvDPtJSEcEFWG7X2Vh/eWNX7KiV1+GYqBL2u
         fPVAHzK5pPK7JMTM6rKQEOiVpGd6EqceL0F2R8zFZUdFbJ6gGnl/G1ykjp8OEFXVI+/m
         ACJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XuGcgZzSKSqBKT95MEaV5H1o1WDXlSD1pi83zK3Ok4o=;
        b=F+snmTrciNb9BkwDjpZixaSTvknpZL1bZDzdeGDTCY3/xLNKyxKL3IVr57fwpHYIMz
         x4nkk+kJUmvBqYrpKICoxAaxgCLbE0NEus+Mm6nO9ka7D+IfOVeIuX/94Z5jyb1Zxwcl
         dWv+yuRwk5DE7AyB1jt2cVrJ62UD2mPlDT2vHOy48XgOi5jhA5SltYTwxH2cWFreUx3A
         whWUrGDiitIdVvtd2zpqklJAtecRsKutZbcCEceJAmNmrBAJKkElcH3ojMR0qS5//fRq
         NYhZkHNOKVPuBoGd6a+yFvjQArfh/76CpiQu3S6b/3Sq+oQznJo0L3oEMg6C7SlAmfGu
         y2sQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RrZ4fS3F;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XuGcgZzSKSqBKT95MEaV5H1o1WDXlSD1pi83zK3Ok4o=;
        b=DThI1PCBkKhN61XIr1nIcyVAfRY1EBT86lSKy0xUhK2CsStSVhnzJCm6OJfTQt+BzT
         8dUM/1Q82GojenbrweAuMuJUA9emZWeFo2VLpsl5mwNe+yQ+Stmp/9ItBELV6xlXEXng
         wtvQyvuQva6uXQtRdH5Rbtmti/uW4TWOwFp2NG34wgmQ6ZJ8eD7U0hlvraIN4tAoM8Uv
         mbkC/OVaSwxog5aIA4MmKFu3x8MmAxRgEMgAw1lwOSSN2Lr4zhwkF6rKtd7y86xzcc0c
         9dyvXeMJHjfmW0MQUN28cpwrdDJ939T9DzWJ2fI1NMuqdXdHqI3LTar+1VnqYZWrLVQC
         oTEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XuGcgZzSKSqBKT95MEaV5H1o1WDXlSD1pi83zK3Ok4o=;
        b=eRFMHRy3U7/Ou/AncdIwptGwAY6NVqXvDbITCqNMTGnPxgwJ+HtiI+S02Qsebu+XDT
         uCMaLucQ1MTcZ82xQDERgNEk3uCZ6j57LIRMC64QmtOY44VRR1K8zYyH2hQFU8l7iWiQ
         TCtsH3aGUyLnQRTUKqjvGg2o3ELpsL3P970yhygWCLRLDrSrwGXtKEO9QNVBZjTjZDqt
         BPxcHivlzmcokqHZcBMqX0ZvzkcfV0rU/8fAmDzLuQ3AnEKAP3pg4vhaRO1rMXziWOij
         xlTDDIN/4V/taw8uFtvkoE8SxVnLs8C7//2mFOfe2tql9SxuMMZpuwN2WUb3nUEOwcZh
         APeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Gw8VAxOmFbyXw0TSCEJv+esOqj4Gxp6Cvq5fPbVuUPhWQiL/e
	hDMxdHNjNrOaYPAl/V3+Ekk=
X-Google-Smtp-Source: ABdhPJy2VoBxtvxRvw27Y69Sb1tzn6pKA9g7lDXdtiSuhF663Yi4SaHqcZ3G38DRBgRA/MLfqYK5KQ==
X-Received: by 2002:a05:6e02:f42:: with SMTP id y2mr20832471ilj.216.1620842557920;
        Wed, 12 May 2021 11:02:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:8c:: with SMTP id l12ls746138ilm.9.gmail; Wed, 12
 May 2021 11:02:37 -0700 (PDT)
X-Received: by 2002:a92:d988:: with SMTP id r8mr1723036iln.28.1620842557571;
        Wed, 12 May 2021 11:02:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620842557; cv=none;
        d=google.com; s=arc-20160816;
        b=TZAPXm6IQdFWs5sCsCuPD/+OGMxUo04gzPw1XFgW6jyLvu5WRWJYWUUi5yvgCfc7W4
         Q/L9q0XAgzZ4zqZ6xzM5f0uTse1hoDK75OQpioSRKO+lA1yaZqJlo2Z17T92Ik28GOCy
         2LU766VnbeHVHrb0yVdej96XMB/iB169NkFvGNyYqKer7zvw1GV5Mlqg0m3XOps5qYdv
         OtwXWbxk6z7w+gLOaMgYx6yX5hcyw788tcj7htyrYytHUNQ310oEgw2//oOZGx+OcRNZ
         TSa6hbNxXqa4v0fQt6QDNBKC3YoOAjDhzT93Jt1U91B1kwd0vja13t1Ikx4R3MqeNpHQ
         8W+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JRfScDZX8Dtkxuod/0h29YGhmktvvLlXyd2gzXtQWfg=;
        b=0axfcr3CL/zD96ipqzXzCwmIlmqQhCVQjDceJ+SNNuHpvoGBXJgIV/h7jXZFQuqIIV
         u3wGHZYTTuu7lbhWbt9F853ejrf35l+6RFKojtjUCZpDbjBnhyX3zYEf0BA81iagIPyO
         Jd/eYLebEZ3CbJoYWMUBEMN3KXVKNRhZRjKeTem9dmgbY7lsnQOuxLZS7OjXW5BFZJmS
         EAFAu+lPrhVjKMY+yvHk+hqbdGLZEISvu3cKY4Axk5qqo1mgRE7iQpiLI/zFc1cDHM++
         7dwTuii4zvznkxC/vrT5mTFAX+AB5x5LDs6Vx3MyvDWeK4hW6oQTSWbh9uvfCE7uS1KX
         bldA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RrZ4fS3F;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l25si51396ioh.2.2021.05.12.11.02.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 11:02:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9213461438;
	Wed, 12 May 2021 18:02:35 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	Fangrui Song <maskray@google.com>,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.11 18/35] scripts/recordmcount.pl: Fix RISC-V regex for clang
Date: Wed, 12 May 2021 14:01:48 -0400
Message-Id: <20210512180206.664536-18-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210512180206.664536-1-sashal@kernel.org>
References: <20210512180206.664536-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=RrZ4fS3F;       spf=pass
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
index 867860ea57da..a36df04cfa09 100755
--- a/scripts/recordmcount.pl
+++ b/scripts/recordmcount.pl
@@ -392,7 +392,7 @@ if ($arch eq "x86_64") {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210512180206.664536-18-sashal%40kernel.org.
