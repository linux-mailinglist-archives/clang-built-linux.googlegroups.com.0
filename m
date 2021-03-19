Return-Path: <clang-built-linux+bncBDNZNK75ZIKRBJVO2OBAMGQEIWIK2JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id D4559342280
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 17:53:59 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id c14sf2075591uar.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 09:53:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616172839; cv=pass;
        d=google.com; s=arc-20160816;
        b=JpHQYSW57f5kb0V6DWe3yKDQpx6ShZlPIUMND14DrUeOm1mxaQX34JShTas/2J3x0F
         VeCDFs2NXdWi6WeaCzbv5XgPl6XOpKgHnLgdCVJ9FDAU1LQqraaip2gmOJD42Z3D9Ne+
         eeiEkMZLWmio7RSaMk9gQoVl7H8k1zNZcWWuEePizE8iAsoiei5WwFQU4NJFUSMZi0CO
         o6JXre2KgKIGjgNKjdmvTygu+hH4RPeM+T3QX9vcsO3iwuko6uHK56FpmO61bBWdDKI5
         TAWqmmbtEqVCeqUjt/EExgMewucUF2AVXA5/Vh+AWip6kSexDe0IpjWPnHbQNyNGjwYS
         XI1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=lIh2vNfKgzexx8Z9J9iYULuS81bsUEVJA7e+zIW+YxM=;
        b=b5e7HD8rc+F6J3Ie7XBntOrevALDg4dtzwh7HLqFI9YH9xbFPmJe1CA4FxCHnHQZrV
         h4ufZEkfa/UjQm6gsv82l/0DtP9u9voM/M2gq2+lyBbngFxdFrHE18ZhHTmpwNpqnoFA
         4zygOCVJ0EJdcZcucDCCF45Lu77WfvYaIqfmJb5J9BDWGHBPJBRMm1lVbGvGwGE7lfdw
         BMmToMkAjm6yG2bTZgvKWcRV8YDEA6G+rVicQZ4RuXyyJnN4wwG22eGyICd+S5uHu9/5
         0A7rg4HHI5xPZfG2KoUhgIKGYM+iktv4imyVKqK3fDgPxEkI5Xz15wOyjmzrbYTzru7O
         y2xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andre.przywara@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andre.przywara@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lIh2vNfKgzexx8Z9J9iYULuS81bsUEVJA7e+zIW+YxM=;
        b=LVkVulAFbfQMS2Txe2C/ArQ8F6PVfTL71GiDNaWGoxVoKBXqDC2+YrjRi3c5uMqmr2
         SRQckgF3lF/qWjQRanctwajWuJ8KmpG2N95k2SjqyAPtaP1uvFeOUalMqhJpP/Gum9y5
         FmLBIxOChOC08mKGT4Pqor811VjOoB47wFfUmXzG2OlB4WzhwiJIKq1wVMF8H8CspSvs
         n2J0IOAxWU0kVg/PtNGsQX9qS9EaRprAXoOZux1PLNOEEncDY6+F1a+naYdf6HvcCqxC
         c9CFvYx0RUA4s+gMApQu34kkMmv0dSHE4xhXPs5D+5wlL32OLEMSG2zjSwd2qyMwqnbK
         ISIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lIh2vNfKgzexx8Z9J9iYULuS81bsUEVJA7e+zIW+YxM=;
        b=IL3MocKkOB58yFWnCOt4XxyiVDWkwD42H3iSn4jqSBW26GNvCuNP9Q/w/gckg5Ygiu
         ggAmXvkkKRhU0fJrVJxNGvqXDxBfSOrjo82SRWN+VVenfBolPN8x2MQEWvLc/j833/JB
         b09xhe6JiOLvgek+LrkvBWpme4wFB7w3a0PJ1DQkDrcUV3pGFzjEo/jZxvd3cvhHYd6P
         UZmblYp5PI2Df7aUGU0vo+hsgivytvlVJ+zDmZpODm/dVgJkqNundDfeiTMYdL7OZbDD
         AT5nlyKmRvs/IRpxQxUUpvA0cnTLSUjfsvl2GuYS1B7topFw9+ZN9mPyxY3dXBEYLoqk
         /X3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Na5nde+Q0k2KFvCME2iR+X0FNTr3t98WxJiagBxAsEol0gVFa
	6XkNTZZnI8tszubJWM2x+iw=
X-Google-Smtp-Source: ABdhPJwiN4kXYVFVSBsqAHGUr2h6Xd/sB1Mt7Z3huVdSF5l93R857VDKcrv9NB8hgzz7mhAtYasgFw==
X-Received: by 2002:a67:7cd7:: with SMTP id x206mr3657875vsc.11.1616172838961;
        Fri, 19 Mar 2021 09:53:58 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e88d:: with SMTP id x13ls785654vsn.11.gmail; Fri, 19 Mar
 2021 09:53:58 -0700 (PDT)
X-Received: by 2002:a67:eed4:: with SMTP id o20mr3633193vsp.25.1616172838452;
        Fri, 19 Mar 2021 09:53:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616172838; cv=none;
        d=google.com; s=arc-20160816;
        b=HrM48rcrat+XBXHkLkitdtbPkiiM+tDPEfcKh1JVGxSw4C8QHf7V6Eh7ErC0cdoVcr
         Fe8iuTd9OA4RNdJ0qfJLpFSi66xFSisgChf11IgFqKBSaMKgnGDHkrSPizx7ssqMw2hD
         NFi3+344a6BqZi0e3z0g+jENXFTS+zo9YXkB0DAKk0MzsPCwJZJwdduFMagC4pc+dhfB
         uTTta/dpWB68QFtvU3UiAkoxFEUczRiYN/YfgEH99HY40kVFKykA90QpA+VVlGsCdV3K
         0OHiNsk1jAJ+/0pOMeQSjNdBiUb+sZfbI2YZO2CeXzgCTwh5l7qLThwUV0uiA5loR8lZ
         ghgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=Kd2pRfj/0/IKEwR6FDCTtFX5r1cRJfIHN09r9Q/3gPU=;
        b=WK0ts3Gek8LjOtSIg4x7PjSepkMIj0RIvKu9F0Edg24WHZFEzKB7emrGob5douCFY0
         cvBA0xdLxYtHmZwa7n7X7eiO2KceVSCS7HkXJciJrv1O9anabwNyoUYlCl+L+DPw5+wr
         IbHmdPSo3B23924csn1cuq1sTphurZax8O2LZXccUEKJz+/vaDmJrzW6vfL9k+/xMGyq
         ByUydicVu7MaqZzP3Gk8PTclrJShIiKMUGaKd+UeXtj8zjqq3lMf9dH4siIx+bW5x+pc
         iex68xhfIe1kPAG1n87VWAlPfF6YugZwQLGebw97qeVPuN+AjP/ZBWhqZ+xtCLvWSVhL
         8SSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andre.przywara@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andre.przywara@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id w26si195070vse.2.2021.03.19.09.53.58
        for <clang-built-linux@googlegroups.com>;
        Fri, 19 Mar 2021 09:53:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of andre.przywara@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CECB4101E;
	Fri, 19 Mar 2021 09:53:57 -0700 (PDT)
Received: from e104803-lin.cambridge.arm.com (e104803-lin.cambridge.arm.com [10.1.197.64])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4670F3F70D;
	Fri, 19 Mar 2021 09:53:56 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Shuah Khan <shuah@kernel.org>
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>,
	Mark Brown <broonie@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kselftest@vger.kernel.org,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [PATCH 10/11] kselftest/arm64: mte: Fix clang warning
Date: Fri, 19 Mar 2021 16:53:33 +0000
Message-Id: <20210319165334.29213-11-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.5
In-Reply-To: <20210319165334.29213-1-andre.przywara@arm.com>
References: <20210319165334.29213-1-andre.przywara@arm.com>
X-Original-Sender: andre.przywara@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andre.przywara@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=andre.przywara@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

if (!prctl(...) == 0) is not only cumbersome to read, it also upsets
clang and triggers a warning:
------------
mte_common_util.c:287:6: warning: logical not is only applied to the
left hand side of this comparison [-Wlogical-not-parentheses]
....

Fix that by just comparing against "not 0" instead.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 tools/testing/selftests/arm64/mte/mte_common_util.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/testing/selftests/arm64/mte/mte_common_util.c b/tools/testing/selftests/arm64/mte/mte_common_util.c
index aa8a8a6b8b6d..040abdca079d 100644
--- a/tools/testing/selftests/arm64/mte/mte_common_util.c
+++ b/tools/testing/selftests/arm64/mte/mte_common_util.c
@@ -284,7 +284,7 @@ int mte_switch_mode(int mte_option, unsigned long incl_mask)
 
 	en |= (incl_mask << PR_MTE_TAG_SHIFT);
 	/* Enable address tagging ABI, mte error reporting mode and tag inclusion mask. */
-	if (!prctl(PR_SET_TAGGED_ADDR_CTRL, en, 0, 0, 0) == 0) {
+	if (prctl(PR_SET_TAGGED_ADDR_CTRL, en, 0, 0, 0) != 0) {
 		ksft_print_msg("FAIL:prctl PR_SET_TAGGED_ADDR_CTRL for mte mode\n");
 		return -EINVAL;
 	}
-- 
2.17.5

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210319165334.29213-11-andre.przywara%40arm.com.
