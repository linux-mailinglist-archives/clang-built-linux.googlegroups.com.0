Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB7OUV3ZQKGQEY22O3LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DFD184B2D
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:45:07 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id y7sf1509359ljm.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:45:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114301; cv=pass;
        d=google.com; s=arc-20160816;
        b=SshZ9syuKt5vY2BoZ3GnZJX/GMS+RQAujyfQ4fonUli2+usOLFUz9Q0tEitrPXucxl
         r2r6im/ET4snwxf0xfr7DschVUbR3zte4eQrX81pDvS6x/WN2bq9w/61eXiFnIDfhySx
         vxE4kJ4CJTTRvfsP8zz1rR0XuphE/iaymXDA4oE3DjhaloxDFSkn+Id3SqRknkvQXfVl
         ZaKUNweLvOm7npn1eAEUhY45wg4BHNvVosGETAtA5Yp+oCanPPLp/Qr+6T+fRJIBs2Xu
         ZivrK+p+A99jsEMBsOCAHfTfneUZQOgNzjXKtNY5vBDJQsMRRIOQkAbkExPWudjIJHuZ
         g7KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=fmF360KyMmC+rBF8IfLun+i1fwhUMexQPZ6UoCZoxj4=;
        b=xv5TDjGKRIqaZKppQddTxRHf1fANCWu6FMl+eqWTBIR9lEyRbjVAZG8/Hx3iNtfO0t
         fVkJTJ6hakney5beFcLn3VaFIJFxGhMNvg0roqBaNbSN5ZnMtrM/2bQgWkGBhSRiCvbn
         eWkzfUGhWaE5VBYRTP1tbBpG3pMeZCNN+/kJYi/H2RNDpLpFt4np0cyEZgyvfzYiI9ik
         BsdatfX580gAwh5rZLeFPIUBZm8UM4Wa8FdicyKdF58AZMWK8v9q4l7ntPxHGL/p7tkI
         fEjMNPOUILOusNl6gWVMMwTkA1mBLItWCu1uEFYAqmu+yZWtOoj9/IW9dO/zti4YxzY+
         X91A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fmF360KyMmC+rBF8IfLun+i1fwhUMexQPZ6UoCZoxj4=;
        b=rNKA9PamKaa/TITDexWGoJ2Lk2mHQf3QJ1Fg19pNsa4j2hytpiaGT/lNz0gTyIKGS6
         Af9M9pDKmgsFpqYJ9jmAUDr+CqHbxomxbPrQLeVn11HbaOwS4MOxnaARKggxNVPaI40Z
         K0VRW3jOAIYZPiSODJaWgZvfP6tvIDs3fdtWxcwi1j0HuaSjxaxQRMIHZq84IAGwp9J6
         h9BK1v5kNX+bxB6cN27hqdo+6n6H8P7NkuMUcJ/L5AewxD+2v1Ve9/RrJc5bEyXNGtK5
         XkeY/uHSQ2eph2y4rinCVunlJ6GJlWhwEfGO3MdivoFPIOjRMbQHdLF5/4B0kqIgidl9
         bQYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fmF360KyMmC+rBF8IfLun+i1fwhUMexQPZ6UoCZoxj4=;
        b=X2LIUF/PznMQdNUBQGIOa8MIjQrrjlk4KQQrIlJmmCMkMIkOEh/q3SGJceK5PNgd6q
         dCgDbwX9BFkvtOGqhYuw/xADbdMhCg8WS+N/Fnlc/i/hnUtOTmmi5dSIbJmYrAqJ3Tef
         2sOHw1sWGtCD/XTwKcOuyF5Hrq2Dv5kV0xR9otQgxKHDx7LCmpVetKHsWbdGZaOSINUC
         ChMu/mgBvH1Sg0sJV0Hn+eQolqdkh3Xf9tKMJUD4Ivhjj+EtFOY6QU9JXcuLbSJmxeWs
         5wRWp8+OTpxAI49yMlCDzWw/R5tPtbxeFu1YTZHPHIHUISYpUM45bU4LTf4jfmYFOH9e
         SeRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3BrU3tlMQSoW1QpxNp4YzwBevTUPkDaBqCg9QdVyVpJY4jFP4Q
	o1B6DFGLfYdT/cim1snGbhc=
X-Google-Smtp-Source: ADFU+vsfRzNgC0+WdpeMEvTfQ16QlpU7s/xe6HalViKiFjAk10Qsp361uFg/FpoOp1vTUDasbUc2jA==
X-Received: by 2002:a2e:2e13:: with SMTP id u19mr7868209lju.3.1584114301731;
        Fri, 13 Mar 2020 08:45:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:95c8:: with SMTP id y8ls1948540ljh.2.gmail; Fri, 13 Mar
 2020 08:45:01 -0700 (PDT)
X-Received: by 2002:a2e:5744:: with SMTP id r4mr8998703ljd.67.1584114301114;
        Fri, 13 Mar 2020 08:45:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114301; cv=none;
        d=google.com; s=arc-20160816;
        b=TXbXY9TRZQab2jFaAz0oI+h+5Qc8LRifmPxVw44uMBeMAdkhYp9+jJLh3A/fHcvu8N
         BNTht0IG4xGVdIyszY639qnnYho9k+gJ3gTrLoTulHOPgHAcEPyo10tEwug9v36fHkzF
         Gy1iK/9Jrs22cgOK3kbAf43c536Re7mKViTSlt7gXxTU0RwmQU7xVQXTWVZCdqLdk21+
         d2jcUP6iTxoW5PD5R4lHy0QpwxU/NiCotxBx5Yn5L8uugdSqIwU1BMuAOf7qDxe+6fUj
         xZi3ZVFaJFDf7gBfM9LJi9VGpYNwvEnNgQXdirfN1Gfrtrpd+bYfkw+L6y2TMB3J2fOO
         0KHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=+XT/Ggmb5iCSA91ILbc1CBNHo5HVyQjPuJuT0/OJUWM=;
        b=ldUsNtIJUakmPh0fdmzla8tQ9a1oz5LiFIris1dAJpiR0QzXT0Up2K34KJslhAGer9
         ECRL1tiziPCzMHPegli/Sddt/f8XDAqPI+WsFszaCjE3xkhBMY0bowy/CHMpeQD+b7dY
         yJL7NNa6pYm+g1hlgEejKQTnTeGkfwJE3gEoEH0ZmF1tqhdGKYPC3EL9XnicxE6ECwyu
         WO1LswAJSblbWz/o4/nfGok7AHaU1zO9b3t92xFlQC3uyeEn6+wkbe9ozNLxDv6Q1pBh
         xAoM9/a87juA4naUiq6gFifvXTQ3/XaucR5w6qqCo/baTGkkto5JOMSSutlSkBqWUvnW
         Cwhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id u8si407808lfu.3.2020.03.13.08.45.00
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:45:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3D2771045;
	Fri, 13 Mar 2020 08:45:00 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 476B93F67D;
	Fri, 13 Mar 2020 08:44:57 -0700 (PDT)
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
Subject: [PATCH v3 17/26] linux/elfnote.h: Replace elf.h with UAPI equivalent
Date: Fri, 13 Mar 2020 15:43:36 +0000
Message-Id: <20200313154345.56760-18-vincenzo.frascino@arm.com>
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

Replace linux/elf.h with UAPI equivalent in elfnote.h to make the header
suitable for vDSO inclusion.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/elfnote.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/elfnote.h b/include/linux/elfnote.h
index f236f5b931b2..594d4e78654f 100644
--- a/include/linux/elfnote.h
+++ b/include/linux/elfnote.h
@@ -59,7 +59,7 @@
 	ELFNOTE_END
 
 #else	/* !__ASSEMBLER__ */
-#include <linux/elf.h>
+#include <uapi/linux/elf.h>
 /*
  * Use an anonymous structure which matches the shape of
  * Elf{32,64}_Nhdr, but includes the name and desc data.  The size and
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-18-vincenzo.frascino%40arm.com.
