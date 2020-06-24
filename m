Return-Path: <clang-built-linux+bncBC2ORX645YPRBIXRZ33QKGQESETNY5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 84305207D21
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:39 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id p9sf2445879qtn.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030818; cv=pass;
        d=google.com; s=arc-20160816;
        b=dc/PZbPFf6BZoCweRqyNij+Uv2EuQQri9vi7NK7Nf/Ct0yS7mydfRnHRYCtqL8w1K8
         rEMqRELpBX9hVbvLoMpiF7+anNqoA0x/eqvpdrGuMAAKWuDiU0283wjgzHaTaxmKiqFr
         UIg+5TgjzciIBIK9V+HWxtW7LQ5NF2Jv12+moP+T838Eq+vTLtJJ/LX0xmOrmnOyekmJ
         akfj1+iv7AVjGI0O3GYfiQS/TCjbKCeN1IMV3NSKQfEoZ/hSSz/TliDbCmOpqJ9G73zn
         6OfMjf33mbs7UTQ9UpTUzp0POV1GJXdQgEOmDpqNp7RAbQeWeM4EJAWcSZA/zjmxka3p
         DmEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=sFkoDfURK+NJinn/6/tDHAuR1YRmV3UpGKCW+SIQgmQ=;
        b=wSvcgmt4qRVBc0oC9MCEkSBZ5Xui6I0ODpbsx1CAVfC89KN/JA4rGxRhHI8qAe9bS6
         Gt39u2/uBV3M07WuPw50aXjoolJrWcflXKIK6bxOarhpdKoPA9tHZ+dauLqKWTQshBoJ
         yGYgJH+0wrAjlmotn33rbl1Tq0ReCpMTlv8welCHEpCBiLQcUAmLZrcU4j8ZXPVYWjzQ
         TCXBakNbSy40JInf+e+jPHM0AahVYCcg3ppNz7TzO056YnJl9VKe6nFEXuw4Cz5aVfF9
         3x1i55aWKHbVOAxFMMcZ2MFzSGQYPKEzta9mykmIa0EzJ+4fGVFdJCLWrTq88+v8objK
         yqsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qDi1kJQp;
       spf=pass (google.com: domain of 3orjzxgwkan8tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3orjzXgwKAN8TBNJUPMWBOFOHPPHMF.DPN@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sFkoDfURK+NJinn/6/tDHAuR1YRmV3UpGKCW+SIQgmQ=;
        b=aej1OCJ5kLO5CYQE6WEXQ43OSHFW7Jk6Y1QVFmcFrKIEHnew1YUnLzx/iAJEpn6H9V
         GN41knfpoMmgXImgzdYQJUQc4CbtvEKmEyiXlU7RXGh3T+CBLknTD2NOAK31QhtqoDge
         8tnyAUIlSASvFiAi9LF9z7SgXHzy2/80UkntpefdYZf0npX+y5FcfcFCTQ5s7PpoAp9f
         rbShiRgoyGbdVnIBYFbTMPL5Nm9675xSxqtX/K9dvbrQ4Ynw1pj7YV9J+1X1Ey/bweRF
         a6sFnH7VpI7sXzcTXNAZQT8gWzOUEd+f2Zei1wIDOv+yIQaVQA5Ak4QxAQzMfdNNyig9
         EDvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sFkoDfURK+NJinn/6/tDHAuR1YRmV3UpGKCW+SIQgmQ=;
        b=MgUK50xxzBfmVQNJ8StAMw+aHXVkHA+KWWbzP/1as5N0nKU+Hm+CDUV9EkxE+owgGh
         1C+5vtBeOsTgtve+d2TmuIREXv+VAtK3aqa6JltCHYNh+7rDF0357qA5g4KGJ7X3Doey
         BmPVOwKNy0XPq4hle3+F686C4eRwQoyG7r48wUYbg3Aiw3tcTSAci7QW1qboDlzowRV+
         84q/EM1TT5rlAPjtQuftQiIOKF9c93sMky2o8RdwdU11d+wWvfa4yCauA5K/4+zkwasP
         2ySx/esnf6YE9rJB6Ld0+njmtA1MaHVlrE2vP5OFRqtX93WYcittcYuVGs9Z92Rg49rR
         cFCA==
X-Gm-Message-State: AOAM533GRCOhiRFevq4sVRsRi2RiZ0aYW1bsC0CP0nDzQ0yIovldX8PV
	7sGCC9PrVTqqRBDUyosahBk=
X-Google-Smtp-Source: ABdhPJzyhPbKM4wIVY9ViM4w8kluz2/VBtiSONDZPW+W2JuPbbhdTI87F+GUhciLjEb4kdZJfTBCug==
X-Received: by 2002:aed:3c68:: with SMTP id u37mr5557605qte.382.1593030818636;
        Wed, 24 Jun 2020 13:33:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:507:: with SMTP id u7ls1409670qtg.10.gmail; Wed, 24 Jun
 2020 13:33:38 -0700 (PDT)
X-Received: by 2002:ac8:668f:: with SMTP id d15mr28125392qtp.113.1593030818301;
        Wed, 24 Jun 2020 13:33:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030818; cv=none;
        d=google.com; s=arc-20160816;
        b=sR1+I5X4Hhe/zmhZ3s6uvQpyuHKgolAS+JipWBCgY6AQsxL2sChS2c2Q5G3E/oQYXX
         ENlFdHLm817QU1aa7brn918kVyibkhKs18/+JoIbDnp/v8eqCMBrxiz0mkiASwT6isGR
         wx3siuerMSPol3VQTAFoWt0nbBxqRDrxAfFGVWIMyu2ThyHy9ldCGPt+bNHduejfQfOi
         lBEht0JV3xJCs8DVjLb4tecg6OKLfnGIYsqKGwxXRcfOxAA5Le3IjThWKVL9OYiwcMpF
         GM8UOflAKe3DfUPlWCzEJFuCWqebWwOHMi45jdQjY4fBVyxHm3cc67bvm84iNaaylOn/
         Gxng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=tvg1Fbryi0kMABLSJZV+2LlG9cMfXZohRvKr2b10/ew=;
        b=0buI60yx7Z46aVPEVwUTbd3nuk8G4/443wq4iKDG9XLXLnQg5coQN+t5/tKJLFrBxf
         YXRAtOsqBgNHX6zoFYiBXfuLMm9DDAREiPxDcroMUdGeUkryf53tH3gGKRIuVwtYpAEh
         DcnhBDc7GOQ/OibreRUj85/4ZVcdMGISS7gSwfIjG1nysHztms9CXFigtmRvszMNp8qr
         V8pmZ9Z9M0n+MSV7OH9UMHzh5c+RY1gUEMmHakeq9Lw/bhlN7TJzvPtnzhN6Ulpnrdku
         uwk6s0cpB16qlweMuCzsy+U9kMpZovSOIMOf1p2FRD06Q/UJrkmF3++txU5v2KbYlBMj
         p28w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qDi1kJQp;
       spf=pass (google.com: domain of 3orjzxgwkan8tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3orjzXgwKAN8TBNJUPMWBOFOHPPHMF.DPN@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id v199si1297357qka.5.2020.06.24.13.33.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3orjzxgwkan8tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id j6so2494224qvl.13
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:38 -0700 (PDT)
X-Received: by 2002:a05:6214:846:: with SMTP id dg6mr31350632qvb.210.1593030818021;
 Wed, 24 Jun 2020 13:33:38 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:32:00 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-23-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 22/22] x86, build: allow LTO_CLANG and THINLTO to be selected
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qDi1kJQp;       spf=pass
 (google.com: domain of 3orjzxgwkan8tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3orjzXgwKAN8TBNJUPMWBOFOHPPHMF.DPN@flex--samitolvanen.bounces.google.com;
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

Allow CONFIG_LTO_CLANG and CONFIG_THINLTO to be enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/Kconfig  | 2 ++
 arch/x86/Makefile | 5 +++++
 2 files changed, 7 insertions(+)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 6a0cc524882d..df335b1f9c31 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -92,6 +92,8 @@ config X86
 	select ARCH_SUPPORTS_ACPI
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_NUMA_BALANCING	if X86_64
+	select ARCH_SUPPORTS_LTO_CLANG		if X86_64
+	select ARCH_SUPPORTS_THINLTO		if X86_64
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 00e378de8bc0..a1abc1e081ad 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -188,6 +188,11 @@ ifdef CONFIG_X86_64
 KBUILD_LDFLAGS += $(call ld-option, -z max-page-size=0x200000)
 endif
 
+ifdef CONFIG_LTO_CLANG
+KBUILD_LDFLAGS	+= -plugin-opt=-code-model=kernel \
+		   -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
+endif
+
 # Workaround for a gcc prelease that unfortunately was shipped in a suse release
 KBUILD_CFLAGS += -Wno-sign-compare
 #
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-23-samitolvanen%40google.com.
