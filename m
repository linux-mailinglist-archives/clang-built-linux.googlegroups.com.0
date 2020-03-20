Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBCFT2PZQKGQENWVJSAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CAE18D1E3
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:56:08 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id l17sf2340742wro.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:56:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716168; cv=pass;
        d=google.com; s=arc-20160816;
        b=lIsSGZmVaryMCDG1awuP1RdH7FPI00OPJCIzW2jujJ1y+rQ/XCQ2Vdw9YlGuxHdCmG
         S++zOwn6HGG80B69Ct8EsNL17usPsn3Se6yFdwTwPewMWtXrt0OTIZwMLiaiRVqr8bET
         zkl8zP5k7SdpoWlhZNuXWa0SsOCJIMUyxLrmKV6SIFqxZZQp+lhDn3ge/owkMwzdVmH7
         O8OgRKhhriEt+z9ig8BXY5O2iSlJt/LkbH8kgtVmCpMn+PuDEF1rsMTdsfdYY9+QQNr9
         XVI8SfKDDLWT2e92ew9K+W8hjz7mWnOnx9OSHqJP2U8oM6IO6V0p4DwNwJ9sMD/xWjXU
         PoJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=yUX5cxF/uSlKvqB4EhClJKDeYiZIZOqWWkg4PJ/X+c4=;
        b=K+R4BOqdg1qAJheOnyb6FVOK33bnBBI/rOjM1zCJT4ChnuJliLHKbCmY2tsOLlEOF8
         4uWRL/uh2odOOAjrquJ/0i77ppfHTbhqyMRFb6IltKzApBqK/GMZVDF3KFXWR/p6qtk1
         8rUCaHigjRaF96emVour+uSNQHCPhSUHHDP9zn2vyTExfpmYIKLMVXt0tcSl+teEUuJf
         goTcND+Rr0BwokGRytfKkdVjC0iF8fizhWRz7ynORgaVistKXOcHgGzoWsmIjfb5hUVP
         ikr5tgw4+8ndGVAwBj9aLf3ymWgS1fF7hvAsXq7zCs0xO5x4cuY+YV8OFdUb12F/Rkj2
         zgPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yUX5cxF/uSlKvqB4EhClJKDeYiZIZOqWWkg4PJ/X+c4=;
        b=IJDE6gWcJT1zs9NA9W03gWCeLBRr7tNCnWwhIWawP+QmaPpj4LFsRKWO6YUP5gLB9a
         QDqWJiCxQLhVWZca/2qtKqBQwsMWgTtKOFvnxS1hQT55VVJCvXJEeNMITaNx3N570hu2
         DR8F9qPAlR5C3ZKNcWs5VXu4f6ruS9K6pQ95Rt4DED4t1XVu2dNFYDoc1SNGRIkDKnFr
         /TI6PNy9ZLkB0lgkcMdzn77OOSy9AX1LbB4b64oovrKKeuJ7YJBhoVAJAuuCTm8/txdQ
         AaHBuM546SI8DEW/7CpL72qDO4q+L4XcioynN/BX2HZID+qbJCEOCoWLm3Ff8iR1OguJ
         27/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yUX5cxF/uSlKvqB4EhClJKDeYiZIZOqWWkg4PJ/X+c4=;
        b=jCgUoeYjV/dsFppj+IKmxnsY2n7v2nzoASF1rosv9SCU7e6HvlxpTnLm8N0wjOu+aC
         PNKIvZB8OOy1c9Es53F8C09uo/B9jgQErJMCTSW5GGXfHjx9KDpk861t0FPWIBUXOzlI
         BD5Ak62wVHNKbpDgAMFMW1nOA9No/hkqwPL54TbY/LZwUmAicdDO0lWJJjQV8wW5g2vj
         FCw8sXyye9odK/K6lhMMO5mxLRXoaMy45NS4yLssm7LjeNxSK4qTtzf8pIvdGzzYqHs9
         rp/v60+IVWu/Lj4Sq2DGXVA0J7joTCKmMdUJmKv/nqGhDpUrJ7F2A9JAnymflDmpYyHB
         iBRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3VeAxQMJcE71PeTOqYSXZ4yB+QknZc1Bp8Frb2tajVrD+gEg5v
	ykZ0ALcv6B8bkoqE6R+NNHs=
X-Google-Smtp-Source: ADFU+vtB1qF1ElgGuIkdEE6vMRCVAme8NKVuM2SVL6dRHtbBflppxaW6SnBkhFh5QLge53WNNLq5Rw==
X-Received: by 2002:adf:f58f:: with SMTP id f15mr12024623wro.16.1584716168174;
        Fri, 20 Mar 2020 07:56:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:bd82:: with SMTP id n124ls3102703wmf.2.gmail; Fri, 20
 Mar 2020 07:56:07 -0700 (PDT)
X-Received: by 2002:a1c:1f48:: with SMTP id f69mr523512wmf.144.1584716167724;
        Fri, 20 Mar 2020 07:56:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716167; cv=none;
        d=google.com; s=arc-20160816;
        b=qpUPg+v9yOitsiU2DRz6n6OyrW82hwP3sGpifWr1evqqEAQ6dPKGQyPsyl5Ly6LoQ9
         1Cv4sR95kICfGwbyoYi47k5vcg5f7sFCwz8b2Cms2V+ihu3x3g7WLOo6UcPeNRz8ysnV
         q1ExyL33OxnPwMxeXlYDH8Jnhm2Oq9pRoz+yU6iQBempP757E7aCNg8P8kDaPxsH4fXX
         Y5aZ+rv5nZyyqQYhw1R8g6TGGma8+CXOSd5sACw1Eu71LNhw+VD/Mvnxji2+Atvfafau
         JOXUM/F2kdnuMm8qSIHuJzE32s4eU4+3SYRmyXdyGbSYpDrbo/W8RhCOrsmprPJEEcfW
         V+LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ndtJRAIkIsjQD0vsWaiaLE/YfylcdKAjKcBDdCfbPSw=;
        b=tHYTeC04rxlZDr19sBQn+3loNH0Me3fPigo5VPFh/mrITByRNtllRt6KotuH3KNmoZ
         RmbNSt6UqRpfNqKMMBASyPC03yeV+hTZeb1tEG6AN66A6iKzErPPwR7snuI5Q/H/63/t
         ra+xz/qOct0FXZVXoX1JZWotfLp8RspflDZ6cdsIn5ajxVd866kB172Fguy/GrVQyyXQ
         G06sCJJUxYYO/NZIeeMve7uvkDgyFffJcl4qvkq73ZqYMJ1eZ4jW4w0FnE6K7KLNIJYx
         HQhcbmlHEtWhagPYA0qhjkOJhrG1ZhiMu8enDB3PYok9vBJSDc0k8MlgVx90Rqp5gkdU
         9rLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id x12si390027wmk.1.2020.03.20.07.56.07
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:56:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1330B1063;
	Fri, 20 Mar 2020 07:56:07 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0218B3F792;
	Fri, 20 Mar 2020 07:56:03 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v5 26/26] arm64: vdso32: Enable Clang Compilation
Date: Fri, 20 Mar 2020 14:53:51 +0000
Message-Id: <20200320145351.32292-27-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320145351.32292-1-vincenzo.frascino@arm.com>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

Enable Clang Compilation for the vdso32 library.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com> # build
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/kernel/vdso32/Makefile | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 04df57b43cb1..3964738ebbde 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -10,7 +10,18 @@ include $(srctree)/lib/vdso/Makefile
 
 # Same as cc-*option, but using CC_COMPAT instead of CC
 ifeq ($(CONFIG_CC_IS_CLANG), y)
+COMPAT_GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE_COMPAT)elfedit))
+COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
+
+CC_COMPAT_CLANG_FLAGS := --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
+CC_COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
+CC_COMPAT_CLANG_FLAGS += -no-integrated-as -Qunused-arguments
+ifneq ($(COMPAT_GCC_TOOLCHAIN),)
+CC_COMPAT_CLANG_FLAGS += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
+endif
+
 CC_COMPAT ?= $(CC)
+CC_COMPAT += $(CC_COMPAT_CLANG_FLAGS)
 else
 CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
 endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-27-vincenzo.frascino%40arm.com.
