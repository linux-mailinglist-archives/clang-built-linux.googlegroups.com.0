Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBBMSVHWAKGQESQO4ERQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B909BCDA6
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:49:10 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id a18sf1987410ybe.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:49:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569343749; cv=pass;
        d=google.com; s=arc-20160816;
        b=bEbleSW8p2Pzu2RrYL21/XGO3W1s8RwGLIGcLKJ3WsbPhSdoYhDMlJWEL30SzTZ9ID
         +jffWQArVk5yrEAhbc3LVKi3JJECOIsJWFO3qKqQ2Z8Y0Mh9g6ft4c6f6J2/Fs2l4YZf
         oIbAgwto4P6GdDdZaKW4OEe9LuG7RyrmTksShJJYRScv5reJJ5CiQiA61eGYHlLk9jNK
         L9QIGhWTGBVojAlRZoWd5sfFU3cMQho03U0qasWKyMTKpc1CDlw1Fq7yO9lWj2OypwZM
         tkSJ3PNYamOYVghEKPajEudE+FuttQhQWlpNY693bkO7DnVnNRROrUWsHMzQDf2NtO46
         g6ig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3sqi/z9bOt62dKVADWLv7o0tljo56XYhMipk3NN489k=;
        b=YrGlG1gsfmLQsqeg6CvHX+Kqz1Nvxda/qICh9p2uLORUKPlcV8OnylX5tx/cOSqTd2
         S3lVjzODISo9zQ4+B0Fm02MxtD5iMmJQe9aOPmUddKLZUPt0OS+OYIaLd/Ek2y6UScYj
         9WIxxDgdBCfRyVcY7UfxPQYUkVFdQu9NYqGYso5G0HDEF3evp0oKul1gBzSh+x/cyvjK
         6b/coV98El2TOaBPy2gMRUDYLrnMWtBl945+zmfSgDocHVbFvaFcHTz4kwfGKyD6S3tk
         q7RbwBT1EQ3fncBsf+cPUJi3SqWKmnK1m6AucI6lppN0OLvfb/TnsQdu1NpMMRuh6RST
         w0tA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nu3vvE6J;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3sqi/z9bOt62dKVADWLv7o0tljo56XYhMipk3NN489k=;
        b=AqXPUnO51sS9Cp+h5eqnS912E6WC5cnUaqPS6pt9L/UOrq9fMXVLchTOycfMJr/WT+
         1djlEAZqnYAfZiFj7R5WXfSD/MocbqyNswcmbHRrcsEZ2qdR2HBaHnueVT+XeWhIzp8N
         R9KIiKUpKCoQgFPrXL1cItsw5CZwXLg4raN6jsAoIemXXxW8gPpT07MaaHRP+bG8Uj5E
         9dJqjvfZo85c6WipsNoOoSyiaDryesqen93UXDujOnFT8PH1DisP2bDkA3hsSx9n90to
         UEWsKqJ9YkmjdFXYs1uq7sWXtjf23iBT1dnM7jXtIAVidiEqevFHE1XJd9DYAKWpQv35
         b9Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3sqi/z9bOt62dKVADWLv7o0tljo56XYhMipk3NN489k=;
        b=qVOvnAfN5dKznIb+uwEFIn09EfvXMv1R666h4v+WQwT44Garpm//M3EtObnJGBDF47
         QLVvdnTnryAiz6Juf9k4ACckx8QCeiQv19V8J/fqfagtElc2XQh+Pl8m4AaZoM2GPuB1
         oEAdsBi1fsKBIB/IBRWJklSDthQb1YUGewf9ccTtLBPSwxzy4McjLe0eHzk/e9pFUqWB
         adzonNi3h0npY2qlnJl7HdaeX/KOEe39XtcUSx46PSpTqEKy3+2+SIR9xLcTkizCaDGs
         hX7YMu+BA0k/7eQVHIbJRihHfb10QnrgA9IFnYtATlFlK8jR68MilHFEN+yT2EYrMZRB
         guqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUmIoS9KuFa4eFrzEnGdtX4ODd/hZnKIDZ0J23+K+YjYrwbAQNJ
	YPaSODYLUutPmt3muw15yIo=
X-Google-Smtp-Source: APXvYqwn/POEcnqAurhyBT6/CFshEDnKJGJxcgNJtd0dZQ+6BLyMR9NkpO10xyKPZKk2frDqgUbkYA==
X-Received: by 2002:a25:90d:: with SMTP id 13mr2899063ybj.109.1569343749227;
        Tue, 24 Sep 2019 09:49:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8109:: with SMTP id o9ls446026ybk.3.gmail; Tue, 24 Sep
 2019 09:49:09 -0700 (PDT)
X-Received: by 2002:a25:a469:: with SMTP id f96mr3018775ybi.23.1569343748998;
        Tue, 24 Sep 2019 09:49:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569343748; cv=none;
        d=google.com; s=arc-20160816;
        b=LehnNPSJqBy6erop1ujzvZQypuIBG4PitXAe81tGtzS7GF8GzItUPKo4IyIDI3nBdF
         vtuRWE9OhFXFpVEQZFdUHR3cKO8KV0cLnqa3tiIYp4Xzzy7w4Y0/9oP66qhUe00Qr/eP
         vmxqXqYUoNJPe+g4kdNEK+xrAySsqBYM5UDpoqlF+hud1oHvJK05yjRsy3MX5LSD/otk
         Bino3PuNzhkousuzNOGc2G05HtW+IrzHnJKFScjjVJvvDTudtll2WkhBeIY1k99/K938
         hKU+l0p2xwvbk+QhLTK26Zs0ZPELbP1bEP6VqvT1Gb7UbVDnifdpSKyZ+kUB0VE8AvhQ
         dXxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EsUmI6Y+dKKlwIo+zknOoTDP87qCHVBBJHpkyzMpPhg=;
        b=tM6ydQd6DmunxnFYyy31HhTRqc4NbPInE/jNNrE6HuX7SdhKRc0NUROBeGWvurhbxV
         CCDgJqd+gc32qzPzqXn7aNw3JjR2pGov6ny0Un9HiMc1mM+f39nbXpVeuZ5s0ry+KcQV
         PxcgDltuR0SD2xJP1KPyQTeZFbcG+vAwYZpJaf67z5RYrumHeXt1caJL2B1o6TBKWPbx
         fG0sZwWktubu088DgTfW1zYxus8sE2vB9uTqhejgTa1cort35bm4LMB7obdV15qDkZE2
         aurSoTv4vlUe1QiLogOlYeR24Jpiwgp1MdxiavLsbvCExxaKLxzBuoD8aaYLtdcMOWE4
         vuWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nu3vvE6J;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d134si207538ybc.2.2019.09.24.09.49.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Sep 2019 09:49:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 24769217D9;
	Tue, 24 Sep 2019 16:49:07 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Scott Wood <oss@buserror.net>,
	Stephen Boyd <sboyd@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-clk@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 13/50] clk: qoriq: Fix -Wunused-const-variable
Date: Tue, 24 Sep 2019 12:48:10 -0400
Message-Id: <20190924164847.27780-13-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924164847.27780-1-sashal@kernel.org>
References: <20190924164847.27780-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=nu3vvE6J;       spf=pass
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

[ Upstream commit a95fb581b144b5e73da382eaedb2e32027610597 ]

drivers/clk/clk-qoriq.c:138:38: warning: unused variable
'p5020_cmux_grp1' [-Wunused-const-variable] static const struct
clockgen_muxinfo p5020_cmux_grp1

drivers/clk/clk-qoriq.c:146:38: warning: unused variable
'p5020_cmux_grp2' [-Wunused-const-variable] static const struct
clockgen_muxinfo p5020_cmux_grp2

In the definition of the p5020 chip, the p2041 chip's info was used
instead.  The p5020 and p2041 chips have different info. This is most
likely a typo.

Link: https://github.com/ClangBuiltLinux/linux/issues/525
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
Link: https://lkml.kernel.org/r/20190627220642.78575-1-nhuck@google.com
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Scott Wood <oss@buserror.net>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/clk-qoriq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk-qoriq.c b/drivers/clk/clk-qoriq.c
index 3a1812f65e5d8..8abc5c8cb8b8c 100644
--- a/drivers/clk/clk-qoriq.c
+++ b/drivers/clk/clk-qoriq.c
@@ -610,7 +610,7 @@ static const struct clockgen_chipinfo chipinfo[] = {
 		.guts_compat = "fsl,qoriq-device-config-1.0",
 		.init_periph = p5020_init_periph,
 		.cmux_groups = {
-			&p2041_cmux_grp1, &p2041_cmux_grp2
+			&p5020_cmux_grp1, &p5020_cmux_grp2
 		},
 		.cmux_to_group = {
 			0, 1, -1
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924164847.27780-13-sashal%40kernel.org.
