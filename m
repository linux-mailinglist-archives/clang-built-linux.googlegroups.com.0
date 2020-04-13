Return-Path: <clang-built-linux+bncBCI2VAWMWUMRBSEM2D2AKGQEVL4QWMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AECA1A630E
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 08:27:22 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id 9sf3663286pgh.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Apr 2020 23:27:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586759240; cv=pass;
        d=google.com; s=arc-20160816;
        b=faVTLn4PEZ6HUhFX9XSvVe+KhTDZu3XlRVbGMqNisduJY60VIHkAzeH1TXHiyVl9g1
         Ptx6klUe5gpAEcnfD3PO5/rq5wY9QMbI2do8KvMSxK8QxM2Wz6rG+lrQsocveJ4v7jRc
         J5DYiE7QARNp1krDvH/Fy6IWh3cE/9kgR28NWphiCliZzO3F+JKHmMkdBd3Cw7lcrDxN
         T6JlUO2DEIXoYGgleGct/xz/RowlLjbwlOHPjchV8I1ksjrO5YsgAQc/MvVrYLINUwEX
         qtGgG4ro2/zdcKxdB/0A1IrDN7pnfC5LQFhTEjWM/tokWvM35xkaoGwn/nxg4XNs6LMn
         A24g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=fQTai42U10Bh5nAS30wRP1esEbfzlZVTtmvpJfbpFRA=;
        b=Nhk9e+VTUUd7M7Wf7cylfHneMUmSeNvMLa7rmwQg/9qWbcxoC0SJULgXSAYJnFzAL0
         xZXC07dKi12W7yWpxwT/PFwaB5wdTvjsntdeDusELDeg2zUoAmnMlzeYbglpIKZzSFJx
         PN2hrXfCRa0QAzTdFLIu584sJFk0DKo7c9iW1Hp2zsVUZJquuOq2//KqusYIN7ubHkv3
         mzSWwOCnR8Lgj5RveC3spOCaW7fM2R9CJhJKYDz+qLn+bJ+frC9JtyJs9P7xJGpbuMt7
         oXNR5JZJjmLvoM/7MS3NHhK9IlFReO9D//8t7pihQbKNCZ1Rftcd0D1HIu6G/76pB3l0
         DAhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=vultr header.b=mSzmbvsl;
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 2001:19f0:6001:3633:5400:2ff:fe8c:553 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fQTai42U10Bh5nAS30wRP1esEbfzlZVTtmvpJfbpFRA=;
        b=sQdzjzMNcQZguoLt6ahmaTHNhBSltjaaDOTmyqXE3O2/Lt9d6p1sQwTjQAWSjyWs3R
         P2tlQnNiikJil+g2RC/jZ9wtq3iyDaxT+PHuR+nOdBsnMwGb5pyUNqaymmfYgFCOdXB4
         Q64fSp+by7o9zV3190EQGa7q1mrLfUGoVjeGz1DY98DOX2A1GU1MQRy2mr3rHbE/fgpb
         kz6pehXrg4sxdstSCog+1INA6OXxRUI58AU+DxkX3wBX46O7UwzMbYJWR0oup9TfUpcX
         +GImV1vRVzKVZdYA0CY8ufWyaVt4jBIXeKzSfyWKs2vrTN/qlatP0ndC/1Jyve2xqJSe
         RU+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fQTai42U10Bh5nAS30wRP1esEbfzlZVTtmvpJfbpFRA=;
        b=KqT9lu4FzeXbIei2B6j+BhNvns22YhFWv+BB2cp/t9Co7wvrarW+Vp7r9CAtoCYyOE
         6gx9I9SAaHHs1gx33fSY5pczrwxEbh4PrvYRDDq7R51UACf7uanNwd7XCdl3IUo5IZ3W
         f7AIl0V6900OS0vdvsLQ2mKpEl67FjzBeziVeofTj/NkuMgw0VU+l42IKSM9e/+24GAe
         JJO5hvx2IOedWLvYEetbBpcNkVnMPIUEhroNwdzyVcYCShoFin+BBEHZpeur10LelJvZ
         vxLW8tbRpfwPvWExwGnMVmdJ1FSmhHSao2gjRYI218Kghzs9NB9c+81WZ3k1iRXJ3zPx
         k+xw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Publ38yetCYQECqEMo9DkcnDQSTwxgO01YH5yZbBXdg5IYGzqvFp
	v1apJsjA5Pse3iCL4mYun3w=
X-Google-Smtp-Source: APiQypL52fEb4+DL5p/uEwT2WPIaMzFXkJvr0eADq3E02JIf1k08ZuaeLQTZZSMBThe5Mg8YM2sDJg==
X-Received: by 2002:a62:e307:: with SMTP id g7mr15688024pfh.197.1586759240661;
        Sun, 12 Apr 2020 23:27:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7682:: with SMTP id r124ls8656910pfc.11.gmail; Sun, 12
 Apr 2020 23:27:20 -0700 (PDT)
X-Received: by 2002:aa7:8b44:: with SMTP id i4mr17232710pfd.179.1586759240285;
        Sun, 12 Apr 2020 23:27:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586759240; cv=none;
        d=google.com; s=arc-20160816;
        b=PF6mgkbQP3nYm+mNm3ojLyxwt5F9NmK9+uwzkGRQ2B2Cp4QKDOUFXUHCqgLGuBcDvk
         D899phGBOY2Zjc9eR8/uOTNiZKKPhUGj6U5QKBxM6gQ7ienNYqgKeTMlqggNO82h7+3U
         C3z43ra74kFb0tEBtlZPrbUIYaLKEI5P3DXxw0ypTcom5f0xliazegCOpVKW8QYVKoE0
         fciQc+IXxB1Vhcc4H0R1wH646CtM+kUZbjYJ1+tLyQR7XruUwcF2NYygztjVFs+j1eRr
         URTsO2LNXhjM2IHE0BjTWc5JkVXZIlX7xfQCw40JLk6iGM9gXiFYJ5rmWuRa0RvtKwVZ
         87tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=N7CRD9yElMkRERwsSTKGMElxfVIG6/S+kXfBfDHcnyY=;
        b=U5aoFDpkCYuLnQFFDku43srswp0D/H8ghwe+DL3U66jU/xI2eTpTnG6v4jv81rtXfE
         yxH4YrRaNG5MXADJX2fvraQbycodM5Rey5cAnC/g+6fq+Z0mkCL5BiXKNtELSlxyezwn
         S8fEDWqlKpJALq2LNOHXmk/56R1NfdrWp/Y5qGT57vpM632DdFZ0O4YOV1L2ucEJbzte
         59laHXhFCjgd6yW4hvQFt1XF2isDomLmYuvMmtCt3kRCKHFPmiI4LCxn3OCQy4ixpEF4
         OnhBWRQymkx4ut3k+b1SKpICriWiufLQpsoSruM1qmf7rLmBl8XljqlBN1Jf0lirb7ye
         b+Jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=vultr header.b=mSzmbvsl;
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 2001:19f0:6001:3633:5400:2ff:fe8c:553 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
Received: from vultr.net.flygoat.com (vultr.net.flygoat.com. [2001:19f0:6001:3633:5400:2ff:fe8c:553])
        by gmr-mx.google.com with ESMTPS id np5si400965pjb.2.2020.04.12.23.27.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Apr 2020 23:27:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiaxun.yang@flygoat.com designates 2001:19f0:6001:3633:5400:2ff:fe8c:553 as permitted sender) client-ip=2001:19f0:6001:3633:5400:2ff:fe8c:553;
Received: from localhost.localdomain (unknown [IPv6:2001:da8:20f:4430:250:56ff:fe9a:7470])
	by vultr.net.flygoat.com (Postfix) with ESMTPSA id 0EDB420D11;
	Mon, 13 Apr 2020 06:27:16 +0000 (UTC)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: macro@linux-mips.org,
	clang-built-linux@googlegroups.com,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Fangrui Song <maskray@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Borislav Petkov <bp@suse.de>,
	Kees Cook <keescook@chromium.org>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4] MIPS: Truncate link address into 32bit for 32bit kernel
Date: Mon, 13 Apr 2020 14:26:49 +0800
Message-Id: <20200413062651.3992652-1-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
X-Original-Sender: jiaxun.yang@flygoat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@flygoat.com header.s=vultr header.b=mSzmbvsl;       spf=pass
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
Cc: Fangrui Song <maskray@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>
--
V2: Take MaskRay's shell magic.

V3: After spent an hour on dealing with special character issue in
Makefile, I gave up to do shell hacks and write a util in C instead.
Thanks Maciej for pointing out Makefile variable problem.

v4: Finally we managed to find a Makefile method to do it properly
thanks to Kees. As it's too far from the initial version, I removed
Review & Test tag from Nick and Fangrui and Cc instead.
---
 arch/mips/Makefile             | 12 +++++++++++-
 arch/mips/kernel/vmlinux.lds.S |  2 +-
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index e1c44aed8156..18495568f03e 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -288,9 +288,19 @@ ifdef CONFIG_64BIT
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200413062651.3992652-1-jiaxun.yang%40flygoat.com.
