Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBWN7QLYQKGQEZGAAUSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BD213E9AF
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:39:39 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id n26sf13256815ioj.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:39:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196378; cv=pass;
        d=google.com; s=arc-20160816;
        b=HWjz78j5tEUwAXqSilPc56bggnwsrbG8Z3Elubo9Mh82kVM3SAVB/x+elArInRBvVF
         k2jLDyf80FOQeSyCSNmQIcDfn7i8uWaZk7TjBc6nIh0UzemnpVFoJdX50qVo+BTm6xBp
         F63TRuiHX+jqIzClEJcx65WYtH4hTj7RIfnbyZWehMevFrOgh8XTwZxPjiPzyNzB7wHd
         uX1TQfHLZrtDlZoZIcB3GDXnjyB8cCyKntS0LyQtS3b2EvcIHyWIm8NkbY/Xz0Z+72YH
         akZEfq7ekK0vDNu05NnND1Y5fCtCGoFf/AuaE4addKSXXnuRuUxzqoF1Ue5c7QrSQvzX
         FDAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HRV0sE1zcF8zhwMPQ5b8qjjnl1L/Ubw+gIxZB8v3EDI=;
        b=yYmOTZa1eUO0bSJDpQCrtTO1jlzMzj6+RHoVA75d84+AgcIyeLkepWnTaotmOHv7ne
         QdWMoSU7t3wCEs4VzzLQcGr5T+5IbdMV4lVhlrIO7o0DTOQi9y6drhEd2bTbPE02IO+H
         7R4cZCHVI8h6tHgl7Hh1MFUmKvIFSTIBHRBCrE9d9WnZ04S0FZfW0CXtrOSTxAkDIKB7
         ri3q+XfQ+guHaqjOvQrf/IjHFFUv8Rr6sj3H2cT+kMlulmenQ8245cZgI3MS10/pgyWB
         hAo7pczujD8FWQcF4YLpnx5f9O2Q9g/uxb938o+avDo5sggHKEV7yPDggeJTyhZlweHm
         KKtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mt3SamIk;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HRV0sE1zcF8zhwMPQ5b8qjjnl1L/Ubw+gIxZB8v3EDI=;
        b=hGPnvLvNimPD5DnZDdwjsv26idFcGrtJzedjhGJn+eU7ypn4QfNaKFjZCTA93rjxjo
         Mx1Wi0AmjOWu7Ydri7KyydM7/yQ6ejo5FOzDZggOklZ8pnyexj4eIKY5nFXJQsvRyMf/
         C5eJCSH0Owbpa1MdF7mlRF/A76SOpdL6j4zk5UVZIoukgjM9qplh08CLMs/9iZHv7DTR
         TjhHYer00kuSh0RIJFO9f+gi7bSkEdEMDVhPWDOcnIwX2N84ED5vVzmFo3CShd/BBel3
         nw2FaJHq3viXfFlZd6d4y9IRiSvt7K3/cpZvNRN71hZO1/5N4RdumkVFtxN2MMlpDwfj
         dovw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HRV0sE1zcF8zhwMPQ5b8qjjnl1L/Ubw+gIxZB8v3EDI=;
        b=aa/SFmzwrN69DB59c9eIfkfLluDjOj6OWTMYAssGig9/b8h0Nu1YJuwwyOxFwwIme+
         LkQucQBSoV4Bd99gQNlil9taZs2WpSyiUMo67IHy3lwFX8f5qqXNStjwWwthpSLKR+IX
         rw3aQlzf4xvHD8hDHqnnKIt8tju0OnjCfdPcIFJ75ZlgJ5b/fFqxirFRs6PCA48UsVpx
         wvXNghtNoGTcDi77+cZ+5AicDE1GKxJJDW4Uxhp6YDngZPAq9WbfwSnmvZajpI6x5HRj
         ZnTcLly7Tpol09t7TG8ovQWUqc62DOQE/TbhvlLfiw5APnkSaF0s1k7wb+mDGYLWMVZD
         Yy2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWEFb2U6f/8JaAljaM/chq0bTPltxZH/86p/XOuBZyh79fnW5MI
	DzqoBEM4DVV9lHLf2JnDLd8=
X-Google-Smtp-Source: APXvYqx4E1YOyI+tHtaa96bdrZLMe+cEwpe93PvZb3j+RtAjmknEm3t8e5mAVXZjDxVz9HA8Icq9hw==
X-Received: by 2002:a5e:dc05:: with SMTP id b5mr13180130iok.139.1579196377931;
        Thu, 16 Jan 2020 09:39:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ba5b:: with SMTP id o88ls4078447ili.2.gmail; Thu, 16 Jan
 2020 09:39:37 -0800 (PST)
X-Received: by 2002:a92:a103:: with SMTP id v3mr4638810ili.265.1579196377615;
        Thu, 16 Jan 2020 09:39:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196377; cv=none;
        d=google.com; s=arc-20160816;
        b=xLMRx+3/Qx+8xfOJv+s56ZTDiWSvV4tniRtuqaumgKGWk5Sa2CmsALACLtHD1i8bW5
         VcbM80FDWDAFLzhiENneKmbI72bZIuFcjRjVRCJrAvxFEHR08tGU5wxUcNER9gQ9kYkQ
         HhZt3cTiepnhOVIkThYsKjdh1gTN5fsdeBUi22683syno8ScAMmnju85TuiTVepZjSSD
         7NfxJvamvoCOpKwK2OUPlf8bskH6oz8Euyjxq9go08T4sb256FOYm9IkGNhVSn9+OcRD
         T2f7KGJK4kcLHezzi/k4ltym81BVKl1dV5ec99AVK71iqZbCr5yqNVsSE6+OWL7oEyJv
         CBwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ieNYwC8gnkyd7vHEuPEcBXYtvkEPtkbWAwXu49biFEE=;
        b=gArpK/T8IR1kwZdIfQ73QSX1VhhU+2wyAYzwrSvnYn3/2R0r35o4HAc6IOlYFQWl+7
         fIZolcnHeY6MBqNTxb321AuYrB0OyklgGvCImHMR1O02AMWBgnnT02UZeA3EjmCJKLdm
         sTsSUHy0FWlINwCt0yIGRkolfKybSXF8WDly2BfCqAD7BLQs/Cxtcm6593qk7qoQmX3M
         kvoOIx9tV6aG3DTsyalFFz0jU60VgCGpaPB2YeyeKN+xiIJaEa1Xa4ttV1Af+m/OqNW3
         VkHXlj/C4b2z1KmFSBCoworBUw7LoP9TEOK7fz/yg38gWNwRU+EeRn5Ii3PRHeedL+Kq
         Ovqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mt3SamIk;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b16si671861ion.0.2020.01.16.09.39.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:39:37 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id ADBC724711;
	Thu, 16 Jan 2020 17:39:35 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 161/251] clk: qcom: Fix -Wunused-const-variable
Date: Thu, 16 Jan 2020 12:35:10 -0500
Message-Id: <20200116173641.22137-121-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116173641.22137-1-sashal@kernel.org>
References: <20200116173641.22137-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mt3SamIk;       spf=pass
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
index fe03e6fbc7df..ea6c227331fc 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116173641.22137-121-sashal%40kernel.org.
