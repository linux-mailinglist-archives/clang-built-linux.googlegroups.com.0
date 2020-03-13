Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBGWVV3ZQKGQEQMPDRYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D07184B45
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:45:31 +0100 (CET)
Received: by mail-ed1-x53a.google.com with SMTP id m24sf8469808edq.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:45:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114330; cv=pass;
        d=google.com; s=arc-20160816;
        b=PoUrk9Ab3q7INiownHC1BPIhda5Zp14WAyYn0wQdvJJg+74AvTdgBGxa4bFN0j43nw
         ZCcoVmFJ+84rM6xvJnO8ADyZHXgqk4G7DkUgNBnLVz6tVN3YuEMFVYwaW8CxE5kBKwJN
         qqa8hmXjuGq4UOx9twJYU7s4zoFL2BxnsxAaQ9JpJXftEzR4dUBA8xKln728sWSJIgG/
         tPu8NFjWwUdZh43mkk/VPK8w21ZmnztbceTnXc/oFq1OB7+8FLxejcFro8mOq8MPaFYU
         DRq1VxjQwrhB/MqsyzTsu/bh0K+ykE/bU47mx6vm2jtqV0Q9J4/1NkedqzHyyEXWOpAN
         XBdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9VFmMbDrjSIIBnM8/ENNqzv7YSwU6vQOjVwrNUTUA+k=;
        b=CuVyG+pmq8NLBi4UZRhFD3cFgBHKXBo3tBXHHKXW7bWShIyptGXh3mQC/Auug+R/eO
         XLVUqNcdi5B+GmQAxPRsRkP7SYhWwGm5C3jYC3cIJ7dwC4jWiGTfLvp6gShF0I+T2ZzS
         NwyO43DK7txCFBp+7K8XC3fEBlgstYDs5Rg6mGgz9WlMwxAVaLr4sv0JuPBDx4yA9/Rr
         7cFQT4L7aPkdpUpR87G8Y/MVwP8g/8I5p3Tv92iYyIkAtglY0eUgerdICqESRpNxazSd
         bobAktWSSV+j9lO9b1LDcC+VbSmJIXxR+0SRl9OcFxEUqx3XvXtRrZbe4IHn4Zbr39Xn
         n51Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9VFmMbDrjSIIBnM8/ENNqzv7YSwU6vQOjVwrNUTUA+k=;
        b=fRSl43spBr/Y5MqZnxNbZjxyKZ/y3CfFJiI7vB67IGO7kOXh7/UF9GQVmOo1jPEOl3
         mKWiyBLCYATnYV4klZABHB912P74dvia210s6Ri7eqSN7ixWX5DBzWfj3+gOQyVBJaII
         bV54LhGMx7CznAG/EyjEJr/AIieDuXi53v9YHyO6ARP0iLvPgd++a5jHGbmdWibvGUbj
         vBhgTSs9A2ATMZOgIjMkkOpb7jiP2i3m8gFFyPmY4SIZ/BOuimYR2sfoCepuCmVRurk0
         5qLh+2RHjHT+CdghRdsAL+VC2STJ8VRjyGzf1DMuEEfuKNpgCGs/zaxYxUlji2kJO+iJ
         NW3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9VFmMbDrjSIIBnM8/ENNqzv7YSwU6vQOjVwrNUTUA+k=;
        b=THeYWf4cb2/acF+lddu8GxMDzlNAeWYQ4DMec4Rlccpf7INtOoRCIXr80zSkjHZEDj
         iIWwAE941tXBRtbXPDtf9nVeVmnqFI2mBb+lvWDWhIWO049YM95fxKTwlgM99NurWqBq
         Zj76SViyjXpohrETpbs1+U3mXgRv7DK8UGuuAcfFd/rwmE3NNWlCZ29IfYEDvx9s+DTV
         TteEVkyJjZFozO+bcR+72toxp3qQznXsq+18oTw4sSmyLBZ3H2bIwiRET1ul90DKN2QA
         l+G1pZm9ZcRCpgxpChzISJXKZmAt4SpEgKpoCAk4xSj3gg3lB4/lycU0PwmsyJ5Vv066
         kjxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2oWBbtaWKFGLEb1rzfLyO+WgLemVIH7VC+JDNJREp2ho0hm8r7
	LejsjAJ+PTBl/imxsT9YLN4=
X-Google-Smtp-Source: ADFU+vvJ1f8+ANZ9GUg4eRrGqv/VXL8x+tGeKNQ/YJvVLqfUxnnLdNsGAQrMPQ2xZSItZ39YQhi89Q==
X-Received: by 2002:a50:f09c:: with SMTP id v28mr856722edl.46.1584114330785;
        Fri, 13 Mar 2020 08:45:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:584f:: with SMTP id h15ls5786894ejs.9.gmail; Fri, 13
 Mar 2020 08:45:30 -0700 (PDT)
X-Received: by 2002:a17:906:d211:: with SMTP id w17mr12480529ejz.215.1584114330294;
        Fri, 13 Mar 2020 08:45:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114330; cv=none;
        d=google.com; s=arc-20160816;
        b=i6uXzBbnF4dgb0Yw/w3Rofr1a6RiKgzmDlx6LbOtud18gFV/xXbrGAcxDtnAbwpBVG
         MgYiR6DJZdzrRej1ocFemol7/t768ZahuiviDvgG+y/yk9hSFMGe+wLhWOq/aUSkHDlM
         g12uRwsGELaFDlDblTjJD2u3CXYPtQ7QGA9NLb8QE6/LA7yrS+GmzSvgPfFP2dlIqgXE
         qJGg1GSxHkYu7WsZ1oOd5Dd++J6hDEqxHT782MCrBEgkcWysbRJ+q8/RWdW/YJicJDNM
         tPhrXmdUCB4cEz6RIrTmx3yk5T2/CMus9Qrd7ed/tbl+92f0hZyuOuuuG5eljF8oNXGl
         EXgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=b7bhnkzbC+17OMzkqH/Ovke5K4m++EdAZbGrKRQ1p/4=;
        b=yVTMZIXoajWABm4Df7Ur6K2b5oWhX80ZfKapiPNbRiwA/8nT2AfFHKGAfiqY7nussc
         JkA3WI761S8qc8YL7L46XllqxiCaDyDj5ANgjNU9Zus7b4A+3ZirJwzIpmEXOUrf1UPW
         doXHhay70JbZIKUx0c6AaCpera5atXUJH/6SPoNplmj8a8b66PDuLIGlIxUJXu7irCbu
         phJlh0kmtjlHej1oZHgb9JWggmPUszgcO/RbTgmSxrKmbGLX/D6vBdXi1ERFhxES6RN/
         8Oa84Q8/CNot3LkY+KtMKYjv22vh6MXKHiFAlns51C9ydaqSfq9zD6O56p9iqJdEUU4+
         7lNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id x7si264705ejw.0.2020.03.13.08.45.30
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:45:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ABF8CFEC;
	Fri, 13 Mar 2020 08:45:29 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8127B3F67D;
	Fri, 13 Mar 2020 08:45:26 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>,
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
	Will Deacon <will@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v3 26/26] arm64: vdso32: Enable Clang Compilation
Date: Fri, 13 Mar 2020 15:43:45 +0000
Message-Id: <20200313154345.56760-27-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313154345.56760-1-vincenzo.frascino@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-27-vincenzo.frascino%40arm.com.
