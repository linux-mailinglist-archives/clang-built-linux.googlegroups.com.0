Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOU22WCQMGQEINVCHUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id C88DC396923
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 22:55:23 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id t10-20020a1709027fcab02900fd1eb0b2e8sf3412240plb.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 13:55:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622494522; cv=pass;
        d=google.com; s=arc-20160816;
        b=h7pwA1eluwPJpwT7MRIpLcIRdXvjoQ4PiEAJ6/05L4rLgJC7LivPPDir0eDG9X7hoN
         EeHTsF55ThZFGVweLVwLveL7WBo9jeiz7zwuXkHdX8SKg9+mI1uXSyDNsEHBbcJdHN9x
         TrkBelrh6957aglaNifaeJL90JTDVrueWos269BuX2TKFXAr/tSyU/JKFrlGzAMQvdEL
         EkpgRHSOPxOM0f4jX/O4WdUKg0Gf+x6mRHbtmd8fEBKS/+5FPLXzbg1FokICDH6t1dgT
         IbUdSvBO9bJWpWY77oRCW20EN05peE1wQyv5Hd4pN5gvpcXufJ7H0U6OsO0peNpH0p69
         uFjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=mpSJObHONdumi/+v6KRwa9x6tvrSeyA/HnbEsc2doEA=;
        b=wwRY2WBbAK193aPxy87hHSfUc+uNB7FaJoj0c2qfOYKVAHgKWEYgbFmfdK+IupMC0+
         qlQ4qVufFFj0zfTz9HDvFTYC4wW+EbbHQZrFT/2ahfYVFRNV5olHs1JsEIciOdQhabaw
         FLIck31sndfQYqDHyxv0t9ysM0c1SmTIGw0Sc/DKvCINThrFWsnZ2pd+6FKGpZvzukKE
         nKWkYrzdm7sHe7U3ulpukLlmvzFm0w0xMqeLM64oWsFlyTtsE8HdBVLwtA90vNCjETF5
         rdtXXGD2aeV1pKyZVSfUe7OzR0U3yio+xPBMTUBHo7iv1sPMv8KgI21vXLbqbF65NGnX
         iXcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jeIcBvqB;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mpSJObHONdumi/+v6KRwa9x6tvrSeyA/HnbEsc2doEA=;
        b=V+2l+Le7Qw67qdGuINvUaXzrj5TZhVxzFTdt8UfPN7cZd3tTOm3wsyCIrRzY/6+kup
         C0OKmlhF/G27TheL3kNW+tiMJ400fR2grwO1vFY1fol+Q/pAHgtVywhOWSe+iAG3jKV/
         S0cW2ff439uouyJeT3jEbG40NMpoLrQQJGA2j5FBnir64uHzNqQ9EY6l1q9ZxLvgS3gE
         kAIyrw/IGR2v/awx0retLiApVprDb7aqeHJbo8aEZPddeLow5IKS3TLqrou2/oqNKP59
         9MiJP7izG2w+B7FbkYZkirtDrs3NfiUFih2+MnLUXfLQ7D87J9jQ/TH0xzybHDBgNCMT
         ecPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mpSJObHONdumi/+v6KRwa9x6tvrSeyA/HnbEsc2doEA=;
        b=Kwjysva8kgEV5219dYGO2V1jtSMAxD9nl3lSqBL3DD3rZLrY2zX+La9Tn4kSp31rbp
         LPyy0DD3mVGr5JcGne77AvWmFJXUndS69Sot+XJApB1IyyX6O9Fn+WF5XJV6kI90poj/
         EZE7UASs02txdUgqRU73EVKq5JArndBNzzv2suRmdvTJoU3E+Mn6lJf52BOx9ufqAE10
         xneJpFGxwYul1Psgd77vktaZqKGg9UjzNm6Q4HFkIWQxl8enIXdiwr4nUOaIldsiovHp
         LYFH3G9HFom+iL3YHFlGJxKsxSRl/M+2I+BdWGkO+gaPocZMG3u8bqt3Bvt48hVI1e3j
         Cp6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UyJsRaoL7j4ou7P/eEnGJdLW/YmRdiZLu42XqM3jD+GP43/NZ
	J63wqWYS3pqJdZy++ycUxck=
X-Google-Smtp-Source: ABdhPJxrIkdzsknXrLtZVUQvz4DQPg6x8LkrNKN7zQWQT74G3pYyyTjrMBZ31KGstCooLwSGN4NmHw==
X-Received: by 2002:a63:2484:: with SMTP id k126mr8222376pgk.1.1622494522306;
        Mon, 31 May 2021 13:55:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed8d:: with SMTP id e13ls1144456plj.2.gmail; Mon, 31
 May 2021 13:55:21 -0700 (PDT)
X-Received: by 2002:a17:90a:6702:: with SMTP id n2mr21261136pjj.37.1622494521784;
        Mon, 31 May 2021 13:55:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622494521; cv=none;
        d=google.com; s=arc-20160816;
        b=lxlM6PMzHOENtDrlZJ9XZ4R5SQmA0G+mTfrXFgSjv3WF6cuD9JJcvskl83AP60v70F
         sBnsNshV4ju6E3/LF8eJ41ogjnJNO+Qkbyb4MyEL7jitJYwHORr+85TUkVBI3i+X/kCT
         R1/x3jNxZvm09YuXVzV+6c2ppf/nqkPwx6rB9QfSFjLavYftLtOa/7VAoan+lA0IasUc
         tVacwUMJ1W+I7F04d64MGkXTAmR5F12Ah6D6nTIkddYswSdKFEJWLB0r9PCBf09Qa6pV
         HRkylVtB39rS4eSD6jgjvdbotIjHjgwOVxzcxH5SFvBVE90lzhJvB4avJ7xlZH+nQjAK
         aF4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=thFlY6eBcrxkipfLBiSbZHKxXB2SRwv2H+Sm0H6FNMY=;
        b=nYZHRgDuhYskq3By6WU8YHP8onDjsKPFZVEQO4E0JkL9G8rOPcCFGjje3B8dBGFCz5
         fdI4X3Tn2X4hTo/2QpUHQgFMM0I8s55mgJzEaXiYeNg/nGHs4MM53JoGw6Wgfd4jFubb
         X/GE51bXgZw/8+uF5IvdD0FvQ2yUpcBNqrgKT7fcqJgqDaTZzfIu4cuRhWeut4OP0Cyu
         Aw4BvKncPPBoT7RrWOYORg+QYaf1QcShDalB9K8EPPE1SKOQdv7ZBPJElrUO9VHSZY0g
         JLZWMACEv5scXX091o68y2BEcoRxNpw5IGarNmcTUpE4V8xqqthVdoo7aCJKFo86CULE
         cCbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jeIcBvqB;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w7si248165plp.5.2021.05.31.13.55.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 13:55:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3D208611CA;
	Mon, 31 May 2021 20:55:20 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] MAINTAINERS: Add Clang CFI section
Date: Mon, 31 May 2021 13:54:06 -0700
Message-Id: <20210531205405.67993-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jeIcBvqB;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

Sami is the primary developer and Kees has been chauffeuring the patches
to Linus so ensure they are always kept in the loop about proposed
changes to these files. Add Nick and I as reviewers so we are CC'd as
well.

Fixes: cf68fffb66d6 ("add support for Clang CFI")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

Not that I really expect this code to change all that much but I
personally hate when there is no clear path for a patch to go upstream
so it makes sense to solidify this.

 MAINTAINERS | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 008fcad7ac00..81a507cda338 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4436,6 +4436,18 @@ F:	include/linux/compiler-clang.h
 F:	scripts/clang-tools/
 K:	\b(?i:clang|llvm)\b
 
+CLANG CONTROL FLOW INTEGRITY SUPPORT
+M:	Sami Tolvanen <samitolvanen@google.com>
+M:	Kees Cook <keescook@chromium.org>
+R:	Nathan Chancellor <nathan@kernel.org>
+R:	Nick Desaulniers <ndesaulniers@google.com>
+L:	clang-built-linux@googlegroups.com
+S:	Supported
+B:	https://github.com/ClangBuiltLinux/linux/issues
+T:	git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git for-next/clang/features
+F:	include/linux/cfi.h
+F:	kernel/cfi.c
+
 CLEANCACHE API
 M:	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
 L:	linux-kernel@vger.kernel.org

base-commit: 24845dcb170e16b3100bd49743687648c71387ae
-- 
2.32.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210531205405.67993-1-nathan%40kernel.org.
