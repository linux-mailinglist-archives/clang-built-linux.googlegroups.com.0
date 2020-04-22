Return-Path: <clang-built-linux+bncBCI2VAWMWUMRBNNLQH2QKGQEYPNZ6ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id BBADE1B475F
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 16:33:26 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id z1sf1054143uar.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 07:33:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587566005; cv=pass;
        d=google.com; s=arc-20160816;
        b=DrC2n60IkvqtUuTrTE4cUpjUDaz3ThALaQ0SpIQkO+Y2H4w1slzuem/5jwtXxL+mgL
         C3C6FigN5LFwzgcSRWrwBHHj6D0F/07DMRo58tHc08z8m5quOzh7LG9HoGyEq8Y/I6IX
         h9ajcgRrLfUvwMbP4sdK81+Zki3eodPMoA3deOPSze2tjyf7QdlhwX0s+xxk9mLrf1px
         rczaUJo/1ZHTE57vfJxyYkBZz+FQU2Wp1B2UWe5VGhNTCXTGEXBw57NvkyH1f98qTLga
         u+5P44XJIdxqZCZtzRhaEr2zC3LRkRc5pzJwV8nwh2YdsWLSTwIpUMAFk1Ix1Ik5cvwE
         BWiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6Y+7j33Sie3n1EAqJo4MQ9AjyQNsej001RZ8HcjHId8=;
        b=owSg8XIay6iFc9pT3FDaJPy0b8ZfdJ7JiX8mOYAoPuZoT7Lid7lnEpbNlF0q2ZdisP
         NdAwMrdYaOGF3auxuxqo4qecDTvI5nY1w+3GQfP3V3m28FuPXHzOwbZM17agfeTF4D3F
         ctBmQ3X390SZZ0+nJ2r2Id2xvm7Txl9EwHyKhzKXX7tnnNXA/j21vis5ygF5kX3v1jET
         DSqDMsHFYOSdAHMNgnKm0UG9pNFOpOc0qvpeforqr2n73hOdp1OfkLJUufO6MXQmW0+Z
         tZ87YJLecTirnZvKheecu2pqK+rWlifhjowDY1un4eZL9LkrU0e46bJyI5Rv83O/FnNQ
         3gLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=vultr header.b=N8HBeMWy;
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 2001:19f0:6001:3633:5400:2ff:fe8c:553 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Y+7j33Sie3n1EAqJo4MQ9AjyQNsej001RZ8HcjHId8=;
        b=ThuMaOjCPS66+DtdDuhWQX2sVFMj+q14M88qMg+u1iOvvmOS1iwUMTqPku4oyMe6+a
         81k+M2XWcICjr6k79EyzM43ORvneTTmmdqxF5746JLYGuZWSC2AFbqKdbHRuporiSV3m
         RUkAsOt11l4D+U4wczgxnbBefm6+dOuoqwHZix+3a7GNJJSc2EVDXgDm2thiD0Jzxg7e
         bW/rYLu3m2t99hg0IpdTLf99+VLEKHQYm/NiyBCvIqsZ3d4hnWlC3PocLV7WgjlbTAsW
         BaZm4+6PzoNVx/QjTkvbkBq8LnUVfBkKG4gmj7hpGO4qVbRed5wuXO/eu/w7cEXYFgRJ
         ySrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Y+7j33Sie3n1EAqJo4MQ9AjyQNsej001RZ8HcjHId8=;
        b=tJg1PfLzs/Yb10TNncSacPME3GZVF/J9dKfCdF5NoTN6sfjPA/XX/pcGKqqSpyaYg4
         WFiNXuTWRkmB+WjhmyZvUvfxxp4Q1yihHZOSsGPoEgyCdixJxxwkOf+8F8QGWr+Q/NUR
         xltD8AHEln+c2UUoP2tpT4om3Z3XE9cUlaCEnzlm+k2kE96QjI+/+XifWRInOAGpithb
         HYPBBIH76N/BStQbsFaMYzXY1yHo05iku27y7qkxdxR8uSfHoE6SGxA+3OYqJ4Yws5iY
         0zu0b03XKCDILkDPZUbUoZ5WRncSEEZ5m9vT3Z3Juj9Io1KYRfbUpvSQrwJInczl6mgv
         cMBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZHL8PB3J+WX+HQPgHZbLlHNlZ2f1QGoTsVykoDttH8VLJqr0h7
	bFgpXnSuS7i0kVC9bIq+RWg=
X-Google-Smtp-Source: APiQypIm7j7BxLYThLOl2JVj+VAsWKo+e0LOa7Pp70dLIr0jUfU2EJ0rN1cvazkZxsMxWiVQuGOaxg==
X-Received: by 2002:ab0:cd:: with SMTP id 71mr14432924uaj.109.1587566005719;
        Wed, 22 Apr 2020 07:33:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f1c8:: with SMTP id v8ls343810vsm.7.gmail; Wed, 22 Apr
 2020 07:33:25 -0700 (PDT)
X-Received: by 2002:a67:7fd1:: with SMTP id a200mr19691827vsd.114.1587566005178;
        Wed, 22 Apr 2020 07:33:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587566005; cv=none;
        d=google.com; s=arc-20160816;
        b=DCNqukPhRmSXqTAfCzX3fdAtjK3vNDZcwDHdNypI9vMyrhP09AyDv8imCm/Q7ckTcv
         yOBL9JKgLJHJd8cjLAHei+46G2mhRz7zJzL5LFO6/0aTXHB4FXVIef5v2kgI/DuFTxNk
         opIXumahPLJHKxQZtp3SwsG72T/9n6rh3gek6XV2XL+cfpEfvyysEe8llhXWhu+jvz+u
         nl4QxsH2JULEgs6zKomaaRTxDs8r9kqsVwP/o+Lvm3+b9DS2/aVC/X7wdedV1JB16GL9
         3tIjdTDyy/xrni7oCtS6rf3/2wJe1so4eQk56Tw4QRT5FcPcpVacQMmSwOK3WvtvGJQY
         Faxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=yYmPH65voFOF7kTUQC/rDai/QmU3LHu6Zsl1XsnGmWw=;
        b=E/flEaB5otSAVRQta3ndbTsh8JutkCwecrdFhHTIVAe7tAIy09KTJZtPrR8sGrFgXn
         zAVY2VuFLb5R2x2JrJHdI5ng0+miydr3B2RdZMtJjyHMHNbZG4woKI5yZEAykXBYDCHc
         dSvYGyOTfUZ7tyrozNkRB8LX6wevqRNA9gvcZ4aoZGPsi3xyUCF2Mx0fiYOuvGPA3qPv
         ClBqrAR5rcgRnE0rhRP9ZSDzHyI4OLxC/zCq0nFlkTuLFIEN3p7hdoE8bRSnc7wzxexE
         pi+X2sMN//oQTbaVtpZ78HDjeuiMK4gv9O1XD8U5h0IgJvRdyTACH6YZ3thq3h8+A2x+
         7ZHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=vultr header.b=N8HBeMWy;
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 2001:19f0:6001:3633:5400:2ff:fe8c:553 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
Received: from vultr.net.flygoat.com (vultr.net.flygoat.com. [2001:19f0:6001:3633:5400:2ff:fe8c:553])
        by gmr-mx.google.com with ESMTPS id t191si525112vkt.0.2020.04.22.07.33.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2020 07:33:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiaxun.yang@flygoat.com designates 2001:19f0:6001:3633:5400:2ff:fe8c:553 as permitted sender) client-ip=2001:19f0:6001:3633:5400:2ff:fe8c:553;
Received: from localhost.localdomain (unknown [IPv6:2001:da8:20f:4430:250:56ff:fe9a:7470])
	by vultr.net.flygoat.com (Postfix) with ESMTPSA id 28E9220CE6;
	Wed, 22 Apr 2020 14:33:21 +0000 (UTC)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: clang-built-linux@googlegroups.com,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	"Maciej W . Rozycki" <macro@linux-mips.org>,
	Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Paul Burton <paulburton@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Jouni Hogander <jouni.hogander@unikie.com>,
	Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
	Borislav Petkov <bp@suse.de>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5] MIPS: Truncate link address into 32bit for 32bit kernel
Date: Wed, 22 Apr 2020 22:32:54 +0800
Message-Id: <20200422143258.1250960-1-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200413062651.3992652-1-jiaxun.yang@flygoat.com>
References: <20200413062651.3992652-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-Original-Sender: jiaxun.yang@flygoat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@flygoat.com header.s=vultr header.b=N8HBeMWy;       spf=pass
 (google.com: domain of jiaxun.yang@flygoat.com designates 2001:19f0:6001:3633:5400:2ff:fe8c:553
 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
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

LLD failed to link vmlinux with 64bit load address for 32bit ELF
while bfd will strip 64bit address into 32bit silently.
To fix LLD build, we should truncate load address provided by platform
into 32bit for 32bit kernel.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/786
Link: https://sourceware.org/bugzilla/show_bug.cgi?id=25784
Reviewed-by: Maciej W. Rozycki <macro@linux-mips.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>
--
V2: Take MaskRay's shell magic.

V3: After spent an hour on dealing with special character issue in
Makefile, I gave up to do shell hacks and write a util in C instead.
Thanks Maciej for pointing out Makefile variable problem.

v4: Finally we managed to find a Makefile method to do it properly
thanks to Kees. As it's too far from the initial version, I removed
Review & Test tag from Nick and Fangrui and Cc instead.

v5: Care vmlinuz as well.
---
 arch/mips/Makefile                 | 13 ++++++++++++-
 arch/mips/boot/compressed/Makefile |  2 +-
 arch/mips/kernel/vmlinux.lds.S     |  2 +-
 3 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index e1c44aed8156..68c0f22fefc0 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -288,12 +288,23 @@ ifdef CONFIG_64BIT
   endif
 endif
 
+# When linking a 32-bit executable the LLVM linker cannot cope with a
+# 32-bit load address that has been sign-extended to 64 bits.  Simply
+# remove the upper 32 bits then, as it is safe to do so with other
+# linkers.
+ifdef CONFIG_64BIT
+	load-ld			= $(load-y)
+else
+	load-ld			= $(subst 0xffffffff,0x,$(load-y))
+endif
+
 KBUILD_AFLAGS	+= $(cflags-y)
 KBUILD_CFLAGS	+= $(cflags-y)
-KBUILD_CPPFLAGS += -DVMLINUX_LOAD_ADDRESS=$(load-y)
+KBUILD_CPPFLAGS += -DVMLINUX_LOAD_ADDRESS=$(load-y) -DVMLINUX_LINK_ADDRESS=$(load-ld)
 KBUILD_CPPFLAGS += -DDATAOFFSET=$(if $(dataoffset-y),$(dataoffset-y),0)
 
 bootvars-y	= VMLINUX_LOAD_ADDRESS=$(load-y) \
+		  VMLINUX_LINK_ADDRESS=$(load-ld) \
 		  VMLINUX_ENTRY_ADDRESS=$(entry-y) \
 		  PLATFORM="$(platform-y)" \
 		  ITS_INPUTS="$(its-y)"
diff --git a/arch/mips/boot/compressed/Makefile b/arch/mips/boot/compressed/Makefile
index 0df0ee8a298d..3d391256ab7e 100644
--- a/arch/mips/boot/compressed/Makefile
+++ b/arch/mips/boot/compressed/Makefile
@@ -90,7 +90,7 @@ ifneq ($(zload-y),)
 VMLINUZ_LOAD_ADDRESS := $(zload-y)
 else
 VMLINUZ_LOAD_ADDRESS = $(shell $(obj)/calc_vmlinuz_load_addr \
-		$(obj)/vmlinux.bin $(VMLINUX_LOAD_ADDRESS))
+		$(obj)/vmlinux.bin $(VMLINUX_LINK_ADDRESS))
 endif
 UIMAGE_LOADADDR = $(VMLINUZ_LOAD_ADDRESS)
 
diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index a5f00ec73ea6..5226cd8e4bee 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -55,7 +55,7 @@ SECTIONS
 	/* . = 0xa800000000300000; */
 	. = 0xffffffff80300000;
 #endif
-	. = VMLINUX_LOAD_ADDRESS;
+	. = VMLINUX_LINK_ADDRESS;
 	/* read-only */
 	_text = .;	/* Text and read-only data */
 	.text : {
-- 
2.26.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200422143258.1250960-1-jiaxun.yang%40flygoat.com.
