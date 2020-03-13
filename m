Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBTOUV3ZQKGQERRKJHAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7058B184AF6
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:44:13 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id g26sf3126431wmk.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:44:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114253; cv=pass;
        d=google.com; s=arc-20160816;
        b=SGykf77HzqgbQZG30SqWYiMyjxhoHfHlOV6naV+9gGlX4B3w4yLJh5EzsofB17o1a6
         /2QsaaB26Y1mgiUEi69qgNVvd5EB49auY2Bsff/R8TZXcow9KdDi6a/yn9a85IojpyUP
         cMWylGnNqv3X7qHB/61C4K0dh5B16DdI8z5LSRteJQ4F1dNfh/FkHNnIwZlFrcNASvpm
         qeYDtC9TFMlxoPzjXE7oh+Ofog3VMlQTSvuWj0GAQ2i3/hWEx9apzh7xr/ay+36AV30O
         8uwf0BSm01oxmOjcfNWEP9UgBJPgyDpGmQ5v2hGR45TZ9b0Vu+gqxufkan5O8nF1Lk3D
         N8BQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eYbz+aDBGxHJ36nF7np8a3qvUFbTLqKambfAvivwv+c=;
        b=J3jCRK5GOR8iVWsAhbPB6/pQWnPAXW+jcQq0PP2GhvB09WBoleJybuEZWEgdCVIuqy
         PVeWZmuwxCm2A0OJe1BFx9pHfDude/bUlP9tZz7XOlyjsSj1bbG0/AtY5ULMg+6NuHaE
         2ca9PW34MEazdANXWWPeZ5KmdG0KUwUayKimY1Ts4jI7hP4NzoE8QcbtbKwIThjjpsv8
         +Mrea3tIKtMsn80fP26tEZOmZ95DPDo4B8WfY+PNOQYfs8z8zDa9FSznPIBgIiX5NQy1
         QRp6CjoA8ZkaS5Ylcnh+rrScGzJAjac3L5jg3Utd9p9SfGdTPEMDQRhqPjT0jkfCmHRj
         KujA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eYbz+aDBGxHJ36nF7np8a3qvUFbTLqKambfAvivwv+c=;
        b=JMHF5pW+gPHHVy97jEnmbScvoH+JO6xCP7wXufHm2qyFMmBbFZO18kCoPlNlYhUxi2
         pj5pl3DR8sTs2PVc7mECqixUZ9GeoBQod5Cd/2us6pMzvhxqako66qbUE4c+0ir1UO52
         iOJjuctVT93/7JZQykEkU3v8pnKb0zQScGNA4vzLRpDzzC1CAt105vXBc9udmmqkPJKy
         9pYE936fXEvKmA00nel4kyXgGCxmWZaXOTdmOH4/zD6GvAtoXkg3f5zMtOauhb3ps9r7
         2lCN06A3SiUAshh/+zXIQH63J5PTSYUCcTEMLLY07r0AucyLpC7nTtSm5oyF1VBlY7c4
         Htuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eYbz+aDBGxHJ36nF7np8a3qvUFbTLqKambfAvivwv+c=;
        b=pFvA/wVMtW8ZpsUajX9I4YVdL/ORD+IjHYjteCXyVrojP4gD43G8ZzK8S4yHFEoygm
         vQCN9q1euWnTvBZfupVrIq4qtUnyBIKiU6lzBgXlVEuwqXT69nlbRXCfAFsoBSowfNWK
         RGK0TZVoey6ziaqjmPbJm+GHeOBjizTuEz6iFdb9yYHHzCGWhZoW6k40pX8GijkRVOfZ
         09KTuQJScA5lFtQZ4aNqm49qdjf2snhuHsq9qg/F/zO/T+OP5JsZVSFYYKjudelAes2H
         rQDdQK2cnTaS2D3Dfkv3kF+sQ4eprYchR7nHkTJ72+bSuUOesq0XlRzWvmnp9yTQg7Fy
         Zolw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0k3oD7LuzTI5+7apuWJ2gFk7DnTsiOwvr059mPQEsnNqb4bo/N
	lcHW+oPWeNJdVCECkX1Vtx4=
X-Google-Smtp-Source: ADFU+vvoIRe1upkrHnsMAGLXlCMQNh0yoFRwfg5goxQuhMSgpe/xgXw/GW2R2zEOR5BWvsdkzkWAhQ==
X-Received: by 2002:a5d:6081:: with SMTP id w1mr17848677wrt.373.1584114253171;
        Fri, 13 Mar 2020 08:44:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:498c:: with SMTP id r12ls5090784wrq.10.gmail; Fri, 13
 Mar 2020 08:44:12 -0700 (PDT)
X-Received: by 2002:a05:6000:18f:: with SMTP id p15mr19673840wrx.149.1584114252643;
        Fri, 13 Mar 2020 08:44:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114252; cv=none;
        d=google.com; s=arc-20160816;
        b=0x3kFDiF80xCg9CI3Lw+NDZLFip9VOaRyygw5myP0CpVpmPIhtEbWqjyehL7U7whTp
         y83Bmg9B4ELOIYwcAz0Ee3oAswaxJW+ZFsVDK2zXebkpaJEsISj73mAeFJ/leu4FEV8e
         pQbkIFSlH0/vrPCYBsk0K4CqUEEDUaqpskQBJDnlgCWt4c6QX1yNdR5mMRSUAEpVF1Re
         rYANg2cCRugJlQAXKQ4ogjwZmm3alqB+OKxC8EQqSCXRFlbxKAUKyoltUZwrjgJYOmn6
         RTHF94Xe7zV+E619S7hVGRrlm0KY2xVtWJVzoS0vUFrmAzOKnRtfEW8nHD5Tfo7dqIWw
         hOSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ICsWyN0LjN9OUpR7Yvv/gr9ud1Xpvj3nUEyUD77apIs=;
        b=gaNeQSWF7/ISlFWuprlTZPmPO0Uv7ovK8rj7rxLre361pQEeXeM3xH7BPz176YMlv8
         2ZvifaJnO+5/bFxB06ONywqQVhmvs7ItwATIHXbuyJi9k+ca8du6kY/XlKG2/nieM9pm
         SKIc6o01hqGdSbwjHrRAhU4Epji52ASOQ8R9Pc9eSeLflW6/5q1uqW5CfzWJivylVMK9
         Fqxhq/ftb6f8JjOLqZ9wh5H0r8/NRFEC1zPAnf5VLmku8cFr5Tgglpc8j7p7IAApZ8yl
         61GsmU1b8SDbYdKjq3kbnElCMVlLDpRJtAjHNO4ibZay8C5+8yYQjAJ35k/QWvyLvILV
         XD7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id i19si560822wml.0.2020.03.13.08.44.12
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:44:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E53D31063;
	Fri, 13 Mar 2020 08:44:11 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC92E3F67D;
	Fri, 13 Mar 2020 08:44:08 -0700 (PDT)
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
	Mark Rutland <Mark.Rutland@arm.com>
Subject: [PATCH v3 02/26] linux/bits.h: Extract common header for vDSO
Date: Fri, 13 Mar 2020 15:43:21 +0000
Message-Id: <20200313154345.56760-3-vincenzo.frascino@arm.com>
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Split bits.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/bits.h | 2 +-
 include/vdso/bits.h  | 9 +++++++++
 2 files changed, 10 insertions(+), 1 deletion(-)
 create mode 100644 include/vdso/bits.h

diff --git a/include/linux/bits.h b/include/linux/bits.h
index 669d69441a62..a740bbcf3cd2 100644
--- a/include/linux/bits.h
+++ b/include/linux/bits.h
@@ -3,9 +3,9 @@
 #define __LINUX_BITS_H
 
 #include <linux/const.h>
+#include <vdso/bits.h>
 #include <asm/bitsperlong.h>
 
-#define BIT(nr)			(UL(1) << (nr))
 #define BIT_ULL(nr)		(ULL(1) << (nr))
 #define BIT_MASK(nr)		(UL(1) << ((nr) % BITS_PER_LONG))
 #define BIT_WORD(nr)		((nr) / BITS_PER_LONG)
diff --git a/include/vdso/bits.h b/include/vdso/bits.h
new file mode 100644
index 000000000000..6d005a1f5d94
--- /dev/null
+++ b/include/vdso/bits.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_BITS_H
+#define __VDSO_BITS_H
+
+#include <vdso/const.h>
+
+#define BIT(nr)			(UL(1) << (nr))
+
+#endif	/* __VDSO_BITS_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-3-vincenzo.frascino%40arm.com.
