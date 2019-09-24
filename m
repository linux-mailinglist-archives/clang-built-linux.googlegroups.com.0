Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBRMTVHWAKGQELZ3RGBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 91809BCE09
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:52:22 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id v51sf1557635otb.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:52:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569343941; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q8CBqrvsfgKWKRuzHJAOAdZ/B1FIs0x/bobebow+THO/2Dypy2pvMwCQ5ieKMC89Hr
         SWOiHc3KBURnNsg8nRqCqzapoinPAxMtHqY9GBqDV0qxQT4P971tgoINIlITXOe8Pbns
         OWC9n23JH0RRqAYSv+Ws95V4wXeAndytAK0A68FK9cHdgwsIdwTxIuq9+QEvN9zIPUAm
         L5T3A4pTjm58NCzxeAtc4WcPUjDYLB/sr2PBEn1gz44FDXibhV6f48HoYcOUHs1iw514
         CaOUBWVt3cVmzuPuxlos10asVxhQqSXG/Et7Ne0oQ+TevyxWOu9mzbiyKdzBRieSj7pO
         1G+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nmbBe15RRxu3Mup7srlA1RfBO46CjUSc7CCRYBLaM5g=;
        b=Txz3eQrh1tRIiMHkgwn7XO5IyLUKiouGCK2YZgIG4r+6lpf/EEikEYp76khMQqFplb
         oqjlzGDzrQZMJwj8XqRdUt5dwB5AvFx8mLUzMjjggEjroqQGq9xdjsJQlcLdgN71YzOE
         KpAPM2cqlRghLo2hKkk3lLfTK0Q0I3WmgEetakgKVycQ2ZsJIS0a9V+uGADoLSJsTJot
         ztEEEVC3/I5jTAepepJ6+F5Wss+/KROxaPp5Wheu7Wh2wx9uOXJEh9kyVLrw6gshzTfx
         pYfAk2tcUU8gv3ztbks0utw7+IzZ8ctYp/9uQHLz7Wi7oD+ztNCO2G5P42t27at/xJ/l
         OK/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gncTyRYI;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nmbBe15RRxu3Mup7srlA1RfBO46CjUSc7CCRYBLaM5g=;
        b=ifv76a+B4a4Aht9tbzU0Ro9OqsU76SOFZ4fguwNpZx1oDMWaKHq23cgyJ9uewmg4+e
         xNbuSbfsqTMoCrDfvgy07yEvyrQIjZZeKosFZ5/NtomyegkI8N/FjzXV2e5nR2MZXWh5
         xwWt5vGcGRUJ1ksuNEHff2GTt1yzuGSZm6TYoVD85Fmvee/I1CQQGLcR0yi8u8vqf5r0
         UsqBFNGe2O0rjOuTZD8q6WHTALPe196njSLC6UKc7mcelvfuJUel5XAVYhUUhKxJ9nLT
         nwAN/L3uD2+SMEA6+85BMcoWaFE5scf5k8sOkNqm4wJVtuAQiQ95cz+VrDfM5M64rvOK
         LBvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nmbBe15RRxu3Mup7srlA1RfBO46CjUSc7CCRYBLaM5g=;
        b=abZ0olNQY8Anr/4yWSLxbA1jmbgGNliQaQ0dLc5qleWaUMIv+GyIVSejWieZB8TZm9
         Eu2FaB3upmFp/yOCdIHunV3nkZ0Pts0yrwt2GCJHJeBbHk1XE4+JALO5U+/w7ppPFybR
         dVJCpNiGGSWJMCcsoSVw2nsQ9JdwOqYT7PRHu6yrS9xBimro0UBv7erhgKqEIKp+n6zI
         vOmSR6vqldJqu9tmqLVgcGpIglMF0/3bWkFH2x7eVJ68tcijEgB9KKx8G3fgHAwOl/tJ
         5ds5pv0cT7Ql7lPLycCbAVVM8nLMB5Ydv7GxLyX0IpwBHvo/OzKjjtwa7xkKoGlHzdxy
         VR+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXS6R5oBhprZhAjK+iQM6ZnbsiYx2Apwz2wtG3LTBEH82Q6Xkd9
	HOjQhOhcuyzfHQ6WycZilJg=
X-Google-Smtp-Source: APXvYqwPwCXM1//3ajst6hXW5Uumk7al7lT90/0fR56aoRC6BHOnUqpjQm3vcrnym6tpGRy9yx+OhA==
X-Received: by 2002:aca:4988:: with SMTP id w130mr1021829oia.108.1569343941392;
        Tue, 24 Sep 2019 09:52:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4fcd:: with SMTP id d196ls559266oib.16.gmail; Tue, 24
 Sep 2019 09:52:21 -0700 (PDT)
X-Received: by 2002:aca:cf51:: with SMTP id f78mr1055359oig.8.1569343941081;
        Tue, 24 Sep 2019 09:52:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569343941; cv=none;
        d=google.com; s=arc-20160816;
        b=A7T9GBuLs1AEo4mfpLAVgVHmG8f34hyWY4FMC43zvWL7OVlRzAmnI1dTpr/SxXZvbh
         5GlT2ruGZF7e3O1r1hR1F3O79btjVtgLIsGvicoTXubJIB/wJmxpiwqr4EihfdWZT225
         YLrWS+uXr4D9XPayvBQQtL1FXGPtzKGdbkGSZwvGIeD7gG526cK17UpzPUJgVDF68iek
         CDp4aTpRr2jiVV5O22cpQ+2fQ6WM5dQ/+KNaPbop+LMEpgbSxhyHPgdhLAZ1jGwJAHsO
         gNeNBL77V4y+KAQVjpTyaQ1eDMvZlcH87prMleyFxpuSt2YoN0+0tt/5Uh5AbhrdCWll
         HT6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PdSLsd6ZuQZSNIOJ1DzKjBDKLoJM1ViUMWOSyCIXfCM=;
        b=Ejw9Q+H+J3/JbGEvpmyxA7+ryvmIP/uti2dzKtOkicrWgS/SlKgSsOvY2jcyNuYsaw
         ZF1OPS01VH4pEEGvvN0iGjMZeuIkHzdw/zJbpBcCDW9CFd4pE2riJG4DwL9bbHf7+BIw
         5piI0fVQ9dIXjAAAaf+S9Ith/3y68aDoCdq2+6n+ihxciLkHt6CGElTqbuyxsWZUWmNQ
         UAceRR5TCGwuty69bpCFk29uWcOZCUGRMvY2G4qEoVwW8LjPp6v50bKYSVixcy73e2e8
         2G+5zS3J53bJpi2kk7sYte5UDzxfNxUr+jfC0bSkSXtgpoo5ms98u2zW/9ocuObUNVJO
         Qo8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gncTyRYI;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k61si114972otc.1.2019.09.24.09.52.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Sep 2019 09:52:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 622E0222C7;
	Tue, 24 Sep 2019 16:52:19 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.4 04/14] clk: qoriq: Fix -Wunused-const-variable
Date: Tue, 24 Sep 2019 12:52:02 -0400
Message-Id: <20190924165214.28857-4-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924165214.28857-1-sashal@kernel.org>
References: <20190924165214.28857-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=gncTyRYI;       spf=pass
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
index a5070f9cb0d4a..7244a621c61b9 100644
--- a/drivers/clk/clk-qoriq.c
+++ b/drivers/clk/clk-qoriq.c
@@ -540,7 +540,7 @@ static const struct clockgen_chipinfo chipinfo[] = {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924165214.28857-4-sashal%40kernel.org.
