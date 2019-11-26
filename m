Return-Path: <clang-built-linux+bncBCM33EFK7EJRBVPV6TXAKGQEBCMITLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C1F10A0A9
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 15:46:45 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id u14sf10613318wrq.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 06:46:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574779605; cv=pass;
        d=google.com; s=arc-20160816;
        b=02yFZCEAWE9xnQIv3qdpv1HfMaGXhUeAR+3bwgZQGDP6xJSkxXWLdhwoZi5D9mZDyX
         5meKI8u3nDcjj15b5RxQmQyEvwU16k4ZlKEkG0HQlkS0ywXUwrI4yXdT2pGw+WbLHStT
         D/BwBrTO7ih1Xf9l3CVvJtEIMXpoUAUoE7YQtGMRdFyuDQLhNCBqBxnroXaEi1526+E9
         hZNFy/FIK1scJaO1i9CAACMM52A1PFPx9iiRYrW0rJxZ+3e+SC07mLTVB76Q+5NAJq1O
         M7RiKZ9Xcxz6Ho9h/t5Qwa/YyCdQ/zTdQIHHobz2LnF7LJOX7th6aT0dXNn1t5RYEDPW
         JNgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=P8b8A3XOi7uhSdVEnFSUCri86qoGpkYH4CfXFnRyEk8=;
        b=EML4FEg4RieXb/In7JKLosTNx/8aZ+s/wuaRjvX35nJaBHYaDcc753jbsINE80Y4YF
         tDZdLEBLL6oQse2D+o+BOESn+hETyGTZQkRnRiZo3/nqu1fhtjIYvhjOT0rOF2JXz9G2
         DTpMrnUh+JKvbvo03QZWIBU4TWimq4zP+J1vPPezVnqcYnRouQno9V1yEhdJpszasdBw
         aDCMY1sLjY423Sq83ghaSga7QB0DdxNVeQMQ/W66mADLc9uBrNQLzBKCpdhRtHVN0l/o
         kWEUuSl7QGA7WVh0dxGel8wmVmDVIgKfSHomIGHCfJXWhX2AUVSVKeqbMff+3cIALXHk
         6bRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b2TOTmIs;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P8b8A3XOi7uhSdVEnFSUCri86qoGpkYH4CfXFnRyEk8=;
        b=pCwpaEpy3yYLdGjyTF4CWPFJx9cysMhr8/0Ci25uFvGQFoUiddqM8ubTOzwQTbaCSa
         UxybxQ4AT5GYUuSgLCcVVlfyrs6FJR9XPbBhRwZ0yCoxt/9dPHfibFKn5j64kmJavHj/
         Op/dqC8gKuKUkGrrrIVsitOfBAFpX5xA7Pevaq2y8WhpuZt8nnrdZdecuNwXGrx4b5O0
         Hnu4gt5mhxl4udJ96T2fIZEWlZ29o8+uSPj0v4KUCP2H8v+mGOih5IID11tFV1HNslB0
         XHhOSx4iP3nRIZSXvEfcxLyL5JWV0mSk4L7d9zJGqhQr3sIXoWCmXrxDUUi3Dx9HwrsP
         u29Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P8b8A3XOi7uhSdVEnFSUCri86qoGpkYH4CfXFnRyEk8=;
        b=WbZqR5jB8yxkWbYuhPTPeq1Q1pbYUv2UKXyrEZc+8J+nK+IMBb6D/kQ8DbFvkBww0j
         bF6Y+H4X1ayZ0/BkMWEzvd39vBnMDLxSS0xJOGuj7wSb2YIkni52GciWc9m3YkkDYIIM
         D1d+2Z+biv7a15Gf2fuZe95le1G7lcNwGXYd9tPRQwqMNI6AjtgHarFkqk6RUPSZVObE
         GMxCMr0n4do6LgrRm2Djf5Kt77KtUngo3YxX+79M5vngAVfx23Bj9u/qfcAYMjVYaDvQ
         BqfyD22v69pBZrZupZ7txa1/uQGpiU+3nXbkksr4qkmsae5k9/YeaRMkzVqQlIBi4Fuw
         z6gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P8b8A3XOi7uhSdVEnFSUCri86qoGpkYH4CfXFnRyEk8=;
        b=B4qPapKm73mF2FFAMAMx6vj2ZQJkW5Jp4kuzSM3kbH8fHshHPvHHhNIbJ9hUf8Qmgk
         cPaF2vZU9ecxiOWeAZdLrvfC0nIh31uPaXqR1xXzEk/GvxUPK9lGBwqOq8hk5jRYkfB3
         lbuXVlgVvEiEypRPoR+XknO4UEHUZ3+XbTOnOeOuJGud7R3V+S7YTtyMIswEBUCbUAyK
         NEEYN700XekBqBq8kLxHqdvIFLYLNrlS1TBZdMlCfMkJFXLNWCPI8oyySBcxfmCVSv59
         fMicRx/kFhaLToil7YTDfZfepgtEZcz4ImH0RnSbfvJY3yUVbf8wxLt1hPZtMs8B1XOA
         vr8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV9bjjLB61Us8XE6cFyLI3oxGlBjraHy8WazV/Bqf/sE209HzBw
	ISxYhO6nEFOr8o80EgEn8Rs=
X-Google-Smtp-Source: APXvYqxBFKbsa0PWVEZS3ejTTDFHBUZNZL/grYo9JwJgAp+Az42gvdS2+lVp/qcFkH398SqrEpPHSg==
X-Received: by 2002:a1c:48c1:: with SMTP id v184mr4629519wma.120.1574779605241;
        Tue, 26 Nov 2019 06:46:45 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4b43:: with SMTP id w3ls8767036wrs.5.gmail; Tue, 26 Nov
 2019 06:46:44 -0800 (PST)
X-Received: by 2002:adf:db06:: with SMTP id s6mr7862502wri.117.1574779604568;
        Tue, 26 Nov 2019 06:46:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574779604; cv=none;
        d=google.com; s=arc-20160816;
        b=hbVqLaQv5XtBtj+bsBHqp6zydrUYDkXyfPt2Jsc7ZICm/e2Dcdz+AagF1cTCWn7RUy
         WRrPsIksds+E2L1I4N/rznoUm9ya/U2EtRkKjOLZvxLO5sQSQJvWhfQDiev8vSXBkwLA
         Pp/OUg1EFYp2GhNGc5ZHo2uufJpR83ygc6Dlb5hNu5X1z5xOHRWQRk0JSG7QvScFcD5Z
         FspR0Ts3KrTg5nF0PtRIiMBCuzmROoKTHJh27pab8jN77tl0aGilSC9MbdXBkwK4X7pl
         4TOJB17T7daoKgZYqBZIIS8Ty7wBHuFMa5WD6MzWl3P14BEivw0urv65ZI1KVK10p52G
         we3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Z4d670MtFAZBRVHDDr7y0hwhh3jdjrRCwzJNRcQEIpE=;
        b=NXmR7JQsUqlIloyiYMzDrWu5uA5xo0v0mrwQ/5wxf4B7fUX/exK2dnJU3iiON9p43k
         dtkEXs4Ajc3kG5YZdV1L8jdlzli8+QwiKxSAle6M3AdCq7WelcdbFMUU43IUTvzfMBBA
         dPbHeDN23eRcMwBH+jRfh+u81sSdPowG7ob2RSY4yvg8I+DbEPsbTCrwQ2IIlJ48mOYp
         l+dxRZk+Ml7djgnrsrc7jZbGPiQrKBWWQumwir1+X3pusud6Q0s13CAApbbyujvxEgqW
         a5Mr/O41JebXTy8kzzImV8RG9CXe2DGy8FjLv3iusZnrvPqAE4D8R3KlyLbj1gwnXW2o
         OUwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b2TOTmIs;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id u12si107620wmd.4.2019.11.26.06.46.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Nov 2019 06:46:44 -0800 (PST)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id z10so22686292wrs.12
        for <clang-built-linux@googlegroups.com>; Tue, 26 Nov 2019 06:46:44 -0800 (PST)
X-Received: by 2002:a05:6000:12:: with SMTP id h18mr14314290wrx.87.1574779604252;
        Tue, 26 Nov 2019 06:46:44 -0800 (PST)
Received: from localhost.localdomain ([2a02:a58:8166:7500:6c1e:69e9:a832:6384])
        by smtp.gmail.com with ESMTPSA id s82sm3325380wms.28.2019.11.26.06.46.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2019 06:46:43 -0800 (PST)
From: Ilie Halip <ilie.halip@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andy <luto@kernel.org>,
	Ilie Halip <ilie.halip@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v3] x86/boot: discard .eh_frame sections
Date: Tue, 26 Nov 2019 16:45:44 +0200
Message-Id: <20191126144545.19354-1-ilie.halip@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191118175223.GM6363@zn.tnic>
References: <20191118175223.GM6363@zn.tnic>
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=b2TOTmIs;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When using GCC as compiler and LLVM's lld as linker, linking
setup.elf fails:
      LD      arch/x86/boot/setup.elf
    ld.lld: error: init sections too big!

This happens because GCC generates .eh_frame sections for most
of the files in that directory, then ld.lld places the merged
section before __end_init, triggering an assert in the linker
script.

Fix this by discarding the .eh_frame sections, as suggested by
Boris. The kernel proper linker script discards them too.

Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
Link: https://lore.kernel.org/lkml/20191118175223.GM6363@zn.tnic/
Link: https://github.com/ClangBuiltLinux/linux/issues/760
Suggested-by: Borislav Petkov <bp@alien8.de>
---

Changes in V3:
 * discard .eh_frame instead of placing it after .rodata

Changes in V2:
 * removed wildcard for input sections (.eh_frame* -> .eh_frame)

 arch/x86/boot/setup.ld | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
index 0149e41d42c2..3da1c37c6dd5 100644
--- a/arch/x86/boot/setup.ld
+++ b/arch/x86/boot/setup.ld
@@ -51,7 +51,10 @@ SECTIONS
 	. = ALIGN(16);
 	_end = .;
 
-	/DISCARD/ : { *(.note*) }
+	/DISCARD/	: {
+		*(.eh_frame)
+		*(.note*)
+	}
 
 	/*
 	 * The ASSERT() sink to . is intentional, for binutils 2.14 compatibility:
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191126144545.19354-1-ilie.halip%40gmail.com.
