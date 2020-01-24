Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBN5IVPYQKGQEUJJECZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id C2479148224
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 12:25:44 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id c67sf2632972pje.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 03:25:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579865143; cv=pass;
        d=google.com; s=arc-20160816;
        b=R32Sb/qPqc2u0xUNBfJbPhFacd5HJUGxb0EWW/7teQNfbjSi2j30UELU6QJVyHADSH
         NY7S5ja8VMR8egLx6G0S3LVEr7kmnwKT1dEx9j97SxKDl8nboG721YKCI+VLNxfXlWRU
         37/pT867Va34yyzrjkraB7pE9KIQqczXLE8XgX0IOFZHnGvxuJt4DJGhLQVBFEvwk/nW
         TuDaWd02rn3BZReUphGRESzSpE058RrFBQATmVgzfe2lJvsQzu9M8hSk5c6ffEoz5KxI
         vuGqFOqV695u2UPK+hPbWvqu28Upoh6q5JI4U5sePO69kHe1zGvzMPVV+DM4IbK8NMln
         LbTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=qWJyFpu6nn5B0erOQ1e6pvSl5Rq3RMW81IxbC+p5/io=;
        b=ia2c0m3qxuVHOMQCiyJLrS6456RCQF6ny6muEuRjtMORBpHFf9s7sWuMQXIRcIuaBm
         5TpvYKSKYqiroiQXO3awwUBRP1/BqnTYc3Gofh3Psj4fxIDrRefj3oORTQNbHOMrH9EY
         fN3v7iydsoobza4ckKUfMF2AAYJDvVSjoDLcyVPPYiKis2nlYZv7jvkFHuomJLrniAuZ
         5fEXad4yiYd0xd5yXOB9CGLinrYNwTXmeoxKMZoVdG3iLTBfo4L7czOSQbApLZXr8s1g
         T/EOQIXbMh1e+uZxSflHbCgbPGbsQt/b0Mwv5FGDG0G6QQlk6Vkplq2YujhZk+jM0RIC
         m80g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=I1ocE+f+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qWJyFpu6nn5B0erOQ1e6pvSl5Rq3RMW81IxbC+p5/io=;
        b=mwJEXZxy8SmP9VQNHupa8x9SiOcXkahGpcQZn52mUxz2qG+s2k1/JytYrmmsry80zF
         9W7pwrRDHVwnIvxEDGfxUZjlEAjZKzxBa3joBT+ee9PhRyImLTJvYxJkbTsV4Wj9O1e0
         smc37NNJl/4SWNA1Qx1IDWI+CbztcPLjD4M6zDUOyxZYuQ0z6TuXZvGljN290bs2iHUl
         B0xEcT3Q38Eg2eSv/TCmbHg9BjuyydDFrddT5MioDBprjMXrdkPymrXqA8GmRFaCmRng
         87SN0k8PtYrETEUE9JJaB+M3ODD0FdlIADisBfqZHz5fYygFC7EKw3Sc+y7HpyrPlxTf
         8ibg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qWJyFpu6nn5B0erOQ1e6pvSl5Rq3RMW81IxbC+p5/io=;
        b=mwJtdn1ed1VvG9cLGQnlSDWoRSuMsDXvKzz3LtJEKz0cBJCgu47V3BnOlTxszalp2g
         k0tByTYvd0k1f0VntISP9Y/IGQjv5+KlUOubIAvmknqEN0saljGXardW+DhQRp6c8QCR
         BSBWbF9xOUDB7TNzpIO6cUb3SpwttP1lA1ukActlgiEZQFLodAmn7J8nV2VBb6T3Wyzb
         Z6EjVyDsdDnwyUoL9kruErqAqLPLj/Cdw/bredJUPQEKjTaLxYeFV8S9SVrknO1APPo0
         VOvEDmjOlcsvd0AtUEfVbAwFTN6ndAq+Wu8nrfc2siRA9Q3abUTrfpeGw72tF9YFR4MC
         RbwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVQUFuwwpnfiS8mk8MEp+DHNmkZ+tuDX6iRn3wA0WpD2177R7bm
	oZCpAagotdxHb1rhzxa7APA=
X-Google-Smtp-Source: APXvYqw+Fzm+fVu0ShEVhNVy9jEYk0DM9MgdavtL1+5fOiZsR8QQVbSmN+ei3BDPi1E6tKv9CKLENA==
X-Received: by 2002:a17:90b:46cf:: with SMTP id jx15mr2846023pjb.2.1579865143424;
        Fri, 24 Jan 2020 03:25:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1853:: with SMTP id 80ls951351pfy.1.gmail; Fri, 24 Jan
 2020 03:25:43 -0800 (PST)
X-Received: by 2002:a62:1cd6:: with SMTP id c205mr2816661pfc.179.1579865142956;
        Fri, 24 Jan 2020 03:25:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579865142; cv=none;
        d=google.com; s=arc-20160816;
        b=mytfhIbMdWJzmcD02ycYEGD90bCEVNd9wUW9gMWC+DJtxCg3Ef1WZyqlyRIRWaZJ6U
         2SOGM0o2oX1tcdkpiBi0VPwq+WFDtvwElVBi5ArHuWHOuGYFjKHVTLrf91K+eIr+KFRC
         nw4bUCr9ehrJDPPVbcQKK6zSsMRaY49YW+Dmg8Ryy3R5mOuM1pfhs8mRxSJQj3i4IhSt
         7Mnvef/QnDszbPGHC2Rn1whZyhsP5ysa0SnvbBEHNHa1+t345XTE/cGjFkURujy5eHhf
         VVAO+vursDeiHoiNtBu6ghJCyRpxwww0aezjrd0G1BFqY5yqkw8MFBSN4pypB5ANfwXm
         okvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ta+39o9v9DstgrLKA7xJe5h1CuBoGieG6GZ7zOI1Mzo=;
        b=xdMPLscG+YDYqkFysHU1FQePfx8p+mxIRxdQXpUTjS2J85P+8wh2AVdDcR0FvXtVwD
         ITqve2tgmNaNk5aUyU3BovG9feokV+GAl3HZZTMBe2DZicq3SlxWfZ9kZF3z4vQCMqST
         ggKfpP2u+08y7/oNoz6VJQvRzlt/y1QSMhQQWGg0eKV+AoTIxKqO8TenKG9dScDCvZ3w
         HndrjX5WAcfnczJnU3S6zA4Obm5rwEhEdadhjdkOULXbut4pT7r6rGWV8H1NpRUt+a31
         TQqp81eq24BTl7lwTwHS3OolGCooY5gZdNdrl9e3MStYL5otNrhxjdOq8gyLoOO7j/B7
         T29w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=I1ocE+f+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d14si262327pfo.4.2020.01.24.03.25.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Jan 2020 03:25:42 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (ip-213-127-102-57.ip.prioritytelecom.net [213.127.102.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 02BAD20718;
	Fri, 24 Jan 2020 11:25:41 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nathan Huckleberry <nhuck@google.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.19 449/639] clk: qcom: Fix -Wunused-const-variable
Date: Fri, 24 Jan 2020 10:30:19 +0100
Message-Id: <20200124093143.233520910@linuxfoundation.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124093047.008739095@linuxfoundation.org>
References: <20200124093047.008739095@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=I1ocE+f+;       spf=pass
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
index 9a3290fdd01b1..bea55c461cee9 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200124093143.233520910%40linuxfoundation.org.
