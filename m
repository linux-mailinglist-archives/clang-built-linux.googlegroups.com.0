Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBB7NSXZAKGQEIDGMSQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3317B15C7A8
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:17:13 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id k25sf2293011lji.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:17:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610632; cv=pass;
        d=google.com; s=arc-20160816;
        b=qxiPUB7KZGfNRP1WOoPp1gJFIgZarCE7jzDS3J9kSB/54ei2rJlGB9tMiJbpQvuN/A
         L47AJ76MJNToPLTyn0bn3lxhhf2hhlPRf7BDuiNVeG1H3PcyAGqFlef8RETmhOnzQf2c
         8mbcUed7N3sg7dCw264G6wEvKIBusp8OHK2OdJ6fZmtpI8uRuOqHf2ayvtaZ57PkeUtO
         CoR7U8Zy9Ovuxw4VKHsHvdQPwFRRYfYiGn6xKH+VvUeBSrh5oo/dKspEhNak/ShhP6Td
         yPKQj1Kawd1Q2CLIamMOhvngjLo6xwkD1kYn5XdXag8DeKIjz/hI2DpBX0K1K11VtaC0
         SeNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=mjq5GzgdF537JvgpWBMPxm7ZFaAUBAHuaDsOdQ5FSG4=;
        b=cCrnzfn/cwZ32x/mXCX3vApLb7WZFzwnufQDQ2mM/CO36r0Ch+dff+s6HosRCorvuW
         rMDhBJz6kAAU17kHiREge1dYVRb9mue/8+X7NPNhCyDfYj8rTWWs/UA4Z2uI0FzKhDwY
         aF+jjlvikRy1zQGetWN9251zcB9HFas4supE5MwepzFnTM/FBiAydID7Vvivx4Np0LTh
         UXa0hNYDomHEBPbQgoG/yHAsnsjm18wsHC8IX//255eHfXhP1cp16MkvpmIJqu19FBYk
         8rROHlDNs67GrUzNWra8qBhRCg9ImXMSK6s2mNLCbRxJcn1IsOcFI7/O4zQtYngcZF4a
         vj4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mjq5GzgdF537JvgpWBMPxm7ZFaAUBAHuaDsOdQ5FSG4=;
        b=nas9t9hWdeKPG0GQeKFNcnk5R5Spk0995gv0VGzjAmKGa/S1X42pyceL3rd52uvhtr
         h3fwsAyX+tgbxMzgj3HJO4Dd8Be/hpSC9fb6w28UB5PTGG6/k8wug3e35Ogpsd5OQfrH
         RHgJUg0IuNjY9jkuQX6is6qrnhUo8XowT/J57kdsFaIm+4Yrdlju6Pz4huTvoLVRe0Hl
         u3J27zO9x9bxaO+kdF7fZ5hnEakPkMAT66x5ujrYEAwqGsCKoCasNhmRoFfykITqBovq
         3MfA1iwdv+qv+SG2/qpOux/1TiEiIuZlCZpkoi4WXTewLDnDOJyaoLVKGjmllcPBRILv
         8j4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mjq5GzgdF537JvgpWBMPxm7ZFaAUBAHuaDsOdQ5FSG4=;
        b=pL/TeGcB9ADG7IawP8WHfv1OHoRUAs2n+rZ+V7mRkrk7AGY6bbvOlyh26DKkCWqZMy
         Qs0ujLrAeGmph3wvddXeht9DiD/rFZBxR9D76LWTlzSRXGIU14HTBsEYhcIlYYZ+vTTi
         PY8sSaPWLLdsrdlRU4Su4RtC9HZA2+f8g6CSKBcfM6MADgj4UMTEWbG51YDKLx0Yd2gS
         wkgrhZ13SbyLoYLuyAePjpRNphbrRPx2tmU87+Y8651Lq79GmW5O2E8kl5Qg6byHlXwP
         0mZgTzcAzz6ThDl41JORp+YskzyFQQcwfhle20PInCbt+HlKzY+fAgsAqOprjTISzlPV
         9Ddw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWdBncihG4p6XiPsa1Tda9HE+iFoO1d/j4L1wWqbqYq0udBP8Si
	LYncZIXKhbr4diBjrQ6TZYg=
X-Google-Smtp-Source: APXvYqy0jDdU9MumVBrNXI6ZTC0qeCtNHdQy6BF7nk0hEUiDQSxBbktU/sG6nEwOqXNrvSvvC7HybQ==
X-Received: by 2002:a2e:b00f:: with SMTP id y15mr11977911ljk.290.1581610632778;
        Thu, 13 Feb 2020 08:17:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8544:: with SMTP id u4ls4314114ljj.6.gmail; Thu, 13 Feb
 2020 08:17:11 -0800 (PST)
X-Received: by 2002:a2e:7d0c:: with SMTP id y12mr11930854ljc.39.1581610631312;
        Thu, 13 Feb 2020 08:17:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610631; cv=none;
        d=google.com; s=arc-20160816;
        b=yPIBrPv+waj1S/TOOlcTZ6c6RKJTovbePMR66I589kFqAGcvL/HkuA/sZruIllyq/j
         ocuPd0MF7B0rx8t6j5FddCSq1NrDTsmQrnyFBbUGBM6RavjanfYE9MyANKDmB9bogULJ
         +Q55JXdUM6u/+5FgUaKQww43rY9pBcJKD8jDi4015uDFM3wXEWJFbgyXwgsIt22mJTsG
         F+a0KLj183TdVDqG6B605ZsUJhUV1X1TmOadp5CkRnUqo94T2iiLRvyjK5Zk66iv5VX6
         7ZHRlbMzL9PMwcnd/RQx2aGuFk6pjcjCdtUfB2lM9rt9uKW8xpahTz4+LeTfsWZV/WmN
         mVBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=1dBG5lYVAh1OayQzwAp26KUM087vlkAxA3Ihy8Q6I00=;
        b=eZMzN8zkuScrrzzLCKxuAbH/u6lQuySPVMsGsKje1F+uupK6EPvVxWasRyBVu7ii0M
         DoEIFJTkzvOuo+fe11af7u6k7zpqg2FXBn+RjlJajpMnc7QHju25/SJdLOvSiS/vz8EH
         SPP5kgIwIwbHTWobtGnuVyNccwl6WKfDLyycmzIlGCgWxE9Rd2Dz5PNEC/I7WOgbHn2I
         93hoRRdRH7tkE3rzDU5D1JPQaxZOxNEVCxQrUzmpBGyLfRt/PwLostAiZT3qkn3HnqsH
         km6vg6jiHcw9AwMjXNHtXMkfrk/uRKwngD0sPAGqI+BtqRKH+HV6URXWfAVeZ2IaLoVV
         al/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id h8si133651ljj.3.2020.02.13.08.17.11
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:17:11 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 62B641045;
	Thu, 13 Feb 2020 08:17:10 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D546A3F6CF;
	Thu, 13 Feb 2020 08:17:07 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: catalin.marinas@arm.com,
	will.deacon@arm.com,
	arnd@arndb.de,
	linux@armlinux.org.uk,
	paul.burton@mips.com,
	tglx@linutronix.de,
	luto@kernel.org,
	mingo@redhat.com,
	bp@alien8.de,
	sboyd@kernel.org,
	salyzyn@android.com,
	pcc@google.com,
	0x7f454c46@gmail.com,
	ndesaulniers@google.com,
	avagin@openvz.org
Subject: [PATCH 10/19] common: Introduce processor.h
Date: Thu, 13 Feb 2020 16:16:05 +0000
Message-Id: <20200213161614.23246-11-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213161614.23246-1-vincenzo.frascino@arm.com>
References: <20200213161614.23246-1-vincenzo.frascino@arm.com>
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
 include/common/processor.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 include/common/processor.h

diff --git a/include/common/processor.h b/include/common/processor.h
new file mode 100644
index 000000000000..f9f971cb4235
--- /dev/null
+++ b/include/common/processor.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __COMMON_PROCESSOR_H
+#define __COMMON_PROCESSOR_H
+
+#ifndef __ASSEMBLY__
+
+#include <asm/common/processor.h>
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __COMMON_PROCESSOR_H */
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-11-vincenzo.frascino%40arm.com.
