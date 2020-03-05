Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBQXGQTZQKGQEQIOGREI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AECD17AB4F
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Mar 2020 18:13:40 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id d9sf3273819plo.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Mar 2020 09:13:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583428418; cv=pass;
        d=google.com; s=arc-20160816;
        b=wvDZlyWwzo2SkSf8mt+4G0M8wmF4u3Uiu0YMO8Vi/WdDknt9Q1V0tnDyYF30N3kHfS
         aKSHwEjLECSO+5GbrJGAkWqM8QvvCFrTuPOO/7e0PhjuCP1jgX7jEm07rXwDfgpUEMuy
         8IvHzMdxaJuQcdnHe+v9z7YsGIhNI3woTtcFGcuRzsTCQrKSzJJEbsZRrkuZMtsPBcSI
         JF1goyCf/CLt6avB+0tzrMyt3ZxImh0icGbVacb5IjJZ+JsqS4w6lSWMZ/5pOp7G9PRl
         gm/ZjaJB1Wlh+2eHQSlcmg/CDtmS5SO0A+LMZSfUDvgfCVqDaFtXXPc0DKKVB2KkOzCe
         5bNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=okYi50uBIPo32Fp6km7dFfIc+qintOnNLIsFxewIAVo=;
        b=mDpi6sB2XKJf92J8YYWgsGBTeAB0SkR448yo8URRabuyhi5FCugfxvbMoo38rbPoby
         e8MEwKpsjS5oeJ49Jcz+omTxf042P8xpbOu2qi7YTF1t67iRkJhmjMHo2tSBwDh/7z75
         iCsKOj+OirLk2XCuA4v8neDSI4KE3xSwtFzJz1TXsBZmB+mPnF6btdJ66lGNPZd+/9F+
         W76WgEag4G29f0IaGZgAFh9eF+TnCmGGlHOsZCcLo0uc52FrfLYbprvxh3oDttYovxf2
         I2Gshw85aEEXnH61eZhUIeGiwfLypiYcOXKAFkY3/HOhrNMqmapChTzjp12Ig13gjJqo
         knNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=q2TSkB9w;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=okYi50uBIPo32Fp6km7dFfIc+qintOnNLIsFxewIAVo=;
        b=LSG1SQaqRKTK2oEoi8jsR1/lv0P/ugjFWhR9CnwhSGTY9R8+P8OQWQJy9TToxmYolw
         rv7GHF+JfXPn7AAmFTCUS31KrB7RCuAEXRX2EpH8z4ZC7rg0PScDIL+47kMd59zr8669
         Z59UuxRwUsNISsABsjlSQ1V1hd4L9gAnpCWQMaT7Q47+bkc234bB9z7ybl1Pg6HUm22S
         wgnfiM5m+tYPL//KMeWvaBb7a3FejmdHK4FXJR22Y3WlkHtuMLS6MyZqEthRYVEelCTf
         RTiZWzlNrae3oAjlecGHb+muFZ0eTEfxtM83YUNkAI75Hc0TgnBOE+gdFsW/F1wpC7GL
         4zDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=okYi50uBIPo32Fp6km7dFfIc+qintOnNLIsFxewIAVo=;
        b=ZymtKnhurmoxsJPmJzPgS5Rq5Ev/4q9fzyW355VEMz/mEQIqsLUTwOSQZGnHwa/NWJ
         Y+EPQW3M1dlsOt1x4fU1WiCIR0hIySx8IZxtB6K632Oh+nc2rU5F1Uei5qK5MP6TdQzT
         SWJhyiWSyZDd8A+gnbv2gT9EjTlQ9GH4zdaR4iz4pP2gD1vH9/zr4HIgqb3tcTwVhbHJ
         XcDDRSteNKk++ojYfLhci+ORnD90FYL+mBDzbRL/1cjrTb4/qS3AeV0KKTBLvxFLalW2
         naxRjNEuVHu+4cBcPBG4A0sMIAdga3188Sg3eB2s9v4vR64lS9vR8Yiw1C8UdcDvtq5s
         lm2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1Nf/nD7owBfXx9Tc4pHeVAxDoNFIpAEScVmpZgBCiOLKNIoQAX
	Tp7KqQVPNuthXK7XujJzkWA=
X-Google-Smtp-Source: ADFU+vssSyFdd05//s1tBZ1/IQb4prFcoTiFVqRB8BaOTQN4NcmTLGZuu6+zwcWeD1+dE89UbkaEXQ==
X-Received: by 2002:a62:e505:: with SMTP id n5mr9416750pff.189.1583428418421;
        Thu, 05 Mar 2020 09:13:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b415:: with SMTP id x21ls1267530plr.0.gmail; Thu, 05
 Mar 2020 09:13:38 -0800 (PST)
X-Received: by 2002:a17:902:748b:: with SMTP id h11mr9158004pll.267.1583428417951;
        Thu, 05 Mar 2020 09:13:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583428417; cv=none;
        d=google.com; s=arc-20160816;
        b=aEvrNBiJ4n44CzMDDOyk8hgO13tVo8jghnP5lwrVyNXF5aAJhxnocxetq2cn9RVfo7
         Hd6KYtK61ONK0WdlFK5tGcCLV0tZjY9E26BfcT3oVAgvImhiokAVnHcsnHt/H8yRfwQf
         ikrnegL/mdYwhd6R0RZoDUIRM+PTCAfEuFkbSuc6E6WLv6ARpK7kAF8zSadN14A+L22X
         imx1YxdogqRFtVp0RhvOAOXbCccwNNUymeuG9Jxxn/rdYH2IonKaKUhotmg1lxK3AteP
         prpYlBUg9gzYzmFaIfA7bzNr/SvKJap2MBN2mILd2XpPinzjKIL04rPDVyaz5AADMTzT
         E3VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9Heytu8cQKw58pc3hYuwyeX9RlRJSpiC6z3gSad6Lmo=;
        b=jUtE2Ob8s+58ks4cg3d92MRJjVdreyZ0NxhqXMCULRZpYM+2c/U8aeSI1baEAj67ev
         Zqfh7bY9zS8NjdCuJvlelCjMkcnl/t25JVDF/wPxBo8A25warMxGrx5PIR0vJstDKuwP
         VpGJy0rrKAoKDivMbXRHAeAIZJHufgO1+0Adkbd/1aoWj8FyP7nBtmkL42N7vlI2kYEJ
         zRAIOYQhKGmP30MgY9SgWJHCWIku+Cw+BCQGyRERyuEiz6t62LWfQUosQpj3y6Qbk+Hl
         ncmIhT1H/yuuIsD70m9vOyFxQdBEuu7DTLwbINu98WQsxAUIJmbQAacsU23ClfxfW7XL
         BnMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=q2TSkB9w;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e2si224336pjp.1.2020.03.05.09.13.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2020 09:13:37 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B051321D56;
	Thu,  5 Mar 2020 17:13:36 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Paul Burton <paulburton@kernel.org>,
	Ralf Baechle <ralf@linux-mips.org>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 5.5 20/67] MIPS: vdso: Wrap -mexplicit-relocs in cc-option
Date: Thu,  5 Mar 2020 12:12:21 -0500
Message-Id: <20200305171309.29118-20-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200305171309.29118-1-sashal@kernel.org>
References: <20200305171309.29118-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=q2TSkB9w;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 72cf3b3df423c1bbd8fa1056fed009d3a260f8a9 ]

Clang does not support this option and errors out:

clang-11: error: unknown argument: '-mexplicit-relocs'

Clang does not appear to need this flag like GCC does because the jalr
check that was added in commit 976c23af3ee5 ("mips: vdso: add build
time check that no 'jalr t9' calls left") passes just fine with

$ make ARCH=mips CC=clang CROSS_COMPILE=mipsel-linux-gnu- malta_defconfig arch/mips/vdso/

even before commit d3f703c4359f ("mips: vdso: fix 'jalr t9' crash in
vdso code").

-mrelax-pic-calls has been supported since clang 9, which is the
earliest version that could build a working MIPS kernel, and it is the
default for clang so just leave it be.

Fixes: d3f703c4359f ("mips: vdso: fix 'jalr t9' crash in vdso code")
Link: https://github.com/ClangBuiltLinux/linux/issues/890
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Paul Burton <paulburton@kernel.org>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
index bfb65b2d57c7f..2cf4b6131d88d 100644
--- a/arch/mips/vdso/Makefile
+++ b/arch/mips/vdso/Makefile
@@ -29,7 +29,7 @@ endif
 cflags-vdso := $(ccflags-vdso) \
 	$(filter -W%,$(filter-out -Wa$(comma)%,$(KBUILD_CFLAGS))) \
 	-O3 -g -fPIC -fno-strict-aliasing -fno-common -fno-builtin -G 0 \
-	-mrelax-pic-calls -mexplicit-relocs \
+	-mrelax-pic-calls $(call cc-option, -mexplicit-relocs) \
 	-fno-stack-protector -fno-jump-tables -DDISABLE_BRANCH_PROFILING \
 	$(call cc-option, -fno-asynchronous-unwind-tables) \
 	$(call cc-option, -fno-stack-protector)
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200305171309.29118-20-sashal%40kernel.org.
