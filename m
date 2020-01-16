Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBOFRQLYQKGQECKXQK4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id C243513E484
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:09:13 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id u6sf13179256iog.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:09:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194552; cv=pass;
        d=google.com; s=arc-20160816;
        b=dQc97RCioka8CN3ztb8vGi6gY6sf1Trp/250eaoZb5RUHbJUbOVqCBQWbgg8WgKX46
         3US5ipQoXHjLIs40dD1gcP0BRV2hKHgE2ATpJbAje2C5hchsCMeIjZRFZHTwFHpvMDuG
         HzIbxPwI+iQSumgksi3BYYLOuRGvk9+moGCRXI3p0rDnSf6/ZoQ9pR7YEsUQEPKXYHgO
         rgSqPQml/tpUoaWDsRcq1a7jS7PdZCxTUw2d/PznUU2+v7g4f0l22nWjw+Rm95kx1nXy
         aQlYvjyrQVWlFvm4ecD6gao4Mf8XKjnmiSNFNxYhrYDDJYeqIXx8Z0xPCFzA9mT7uReL
         toIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=EtHZYf78oLZhhUk5mN71d9UTT269q/EdN2lyHFghtNs=;
        b=cqKsLdHu3khZku66RYPmnxHi7+GnLwfqgldLhAjKPmAHstRcUXLGxliZxuTS4o317V
         MxLnkRph6wde8i819j8H9a8UezDS9frdvwqb5BXj+VwmTO+8Tjjy9hYeB0V1xyk2MnDR
         Qh01Y7O1WlcU7DHDmddZj6FB3BuvX57SLA3wJs5H7LvIuxbYI+xJYbthNBZNOHbYd21l
         O93sUyY7C+HYzdl9q+wMOV5/+JkLvPmhcbbPULmAaCZO0ubiz8Y6GVKy8o+aWhcUGqtn
         +EjNDb5+5VnMI/LdGhGK7LW6CzmjjbjN8uDjeDTVW6pkUV/0dM2D6PRSUTaz40DTUvIL
         7q8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=snpIHbEo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EtHZYf78oLZhhUk5mN71d9UTT269q/EdN2lyHFghtNs=;
        b=spjGOPyrDb0nHUaOVBB2s2y+nPPCCCzN6XG0G3WIjVYczKKjOr/sY+uohOUpeHZUVj
         oPbTos25GziCv47Y8pmHa1UdgQ1x5t2KxoElqx7ScXu3S2CjWMRThyDDPRXHdSXSOjkM
         5TM1K1W9pV78G8bZje55dOOn1huu0u2nis1zLCZvXwPmpMQNLNCaclPeiy0JTODCgexA
         hQ7R0gOzOElXoDlzgUD8IeMMpDM/ZiGdGOZn0C4siq5//fs6LKjZuPirtSCQiA3pV7k+
         p5bl5/Lfa7PYrkhIFwfVt9TpIiNx9xqEt97oGXXYvIke3WLIW+Rc0Dkc+tBX8bBpXdbG
         UX7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EtHZYf78oLZhhUk5mN71d9UTT269q/EdN2lyHFghtNs=;
        b=fHIxjX6iRlw2OcdoA4ce6rWdwAq/EIW8FGF+sjCGF3QP+7zFmwJmsKDL3FIlMpM0e4
         5fCMRPUR5dTXr+sWre51DspT+ZIEn214/jQLq9N60Hd+1ahKMIKiP8dbmU2a+nJZGfF0
         Ye5KerjGbznQaY6lu2y+tzXS9fx9gNQxzVizWCLF+T281RgkG+04L0HrfLkvTZyjuxHl
         E7iKAawCWdspZn7FgqWJX+9nrDngLlSwXWOdwSXjsF4hPo9usejBHKranwxqzuV5p4dz
         +SpYfd2zTaOHS4bD8hwcJStLo9VQpyIVGG3mo2p2grDDENAJfUXK4uSHx4+XQs5+2yQX
         rtVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUemR+lSVcdHP+C6J2JriYF9Zy7W4FTXrl37HQwMu7qwM/pDvE2
	6vOGMSsiZtaKYA+FjlpEXb4=
X-Google-Smtp-Source: APXvYqzoETXca0fWgKQZ44XVo8DYJkA4TpRuTKKPXJ9/W3vYWCqtXF/hMLndF1J9bUVXRc3CCf8Kaw==
X-Received: by 2002:a92:cacb:: with SMTP id m11mr4700708ilq.133.1579194552704;
        Thu, 16 Jan 2020 09:09:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8747:: with SMTP id k7ls2427179iol.0.gmail; Thu, 16 Jan
 2020 09:09:12 -0800 (PST)
X-Received: by 2002:a5d:941a:: with SMTP id v26mr6870486ion.267.1579194552288;
        Thu, 16 Jan 2020 09:09:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194552; cv=none;
        d=google.com; s=arc-20160816;
        b=coN3iC2jI8eNIcua0Pn/xDJkCawD8+jFO6jMH10G1hTVHwIENyAiXHp7OvwzmFS7e8
         ILeQi75pFK4Eh8KA3n199yD1iWLsqRXbnYrTy428msIvnvi2+9V6Bl2GVJkYmUvG33Dg
         jtv2Zgze080NenNlrGZDXvo/i0e0hD+RHB3DwQ08RzF5khs+rtNkDpjQGhdOLIO0gjiy
         DuhRtmEUM9meMZah49CpH2Uu0Pjw3/aMHOeeWU7zhJrXAomrjjukMmAuhCv0h+Xbx5ah
         lazgvjtOihOZjcC1QWflhE/Q55SOkurXOor/JJ5SEqJjZXt5QwjfQ1EfUzjV4MgFqrC/
         CkKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=aYlKCuI5qkFv/mZ3qQzFsn+N6GADcAn9vMrmth8bPBA=;
        b=hReT+D48PragMveRHr047dJ2lCCPi4PoYygwi2G2vZ9jKhGeGaZ3c2wRA+AWfOo1KJ
         WksOal71NeigR0pCE7BG40iK+9/Y5DbjrrTY0yR661PWOIS/4TQC0qHmxDn2IMMNELVs
         gcUIbtb0ViNVmJxmJsQByDf04s0jsuClWP2ZKEOvNCCgAJSomWv2yX8ElHx1X10knQAx
         WbWi/p91kBeId2sG47VFJZTsYzQqgbJcsbgSuwcDM4XjHfv3L43RziHf2iemGXvUDl/F
         GzV825jFE9LMske7x7ycQNzC2AVRIabqqFVPOwxdJvRDctdji8FEdtmi/eVGKl5cMmTv
         3+qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=snpIHbEo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b16si668220ion.0.2020.01.16.09.09.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:09:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B169824689;
	Thu, 16 Jan 2020 17:09:10 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 434/671] clk: qcom: Fix -Wunused-const-variable
Date: Thu, 16 Jan 2020 12:01:12 -0500
Message-Id: <20200116170509.12787-171-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=snpIHbEo;       spf=pass
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

From: Nathan Huckleberry <nhuck@google.com>

[ Upstream commit da642427bd7710ec4f4140f693f59aa8521a358c ]

Clang produces the following warning

drivers/clk/qcom/gcc-msm8996.c:133:32: warning: unused variable
'gcc_xo_gpll0_gpll2_gpll3_gpll0_early_div_map' [-Wunused-const-variable]
static const struct
parent_map gcc_xo_gpll0_gpll2_gpll3_gpll0_early_div_map[] =
{ ^drivers/clk/qcom/gcc-msm8996.c:141:27: warning: unused variable
'gcc_xo_gpll0_gpll2_gpll3_gpll0_early_div' [-Wunused-const-variable] static
const char * const gcc_xo_gpll0_gpll2_gpll3_gpll0_early_div[] = { ^
drivers/clk/qcom/gcc-msm8996.c:187:32: warning: unused variable
'gcc_xo_gpll0_gpll2_gpll3_gpll1_gpll4_gpll0_early_div_map'
[-Wunused-const-variable] static const struct parent_map
gcc_xo_gpll0_gpll2_gpll3_gpll1_gpll4_gpll0_early_div_map[] = { ^
drivers/clk/qcom/gcc-msm8996.c:197:27: warning: unused variable
'gcc_xo_gpll0_gpll2_gpll3_gpll1_gpll4_gpll0_early_div'
[-Wunused-const-variable] static const char * const
gcc_xo_gpll0_gpll2_gpll3_gpll1_gpll4_gpll0_early_div[] = {

It looks like these were never used.

Fixes: b1e010c0730a ("clk: qcom: Add MSM8996 Global Clock Control (GCC) driver")
Cc: clang-built-linux@googlegroups.com
Link: https://github.com/ClangBuiltLinux/linux/issues/518
Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/qcom/gcc-msm8996.c | 36 ----------------------------------
 1 file changed, 36 deletions(-)

diff --git a/drivers/clk/qcom/gcc-msm8996.c b/drivers/clk/qcom/gcc-msm8996.c
index 9a3290fdd01b..bea55c461cee 100644
--- a/drivers/clk/qcom/gcc-msm8996.c
+++ b/drivers/clk/qcom/gcc-msm8996.c
@@ -138,22 +138,6 @@ static const char * const gcc_xo_gpll0_gpll4_gpll0_early_div[] = {
 	"gpll0_early_div"
 };
 
-static const struct parent_map gcc_xo_gpll0_gpll2_gpll3_gpll0_early_div_map[] = {
-	{ P_XO, 0 },
-	{ P_GPLL0, 1 },
-	{ P_GPLL2, 2 },
-	{ P_GPLL3, 3 },
-	{ P_GPLL0_EARLY_DIV, 6 }
-};
-
-static const char * const gcc_xo_gpll0_gpll2_gpll3_gpll0_early_div[] = {
-	"xo",
-	"gpll0",
-	"gpll2",
-	"gpll3",
-	"gpll0_early_div"
-};
-
 static const struct parent_map gcc_xo_gpll0_gpll1_early_div_gpll1_gpll4_gpll0_early_div_map[] = {
 	{ P_XO, 0 },
 	{ P_GPLL0, 1 },
@@ -192,26 +176,6 @@ static const char * const gcc_xo_gpll0_gpll2_gpll3_gpll1_gpll2_early_gpll0_early
 	"gpll0_early_div"
 };
 
-static const struct parent_map gcc_xo_gpll0_gpll2_gpll3_gpll1_gpll4_gpll0_early_div_map[] = {
-	{ P_XO, 0 },
-	{ P_GPLL0, 1 },
-	{ P_GPLL2, 2 },
-	{ P_GPLL3, 3 },
-	{ P_GPLL1, 4 },
-	{ P_GPLL4, 5 },
-	{ P_GPLL0_EARLY_DIV, 6 }
-};
-
-static const char * const gcc_xo_gpll0_gpll2_gpll3_gpll1_gpll4_gpll0_early_div[] = {
-	"xo",
-	"gpll0",
-	"gpll2",
-	"gpll3",
-	"gpll1",
-	"gpll4",
-	"gpll0_early_div"
-};
-
 static struct clk_fixed_factor xo = {
 	.mult = 1,
 	.div = 1,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116170509.12787-171-sashal%40kernel.org.
