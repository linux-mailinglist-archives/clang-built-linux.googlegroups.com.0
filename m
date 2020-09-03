Return-Path: <clang-built-linux+bncBC2ORX645YPRBOVFYX5AKGQEITRLQNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FCB25CA6F
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:55 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id k74sf3982013ybf.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165114; cv=pass;
        d=google.com; s=arc-20160816;
        b=H7fQVzeYMjjA30H3MsDY+OcvzUuNFqTlsSqvlJtMjvUiOHIcyZk/9lkHZFiq2FeqQJ
         36Kx0YMLAei1Lkw+fv6JM/l7KOXLeDJcnNOskgrXPk08D9PHlHBJR2/XfkZbisAb2jlx
         p3NjekTb//NHr75iR5SO+e+dCLLJ45d3dlPmHxKx0mXKe4GurGg9LdR/p1ekaOAGTyFF
         j3vQ57z8H8R5O2Eyyisqa3CLsKGvl19+2ibuNgOgaePFCb3QI2lJ32pXrEaw25DfTtcb
         WK6qrSHQqnJTG4FjcuTQFOkHEaWRrMO7kV2TevNtPBtAk5dB0RYrf277mVW3FjDKiPrV
         FnFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=NvBWnlZXnetzZo6bM9oV7ZtVcypS4M+d0E2YRppwKR0=;
        b=xThHvlHm+9Mj8Xy7yJSwlHzWfBn2H39wiv2BG8SjvXFxEZ6qCiVji4XtZc47kVsoUG
         0sesim5WpF+Dkd76t8Qh6KAUr9cXh8FdZOKdvGUl70oCxViJPC3uOWTB7r/EIzXQWvSx
         t4wEptAeeIH8Rs5ZZmafO4430jxoQwh1ugwQUAnLrwxYgjCnCxq3jDDkIMBs3D0dp7eC
         y8hDocujbT2S3KBXYpd52wjfIylqw40sr1+W0ic7njJBYmhatkVJ6PV0K3QBnGtxcstc
         gC0+NRKF/xhe/IzENEWozkauIuKLsfxHnqv+QdkYaZbm52dlHNlrt4ma7L19eGLCWsHk
         roTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VrQ+aR64;
       spf=pass (google.com: domain of 3uljrxwwkakuxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3ulJRXwwKAKUXFRNYTQaFSJSLTTLQJ.HTR@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NvBWnlZXnetzZo6bM9oV7ZtVcypS4M+d0E2YRppwKR0=;
        b=ptKItEXYGVfXxAqkzTEgRGr5EBwCUKZ8bpHqYRexQoapwdR5O917IQDGQoQCXRibFc
         Wp8tp4LcXzXQCU4J2tmpmSofDRDrzLbxj6JI9URgViQGunrDrx5M4U355PnD4MJsTZdV
         0hOhNXIM6GN2XsOnGjuljQlu7pv8tYfem1z9v4HB3PlpXW/FvLUripofN+VcprrsADZL
         MarhK4cBf9wxBDX4TOhJAWWr0BSOeqHFb/1Zt9rWYuou7ZNxdTEcM9eXDVMslS8aAey+
         krhQLq5QTFbqQA8tMgrvAOZojDL9DdjFtzAqkSG6VruxBW6LvVElEgbzF0eYQnjAFgYS
         XbmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NvBWnlZXnetzZo6bM9oV7ZtVcypS4M+d0E2YRppwKR0=;
        b=qujtt2hNBmhH3Egh5OGuht3Xj6HIGy6R9skKTI1TTMb8YX2ezN8I0+3747vTb1Oj1I
         JlSx+pXHcXW4BG4vFzIKyMvEWhaEp9kn0hFSCYHVesZadwHyYpOxmWjb3pFRfykrcyaM
         D3f4ttF7jJlw0tk2FRZ5hL1DuFwxRsSv5MMGG3HqYvTqrLKGd4fWvplXvMtBjEnJAb5N
         oYVKbGW5IJIu/ugVJU7qPVI27hoB7ztXehEKiX3wjcBSUEcHdgjHmxfy7UVV/qI5aFEo
         nylBl3ShqNp/JT9PDOUuQzoi44y4iJzLuodnWZr/J7Gcq9BgJ9t5e/Gd8q9NagFCgJyS
         pK8g==
X-Gm-Message-State: AOAM532SNYPt8XbvnMOmbzuvq67+07EXvGHqpxk/PNzMnbGr37gCjD74
	PcBKKLb1jMphMseqZzoYl+M=
X-Google-Smtp-Source: ABdhPJyRxw5J6tjM9hzsnydjedNfjb5zsfEcAfuQ7hwvkZNHb/RL1aY6q6VbiKND9cAdM7G2+lngig==
X-Received: by 2002:a25:5086:: with SMTP id e128mr5550307ybb.173.1599165114789;
        Thu, 03 Sep 2020 13:31:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:781:: with SMTP id b1ls3338484ybq.2.gmail; Thu, 03 Sep
 2020 13:31:54 -0700 (PDT)
X-Received: by 2002:a25:1455:: with SMTP id 82mr5773253ybu.274.1599165114420;
        Thu, 03 Sep 2020 13:31:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165114; cv=none;
        d=google.com; s=arc-20160816;
        b=IBrCGAuzhHg0cA8/BCxXwJm0EGAdoW9HlI/yDiu0A4Q/jRdksgTxROBM2/m3mBwhOH
         3fKSeX+M7nJQmJ7dixIm3klEvpHtPoiyV5ZMfDvUlhop6nL7YfiHrreu22+n7jcecL6w
         veYJIaivFJHq3rZP5Y7wksY6ngtq1/6FfWmYEY84Unsl4Y4VpdXR1vpv3eUWA1EZKiFc
         u0QF7f5CVN34qAjKAViGKG5lXMXHnbdCj63DxgNZy6T34vq5Cb1ARI+GFIlK02Q42szZ
         Hy6huMkRL1kEOrzLTtv9IVAJyPNjW9LjTT+Qlu2V20h8lmMxJvX/iLfNd7Ugcx9qg86p
         aH+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=3m31rwYywYePbNZAmvKakEWxPdLPkgQobcut8O2cWG8=;
        b=LTowM6myaZiasvSo4p2o2JTKEDm7BMKKEZc/ACxo+tQ5YRgLh7UH+bsA3araGGOsIT
         mDNsHaFUMzx8U4KCOJiN23C1k1aXwtthv+HC93eUijQHJrcyneoaouYyRPCmXfMXOw8h
         HGAUGfxCWNm5qOK9d2K9d0Sn3fou1oAgmbnY0T9HCO4I3Uz6pnVHCUOyKDbpC1hHw1Az
         ximC3guis87eLQ68LvmfpkQaqZ4MeqkLY4MgMPSBi4u/2VjJxGNE8+u+plYrUbSse4bV
         HkUjd5etWLY1w3ru1IGFLQRr2mYA5Pr9I/Ar0hgOdaLlXI+BaTDBo3rBFexPKCXXl807
         KUnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VrQ+aR64;
       spf=pass (google.com: domain of 3uljrxwwkakuxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3ulJRXwwKAKUXFRNYTQaFSJSLTTLQJ.HTR@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id m193si388926ybf.1.2020.09.03.13.31.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3uljrxwwkakuxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id j20so4022316ybt.10
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:54 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:2006:: with SMTP id
 g6mr5905482ybg.143.1599165114037; Thu, 03 Sep 2020 13:31:54 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:53 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-29-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 28/28] x86, build: allow LTO_CLANG and THINLTO to be selected
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
 header.i=@google.com header.s=20161025 header.b=VrQ+aR64;       spf=pass
 (google.com: domain of 3uljrxwwkakuxfrnytqafsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3ulJRXwwKAKUXFRNYTQaFSJSLTTLQJ.HTR@flex--samitolvanen.bounces.google.com;
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
index 6de2e5c0bdba..0a49008c2363 100644
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
index 4346ffb2e39f..49e3b8674eb5 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -173,6 +173,11 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
 	KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
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
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-29-samitolvanen%40google.com.
