Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBQ5CRHZQKGQEMPLBWZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4297917BED5
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:56 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id i2sf864858lfe.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501635; cv=pass;
        d=google.com; s=arc-20160816;
        b=crmwqCRM9lZShRuThTHK85ACImkEatZsCuLePExYuoHL6wtYFmM5xX8/uOkGjNoXBW
         +VPmmQ63OtHCNRhx8eEtt3kHsg/0XpOJ4NDJBNifkgkYCzvmOT7JGk1Az7zVIZEWdRcv
         9V8xwG90VDTb9UtkwNtQh1KggnKPRRJ1jBI49IXdm/zl1eKsIWRifrkvvCr68zf+Fbjt
         Ldjq12blkpWGKk875HM6pxWtLQUnKBsFxXfdsbjL1eHA5GgrsjOQY9LopOxs+assL+fG
         knD/rtfYa9Fl94hxy8lmro35iKuX6VFrAzd/VAPM24xIspQbmpD7dRxpqnAl0cPyCXAb
         RvTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=iYcd1AnMKgivyHhqNmkbE6dY19sEkTD4OAhvQB5SKe0=;
        b=reRVFEHUPROMgcE8z1R0e1FcWWQSx8BmhmkilA6Fn6iJHI22V8qq0DrHlQUOZaHzxO
         Npe+5vSWFJWlIyJypKQhQ451grNQv+epib2Jj/hyLUNVMWdZPPJHjpTi/153KqVo/1CU
         R8REascXzg5gWQtZqbc4V9PDIdkA7epGBSQXZ66wCkIZ3ROGp0GOxhTJsUc0WawZ841u
         a2rSazKTmPamCiJA3U1vvqS2jDhOD7vx7NUEInUFrfjrLKBTcP+uZsxkJxQbLDRQuoHw
         gYdrzPVCiALbj6JfNXsgZHJiI2I5Wb5JPqVa9dyQTc9ApUTStVT/4N2aVmEzPc+jQn8i
         YKaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iYcd1AnMKgivyHhqNmkbE6dY19sEkTD4OAhvQB5SKe0=;
        b=mjbXV1XGhnrxU/I3LjfVZPuiqzB6+R/3Us02BtRVKLXYpONULx6fxSEhxdRuLAGMnQ
         i9TgbqvFsBce3Jw08c6qVr2HHTg4BrgZg9BKM5HU/Cbx9gu2OszPPBMeZgbZHra18ogy
         3l0OaX/5/10Va8GBGqJlgrmA2zmNMdo0g+mcgbE15H0BahY5oB2pMm89Vp91FcsSpNqS
         E8FwBGIYIzojvr7ti8k1Ok6YKUQMtV1AWTJp5hHyxw9TslUe7HMB8PqG8VJ2iTKOiLTf
         K40YUgdN3rejvr+r9nTO6csPSxVS6vsMd5P7UzGwZlKP9K787CFi794+ryzDq0XV0nQT
         cPDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iYcd1AnMKgivyHhqNmkbE6dY19sEkTD4OAhvQB5SKe0=;
        b=J5JnlAyTc1x9FCN5xeTNSgLKInYr8WintjbTAMy761qrfzhwaJxrxJCAc5ZU9rQCWI
         pr9d4siVBO2nCiDVIm6PEvx4lNItPy5ke7i84l+peOcwDabA0dNywONbRkUPhH6XdCfG
         4vfjc+RIqmUtn0Wbd/0QpgdZsXNSqnTSEvNYr0uaJbIQxCSNDxRIhUvv2Q/YDnImvGXd
         qVV2FGy4mjCyPToGTLNXLWZ8ioJUIRaVVtefslbp0A4A0YxVmxrvQmzaOJUQ4q5pCfTl
         bvNHjlQDazGP0G72VrPxXGGoNImSxI4i0o1ISQKDIVuDPRy+YAe6F1dKbR9BlEVLrMx5
         +fRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3Z2/Mhig7/8LQYs53RMYfutCtBY45lXOBZ14yTcy2tAgfRJ7Zg
	/lmu9XzKMNSWXYBITmiuoTE=
X-Google-Smtp-Source: ADFU+vsbCIxKP+9fkZQeAXllL0rOea7BMmIaPfT5G8a0mW8PRLu8ldMz02VVxx5uzjDy9FSPgZTl9A==
X-Received: by 2002:a05:651c:2046:: with SMTP id t6mr2135058ljo.180.1583501635813;
        Fri, 06 Mar 2020 05:33:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8718:: with SMTP id m24ls475384lji.3.gmail; Fri, 06 Mar
 2020 05:33:55 -0800 (PST)
X-Received: by 2002:a2e:7d0b:: with SMTP id y11mr2073339ljc.95.1583501635210;
        Fri, 06 Mar 2020 05:33:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501635; cv=none;
        d=google.com; s=arc-20160816;
        b=Dnq4xbTR0p0KUPNzblzDn8Aujk7eLtYKQkoDtilmNaaHxsymuxNIqmra4BVHRkAlGz
         3QBnB59tkvW2x0aWOBDJurKJIexSNYriLgT/+zqlb8oBznla+wALtR/pJZsrwMSh3+F3
         s8ylZQFE9tiu6pH6x9Vb6/U72qgvbWdewGvQOs2/54fm/Ea6IvTSKQPSq7bxHqbvoyRI
         DXHYxaKJF1LXivqzViUgz5mzruALxb67Z6Dn9AKWFLBGCIqKoV2rDqAuFVI0iNYOeh4k
         bf7nyukQeYEvt5viqA0mVUD8GLZxSMXE8a1q+O05SzipOwab1o+79EsUmC33XzlI38i1
         Y3/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=UWeE3rEh3mpdqtt6WBTDZh5KiWM5YPWG2cbq/WP2MBg=;
        b=MFcG1FBO4+aKfIFkQJpfqjBC2riV4oB4B0c5DipB+L5JdU1i/e7UE+9RNrQombpAPs
         xL5pZYG+KjhwOO5wlgv3SVGFQk9RiBDJ9eWOFCRTO+xGZecKQMpdJxtDN1y9OdijxkUf
         XaM5wzPHoeS3RQXZ0usPTyujndO9BArNtyHqDI0IYqD/XzTJgtpftRxlb3nqivEy1gLN
         5IfQkWllWKfOwweMG9z09ZnwhuHtC/aK7vnU6B0PZ2A7MLdZAGp2vgsghFUhEwQW8Oes
         eTtmKHThSLtixI3H89cegqazTNLp+V9QGfJnR1kvn7/p0RbhFLQHlT/MsPfunPaWMRch
         5phg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id o24si128505lji.4.2020.03.06.05.33.55
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:55 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 557BF1063;
	Fri,  6 Mar 2020 05:33:54 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 79F4A3F6CF;
	Fri,  6 Mar 2020 05:33:51 -0800 (PST)
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
	Will Deacon <will@kernel.org>
Subject: [PATCH v2 20/20] arm64: vdso32: Enable Clang Compilation
Date: Fri,  6 Mar 2020 13:32:42 +0000
Message-Id: <20200306133242.26279-21-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306133242.26279-1-vincenzo.frascino@arm.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
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
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/kernel/vdso32/Makefile | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 04df57b43cb1..650cfc5757eb 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -10,7 +10,18 @@ include $(srctree)/lib/vdso/Makefile
 
 # Same as cc-*option, but using CC_COMPAT instead of CC
 ifeq ($(CONFIG_CC_IS_CLANG), y)
-CC_COMPAT ?= $(CC)
+COMPAT_GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE_COMPAT)elfedit))
+COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
+
+CLANG_CC_COMPAT := $(CC)
+CLANG_CC_COMPAT += --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
+CLANG_CC_COMPAT += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)
+CLANG_CC_COMPAT += -no-integrated-as -Qunused-arguments
+ifneq ($(COMPAT_GCC_TOOLCHAIN),)
+CLANG_CC_COMPAT += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
+endif
+
+CC_COMPAT ?= $(CLANG_CC_COMPAT)
 else
 CC_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
 endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-21-vincenzo.frascino%40arm.com.
