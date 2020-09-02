Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQ4SXT5AKGQEDDSUWIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id B369825A32D
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 04:53:56 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id ba3sf1641611plb.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 19:53:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599015235; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZRCm6z9oVVjt05zeTx2jzCb6DQ6CnqtvH42hphLSNFf7rOJlzUe/aHkdYM9H7ufE27
         JUrneXDKap5GgLpUlG1+2QNVGz8Xl7RLdNfq0Jmh0yhQ8i1uxclIQzLpAbyPC8UoFtdS
         XJl0hf1mJEvTtqrWcXtAQtzViwfU6Tpl9gQqMqwJo/Uf0FqCpQE3Nabzm+PTtPxEcbeC
         JAtinqRSC2Y6C47hPdIqFMPhHdK3d4hzmlS4CNRVTpaXvGn5PWXHJ+mFHfgyxMyZLRLb
         6GWqrfcPluBLypGtLyz3/9PTp+ruYhAz6Kp7MArWGd+zsB+umHXX11M6zqtESLomsSWF
         xjHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=JFbIMWbgQKaWD01oadLMhM2OXq9D0l4PSXiFS0+rZMk=;
        b=QBr9h5OS266FRb+wJgbBshBGwZP12dt+l1EERUe02WdSQtMu1b8xZXVBIQQHr90hZg
         oRLVNV+ZaCa81DVp/WcKG/APdPW5TTEYc+GedyEktlXaLW1sE8xDbCWSKkbcFrts5Vx7
         8hYpbw47P8a928+az0R+7RgUX1J0JiuCTAUz46TggigYQpRXzr4ik1vuaCkQwgk0j6w1
         FQXGBk5m8znAtr7+tTBKiGCezVidyMVC0wzU3ViVk3c7/2A03FZdcje0ivbdTmZ5O6QE
         vICwv12tLj8jhCukrfrtUV2hL+6AtuNrCTPKg9gbiseZKJ1+fGZxe+N1mf4wGuXmfY0n
         m7fA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FwZ8Z44S;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JFbIMWbgQKaWD01oadLMhM2OXq9D0l4PSXiFS0+rZMk=;
        b=YIjqa+HDhSzrgWENpifktMPCvZAPxCLtE0X7inDgqDADerCDP+b4WICaauEVkQZ84T
         SLOnMZ2M2lisS9bpWrxH0EKGKwqIcZvErgsgU4KqifGYYWYuI/NLzB0Q7rVeaqtqvNFp
         //zh49fht8KsHEC2q7YMxLWHLNCZ2Yo6AKeNUlXC98vwByEp5A8Tg/mI8uyUctQABdHo
         xGavxeNzSJNk9VEJ3FluYI5+C7L0ZvqLhi68tPyS0YzSxsLyBIqZLkC7h0aMY6pwf6bN
         ENHZtvqGyis3xMhVk2EHTJYXZfPMIr9m+ojsEsl3agF71FUcp2wIayEmjXsoLSZlKRkB
         W6hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JFbIMWbgQKaWD01oadLMhM2OXq9D0l4PSXiFS0+rZMk=;
        b=uPQhJMrx7tDSCeJ8ydQP48oygBWXiCNd8vUbw9WnldMy9ZIrYmvL/go5WvyK8soBRA
         a6f3on88dZgnuaAxzGZPlfmsIu8NQmohK4QmUGmW482Y04UAwd6dHKnfv7WnpJl7Kipw
         InItrRnTMOFXdt5Uc/Mg3mkfexFaz+dinFzvmNuSR2BITKPfbV1rqM/ZAypfRnivUO2i
         KD/Cq0gmaebnf0UR1juAy6hJGotEuoFy5XCwR2a440j1aUIM+Ez7PGlSIXNie99QOg6j
         W3ldic+WRsO0DOAxbvdeiVIA7YGov0hSACUYaHhZ9JvE9q/MWzz8nvUzUVupfcA2VnYM
         7g9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327G7+szdjJn4HYLqmqMABeQ2iFbZOyf+JmyZNu0L5yexF2Q3fC
	kNCcfVbR5H+K6tpUmX7wgTg=
X-Google-Smtp-Source: ABdhPJwUxaBNxovKffdfHxPNaoIu/bhtU+8T47n38dET6vreG5U3oX3jEh76Gb64dpeoJu7uqSvFdQ==
X-Received: by 2002:a17:90a:fe04:: with SMTP id ck4mr269719pjb.210.1599015235404;
        Tue, 01 Sep 2020 19:53:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96d9:: with SMTP id h25ls368914pfq.0.gmail; Tue, 01 Sep
 2020 19:53:55 -0700 (PDT)
X-Received: by 2002:a62:1487:: with SMTP id 129mr1248622pfu.134.1599015235013;
        Tue, 01 Sep 2020 19:53:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599015235; cv=none;
        d=google.com; s=arc-20160816;
        b=LiUrGlKZ9BDvgkeD9WNcCasVkmgpAFYR5vbbIeY/BrCZ5ZPSg5iWzi88G6RueRdBRg
         tEjNeU4d0gKGGNXnvchzyTpWILIGUCjCy9HujalVcuY1AdbJRGzTLNJ255nr+Zv0LiKX
         93ahEi020CVr29o0rZqyKy+YjSuip9Nao0yufvXrDnoEcZxXeh93fWIz8Af219gU6Abh
         u6AKbfqPEnPijSkP/CrLQ5Ey9M2Z9YoQmYfWeB5Kk/eHppg1/lCbhGqGgh59P1YSNNw4
         XJIJWI9VbUgUs+wNJ8BP6ovFHn8xqPjNnzHPC8rxQAP/Jgvw6F065Gdhey/yf4g1jOjx
         5Ljg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bSRmKV4TxKCXU40IBJQsfTYjUw2udm0vFSvEERZRBX0=;
        b=0RafwIYxGpHX1BqtGk/JxO+R6pBnBRGBiaZ7FvhOK6W4l/AUKPEXC+WAc6978n4cCZ
         eOOzbvpOgL20mkWvE5/TU23RZ1w5N9EQQaj9kKOEV8E/SLe/TBcPyfjLqopNFNYxUf0/
         9t1oiE7c11Wsl31p2TUUkMyXRWs19UGltOV7fwfpM8LJ1pjZ2dA/rUWwlB3o9i93POlh
         A/RFWTQhlDzy+pEFi5qilC1ajiEaM8Q02kfZrmE7tStw2ygzF3fJ2B8NbE48VEGR5uyH
         MSPryLGJCj1X1Xkk4b1b5lqXQw8NMBHaaoCEmoFyu9ntfQV8DuVGYdeKwuTIJTARBGsx
         KbpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FwZ8Z44S;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id n4si202879pgt.3.2020.09.01.19.53.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 19:53:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id e33so1798818pgm.0
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 19:53:55 -0700 (PDT)
X-Received: by 2002:aa7:824a:: with SMTP id e10mr1243727pfn.62.1599015234783;
        Tue, 01 Sep 2020 19:53:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 31sm2560666pgo.17.2020.09.01.19.53.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2020 19:53:50 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Borislav Petkov <bp@suse.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 4/5] x86/build: Warn on orphan section placement
Date: Tue,  1 Sep 2020 19:53:46 -0700
Message-Id: <20200902025347.2504702-5-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200902025347.2504702-1-keescook@chromium.org>
References: <20200902025347.2504702-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=FwZ8Z44S;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Content-Type: text/plain; charset="UTF-8"
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

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly handled in the linker script.

Now that all sections are explicitly handled, enable orphan section
warnings.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 4346ffb2e39f..154259f18b8b 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -209,6 +209,10 @@ ifdef CONFIG_X86_64
 LDFLAGS_vmlinux += -z max-page-size=0x200000
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+LDFLAGS_vmlinux += $(call ld-option, --orphan-handling=warn)
+
 archscripts: scripts_basic
 	$(Q)$(MAKE) $(build)=arch/x86/tools relocs
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902025347.2504702-5-keescook%40chromium.org.
