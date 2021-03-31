Return-Path: <clang-built-linux+bncBC2ORX645YPRBXOSSOBQMGQE47U2BZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDBC350926
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:27:58 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id g6sf2110385pfc.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:27:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617226077; cv=pass;
        d=google.com; s=arc-20160816;
        b=e3DqhwHexQmBpQa4hggzauwQQLdxXwqy0cH4DXU1R/Zu6bp1yFDj1AkwDAEOMMbrvk
         lyBAy0Da4y8P6zevFhWU7L5WSYcR0k32U2C1mbiki1NQFa7sqvugjHyWafytSd+LjFak
         QHt+4c5tmTvfVaq2C9FuXIqatQONaZvaoU2wuf+rYXZDrLSg3+HAzPDSu+JRg9iC7OxW
         rhwi1exKyCA22WiIIoZLmAYX8lbGyg2kATHHgEz2UEjHGjUi0Wzzghv/DLm+jf6Cz14h
         ruKW5dFNzvOJbCp5JJkvYDNyQPxDcPlf9zZBtb8efHXVycNHKsiyCYf5mcYfqO+edUn/
         Glyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=oSyjgsHUUV2dNg9UylNMJro9dJhzkSDBsJbyALkW4m0=;
        b=lcFrQ4NYUaok6WlWnv8ua0t5ONW1cQOymtNwc6ry2z6qRI2InwBmD5a9eTr2YROccY
         ZVqFa0ggD5ByWlJcnwHUPGiBfxsjnzNcdjMvfFKn08xz/Rk6914JNMJk4ZvvHGJlN/is
         QTNGD7h/erOtXV32PUx3IcEiUa9f3lQQRv4/a0vsiWSLmgnmORmD2N6blLHC8gwyWsUO
         PV6M1mjU6RKxn4iwx72YA5K01PoslqCGPCad1F0Rzff3v6KtPQz8arVp5eXk/uHzenC8
         /EprVTuwFWiiu/llERj2UUfCDMG2bwfcAfTBrVaIhY0vGi4y3jIHJmgllui7/yDHcpGS
         9E/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ubXheP2b;
       spf=pass (google.com: domain of 3xolkyawkams9r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3XOlkYAwKAMs9r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oSyjgsHUUV2dNg9UylNMJro9dJhzkSDBsJbyALkW4m0=;
        b=tL+UBRk2XxadpAMGtu3zKtmEYi4eaWMSTgnKombzFccs9nJM+quFWzIIKwU4Jm+dZ+
         iguF3dLbfufEAtPAgbAuK86Atvi9DI/5lwWC+55BIZFeD/nuBYTgOexUHYPOPaONyK5m
         A/IJFgLEzIGI1flgbsBWsAYiJoZFyMeKEkkZA+fokA4BByOxjEFOSy/7s8KuQXWAB2Ff
         S0BykDEYL/aKQe0AixAOe09q35gC5Kz1PDVYCqOwNi+AOsHAeBIbVYABJyAXwUO7Lctq
         siUQin1qTbfXxmQZ0iWvl+dcU1flJC8A7FDrovlL0isvU7B9mr8n3uM5YB5gNPNK5wbS
         ZUUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oSyjgsHUUV2dNg9UylNMJro9dJhzkSDBsJbyALkW4m0=;
        b=uHgBI7eJJSUZfrFhTDueAoqS4DFhtJlDCXJvCCTUeGKaWfNMPTJkU4Xy6K/dB55Slv
         VQR6XuYRXzQy4jtb8yNXWHfnhRStyc9yZGlBWbMnEIbg+vXNOjw2DpvUZ8J68gu4F3Rp
         joecBIqlRPxvBExn6hpPI6UiG9veC+xZEhlbKXTmXkhudM+C1p/48xeG+2LWSoAISiJJ
         UJObGwjGnTFyh/mP+543F25Kj+cmbgGJL/SXXQyrTGHuBHcxWYd7L5hlUDQOlf8sc6KG
         fpjo3udMm0075nv/rkm5vQYqXO6hgnV5guhpI4/MDYfqWDq6CLjqo/yRwGiaCIgdsW7s
         X7uQ==
X-Gm-Message-State: AOAM532vPB0FNsxIeJyBJDLthAjaxbzG1IvxQ4xLSB54uebtOZvRZPSD
	Z1ekP4mKvwfmm5Ayb3e0m9o=
X-Google-Smtp-Source: ABdhPJw1tlkyvNSgxAm8xVFzx/5wcKlX6urfFeanqt3K8gNA+wMXeLPjvIo9zXVSsxyecSl/AEiKWg==
X-Received: by 2002:a62:2cce:0:b029:21d:97da:833e with SMTP id s197-20020a622cce0000b029021d97da833emr4634129pfs.40.1617226077646;
        Wed, 31 Mar 2021 14:27:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9acd:: with SMTP id x13ls1422967pfp.1.gmail; Wed, 31 Mar
 2021 14:27:57 -0700 (PDT)
X-Received: by 2002:a63:6a84:: with SMTP id f126mr4805620pgc.352.1617226077012;
        Wed, 31 Mar 2021 14:27:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617226077; cv=none;
        d=google.com; s=arc-20160816;
        b=VPg5OuwHIPO1l2w4fG+lVnF/KYdIt1IkVYtWJx213RvlxVTWEkRaxKvc8oSYV5r/ax
         GMFMMEsrXzzPDxhwBqwZyHViBWr7GOc5S87785Faky1L2VNWdyPYg4C4CrJ6Hw9zDdzy
         4DMGpINgWw1FICdGaVpGnvYPWslECGo+BKaekvmhVsRO2PfwRIffmn+2KaALTA2YvVF8
         PoraX7iHJi5wYQ5kYYD53Xx/J6f7/Q8KwTB+s6smuAy0pdmk7QElNNi5fADoBCj6B7Ks
         gp2gs03geu0BmUtoag9JLEZ1MQxKowyyuIqUgXTb+Dk8C0Lljxx2kBGwE9LrU5UX+hCw
         aQdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=tNWRsiiEAfetheYG6qtDYdd6Zu2YM8DJGmENfE26Aac=;
        b=zZJjMos4gV/0J1ATFz7AWnbMVTxP6fPDxQbMr1Bu0P0gNauzkeAXmTTowcA4dRESYc
         5Ysulv2pRUnjA9wMDEDDE106cQubmtxn8mfqUHZLqZfWx9/QpCcOolxdHWRJNvLXLIRW
         B6CqBTl/xOG3K51h9oV7dVHjZkJAQQDtsM1ZqbKP27sLkACQ/NNIRwr61CVmAR+JrG5j
         daR04MdUp1PZQwqYhZrh6n04clCNrvvSaJInsW/jabOn/zbsyqh/ReMjZEvJo6V6jx25
         vkizvykhzkPNAkOtlOgYjst0O1PZfZ6O4PkWkxG9dMEM+eX98DHlFxcGR9qZ3ehxyutl
         0D1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ubXheP2b;
       spf=pass (google.com: domain of 3xolkyawkams9r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3XOlkYAwKAMs9r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id md20si415194pjb.1.2021.03.31.14.27.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:27:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xolkyawkams9r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id p133so2349066qka.17
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 14:27:56 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:7933:7015:a5d5:3835])
 (user=samitolvanen job=sendgmr) by 2002:a0c:f349:: with SMTP id
 e9mr4952920qvm.59.1617226076143; Wed, 31 Mar 2021 14:27:56 -0700 (PDT)
Date: Wed, 31 Mar 2021 14:27:20 -0700
In-Reply-To: <20210331212722.2746212-1-samitolvanen@google.com>
Message-Id: <20210331212722.2746212-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210331212722.2746212-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
Subject: [PATCH v4 16/17] KVM: arm64: Disable CFI for nVHE
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ubXheP2b;       spf=pass
 (google.com: domain of 3xolkyawkams9r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3XOlkYAwKAMs9r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
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

Disable CFI for the nVHE code to avoid address space confusion.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kvm/hyp/nvhe/Makefile | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index a6707df4f6c0..fb24a0f022ad 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -75,9 +75,9 @@ quiet_cmd_hyprel = HYPREL  $@
 quiet_cmd_hypcopy = HYPCOPY $@
       cmd_hypcopy = $(OBJCOPY) --prefix-symbols=__kvm_nvhe_ $< $@
 
-# Remove ftrace and Shadow Call Stack CFLAGS.
-# This is equivalent to the 'notrace' and '__noscs' annotations.
-KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_FTRACE) $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+# Remove ftrace, Shadow Call Stack, and CFI CFLAGS.
+# This is equivalent to the 'notrace', '__noscs', and '__nocfi' annotations.
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_FTRACE) $(CC_FLAGS_SCS) $(CC_FLAGS_CFI), $(KBUILD_CFLAGS))
 
 # KVM nVHE code is run at a different exception code with a different map, so
 # compiler instrumentation that inserts callbacks or checks into the code may
-- 
2.31.0.291.g576ba9dcdaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331212722.2746212-17-samitolvanen%40google.com.
