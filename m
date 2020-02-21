Return-Path: <clang-built-linux+bncBAABBLO62LZAKGQEWXCRHVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E21B16B8F5
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 06:22:54 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id k27sf13384391qtu.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 21:22:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582608173; cv=pass;
        d=google.com; s=arc-20160816;
        b=gZPzZbLQIYwjFoLGL6cFBIn7d6aNG370+rcZI5xlyTU8/6JT0eCtEZ/sEnNKBJlpwv
         GnkZUt7EzGV9gA/jJosY+RdzxbvF0uiqSBkU0DgauaJxwmB2ImGCLAUSi9rF7JwiFs4V
         /CHQqyO5T0jpRyk1bWENkI5HMIETJbx10nX3Y7ORNj2g+pQoTNucM7Cq7dGWJaAGlRq1
         YZjjesVo5qrhASx0wv7WhowK6jn7cxtH6Dzat9kj89YDkopuYaLhe2WmkMSm242q5KbN
         dAcTPB+tGQqukiB70RW7x4hB5Ysc2KlQfIhHUjS87udq1aoBvGFuivhfPDJZTP8bc996
         BV3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=dXqsgR1YwozdK2+ZBtiYtfFNU/vEsN4H3F/cAwnS6lg=;
        b=HGFqDw9pVSgcVMKq2TEtWItiwaTCQRSCR6nrPmdafn+0PgRZu2n52q+3m6lqujqBuf
         rE52Emna4dEhE0m2AsdatDD6u1YeRb/JjsHLfmmkQrSJ+rYUJvTacevfXm4Y10K9Ci8z
         saWaazvShz+MV0ve/vIQ4/ykhNGYS0hOiIS0G7P8Z1nFExgj5t6OGls0MvzgZ+Vb7QtU
         XeoQAOXr0wQe6TBYoUFLDd22BRTXycn4oVe5qjIRRFws4AOuRSUyQtLsgGuCSPOfzRoL
         n2k7ce2nxl/CSwx8DaSnBOls/PW/gTrK/wee61fpube1BZG24/m+MXyCXpcI0HbLqG0I
         dzyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=ceeCpOs0;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dXqsgR1YwozdK2+ZBtiYtfFNU/vEsN4H3F/cAwnS6lg=;
        b=iGmwoxMdXGq4gYd/X0Ps6FufQ9xeghoDQmuVON4K/9P5u19NwrmsKmk1Ocu6690NDr
         Sur6sqyvwmTD+574hSyksaKin5zrdIlNow3MyTenh9zmfoLCTLEQvR5nnwt1RkVxhNas
         JWYqmpZDXH/xtQebwFk3DpPkJMHqyjsoq/oaM7YHi32SfCAOCUL1ozHCxMKFTTVGDChX
         laoJqTj908/um/qSUvSxVQMd9cf5NXszsJayH+CIpVyrTV8LEQmJz51MxeYjtl4kNbvI
         9bjMJHzzZLRLasQmRZ/xKQcZLVlDgC7+Z7xpXpUxHeMTFxNtB656DvvH7gS9gRHARpUR
         eI0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dXqsgR1YwozdK2+ZBtiYtfFNU/vEsN4H3F/cAwnS6lg=;
        b=isd8leGTBaEVcOmsR5OfIpdkyA5LZ6L1PGrjheX/+CQYCcmSv6V1ockWZK/Yc3y9Bq
         uRomL9AQGqexgjECA3YiSpjwhvuohDCv3LVv5YMBv3HECG6xkHSUZ7HSpa7nohv/rJiv
         JoHZWbW2Q3WVHowgerXp5UlzdMSRcbsKZ771yaA6VmIrivxdrKCoaSfU36pcF234XQSw
         ZrZQgQtstSzOSeHZVpkRlYdvbUkGizF6T7XKzFbFbNBNIGdA4XejgY2gBKp0mvsZQjGq
         f8JO1LsHXttwFF+o9RRolN8Fz9SasWzMfFpKiCjKklgGAWF3r1PTHjFeEMgy7OFK9FI2
         D12g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVVL6Q/aNebgvPCBvsMVpK/07wLrOJS7n+tM+zVRtnAyhALvML2
	C27pOJWlZta5cl6bVjXUpOc=
X-Google-Smtp-Source: APXvYqxjVe/D9uzvHL4MdiPHnLqNH00MLl9bbDI5z6oh7NNvf3GsvPKhCmE7a0rO85dlIBBo8feWew==
X-Received: by 2002:a37:af02:: with SMTP id y2mr8386569qke.73.1582608173265;
        Mon, 24 Feb 2020 21:22:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1762:: with SMTP id u31ls4556726qtk.9.gmail; Mon, 24 Feb
 2020 21:22:53 -0800 (PST)
X-Received: by 2002:ac8:377a:: with SMTP id p55mr2280264qtb.87.1582608172985;
        Mon, 24 Feb 2020 21:22:52 -0800 (PST)
Received: by 2002:a37:6217:0:0:0:0:0 with SMTP id w23msqkb;
        Mon, 24 Feb 2020 15:57:08 -0800 (PST)
X-Received: by 2002:a1c:bc08:: with SMTP id m8mr1484774wmf.189.1582588628203;
        Mon, 24 Feb 2020 15:57:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582588628; cv=none;
        d=google.com; s=arc-20160816;
        b=pzfji53jvFu3aVwfOYCFFBLMFo9qz9TeXM4s+xvgKKYn1Nvl6zzfj98HaflJGga+S9
         t8gO6ZOFLRzA0Pf//mcb6mH3WUDHyPbc+HI/RnFhTkacPm0nP56kaCRx+1MGD46pkyQ/
         EgTJgHTRMyaR1mn9PIteaSuz/i3/lTx35913psdF3cNjsVhNZRo7IIDMQ5oc7s18JgWn
         jwqDoj7L7vSHQoxtJuOWUXpiEn1m8yWa9tJewcJGu4evJl9S8vU597/uwcoOz4e2QHmu
         lk/5T1fkD5G+A+qHIQlwDn7nkedI00ItWwOfkcrwPnWQYNxiG6h1XN/knsG8xfdn4XOl
         aJ1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=knLzyUSaJSbGxSDiQWBKWSmgmd9VevAPMusi7YBYNHE=;
        b=Lys9ahMjCC1Z6becs/ebRVRLyrKjNXq8H/64cfAxdpPJsBDd1fKhML7uV2FxDKzbX4
         gBnRPLg0tAHLAShQGkkNkXFlJA3+Dn4SlKcg4pzA8HtnjBRVRjYnZGHY++Gw3pHc4U88
         iKZUnWa5W8Jxyvt7C489PRwU6WcAQ1p+YtA+m6gUtM3Y4XvGBM7PQyS+BRmo5iW0stFI
         mEyURB5R7VrR6Og/wOTGAuJj7knLMNHlGMdhrjAI13ZNHf8GPoa5VcJRV0K5clEdrWhf
         dYUkrmgbFds8NNHCvBl7F7VBnB2LEj9OJoHavZBSWhfJuKPA1H/qMcuDL284H38XaMKg
         oSTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=ceeCpOs0;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id m2si95928wmi.3.2020.02.24.15.57.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 15:57:08 -0800 (PST)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 667575C4EBF;
	Tue, 25 Feb 2020 00:57:07 +0100 (CET)
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Cc: arnd@arndb.de,
	manojgupta@google.com,
	jiancai@google.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stefan Agner <stefan@agner.ch>
Subject: [PATCH] ARM: use assembly mnemonics for VFP register access
Date: Fri, 21 Feb 2020 07:34:21 +0100
Message-Id: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=ceeCpOs0;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Clang's integrated assembler does not allow to to use the mcr
instruction to access floating point co-processor registers:
arch/arm/vfp/vfpmodule.c:342:2: error: invalid operand for instruction
        fmxr(FPEXC, fpexc & ~(FPEXC_EX|FPEXC_DEX|FPEXC_FP2V|FPEXC_VV|FPEXC_TRAP_MASK));
        ^
arch/arm/vfp/vfpinstr.h:79:6: note: expanded from macro 'fmxr'
        asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr   " #_vfp_ ", %0" \
            ^
<inline asm>:1:6: note: instantiated into assembly here
        mcr p10, 7, r0, cr8, cr0, 0 @ fmxr      FPEXC, r0
            ^

The GNU assembler supports the .fpu directive at least since 2.17 (when
documentation has been added). Since Linux requires binutils 2.21 it is
safe to use .fpu directive. Use the .fpu directive and mnemonics for VFP
register access.

This allows to build vfpmodule.c with Clang and its integrated assembler.

Link: https://github.com/ClangBuiltLinux/linux/issues/905
Signed-off-by: Stefan Agner <stefan@agner.ch>
---
 arch/arm/vfp/vfpinstr.h | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm/vfp/vfpinstr.h b/arch/arm/vfp/vfpinstr.h
index 38dc154e39ff..799ccf065406 100644
--- a/arch/arm/vfp/vfpinstr.h
+++ b/arch/arm/vfp/vfpinstr.h
@@ -62,21 +62,17 @@
 #define FPSCR_C (1 << 29)
 #define FPSCR_V	(1 << 28)
 
-/*
- * Since we aren't building with -mfpu=vfp, we need to code
- * these instructions using their MRC/MCR equivalents.
- */
-#define vfpreg(_vfp_) #_vfp_
-
 #define fmrx(_vfp_) ({			\
 	u32 __v;			\
-	asm("mrc p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmrx	%0, " #_vfp_	\
+	asm(".fpu	vfpv2\n"	\
+	    "vmrs	%0, " #_vfp_	\
 	    : "=r" (__v) : : "cc");	\
 	__v;				\
  })
 
 #define fmxr(_vfp_,_var_)		\
-	asm("mcr p10, 7, %0, " vfpreg(_vfp_) ", cr0, 0 @ fmxr	" #_vfp_ ", %0"	\
+	asm(".fpu	vfpv2\n"	\
+	    "vmsr	" #_vfp_ ", %0"	\
 	   : : "r" (_var_) : "cc")
 
 u32 vfp_single_cpdo(u32 inst, u32 fpscr);
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan%40agner.ch.
