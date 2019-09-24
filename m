Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBE4PVHWAKGQE6KTO4CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E772BCCC8
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:43:01 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id t128sf599487vst.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:43:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569343379; cv=pass;
        d=google.com; s=arc-20160816;
        b=OV60TUnP326zmMwfrQItogdsJ+O4THA8aTHOcMac+ECfTfS/JshK8ZF5JXDhhfjiUK
         c4asys9ApUmRd83JN8JDQmDeMAy/KRfiU+FLDJRlhIjZA9XDgQonHu9k3AtCHGfuN4h5
         0YsSZuW0vl3h1dcBrC5S/JYMnkOAXSrq5epT7/LGRIREs+R11sQchuDRpzJXTCx+sBad
         pmDfcAC3h3IvoRtvTKwjcdwEAjfXxWyLGr300D0fizSoCGEn+5cBqTEnS7ZBjcgJ/dnN
         XvwyNYDu37qnHzdvl8vS+Z9YOtVgJ9PIwksWEDZHXfHMVbGDgArKD3LmJdJ9aPO+sugL
         U04w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AdkxyCMO+IkJY0XLwIz7Skk4lg293wsGp/5huvLbTKU=;
        b=YzLmEV1FhrsE3g+ATeDDJNK+PO4eM54n3DW6Ev3YeDrV8SMlOTqX+KfRZnIVfGfKbb
         lYX/hoHxwgPj70vQhzMZY67lar7YA5IvvrOHE7XZHLquCvJmVcTtmPCZW4qffxxd2LNO
         rj5fFToiD+f7x1fzwflW4cKP3VOAzcTe0vXdyBVn2PT3SuzlHhn/zPR1779A0mUWk9NF
         5pYgstqtpdIQvh9XN83mscR8J2FCJqAvdO6gVjtctXHOX0OXIEkSq+niA9+N/zZCQPgs
         RhqCW37XhimRXRgnwQU23rZd1rjyg8N7mhOzgoQ1a8t+QDImfVCa+nU1b9+/ul8xiP/g
         HNvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=G+ED3Qqj;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AdkxyCMO+IkJY0XLwIz7Skk4lg293wsGp/5huvLbTKU=;
        b=q/o7aKUXG31jcNXXS40XT8aZqpbTpkyPioMwCSSb8GFuCjJqbu3JfV74nTtJo7tQXy
         vK7Q1pdAfckxNVd+II3Bl1Z/GnTdbOQdYXNz0p3jhUy69NkRAOHeQyWNzmPXSWL7twg8
         v/l3wbfC0KGExOC4RF2zQEMynZa8iqD9O7Etd4ztK2upQorhWlCfuf0wlGvhnoQwAHIr
         NguDnoqQO8aSh9p1IejGnPE4SdCZZH1haYMmbDM6Wy2yRQkVoA3EmZRqTwtFXsk0v0oy
         LI/9AvNvCmzOSU7oSy4ibJoQfXnqkmzvAPCmeU5LPSGyxX4DJ9+/9wXzesfX3VcHlMn6
         leVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AdkxyCMO+IkJY0XLwIz7Skk4lg293wsGp/5huvLbTKU=;
        b=Kfi/QArW4jINbV7ixIWNyXscA19wvRoqNgfF04grMRgs7Vy6ogK0HL+UyhmgiXtte8
         uFAetLa5YYZh0LE7YrFtnXeuGZHc6KGubN9cY6O+H1/KRLDArAskbdMi5dk8g6Akp1Az
         WGuI/lKhn1+6pUBpHo83HBpd3V/c2CbPgdwcv1SpQHNRX1Ruk6uMDyohdo2UerSHTk5V
         3kEoM6Gq/eoIah8I0WCR0dBCM58dBiMB+IoXbjktJgkhZkpLZ0Oginyx3Flqjz2gNUWw
         T0yQ5dq5QHg1sCsaKyEoW0Hc5lJ8wF/0pa1n0HopmNAcy1990MUkzvqQ2F8TbB5uqjnq
         0+vQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW8oQKX56M6EmYkE3qrHhKzYp1uDGJvr8myL14nZap5x8yWYusz
	g4dgopxdgzxnGmwri8J4n/w=
X-Google-Smtp-Source: APXvYqw1Vw3V5X6Wu5nVIz5ySd2hj7BNSnD7PUTJxyLyvlEIlDzGAgiSrKBt11+CY17JP1a5gt5mbQ==
X-Received: by 2002:ab0:13c9:: with SMTP id n9mr2110759uae.58.1569343379637;
        Tue, 24 Sep 2019 09:42:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2e95:: with SMTP id u143ls271749vsu.0.gmail; Tue, 24 Sep
 2019 09:42:59 -0700 (PDT)
X-Received: by 2002:a67:d905:: with SMTP id t5mr2164274vsj.109.1569343379390;
        Tue, 24 Sep 2019 09:42:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569343379; cv=none;
        d=google.com; s=arc-20160816;
        b=qQJoKPJe9soQzre/xN3i95219DEniL4u+d31dbgfJsxKTXwISPfyhrlg69fr05tCka
         OQBNqDw2ugSjS1j5+nmPlHLIOTNyoa7xrUwsqhEGrU8T5kpYzVALtiwhqXir3m6RwCXc
         KFunfmODBm9oSuS8uqqesPFkpHoJa4geTZH6HYuAlORCPp9x49aZZ4IV5dDFWsgg/JyN
         V8JLyfmKiG9A1kVQt8ft6hEkWkJi6qJ+x89QE3Q0UPAzDCa67jWEDXDi05u7yNYbI1NN
         x1Jc3mKt5mEN1FOm5uALmgUfFuc757smQqv7DDv+jODhqtdwmxibWEjBMBOdoSgoj8CM
         MUKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jKzls6tYy3uXjvc9rUs8dXJD9R89rT35l9nB2P2e6CU=;
        b=TRh1yph+cB3SQp4YNjfvAnCRHJl9g5VAcEX2FjVHkwHLiNR8fuovz4HAOTeTBAO4Vc
         YiDNpfbNYvaYgYvfFQLi2OYU1u2ufMcNp1jKJ0jyINY0+cJB+T/Oyn/oRzqP8u/lUUVq
         5GfZ+M7IXARvBofkwdxA2Uw68ImQOShbYfSGO/kF+yLkXuzcsVMP8jdAxce+HkpNoX70
         6RWdonToQR6BuUnk9m5D6TjBDvhx6wb9mBDE7clx3kU1mS7WglK9KVQSjPDKIOnwPODa
         HWNjP57M80eKk43e4vHKgAD43f6lpVEoazBOOa2GNur4Epl52Vy/arpd939fRRH/6wLn
         FPMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=G+ED3Qqj;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i13si118677uan.1.2019.09.24.09.42.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Sep 2019 09:42:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5F6F120872;
	Tue, 24 Sep 2019 16:42:57 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.3 27/87] clk: qoriq: Fix -Wunused-const-variable
Date: Tue, 24 Sep 2019 12:40:43 -0400
Message-Id: <20190924164144.25591-27-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924164144.25591-1-sashal@kernel.org>
References: <20190924164144.25591-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=G+ED3Qqj;       spf=pass
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
index 07f3b252f3e0c..bed140f7375f0 100644
--- a/drivers/clk/clk-qoriq.c
+++ b/drivers/clk/clk-qoriq.c
@@ -686,7 +686,7 @@ static const struct clockgen_chipinfo chipinfo[] = {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924164144.25591-27-sashal%40kernel.org.
