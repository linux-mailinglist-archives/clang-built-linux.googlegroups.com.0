Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKPE47VQKGQE5AGCTNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 33444B0968
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 09:22:18 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id c83sf5113124lfg.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 00:22:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568272937; cv=pass;
        d=google.com; s=arc-20160816;
        b=iQ/kSDARwZaTvN8rJpQMB434r21LDXew2p1KGmWIm+IJXVlT3jf3/uUxfybOJZkLQ4
         /s9/qmGWiLr3QfUS2ORlRH8StinJdZnor3zo0qS/jS9DUX8cu//M8EpC9zCR9MXwnd2R
         g5b4z7YwlZ72LDr9phc14qPE0HwFCB+fJakhIYiP6UADTZM7XXKOHgoVIf1YWLihxZaH
         X9v4dXZDsjC1Qdtl453u6t6eychCDhmoBEDamDdOhTcvo6KQ2/+gGKoTyXq+JY/xDb30
         IzJTVIKiwOw6yUiie6D2vmz9vYMIpfAr2Rxmrq2ftZhTIO+d4DE65a321ONfFyPKrHAj
         IFQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=iKntZ5Krme7+SRTWPleIVpzg4rqaSKOMgbyJB4aZbEM=;
        b=QdRWMMA+M9WWK7Wd/PbFdc2SuhxCDIWkNcg3RoNpibzoy3CVokFX5Sid9u67dxtQTH
         DQjxGtDfvEiNWibTq7E861lipq5gNy6W15o70XpSUFRSgRlqsXPoemirGOyCXlBXNOFU
         F1deWtBYnkGn6XSe23HVD+/Q5litNn8cHFzmnvmooGah00WAly7ZwSz/UwGNywwRAOQd
         jwcjiyixYNm0wSpnQRhhBbGFQ+358CjiAak5oGKtMVXBd+tt4S1zDuTq7szSkQVsgvy7
         qHDFZDfEOhWoujnr9qKGruG23pr8asJu9WiG/UknpS4R4/syuII/MORcPycQjTiljHVG
         coMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uHa+xmaO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iKntZ5Krme7+SRTWPleIVpzg4rqaSKOMgbyJB4aZbEM=;
        b=BDV5Yi63XAStegWa/AcV3c7icnNEFZ7FLVAzpIG6etSYxktujgLLdx7YxypsGAL7Tt
         Yw0ToW/vwFjXnD1hY12W0ABCLlJ4IhS8AG1u+g1B3eKrfnFZf9y31DvEZVHBjUlI/K+u
         ZV9G3onkz9jTrqciGbsH+uIc4CHnrOAoFGrRfy1K4uPQN8vVNBgpPBDoRDPPjkr6ZQpS
         EJE/MSmpD0qz3SKlU5m8O7zc8bDZwXyDvmi+iNC9rlofFbLWACDMrJWsjg+YOaX4xWSJ
         LUIkz5Lsc2gQhzNX9Cc31IRaVIcswHnPwsBfOJ3WwykM0S20KfvAbPn9O9nuo+6UR0GM
         DlHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iKntZ5Krme7+SRTWPleIVpzg4rqaSKOMgbyJB4aZbEM=;
        b=MwlCI7QOklChMjlEr+6uBiU8Bsic+rFxOanGFF9YEGOls2u5BZ6u4Nr2Nx9Ghve/kO
         noo8Xt65y5CXMtRluknkCxt2yIHqKB9Bm4MhG/I/wX/FhS0DhtnRli34aptDFB1qWAjv
         TIK02SYOxKAmPwZKF81GtLPwx0Kz7W/yjTii47Ph3+5uT//j9s4dj5aZxOhDlLnfsOPG
         7eRePA97MNZXwMm9ji2N0STYl3fWS+uWMzFW9nfljsIbzYqEC7jCUv1rvNoJjGh7PgCp
         MlrYTktiafX48gVD6/f5PwUZk5q976vfz7c5JnEKPMzZIp6ralB1tb3KxEMPfU82wU3Q
         Ur6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iKntZ5Krme7+SRTWPleIVpzg4rqaSKOMgbyJB4aZbEM=;
        b=kRG7HR9u0kT+PGTy4hMxVLXTLaPEltmy+gn3gtR92WvfWYbtkdZJQbEq4h0vKCidC3
         WlxdPF+o+E3AmXWyyzdeC0st0AEZhGfwfJQhQNaQ1MeMQIenc37nA+M3EzuN2KFzKDWP
         VbTUD7VZKRx8a5sh4MyXAo3PAPISgwBLmorwAE3SwfSigLA/2Wv0fnOEJxuBV/9rXoWE
         scMxSBZv/0978vVjWKJJyCWsbIukkBWQGBDjxfifnI3aufDf/kirTXngwdIMSSu6sNjN
         +CAFVIHLMIafHFZy/oJV4Lu96Sh5KT4s/QMSTvaGuuMKPaZyhPljT/PQW9zCFqVKdjYX
         OCjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXEEahu8c6+2bIyK7RasIVGmWMGxkeVa3Z2I5gDmmT6SxoiagJB
	WxvNVIim9VluyBoSx9gE+d4=
X-Google-Smtp-Source: APXvYqyrYG9mfjZi8aGaCUxx4mZxNhkFJ64ZhG648knHkMTvw0yE4oKuytRCzju5fd8befCYp8wMKw==
X-Received: by 2002:a2e:740a:: with SMTP id p10mr14547798ljc.110.1568272937778;
        Thu, 12 Sep 2019 00:22:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8909:: with SMTP id d9ls269761lji.14.gmail; Thu, 12 Sep
 2019 00:22:17 -0700 (PDT)
X-Received: by 2002:a2e:800c:: with SMTP id j12mr12437830ljg.49.1568272937288;
        Thu, 12 Sep 2019 00:22:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568272937; cv=none;
        d=google.com; s=arc-20160816;
        b=MiHufaS0oL8suRPvjY4JX1jgSwmi/LBa0tEakesfyoi66TigC5wYB35OL0PU+R5pc6
         c9bW2PIe6B91xMOqTO8UEcm6SETSMaGYfXuuB5Nz1pNNOhIgPchhVv9EnK1GbB40FFX0
         gO3VbNmvBc6mJYy+C/i2UwocGGA4ce0RjNdOnLXLjq3oUxcF+e6v4SbKoXuO6GAXz9v/
         j1sLttAYVLKczxJUzZUYLPApukVrzWLJSmKA+YtJ28r6N+SP79ylBJSX+Vw2W3dG0dRu
         o3PYqHJVMMhcHUBReR3Oo46yjgkDX/3FJJd5Nu2Qe0NCScaT7CnHsjHEHpurR6yHZgr1
         QwRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2CeyyRMj4arJ5MswszulwIkFPEnYjRfvfQK3SvLqDb4=;
        b=UOjEiaKYfrsWdScdbE/xZVva5ZLr5EJ4gT4QM2uL2BpSfTJm6xj2/7KeRqV4MHXWBV
         84Pihizs5v4PyK9yRCkjcf0wYQPNhRyqeNAB0R2QUjXfAyepA/+vWsIZJNntmAwn90rj
         +d5ucNHR9v4BMR6XpeMTestAZUqhCgu7uK+UUejRLQLe0lG2uCn9hGXxBHl63wOyp/Jc
         sg9WgErOrGWKr1tJFL5TRN285G4YHyBkR6Hr7wPXecqIsuBDGElIVs2Dkiki5fwclxfE
         /3VJJLLueXDWP9X4F2kQbn7KNbnxM4jXxUIKGWcJANqKYWTbAqpBCDfO9wsgA4hdJ8Ns
         9KJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uHa+xmaO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id x17si1789785ljh.0.2019.09.12.00.22.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Sep 2019 00:22:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id c10so6179586wmc.0
        for <clang-built-linux@googlegroups.com>; Thu, 12 Sep 2019 00:22:17 -0700 (PDT)
X-Received: by 2002:a1c:7f86:: with SMTP id a128mr7336940wmd.104.1568272936590;
        Thu, 12 Sep 2019 00:22:16 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id b144sm5382465wmb.3.2019.09.12.00.22.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2019 00:22:16 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: stable@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ilie Halip <ilie.halip@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Zhenzhong Duan <zhenzhong.duan@oracle.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 4.4] x86, boot: Remove multiple copy of static function sanitize_boot_params()
Date: Thu, 12 Sep 2019 00:21:48 -0700
Message-Id: <20190912072146.68410-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uHa+xmaO;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From: Zhenzhong Duan <zhenzhong.duan@oracle.com>

commit 8c5477e8046ca139bac250386c08453da37ec1ae upstream.

Kernel build warns:
 'sanitize_boot_params' defined but not used [-Wunused-function]

at below files:
  arch/x86/boot/compressed/cmdline.c
  arch/x86/boot/compressed/error.c
  arch/x86/boot/compressed/early_serial_console.c
  arch/x86/boot/compressed/acpi.c

That's becausethey each include misc.h which includes a definition of
sanitize_boot_params() via bootparam_utils.h.

Remove the inclusion from misc.h and have the c file including
bootparam_utils.h directly.

Signed-off-by: Zhenzhong Duan <zhenzhong.duan@oracle.com>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Link: https://lkml.kernel.org/r/1563283092-1189-1-git-send-email-zhenzhong.duan@oracle.com
[nc: Fixed conflict around lack of 67b6662559f7f]
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

Hi Greg and Sasha,

Please consider applying this to 4.4 as it resolves a compilation error
with clang on 4.4 and it has already been applied to 4.9 and newer:

https://travis-ci.com/ClangBuiltLinux/continuous-integration/jobs/232287034

https://github.com/ClangBuiltLinux/linux/issues/654

Thanks to Ilie Halip for debugging this; TL;DR: clang pretends that it
is GCC 4.2.1 for glibc compatibility and this trips up a definition of
memcpy for GCC < 4.3. This is not an issue on mainline because GCC 4.6
is the earliest supported GCC version so that code was removed and this
patch resolves it because string.h redefines memcpy to a proper version.

 arch/x86/boot/compressed/misc.c | 1 +
 arch/x86/boot/compressed/misc.h | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/boot/compressed/misc.c b/arch/x86/boot/compressed/misc.c
index 16df89c30c20..1e5b68228aff 100644
--- a/arch/x86/boot/compressed/misc.c
+++ b/arch/x86/boot/compressed/misc.c
@@ -11,6 +11,7 @@
 
 #include "misc.h"
 #include "../string.h"
+#include <asm/bootparam_utils.h>
 
 /* WARNING!!
  * This code is compiled with -fPIC and it is relocated dynamically
diff --git a/arch/x86/boot/compressed/misc.h b/arch/x86/boot/compressed/misc.h
index 4abb284a5b9c..bce182708814 100644
--- a/arch/x86/boot/compressed/misc.h
+++ b/arch/x86/boot/compressed/misc.h
@@ -19,7 +19,6 @@
 #include <asm/page.h>
 #include <asm/boot.h>
 #include <asm/bootparam.h>
-#include <asm/bootparam_utils.h>
 
 #define BOOT_BOOT_H
 #include "../ctype.h"
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190912072146.68410-1-natechancellor%40gmail.com.
