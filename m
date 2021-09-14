Return-Path: <clang-built-linux+bncBC2ORX645YPRBRHHQOFAMGQECLCX4JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 005F340B788
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:11:02 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id u23-20020acaab17000000b0026857819b52sf243778oie.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:11:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631646661; cv=pass;
        d=google.com; s=arc-20160816;
        b=oJPz5YOibSsP+hU939+ozXLBI+4pSOgBOd28x/Aj8DKIFSjL2tQEXl7bB9RDR2Y3MN
         vH2xRslI1kfiQVih0Ga/CXCfEqPOMqBDWgaGt7rutsiFkJjKU73XL2+x5mNaqX/aOrcF
         us2E9Vj0mNNbJWxZQI+Dddd1DX7mbVfcs4wLCUjf2W85zpsA2POtQi4yQuVcUXGkzKdW
         kc/zikkgF6CeK2zaVMhag+S8mi1yRCEPizYx1461HJrdj52kjVastskbjiO3/UYgq6vT
         BLGiu9Mt3BCrp+8V0lZu3vjGiWcwAEPa0RXT3hluT8z2wm/v+5tlIM74lP4HYbuo8W2S
         uCCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=7SbdBlXUjEsmc6nes7lcye8u6qqkloNFLj+o/0p6QRM=;
        b=rYRuGurMuuJQj2L01a9Lt+E75ahHoNd1xlCeOFFJEzB09+vqdp8W/gl2ZQS4HND7wf
         TWRsSiNGvfMhVMkd4dwbR/Ucnxt9Ch7iIUhx7zBDS6Id1RWWu/jAasudZC73RquFcV/X
         Xj/TdUuwyVt63yk4y8GKclwsZCz05n2oDPvrY3ltMd3j48WLmfW6V1T074if6S69DvLK
         mEda9sXHyJ/v1RJKKX3A3DNxZG/3E6Mz7jt8kzGshIFFKLDF/MKVY2NY5lrIFDfBVgI2
         Lnn26cb/hS+pdElOokLdmi/v1mkqTM+MHVqbSeTPHmJcJPB9zjhTs3OnSIzlcHRpu5zV
         Yu6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="Pf/yJENm";
       spf=pass (google.com: domain of 3xpnayqwkal8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3xPNAYQwKAL8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7SbdBlXUjEsmc6nes7lcye8u6qqkloNFLj+o/0p6QRM=;
        b=tBVokSyDHgGVuwBCqgLvXaJYIFxGBR/hB3SYQZVvF4OnhWMGO/3k2RVGGCDEt0+VgH
         EPaQHibVEyAhnZgEO8UXwNr/fv6i7sELTZ8DMMPS05q5+GkMuPWK/GyBLnQ6vZ9mAcDY
         n1PrJkVFExMdlMUR/KsLsh59RwIlYerFNbM9III3na/z4QmY5UTfnUSTAaXjSTuFpoEl
         4b2xo4ifP8cogCbW6mVMmr46DYQKHQJc5ZCi71LB3wJR7q/lbH0mb3Hjq5HeoqQ/Lbjm
         LMjzazpWxxu/fdM2GrJAJ4Fd0+ZzVDzuJYwp6wE0W7Lsy8vCHrJAHNLCtxsxRZSV7vzp
         NqcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7SbdBlXUjEsmc6nes7lcye8u6qqkloNFLj+o/0p6QRM=;
        b=yjnjapjCKaODbU3N5EB2yyg/d1rMqXfLYZm6H+fhXbFt3F7BbhsMe5HhiCZZGxVoaY
         9QIBRd9a5YdzFNrgsqONEf7aUzGcLp4l/MnADHNNchQbH6pnzx+w5pBix+OwsAx6o1/C
         13v+QJ0prV1PVEM/RRc1CfhuBlYYCbqHsKG18caj08zuccuzOEKpAik+Yqk3Oht+1A24
         M6spBXxHPZ8Wr6cdWiRo8OQJ5Oot31Ip2g1oYxttSznTz5lV9sAEuQX5dcAauaFo4iGK
         ZiJTTiPZfcoYfKwfnw3+uq3JiB60U1bc8cUGKMndpRv66c0c5SPbdlQrJWLCXYKLBV0+
         r9tw==
X-Gm-Message-State: AOAM530zYxW1H+lop0oyTy503i5c6Iy8/8renYYIkPE3U50xE/yoZrnI
	xZu+r99VERLLgZK2giPp/iY=
X-Google-Smtp-Source: ABdhPJwjZLOv3H/Oicpvn1gjx1sPW4p1CuNwqaf/SWgHpxc3kobdPan43XtLH2Go4TTooo1aBzPrVw==
X-Received: by 2002:a05:6820:502:: with SMTP id m2mr15625262ooj.47.1631646660991;
        Tue, 14 Sep 2021 12:11:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:62c9:: with SMTP id z9ls3445537otk.6.gmail; Tue, 14 Sep
 2021 12:11:00 -0700 (PDT)
X-Received: by 2002:a9d:718a:: with SMTP id o10mr15884773otj.376.1631646660591;
        Tue, 14 Sep 2021 12:11:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631646660; cv=none;
        d=google.com; s=arc-20160816;
        b=hkgEn3zSpFlZ9rv4a6E3gGJe9H/HkXlXL0PbkBX7z98OJnbdAg7yxeCKemCNSgDxGh
         bE8rPEl6+EoEtAlI0vDD3meQYeAIwYBoUhNTUcUhQ5+GLH4t8+YwH/BR667bo75ctmdz
         ljj8NWiX5zG0t0Ae4But99z/H80QVmWmEo6UoykJoS76bys4B33Rf62hIGOiNUHKuVW9
         gT7fGbDJVZ50cx621QuzkpNZmRlJqw4suoGbgX7D+NhGWJd+jSiUq02OvVrkMXzoht0M
         5d2kzCR4VUjTTOz+bWdd1weJZAkLlBHQvPNl48bRG0x4qB/OtzoE+QYmqPgZp6Bl08MF
         03yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=l9mJIyUqootgRNTBiBt+8dXdqm6+1gSNLr/rJAR02zA=;
        b=CBA6MQkJFKVMiewPfrQSw+QAIP8J6fZL7slITiFl1vUlGczjZQHkAOjHgxHfZO+6tO
         fg0xEqgaQ2JlYV51UvkmGfH0NdEwiRyLK7vDrgZ+bTmuUX2lKsWHvUQNoCb4vjGO6EIb
         6TXh3RVZytfTdJSkX9mMp2eSEBkLZ9347M176plaTN9tay8ViKi65Xu0Dgm4t+keIHCe
         D0iKDvE+6dbsXfeg40fgfzrkq1v255MB5glbWLTWVjIoPq2rCR1wnEg+tESjyNaiMT7E
         C15JEyBmUu9X5usjv4kStG9fgNxTrysFWn1MUGLQvhBgZbewpqHJs7S8L9WWCHpae9QU
         MZyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="Pf/yJENm";
       spf=pass (google.com: domain of 3xpnayqwkal8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3xPNAYQwKAL8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id d24si970354ote.2.2021.09.14.12.11.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:11:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xpnayqwkal8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id 62-20020a3706410000b02903d2cdd9acf0so630135qkg.21
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:11:00 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:d19c:5902:49bb:c41])
 (user=samitolvanen job=sendgmr) by 2002:a0c:ab08:: with SMTP id
 h8mr7159579qvb.41.1631646660085; Tue, 14 Sep 2021 12:11:00 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:10:34 -0700
In-Reply-To: <20210914191045.2234020-1-samitolvanen@google.com>
Message-Id: <20210914191045.2234020-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v3 05/16] tracepoint: Exclude tp_stub_func from CFI checking
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
 header.i=@google.com header.s=20210112 header.b="Pf/yJENm";       spf=pass
 (google.com: domain of 3xpnayqwkal8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3xPNAYQwKAL8xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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

If allocate_probes fails, func_remove replaces the old function
with a pointer to tp_stub_func, which is called using a mismatching
function pointer that's will always trip indirect call checks with
CONFIG_CFI_CLANG. Use DEFINE_CFI_IMMEDATE_RETURN_STUB to define
tp_stub_func to allow it to pass CFI checking.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 kernel/tracepoint.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/kernel/tracepoint.c b/kernel/tracepoint.c
index 64ea283f2f86..58acc7d86c3f 100644
--- a/kernel/tracepoint.c
+++ b/kernel/tracepoint.c
@@ -99,10 +99,7 @@ struct tp_probes {
 };
 
 /* Called in removal of a func but failed to allocate a new tp_funcs */
-static void tp_stub_func(void)
-{
-	return;
-}
+static DEFINE_CFI_IMMEDIATE_RETURN_STUB(tp_stub_func);
 
 static inline void *allocate_probes(int count)
 {
-- 
2.33.0.309.g3052b89438-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210914191045.2234020-6-samitolvanen%40google.com.
