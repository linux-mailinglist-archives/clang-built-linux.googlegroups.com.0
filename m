Return-Path: <clang-built-linux+bncBC2ORX645YPRB2NKST5QKGQEFLGG22Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D2C27065C
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:38 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id f8sf5561238iow.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460137; cv=pass;
        d=google.com; s=arc-20160816;
        b=0EtrZMvPzMXnxIqfAg3FIFsB3B8XJGw2jRWxsihlHGyC6sde4hUX8UEfkVUQBREvQu
         mpiVVa8HPJ0DdoPIU6nX5wFcQMADzN/vY4tQIyi2iHjZmS5Aa2QIE8nj946rAGZKkJzR
         O05APB5djzY/b84ZR85YuUByUHDgHzOOJ7M1r5a3pFlXQXNYhTytnhsgmzl5fghYx0Vm
         g3qmxvxXRsYKyifAzWJBmhWMiWlWt2G7MKRiJo0zVzBmlQu9GUwKRVkRPmsRU2MqbROl
         1ROae8VZgs5K5mbvaIwYnk5G8kiPid3B1nBux8+BDkFp4WF9PM9qbxVWR2ROo34jXaEp
         rxvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=BFziYBwzLTNH4V3y0cKK/wSHCiiGJmUbuz6ouIhntgw=;
        b=UxVL4AKhqmilgOtNIp8g0UZXDojveR8K6VXjrfDk70/XjfL8Yp92h2FWxKFS6bWeWK
         EES11hm+WwqLlChVAifwfTV9eHsn9EG3paiQ2k01ljSY94TvVxRfuiFVoGTtRUyznnNh
         nhRCc3J3kUKccWOoHb+ZwplaAxJ8FuRavqHpS/zZQbQ3KyOQ5Uv8IIgaHDTFjTq45xr8
         DX6mmCLjzc6GrlPYcmVuXftZw/T0BQFpK9emFqyC6/pzfA0zhMkj/vIlx+oWgTUd8yq9
         /PHnZApDgloFpDX/Db43P2BoT3mIsYX09nrmpBGNJU7sb41fhaGck5sy96lPA6IjkSfI
         L3Fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ObhRsoWs;
       spf=pass (google.com: domain of 3abvlxwwkackxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3aBVlXwwKACkXFRNYTQaFSJSLTTLQJ.HTR@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BFziYBwzLTNH4V3y0cKK/wSHCiiGJmUbuz6ouIhntgw=;
        b=kDy/UKETkv9b6UWYY9e14q2+ytMoX5Sbykv3k0ZOe2nkGmPidQHoH51licW5kNiFZP
         A9nx0iI+HPtzpVZgiWfzhwrsyOptZZXJ9oerrXWE3L7wq+X130+bYCLEatq84JFWBVh9
         VOa2w9kjLHaYlid9VcHkDGWjthDBU0j6RifEo2F7M1Q2MstmnWBn29K3K4YjaZvi/gHJ
         mGmhl49IAzTChDkeCIwkDM8ME+8gCuNeXCASNjWbeIf0qCt/F3aUH0J5NdZ/0qsY4Erh
         jCA6iriy6+JUD1sCE+CqSKI91IBWtyKiVwOxs+76BOf/yPWId5X9ThOSLZ3i4nOb+1Se
         1uyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BFziYBwzLTNH4V3y0cKK/wSHCiiGJmUbuz6ouIhntgw=;
        b=XAmeY8e/EeJtZmSZew6XimYu39IvMVx6fromIi/ShLsGIKP3BtzovPb41vVOFzeEgn
         /6XzTwmtVPjC8t/BHZxtfd+RK4GJK5NIXGEjGX1/eoEFrhMIGsFZepUb8MZFjbYtctAt
         QMPa8ZgiUP7CMt7ZyCA6I/+NRHjublFdE+8ikbsu8zSR8cfs3IKj6dvLMYmh6AE41E3A
         NvHJzTo0Bw/DwJtvU4lTnEONAIMuw+lL1k75G7utVskMSDq2UNA2KdRJ+0N4VYnpMKph
         ZOQ+WOa4gQilmpxBzsyPPorORtm/Fp+9h+9InJdaHwD2gbcQm0jSES/zSoqOysf5f6us
         qQTQ==
X-Gm-Message-State: AOAM531HkHeZqk0mogsDBYcHzKoizr299daF8hpiJCSmuEF6VRicthA6
	qijqjDIlib8mCM0XqD502vQ=
X-Google-Smtp-Source: ABdhPJx2k8M9f7ci5X5TvNxz9W1GJA+lfLkDp53My8MDycXRrPVEa8eKrNS3SJNO9LsgfRLn7aT+mw==
X-Received: by 2002:a5e:c00f:: with SMTP id u15mr28333335iol.6.1600460137640;
        Fri, 18 Sep 2020 13:15:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:4893:: with SMTP id j19ls490421ilg.4.gmail; Fri, 18 Sep
 2020 13:15:37 -0700 (PDT)
X-Received: by 2002:a92:3209:: with SMTP id z9mr28975842ile.126.1600460137219;
        Fri, 18 Sep 2020 13:15:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460137; cv=none;
        d=google.com; s=arc-20160816;
        b=EQ05cxF4KfdjLx6h7oZlzzEvcfWfGcyvuZsMNdQsXU9I7UV43CoTI4gO7gJ7mspcKc
         LxQ8KIfHsyPl9a0rtVNW8rivpUvAPzYKlICJH9bh9+OrET/Q2gPKMCG32fLadyJh5wSl
         S+naZ5j2Ku8mW/P2E1Agm7Ga94AMrQmWWYRBQAQ6wIaDsy+Yg7L3CdMReu9BUOqbHgp2
         fLDmiTT7q74a4OdyZIVeTC9Gz1Zjzx207iiXLWbG0lxBRVgFQzsUY7sLDBwKb7YhgaOx
         5gk3I3bWI9Oo8Rdw70+03mCASEwRUS5yvTFKohGCDyp30MCxsX1IET4YRLn4Ns572og/
         veGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=/0ldiyB2nVfkSW+Z4ZqugZ1I2eeQ0sdYMfFHH6J6dWM=;
        b=HpZbJvYPH0TNnmGZ4gnYcKNwR2O/+xeNWqiPXduKQxK0OlXLnLw/059SAgnqkDVuBV
         ZuFgeqvJNCpuR2lwkXpjmMgoHvcUNQwCB+oEti/N3bsZzrg4SaG/9RrcIN3XfRqFVk3w
         u8fmB6WcYMlf/g7lzbfciXS3qXw77hb3Iwj3LuYQCCZufPhb+KPzT/r1Gg3YJtA0drLm
         smz/C3jpcF36NW/RtM172B06wiBv+JDe62kRZBO9uAZm5lOhHA5x2AEOufpkvpKJRomi
         p+4xwqWExtuFgt9Ne7zhDL7rlzE1UyqlX9EJEH76B1gzIfm/lt6kuhUl5y0ky4Bptz+7
         NYPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ObhRsoWs;
       spf=pass (google.com: domain of 3abvlxwwkackxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3aBVlXwwKACkXFRNYTQaFSJSLTTLQJ.HTR@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id a13si299128ios.2.2020.09.18.13.15.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3abvlxwwkackxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id a26so6068351qtb.16
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:37 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:8b02:: with SMTP id
 q2mr19161266qva.48.1600460136604; Fri, 18 Sep 2020 13:15:36 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:30 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-25-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 24/30] arm64: export CC_USING_PATCHABLE_FUNCTION_ENTRY
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ObhRsoWs;       spf=pass
 (google.com: domain of 3abvlxwwkackxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3aBVlXwwKACkXFRNYTQaFSJSLTTLQJ.HTR@flex--samitolvanen.bounces.google.com;
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

Since arm64 does not use -pg in CC_FLAGS_FTRACE with
DYNAMIC_FTRACE_WITH_REGS, skip running recordmcount by
exporting CC_USING_PATCHABLE_FUNCTION_ENTRY.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 4e8bb73359c8..57b875099b17 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -123,6 +123,7 @@ CHECKFLAGS	+= -D__aarch64__
 ifeq ($(CONFIG_DYNAMIC_FTRACE_WITH_REGS),y)
   KBUILD_CPPFLAGS += -DCC_USING_PATCHABLE_FUNCTION_ENTRY
   CC_FLAGS_FTRACE := -fpatchable-function-entry=2
+  export CC_USING_PATCHABLE_FUNCTION_ENTRY := 1
 endif
 
 # Default value
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-25-samitolvanen%40google.com.
