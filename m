Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBZUSVHWAKGQEYMEAC5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F1DBCDC4
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:50:48 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id k9sf1497223pls.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:50:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569343846; cv=pass;
        d=google.com; s=arc-20160816;
        b=hJ2I9H0fpQu3yePrTW8QMz/h/FO03NI9emwEioKuWGKBPJgbRfEzdDLN/n7m+THzJ6
         zHwmZXpTPq4MAWiWzRE4Zi6WEMvIUMTpSBfizbEjJviPVFtn+ugQbEUl/hduq0IxPq+I
         EkvDdov4DzTrYLN2PMrE6tF5oPBwLfJRz+QT8OxRgkPiyGzE8QU9MnKpt7eYKL9KvXch
         D5eiOGMq0bZv7D6ueLriWYunHYKp8ssFHRy6SaT7zdksnPd9PdlahgGS3yENNZkIEVXU
         J8OGy0ZJb1sIRcUGbTGfZP8BI34rb0A7hn0zsusgePS90SsAoMj4zhA6Sclvla3mkqvK
         gXKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=kH1dByF4s+KvTAepqF1Htk2GYLs2X5GWCx10xHS1V3o=;
        b=eNmaljgLyhMszjgbO0CcqglCeF78fa3Go7cm3KaB+rW7+r3wXJoMdgbllV64jbh12E
         5y4E/HjkZqSwtgUrKZbfauEZMLjXV0MddeLSOpQn1L2H7UMEtV9bOvRf2OUqfJeOxXb/
         C3mHKluetKe9Tx5klYX3IRz0i0i9NuCuCNgnq2tgbP8FIJ4/86ycblVvuAqSC0Wwechq
         3IHPl+7a0iD8RbsbrIJnBXpmJXqWEvB0EiH/N/GoJ2cR+Za1omJwKXKU71CX9yT2+b+z
         fsM7d5HP7E6cMutCBEHLj/dP8DX1yCRTgj1T11X3nBENfFoemWaMwfgYm7jnbW6zuSbN
         0/LA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=z9cx33M0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kH1dByF4s+KvTAepqF1Htk2GYLs2X5GWCx10xHS1V3o=;
        b=pwxlUZSdTazllkECK52DyhNJWHQ4ZUAhMestIPoenkSGjRHbYM7AdnQhIEJkuZe9Yf
         F2oUHc2XVHpZFNYVlDt4zRU0XR8ACiRE9SjmUz4EEwsrw6ieXOl7C2AwhHaxAJYWl0Z/
         1jo51k8Oc3KLn3hGL+TwHocdf8U2ORC95hHxIZTNQOOZenjp+9NRF73Vge6JKEol0YJM
         RnYLuMmY4y8PEE73FRD0sMGwcKUdT73qTXh3Gn0EVWI2qLKHb+4JrEU1g/NVmnieh7hN
         THCDGR02ChV7YpPqqDSSvy23Xcmdn1qR9OD5VqKKhfsf6inl7k6P55y8CL6ySAbWD2iW
         UADw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kH1dByF4s+KvTAepqF1Htk2GYLs2X5GWCx10xHS1V3o=;
        b=CzwtTRTaGCR57sgcIVLlODzSuY+ld0tHfqUHWQ+p0ux2KSSapfn1Ut3hKUb63lrPE5
         w9p7aXGMgTMEDkZx2v4ClVRV8wWY/Z7BbRTvqug571k8SNMHIPUtyKqUSGTiWj+YVlje
         X6kN0ZoXUThlgrj+q9DaHUW3CNjilF8J29LGl40VRhQPPmU6ZluXzsu5azLqhg9HOcm4
         TFveVSh0Ii1JsZqjwGNuQZpQS9ajy3FXc+cHRGgERiHe+8ejHsnQBeGZWMsg+AN4NPHg
         H3kEsAcP2U6eZvFpZXUAf2ub1x5LhpvhbiyD8IZ63/VNIz08ZaN+BjugV8dC0IIjj2ZE
         eJMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVUAu6heJDUenzz1QM7nF0Q8WdINo3kR4sVbbIxOOQiYgk/wJ0O
	Qd5n4ibmYnklrxG3QWD6QaU=
X-Google-Smtp-Source: APXvYqzrXTgJYIGTa5/85nhA8xpFdtlRP0CaOt4CkeexM9zeAI9E+cDRl9Q2kuXvdtF/WH6YERuPvg==
X-Received: by 2002:a62:3083:: with SMTP id w125mr4544777pfw.102.1569343846474;
        Tue, 24 Sep 2019 09:50:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d801:: with SMTP id a1ls127635pjv.3.gmail; Tue, 24
 Sep 2019 09:50:46 -0700 (PDT)
X-Received: by 2002:a17:902:8344:: with SMTP id z4mr3960464pln.330.1569343846132;
        Tue, 24 Sep 2019 09:50:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569343846; cv=none;
        d=google.com; s=arc-20160816;
        b=hz9P3jq6/0AQZqlgXUttcy+ejNxn7GqYYHkM3jEcEYJNojbTJpipdG0Cm5yvUx6egM
         qPWXVVPZ6tpMhXPRe6gqnheV1tpVuSFLqI5Ap+GmLA6F6RLCcsox0/zCCSD2XJSovIhp
         ewEuqO8AfuzPW/bUr6f2uFPZ8t/zRpCkprWCdwg6UnKoUEYoZCx6rsQPtuWgVebS58CG
         q+C9E6882CquCqvUGOrQquBv58bVmV1FzqsEDtScvFsCS2MmoQwqb67NhGiuiiJ2aQ+v
         xUhxlNslcpDBF3sJTS2QxSJrLoWT9/ZerVGy0NvFaceJ2ZQkPR5+R31RyBOdpmoB1Jmh
         oRDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AuwHMKAbTNyNIFCpja0rgwtdmqJMwWgdIHCJXAF/ye4=;
        b=OxelSsvJ9IrqpnyFB2FpeNBoOGR19EtBT/xNw5SGC2A/EoP+mkqATWJRXFwQjpOfJf
         uh0EPPjRmVi9WPYfLlJHu5mhnPCDzm2lfBqeP7CjnglReeYR8zmiq4EEMfxR058gnhBc
         ZTlcVnbV8Ns+flhmBNI+W3RYmluOSV9Rc4/yAeZ0Hzj5nCwQ4BZPs0BrOOzYLetuOJ1f
         QG14gMKWlLmzn+TVyw2PvVugwHZUzONMcV8G9R2s7Fyng5T72Fk+iGM5tzY95ulxwSN1
         B/BZ1ghcZMQ4/CNS71tVgU+tbYW9Xhrqu9ohw6DJG0MZUez1R3SMhSmk8r5lQE453z1B
         cFgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=z9cx33M0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s72si6773pjc.2.2019.09.24.09.50.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Sep 2019 09:50:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E423721D6C;
	Tue, 24 Sep 2019 16:50:44 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 09/28] clk: qoriq: Fix -Wunused-const-variable
Date: Tue, 24 Sep 2019 12:50:12 -0400
Message-Id: <20190924165031.28292-9-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924165031.28292-1-sashal@kernel.org>
References: <20190924165031.28292-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=z9cx33M0;       spf=pass
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
index b0ea753b8709d..1a292519d84f2 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924165031.28292-9-sashal%40kernel.org.
