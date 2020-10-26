Return-Path: <clang-built-linux+bncBAABBSMA3X6AKGQES7D3XKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 311712998CD
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 22:31:54 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id y7sf6248495ooa.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 14:31:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603747913; cv=pass;
        d=google.com; s=arc-20160816;
        b=g1vWVgV1VW6wg5KyQx/K0K+HfPFvkA0wMMaA+YS53EoXtm7HyxvQ3B1pKeG6nszqrn
         OFMG9YvAFhn4oJQs1T81k5A3Y9QhbmCv6RciFPQcP4Imxc4R2oqgP/fBCBzeLKRSoc5f
         Dy33/3URyWl7+H1J3MwrTPVq+9+LqRz3cLGeGpv0e38N2EKTWigXXEpor3Sj3tpAPT3a
         ZgAAJRbDngceqJViYNaYKbDQJejuF0JuRCjYW/gJ8rqtNMlmfn/+eGjBqvrau9gIz6rE
         chX5I0+GVVWl3V7p7TD49cnzygy6M7p8u2uXw30ghdR9LUeovLHSKM8+t+VfgDnuzyXn
         7rlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=GQ8ZLfcXogzfEr2U2cG7EHrrWhNe8hbHSZth+HI975w=;
        b=BUfvS+ENlQHgt/Zbb/jjXAEx7OLYSl+FhyKR2A+1IqqXk19A8CqsWVlEjtrapRLEjO
         NxJVOZTbFAMHngYxJ8/6epocXVmYifcfnCx+SiaktnkJJ3V7Z1KmQvijbN587nqbpng8
         d4iEP2mrbzEZ0xiqApmm4OSSm8rirTOeSCj1rBNX1ctBZ1dhr79qMd1RlqAlzpxNK/7Q
         L/i+7aroiJmhJt70U7FNBmX0D3PdzyGV+J0rdARVjunBRRyiZLL8mCGunGl5QEYGwETr
         NkLrcRcc7ZS1SkmjpFzTHjk+RDMX6OjPhkFSg6E3e7jUWeVuO7SbZXImM4STxWTRLW0U
         cGvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HaO9wKfn;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GQ8ZLfcXogzfEr2U2cG7EHrrWhNe8hbHSZth+HI975w=;
        b=QV8gQqOMySrL5Op9LcUtZogvszDtblF8ylwJH2vs3E10P1buaNGquPWiTsoy3NHbil
         8CkVmSSZ1wycvQdP3sMnYtcB+fb1Gr39n1uX504uCMg4qXjqhQr6sgrGL5dmU1r/zbgt
         cSK0XwPFPT292H0+RXErHW7cHaklLZ4R6J/KMCLV6WdC0HqCx96pUEPsHc6mruKjTtcf
         6j7/gy9GErOJHJgqAOqXJNHLD0861GY7/0+u2ZNy8G7lxSYKU49jKFqRMW5l0mhF/BNY
         jU1YxiGiIEx1vPBdU6rmkzFlhL7yE2e3tnXNgjAjgBDO4sdF+EgrnjWUqEQbj5BcfXII
         BqWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GQ8ZLfcXogzfEr2U2cG7EHrrWhNe8hbHSZth+HI975w=;
        b=G4O+0SRAaFi/7FPaw0asyiDX412Zfwt2pddeNuxTkG6NnOSToaYoYm2oDCM1lSeASj
         tzgJbbeCwb90cnNq/ocCS0sFMIE2yobQyACfBUSZ0XG2RJhagxUFaJrtirG/smdg8aYC
         SsP1O1GscMkGtjcNS7ASiRwycgeJCqPLYRcLMhuhsZMRQvH2BRqxH6LiQBYVvXTnK4g8
         bUXmmx6K+yayt0M6cDC+CD+vrhUfTkjE3SXeJENQhaAQptNZEyb8AHTI6lSYuJL00ePW
         EISM9JQ8ksp5wx+WQEll2Kh8KtDyo3/Rlc1f9Rf2Zr75edn67bH3LOrSdNM/LEil+qyD
         Rkrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532sp6UCcgGzixfUhvOvxjH+91g5AWGg7n6xTxAJgzoglOyDPYI8
	m0R94xlgjB0EZoGO13WV6TQ=
X-Google-Smtp-Source: ABdhPJxtRjQ/e4+LBIGlW7FGfoDn8RllMxvwkDzkzAzrvH60bOmNpEUewMlhSIV7PVTAS7IXEH7NVg==
X-Received: by 2002:aca:6089:: with SMTP id u131mr15670717oib.16.1603747913131;
        Mon, 26 Oct 2020 14:31:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c0b:: with SMTP id o11ls2510095otk.2.gmail; Mon, 26 Oct
 2020 14:31:52 -0700 (PDT)
X-Received: by 2002:a9d:684b:: with SMTP id c11mr7698240oto.194.1603747912803;
        Mon, 26 Oct 2020 14:31:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603747912; cv=none;
        d=google.com; s=arc-20160816;
        b=WqUTSp47lasApw6DriY11rBbw3tfany4pCGy1l1riWbCKcjKMcuSysMtw+RLmdMwqf
         ziOwDLnKEreCBoLUN12cNsA5nN9m8c+h1lXEy13wRn5fXzeFyITjDAkp3rF+8QN4i4Ko
         8Ovk++tOIuVMVzuBL9Z6hBpj0lRggEugtokUAZsJZdR9/UpFm2o5ut5oFqgEvxBXbmBD
         e7ctAkOFjrmxPR2EUXpYEKcwk9feDTKeJCbbv2Rcov3mBG2bDu6OCr9v35bwIxWwYUVQ
         YIKI+7vlzYqGy9ZBmx0dbtIPTMqIV6qfIsMJoNbEtv306gWyzyArzvAqJCyhlRQuw/ha
         yBpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Oax5wHbDaP3CabZvdFwqXjjZBSy/e/5OPqUdOs27LwQ=;
        b=yPu/jQ8Iih/7L7cNpM+pf/c7/wwwe1f9AD/mJv681DPMIkyze+JVfADMyORB1afGnQ
         8bstTKc1UXz5Phq+IOGf/aciHCZXmg6v4lUGi9IwtqSGBKFRHJQdrt7O2VQXX7HF/ow9
         gGKSJz7e1ZR7gnkwRXMf1lHB8fIFgjZGSYVnnLjt5krlph0XKdNz4nG7SO8m8bEGYwnA
         b5euSNXso8rpu4v0zZSsUPGXgtBuOgj2jjZDcIU3SX0mXp5PrfIIwQNFp3EOYr6KoaNP
         AOGOnvzwAnXiFSWjhb7SfPKAOcicIpRwYiUCjlF5pOQwJ/j4MrNYmJ6QTRyzqNFM8aBT
         sDDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HaO9wKfn;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p17si711982oot.0.2020.10.26.14.31.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 14:31:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [192.30.34.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3697A207F7;
	Mon, 26 Oct 2020 21:31:49 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Joshua Morris <josh.h.morris@us.ibm.com>,
	Philip Kelleher <pjk1939@linux.ibm.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Jens Axboe <axboe@kernel.dk>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-block@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH net-next 03/11] rsxx: remove extraneous 'const' qualifier
Date: Mon, 26 Oct 2020 22:29:50 +0100
Message-Id: <20201026213040.3889546-3-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201026213040.3889546-1-arnd@kernel.org>
References: <20201026213040.3889546-1-arnd@kernel.org>
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=HaO9wKfn;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

The returned string from rsxx_card_state_to_str is 'const',
but the other qualifier doesn't change anything here except
causing a warning with 'clang -Wextra':

drivers/block/rsxx/core.c:393:21: warning: 'const' type qualifier on return type has no effect [-Wignored-qualifiers]
static const char * const rsxx_card_state_to_str(unsigned int state)

Fixes: f37912039eb0 ("block: IBM RamSan 70/80 trivial changes.")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/block/rsxx/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/block/rsxx/core.c b/drivers/block/rsxx/core.c
index 63f549889f87..d0af46d7b681 100644
--- a/drivers/block/rsxx/core.c
+++ b/drivers/block/rsxx/core.c
@@ -390,7 +390,7 @@ static irqreturn_t rsxx_isr(int irq, void *pdata)
 }
 
 /*----------------- Card Event Handler -------------------*/
-static const char * const rsxx_card_state_to_str(unsigned int state)
+static const char *rsxx_card_state_to_str(unsigned int state)
 {
 	static const char * const state_strings[] = {
 		"Unknown", "Shutdown", "Starting", "Formatting",
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026213040.3889546-3-arnd%40kernel.org.
