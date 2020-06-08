Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBBUJ7P3AKGQEUTG5R3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D3A1F2228
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:06:47 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id v78sf9650623oif.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:06:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591657606; cv=pass;
        d=google.com; s=arc-20160816;
        b=LLhjtVB/dsdgcRsKfdqqJX5vVSZEFQlTXLA4Gf1H53jnlZPIUPAkHXHTvG7OMbv9tp
         DLqcQ4m2dKbyVC9frAxme3CIxobfISUNDcnSkCPCwR8ZKVuf57jRF+f/xn4RHCCxHCxv
         4ZpD+6ID/hCTfqTMVsYs9g2P6jHDSbyA8JSD6AZg0cS2Ta0xKsW0ZbRtewR1wk7XvW2B
         G3Z/N1JStuXQLNHmGn3f/WxFXHIRZiZbkTqEkurQjHWquNWug1IVsROXn7IJKgXGENC8
         LKOlWkafteG2iQImr9c25fDWYWimLZpmUgNLU868zvlfhwztUN/qre+NYMDcJKvLraZL
         kJUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=mwwqVYZt7n9WtrbSJwPRbRMq/U5RBx/HjTfHnCnfbvo=;
        b=kC7CplRlG0zVMgEvmIviQEZRorZeEe1tygFkqbAMW9rimhw3Y/23YGM7+zErn0tW5h
         O200p9Fhk1ZQ2cFeiicEQOK3T2ZUpKlIzG6awt4kp2mN7tJN4YApZp+UsuwgrKr8e/GZ
         jFfdk2StOJCfh2LiMZJsGVurnB0QH847mzbrSWmmfvVrSk5fJ9Yjd0EG1k9Rz/YEfrEg
         9uanKLOzj+FTbR5hCDtHNfETxA2UsuyidWNsYfv6wAKI8564DJoQ672ixBvuReBwzbvp
         t/uLb2Ars62jcljJDCZdhR9/llyXzcDFrLVwma7mzXuu/hDPMid9e0U+3YNf99wGQ1IC
         uBow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oKcy2C9B;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mwwqVYZt7n9WtrbSJwPRbRMq/U5RBx/HjTfHnCnfbvo=;
        b=NBOQ+n/28WE/ZoNO3aSOuKW/71zPhmbRdtXuWTIo+S9yKZMZUoA/qpdaNl+nAkundg
         d0kRYrA2zGdDBzYgCUwi97stPVIKmzUXuIfpckeP36cTa7s0haji8/UC3fiGmP5AcIPg
         qpzYJCie6xZUzrEPK4a7cD8jiyrk4HYCgoO26wm6XdDdOmSuvbu6UjhjaISlFc22swOW
         LpogEfZ4BCc3yQw1rF0LP8zgnOTAwciLgjClKWJQ23t6D29x5C57T4ZRui0POBH3s1ku
         r3BNDbFnrLwZjhxrMspxGGqhKfx0HLtETJrxLO+EcNyrtFCodvl0sMUmM2ZEkYwYZxvr
         tLmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mwwqVYZt7n9WtrbSJwPRbRMq/U5RBx/HjTfHnCnfbvo=;
        b=pMSg5s8VaNcjfJLWMSc/JqrvDfHyRniw0alP28FXC/EZG0be6wggDOrKYuughNLdyB
         lHSZtUX3fLsjN5Gv49MxlXWvFEpSMndZ74je0nTnb4eF7Of3hK1gGk3POi05YJiR/UKm
         bmqr5K7pB+zM7IYYmS4jiIeY3ggB8nqsfFMMGCC9CLuD0WpypJFECxw1X/QMsZC2jTnk
         qHoJU+j1SGvnwVCXvXDbsXMRgv68BTZGPARoCRT2kgjdKJ5rX8QRYibvGmvXc/ajyaYJ
         tKYBYmgUY5zjM1KTjlmcmWlayt4cm1rFy9H3ttVCWU+XfeWpJFVuYRfvMpUszMHvA5Ay
         JWaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315ivwwwcWL8FbBTQ1sdMPaOhHMlFOcrh5Iat9xzfMiuu+Tbp1d
	VJ/0fysws/+s5SBiBz9q5PQ=
X-Google-Smtp-Source: ABdhPJwvN0Zn8jnLTx3Wanvv6uZhw2JlzbBf2cmKGDE4wwpFq4LrmGv972p+N6dW18KobbtzoDY9Pw==
X-Received: by 2002:aca:1a07:: with SMTP id a7mr1312958oia.163.1591657606550;
        Mon, 08 Jun 2020 16:06:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4810:: with SMTP id v16ls3483461oia.5.gmail; Mon, 08 Jun
 2020 16:06:46 -0700 (PDT)
X-Received: by 2002:aca:b582:: with SMTP id e124mr1364261oif.136.1591657606273;
        Mon, 08 Jun 2020 16:06:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591657606; cv=none;
        d=google.com; s=arc-20160816;
        b=difBbn5crYvAxT6MyhmgLDCes1ttlYzWqyWMXhxATpS4iuHrXnhvd7z/rRcGsfMg1G
         B3MSVWMHSU20PQhaNkVB2upIfOH8SqoLXf0sQjKPpvJJB7uniFT1qqoKWtIp1K1RCi65
         W5pNUkXS+z+19vij9VcL5JACKNOj1Ggx8DNOSdIqdbPeNdJLwrTFy2xsMMjnXhRtYlgy
         S9658nzTaF4VsnEcP9UTEiakt3zNyXu1WwumD3lE0OhtjzBkvlDB7M+Xk+NkS9QjLTsY
         1IRhn/uQUvd0r5LvdQwlYQM47hOhSC0scpQTmlnq+cHNi4jyeEe+QK1Bm8ZCH0tMUstu
         AJFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xey+IU6pYbD4cOLOq5KVNPYnQODd/Z+qrfVACAakHl4=;
        b=JOgK4002aEhDKTBiLejHQFPHpwwERDm6KDBn2MURUF/9pU0mUvpbtiPiZ0phgQg6Yi
         TSZjY4/pR4RPlyBukGOo5fcydTMbVNoyPcSLwMkdoCnYkXn6eTXAzlSKpifs4WBkdZSS
         xqIC5riAum84BKu58iGxxpshMzPrCBZmdej1QFkfpcUXywLw7Pk1kRI6GzRpWYCkyis3
         fTJX0zBb8dcL5EExJiNXfcoS3sRGUHJichb5Lr4k8+8RrLfd2cKsNAacRo7/1tuELdwC
         G+5p4KCE0CKMamXTiAjUnMkFDLCBi2kXZZTteOu50Uo0RBqHedwCvpu04bEclRxOijxS
         xNrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oKcy2C9B;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z10si69617otj.3.2020.06.08.16.06.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:06:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 56F8120820;
	Mon,  8 Jun 2020 23:06:44 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Peter Collingbourne <pcc@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Fangrui Song <maskray@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-efi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 030/274] efi/libstub/x86: Work around LLVM ELF quirk build regression
Date: Mon,  8 Jun 2020 19:02:03 -0400
Message-Id: <20200608230607.3361041-30-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=oKcy2C9B;       spf=pass
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

From: Ard Biesheuvel <ardb@kernel.org>

[ Upstream commit f77767ed5f4d398b29119563155e4ece2dfeee13 ]

When building the x86 EFI stub with Clang, the libstub Makefile rules
that manipulate the ELF object files may throw an error like:

    STUBCPY drivers/firmware/efi/libstub/efi-stub-helper.stub.o
  strip: drivers/firmware/efi/libstub/efi-stub-helper.stub.o: Failed to find link section for section 10
  objcopy: drivers/firmware/efi/libstub/efi-stub-helper.stub.o: Failed to find link section for section 10

This is the result of a LLVM feature [0] where symbol references are
stored in a LLVM specific .llvm_addrsig section in a non-transparent way,
causing generic ELF tools such as strip or objcopy to choke on them.

So force the compiler not to emit these sections, by passing the
appropriate command line option.

[0] https://sourceware.org/bugzilla/show_bug.cgi?id=23817

Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Collingbourne <pcc@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>
Reported-by: Arnd Bergmann <arnd@arndb.de>
Suggested-by: Fangrui Song <maskray@google.com>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/firmware/efi/libstub/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 094eabdecfe6..d85016553f14 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -30,6 +30,7 @@ KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
 				   -D__NO_FORTIFY \
 				   $(call cc-option,-ffreestanding) \
 				   $(call cc-option,-fno-stack-protector) \
+				   $(call cc-option,-fno-addrsig) \
 				   -D__DISABLE_EXPORTS
 
 GCOV_PROFILE			:= n
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608230607.3361041-30-sashal%40kernel.org.
