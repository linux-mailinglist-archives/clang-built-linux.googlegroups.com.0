Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBYF24HZAKGQEWNKEZ2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEF3172D0F
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 01:22:57 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id c68sf2353740ywa.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 16:22:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582849376; cv=pass;
        d=google.com; s=arc-20160816;
        b=0GKWRZJ2I/qtDAUGTF66jSeTudLlTTR+bhdrHHEGRiSCiw3hZ2/XwST+p8LzvMkTGN
         qHCUkDcSD3S1kVdAZjozg3AD7UnmO/O3lUQGA4oxudjRIuFCU2dPZAextsn8AF8oUN4t
         jCp7iABoUIPbHyKWd+dDrVWbtonlEbsmCk53p/n8QU19U3oHwyAagvTJFcaSzuudkxJ0
         95z1SNAQxIw2GJToj8WTRAYsTBY+fAMrcBwP0AQ8imPsQ4ddoYVWH18JIZiuB6T41eOP
         E20VNIKezVD/iN9xADX98CIJalFWkSGfzvxcyTH3hp6DHqGYUiEQLhZ1f+88B058tGAD
         wBHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=LgpnAWITBZKTeP6nWjVSxCBv+9B19dLy2ySsDgX5zzA=;
        b=c85nUG23kfxlcjd1re+5+40iF7ZXrir78CmlrCN3I+9ru2T7vnC4y6shnn9cx/y8M6
         7xmBi9nZ0dnh9DzqgI7xonsi67S05kcMeM4+JnNKgypbA5N2brEo09F4RaZwwXEHZYhA
         mrbcJYBsXxDGma/zzWbz1wXyw9Vq8nymvd8WddvOSXY53oEmCPw0cgGkct3HLRRekFAL
         2rSMVStUx2KcKLweLt4SUPvat1gjSjpsA9FlfRIk4ocYH8R/t3PCJF3b67I39jZxuYzS
         ZNHnIAdqmviS8EbVJKf3HOLGne+PTiptYt/3TG27bRGNiHStMY0aYG+nC1p9wczm2kPg
         GvyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Kf+gX5xd;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LgpnAWITBZKTeP6nWjVSxCBv+9B19dLy2ySsDgX5zzA=;
        b=WpwCRTwodDblISSUlPDfgXHZwSnHqDlVcQlQkQ/lt540rT8xiM9AZSnTy6pqfEvP/I
         o0gq/VgIfbGOmYv2MimMUL/2MD+DZzuFH+w3YKqkYKK/YTeGe1/TnAQ2WYuM0EpDevf7
         ISLmOhGES/MtNbdFGSd3k2mCSoADVqz7BBA/Uel3GWtT+/lO8T3sng0w6QXUm1binns4
         Ez61GddNTohKxxJ4bDhGQ2qYRK2kt+RuS+L1nuU3/qdPtgZFECuRdkjUBc4tOe6MgBPd
         WQXwSFZ3kg188uxO1B8/tzr23z/8L9QRNhqFSpzNHbXQc0SrheCb1rj94g6wE7oXiZy/
         tfhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LgpnAWITBZKTeP6nWjVSxCBv+9B19dLy2ySsDgX5zzA=;
        b=GVDzhHYWkhI1EVYvvQcaDc4Wyg0/f346cozOdqT9qDi5kjhODZnwgE3LbLuhzzt5Sy
         3GFOlt9YIdJQ/LuQ51BNWwJAd1hv9yxSdyYwueO8wSyH4VKZi8hHyM4DFLbaoSBmtT3E
         dycRn2rti5Qxw3/+QZCTH7m8MW9xULRa0Sz6LDOn+jZyUVuYeB/hGKJWR6fLIBvKl9Q/
         sRua5qNc6g+A/DK+UBsyr83tb+gURYvPmYUQUewM4jaBWiPlmh3jko91thDTXLJFA5mI
         6OpjDucEkX3hbxb7Okq6ic4MJZj0unAHqqMNs1X011CRzirsqZjxA4l7GzNYxPnLw+8C
         gHVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU0pxHqIgHnyaDeK2DnIKru0/PUqUmKaKV4aq3drV/VQvKDq5Yd
	mjqNvU5ICb8LxiEQ97x9qSY=
X-Google-Smtp-Source: APXvYqxNEI5bzU4XM1X6Y59aqLwJmehFZBB2Zv0Q27Q72s0Z81HM2EW8niCgRmyjTy1vlu/JdpampA==
X-Received: by 2002:a0d:ee04:: with SMTP id x4mr2013545ywe.189.1582849376681;
        Thu, 27 Feb 2020 16:22:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:4ed5:: with SMTP id c204ls216080ywb.6.gmail; Thu, 27 Feb
 2020 16:22:56 -0800 (PST)
X-Received: by 2002:a81:86c2:: with SMTP id w185mr2123576ywf.35.1582849376302;
        Thu, 27 Feb 2020 16:22:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582849376; cv=none;
        d=google.com; s=arc-20160816;
        b=s+J4hNx8jUgLBWABkBdepP20OXtKZutlYyKuPcOfs9boS/D7RT986eHDMtpSv8Htpx
         bssX5rlyCTiY65sB7t5e65B6c7gz2/g4Rd+rNgz3vrL8Rwz4KZtE56EqLNFyWoFYqdNP
         YdUEtp0KlkS1nR+BqxLNWEeJ68OXCYi1PM5nJNi8yw/bmPgI8q21sAGsHcQPfHEIFHQn
         IMf/LielzwVIzYIg95Qo6swVsraQCYRcRmOTAIc1OrAaJwvyisCZfsUMAQoeykbQao1d
         5FeBvhFmI22zyuo6/N9DdIiyDvNpDuh9n37/4crkITQp9IDD2OHvnGVvv6h16nzEQcfd
         BbnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=A992AjdJWLXJEjwtDWIJFXaA8r8Mu1S3gNtRzAo3spo=;
        b=GSVgzypKsRlL9K4CAXDpE2C7DMlTAWZ0lvl3tXRRdragbfHQfTbuuEKqj1DhPM9cxA
         3VoccTpeHWM1DAsnqvW3TcnaaS3fxf2kJ9MI/cnlt48AsSTcBBU6wuI4VtXIXsFBDwLq
         nFPLfbKnsV3RTVoX3Sux6VFG7gBPA0jBtiTJpHKICysYeQ5bjVTvwXkXGOFn2yVeIjbA
         Gm/Fme9uFmu7VYxMX//7VusT8UBV+Su8TE6Vk6KIDk7sg7KnXZ+XXov2RwyDq6AHmNiM
         8wg1LKD6VLR/IFVGrncjmefN7JO3BSUPiUYw9WPa5AQyZ6hsYozrvFgPcZZQz926XqK3
         kymQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Kf+gX5xd;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id u71si127702ywe.1.2020.02.27.16.22.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 16:22:56 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id i19so737229pfa.2
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 16:22:56 -0800 (PST)
X-Received: by 2002:a63:7207:: with SMTP id n7mr1872186pgc.253.1582849375359;
        Thu, 27 Feb 2020 16:22:55 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b3sm8714061pft.73.2020.02.27.16.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2020 16:22:52 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Cc: Kees Cook <keescook@chromium.org>,
	"H.J. Lu" <hjl.tools@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	x86@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/9] Add RUNTIME_DISCARD_EXIT to generic DISCARDS
Date: Thu, 27 Feb 2020 16:22:40 -0800
Message-Id: <20200228002244.15240-6-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
References: <20200228002244.15240-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Kf+gX5xd;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
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

From: "H.J. Lu" <hjl.tools@gmail.com>

In x86 kernel, .exit.text and .exit.data sections are discarded at
runtime, not by linker.  Add RUNTIME_DISCARD_EXIT to generic DISCARDS
and define it in x86 kernel linker script to keep them.

Signed-off-by: H.J. Lu <hjl.tools@gmail.com>
Link: https://lore.kernel.org/r/20200130224337.4150-1-hjl.tools@gmail.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/kernel/vmlinux.lds.S     |  1 +
 include/asm-generic/vmlinux.lds.h | 10 ++++++++--
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index 1e345f302a46..1e12c097d09b 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -21,6 +21,7 @@
 #define LOAD_OFFSET __START_KERNEL_map
 #endif
 
+#define RUNTIME_DISCARD_EXIT
 #define EMITS_PT_NOTE
 #define RO_EXCEPTION_TABLE_ALIGN	16
 
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 303597e51396..1797f2c9bb41 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -894,10 +894,16 @@
  * section definitions so that such archs put those in earlier section
  * definitions.
  */
+#ifdef RUNTIME_DISCARD_EXIT
+#define EXIT_DISCARDS
+#else
+#define EXIT_DISCARDS							\
+	EXIT_TEXT							\
+	EXIT_DATA
+#endif
 #define DISCARDS							\
 	/DISCARD/ : {							\
-	EXIT_TEXT							\
-	EXIT_DATA							\
+	EXIT_DISCARDS							\
 	EXIT_CALL							\
 	*(.discard)							\
 	*(.discard.*)							\
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200228002244.15240-6-keescook%40chromium.org.
