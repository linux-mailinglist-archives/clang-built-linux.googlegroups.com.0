Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB75P6CCAMGQEEA3ZKGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id E192437D187
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 20:01:36 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id b34-20020ab014250000b02901eb696c5fbasf3314545uae.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:01:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620842496; cv=pass;
        d=google.com; s=arc-20160816;
        b=nS3lSQ32WxfVhE5xxKsBa0ZCucs2+JfiCVPTJaYrB9dSQydZMXrR+INenCE1go3DGo
         wxfrAI5MsQ3X/rwZldiwU3jBYak5Z68UfY61zklNc90It5BOZ+g2k3/yHUYhoVvmrf+K
         i8VCSe4TWvFBB7U42/nstni7YOpl67U4V8FaCmBjZOQ1NeQC6e11CBUky1RW3FRt32Ya
         UwmyUhpaNl48a22uqjdC+n/pcPTbbKFYEBYImh95glVzHJnwdp604dCiuPT9iCgk/P4L
         7c0Qvm8M7Pfm3ScZsARkFQVRFtin2mV6J/usSp8XeIw45QjV2+3/75Ac94OjPd3+l1Tj
         +MWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0OecfZzp75jkANhZs10uk5bCLvWMBaGciBDFuhxPxSY=;
        b=VvtJLmKJRtyB7dbm1Vz1LOKvSFvbEKRTyKqKjlmcUtwPlL/Q6CUgZHVnlrcjgvo1Bv
         d3LLHhzDZAqwmwq1gPq4SktY3xtX3ePm0r6Vh+5ycUEvBmnROk+0JMvfQ9Va2eYMW1xu
         4CndQ2vRw8CkX49G7cDAIxncVmc0FVOwl1iRLfuOngh8seszHa3B03bANCnuzhxMQEA0
         +DjYFXpBRQUZIb6LfapRiOWitaK5njyyJdwDdw6DBrCLBOr2o21vV0zpZXL6HTEDsELS
         f9o8JLpD/7fClxPxORnNEWKjIPoaeU3NkU0e0w/HGHh4dYqz5EkXIopsW+ylWCP6+Rr2
         ELYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MmlEYtWj;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0OecfZzp75jkANhZs10uk5bCLvWMBaGciBDFuhxPxSY=;
        b=CBEGqXDWPeTaMcczJZrC7WgcbQWPx0A8lHDyQtPQcEjHRDzimzyZD+/7ov10jzp1UP
         j5mVdcPrjOQkY4lCdWqHjbXUEwlXV3Qbkcv94fn/lraYK+4THRmGmqD/afR917Il/j0H
         SqfzozPPO/tlwMQeFIYzyKWzFNFCkIFEIFeekS0ZQFsqstK6Qrwite2ieR90FMMS+OHX
         eLLtpkkXaL7dbeMSYE00y2LH556dWaKquw4BzmdLtERu+QlcPzR9uqGQ60QhxLLaY17U
         BGNSMdaoq3yRshsmdM1DCebwQM0+idR57gqcE48vmfy6UJP9B435aoZrvHIohqhhH0BU
         tV1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0OecfZzp75jkANhZs10uk5bCLvWMBaGciBDFuhxPxSY=;
        b=NY26QEr5npPkN/RcEELUENhOBtAgXDf6kMH5YNiAvkJBVRjIaBzfoFumIwlUtis5DM
         /hwVf5gSAsIGCyh5aSMVus4NMApQ6iklhox25zGYnMk2GWFsDF+1g4RxApKkcpx4osGe
         dSmxeqkVgFIWIpBQT301tERTqx9Uef+yiiNfyeBWPzAqNsMh9IJG+piZOFLFnWI2HdVD
         9gpp/2URpFOdcVdtujqUYX3F9tVqsFUSmzxHxRF+3GQwCHbZFlnUGtctfioctwMh50Dq
         +5q8A9DfANLUgWE9+nq5JyeWIAriC19ZpFOGgjC4FyPafroxoD5EG3WkW7VFmzz+irpW
         ll6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Uf1GAUfeuqqGGxnJFlrbeRRrpnPFffh1hUD1cBHfQW40OVQC/
	5rdlSGxKppFUPMySZX+K/XY=
X-Google-Smtp-Source: ABdhPJwokmlb7JNV4+x3BGG/0AubK8mwxebVD1Jvl6G2c980tdoYGN0kOJGK58X/hz57yRymUFVzuQ==
X-Received: by 2002:a67:f314:: with SMTP id p20mr32548232vsf.23.1620842495991;
        Wed, 12 May 2021 11:01:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:59cb:: with SMTP id k11ls366060uad.4.gmail; Wed, 12 May
 2021 11:01:35 -0700 (PDT)
X-Received: by 2002:ab0:5961:: with SMTP id o30mr34038789uad.127.1620842495419;
        Wed, 12 May 2021 11:01:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620842495; cv=none;
        d=google.com; s=arc-20160816;
        b=HcpG1wR7rYio6UUKX7+jtPxkm582yZ+17MtXT5MGv7vzPwWR7GoQIatB+fARBLutqb
         lFI59CJJY/oXAmZZRAbvHm+rFdMIcN2eVm3vhZPau0ObO1rz/wrRoAHdwrarPQujEN0y
         L8Yn5NHyMM2/E1jqjE9h9EDyVTYgzb88pxfbZfktF3MF7+x3O3p0Hqhwcx+hOsLYVcc2
         JhuXGiffi5wZ9MtNEGsH1SnWL6ahrtXRfoDc/+zGPXndKSjh6EbkzexObKpfUJlo1BbW
         DUQZjrMenI1UBS7nAcfYu4hmBYYzPGK4vBFn+RrgfiKWt4N9AiHtnzwBZZdjKoAE2CP1
         fX8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JRfScDZX8Dtkxuod/0h29YGhmktvvLlXyd2gzXtQWfg=;
        b=nj2Eon9kvQyWanAFwb4OE4y5xk0q3166qrC28wGj7ACyNac5is1NIdpqzUyHQFHptA
         trOCE7aZ6q/3JoXx7hlNlAho8sZKmWZT4brXL5Og/wCsxE1eiyzMxSXtpySNQXJ32u5B
         H5VWHNhMosv3kKsV/tOxHLJ7wW2C5Nu4VDT7kHPXtLAD02JShgUulUp46QI88x54tBYT
         Su/d/D2Gapb1fbM3Zl60sqUsEmBeW+U3kNkcwxV0LO0YMk8A5riox45odrWPsVjLzGg0
         b2Qs7YUCBme1r0+91oiIS2ZZ4YDVSr/sBL0oNVET60UaMn+z2ECjQixAXWjQd4LJaqtF
         QB5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MmlEYtWj;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h7si51182uad.1.2021.05.12.11.01.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 11:01:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 24C0461104;
	Wed, 12 May 2021 18:01:33 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <nathan@kernel.org>,
	Fangrui Song <maskray@google.com>,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.12 20/37] scripts/recordmcount.pl: Fix RISC-V regex for clang
Date: Wed, 12 May 2021 14:00:47 -0400
Message-Id: <20210512180104.664121-20-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210512180104.664121-1-sashal@kernel.org>
References: <20210512180104.664121-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=MmlEYtWj;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210512180104.664121-20-sashal%40kernel.org.
