Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB56UV3ZQKGQEVRB7DRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCCA184B23
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:44:55 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id l8sf8499180edq.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:44:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114295; cv=pass;
        d=google.com; s=arc-20160816;
        b=z8R9LG0I7u5OVsLjPCP1oqqOp7VsMhihzytQq15//SXFJugPA5+t4mSxkx8p0KYbo2
         hDt0226y4ab+u6oZC9YFdUPahvUq8mpg8H8BwqlG9cddighdIXrslNVlouTsHq/sz+sM
         uvSoggJ8e7tAfLAPmb2rXh/wQhisNCQBKTRVkxNz96Py8IYfFmVaomxm2KxAeSLz0y//
         S4leEwAG798/JPNZOLjJD7epEAB730liz2jn6o87q4zVyZiJrUoWN89XcDduao7sET3X
         yl2I3F+3077mafYnucvgcC6QLQKkSy0gKVTjsCe+enYYLX2NOoM5Bukcx9eLy9h2R8WH
         xwSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dEZexenrrjAgfxglt2K4VwRgJkvO6tzBLED/hfm9t8A=;
        b=h4a+LHqoi8ACUI/6GSGWb0iM61/phog0f3yyJK2uwNCp8Brnhiim0XmMnR4AgwUolA
         ZGj/USRFzZB6dMnTErgTDEHu7TlL+j0JQgsjUVZ1GPjrAPH79DDICSxfIrb9fsGAmwjM
         dKmGRuUueZFJVbWMJgduGdPOnjGEDNy9N4P9tb3XtKXR5uCiqeUobIkyoty6xaskOSdY
         RCBflTvTWgYC/sBCpBjBSEesBOlcsMrM0mrrK020brHjgEcEKu/fTJuA+gGBHvT3NSMv
         tS/tfZO/zPnNsmQYOdvXrTEnf2G1pW8XVE9jbTdl9XuBZ8+2cl3PD42eYcOpFy3xMMh3
         5TPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dEZexenrrjAgfxglt2K4VwRgJkvO6tzBLED/hfm9t8A=;
        b=BAtcS2QW5/4GGZ63S2z4gdmV7LsfrjkNj3dPrD07CoqRZldwk5g0eeo9RzPlHoZt3A
         STI+VOCUKW1phRfV+jUznQomFsb1tOZqjTxYbA4zSr8lIw+/Y0OQHuy+uRJyUgeUqvwW
         MuuyB+rLAw6usTaHp/4LTG7hTdEzjelwff8yeL/edTbAzWTBp9QMuSTKgrjzAx854COE
         sqaiUpR+1chzWDsGbBrDNTcA9oxJhiknASeRW8yf5G2sKjdZfENxrHCAD9jBiTFsmrmI
         7H5BXMHcmxokaP8KFSjT3HwJyL7hNVNEak11+bq+1z+dtpIdzKVt/mtRaCv9gzlzDy7x
         TwWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dEZexenrrjAgfxglt2K4VwRgJkvO6tzBLED/hfm9t8A=;
        b=qhSRJu+KZxQ1nThNk1wnsdKEh+YXZd8MetLbJAZxsb8hKMe0GeE0ee2YwwDBKiQ/Pv
         TIcaVtqz+K7M3fZqm6CGekGaqnUrLskrrC6+ViaTJRWlW8DaDDp73HZoLrQiurzK9JS8
         Bi0d+JSLfgD2R2oRWcvRK6FwPWdqJ7nyRHdTm7J1Smf53YHJDXckHtdsoZhSFffWn7Id
         a1mXcTCgN4P6cB6s2QlVgLfgCgll+TooToEA4mlxqljZ6pA9tmVrRYClPR6Az/buVTTK
         0/cAy6OedIvEVRfOuTP5jAbogJHH8h5AVwTgUXoXAY+OYg5Hz0G+o1i+0XiZbNRZ5tLb
         8d0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2wtEyHkxhCsSkMIYLCJkFvGuYj9ZCYVLLW+fQ/DdyzieR+GXGJ
	O+nu4DJNMwh2qFnTtv8l3jQ=
X-Google-Smtp-Source: ADFU+vvYmPXA+M4cdS8XyhmdZlMlrT3Yy7J1LRiey1KM4EPFbibJc/curTcrr5CxfWIUuz0nezseQA==
X-Received: by 2002:a05:6402:78c:: with SMTP id d12mr14279744edy.203.1584114295199;
        Fri, 13 Mar 2020 08:44:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:5a82:: with SMTP id l2ls5749629ejq.0.gmail; Fri, 13
 Mar 2020 08:44:54 -0700 (PDT)
X-Received: by 2002:a17:906:7d53:: with SMTP id l19mr12404336ejp.55.1584114294217;
        Fri, 13 Mar 2020 08:44:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114294; cv=none;
        d=google.com; s=arc-20160816;
        b=aqNGBaKdPyK5/gzjz1PCsrCE+q5z0UARaf51oH15w64UuaTazLWIbHkHamFYCq1rLV
         uFfYyO7QxNVqi5CgJkqMiwjAjCCGabG7TMqLAQL/MMy7MAJ2Fm4nyvEe3f1tvXBSAroW
         69IskRCT76E9JCvmoTuAFW1jCM6ZHWQbALeQhhfbdmltz6TwAv61WfkRCdFKiQSWHO6d
         C++/513d/WrI2Qkke2IydbPtfsrIrZlS6Bhe0+XEPVSKtD++bZX9FNP597ZfDeqoFoyV
         IL3mWePM6bKsBYxSFLrfT4Kzn7VCE9OfSwHm3PBCZprKxLmGPZN3XnNrKF+Yqjhf+MqD
         2rZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=s3+ZBCdfB0gUXHkjDCuXi02pnCgnP9fL2S6LLjteV6k=;
        b=hkAUCYWyNJfFn67XoEfh0Rb6Pd3yW/Lf8DZIYXIfa3Fp9qlSQpPjHdkhQmC1hC5euK
         DN9/EdU2jr3WQezNPkDtrY8oqy2xr2DdVZ9v7dTeqL5THb3id/HEMSvT+jmYPnIk0MF6
         kIxyzcEuAqOVpmYffy3MxFi6mswVp2+kXQ9jWiLctGzCj13kMCv6zBbfr3mqNLkpkeA5
         Olc/Yp+pnB5qsG+5DN8/tqqLumX4fTdm1Lz7Qn5yLdArajj6IfKBdIz96GY4ElTJy9ek
         ML1n4gJaFc61kaMIbif8uFJ/dc7qtnHc3TmNX5Ta7+KRAA0l/hvT/x+ihqB3HtF2batm
         uSTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d7si444848edo.5.2020.03.13.08.44.54
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:44:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8995D31B;
	Fri, 13 Mar 2020 08:44:53 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 893973F67D;
	Fri, 13 Mar 2020 08:44:50 -0700 (PDT)
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
Subject: [PATCH v3 15/26] common: Introduce processor.h
Date: Fri, 13 Mar 2020 15:43:34 +0000
Message-Id: <20200313154345.56760-16-vincenzo.frascino@arm.com>
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

Introduce processor.h to contain all the processor specific functions
that are suitable for vDSO inclusion.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/vdso/processor.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 include/vdso/processor.h

diff --git a/include/vdso/processor.h b/include/vdso/processor.h
new file mode 100644
index 000000000000..fbe8265ea3c4
--- /dev/null
+++ b/include/vdso/processor.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __VDSO_PROCESSOR_H
+#define __VDSO_PROCESSOR_H
+
+#ifndef __ASSEMBLY__
+
+#include <asm/vdso/processor.h>
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __VDSO_PROCESSOR_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-16-vincenzo.frascino%40arm.com.
