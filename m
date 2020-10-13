Return-Path: <clang-built-linux+bncBC2ORX645YPRBH7LSP6AKGQESCK5RFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D11428C5D7
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:32 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id i187sf2667104vkb.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549151; cv=pass;
        d=google.com; s=arc-20160816;
        b=qPCnE1PPEbpKx6hbtR4LNFoT1TtfhzTGvWA4NgvQlgRdhGsiaajYHET6tkaKdZi/88
         FvjlBgckzNwMiFgcT4bdZgnMkgvbUYezJhicmwf0CBCOKrQT2EGM+YFDfqbzespDIP7X
         peR6HBSds3bNV/NYIHtRjeEhSiT08sPjsFjDRrj51hbrThDOEGzj3jGKxfpA/QEkHN0L
         0Oqt/QMCce3dk/ysISV3Yf11e8NNo4XBzmlbHbw1GZshZyh4VqKp1sWS+xHIjfICCfbl
         2ZtTYZx+ikKtlgaV8Q/YpLbsToIKia1SNXRiYRHJSoXmmOfYwURWCuzkYMBEJnjn8cCl
         rjyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=rL+XK+a3lm2myNgnFPRwm+CO0aZuaEiC/vBVnTUqzaw=;
        b=wSgtZ48wuGKtroEB4nAwBdjBkESREjMKHVnN1XRcdAwt8oF2t++FW/hl2Ah+eJwuOX
         WUz9ixRum40gKC1Zi2JD8C47mAphSTksM0g5d0Rjk2Wx0iXlubDxEHvBKsAvUMZqM6oG
         CLShyKFfy+X6K6EQeCTW+AMMkftNAL4ncc0RnQmO1a7xF6l+qHRBAkS8/2ypPhD9Mkto
         XGyZznCLFyiMuQjzFGwcDFLh8UWOhp4w3mFsWsEZim/f6rewH8otYdTwFufxI3ySqoH7
         mTqr+nM3Xp7eZD0NhJcGTLgIC02LsyNhGSBKRJ2Nr4yNKJKgUbK8eCpg7LxcNeR0HJay
         jUDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nfKwI9L0;
       spf=pass (google.com: domain of 3nvwexwwkaj8r9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3nvWEXwwKAJ8R9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rL+XK+a3lm2myNgnFPRwm+CO0aZuaEiC/vBVnTUqzaw=;
        b=ohAWvB6Lt3gU+ivQQfaCIIbuP6Y3o4SceMUILB+46uZbfe2ddTH/cv+LFces/xCa93
         KvEjBBQTbO6FwsUZ1ARUsUjRaq3fHfZNYS7b3Onnf2ibVtfVueD7KKkxahfSwyZOBp5x
         69Pc4WjZj455HT3i2QmqB/m8JCiCNdRH6VDQiYhNnOKcWtFMydmKuKjXd6rLJ01Vd7yg
         kHl+N7lUx+aGG5yprnpMdLaZ6AKxvexi2rdAThncEsR6ZVmbSOlkk6gxBqM+tqmMkYSQ
         htxibPCZ0JBgL6AS14IKaZgagN0SVpJRugTSqJrqrprb8XliEChahR/aeKyhiDvd6Cnm
         IvKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rL+XK+a3lm2myNgnFPRwm+CO0aZuaEiC/vBVnTUqzaw=;
        b=UvPIp2GUt2H+WeYUy/dl3WmdGWuwPtMjlZ1md7l9fm/OaeU8riN2y4q7gqEhVoqMj0
         eU36qy6ZVqLwFRp2rtQAd/BOlRO0O94jZGyNSk81+NF6y12git3xU27bTFbn8Vdj28Ci
         o/hSAZ/b7pIJSlBvGMiWbUmpEdicrLLD8fr9pxaUuuRYDyEATh0e9g5ppr7VprLOcyk9
         MM/QBD1akEkOkgNkPqLqMVCykfprce9ixYelmityF6Ezow/UrnpHQda60lHsHxUkzkcd
         zY30+wFys/7bzW0uncFEZ4wgBp+HQnYyOVmCuq7PH1kxIVeVwhKh9FRF5vS5u6zW7FAG
         NdIA==
X-Gm-Message-State: AOAM531da9EDZHnlxb3O42jSwwmH/J4BXChdbHkuo33QMUph09LI5YeF
	Zro+bw4VtBLAZphZKEW/47o=
X-Google-Smtp-Source: ABdhPJz2/iyku679e58H6Y0ZetwXa6qewGwVvEUrrntcDYuqpXqAiAOelEkgA65kohIsAU41pT6hEQ==
X-Received: by 2002:a67:8dc4:: with SMTP id p187mr15597843vsd.22.1602549151485;
        Mon, 12 Oct 2020 17:32:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:ab4f:: with SMTP id u76ls275169vke.2.gmail; Mon, 12 Oct
 2020 17:32:31 -0700 (PDT)
X-Received: by 2002:a1f:1c17:: with SMTP id c23mr15257325vkc.0.1602549150935;
        Mon, 12 Oct 2020 17:32:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549150; cv=none;
        d=google.com; s=arc-20160816;
        b=rHYZxpkqPLAs4ruTXyzlw2KKYzSVfP1aIuk92iSKhdL9I0r/hGgZwygaZTKcVX02nu
         AT5ZwNXBD6HneqxeDmeuqmfGDwyTdCGaYPxJMOAgblRPdUk5du4wzHxQatgtmIaoNah2
         nXkwYarZJjHxouIn5thW7nsoklIUgMR/TYho3qpqRon17WheXPOV/d8BKjGtEwYEYpMO
         t9WS0tG6GAoPX1oiToo9qPJW2IgLWy3KRT+3VhDVJk6RqzknbmYqRdQw1LNGBbcrjPfV
         BlEpqukqZTcTn1DThca6fzkkHg9yF7gCda4CeqkbQz+6F62+zZ+sm957Gwt7BrIsf4hp
         uZ0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=VMCZDfrBZTgAeIay1rQ29+uk2lw3Iqw8lHEoyZvJXcw=;
        b=T8mOMlQW11qp9QOJbcSsmwp+0K+fbY4G+nmOMOK75oVhC5CfSQLX91MamtOSkWNm1m
         yyd8sbyFpfzdNzzbtXCsILeb68wDyOfi0+DHeTJX942ovreAbo5V/9fVvdcuT9PNIjGu
         yTcFj2XcAp8Hn4nL0Q/mM5RG9GCrUrp5+g7WdZi0pQJD3ymAYopCzA1ttIwyDYcEdDv7
         wkm7bsulzfj/IEJziEEYifOjU6q7thtTMzonzUD1ROCglXzZNzt8hiYTsIKr0Js/pXIs
         G72ag5CozkUVZGNMxNZ035LFV6uukT/9GUDDIw8LvHpECtrCMlOCvyZgMulTZWYjrvzb
         3TjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nfKwI9L0;
       spf=pass (google.com: domain of 3nvwexwwkaj8r9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3nvWEXwwKAJ8R9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id t24si2068922vsn.1.2020.10.12.17.32.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nvwexwwkaj8r9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id x5so1964507qkn.2
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:30 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:4b2a:: with SMTP id
 s10mr1226538qvw.54.1602549150461; Mon, 12 Oct 2020 17:32:30 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:50 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 12/25] kbuild: lto: limit inlining
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
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
 header.i=@google.com header.s=20161025 header.b=nfKwI9L0;       spf=pass
 (google.com: domain of 3nvwexwwkaj8r9lhsnku9mdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3nvWEXwwKAJ8R9LHSNKU9MDMFNNFKD.BNL@flex--samitolvanen.bounces.google.com;
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
index 91cd6caefa6e..41b01248d400 100644
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
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-13-samitolvanen%40google.com.
