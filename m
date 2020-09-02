Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTOHYD5AKGQEYNNQNAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA7F25B6D7
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 00:59:27 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id k9sf525127pgs.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 15:59:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599087565; cv=pass;
        d=google.com; s=arc-20160816;
        b=SMTlNA93g8mGB+tuuyNLd/3K43J2s8409aGLzhiTUwc1HjgQV5KfeJGRcUx7F1s4aE
         dN+KmIe0iz2+Bm5TSwFk4XSjDYpneHwoRUqYpjFyr3U/k16mnhvVCJwOLXb+Njeyut05
         bwKRiYn0KYOZN08kYeKmDTmBuxlS13q5whBmC6l38Sc2xD+f/Jvcgfj0aozb23zgm+In
         o3sF7JFCw2Oz9ilqYStGgduz41kBeJLFzLiWrtTq1PxISCUW5qE/ZPMaNeDl9CRZHBFL
         dbv3RQeVycKwuGO4VyGxyb7ix6rU4QdkNLrmIlufKErlsnpMvgREqBLOIGQX9IvpcwPG
         BKUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Iw5zbRP3Tc6mPDhTkAsDijbntU/xQ24jDm6saqD5erg=;
        b=knWq3hzcqbb2PRFdb0NnBYFRh8G8K/gkOQS7sx+JhL9dNwmTUDcHDr8k9x1ymGXJNU
         MzT0wTz+OFxKyQb4rTiKplVE8Y6rgQSqbdevKfo62ai4Rz8bvtE0p/lMvUARDDMNFhKN
         aY1AQOzQPd7X4zUZ9g+DNmnHNKqHtpReOHJtli/o1I1+u0rEWaDmvvjUcEPHNHXnKG69
         PvWfyiDGxZItGMllO7cfpIdRNDOD79IlAaPflFx+vLAIWG7IIJ1EJtkhFenrGtYJUrMv
         h0xreM4BeQJUTeOldzEgQr8YpMi/03s+2r4h9OYEWPTO0Z58keIW2theev54iRV2kALO
         5NeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Ep/td8sY";
       spf=pass (google.com: domain of 3zcnqxwwkafua01fxh8a51ef3bb381.zb9@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3zCNQXwwKAFUA01FxH8A51EF3BB381.zB9@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Iw5zbRP3Tc6mPDhTkAsDijbntU/xQ24jDm6saqD5erg=;
        b=AHt9D1Ga/qCogoa3BFLIaJRRnhCAhBSJ1UHi21WuM46SaVH5o80XA0rHehJ0nktMka
         YMpLKBmIfDYdYommb4ngflszYw06XyvizZsVX/QQz+A/rlCoG1e1WL2Y7VIi0kkOlPsm
         ajNJ9z9PMU/T3+j35Xwn2dotLDIycoaswhAiR0WLw4lLN/F48sXnZ6oY1oL10fh+4tfi
         sSx/nIQfLH7cdkZroB8QlfiOQciKzUIHoXBOzOhRTA9NX3IpxNzeg0kxOopsjCaSqiC3
         10POX2Z3VMq14g1wb7LnFHST2Q3m0P02RZMbDhpUOhBJ6GmRguD29tqcix32Y1ufRcgM
         w1DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Iw5zbRP3Tc6mPDhTkAsDijbntU/xQ24jDm6saqD5erg=;
        b=VMctoX5JYGVzVzEfyfMbxqKkSv+/LWrK8PiJaIIlpVbE1k3Wg+86fDTPs3HBAlHMWT
         d5LVs9R6vCiWyq3BJNJRUz7wwRyqRHOqkRPNtBsraz/MJHcJ36Gi76E6boB7gXomqYdG
         qUfCSfM8RJZP40cl49KdsJIIvI+JMYUpZHo2cH9fMOGKcrkoczSiaZ/EN9zve82fL0bS
         TY/i963Zv1SaMptO0eT5e7S0TPyHA4OnsXrVUyIUkmmWs7fY7ufb+cIsuyyNOgnpgkRg
         lqluqeFls5Hb5nr/Nw5ALY5+SsFHf1ghj7SdZfB9QTEPUme6um/fixBZ9haihTKR/gIt
         tGXg==
X-Gm-Message-State: AOAM533jOmTHgKd3AWAQB0akH+q9hkfelAj1691r0n3JaXgHz+FewvvH
	aEYmDK3cd8qjVNmU46THRdk=
X-Google-Smtp-Source: ABdhPJxfTp4N6i9Vbz6jeJofoH5mysJ2gU6as8pPyrxeU88SkFTd+MGoDPtGxe+NFgYgRltKnP94/g==
X-Received: by 2002:a17:90b:70e:: with SMTP id s14mr40575pjz.206.1599087565449;
        Wed, 02 Sep 2020 15:59:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:fc89:: with SMTP id ci9ls1668425pjb.0.gmail; Wed, 02
 Sep 2020 15:59:25 -0700 (PDT)
X-Received: by 2002:a17:902:7582:: with SMTP id j2mr608188pll.322.1599087564964;
        Wed, 02 Sep 2020 15:59:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599087564; cv=none;
        d=google.com; s=arc-20160816;
        b=HijX0w7ziXSMZNSVOuAC3TTlRP/14ynwNvgah4NqumNg2cf/j4J9jDzBJcFOp8ZlqU
         vg3RTuzSWLacZhYx6TjnQNjKgpyV+1f9MVdaelNKO/fgJlTrifxf4yn69ejpdBD/11Lb
         SdZwhZi+Jf5QNXte+ckL9a18GC4f33PLJ7gWiMGgCMy7w+LUW8GpvxYykkRB1J2lqNFL
         fir9wrvaPrg/SuTYDaz4vEDSikUnNsXzE3WgQJvdfu8eF/o50rDg3RNBpW3LbGDZ+Xvm
         tcVEoCSfkzZJ1JCY2uur+8ua1GBN2RsvyVuHEtFbFIhHlxRWYAi6xDKYLZHULMKTayCG
         WhNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=DRVYiI0z9PXOKl07Ogbr3lid1f40nOD0HDkD/1XOSXY=;
        b=gqZiqemT6+ZCxrWO2E+ftGrWnXBrmKL1eCre8KPcPVRtgOhfq2TGK9QiWzCrIduq5b
         VWlxCb2vMN9KUv0fAhk6gSSNccgDOhK+XIqrT+eXXBTXNR/uQiroPKjpc8gTG3jZZ1GU
         zOYj43/VJoFv1tydWpZstRv39PpaNujDDGdZy3QgJzl8h63IbLznNW5FqKKPDoedjznt
         /PvGXhjczllOCwixbH78jV1asu8X3op5ABEZvbbXUPNZd+t9tGYu9lNoyktV/hT7QPJm
         z+Rjo5g27KUlY1jfrLgtq9b9C2cYbcP0GpcSjcJ/fr5TKOX4J1GxOh0Z11vPL/Zm4bkB
         +qqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Ep/td8sY";
       spf=pass (google.com: domain of 3zcnqxwwkafua01fxh8a51ef3bb381.zb9@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3zCNQXwwKAFUA01FxH8A51EF3BB381.zB9@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id n4si64360pgt.3.2020.09.02.15.59.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 15:59:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zcnqxwwkafua01fxh8a51ef3bb381.zb9@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id 184so473569pgg.11
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 15:59:24 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a62:4c5:0:b029:138:413e:3e65 with
 SMTP id 188-20020a6204c50000b0290138413e3e65mr672301pfe.3.1599087564581; Wed,
 02 Sep 2020 15:59:24 -0700 (PDT)
Date: Wed,  2 Sep 2020 15:59:06 -0700
In-Reply-To: <20200902225911.209899-1-ndesaulniers@google.com>
Message-Id: <20200902225911.209899-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200902225911.209899-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v3 2/7] Revert "kbuild: disable clang's default use of -fmerge-all-constants"
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com, 
	Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Ep/td8sY";       spf=pass
 (google.com: domain of 3zcnqxwwkafua01fxh8a51ef3bb381.zb9@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3zCNQXwwKAFUA01FxH8A51EF3BB381.zB9@flex--ndesaulniers.bounces.google.com;
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

This reverts commit 87e0d4f0f37fb0c8c4aeeac46fff5e957738df79.

-fno-merge-all-constants has been the default since clang-6; the minimum
supported version of clang in the kernel is clang-10 (10.0.1).

Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Reviewed-by: Fangrui Song <maskray@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Link: https://reviews.llvm.org/rL329300.
Link: https://github.com/ClangBuiltLinux/linux/issues/9
---
 Makefile | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/Makefile b/Makefile
index 1cfa5029fd2f..e475650c9599 100644
--- a/Makefile
+++ b/Makefile
@@ -932,15 +932,6 @@ KBUILD_CFLAGS += $(call cc-disable-warning, maybe-uninitialized)
 # disable invalid "can't wrap" optimizations for signed / pointers
 KBUILD_CFLAGS	+= $(call cc-option,-fno-strict-overflow)
 
-# clang sets -fmerge-all-constants by default as optimization, but this
-# is non-conforming behavior for C and in fact breaks the kernel, so we
-# need to disable it here generally.
-KBUILD_CFLAGS	+= $(call cc-option,-fno-merge-all-constants)
-
-# for gcc -fno-merge-all-constants disables everything, but it is fine
-# to have actual conforming behavior enabled.
-KBUILD_CFLAGS	+= $(call cc-option,-fmerge-constants)
-
 # Make sure -fstack-check isn't enabled (like gentoo apparently did)
 KBUILD_CFLAGS  += $(call cc-option,-fno-stack-check,)
 
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902225911.209899-3-ndesaulniers%40google.com.
