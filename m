Return-Path: <clang-built-linux+bncBC2ORX645YPRBWOWZ35QKGQEHZ4XSNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 3702F27DA87
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:06 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id c23sf3769524otn.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416025; cv=pass;
        d=google.com; s=arc-20160816;
        b=p9Rtu2x9p9irc10CE6gUmDXEVKoLMd16dmpQoIu6N2FiFpeT8zzWhFjZfXhVZVUy+n
         AFjM01EBeA1umkDHIOiWsFnSYo/iaoP6RtGvKALCBTJnlJSVGMWqLWzVegll1PeYSYcf
         OjXvJdq5AouTAmOGj8cLpvZ9VAJlgKFMYoGBDSdviDIH2JHHnG5gwMZ2+NV7e32clyWn
         rTODs6ZpZ0NYRoPXd49PigRYjXdw6Dv9JHsebKt4fD0+FIlZ+jer0pR9kNMWmQbrzbiW
         I4cUgxMfPglen8ubDIyc5/Ia5n4/Ke9AkQsWZvayMIaSNGL5XS9fVZx/EgSxUvorN1Og
         Ck5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=hzdH1k8F3B/RbGv9nfixdy4m30LCXpmBgysUB+wP8Bk=;
        b=PXj5gpf65QaPhgp+x1uMTOdPlSqmzT0v24cmZJmWe7jKOkqTJJUZpdut1WZS/F+HU6
         ne02oRX5ll7wC9QzOvLvwBu8eQ/JJR7eGFk7vS5HbA4bIepEUh4dc3m2YOUqdq5GyfbF
         oMQ+pkDAOx3eCUnQq4y8+DnBVX9SNsfItn9nW3QyQ3FgstvaZL1ndpuUhUKQyLWU0rNh
         sR2TRBd0zluc3zYxNxQB/xEO7RqfGMMorGgnkjt7vvYT7/XDwYKr40/Wn/dCYeoa4Pln
         OUsBiUz0qDukNG/kBbTTijdHP162HVAayqNDot7VvzZrw4nwKRv9WeDCY10XwkRG58yy
         XJYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VsL4ntl5;
       spf=pass (google.com: domain of 3wktzxwwkah8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3WKtzXwwKAH8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hzdH1k8F3B/RbGv9nfixdy4m30LCXpmBgysUB+wP8Bk=;
        b=fE3c8aK6gEM7IkhE/a0DcWOa8HA0hNNRSZHwDZjIgImysidnyVSCeTrtL2Ob9vW3Z+
         IUzMYGKHsCjz8xUSAd4STthrsfderICgXPclj01AQr+hENmJQ+IRLh7OYpTxeiu1wtRE
         mUjBR/qfz/cS9gohLcPOd4b0dqoR76SViOp88m6ya8RtmG6D4mqbf65tizTFoBdi3loy
         oco7zDh83B4GgNrJ3sTzR1vF5xbRX4/3En8YFlM5STuFNh3e1BtcswMGpss38UwR8hRK
         tNyd1+MYI83SIxRAXAvs6P2cclc45xUc6UvefvZbOm2E7VTGDzFDkHOaGeTOHS2GcFOX
         tDbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hzdH1k8F3B/RbGv9nfixdy4m30LCXpmBgysUB+wP8Bk=;
        b=qfT3kqfmhq/9PXDtrvT5mTUxj0rA8Kr9g2eaCNWKzdFjgjFOnXLxeJzalAbH1Ndqn+
         zTxmGtAQRR6X9eKw58kcAAPLdPGU97EcLteTOKbK3M6EXRdK7rRSZq+9hmZOsmLHkFBm
         VCl3y6V/b5F9I4y67XSUuBMUFKQxcMMzfjw1rfaH4EkJeOVz1FAZep4zhtpBcvMaOwav
         +hNusOxMfN7qUfaKTZtTYTXL56QC6GlkGABKP6hbflkmtrZdBlWCwZBLmRSAVGgdIIUn
         3F/xs23YUojcYPBUgoaXMrG/qrFi/eD8aTn77S1ExsmG3yZTBb64AN+xkIiBuKeHkAOi
         SyJA==
X-Gm-Message-State: AOAM533kTDf48jckivXOHaOcBdKLuT/ztyL4O+QNe4MroJHmnugvB3n3
	QNnB1S5qDh4GwQADLAbehfw=
X-Google-Smtp-Source: ABdhPJxEiWm1B3P8cfx6uq61y/O5kYh6YkVwMmmRbIkt8FwXBZ1fPkvVfMTUL+xnuLFl+OX5sVk/AA==
X-Received: by 2002:a9d:2641:: with SMTP id a59mr4104329otb.217.1601416025117;
        Tue, 29 Sep 2020 14:47:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:119a:: with SMTP id u26ls1486864otq.6.gmail; Tue,
 29 Sep 2020 14:47:04 -0700 (PDT)
X-Received: by 2002:a9d:27a2:: with SMTP id c31mr4226139otb.293.1601416024737;
        Tue, 29 Sep 2020 14:47:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416024; cv=none;
        d=google.com; s=arc-20160816;
        b=JPv7RnkZb5vT8/HIJeDIr+PrdB0KEC2retncmtmpvDUNkD2QgHqTwGwoMXeEBRJzxK
         TzEHvavcDVmHv/kEGzfjSldcT99PuR6fagk3go/hNTAbqQ2T6JaM4me1WCBdPDCjgrlC
         JXNj5xc3yaSWqcDvpVBpYDZbo0U09DuniRsO+vfMX/gyFgofjC40h6Bh0ihloJTIYgMe
         cj/HMQBW8KyVQsszduSBtPscFWz0R5LffWokvOGd8Aou32eW/vP5JModsti3gRwsetAB
         uccyzJfEVJR7RdDtMeUEGpkNiAf5AdRY1wYZDT4SbEfu7oH6a5wwiIVVbi8qpX4KG1C7
         xkQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=3CV3/71SvI9Aae4EB6SuVg1gWevq6V3dKGQQ0SLCSxM=;
        b=WESX8rH045SzJboDohsli/aZJQe9zPIBJ5kuE75n4ZlcMHKBzLAYYeFJ7/vWAYw/50
         0Xlnn19TpGMWNXzebdku/uBcJa+DC4LPpdYA5NAcEWHY0D5c7+7Bk1SvXiB/L0TIxDj5
         ThZnzZ/aXAHMGCA7kmvNKMOdCp6q87qOiKI69rrJQqa/dfUZKgUbEzWia9Rd/zIGMDFt
         Z1ADrpmAcQfoVljOanYDKRnWt/SHPIjKVsDajd2FDE4NWeOav5R65fEXnuoWdnZBE3sp
         afeWmuNNgir5WBzAfRsiyu0Nwe2K24BtLbJBNPsrgXiaQrGJQg7nep/yGe+5bljjC/07
         bgkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VsL4ntl5;
       spf=pass (google.com: domain of 3wktzxwwkah8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3WKtzXwwKAH8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id m3si586585otk.4.2020.09.29.14.47.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:47:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wktzxwwkah8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id b39so4098936qta.0
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:47:04 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:58c7:: with SMTP id
 dh7mr6716071qvb.20.1601416024173; Tue, 29 Sep 2020 14:47:04 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:16 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 14/29] kbuild: lto: limit inlining
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VsL4ntl5;       spf=pass
 (google.com: domain of 3wktzxwwkah8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3WKtzXwwKAH8vdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
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

This change limits function inlining across translation unit boundaries
in order to reduce the binary size with LTO. The -import-instr-limit
flag defines a size limit, as the number of LLVM IR instructions, for
importing functions from other TUs, defaulting to 100.

Based on testing with arm64 defconfig, we found that a limit of 5 is a
reasonable compromise between performance and binary size, reducing the
size of a stripped vmlinux by 11%.

Suggested-by: George Burgess IV <gbiv@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Makefile b/Makefile
index 23cdb475c445..d6510ee99ffc 100644
--- a/Makefile
+++ b/Makefile
@@ -894,6 +894,9 @@ else
 CC_FLAGS_LTO	+= -flto
 endif
 CC_FLAGS_LTO	+= -fvisibility=default
+
+# Limit inlining across translation units to reduce binary size
+KBUILD_LDFLAGS += -mllvm -import-instr-limit=5
 endif
 
 ifdef CONFIG_LTO
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-15-samitolvanen%40google.com.
