Return-Path: <clang-built-linux+bncBC2ORX645YPRB2XL46BQMGQENTNRZII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F10362979
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 22:39:07 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id z25-20020a05660200d9b02903de90ff885fsf5164662ioe.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 13:39:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618605547; cv=pass;
        d=google.com; s=arc-20160816;
        b=llO2aBEuoKg+b1hoFOIS4LYX6hmntpp7Ps+7ApnEBYKxH4XRSaa01m71v27cMIjS5o
         iUuIaowWnjmA5oSHSiZ0fnRRw/6RMvhwDnz9st5pkjNMdDh94WpH65NHIFMv8/37+7fw
         1LMLhtUvBk/AEbDsL0uZoSIBjFHFvfykBNR0JeSptlhJ7/WZbXak2qpT2n7Zrj7NvUgI
         l5SZUxQqGSi7N7nPGEqnCL+9kL502dnDLHGUeClEMZqpdyZ/jXo3F7bGPmVnB6DgyDoP
         eGRVYSIDVw6JlRJG4l+OVD06Wt5r3KVWu4F1wBHx5iJHQ5oGpaq8mwDo7NswU+LGZAvk
         6mAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=iPRjg9n90rl5jJJ+NXVcuDDKZN7kVHxYlOExL38sUfc=;
        b=lRmBoCHUIl+zhTZ9/FpTmq1f20GRk/wFAiuVGkK1QqWT+qvkABgeETdZWLBprb7MAs
         WAXLS6iqDqBZzNFSPvbbDxjjaJ6MGf+fcr9g+yGXPZlrtgGto9ASkw2tOf7GUBdIcws5
         Pbe/+YZv9CywpNa+uh1a6CZyJ02epIGrWKVtbgwlQZMzPxx8wNuQ/lxGpIbySjewjiHE
         u4wpQ0QJaO13/8dNll/0gJ2YGMvhjpXObNzLRbAgWMs5GZMnmgD2TxefGeOgVWoumvcl
         twSnhnfsS0tkQLi1iDrqWYnGfAlyvYeez6GpEo4niYyVRs/vPU9PmWF789N/1XDk7edP
         b3TA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F374P8++;
       spf=pass (google.com: domain of 36fv5yawkamy4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=36fV5YAwKAMY4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iPRjg9n90rl5jJJ+NXVcuDDKZN7kVHxYlOExL38sUfc=;
        b=p8FrqjjekzTB4JyoeMxkQt/0tK8DncL0eKAMSHVTno3YBEulVqMPeIjFssC/3pw3mx
         cLFaZbQUHfnmkF4nmLTKh+tFRaEWzQmWu+H2H1mrPQtkTkwOrzkcgj1qGSYLjjYDWWoE
         BuATcThZLN/QQybbJ+o/Aidpi2CbHU9VYTpRrsQToZNz0tYWCUp/dx2+wAI/ramvTzGO
         gaqDaDgQiopleGS4zd4UUYsO0nVtnZO4eR4PvMoUpI8Byv0XYeoIRWgOa4rcj2nTJ4oa
         qR2grUheRkTXors6S8voyugZuFDxqd/jFaCworaHeB/jL6LwLdPV8ayn0zI0xrOVPtMi
         sN+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iPRjg9n90rl5jJJ+NXVcuDDKZN7kVHxYlOExL38sUfc=;
        b=RgsJJba/+WRvGiM995SW0qWW/Vfhnh4XKSR4aYxvBGAaFuBuezP/ljBACq9rbAKxbi
         yVn9f32fR7haMHwzy5+s2vBY1oFuwspCJJ3GDR9VF6X+AZ0WqsvcC4T/bFUYwAVwo4WJ
         oUEciCdWgQz66gTPUW/Tlp4vavH5lrRxPCVib6Emjodl5NycIixM5xmqfW/umRrhWU5B
         jyxsiEvk6x8Etf8db766mzRaGg5GLDxCMp2kkEnPYLYKYuAA0PAwMmnk3mjbUlgoMoeJ
         eeyExIdG8LAjGOIOBiJUSrnEl3uSvvg9ecBulPkvZ9i3Gko6fW12Ao+CGRC+JalDRwTS
         M0sw==
X-Gm-Message-State: AOAM532jlGHra4LjneooUCzGG8Y3k+LpQRCJb3US/1BHD/GR6pZ/NCjb
	q6VUnjvPnBnn7owPAo3U2AU=
X-Google-Smtp-Source: ABdhPJxONvvu9zydtT8Sp/z6cWCsEmlSN2mNG3OxMEMyIbGJG9iW4T+W9o0O/paUNUTAHa8JhbnT9g==
X-Received: by 2002:a02:918d:: with SMTP id p13mr5799075jag.51.1618605546933;
        Fri, 16 Apr 2021 13:39:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:310:: with SMTP id w16ls1524919jap.0.gmail; Fri, 16
 Apr 2021 13:39:06 -0700 (PDT)
X-Received: by 2002:a05:6638:34a0:: with SMTP id t32mr5764570jal.10.1618605546537;
        Fri, 16 Apr 2021 13:39:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618605546; cv=none;
        d=google.com; s=arc-20160816;
        b=tGV2A7iJxpahYeInZMl3expsiCs4I2nJNsYJVKXFxOUDIQA1O8P4wvkQO38czgjbE/
         pUzmNt6uaGu118aPTTskvgaW/vHIQIEeeQZB8V0+GodjeAgBWSHgSC9KVXxxqTQlzGcT
         QD7no9p+jpJr+26WGB16DTCyHBbddLF7TyR7VXgeQxX+qyCUG2GIMfQD+Ity6d40E0JU
         BOD3jum38fymIzEKDz0t3URo1IPXKoDKpJNGh/YcjsjHhzYcBncG8FcFuqxbUDRvKyoq
         lor5m0dkVth+S6rX9y+j1qpEXlUQwo7fDgsH5OzzKcRtxOQIZlhH6Ik9uVo7aOogMZko
         kyCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=3kLlLNgA4/UR3gGgysL5O/QEoIGDVBy6cBdyLqywCPE=;
        b=aPNC8dKCIbFYEsCWus2+kBdNkhJe1QoVwzIS5/YS2gp4Of+3JmQRCHP5UpRvMPcPHK
         Iakx8y+fZ+Un9oKt+W0jnFGjolykq5xmhZSsPUlLKdZpAkRnH4n9Yb/rdo5nCp/H6151
         K08Hc1nkiM8fe2dZOArSXFz0wcQd1IG2TtRBacLgY51tNTGM00ZJpb9QxwlwFrh5b8QE
         QK523aS+/uKsl8/etaVE6H3QOrQiptp0aD2zrMaSAmw5LraVJsZGQc2sW0dDkHfBsOXC
         T32KRGqExZYtQE/T4zW4J0sMTj4wJvY7BoX5dZ2XCCTmT2GfJ2+2u8yOXk2YzR61wGqe
         1omQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F374P8++;
       spf=pass (google.com: domain of 36fv5yawkamy4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=36fV5YAwKAMY4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id r15si390659ill.3.2021.04.16.13.39.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 13:39:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of 36fv5yawkamy4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id o15-20020ac872cf0000b02901b358afcd96so6770606qtp.1
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 13:39:06 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:e262:3d8e:cbf:6164])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:224b:: with SMTP id
 c11mr3729106qvc.44.1618605545980; Fri, 16 Apr 2021 13:39:05 -0700 (PDT)
Date: Fri, 16 Apr 2021 13:38:39 -0700
In-Reply-To: <20210416203844.3803177-1-samitolvanen@google.com>
Message-Id: <20210416203844.3803177-11-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 10/15] x86/purgatory: Disable CFI
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
 header.i=@google.com header.s=20161025 header.b=F374P8++;       spf=pass
 (google.com: domain of 36fv5yawkamy4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=36fV5YAwKAMY4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
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

Disable CONFIG_CFI_CLANG for the stand-alone purgatory.ro.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/purgatory/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
index 95ea17a9d20c..ed46ad780130 100644
--- a/arch/x86/purgatory/Makefile
+++ b/arch/x86/purgatory/Makefile
@@ -31,7 +31,7 @@ KCOV_INSTRUMENT := n
 # These are adjustments to the compiler flags used for objects that
 # make up the standalone purgatory.ro
 
-PURGATORY_CFLAGS_REMOVE := -mcmodel=kernel
+PURGATORY_CFLAGS_REMOVE := -mcmodel=kernel $(CC_FLAGS_CFI)
 PURGATORY_CFLAGS := -mcmodel=large -ffreestanding -fno-zero-initialized-in-bss -g0
 PURGATORY_CFLAGS += $(DISABLE_STACKLEAK_PLUGIN) -DDISABLE_BRANCH_PROFILING
 PURGATORY_CFLAGS += -fno-stack-protector
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416203844.3803177-11-samitolvanen%40google.com.
