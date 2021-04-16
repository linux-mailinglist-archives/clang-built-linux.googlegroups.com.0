Return-Path: <clang-built-linux+bncBC2ORX645YPRBXPL46BQMGQEMU5KJKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA3E36296C
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 22:38:54 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id z39sf7470295ybh.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 13:38:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618605533; cv=pass;
        d=google.com; s=arc-20160816;
        b=qNefAWoUSRjhZCNr7QvSJyBPaODv8ngvAi5T9jJBfDdqr2JWJ5co2ugLa7G9C3sp9/
         Dgck36Zf+Fs+XTdjC0YjqZe0AIUF6+QyjNPCybAUFfM03FPNkcx4CMkaxfntW6fcnn5c
         aMkfj5SUqrs0j57poemG/Jbwq0rEycOFq3w5ePlJG6huKKwiP3ql1K5RJhfiGBQQ5Jjx
         F8y9wZbD3DvLuyq5JOp+KDl1bKDT30P+ESdhqUrgAj+ll45+cSx4q/24ZT+aFPbZ4qNc
         XM+HMaeOsbvEt36/0omyGgVky2SKl6vcRT1W6FOmyiCnpLyUW4t1y0QfBZswfSrXs59W
         Kyow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=qaQbivxXWkTFuR9lDYXWYrpd4FaHUxT3vqvl1xcghx8=;
        b=PfbiHAccH08Qd+6PMsnCNDHTzMVEwYlcgpqbExtDlmBi+oFblCVIx9oV9ljF2J4zW3
         YsCkru8EHEgtEkFTvtuqL7ssg1RolVMomeRB4Ro9dNGSphnUp/M6+TUz1ukISRhe+ZSR
         I/boKFe0FtMQ4HtjiywMupeN4nT5F/+BG6nhkip3VwP/Vr66IrCfP39eNBiw17aRe7bD
         9Xai841OKYp/t4DvjyIdUTYOgK+eg9XydxVdJaREfJC0lIpdrYcFkDY402LJsx8o470e
         g2e7xakZeNN/7jfMmkUp3rn5L1BmHh+1crulfonwgUW5kUxqmBdkYWxXw6cWQswTX5iY
         cTTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CDdGyScp;
       spf=pass (google.com: domain of 33pv5yawkalkrzlhsnkuzmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=33PV5YAwKALkrZlhsnkuZmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qaQbivxXWkTFuR9lDYXWYrpd4FaHUxT3vqvl1xcghx8=;
        b=VG6zjqEoAkYzYu5AGcBJsAa8x1dYnVNfwt48yLVI5HIcnM6FF/qBZ18QiN8aRcJXec
         Q97sWrxQFmkM2Rk6YDeombhv6wiGHwkj5wXrLp8iDVtw4szie5bUpy19Ey/e2Qvw+RGD
         7G/U4kkh3VXiDv8UFfWLI0Tg892tfaD6yKI1Rn0fsFb95U+XJ578FyECJ/2SpMhI5Sp2
         wpvVT4pB4W9XMUrIIX9oYtUDTNZHkdCFloxUlVraYEJIK5Ll/2evc90OT+iRYjte7iqr
         nU+ZdpNLHAr4JSkaEgOpoOpMeCmh97iKgA7m0nEUhP1rcqSAsHv+Kja1tbSJKSjRJepy
         gmcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qaQbivxXWkTFuR9lDYXWYrpd4FaHUxT3vqvl1xcghx8=;
        b=f01r9JQtOn+o6j700NCJSS2gSYMyudD46ib/j6L+eb36NTZ4bc5Yl572eCYI/0BiK7
         tqAdwk47i+7cp+5VeqGgroaOlAvpSiJl/d9RmIe7fsK0fhksl2Tku8pISoWNROkm1Avb
         g6nu9ieOw+egXsPA8+r6DphVpbHtRnZUuFjRsQeffI4uQ32DPE9P2SFairG1nSh9Wb/L
         sscrPUMiWY7uZevEkZIBF/ZWPfPZX6JoVnJTbhXBJOruzxNC9ZAsm4178bDmZWmQL+Kr
         9fk2767DikOo/27pCUQbFrlBlOnU4x6OUevuR5G5gZRSfh0pxB6QbJ6qZ0V8ioDE9DWE
         z0Uw==
X-Gm-Message-State: AOAM533fVIciNK60lrWoA0RJYp5Dii2io2lVO1TmzbqyQzfA2ovjC2pf
	vAPnucjDEzWZZNV4JHQ24ZA=
X-Google-Smtp-Source: ABdhPJx2cx29F0uhE4G9ooYNJK1bqNzUQO2fopPmUWoZNH/r4DMo/sdhcEuxb8J8Z6PZC/1pAUJ1bA==
X-Received: by 2002:a25:2d6d:: with SMTP id s45mr1351939ybe.43.1618605533246;
        Fri, 16 Apr 2021 13:38:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1342:: with SMTP id 63ls4946415ybt.8.gmail; Fri, 16 Apr
 2021 13:38:52 -0700 (PDT)
X-Received: by 2002:a25:4110:: with SMTP id o16mr1350268yba.151.1618605532801;
        Fri, 16 Apr 2021 13:38:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618605532; cv=none;
        d=google.com; s=arc-20160816;
        b=aNSxafJ8Ao5t7djj1aIDNleJaBfhab1WF514GRsHDli02hPW82ephPKyegPKI1XD4U
         dLKvy+SuA3LRmHTLKAxDEdqUeJavnOKNb+xCCq4enDhsOtvJDabMBhUJtkLFWTysAJAT
         X0oOrOt9ahDbeCw5lQ1dWlIzqOeAt9K2EeaLZU/bK29p22biseC8kDl325ITH6vtI/Np
         rapFSh55OVkk3++oX/RELOOqhsChNz5Z8J1tMbRWj9q11pEm9doKqb2bhXzHke6gQm3A
         J8fHLocOmXf9+h9Gp5T0l2GK6QXqDc4AxqL3OdcC4nbZ/8uhZYWarNTGCQysMfP1ab1l
         n2xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=2V8QAsj+Z02Kd4LR0nXDnyyqH7VtGeWLcnKeL+XD35A=;
        b=yrPmG7jnVI0mYn91+du51843ofXQBJEzvhQu8hA5BWsVsCxqGtI+voXirtVgcNKmXa
         /5xdKM/Mi1cjXRFbws8nSU/eZ/LiV1xGq0Xr3ZPeZBmJVRFWrViQtb5neWMwkMAwkyAp
         zPg7B82otrNqwM3B2CVtQOlQERkGjmu179cqg/DQX6sf32aSXFOTHzxdESlm/KqODja+
         JSw2cvzCQ2tGtN2I+KcD+hQwM3m2YxjvCr91FJ46huHgiWWhQ5NfTrMYhiEgsd6WUVFf
         AFSlsAHp2QdXd2+GR87zLjIosP5iqM2/l6txoNDKZ5IXkpLxQaDBwDAfsJ95NExhgEFR
         Mn8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CDdGyScp;
       spf=pass (google.com: domain of 33pv5yawkalkrzlhsnkuzmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=33PV5YAwKALkrZlhsnkuZmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id f13si174281ybp.0.2021.04.16.13.38.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 13:38:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of 33pv5yawkalkrzlhsnkuzmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id y10-20020a05622a004ab029019d4ad3437cso6793987qtw.12
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 13:38:52 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:e262:3d8e:cbf:6164])
 (user=samitolvanen job=sendgmr) by 2002:a0c:d80a:: with SMTP id
 h10mr10443081qvj.25.1618605532443; Fri, 16 Apr 2021 13:38:52 -0700 (PDT)
Date: Fri, 16 Apr 2021 13:38:32 -0700
In-Reply-To: <20210416203844.3803177-1-samitolvanen@google.com>
Message-Id: <20210416203844.3803177-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 03/15] objtool: Add ASM_STACK_FRAME_NON_STANDARD
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CDdGyScp;       spf=pass
 (google.com: domain of 33pv5yawkalkrzlhsnkuzmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=33PV5YAwKALkrZlhsnkuZmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

To use the STACK_FRAME_NON_STANDARD macro for a static symbol
defined in inline assembly, we need a C declaration that implies
global visibility. This type mismatch confuses the compiler with
CONFIG_CFI_CLANG. This change adds an inline assembly version of
the macro to avoid the issue.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 include/linux/objtool.h       | 5 +++++
 tools/include/linux/objtool.h | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/include/linux/objtool.h b/include/linux/objtool.h
index 7e72d975cb76..2f29ce48ab5f 100644
--- a/include/linux/objtool.h
+++ b/include/linux/objtool.h
@@ -66,6 +66,11 @@ struct unwind_hint {
 	static void __used __section(".discard.func_stack_frame_non_standard") \
 		*__func_stack_frame_non_standard_##func = func
 
+#define ASM_STACK_FRAME_NON_STANDARD(func)				\
+	".pushsection .discard.func_stack_frame_non_standard, \"aw\"\n"	\
+	".long " __stringify(func) " - .\n"				\
+	".popsection\n"
+
 #else /* __ASSEMBLY__ */
 
 /*
diff --git a/tools/include/linux/objtool.h b/tools/include/linux/objtool.h
index 7e72d975cb76..2f29ce48ab5f 100644
--- a/tools/include/linux/objtool.h
+++ b/tools/include/linux/objtool.h
@@ -66,6 +66,11 @@ struct unwind_hint {
 	static void __used __section(".discard.func_stack_frame_non_standard") \
 		*__func_stack_frame_non_standard_##func = func
 
+#define ASM_STACK_FRAME_NON_STANDARD(func)				\
+	".pushsection .discard.func_stack_frame_non_standard, \"aw\"\n"	\
+	".long " __stringify(func) " - .\n"				\
+	".popsection\n"
+
 #else /* __ASSEMBLY__ */
 
 /*
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416203844.3803177-4-samitolvanen%40google.com.
