Return-Path: <clang-built-linux+bncBAABB7773P7QKGQEY5SAYVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7792ECFDD
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 13:35:11 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id y26sf1098606lfy.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 04:35:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610022911; cv=pass;
        d=google.com; s=arc-20160816;
        b=qOyQgq1atF+ARcnc/MqbMBlEkB0FM8sUJdPr0ExstzLv1RAZSSRvIZdi02kdcz1DWK
         Ms+dTYoSUl470vsFftEzQ97ihFJhfe/0QZpR4AlD1X0mI7VcVOgmIDQal0W1UMobxNGC
         cFrUk+vUHr5G+MM6ja98NzZM3HjFX1z+g9umJ5hx/68/UAdCiUzYqnupkJnP116DMpa9
         OwpYtGiG1xP9VBdmy86R8BcuSBUPn6+0VzXfRdmMMTTUn0+Rq0uzmIkmq09OxDVGTbO/
         cNqcWr8vH88W52E2J51gNUhUa26dJBxXNtfI5mKdCsbAz9HDVU9GMFKF6GSBqvT3KTV1
         5Z7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=dKgmW7ypUhPAugnbt0q6eW7rD0AvvSMlHndBqTP9L1w=;
        b=CakBKAqo1he9Lo1pQWRbrWsfHSGcWKNsX2x8Wl/ifbWxLHGMo6Ls9p85qSk4JIF8Mg
         UYuJGUKP5M6S3GN3LIlX+Wfq2SaubDAXeVIGSu+6v7aufmam3yQjXRleOHrRHTL7X/py
         osMwAkxG0Aua7v+a3ikDKQXJoozJfILoRJ2B+ebMbF0+lFbLr10OYvOfVZgZs2+iFPs3
         1XAlACHtjswpEbkEvQ2YO/F8tvpAq51WUBor4RA8jQtFD+21n5YQS+2wzGbOUmAZjsPE
         TjPPXcazFUeRXlYwQSxYD+NotJ70fwrlysZoyKvmHWfxgumOflJ6V6K8RMi2OjF9QhX+
         2w/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=kciYVe03;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dKgmW7ypUhPAugnbt0q6eW7rD0AvvSMlHndBqTP9L1w=;
        b=a/bX1YL2nsOMKkFxfLdW73AaTOR40GJ0ZsIuP1bbGmNHq+D7HVxZm+V4iZ02R3KOSv
         zA2ohVbOAhTnF9XaiLuoRJSyBqub73icfjmbxbX7jfpfKoaK1F7MHS3Lb0FwuYNO3mYO
         oJhzw5xqoQ9AzR+/UlNPFm82QZnBY2mFPNlUGtnsaycbdcRqBg4t5v0eret5/zlpIBlB
         p/ENjN5pzsBamFYt/c2GVpGaMWNHLbwc6i6Ylcbav9gRR7KAg8srNAUraXXB7WZ3fkKQ
         1yELv4/Xw2m65UI9enGUUeaJAtOil6RKKFz2HRO3+iyoUkGGKuuqStd2sd/jhwPq6knC
         17FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dKgmW7ypUhPAugnbt0q6eW7rD0AvvSMlHndBqTP9L1w=;
        b=iK7rhP2ZEQR5LO1wml4phtS1n6pMmACVsAz6Qnv4L6x9RqTE6FHB4ivRBzbTpws3nk
         /lHknCxe0d8O6L/PYEgm22A8fl00t5KYUtjrhVxGCeA6S1Bw0R099liLYIMtaeUNnaBH
         1VU25n2DvZhgZHdnqeXqigogXP9QQXsI2jykczz68q02znfXO+Zr3RKQMs2HFkVw/ECw
         XKJ6tbPsexUg4q2/Ahlh6ABt8oY5+i2AWroilr3t+mvvPixrZqahfCn+sjundHcqL8a2
         NtpkEGFaJQRggBQs4T+0ZhrmxFOceKWwBj6ZJLuJDY/I4nRx6k9pfpnd9iwqeX3irFrK
         4x7g==
X-Gm-Message-State: AOAM531YqO/aYNf4WQ2vNHPcwmPIxzNYkaEK1b45BUVQM1Xr4ca/OgKV
	HCyhszWxKFGvJScdZfhFa00=
X-Google-Smtp-Source: ABdhPJwJ5ARz2WaDmr2iULGqeGPz3ByXy9yG/6/bV9+q5H97+J6B2gyGLCsD+sE9HEQtE0p4kaTc4Q==
X-Received: by 2002:a2e:8059:: with SMTP id p25mr4285371ljg.155.1610022911234;
        Thu, 07 Jan 2021 04:35:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:10d4:: with SMTP id k20ls323826lfg.3.gmail; Thu, 07
 Jan 2021 04:35:10 -0800 (PST)
X-Received: by 2002:ac2:5333:: with SMTP id f19mr4268727lfh.344.1610022910459;
        Thu, 07 Jan 2021 04:35:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610022910; cv=none;
        d=google.com; s=arc-20160816;
        b=jdQyloxLTIhc9dLKKOSaH6NbIb2ly9Mu/iPkoGMpeg8VCDSLeCj0KazRJIvsIPoDQH
         iiVWezWy4vc2H5c2+qn8d7tHzfhEtAp6MyjcxVGMsCBGAArjJX0ZbWDTHHHnFb5m6MPN
         nZJp0J5ADm/ncg5UoUA9wiGDpWwFhkuXrrfnK0+gOeDBCrcmXdNV2zk2MdRigXOyeTMf
         IvoUzOFRIdD/ovOob4jONzjmTU9mPqKGDmJX3W1kBTkNL5/TXvHKpUPk39ZerutAE7rH
         TQLnLk+7vCRWG7JZapEsqNA6kK9nJ1A5M3o4N/5vOJVKm/eBfe4ss4sL9LVDIP1ibnCO
         ZQ0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=eO/PHJsxC/BU0o916BcRj7k2ZJn51umK9YSTysF7W78=;
        b=F0fEN+eUpQsPoQsVOWXlLIOuvoY8mI+XVrGN3DkHZmwwIl3uaPTJchjvcFrbpjj8bE
         Mcbtq0tPybqvYWowqDbEYSJyJW0A2Dj07AZOyqIbnk1DtxjqWg+GWC7LOonobtmIpTbS
         SGHXpdSY3xLvpdl9RPj2GhixIbbxHSRVUPcFiwIglvl44S9R5ZKSiPIHebqOIujHpWVQ
         6E4y/6UlNq3ekc8asf5Ef+beoGTpHZEJPBl6uKEalcvfrdFCLuGlALFfakvdAkcpNii2
         49JbOOa02wBcd9KAIqaabdMyJfSR1OvdBbF++DVw1ZrBUg3JJLBhch5kRlLxHd+cbbrH
         xWpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=kciYVe03;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch. [185.70.40.136])
        by gmr-mx.google.com with ESMTPS id c15si351871ljn.0.2021.01.07.04.35.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 04:35:10 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted sender) client-ip=185.70.40.136;
Date: Thu, 07 Jan 2021 12:35:01 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Alexander Lobakin <alobakin@pm.me>, Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v4 mips-next 3/7] MIPS: properly stop .eh_frame generation
Message-ID: <20210107123428.354231-3-alobakin@pm.me>
In-Reply-To: <20210107123428.354231-1-alobakin@pm.me>
References: <20210107123331.354075-1-alobakin@pm.me> <20210107123428.354231-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=kciYVe03;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.136 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

Commit 866b6a89c6d1 ("MIPS: Add DWARF unwinding to assembly") added
-fno-asynchronous-unwind-tables to KBUILD_CFLAGS to prevent compiler
from emitting .eh_frame symbols.
However, as MIPS heavily uses CFI, that's not enough. Use the
approach taken for x86 (as it also uses CFI) and explicitly put CFI
symbols into the .debug_frame section (except for VDSO).
This allows us to drop .eh_frame from DISCARDS as it's no longer
being generated.

Fixes: 866b6a89c6d1 ("MIPS: Add DWARF unwinding to assembly")
Suggested-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Alexander Lobakin <alobakin@pm.me>
---
 arch/mips/include/asm/asm.h    | 18 ++++++++++++++++++
 arch/mips/kernel/vmlinux.lds.S |  1 -
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/mips/include/asm/asm.h b/arch/mips/include/asm/asm.h
index 3682d1a0bb80..908f6d6ae24b 100644
--- a/arch/mips/include/asm/asm.h
+++ b/arch/mips/include/asm/asm.h
@@ -20,10 +20,27 @@
 #include <asm/sgidefs.h>
 #include <asm/asm-eva.h>
 
+#ifndef __VDSO__
+/*
+ * Emit CFI data in .debug_frame sections, not .eh_frame sections.
+ * We don't do DWARF unwinding at runtime, so only the offline DWARF
+ * information is useful to anyone. Note we should change this if we
+ * ever decide to enable DWARF unwinding at runtime.
+ */
+#define CFI_SECTIONS	.cfi_sections .debug_frame
+#else
+ /*
+  * For the vDSO, emit both runtime unwind information and debug
+  * symbols for the .dbg file.
+  */
+#define CFI_SECTIONS
+#endif
+
 /*
  * LEAF - declare leaf routine
  */
 #define LEAF(symbol)					\
+		CFI_SECTIONS;				\
 		.globl	symbol;				\
 		.align	2;				\
 		.type	symbol, @function;		\
@@ -36,6 +53,7 @@ symbol:		.frame	sp, 0, ra;			\
  * NESTED - declare nested routine entry point
  */
 #define NESTED(symbol, framesize, rpc)			\
+		CFI_SECTIONS;				\
 		.globl	symbol;				\
 		.align	2;				\
 		.type	symbol, @function;		\
diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index 16468957cba2..0f4e46ea4458 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -225,6 +225,5 @@ SECTIONS
 		*(.options)
 		*(.pdr)
 		*(.reginfo)
-		*(.eh_frame)
 	}
 }
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107123428.354231-3-alobakin%40pm.me.
