Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCVJW35AKGQEK6QTKAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id A96F92584C3
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 02:23:39 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id bd4sf3472411plb.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:23:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598919818; cv=pass;
        d=google.com; s=arc-20160816;
        b=XoLdRLEMM3Z/8eeJNgi+HQ0eMBVrnswyOFzscSD/JciFTOCr6jFw7VX90BEI/r4NVd
         MfTqZ9uxNxumr8p8etXLaLhYXN6f08vTx5D6+ux+KkcAyoFx0VZSlxtodC9F0hxT1xSa
         icOc5V+BmeqU3wHBQkvjobkoX2B5Ar5oh2/JJQNk0HZc5g7vk0IocwCs3IsFwq07+d1z
         V8ZbDNXnzXXAYCSV/6kzfMQxd/Z3Kd30bM25RegzMugP69qZ06rDEafSJ/ftqHIkmYgh
         +Rz83xYC/y5f+sMNOtnAx5R9ihvm58cKJcaGU4nyWneYEuds05AZxXmUp9HpaJiDNLzL
         JRyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=fr/lkURWRuq0/Cq9vPRfhWHhJobR0eoIwpkh8Zh+vm4=;
        b=pSHCFkYBhhz71wXuKszDk91BmcjSdd6JxZblEeUjuVwrZWJ3VwpWYkrQZQllGr7laW
         Me27+QSAd+WbJMpFa6/1vh7BNVBTyspTDabAoWxn/uT8qFykFvAZG2mdypnohmHsls/s
         xqaIT5GYFqzOazRJpCGF60ratSkXz9KfLPNJFc9nkldAzfIK+S7qHDZYVO4Wq3FGj4YT
         lSwF1x0MQRaZg8t/gny0vT/2xjSOHx87z0uEn4o3mSRo0sOPeKbB9CpRHD9jEIB59hDV
         hI9rKoGNk74DN/wcovbkpnxUWlVLhu/pzy1iVpY/rU+5A/1vs2aSB8TNxMVZhCeSG24t
         80rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YDk70Rux;
       spf=pass (google.com: domain of 3izrnxwwkaogxnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3iZRNXwwKAOgXNOcKeVXSObcQYYQVO.MYW@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fr/lkURWRuq0/Cq9vPRfhWHhJobR0eoIwpkh8Zh+vm4=;
        b=lK+9Qalx9gJ/Pj+eJKUj13b9rjjrMNYdDkKr9NiPqhDJbdx1oBA4TwWWq45NU0jDeJ
         1jxm3q5dJYhIOounax69lInZmS/6XOH1ndpKu9ihSWcnFfoogT62yKJAj1qFvfTsPrlF
         8Wi+ZFwSugD9Qc6w6qtOcDQaydHMZYEzFMStWYX6Ck47mLf7yUt8VLf9aivDuhl4ddlr
         X14lVmYuvGA49vi3HU0qBAbvDp585rLDVxl8UV6zaZtd7UGmAubOESYHDYBu4jqeu4Y2
         9sOAf1IhU7iM7//xYHOH4+39CuCnK5SPvg20PAvD0ANwF2+0h+4tofCzb5mB2agR3y6e
         02wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fr/lkURWRuq0/Cq9vPRfhWHhJobR0eoIwpkh8Zh+vm4=;
        b=EzItHx7gcxRrZejCfzujQ39h+IT6JmFXXzD9lVYMjgSdL+Z7ObPNpLLG4EWjfr2NA4
         C1eLHIvud2qmTdwP9fxcywgBs9ByGH7K2ACObkL/NBKMtS+KMkyqq7T/lIrNtdUJB6T0
         wR4L9CczEWOnKn3N//4b6lsnSHrKzY7nd2P+kNk7mWxSv9lW6w+G+6FRSdklIN4VLnDu
         5dXBCW6RsRybMOX9F8JueqirYawqfevC4Lehz+s2xaE3tt9gAVpDq94rHx0w/ovy2usY
         d7Otf7PsW3YX25+j8BEmgGimpJW1jYCWFf4/DOs9V8d9F474bIvXMcqhxA4sinlo3zyW
         QsOg==
X-Gm-Message-State: AOAM530y4QOhf4wwfLFO34+TvLQOgeHjT+SBdYFAQqmIUg5wS+s5ezPj
	smiD1fVLIwiDCk1sFmiOCuM=
X-Google-Smtp-Source: ABdhPJzUmRV/9/uKSOsZduqBP64+XcJE97NcLTnRdiAMsWccnNrKMSJsMBfC4gtg6PnaZfr9RPinCQ==
X-Received: by 2002:a17:902:ea8c:: with SMTP id x12mr3119683plb.60.1598919818263;
        Mon, 31 Aug 2020 17:23:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:720b:: with SMTP id ba11ls4238422plb.0.gmail; Mon,
 31 Aug 2020 17:23:37 -0700 (PDT)
X-Received: by 2002:a17:90a:d711:: with SMTP id y17mr1768523pju.10.1598919817814;
        Mon, 31 Aug 2020 17:23:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598919817; cv=none;
        d=google.com; s=arc-20160816;
        b=Hjx4sjlULeAvHyF1RMt26BKEqZeskggWlo/vG55qUIJkhDsq8SmlYRpSknvQ9NzMV/
         g83P0/blr5JlWvMcEbJQoUVAV3FN/yYYk95O+UW4G+0WzZfshNRXcRGmIhZFaHsSk+bJ
         FLUTeGOJNmiiwonyHmDGGLeOc5PVrBt7ykUUxcjwFRbdw9FkmbQWQCA73tHTD0btCUKP
         NLtORceVksLLUdQCJSF+q8Blmf34unGkC+7jVrPl2BaXtK4eCAxSl7fBWK/g2lKdp3eq
         upK452CeBXd2wgnwldkOjvT2m2r111QcuAP5nr61RIFKF40bp1tcbjyogHZvWT2fyfBF
         9EeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=x7hoSHeAWK5P4oeCQGgLVlcI02P7mwgUY7iVKcw4mtY=;
        b=m7ThCkFATv3nNcNleci2RoqpgcYRpw6J1HTEevx02obND+r9E7TyucC0XwjASRBXFB
         0w7XhncAZYlmKdzYHxlDBXJtjj2SagNCxY56laxdhsBhM4CryYLIJwk7lOvIaRhnz6DB
         4jUROvfyw3Yz1BYLfDG6VpCBuXAHlh4972IhI43r6/U4pJDzLVhE6EB68OBNNTGwAr3N
         UQ+ws9Gbp/4gpf59p+65A2KNSK0DF286Z573VcYvLss0xmNoHzrl11wgy8c1u8KqxXOL
         9mYbkaQE9NsReU4EcwFfG3tdwVK87DmAnaVCkIK/fzNezD0rSgTBygU5CpwrTP7WU5ew
         rroQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YDk70Rux;
       spf=pass (google.com: domain of 3izrnxwwkaogxnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3iZRNXwwKAOgXNOcKeVXSObcQYYQVO.MYW@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id m15si436304pgc.5.2020.08.31.17.23.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 17:23:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3izrnxwwkaogxnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id 129so1684032pfv.6
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 17:23:37 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a62:4c5:0:b029:138:413e:3e65 with
 SMTP id 188-20020a6204c50000b0290138413e3e65mr782938pfe.3.1598919817460; Mon,
 31 Aug 2020 17:23:37 -0700 (PDT)
Date: Mon, 31 Aug 2020 17:23:22 -0700
In-Reply-To: <20200901002326.1137289-1-ndesaulniers@google.com>
Message-Id: <20200901002326.1137289-4-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200901002326.1137289-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v2 3/7] Revert "arm64: bti: Require clang >= 10.0.1 for
 in-kernel BTI support"
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com, 
	Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YDk70Rux;       spf=pass
 (google.com: domain of 3izrnxwwkaogxnockevxsobcqyyqvo.myw@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3iZRNXwwKAOgXNOcKeVXSObcQYYQVO.MYW@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

This reverts commit b9249cba25a5dce5de87e5404503a5e11832c2dd.

The minimum supported version of clang is now 10.0.1.

Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm64/Kconfig | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 6d232837cbee..2a70b85b1a61 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1630,8 +1630,6 @@ config ARM64_BTI_KERNEL
 	depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
 	# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
 	depends on !CC_IS_GCC || GCC_VERSION >= 100100
-	# https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
-	depends on !CC_IS_CLANG || CLANG_VERSION >= 100001
 	depends on !(CC_IS_CLANG && GCOV_KERNEL)
 	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
 	help
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901002326.1137289-4-ndesaulniers%40google.com.
