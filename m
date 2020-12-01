Return-Path: <clang-built-linux+bncBC2ORX645YPRBHPPTL7AKGQE545JICI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 521612CAE91
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 22:37:35 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id u3sf1776295pfm.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 13:37:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606858654; cv=pass;
        d=google.com; s=arc-20160816;
        b=U5OsfPc7BMRtBHqBwtaBxBZVJWrUzskY/h1eyR0fFaoWgfyGI2x/iuWngp659gTLnC
         IuKQTyfX0Ukf5a1Fo9aIGB9jtnJ0/JEKyQO7xcMMMmNfQrQCAw+5AqznEgnazmkpnuW1
         OpGFxAE3sVlO+uPiciEfL8YB9keHQrkFIRK/2pdkEWnJgiWvNQYmaZQFKo47joEKmF57
         fwSHnjOf0HUgG+wNX4tCDEiH0wWRFuJ1/o3aO7tUOBca7J5cbx1eGl1dsVt83kRvyGpD
         ggbVE6MY7plKn+j3U2UxgnqkI0vqUdUrmZupMaaxT4MwPNSMGBsFtuwBLzRyP6CEa+AC
         +Jww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=iZLp30g3qJ7vTqEH5sEvsLFycaPkvZbMQyQBw3yQBn4=;
        b=shpBUU2QJxaoAcUUmQt1rSfSKmnKClZbkcp8GiaInoFzJ1EJerr+c41SgPjGUL4anD
         hOIrjl4tlnXCqvT+8A+tmppz49fSpU3rcyUOZEbqhIBF+Q9MjpeavfvZKCnRszFwIk96
         Ww4Y4xZwyH+oKToJ0AVFHQTQo09H+ImQyxl/rCe5asxBKzWO3ERxSyMsjPQhYXWP0i+t
         OrCFG0oc6G0V3mPaC7TK4UseOEdrhSzK1mHthtFr0cF71iUkNPUcGPh5KMfCy4k50krt
         MqTeZpQC8qA9UV8dWthu3aOAxzG22jdgsvYIPWFqrYCuIDS/SnJptuH/lWXeiArM2WTK
         FZKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="gzp1vYR/";
       spf=pass (google.com: domain of 3nlfgxwwkacszhtpavschulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3nLfGXwwKACsZHTPaVScHULUNVVNSL.JVT@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iZLp30g3qJ7vTqEH5sEvsLFycaPkvZbMQyQBw3yQBn4=;
        b=afbSc5N82+/Xl6wQ08M2miRffDaFT2jeBOuGntwIY8Z8jd9PuaNKlglrV3RL2R4Gy/
         PQbmRDIr+a3mINjzzUuXzIcX6SRXpCd65mIO4Oz6Z/VMvD3au0A9osmkqI+2y4a2OjkF
         J88Aqu/rvT7LVHQAnAcI8zWFtJz3/QPUK+VXrRDNx5FuEdphak5JdYvOjA3547CG2CqX
         lKuVXtIVshisUlkfHhK73bXcrzdL+rt7IdxSXeMh/q+V8erVw0ujoWu6geORjT+pEnYY
         bPzFhoqXzScFDDVlqHd2MAbxSVNu5vTAHm4Nqx2yodDT0V3OkIQDuQG/rhtBlBJ2qYGA
         sD2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iZLp30g3qJ7vTqEH5sEvsLFycaPkvZbMQyQBw3yQBn4=;
        b=rzZvzIFFMguLzCTohHiJXkD5p9gBfuJgAt4E7B95silPfDl0bUQ/OqPykZU6q4ApHa
         sLSmIX5grwNEIkQt7lqcZRPN2/TAL1bReCuT13FVVP2WHjrpPqirQDKNt7m69ckEBM7t
         0S7HHWNITPo5oBDOnTVQZ86uwJa8LwluEoGG9eKbNGWRunsCZDf9OYKn/W0Uy/lzE76y
         r9lLdLKWFxbdVXWARnkxGkOBlkBBoo2Un6Cqkj3bsmAt3rv2vMqf2F8W6fbM/9SgEC8k
         G4p+o/gui2KQ9wOB4bgjlacwGVcY4EAYVrQq/oyZrCSBFgt2KKCf1Hb3NnppHUrhgLaS
         /Iqw==
X-Gm-Message-State: AOAM533zF8VX3JHJ/PmJ+zrxeNmTa2GOMDOkqyzOtWuAui6G6quLF+9z
	v7341Md9EpC1h2VS4fQx1Cc=
X-Google-Smtp-Source: ABdhPJxq8mQ2LuA1fbU3c/B6Kf57XfDGzTKDZO4872HjizoFkOPcl1xYxNtcqETgNRkt1loPwRSP8A==
X-Received: by 2002:a17:902:8c8f:b029:d9:eb18:3a99 with SMTP id t15-20020a1709028c8fb02900d9eb183a99mr4563831plo.13.1606858654070;
        Tue, 01 Dec 2020 13:37:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:15ca:: with SMTP id 193ls25966pfv.5.gmail; Tue, 01 Dec
 2020 13:37:33 -0800 (PST)
X-Received: by 2002:a65:404b:: with SMTP id h11mr3894160pgp.379.1606858653416;
        Tue, 01 Dec 2020 13:37:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606858653; cv=none;
        d=google.com; s=arc-20160816;
        b=aVjFRzcJ6YMQJQBd3tj5GDPlAlq02vyi1RBEBOnmQtjPZNMRY6iKFZ96ymBBsjn1bm
         s2dV1S1N131kmCICd31j4WbGgSImITNpl21F0itolmuPKCZPpnd8EURJFja+srEdBTPN
         qgxaitdbph0AmtJ/Zz+VGk09+aO5EstcZrHXFDe2QzWG1MA1shQDk/ba5+lrtuR6u7kk
         YKr2RyKvzKVnWb1dFXw+jom5QV7Wjjt0Aaw1097JsetO6TwDk3DxfC+dGuzA1hSFvlTj
         UfrFBzwmm4TWd1y8DJYn7tuFVLKihWYRrHz+fRC7dZ6IOOwr0nptEAMKF5/i3IyFtgeG
         IGyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=B5HJdqCXUeL43UIVLVZJnxtwrYZ/thw26FrV4EWKXXk=;
        b=z7Cg/3SyyZ6T/ktiOOy8tWhgIr3cVbSlGaSTLgjXEQX1XC3g5uBArVpPKpBRAbvRH7
         IkQO3HDuoHgAaoVVn9/Z3XndO2vHjN5TDTbSVhswzYY4C6jruG6AXOZoi24I4Ea1/zp5
         wllc4E+KFEBKCUcAodGNIqNO80/nvpjTZui/ilaB1OavgXIhelXhTZrD+qGreZNxZpr4
         uR0jHesifiMw/6Mw6HKsczdDu2YOMusxzZFTCVNi6GJvswANYMD5rVeq/imJ2F8P6XjY
         wHsR1AL4I4NwzbPvi4Nqh61oOFjCVVGuj4XQysNGhA4+WJKz/JAG0k3pjqudhmX97F2a
         bEQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="gzp1vYR/";
       spf=pass (google.com: domain of 3nlfgxwwkacszhtpavschulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3nLfGXwwKACsZHTPaVScHULUNVVNSL.JVT@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id d2si94793pfr.4.2020.12.01.13.37.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:37:33 -0800 (PST)
Received-SPF: pass (google.com: domain of 3nlfgxwwkacszhtpavschulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id i184so4043154ybg.7
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 13:37:33 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:4189:: with SMTP id
 o131mr7599389yba.95.1606858652596; Tue, 01 Dec 2020 13:37:32 -0800 (PST)
Date: Tue,  1 Dec 2020 13:37:00 -0800
In-Reply-To: <20201201213707.541432-1-samitolvanen@google.com>
Message-Id: <20201201213707.541432-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v8 09/16] PCI: Fix PREL32 relocations for LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="gzp1vYR/";       spf=pass
 (google.com: domain of 3nlfgxwwkacszhtpavschulunvvnsl.jvt@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3nLfGXwwKACsZHTPaVScHULUNVVNSL.JVT@flex--samitolvanen.bounces.google.com;
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

With Clang's Link Time Optimization (LTO), the compiler can rename
static functions to avoid global naming collisions. As PCI fixup
functions are typically static, renaming can break references
to them in inline assembly. This change adds a global stub to
DECLARE_PCI_FIXUP_SECTION to fix the issue when PREL32 relocations
are used.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Bjorn Helgaas <bhelgaas@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 include/linux/pci.h | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/include/linux/pci.h b/include/linux/pci.h
index 22207a79762c..5b8505a5ca5f 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1912,19 +1912,28 @@ enum pci_fixup_pass {
 };
 
 #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
-#define __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
-				    class_shift, hook)			\
-	__ADDRESSABLE(hook)						\
+#define ___DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
+				    class_shift, hook, stub)		\
+	void stub(struct pci_dev *dev);					\
+	void stub(struct pci_dev *dev)					\
+	{ 								\
+		hook(dev); 						\
+	}								\
 	asm(".section "	#sec ", \"a\"				\n"	\
 	    ".balign	16					\n"	\
 	    ".short "	#vendor ", " #device "			\n"	\
 	    ".long "	#class ", " #class_shift "		\n"	\
-	    ".long "	#hook " - .				\n"	\
+	    ".long "	#stub " - .				\n"	\
 	    ".previous						\n");
+
+#define __DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
+				  class_shift, hook, stub)		\
+	___DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
+				  class_shift, hook, stub)
 #define DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
 				  class_shift, hook)			\
 	__DECLARE_PCI_FIXUP_SECTION(sec, name, vendor, device, class,	\
-				  class_shift, hook)
+				  class_shift, hook, __UNIQUE_ID(hook))
 #else
 /* Anonymous variables would be nice... */
 #define DECLARE_PCI_FIXUP_SECTION(section, name, vendor, device, class,	\
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201213707.541432-10-samitolvanen%40google.com.
