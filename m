Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBNMBVPYQKGQEC6XK4SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 243FE147D7F
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 11:02:31 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id x2sf985006iog.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jan 2020 02:02:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579860150; cv=pass;
        d=google.com; s=arc-20160816;
        b=BjWe+IiGM4awKlEJ6dIlW7qtFP0/8JwuIUdQUOMNdNBkOt4M/3+1SAzRqWwIWuYybj
         PInTKsvAW7nnY4M0sX+3fCXO8n7QTsHLD56Tx8JhKeVjUDdPtK77VoVNBt2mxUq2r8xI
         D91ExazARoV3DBJenkAwwsfVWLIHO8YatMzm1+BzoRbDt0J+4uK6AZITsd3J1IlRjAJW
         piKTLngDqLuUkXP5z1HuqemGQHVra+FcaaB+kCAQ4QRQH7nW3dvZ1E6vxn6GJJOe1cef
         YHO3dSWLn9CEybJxZxHcEfb8clPxe5/msQECFJeK/cZt64LmVpqMJ8YMwQbK9Aa9mf1a
         MPCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=PAWOCfO958QBhbVznPXtcqoasI7MIakKRw+Z8bSwCxg=;
        b=ADHhYDu+i/mAlNHoPZMVGJHwcJ09ILtbnk+34DBskZNQKW22vaaOmpm3dDLyU9NMJO
         r5J9lJ8orPz7Pd3HLswPqg3e2+s8tqc7/VQlj7mcQPnHCrPibZAzaGzqlhFXBVDBw0ur
         8J6O1U29ODZOyI2nMpAIlYyNeMu7Pcx0afxqn7cAlp/VrZKS1ipoYR8aYOor4vP9m+p+
         MPp6/QkezyQAIu9PmOEhu8yd+lbBVANPEU6Wkk/sCnPZpzV031qteTkx3117uka6TVn9
         on7pWkcqTyBcotUOVQEH/rv2+d/DIS+Gsd0vGZH7JSxssWKFPGl2G88blQ6WXY55DZTx
         pNjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MO5FW5gR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PAWOCfO958QBhbVznPXtcqoasI7MIakKRw+Z8bSwCxg=;
        b=VsGgWk9QnGiOgfAkgl6HlMWoE2DDKcEjmu347iHXbjgNYHlWnGOQ/GtwsSPY9TCMxN
         t5YApZDQFNGE6ZRjMLZGYHHjvUPRKwcCStDPF42e9G7lnwA4WPqPTROzG2Y0+e3p9CZO
         UZ9IN6yD9IBchgLy7a9Q2ZKeZAxDqkWPBkNvT7EF07MUBPAXYVNWuTU924VUv+6/dF3I
         BV6bx+3LoKoigSyWSkVvMbNoPSDYmdh4Ts1QQX+PMg1ghpjMEpwVUi3PlyNbsijgbMpR
         C4dEzKOUmWvGkREnGgLN/7U7NMVhhzn20d5qOreKiT1R1MPJX/mwACEKyhKQc7dm7UCJ
         Y1BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PAWOCfO958QBhbVznPXtcqoasI7MIakKRw+Z8bSwCxg=;
        b=jLBKRMIyhjRZB7M69EBOrhFxbyfyIkLBzgi4Cbr7+nWDEyl0kGpOH3p1n5XcDHjwTP
         LUYl4upOvuAva4Y14Cyf9+kvkWXfKbaPNZUqYtXtJMk2qR4Zu/yHEAEXDC7kJzx6+ltn
         syqd7iOydHU4KLsOULd0BreDUCcz3XV/aO5dM85EbfN31/GN9lbPyxwRwccG8FcYBRpQ
         GkQohzj0WTcJF09D7u38O0iv5WdrawWg29IuoTrImEaLl+7QkvpYtCxNlq27YAf/Q9Zr
         vpAeJgqcC6wxmVOYptMEolwNpcaN4a4XHAIjdsGOhfiDsAkBZYVto/JkZhsvzuoc7oFk
         KA1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXTRCaR1NYHeq2qBpGwVWWFFOabxaFqhBlpMAHuPSf3PzVV+b93
	KfhsV8+yI98zPw/GZ5EaQA4=
X-Google-Smtp-Source: APXvYqw497bmmXSsa98msFpW9DeEy7jqf640LNSmrhlsug5w5FYwgfkIQc6EA6LF05H+i94BbFI0nQ==
X-Received: by 2002:a6b:3845:: with SMTP id f66mr1691445ioa.102.1579860149996;
        Fri, 24 Jan 2020 02:02:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5c56:: with SMTP id q83ls304315ilb.0.gmail; Fri, 24 Jan
 2020 02:02:29 -0800 (PST)
X-Received: by 2002:a92:d090:: with SMTP id h16mr283477ilh.78.1579860149584;
        Fri, 24 Jan 2020 02:02:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579860149; cv=none;
        d=google.com; s=arc-20160816;
        b=k0LMzPc80wspYZA1MaIquA3QXVRZTRFj+GMV/3n9KfqTC3yU4mSlkuo5OEL8VdqZXD
         yUmf1+4Ax8/xJXjZ7YWtIjH5KMasK9/4Eb2D0gxWzsdNeF8URpcv7FgjS4XSsPhaBYCX
         spONx0J6GuwoP8s8X7zkxHfe2zJVOFrzfY8m8AGavic9kzAp5Zi1jOIBHPq4uDzM2qxC
         dsHYGzkrhEbA/MaWFBFsqHv0/bzqBx9w0K47TjBcBbh0T/6U3khItXTbhKwYBpy5RPzA
         m7JN2tao8e28ay6u3m1NvcRYParKCoB3gVAOIY0AB/g66eQKASZ08G+oNuuSU0R510LE
         roSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=tgNm3UZvknu4B0p6mtCiCUQY2cUJk8+kYP45RS1gG4o=;
        b=g/eYjwth5ddJKjetdgtpuANmNUmeMy95PxYMjhpv1unopmKzGN1UmPrMnQfFlYTSBZ
         pK+w9sHAcsVox/nw/et75QLuZsz5sxoqbIEQQRNrm8RBg33VBw/rCbIFIuDFXqJJZJ9K
         vk1AUne5+x7VS7QlMZa7s1gttD0dnFIO3j/b5auZhh3dc2HMj1Aw4qRAZpk8JNR5hEGo
         ejwmJ2ePL3oTqmJ8Ndisw58/EtUZb2pT7p7YbVY190PZ2BdQLsGIecxRieFu1ZdKSi/N
         J0N3efqI1Xpb7bHAygZ6JeIs1pIPRtWBQ5SIMk976jmXsh79ip5SH06PzXCicRq33/Y5
         C+pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MO5FW5gR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h13si210248ioe.5.2020.01.24.02.02.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Jan 2020 02:02:29 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [145.15.244.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0916720709;
	Fri, 24 Jan 2020 10:02:27 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nathan Huckleberry <nhuck@google.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.14 245/343] clk: qcom: Fix -Wunused-const-variable
Date: Fri, 24 Jan 2020 10:31:03 +0100
Message-Id: <20200124092952.321185671@linuxfoundation.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124092919.490687572@linuxfoundation.org>
References: <20200124092919.490687572@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=MO5FW5gR;       spf=pass
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
index 7ddec886fcd35..c0b043b1bd248 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200124092952.321185671%40linuxfoundation.org.
