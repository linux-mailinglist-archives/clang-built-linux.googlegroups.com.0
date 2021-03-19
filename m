Return-Path: <clang-built-linux+bncBDNZNK75ZIKRBJNO2OBAMGQEGU5M25I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DF234227F
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 17:53:58 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id x197sf26537176pfc.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 09:53:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616172837; cv=pass;
        d=google.com; s=arc-20160816;
        b=x1D2qEd0PGbJmAak3kKHZ5DRB+ivSSRJr430lkhuOGYgYM3gSVv5gyvoZs0QcAAdx9
         /p+KO+3iGrT+j++SZAA7TBIl6KTrjrVUf1wMydgLisiN2QPqK87tcrW1HN/a8eVbwR5n
         HYBV+87dDXc6OqzHd63Ie0bV7N3VCB2NNwEEXNRzfQbwFQNvlOaIO19mwBIV8hIO20nG
         b4FNJOe3+Un82Usw7lNAbiTsdMCVtyU46yghog10tRe4rzzxh4GDO2DYBHKB6kauNPGg
         d3oZORSxtm+xCVuaFiifARzeq7LVlXI6KeG9IaWRmURYqb5mf/ioOwC/0Z15YDHY5SUq
         8egA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=3eTh8cla6eLyQMXs7V9folIBdbvKXyWlB0XYhbM8rF8=;
        b=s0WrM3NGZjJSBeC0W8SyRu/csGHp2sjTwOtGtBqhp7B0pz2pUyTTC5vSx59OGxwRo3
         jEQrp+1xQTqlqkbKWBdI0iJiPGGS1D5QNOY7qLN1NQXTQk+ZzCy3RnCfLl8XiYsGhYyh
         eH8Kn5A3hcuYY8CiBW+jBGn4lgwGvN3oho18JUeDD/axf3tIGF7I6++z1qiWB+BM1qMY
         S0FY74zqWiQER1FL5IQOHh5sDMhQ46HuwcRU6UeS3WNkBOC8OS7PSoFOqy8/NTwmSfT+
         vxwb+YwYgQpOJ4LatEOTXrLHKYcfc0vHOBaF5OiDE2jD33P8/vEVgUToBBGd3h4hghz6
         QwUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andre.przywara@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andre.przywara@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3eTh8cla6eLyQMXs7V9folIBdbvKXyWlB0XYhbM8rF8=;
        b=B6fiGiyiG17+AqHfICvPZxmZjJ1oVgoWjm7Jj73+vi7TRc/5mytjdhCCs+tfcQJUmo
         3ungILlHAGZZatbLfbTa5+uhfz1htIn4/vJRxib29AAvwXU5zleUZNXqRCjLLgdsm8IW
         a0L86BKvE+yhlT8vjuYdre7Qari2yX/bYjRx4exBag5JWQephRe6+aVg/2i19IYssA2O
         X8sQX5POfaFaRV8nzSBBRuS10WdKLfjBEYHvVu8BLCz3ArO4UX8PSJxwc041QZqzk3Ee
         EFVECZ9rL8Bn4ZWXMdDxsaU9w0QI0B+x/wpTSHOyVWAlkUDi58oriIdKqSnO7pyy+euP
         5Hnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3eTh8cla6eLyQMXs7V9folIBdbvKXyWlB0XYhbM8rF8=;
        b=FLRZ6qU2IIEkIDZ1fKS4mME21E/GMMYTgz5OWJJPEG3C1Up6O5vC+O1xnxlJaHW8QJ
         /+OMCYEGVh/TXu2EGPf1y98WcsK0OERbqhVe16JwI+vD0sSVL3uyttFYGwLG897E4J9c
         cZCvCviwvD5hOebZyZb5prHXytgg+UALNo6B2lQ73enqbp82G5u6xgenaEafKdQdqS68
         3FkxpoTDOPnkAm+F7iyatN26yHsr+aP7WhY0QWiyDFQ+tmzBzDfsqNbz2DFo+xmhyQpr
         p8efDfqSwZtzWG9ukOrvmhLBSP1JunFw0haaMYU9OrQ6BL4iaEi6M3TT343symP3bOVQ
         6NPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ubr3UaNvoclK+O/UTst/1K8SfDRXRSsfMQeUOtq/Gj60a9SSp
	AVj/4VKVnWzWf4puXTTjTDw=
X-Google-Smtp-Source: ABdhPJyFbnDumU8kkEvoW/6cm0XHV3gMbJU48cCfmHTkPVCi+HL5RMbLH49LJWG8foOAgB5Xz85+hQ==
X-Received: by 2002:a62:8857:0:b029:203:4d7a:ae8d with SMTP id l84-20020a6288570000b02902034d7aae8dmr10228689pfd.16.1616172837424;
        Fri, 19 Mar 2021 09:53:57 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed11:: with SMTP id b17ls3173681pld.10.gmail; Fri,
 19 Mar 2021 09:53:57 -0700 (PDT)
X-Received: by 2002:a17:902:b182:b029:e6:5e:f2ce with SMTP id s2-20020a170902b182b02900e6005ef2cemr15369017plr.50.1616172836926;
        Fri, 19 Mar 2021 09:53:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616172836; cv=none;
        d=google.com; s=arc-20160816;
        b=AvvjiZz+HQqV9++V+YmKzxx7geIyhcRDZMqVupnVVX4U5aSYjg4bvSSWAGh+F29ZlI
         fi1bzsOJYKfitXXR/lb10+Zv5xP++DZiIHrt/c78tTOXgcdx28nwevjXye49NjFlMPo2
         o0zfPL1n/1Dm2S/vyag7S7pmSiMEa3mQJKZeRblXNmd3rY4EORwWjgo8UOmhnb9O/Bwk
         Ms0WLYucwWB9/LMXsJVAVcGmos8ngAg+A1WtKkN86/R4B6GJvrIHkWiTZYwZluUyp2hq
         T3w6xtbdiMzy/y6bak7rK5bM+acS77wO+3hrl2IziQlV+XHj/YOLbPVWfwNLDlZp8BFP
         4KBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=PxfbaBWVP0dnG6EPlUSDEmUB6Bc/XCswvFJamRYVbCs=;
        b=zn4O3IX8AjU28EVd+5HFNqU3mLx9hgoWKE+PKIOBdlq4uV+f9uujo3NJVfu1ccinqU
         rS3d0jQ6b9btqc7WP1Yp/2zAIXudRC8Ek251TRRCs4plrt2bpe6FJHko73aZ/9mfQqZz
         YYDt/Zd9y2GGD6Us85gIcyKsgufy9wPM2tOmUmTwJ7E1Zw2qJD2Ljm3wfEyJ0A9MR2Cc
         Y+MGGT0M7ylCowLPV9s3rY9K2l9JTGdyS6GSJvOFi/7qrWpWOYChUdZXbuTx18RtTeel
         0eVNHkit7FllyHbDf6VkZ4Wn8U2ieNVmIoON24MGf7rYli49YBBpCQ5wQz5MqbQyv6dz
         pMVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andre.przywara@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andre.przywara@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id z74si286498pgz.1.2021.03.19.09.53.56
        for <clang-built-linux@googlegroups.com>;
        Fri, 19 Mar 2021 09:53:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of andre.przywara@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14F84ED1;
	Fri, 19 Mar 2021 09:53:56 -0700 (PDT)
Received: from e104803-lin.cambridge.arm.com (e104803-lin.cambridge.arm.com [10.1.197.64])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 81C113F70D;
	Fri, 19 Mar 2021 09:53:54 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Shuah Khan <shuah@kernel.org>
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>,
	Mark Brown <broonie@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kselftest@vger.kernel.org,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [PATCH 09/11] kselftest/arm64: mte: Makefile: Fix clang compilation
Date: Fri, 19 Mar 2021 16:53:32 +0000
Message-Id: <20210319165334.29213-10-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.5
In-Reply-To: <20210319165334.29213-1-andre.przywara@arm.com>
References: <20210319165334.29213-1-andre.przywara@arm.com>
X-Original-Sender: andre.przywara@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andre.przywara@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=andre.przywara@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

When clang finds a header file on the command line, it wants to
precompile that, which would end up in a separate output file.
Specifying -o on that same command line collides with that effort, so
the compiler complains:

clang: error: cannot specify -o when generating multiple output files

Since we are not really after a precompiled header, just drop the header
file from the command line, by removing it from the list of source
files in the Makefile.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 tools/testing/selftests/arm64/mte/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/testing/selftests/arm64/mte/Makefile b/tools/testing/selftests/arm64/mte/Makefile
index e0d43cea3cd1..409e3e53d00a 100644
--- a/tools/testing/selftests/arm64/mte/Makefile
+++ b/tools/testing/selftests/arm64/mte/Makefile
@@ -32,5 +32,5 @@ endif
 include ../../lib.mk
 
 ifeq ($(mte_cc_support),1)
-$(TEST_GEN_PROGS): mte_common_util.c mte_common_util.h mte_helper.S
+$(TEST_GEN_PROGS): mte_common_util.c mte_helper.S
 endif
-- 
2.17.5

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210319165334.29213-10-andre.przywara%40arm.com.
