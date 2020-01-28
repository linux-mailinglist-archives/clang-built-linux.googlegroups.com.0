Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBYUGYHYQKGQES5IS3WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 561F314B828
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 15:21:23 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id c130sf10656571ywb.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 06:21:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580221282; cv=pass;
        d=google.com; s=arc-20160816;
        b=LxkxtGshTZC26fdFEdXEnPuhPwsd2yaEW8+3AuwdQdf4z+fVteu1lIuHAMr3KsErIq
         lDZTBJZAsKSN8lNpyrLdj2PSyqvFEOzo3QUIR/3CDTk5Zy7m+CvYhwGB/vPyho3FxKCw
         /XBRZw+tLrppfiCGClk0RagajMY+tqd/xgLCMHOw4Ah6G34nOVZrvJXn9BxBAjXlcEeo
         3qYLzGwE3FnB8+6f8qSKv2TvQDLjOBAHkaSCNMqHM6DV7qu0Nby61XOXWObWtKBHUS9E
         8wSp/qQsgdnmfagUPjfbsxbiT7cqgbTdfVEOBnoxv0bJPBXf2DHa5ioW93DMLkPx/WCo
         dgQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=cKOEcWVGeZl/wd49oPwVvwgtp5VffexJn3PFDNqZPYw=;
        b=CGC7BuXIhdcm+FQnUgPjYYzEBPwIrYdRDj0MEP8HkMX5m+4czSwXXG7jWBfKbaeDfS
         7lDoFw1BNHHkiLdvVE+3kRnln3oa2LluuoAyt4n4CoDq4ZMyEaTnPGZf7seFYlib1pPs
         RqltF3Vs74tansCoJlE2HhHlDuyRajqyZySBQtHx4+4aXYN7Sy+P8KJGtxAIp9lxSgxw
         Lpg4U3jLx6ARViof0XcKwTroYF5176dqfFLFoQUIh4Tb89brQossxWvOBx9bVBJhUOpp
         3wcZBNTOSNzuGzfgnhJoAJR6Kvo8PaCArTQ80F315kf0M0iqnFBZjSFjzW9hSDFXaHcM
         JnOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ro9Lt6n8;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cKOEcWVGeZl/wd49oPwVvwgtp5VffexJn3PFDNqZPYw=;
        b=X3ZXY+cKl/It2KuwOyhvlMtrv+2vMFZYrjA6LXR4GU5tyVV1khJ5e87/VKR/loE/Cq
         PmhAoTS1+QU8aDVazE2tjD6hI70P85aaSEXNMD05r/e8lBzhC1nt4DUtKKBNioEb+8M2
         HYnwPh5g9omX4G6p4mpHBuZ5R2HVsF2T1nhwjPQn8PWv6/YZcTUnxyDC+OCt8Y1QkaTv
         Qxo2LyVXCHIV3Y8GeJCmTfkBX4M7STC3OVCaRkaWLGOjMzbYD73R8ZJMw8I3CxDVzMey
         RxsMiTNFP9TeSIEoivGi+EsqzUVUibkloshYleB+k84FX5WRZcOCqND8P9wLF8u+hlCe
         tlEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cKOEcWVGeZl/wd49oPwVvwgtp5VffexJn3PFDNqZPYw=;
        b=JJ35EKQSInAfVhOrwOZK8Y4AAeWGgEYhZk+MhfXqkYZwnpmHOP4RJJUN2ahe5DTL3T
         ctb8dXxgYRuB0rYqT95qCnzt8d6IpFmw8KxedCrDdBEu+dcXsnvVWuO104GKfm+NJsVQ
         IJvpEMC2I2mOtT7CqPhxeCF3N66dQ4SVXChJG21weMJbTzcTR4tMF8+mNyW1glkzxyq5
         BDCSnrbI+11vE969QiySR2Ups5l4koE4AR73R/9NlmWeUD2ajcMdIOlJatXH5wp8iFMB
         Dk/4Lbho1rlufG6H9M2p3uRq2leuzX3raLoNciMe0zTflmp2XN6j5viil+1Iqfw/DLFO
         VrMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUxGM5ge96Yv0vK8PlspCGaPMMSW0VLiaN0RV3GHDDcZ3x8Wl8G
	CYqFn+y4Iesd3wa8dSBc3Po=
X-Google-Smtp-Source: APXvYqxZVfLpZXCfxztajouslVzX1Z8+c6R/FCaLHHEiXumpOD3CjvKOmuVg5oH6i/9j3t4HyIM+7g==
X-Received: by 2002:a25:dc46:: with SMTP id y67mr17784413ybe.83.1580221282380;
        Tue, 28 Jan 2020 06:21:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:dc43:: with SMTP id f64ls2731418ywe.2.gmail; Tue, 28 Jan
 2020 06:21:22 -0800 (PST)
X-Received: by 2002:a0d:dd83:: with SMTP id g125mr17454932ywe.396.1580221281944;
        Tue, 28 Jan 2020 06:21:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580221281; cv=none;
        d=google.com; s=arc-20160816;
        b=uyW9pEg+ohEjcaM1Vp2gwhoTU6FFguxoV3765omritKffWXf+YMzKn7joY49uW7U/f
         GsE3KiwI9ASCuiWQbp5QxsAd8bzI3sNfiXf6OpFsooXvSn7JltXx5A0E7pHdEHfyPGKU
         zss5OIk0Foo7HyChvSeqcWfl3mkn6PZWOJ3UQ9soh84lnTen+nfBDPSP9rUsshFIxt0y
         ViJTBgUWqyIFNEFjghY6Ihz2u3LNv1mykPZ90Z+dmHBPBb5ZpGfpLlcswNxyV6/JAUxI
         rilz3PskhQYc4nleQcO4U0KgPjLuWta86+D7qyGioqaZKnUU3fD1BFjuNwof23SHN//o
         8qVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=pQWJxx+t6GJcbQk9GlbqrDrttvexp+guDZumQ2khXcc=;
        b=Hx5KX+SotTB7q8dGyIg1c52MP2+Irt1OranbDx2JJoXtSIWcft0cJp774SvL6+W7Ce
         fc+YPt1JhIvtW/xH0G1G91lGhmXDDYw62KU9bzpOT7bqrHKs3YCF6O/fkvlWE/8Mw1vQ
         XR/14BmmV5Dqfp4Xo6cR3Nerx3tVvZrihDy1h3ZtzQHtUuUwMIXGKXaif2WVu8bMBsZT
         f/Jefi4/TGR1SRYAXjbQ5ZPykIP2+NM+MevIheb2zrNx0dexqmcbxGYl76mP+AGKyHwL
         uGOTcXR5YtTZrskjgTjRQubL2ulPLJ+cx0rbKyOF4PR0tDNBVtfe4S6QZPawxpRDkqAA
         T38Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ro9Lt6n8;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r194si1137146ywe.2.2020.01.28.06.21.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Jan 2020 06:21:21 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8B37C24688;
	Tue, 28 Jan 2020 14:21:20 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nathan Huckleberry <nhuck@google.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.9 162/271] clk: qcom: Fix -Wunused-const-variable
Date: Tue, 28 Jan 2020 15:05:11 +0100
Message-Id: <20200128135904.640096317@linuxfoundation.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200128135852.449088278@linuxfoundation.org>
References: <20200128135852.449088278@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Ro9Lt6n8;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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
index fe03e6fbc7df5..ea6c227331fcf 100644
--- a/drivers/clk/qcom/gcc-msm8996.c
+++ b/drivers/clk/qcom/gcc-msm8996.c
@@ -140,22 +140,6 @@ static const char * const gcc_xo_gpll0_gpll4_gpll0_early_div[] = {
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
@@ -194,26 +178,6 @@ static const char * const gcc_xo_gpll0_gpll2_gpll3_gpll1_gpll2_early_gpll0_early
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128135904.640096317%40linuxfoundation.org.
