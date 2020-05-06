Return-Path: <clang-built-linux+bncBCI2VAWMWUMRBN5BZH2QKGQEMXLOV2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6101C67B1
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 07:52:56 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id t23sf525899oor.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 22:52:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588744376; cv=pass;
        d=google.com; s=arc-20160816;
        b=qbwpG2Ui7SZ3bQU2RbUN7+Rby2zfADtKweTgwN1Bg576LKoTbV4IRmYWnSrg+lo94d
         mXRn6GqeUylHJkEBl9lngEJCsTzzfrqyjEYV+BACfxkGXD0MSanFH5IxovTUJrX/FMUg
         EKK9XnxaBcoK1tc6X3ffQgY4gA2n622bnlKjySMKiBihyP4rz7h8fexU2tOBtSMZ05MH
         AgR89JBpv8RwAi/iow5GGLemxCJVp/9PbwYvwHVQmcGZm8bMseQgj0WWrRDNGS4/q/Im
         kIygrbMBkaDTff1YqEwZya20D8vtfgzoq89pqJp2BUiQxkHLjRaZXwodPRPewTuD0U2f
         XuYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=KWVoBufGWOK4dkMz9hzbEFpIixDjB9Kk3DHTCie6hxM=;
        b=GhjslTIkjRGUjnaTiCqpsx9aTtAnkvolyKMK91syc1sWGwruRLtOusaRIe/yo3Pkc3
         1Zk3NgX7BJbKJ6DVqgGNKKzQhntu/arX8zsaYsuAwwD70NwhRUz6nlIcDtDMQrz43QuT
         pGcLxHP/ABI55pBpAtW44k7kLBg4a2KFCKRKU+KcJkTCKx4c6yo0w7bTkOmLzZQ4IXef
         79Ay/k4IacIylWrLXli0TeCZG2Wqu7ih26ZYnnHCniaxCLR0aO4o315BhSUJ7gIDa3ph
         7+Pjcjc/uaLfDPJdeLyr7OqChNyWrlw/7U2r/97c9OXedKXQKa5QKjgk7tAvRwI3vBJg
         5Q6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=vultr header.b=EGxnwT5h;
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 2001:19f0:6001:3633:5400:2ff:fe8c:553 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KWVoBufGWOK4dkMz9hzbEFpIixDjB9Kk3DHTCie6hxM=;
        b=a8vJK3W/aKNPNWSIC7EbQnMVOMxRbKNaEzoZdMtesiL7zgEBbu6W5tEWWmph+xVctu
         +jiqgzqWLREh2SGBfRaxDSyWKgOD4ynMCOlnnP1KmxBZXJTZtp2UKAA4Sb29Plb2BT40
         ZSVv5TdF/M0ZVvIXhAoWG06fJ5UsWeQwLDQZUBq+0T9Vbr3+2+0GfEa2O3V9sQL/UJWT
         KKK3YPekrcp8MxfAjXvL+Lw6noYL7qf/5TeSRi9eyvOcI9rvXuaVt+KkCEjoB472Xmwh
         vVJMBrTbZFhaZ/AR23IQWPfexGG3+VrfaaLUk5i19DJYn9VgedZsovcJNmDGQMeLvW9f
         FdjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KWVoBufGWOK4dkMz9hzbEFpIixDjB9Kk3DHTCie6hxM=;
        b=hOYXklk67jsuzajg1ivNN/ubC5ly2KuL8P5YzfY3UyiBXLNdPNwbsb7C0oCQZ+rD+Y
         RpkNnKPqEAe9BCFJCpLGZjyIvVshx57n8fJV39fOd0BCTE6Cx6mhQ8i92mIKN0xLkRmH
         10SQiyf/bUy0ii+kaRR/XKqN7zffzaYNXC+n3E6J2HysJg67B9Gh4asjZMCKc9RzZa6v
         yAa6NNx9w5S/Hbfbbe4Db46T9B0WM12f243eh8kv88p/4IszsmODdgHAMuY8HGkRAvQe
         yvPdJZrH9LGL3atMYbDg8cQmM/Cqskqu2fjHFvYFd4CVZATHmakxgvd1xFLK8mvF+9nA
         oxzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZdMnORnKjVBtDvhayNrY4N5uEYs1hkqxjmzJdGJdjgAArBd6MD
	imeb/zYqF/w0CvjaKpTxo/0=
X-Google-Smtp-Source: APiQypKdpKCrI+lTWvXCqwxYjNJ6x/MpTn+rcGIWS6lp9MHkc2BYEACVhQ9pJaWp2LJt/jmxBtPWJA==
X-Received: by 2002:aca:c4d3:: with SMTP id u202mr1571421oif.113.1588744375881;
        Tue, 05 May 2020 22:52:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5390:: with SMTP id h138ls269105oib.4.gmail; Tue, 05 May
 2020 22:52:55 -0700 (PDT)
X-Received: by 2002:a05:6808:53:: with SMTP id v19mr1655055oic.72.1588744375580;
        Tue, 05 May 2020 22:52:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588744375; cv=none;
        d=google.com; s=arc-20160816;
        b=owVC01q2Z09eCvuI4iQh87KFsEcAtvrLaWzWEacpksBmeXnGbZAANciCRiEVihTpXO
         XgoQeU6hPNApHXGkKBXRl6mKL+835u3QwnJ3gRi9YrgTKkgbbRVd1Gf4JMdEqqUiikb2
         pO9KVVohOinkDD4ph+HHmnXjiYvjs9nWer+A7tS99gqSrJszpNNK6geCCMJwjZCkl2Ph
         K6Nz62IQtJWV7eWvgLKE+tN/gAPP+8gyo5ERbIXXCVJRfpMtNrFHpDs9FvEvjzkMheP8
         G4g0xTNDX8bmg5SjUxx913RfQewBJB747GX/JGdWH4MwtEgsk7F3Wi+sioH5NmNjnd/u
         cr5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=yCwKL/KjWTFzErtZfWH1qn9qqKTNRGRHmWhZYeYpY14=;
        b=h48DXo6ncjfO/NS8vsOFTIqWphZSYCl8yIt55y/Q/bohnsaVSYo1EiXBCOuHZWEUNn
         IOOK6H6NEuw/eR5A3OwHmsL1jRuEMIol2ME8Wo9fif2fBCPTz7fSywaFWrDG0mdRYbI2
         ezkcPqB91vxHd9aElABC4bzJc0cMyJNrdbnIOH7XDmEsqBbZOvqjkvJJEBQRIYdL9TXK
         IsdJ7tl0o9Sw8LSwIYIG1qB2cfaCjKRFRHhO8Eu5Vf96DjkEPjMesB4XPlhJ7d0gqwrr
         /fDblyr7OFqpyvcar5sl3Q8rz7EymNS8kMDu5mQ7n2QOPmyPx3nSc+gfwsHWSZ04jCyu
         tfjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=vultr header.b=EGxnwT5h;
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 2001:19f0:6001:3633:5400:2ff:fe8c:553 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
Received: from vultr.net.flygoat.com (vultr.net.flygoat.com. [2001:19f0:6001:3633:5400:2ff:fe8c:553])
        by gmr-mx.google.com with ESMTPS id i22si109448oib.2.2020.05.05.22.52.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 22:52:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiaxun.yang@flygoat.com designates 2001:19f0:6001:3633:5400:2ff:fe8c:553 as permitted sender) client-ip=2001:19f0:6001:3633:5400:2ff:fe8c:553;
Received: from localhost.localdomain (unknown [142.147.94.151])
	by vultr.net.flygoat.com (Postfix) with ESMTPSA id 3FD83204A8;
	Wed,  6 May 2020 05:52:51 +0000 (UTC)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>,
	clang-built-linux@googlegroups.com,
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
Subject: 
Date: Wed,  6 May 2020 13:52:45 +0800
Message-Id: <20200506055245.3013374-1-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
X-Original-Sender: jiaxun.yang@flygoat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@flygoat.com header.s=vultr header.b=EGxnwT5h;       spf=pass
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

Subject: [PATCH v6] MIPS: Truncate link address into 32bit for 32bit kernel
In-Reply-To: <20200413062651.3992652-1-jiaxun.yang@flygoat.com>

LLD failed to link vmlinux with 64bit load address for 32bit ELF
while bfd will strip 64bit address into 32bit silently.
To fix LLD build, we should truncate load address provided by platform
into 32bit for 32bit kernel.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/786
Link: https://sourceware.org/bugzilla/show_bug.cgi?id=25784
Reviewed-by: Fangrui Song <maskray@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Cc: Maciej W. Rozycki <macro@linux-mips.org>
---
V2: Take MaskRay's shell magic.

V3: After spent an hour on dealing with special character issue in
Makefile, I gave up to do shell hacks and write a util in C instead.
Thanks Maciej for pointing out Makefile variable problem.

v4: Finally we managed to find a Makefile method to do it properly
thanks to Kees. As it's too far from the initial version, I removed
Review & Test tag from Nick and Fangrui and Cc instead.

v5: Care vmlinuz as well.

v6: Rename to LIKER_LOAD_ADDRESS 
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
+KBUILD_CPPFLAGS += -DVMLINUX_LOAD_ADDRESS=$(load-y) -DLINKER_LOAD_ADDRESS=$(load-ld)
 KBUILD_CPPFLAGS += -DDATAOFFSET=$(if $(dataoffset-y),$(dataoffset-y),0)
 
 bootvars-y	= VMLINUX_LOAD_ADDRESS=$(load-y) \
+		  LINKER_LOAD_ADDRESS=$(load-ld) \
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
+		$(obj)/vmlinux.bin $(LINKER_LOAD_ADDRESS))
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
+	. = LINKER_LOAD_ADDRESS;
 	/* read-only */
 	_text = .;	/* Text and read-only data */
 	.text : {

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506055245.3013374-1-jiaxun.yang%40flygoat.com.
