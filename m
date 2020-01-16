Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBKN2QLYQKGQESAUW4SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 932C613E7BD
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:28:10 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id j16sf3387189uak.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:28:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579195689; cv=pass;
        d=google.com; s=arc-20160816;
        b=Np/kA5/uHCme0Dv92pPhGRcQXoQ3mD8k15aQf3zyXy3lv0QPrKMWkVeYwsWJL/Gl1m
         spK6yQCe95zE66O0bJwqQHjG+CcdqN8pR07RhREDfEi3VInwP1tHjVi8OY2B/E5xwQ67
         3GODVc38ycz5BA3o6wXCHDV5oAkDEXViXhSKwMebgcuD1zLAKCJoKFuaiBjX3P5fLP1g
         RnBUUKtng2yxZqMZP/eE4npuUaWfimt60u5wukTllwtfvaGm5TGTSxtSVpnKBLz2mTxU
         wELRGc/HbWTpcFo+kzF5UZK6eeurZv3/qvPm4OcrjEwNX14NO41lhAbi0Rs7SfXchAAe
         AMww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/JkEYlzs6BSta3Ovkpk0DydaavUy45M3RjOgOcmubKQ=;
        b=xB2cZJdDT/0t7DQ/zjfynQqqzGVrh041NUiv55XqgpoGcXMI4ksB8yFaSMtHEy70XO
         PdoRHNTCxZd9zWT4u61zTWTHKObq1E8rJLJ5k7+vbAvHf3uORTCsBkTLrP1Vv3nDYQjH
         fYKGbi7E8GgcTH6nfAl2FUAOlnDU4U7MVIrako7Axx3J9CUsHNCobckdJ+w7IDlTea/h
         iYkF3fIcg39lGqx2q3sUoY1vGHJu/AeIu8HHqPyFsrnXyMc+6LbqCFHccMFZFPZR63B0
         0g7Og5IaM35iwwHeJkqm2cmNXQpcaKqIAyP5xXLEVJjRUkMqBVPnwk4j0NRQ+e/5FVy4
         s8MQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AXIEFkZ1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/JkEYlzs6BSta3Ovkpk0DydaavUy45M3RjOgOcmubKQ=;
        b=A2bDX4TPYeN9Y+pFkmyWUa5Y4pLMIjBZFpyucg0XfZdpexX/o9gfXJhAiyFQ9bwenK
         wX70rxUI9AKeX4yGlAaiGya7+hblMRYZc5QVCdzEcIOQGJwub8hgSyr51nu5+VFnFfI3
         OwANbhusYQHOf66SWk8fqD9RlDwrqXxSz1xE4bibnk6xTLKQwtydnKfe2bQxkbRzuicx
         i6ZPYWOwNG2IzkQMVZkF0MKtGJhqZrjooOykW239elpgOJa7YNKuA8PWKjI7KWL6Ddcx
         1+8reISyLqvT0plBiL+H+N10NGwlPz+Thu4Q/OE5RtiNaT7/IyYazZ8J/84rgB/I0f4J
         lFMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/JkEYlzs6BSta3Ovkpk0DydaavUy45M3RjOgOcmubKQ=;
        b=YLhJ5jzEcH54k2hQsNrbez0v9T+SyD/rM0DlXcD8ivuOv2qMSuR3OF2LQFNG0o8t8V
         eHqi4wqU0uxFbmPIsI1/sBVhwiGlcFQvhNG4FZkbw1azS0QZ1PsDREsnTwGvhq5bLnx1
         Bav4nVjncPsoOFFv3QDda4VU83djjF80/CN/RgEg+bzVo8QUyzMoKMcXWLLi6gKS8NtV
         9ZqciPEq5xk8HP04psImr0WF+qlQo1eb3AzfD4poYRIAGekKAKyWMhi5WK3OdWNi/S6f
         8rKUGogzmBcv0nPQ+Q6dduWWFVr3j1NwO03SVaNv9J0S6oxAL3ZodTrKIneGbcplQT+b
         nLyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXwCpSgreyHWK/Z/bSJ7ygvlxTp83qFhZSf/u1zD5BayD/qOr1Y
	DJwOd6kpiC0BbVTOkKEPRDs=
X-Google-Smtp-Source: APXvYqx8+UW7oIaMIsZXoO68XH7X3GCAn8f2K6UNIGka3U/wpQZ3nLshfAnpWLpMeAzgBsASe0/T1Q==
X-Received: by 2002:a67:e00d:: with SMTP id c13mr2266724vsl.57.1579195689543;
        Thu, 16 Jan 2020 09:28:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:64d6:: with SMTP id j22ls1324308uaq.2.gmail; Thu, 16 Jan
 2020 09:28:09 -0800 (PST)
X-Received: by 2002:ab0:6894:: with SMTP id t20mr18604222uar.100.1579195689128;
        Thu, 16 Jan 2020 09:28:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579195689; cv=none;
        d=google.com; s=arc-20160816;
        b=pakDDNxkoabDHeFqPlOorQ5sMcBw0PCl6tMS82Xq4kzqEYKlvMGGoAHFlV4SBf7Fmt
         gRZ92uE9WXZOw06onhvYS4Oni+0Oo/7W7XiOXFjGB4dwaYdwT7OxsJ6Azz14/+CGqUab
         TD4P7Om/1IQJY80yWr65SmXGKB5Dx0xheh9UEWgR7ntlk7B4wECzrYjF3kWU95ZdYegR
         qsVeN2zDmvZy4UMSLt5Idg0dAjEq+f+292d0OoKC7kd5cgcFmYeKUfXXX6S2Cq6FkbMo
         rUc4mmMWjrmjqYmObXLhqDPmGAWKS3T4AhSuovjonXLzwjho/XpJXq3TFXu3GjdsYGGf
         oxOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mSJumMYVVysiO5eoJKM7IOjupRO7OD7kGVImdNJAanc=;
        b=w6isFj9oycWPsi7ICmznrFn1AsqPIC+iJ9iSRvB1M7S7/oVN03qa0zT98+3Mlo8qfz
         roIc94c5N1Jpcs8lLLIJ4TNbCxrSm9UmmNgxgXr2vVrF7qdxqd5ul543y7UGYRpjzqMb
         gZ6jaWlZ53TKDm4Zmb3hErlQaT2PaabOaGWC7jBaDrhsiYqFoRzcakJg5Uu6kFv/TK0p
         tcZ5XUM0Tm0xw/ImsTNAmE4SdTtF/Zx+yFTCkOP4fOgKbBrc9GdubnIcLLNBdnStQUSi
         CAL5pg8H81EYq7jBJ+WvP8C6PMIByt/M2X63uuAt5Bhc2zU8pyw5EmhIF941jLwyqle1
         BMiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AXIEFkZ1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o19si1089108vka.4.2020.01.16.09.28.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:28:09 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2A7BA246F3;
	Thu, 16 Jan 2020 17:28:06 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 239/371] clk: qcom: Fix -Wunused-const-variable
Date: Thu, 16 Jan 2020 12:21:51 -0500
Message-Id: <20200116172403.18149-182-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=AXIEFkZ1;       spf=pass
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
index 7ddec886fcd3..c0b043b1bd24 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116172403.18149-182-sashal%40kernel.org.
