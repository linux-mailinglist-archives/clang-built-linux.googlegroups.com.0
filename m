Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBW6UYPWAKGQEOBNQSZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B35CC167F
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 19:31:10 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id g126sf25218192iof.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Sep 2019 10:31:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569778268; cv=pass;
        d=google.com; s=arc-20160816;
        b=0qbLiJFhK7I1+Q0nVNhUt8qJujEo37IxuhLQrsjKZdODjvqJGW7j/tHKVo5cADnSPj
         0Kb55wEnZI2cNWRANqEFJhz/ERLOE2i7LrUOGrUiCOQtyQGcyUzKdcHXeSMwOUUaFnJz
         GZSFMGG2nZxWY+tT4YFyxrvw61W0cMmlzpO8rOg4U3NcnA0VTCNeNBKcRH+jO0fhEzVr
         aCy+S8kHdS9OfbS2PlZHkhcromSUaKW1GcIY5sLo2uG8AayaAmZKrN1UNhtDpa3mxnJC
         ZhJuONNnBuZRAlYV6hIK8ShHJbbqErxjWFuZ1K7/iLiF47HUIwjkkH+qlfzC683ONqEi
         S33A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Ovaf9yObhFs9l9Q/Dz06gouA2jn/CIg/Qb0IQJrr4ZA=;
        b=ZfIgMZBZTCogMYt9JwRAIB1RtnHIuouDwdqGJXnAC8pLXNy5KLpsC23cphuwZRHRqe
         A8+RmKnNp1Ea0Hn/K9lER9eYYatg25HmKnOR8EZvzvnjJ9UmOaliPOdFNO/4vpcBCvqx
         FGfmSPvNz4uXHYdTC/oEQynSsSBeJAIbm+sLilp/Tn5xX3JdYuxKpucayoPmA4AhtXKU
         lzFfQRfmBsRrHHOHEGGbvMn+Jf/K0xljpAOCnSqI7qohE7nEBzwN6zjzkOxgIcoSFT4m
         6WqYrNsn+ZileZj66P19I9piSvK7xf16IArUtHV6V26svcWOd2t6m2JM+ZV5GUh0VDK2
         ckiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FrNuFjbK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ovaf9yObhFs9l9Q/Dz06gouA2jn/CIg/Qb0IQJrr4ZA=;
        b=qW4b+2fHNU4QCPIiboK4OvPLh0UdBeDDnHdr2Hk5eTNQAsFnlBdzRugvOkVLgUP89D
         3Tv8+xCivW2zvwibIhBbRYvG2cWTpI0JN0IL/+UXrOlohjwb5UXT/3eyxg2uh6Flb07V
         kWA7eUaOkXjq3MblC+JTcFMlHAc0UGGo9/pcknp4aIz41GWkAtTnrLPiO6NnTHa7t0BR
         Ym74QZJFelHT1/5JBvaBot8JQ4oiV8ygjYFAor0zByOOq9vM8WieuPBPGKthHZl6muOP
         5YAtyoDaS3CsPeGjzWFJvkKSbtyOn8lWikBylvoM8s32+J26QcPlgG2oKdlcCXNb/FCD
         WnpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ovaf9yObhFs9l9Q/Dz06gouA2jn/CIg/Qb0IQJrr4ZA=;
        b=fHQThqtz13T9/8QqL0rNJNir8NnO1iAKwHhaCZOh/qyZIyLM+DswjnNeZct1XqZ3wm
         7xYEKIyCGA0JqioL86lqYBohy8WDdMxuyJo6YyzVbKXjEoF6P4SCjrSyFx/BVKs5bxC5
         lVoXPd7Igys/y3l4/Z1JNlj1mzJK85CszPYTgKCuQzJbcdAQVaDhjG4uRYrjkIlOU8Gm
         eA6CVWTfFAKDa7GbkqjJcx8wvZ7quqL7XuYlV4+R3jyaDWN4Pd0VgZFGl8hwwBYTm2RH
         hFt4mW3Qsqw5hkCxrVkSXNcGRC26H7tt15WURvN18NJKdAoOvAc4V+XejFlBpxSNhMBT
         +xVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWsJzXrTYZG6+fsx/B6SOMrEU0druOaKMOa7V8TiKTY8NZMaz26
	HTYoRL0DkKmAe+KrZ5H/b7c=
X-Google-Smtp-Source: APXvYqyMY+RH+kN+5RIg8NDhkxJdIHvnfS5+AFLWrYr1r1CYWQ235JZJZRharRJpJZgkxLIkdZnUSg==
X-Received: by 2002:a92:16da:: with SMTP id 87mr16006271ilw.211.1569778267935;
        Sun, 29 Sep 2019 10:31:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:5d01:: with SMTP id w1ls1122797jaa.2.gmail; Sun, 29 Sep
 2019 10:31:07 -0700 (PDT)
X-Received: by 2002:a02:cc6e:: with SMTP id j14mr17034892jaq.130.1569778267299;
        Sun, 29 Sep 2019 10:31:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569778267; cv=none;
        d=google.com; s=arc-20160816;
        b=Q/OE+mLENKY/vjzU27ZNfKUVjaoiCaBZU547i/DBMW5uRQHOdmi//OPbvdAE08Yc1m
         gJsAFwHe/cYvPUUj5jpq7/JZ4NuALARHYtZPqhnvMPiIGvyUnDOZVyHdnrtiiSNFhcfu
         xv0u+5VIVpmrt6pVTPArdpWVzZOAviFCBf7VkiBy0b0ptWmVfvxP6lF5+ls0yDMN+zEM
         fzRfE+olzZMdnsHEagyZL2aaG4QRG9HmNlXqu56mbxCHXdSxM+ITW5yWh7NqU3Esi+qh
         /bwOMdwcbedDFbIL6ec4zxg8njxc7iG0838hBIUp7EYn2QwW4Y+tz+qVPfWwAEbReFhe
         J2Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SmxCHXBv/cxR7WY4Zwm0Qt4mXayD63rzMadCl3XrK/M=;
        b=ryvSSjN1LY4YQggI4RpJZBIj1RPGA2xjfxdR/jG0AYfiB9Q2inQXmM/AfzjlyFMlSo
         Ha2S7ZlCg/BrxRlFveCd9aLxIWkmm27k05Hcb/MQ7fjqxyXMvhrbwFzxmabso0RbstcU
         9AtkgKOas9oa51tySKsoSe8/CDf5wnCVOdKPzkbpD6/q2e182RqGLe2PG+TkF3E60ODa
         R1G0IjCtvBBcOzCju8ocOfr+0L5a/a1UF5OQLmZa4rL5qELYa3kJmJ1JX4IfrOQiAGDq
         Otp88PED3xeL6gHl8DfdXO0DJ8jTsvquno0covWWJIA33nV7l7nwqiV2BIdp+e1HVF8q
         kdGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FrNuFjbK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b2si398465ilf.5.2019.09.29.10.31.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Sep 2019 10:31:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9DFAE218AC;
	Sun, 29 Sep 2019 17:31:05 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Paul Burton <paul.burton@mips.com>,
	Ralf Baechle <ralf@linux-mips.org>,
	James Hogan <jhogan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 5.3 04/49] MIPS: tlbex: Explicitly cast _PAGE_NO_EXEC to a boolean
Date: Sun, 29 Sep 2019 13:30:04 -0400
Message-Id: <20190929173053.8400-4-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190929173053.8400-1-sashal@kernel.org>
References: <20190929173053.8400-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=FrNuFjbK;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit c59ae0a1055127dd3828a88e111a0db59b254104 ]

clang warns:

arch/mips/mm/tlbex.c:634:19: error: use of logical '&&' with constant
operand [-Werror,-Wconstant-logical-operand]
        if (cpu_has_rixi && _PAGE_NO_EXEC) {
                         ^  ~~~~~~~~~~~~~
arch/mips/mm/tlbex.c:634:19: note: use '&' for a bitwise operation
        if (cpu_has_rixi && _PAGE_NO_EXEC) {
                         ^~
                         &
arch/mips/mm/tlbex.c:634:19: note: remove constant to silence this
warning
        if (cpu_has_rixi && _PAGE_NO_EXEC) {
                        ~^~~~~~~~~~~~~~~~
1 error generated.

Explicitly cast this value to a boolean so that clang understands we
intend for this to be a non-zero value.

Fixes: 00bf1c691d08 ("MIPS: tlbex: Avoid placing software PTE bits in Entry* PFN fields")
Link: https://github.com/ClangBuiltLinux/linux/issues/609
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Paul Burton <paul.burton@mips.com>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: James Hogan <jhogan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/mm/tlbex.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/mm/tlbex.c b/arch/mips/mm/tlbex.c
index 144ceb0fba88f..bece1264d1c5a 100644
--- a/arch/mips/mm/tlbex.c
+++ b/arch/mips/mm/tlbex.c
@@ -631,7 +631,7 @@ static __maybe_unused void build_convert_pte_to_entrylo(u32 **p,
 		return;
 	}
 
-	if (cpu_has_rixi && _PAGE_NO_EXEC) {
+	if (cpu_has_rixi && !!_PAGE_NO_EXEC) {
 		if (fill_includes_sw_bits) {
 			UASM_i_ROTR(p, reg, reg, ilog2(_PAGE_GLOBAL));
 		} else {
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190929173053.8400-4-sashal%40kernel.org.
