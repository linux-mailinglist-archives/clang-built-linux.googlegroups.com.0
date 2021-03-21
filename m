Return-Path: <clang-built-linux+bncBC433LF43MBBBIEP3WBAMGQEDGA3KCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8133432B4
	for <lists+clang-built-linux@lfdr.de>; Sun, 21 Mar 2021 14:18:25 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id z12sf2717755lfs.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Mar 2021 06:18:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616332705; cv=pass;
        d=google.com; s=arc-20160816;
        b=u583ESciE+N23AkxYEkWOZBSzkeMu6iYkRgFl39SDT/VKCGrTEfJAg/nS0Mm3l/hyf
         +CSKihzdyG1Cla6TxEnq0Bqlxkze+xa9Z/AhOC6ssfk6eiApO28uPm4ZplabiPI8FieA
         L4G5VYGoDy/jKtikcndfaAH2tG4MWDnsxP8I2DTkfsJiIVxMk07W2ZVel2n+6aJ9U5Nw
         UDMeIPWH9ZCF0YZWzttoG9v8U10jhYM04Z5+d6CPbJrAv69ry9MaTBzLOCVJQfAvFnV9
         tjP2aop91iEDyfb4gyXe99C4jQ3R810EP33LuvJOnvmphP1Whk48sa/PEaF4K6AgjXst
         dlYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=qJk0CyJpB4Ca2/jxyNU5mdc9ENwdmz+yszQw90QhaHw=;
        b=TeB8HLGg3w+xBM3sG24JEyc2FZ+Zgzdt9LssRJ06pChEWKzTvqa2hpHzu4gCCbChmD
         nVBgQ1QlWy8/IrNWHU+65NnceECY4YMZ0S/Gcd/jRFtOTQAEeoW/LaDBw2+8MPVq62Vd
         RYojKzLHkJkEIb3SoJHnRSolY8CGI1BBB4Wec8v0TUaCZG+Jkb6l43gBM23Unyt7zEU+
         hQWwv+FEk8FRQJwF+/LM33WHS5t/UV36voB6sVWGKbu/fagmsuqY7OTtED+uWzg/GoMS
         xDd+iIoiQNf/g7osanQa2ONP3MWN3Hask2TI/GRu/Ax/0LTJlyHdyY6JgfPYbnHmuYaz
         8DOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qJk0CyJpB4Ca2/jxyNU5mdc9ENwdmz+yszQw90QhaHw=;
        b=DJOx8mNlL7EFQgQC27xqIuODjfOQhBcBEby/JBU/u7dHBjgd5Oao2fsqJTkJkPQ1d5
         YV90gkQz2vbMOrWgbB1Q2VHoCqVZSYnnar36C2Gr0dcQPv4VhqTpWz7RN6L6Zw+2swzP
         +tzjuu6JQNPj7f5/mX+/IusQeeuVcsFY8hNpA0IuG2sDq6nyWH/E86nhnnqvnmTFENau
         cWqXofQPKk6HKo4gtejrQXLxPDEJBN+VW6wkT24TAPJbYavvdCvCEU6Q62+DH0v5CPla
         ISbK3j1drRYmHita4m9supHwskbkTuNl0Js6oglWtzofN2AP+VBK6MMPvwVHYm7UxT8Q
         52ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qJk0CyJpB4Ca2/jxyNU5mdc9ENwdmz+yszQw90QhaHw=;
        b=YIMM7qnfjsBkn8ZJbrqt7h4DzLn+RB31qkjmzvLrnfWGTPoBj3tYpj6WQRoDUlApqh
         mqAnN0Rlfa1VjB/ETxkkiEg0hGSLJCETFErQE2M5EZ/3J5EUarhscB0b6myQ887u3WNV
         4LWnZrubpcFkeR6Kz9TXGSuP1IImmu4rcjmvuRaVi5rbj85JUelgttgfISB4dmnaHVVx
         Ob01nVhxnjVsrQmz5MK1harLRlgrIoLPSY7srxq9JzrrL8NbfpG5yDMVZFH+D+y494cQ
         qvsFO6fYoVlTArtKGNy3qJczTakMF8K52Ukbi4plS6t1OXU+lnEalJiWqFGrqkdV6L2j
         UTpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pB0eFPj1t8qcqg3VfHC02FaeXUe00EKR4hNBi4V1B5LfT35t7
	wW30WLyFJA9nAaI86EfIFsM=
X-Google-Smtp-Source: ABdhPJwCBKVnRJn0ZJ3btokp5rvptI5/60OpX5WMPzXLpHSi4D73PF8L9X65iLg+3EaghpSISfwyow==
X-Received: by 2002:ac2:5b5a:: with SMTP id i26mr6348340lfp.182.1616332705129;
        Sun, 21 Mar 2021 06:18:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8503:: with SMTP id j3ls1949992lji.6.gmail; Sun, 21 Mar
 2021 06:18:24 -0700 (PDT)
X-Received: by 2002:a2e:b0d4:: with SMTP id g20mr6734384ljl.127.1616332704007;
        Sun, 21 Mar 2021 06:18:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616332704; cv=none;
        d=google.com; s=arc-20160816;
        b=nbpYUtAG/iRJCzloEtgerElykm3zDwzzOuiA/7dX9pVKShQJ38HzoLSaMIgPYlO+Fw
         Snk4dzEidYzfkz50QfThzspfNd/qbU4TYuqgmmQL62NScTgv3DfZ3T/AlGShfA1RbPF0
         DDQ+E7AZUhpRs6b0SEThFRsQ1BO4TX2ETb/DhQmtbkjMSQW/eeLHaxm6FDJXMdRNcP5G
         JleApWPJWUNvJHYX5bEoqtrD2jghFHDm29HCTKGUEf2gl0QTlkPeAeHLjUzszr0fVtTv
         wRSCs/vwFuHOIRD03pL6gXShtkaCPgu8DarZFFXSDnnqo6jf2OGYL++OuW5gMuZFKq2L
         caIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=7+uLdWJl6+YfycjLcsztKfTEnnJ2uRAbJbjIr0P8wiU=;
        b=MdAQTWRwF1QKXNnf9o7eJFDLT8Fi4W4SIsnhl7fsHiKCNspoXSOSwu8RnX2SqvDK+m
         zoo1VAppv72gfPbcFlpADOPZLQx7Go2iNkpFkPpOng0ADWg/GuSGrQr13ev/DUydzreZ
         ljDulr0cgbhTnhCQ5PCWnBdHKbDZRgxXrGahgiDeax87IDADBxoObgLyKQz1LmAkXjGb
         QdoHQ3EcPxJlQDG4xqd6t2IM5a5toIfPuOUt6tPw4RfLCQwvkvUa8/bnoNKcUcUYA1F9
         BQfEFADwX4/bn6conIMQO1tSJ3pU2/OPRwaupTzs545v8AEHZpkFi4a/9Eu/yjmw+4wZ
         QtuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
Received: from aposti.net (aposti.net. [89.234.176.197])
        by gmr-mx.google.com with ESMTPS id l11si13624lfg.13.2021.03.21.06.18.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Mar 2021 06:18:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) client-ip=89.234.176.197;
From: Paul Cercueil <paul@crapouillou.net>
To: Paul Burton <paulburton@kernel.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: od@zcrc.me,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Paul Cercueil <paul@crapouillou.net>
Subject: [PATCH] MIPS: generic: Support linking with LLVM ld.lld
Date: Sun, 21 Mar 2021 13:18:05 +0000
Message-Id: <20210321131805.98422-1-paul@crapouillou.net>
MIME-Version: 1.0
X-Original-Sender: paul@crapouillou.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as
 permitted sender) smtp.mailfrom=paul@crapouillou.net;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
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

LLVM's ld.lld chokes on the 64-bit sign-extended load addresses. Use
32-bit addresses if the linker is LLVM's ld.lld.

Signed-off-by: Paul Cercueil <paul@crapouillou.net>
---
 arch/mips/generic/Platform | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/mips/generic/Platform b/arch/mips/generic/Platform
index b871af16b5b6..19b7d92a4ca7 100644
--- a/arch/mips/generic/Platform
+++ b/arch/mips/generic/Platform
@@ -12,8 +12,8 @@
 cflags-$(CONFIG_MACH_INGENIC_SOC)	+= -I$(srctree)/arch/mips/include/asm/mach-ingenic
 cflags-$(CONFIG_MIPS_GENERIC)	+= -I$(srctree)/arch/mips/include/asm/mach-generic
 
-load-$(CONFIG_MIPS_GENERIC)	+= 0xffffffff80100000
-zload-$(CONFIG_MIPS_GENERIC)	+= 0xffffffff81000000
+load-$(CONFIG_MIPS_GENERIC)		+= $(if $(CONFIG_LD_IS_LLD),0x80100000,0xffffffff80100000)
+zload-$(CONFIG_MIPS_GENERIC)	+= $(if $(CONFIG_LD_IS_LLD),0x81000000,0xffffffff81000000)
 all-$(CONFIG_MIPS_GENERIC)	:= vmlinux.gz.itb
 
 its-y					:= vmlinux.its.S
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210321131805.98422-1-paul%40crapouillou.net.
