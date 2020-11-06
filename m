Return-Path: <clang-built-linux+bncBD4PP5X5UEBRBSNXSP6QKGQEBZ6J3ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 989052A8EA6
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 06:14:49 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id l12sf85823edw.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 21:14:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604639689; cv=pass;
        d=google.com; s=arc-20160816;
        b=IOpqqjVyNmrZ3KNLV+WtZCswAdxXtpmXaMuDcEWtR7m3y7gkAJYDkvYZeYsYaM4/q9
         96i5kcDyBIx2d7TvjYiVwg4NXIFmsDCjuIfrG3slhJd6kWTxOqpPWlF814dbjATrCGGm
         T3mdEoytYnMYZK7xcNthSJUowz6Nyi082TSTq9oQQ2NhIa4s8M/+IZh5kYH05v6cJCVz
         HNg5hp8nZTr/8cGfTj6c4QGftasa5NTXCQ2VAJIIWR2sZgtzSCrsPN+k06NXGVnB/Mdw
         /9RGnAK22LWTLduKY4HVnxBCEFFE7lzLBckJmHk4GhzKBadrXVnET4R9S7aMoHfJzj7N
         /mGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Ik7jJuitVf8XnaRN4n73ZHcxdaf2zn10k2oB3+8dBTM=;
        b=GpNAxJnV2ELEdiQS+UW6EsBkOC3UnkwCppN+HoMBqsiQRbpq7z0S+Y4oQUYG5d76ES
         q2FQGfbJJtywLlA8FWiSvcMDdz5Koa9494PaqpC6vcQr+RhVJGZ70s4HD99R2HFvu0UG
         qW+RgIW6LGwmaRzkGXiiCttRncSC10QmdhkMM14Cmf1W6+l3uyZeAeCdLpADO97+XayW
         aYtv5yDNmTPzVkU8J9nJ9HSCILEJLkBOKc1e2mzhIJU12KhkaKUxrjV3Xxr33wDeQfDe
         1ocWownJWAZuMcS4y953k8+MaHAvEPhDHcgiGzq5cCE2DYhLhAgWuj6BNm3tEI0K6pFe
         NTvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ik7jJuitVf8XnaRN4n73ZHcxdaf2zn10k2oB3+8dBTM=;
        b=HFlyGlTsHPh2ivDa3UtztWxw4YnpYpnTHfrnkNLiPDDJNlG6Plj/EQiO43QwLu50JJ
         +NQfUTNMpFBxATyvv+L4Ipa4PNyLCgQSUAxbpDFqJV602jbVGdmaCdsvNiG9g0b20IgR
         uXBNL70F+fbPyKf1mjY3RFYwZQ2B8DYed4pP3QLsXYmlEoNSeTlvdMgO3RYeqL2Bs5uQ
         4DaNThVN78kHfzyc8ECiu6NO/MvkvGLY/1QiqBeahe8yyjSmF122aQ6ewS21XlW/c6vw
         qlLo0oQ+y/7nHVtv/lU4Nwo30bux+4kOpElX8q/Ct+0OZn4SX8+tYMPPL5zh1Vikr27g
         AFQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ik7jJuitVf8XnaRN4n73ZHcxdaf2zn10k2oB3+8dBTM=;
        b=ry0FJVKHHFRaHZvCng/VyunSgnJBqIszp0jD8sdotihp6NC9DLLLr+dpy24VHHzRh4
         i0u4YU/Ll5KUXVWPwW6NiI8hJFT0euUlye7vfoEH8gmfKj2oSZAMaJrk5NYy+G67JLpj
         Y8bLHFC31e1C31KH3deGg08g7XoISv+FEQfP0lGOc+JOL+HWG1c0wI0wRg5yq3NQ81+r
         +NsLSbukbXc12gXrbD2eMJWypHk/hVjulkHpbWL88U+1FR34y6RrDxUpsz75xVnvw/XY
         9z9mQocl9oIlVmiAE247S1QaB5nabziFqLiroNM2ynIiCA+kXSvPBLx15xC4/UHMyD0N
         JTuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530hrdgc47DSH8KDzQNuF2YmJn76IMBRbY+YClPFcJmshQXtvMwa
	XpzY8WJorqjLAMpKLCYTU9I=
X-Google-Smtp-Source: ABdhPJyx8TC66BSvXb69nv1BET4hPnbWrwOINixH72reV6F7ouFHAWVW9W5Y56tn9ITypGZ/wVXpiQ==
X-Received: by 2002:aa7:d591:: with SMTP id r17mr273387edq.274.1604639689346;
        Thu, 05 Nov 2020 21:14:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:8585:: with SMTP id v5ls164215ejx.1.gmail; Thu, 05
 Nov 2020 21:14:48 -0800 (PST)
X-Received: by 2002:a17:906:8485:: with SMTP id m5mr335973ejx.205.1604639688450;
        Thu, 05 Nov 2020 21:14:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604639688; cv=none;
        d=google.com; s=arc-20160816;
        b=Q3JI18Yx9tYT/DEIK9UAVrD2BTsQGkpYvZ8qtCzXzJZ0qe3C5dPmRbwN3RMNdlmp1J
         5cJClxQqqfRlAeey+tvju1i2FqlxUpgCO6OWUa9X/eAKWM0qJLnJmEXr7xKoXVOq9ivA
         RAw2piqU4BYki8yBcGk7+18YylaUY5Wl9nwwY3mhG0wSOcZ4F0iMcOjcm2b7R2ajlsur
         MIAt4mrxzn6a0rXBb1zpErRqNTiw75gjEb2aLeKLQZmSjotR0U5sx5ouydHrJDXzftG8
         6kiPzH24QXFvi634X9BT2tEBDSBGcKE5LAejQhzDtOTHbntkmfbwdLgj/YaQiFXaPo2Q
         p9Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Oy2qqijFEaFVi0q8ix2zELu90Ld2HYlLC6QSZ9Qfqkw=;
        b=jItJYEGp6LmD1PbGF0Dv0lmcHzJRKCNEgHYfG9pHFNXd45WUbESnvqcOO0Hl6IXXzU
         hfO9nFnW6t5JGSm017mU0P+izOpnfmvJ9EifJkjr3Xjf+whr1pKM6gO9P349ZKnvVuXc
         tV+Qrin0riHkj/kC4aQt3mvQhRoG8DM0zVrahVBCKg8+P1gSfawDUB7T1hJspTQNxhZJ
         vTS1TsfbTx4dvIvi6tXbfRGT5N8sqTuYe8PppdkCx3nlOEmr+qRJ3hqTbtANdccyT8X5
         hFe2Db36BB+/Xn4Ye+Ix2hTeuY1MyOCTIr1q3SNOr373kPVuzLykBGgZq6JpfSNkXlfd
         A8gQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id a11si5400edq.1.2020.11.05.21.14.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 05 Nov 2020 21:14:48 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id D41631F466CE
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	clang-built-linux@googlegroups.com,
	Russell King <linux@armlinux.org.uk>,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
Date: Fri,  6 Nov 2020 07:14:36 +0200
Message-Id: <20201106051436.2384842-3-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227
 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

Due to a Clang bug [1] neon autoloop vectorization does not happen or
happens badly with no gains and considering previous GCC experiences
which generated unoptimized code which was worse than the default asm
implementation, it is safer to default clang builds to the known good
generic implementation.

The kernel currently supports a minimum Clang version of v10.0.1, see
commit 1f7a44f63e6c ("compiler-clang: add build check for clang 10.0.1").

When the bug gets eventually fixed, this commit could be reverted or,
if the minimum clang version bump takes a long time, a warning could
be added for users to upgrade their compilers like was done for GCC.

[1] https://bugs.llvm.org/show_bug.cgi?id=40976

Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 arch/arm/include/asm/xor.h | 3 ++-
 arch/arm/lib/Makefile      | 3 +++
 arch/arm/lib/xor-neon.c    | 4 ++++
 3 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/xor.h b/arch/arm/include/asm/xor.h
index aefddec79286..49937dafaa71 100644
--- a/arch/arm/include/asm/xor.h
+++ b/arch/arm/include/asm/xor.h
@@ -141,7 +141,8 @@ static struct xor_block_template xor_block_arm4regs = {
 		NEON_TEMPLATES;			\
 	} while (0)
 
-#ifdef CONFIG_KERNEL_MODE_NEON
+/* disabled on clang/arm due to https://bugs.llvm.org/show_bug.cgi?id=40976 */
+#if defined(CONFIG_KERNEL_MODE_NEON) && !defined(CONFIG_CC_IS_CLANG)
 
 extern struct xor_block_template const xor_block_neon_inner;
 
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index 6d2ba454f25b..53f9e7dd9714 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -43,8 +43,11 @@ endif
 $(obj)/csumpartialcopy.o:	$(obj)/csumpartialcopygeneric.S
 $(obj)/csumpartialcopyuser.o:	$(obj)/csumpartialcopygeneric.S
 
+# disabled on clang/arm due to https://bugs.llvm.org/show_bug.cgi?id=40976
+ifndef CONFIG_CC_IS_CLANG
 ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
   NEON_FLAGS			:= -march=armv7-a -mfloat-abi=softfp -mfpu=neon
   CFLAGS_xor-neon.o		+= $(NEON_FLAGS)
   obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
 endif
+endif
diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
index e1e76186ec23..84c91c48dfa2 100644
--- a/arch/arm/lib/xor-neon.c
+++ b/arch/arm/lib/xor-neon.c
@@ -18,6 +18,10 @@ MODULE_LICENSE("GPL");
  * Pull in the reference implementations while instructing GCC (through
  * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
  * NEON instructions.
+
+ * On Clang the loop vectorizer is enabled by default, but due to a bug
+ * (https://bugs.llvm.org/show_bug.cgi?id=40976) vectorization is broke
+ * so xor-neon is disabled in favor of the default reg implementations.
  */
 #ifdef CONFIG_CC_IS_GCC
 #pragma GCC optimize "tree-vectorize"
-- 
2.29.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106051436.2384842-3-adrian.ratiu%40collabora.com.
