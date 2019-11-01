Return-Path: <clang-built-linux+bncBC2ORX645YPRBVW36LWQKGQEIGJHFWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F6AECB07
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:12:40 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id c21sf7160143plz.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:12:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646359; cv=pass;
        d=google.com; s=arc-20160816;
        b=zd5iE9R0Nh40/wmtQ0m/5AiJo9YCVSjwJ4vX71LtLkGuYmpwZ13G14mehbUNnCrmaq
         /4HORd+GyopfcOy2gSHUvUlTLcE+u6mk429zVAqwnc55FicGT3FRaUDrXl12SJPKXqw1
         XoW5KPuYCRqBy/Ldbcjdp/Ovqnp3HqIksty16Tk/udFDxl5n/gKLkq7lb031zbI94loS
         FjabyPiPGB5VsKtbrjvOZdC8TsOOEhkiad9pHCVk5ajVM1V2bZ5W1kszm5MR3wJ05Mdv
         Goty0vrai0SCI5wWoskblcaLnWgGkx4XVpG65UQo0lHt9p1wFFqU33UhAQVWIDUEGnys
         Cs5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=dO39czsRfQNhNGhmV1qy52mfOGWDmWxC/vQR4cw1TKU=;
        b=QYcu+3XFq63TwDVyAjHuttEBhD/h6v6vir0QDZtsdH53zFoMAw6HYnGjzWXp+Ay/t+
         xpTMDAaDEK4wbrAtogKq3wGrkJORqx6q5dVWn2gWRWeCVeZ0MQ8RtpHT7QAZb1RuAeyF
         OCmcYf9fGfIzP4biYF5Jb5T0sSSzGEeD4K+LLcr1ykV/sBVFc81/6ZLI5KCH2DJPjX1D
         qIRNUdMKT9614mqRHxmGq454uceu02C81KyLr75kuGWN/YDYVwr0YqNE+YhW2j8ghhWP
         1l4JOAk3RW9hb5YNjaWGY7WIcsMrfbM0BxrS9H8F7Uj2NjIi0Pvx4iKwizvvD5B5VfuM
         bzFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jD7UphcO;
       spf=pass (google.com: domain of 31a28xqwkabggya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=31a28XQwKABgGyA6HC9JyB2B4CC492.0CA@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dO39czsRfQNhNGhmV1qy52mfOGWDmWxC/vQR4cw1TKU=;
        b=LtDsED8kB1ZTbO+Jn2E87xvPPQtlB1/F5ZKHtxMka4tTLdXGvOP8eY6wHcmzWbWWAU
         /IC6bJS0E1uATirPAn0GllGq4kiD1FthQfmSpZhf+4YvB7Q5py4Y3YTmO5sV1KXXdxO5
         S7s8aWDr381oh8gL6XU55h5SXGx+NJ+okPqI/rXHDA33uPo8D53yMzDeyvFQT4NeH2We
         sLQnq0ERR989hyATv407qZLL2hmxVjn76APnLb8IkbPwYupmBfmL93huUuM0ypWY2Amk
         pyaBEyRL+cubKC4SjvekS+DS20edaMtlZ3A9+4KEGQlWBxzPMgwGBB00/QiMEiE4t0X6
         mBiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dO39czsRfQNhNGhmV1qy52mfOGWDmWxC/vQR4cw1TKU=;
        b=tYWnjWCGtrHOJ3k84hHERR46Vc0Aw5kHau8sFVedEwfYnfwXgX2GZz8ZdtPATU9bmc
         GzZha6bQJwDEeDA5WPiYND6t6kjTGA6CMnO2a/nYVbqp26dHLgnXThbrSzlO0bmWIveR
         2/W2Ce6X7AoSuvlFPXUcFMmz1FpAf1gQntRGXxBqLL9HyGGnmNwWuMiKSQweLZklKBD8
         7owwP/M057IUElAmdFSE0a1zP89P/tS4L3BGtPnHCpieusx3OK8wJw6QBLLDoafGqGt1
         tNxO+n6B0e6wvPY/PRyrWbIqgkjnrY+ZZaMfRf43rn33bVo4ryFBlcUI374/AeXXXT56
         2z1w==
X-Gm-Message-State: APjAAAU0GJiEucrJm+AgADAmnJHC+PRwXn7xeVXITiX2lUcGOhy4sOhS
	cIZCnzeB9v97vmaj34n4vro=
X-Google-Smtp-Source: APXvYqwgdpgMpuaAokGVrt6NGTrrMqUw/b5kleWBLdBSFRjv8YzbDR+yzNo1bp/gkYosG0aqLA33fA==
X-Received: by 2002:a17:90a:71cc:: with SMTP id m12mr18249138pjs.10.1572646358860;
        Fri, 01 Nov 2019 15:12:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:850e:: with SMTP id v14ls1948608pfn.1.gmail; Fri, 01 Nov
 2019 15:12:38 -0700 (PDT)
X-Received: by 2002:a63:de53:: with SMTP id y19mr16301650pgi.412.1572646358403;
        Fri, 01 Nov 2019 15:12:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646358; cv=none;
        d=google.com; s=arc-20160816;
        b=I+1A0aVPs9vPO9rANGzcFrM40bt3N4X87zoVS3x4+R91l4NcgId5vlNCErHLaQyzmo
         usCG+WMHdje4m4iEs4yOO/KXfi6b3eUfoL1hyuyuxpYWVaExaC8u1F174/rVK131izPO
         TEe3gyy/y/vkQyO99vpKjMd5hPpw1hFOgvTK17mZascpxVmZo74R5Ec5mEZdyUEhMTL8
         6NC+ROYQig0/ZoPgXbcFulc1qo82yLYIAsHcv+3edeqRhL+jMcCwzwLsiG2Bc3mqcRII
         Vr3J8eATYcV52nHveSdwTV0cRfsY9WDvfJkYSHNEmQmUouh3nZrX3j+i080Y9iRTAQ2L
         pHfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=SBPjjox/K0nQBp9p/UReaX06mOCKZA5VG5oKrHSRp3U=;
        b=M4LG/f+Zl4O2SyJ8rPWFgs9uZJB8T6XFMa93aB8Z1YaA8dpmoL0AFsrPeWVGpKFhl5
         /R59z5rV600wSogKS50A8V3FxEtn89owo7wp2ln2ZAWkOXq974KEgSAo2xCoad48sFYO
         M80AbJ6pFPgzpAosZVzwv1SJP+91Xshrgf+S4Sz5eOi3zRwaQ059wdZzpa7o8kIcA2/g
         6seNJxfZY4iQXmE4sf9LzmDOf/7pB3SAoxJuROIt6H44y/1ZveQZcFv8A5QlFLTDU/Df
         3q7mZ0/MvRxxH9dPpG91yIh1PLqWiE1x/i7FUBJjcf34FjPqKPtN09UD4ZBLQKxJwUnC
         KQSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jD7UphcO;
       spf=pass (google.com: domain of 31a28xqwkabggya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=31a28XQwKABgGyA6HC9JyB2B4CC492.0CA@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id m28si543298pgn.2.2019.11.01.15.12.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:12:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 31a28xqwkabggya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id a1so8458061pfn.1
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:12:38 -0700 (PDT)
X-Received: by 2002:a63:4525:: with SMTP id s37mr16212936pga.148.1572646357518;
 Fri, 01 Nov 2019 15:12:37 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:49 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 16/17] arm64: disable SCS for hypervisor code
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jD7UphcO;       spf=pass
 (google.com: domain of 31a28xqwkabggya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=31a28XQwKABgGyA6HC9JyB2B4CC492.0CA@flex--samitolvanen.bounces.google.com;
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

Filter out CC_FLAGS_SCS for code that runs at a different exception
level.

Suggested-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kvm/hyp/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index ea710f674cb6..17ea3da325e9 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
 KASAN_SANITIZE	:= n
 UBSAN_SANITIZE	:= n
 KCOV_INSTRUMENT	:= n
+
+# remove the SCS flags from all objects in this directory
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101221150.116536-17-samitolvanen%40google.com.
