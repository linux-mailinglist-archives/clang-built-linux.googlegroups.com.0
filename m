Return-Path: <clang-built-linux+bncBCIO53XE7YHBB7NU2HZAKGQEDVCD3YI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB4616B50B
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 00:21:34 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id q187sf9374992ywg.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 15:21:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582586493; cv=pass;
        d=google.com; s=arc-20160816;
        b=Or3qeByL2xfPTzxeawsSRrgw+R3/z1+J2VHGbZZ3oWAWCZ0h5KyYhFRy5ylfTn4cLc
         dYnUWuSjMhVAv8DETKJ9D9xnmbDWwzgxZX+iNV7O1zTLawVy5eKTyXR4MzF53Bvrpa0G
         NKWU1b8ZSUddsCPFikSY4MdK6t5BXyn0ophPkRZzcILrIBQYxilnSTVI4fQ2g0D5xxY+
         e9e/dPLi1DW5WHt1BXRqQx8Jszr2efqIEAbe0fEHnYT9Q9lg5yhbxqDRzoBk4JERlY28
         jZetcc6+xvSN+J4/bQN0PCEhT3mA/z3drlyfwPfM8K7xx9grVV5cWtkjtQXSi5iAU+YW
         dHUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=p+cj+TdNzlB75GmDCSFdq9gIF04jQE87mn+bghmZqCI=;
        b=BN/++d9b+vj978ZI4Ja8bmG/c3FRz7j6OqDHnolLfCCC/6AJRmmV6eE8SYg96CEl0p
         Qzhp1vX0tT6P6wLaAExTzBSNaD8cLeFKGxFxIOl0SRYFtaycYpu4JtvbNi/e2I6Vhzwv
         iZpT4WrHmMxCPAEWKkeXHI3NChMFzcP++8RSVHlZhgt3Go5uh140vnYhRSTwP+/Qj35T
         QRrssNypKSjW5Ey7133plJH11gXZiDh05GBJRQcMSiG7trQV4lv9+neomB1XgralgpA9
         TLFddvdXXfnwr7DZMR9ijA7te4piY4Q8RbTnMUeNfuiukpRisPBQ3gSbfiB0i3BsSl/l
         jL+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.68 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p+cj+TdNzlB75GmDCSFdq9gIF04jQE87mn+bghmZqCI=;
        b=sn6t5HlvlOhqXkdyrX9sVXYk8IInWLXOBzpDYC6B7xdE0tVz+WJuJhrdoyvjb9VCYz
         cp3p631RAPpU3rP/uUU1n2cii45SwlAYoag5x+7W67OxEktu+5osRQ3+YTU8dxkazF98
         BqTrJKN9xYABuaYrAuGidXIndZaXvHyvG0rlQzrNDN76+m5eN1uC7O+r6bjG7dwup/BD
         JWSZf8VcpnH/u+SpvPN4pVCz1loqENkWmmf1yeknQnRFqxqMdKCtUyr5aBfGug2lTMEL
         xGD/t21eGbF07IHEILyRIB9kPDpKUm6BJXJv8174OE0BqtPBobGkfiQpKVRWFrkbGfrb
         UF0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p+cj+TdNzlB75GmDCSFdq9gIF04jQE87mn+bghmZqCI=;
        b=MZLfy329GQ53+KkGWxYg7ofT2ws0gtxzDfCiqaAM3jQwR4pNDGj1a4WNyFshOX/tEt
         HNST8/3HNbn9EDTFCf5lnUOFWKB1XL6QYWSRRIu2ICgZ26g04vLxNb42WoiWda31464a
         iG5XgeYlb2kSlloJROA4MdpCXRIczX6zshdhGF2T3hm8wZ1TF1Ny6wJha+DEqQ3DvjDe
         T2EZmhw0GjABzVGqYOIa6uBWeKWf+3/rsNGF9lfh81FpinzQkbIpibk2i2XORuiSkQ1m
         zdrypF06HhBLh9QS24Ja5BFVMMLoGukTyycsYjqdK8YkuWEV8HkSzOI3+EJXsxU0Qcft
         cQwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVg/3c4OqXv48epqFbKJr2lTVHC99MVMCKCRgHPNS8UA4NjD7Ph
	9ZlMSrtNio+AAzxnyycAQEc=
X-Google-Smtp-Source: APXvYqxWzeOztH1N4Evv5KGGc1lEB0g/KiV6tZHmxmI//bgxKU0SEAGGiWZ6lLL3r8L1x+A417CGYA==
X-Received: by 2002:a81:a0c1:: with SMTP id x184mr43708029ywg.175.1582586493411;
        Mon, 24 Feb 2020 15:21:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa4e:: with SMTP id s72ls2598267ybi.3.gmail; Mon, 24 Feb
 2020 15:21:32 -0800 (PST)
X-Received: by 2002:a25:2f44:: with SMTP id v65mr8869829ybv.442.1582586492361;
        Mon, 24 Feb 2020 15:21:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582586492; cv=none;
        d=google.com; s=arc-20160816;
        b=TllTiH3z9sLfxXuQrefgm8vdQZ0BwkI+VY5W+c0YkV9XnXo2xjYB21XSXKfeEpvbTe
         JU/HxMzjl1DfY/Wi3k3EUlB5dX71EcjBrpUFiURtGAMDAswqEkfzYaAPukgeIflStlmo
         fUsc87cvK2FIcCo2l/s2TAwlyptvp06a8bNvpRH8Rp3KAp9S72iZHbKZTTEmDM8u1Ugj
         nsWm8jkelwgJAXPlYvuJhfJVTkowBa/UpTHlzKo4o/jOxUv4vIPs3FS4Qkj3kX9oPPfZ
         WQp6iCLgXMIQXMvKclDKvgsg81bZW/rpO1VH1Ukf3jj5d2gu+2VOgr7rAbZreguGf0ym
         c8lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=8qgdvNENjdppslkpYoe+OSQTy4MavzCmuXPJ3KTJBw0=;
        b=a833GKy+VlLI0EMhKvpYEkplvIq6Q+gL6UyOuFywJFmJ+s/gwPr7atLHZYXExQquX4
         PKeOrh6IrKRoQJklzXy88UDR3vjaCRihBK22mPzLu6h7Gn9wd0mlwI07UfafaFkP6K9k
         tLfCiqA992jQB1xKQKXwN4i1cgb24D68SYd9QdhaBzFRE5kV690R038AILY4FKXhzndV
         vBIBBFhS61tLsS+zqXJ8hl1whetviSz9gLXxjQwSmW7WUWcThL31LvoPGSqQqJlb7CZ1
         1FiaLBoFYCE9Fa1Vko7mntUh9xHOI3qE9v5cIHWr8gq73/Cbj/5z96Zf4sCE7chfxYRu
         +hvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.68 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com. [209.85.219.68])
        by gmr-mx.google.com with ESMTPS id i200si929857ywa.3.2020.02.24.15.21.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 15:21:32 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.68 as permitted sender) client-ip=209.85.219.68;
Received: by mail-qv1-f68.google.com with SMTP id ek2so4938021qvb.0
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 15:21:32 -0800 (PST)
X-Received: by 2002:a0c:ab13:: with SMTP id h19mr46293624qvb.243.1582586491902;
        Mon, 24 Feb 2020 15:21:31 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id 202sm3757849qkg.132.2020.02.24.15.21.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 15:21:31 -0800 (PST)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Michael Matz <matz@suse.de>,
	Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>,
	Andy Lutomirski <luto@kernel.org>
Subject: [PATCH v2 1/2] arch/x86: Use -fno-asynchronous-unwind-tables to suppress .eh_frame sections
Date: Mon, 24 Feb 2020 18:21:28 -0500
Message-Id: <20200224232129.597160-2-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <CAKwvOdn6cxm9EpB7A9kLasttPwLY2csnhqgNAdkJ6_s2DP1-HA@mail.gmail.com>
References: <CAKwvOdn6cxm9EpB7A9kLasttPwLY2csnhqgNAdkJ6_s2DP1-HA@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.68 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

While discussing a patch to discard .eh_frame from the compressed
vmlinux using the linker script, Fangrui Song pointed out [1] that these
sections shouldn't exist in the first place because arch/x86/Makefile
uses -fno-asynchronous-unwind-tables.

It turns out this is because the Makefiles used to build the compressed
kernel redefine KBUILD_CFLAGS, dropping this flag.

Add the flag to the Makefile for the compressed kernel, as well as the
EFI stub Makefile to fix this.

Also add the flag to boot/Makefile and realmode/rm/Makefile so that the
kernel's boot code (boot/setup.elf) and realmode trampoline
(realmode/rm/realmode.elf) won't be compiled with .eh_frame sections,
since their linker scripts also just discard it.

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Suggested-By: Fangrui Song <maskray@google.com>
[1] https://lore.kernel.org/lkml/20200222185806.ywnqhfqmy67akfsa@google.com/
---
 arch/x86/boot/Makefile                | 1 +
 arch/x86/boot/compressed/Makefile     | 1 +
 arch/x86/realmode/rm/Makefile         | 1 +
 drivers/firmware/efi/libstub/Makefile | 3 ++-
 4 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/x86/boot/Makefile b/arch/x86/boot/Makefile
index 012b82fc8617..24f011e0adf1 100644
--- a/arch/x86/boot/Makefile
+++ b/arch/x86/boot/Makefile
@@ -68,6 +68,7 @@ clean-files += cpustr.h
 KBUILD_CFLAGS	:= $(REALMODE_CFLAGS) -D_SETUP
 KBUILD_AFLAGS	:= $(KBUILD_CFLAGS) -D__ASSEMBLY__
 KBUILD_CFLAGS	+= $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
+KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
 GCOV_PROFILE := n
 UBSAN_SANITIZE := n
 
diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 26050ae0b27e..c33111341325 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -39,6 +39,7 @@ KBUILD_CFLAGS += $(call cc-disable-warning, address-of-packed-member)
 KBUILD_CFLAGS += $(call cc-disable-warning, gnu)
 KBUILD_CFLAGS += -Wno-pointer-sign
 KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
+KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
 
 KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
 GCOV_PROFILE := n
diff --git a/arch/x86/realmode/rm/Makefile b/arch/x86/realmode/rm/Makefile
index 99b6332ba540..b11ec5d8f8ac 100644
--- a/arch/x86/realmode/rm/Makefile
+++ b/arch/x86/realmode/rm/Makefile
@@ -71,5 +71,6 @@ $(obj)/realmode.relocs: $(obj)/realmode.elf FORCE
 KBUILD_CFLAGS	:= $(REALMODE_CFLAGS) -D_SETUP -D_WAKEUP \
 		   -I$(srctree)/arch/x86/boot
 KBUILD_AFLAGS	:= $(KBUILD_CFLAGS) -D__ASSEMBLY__
+KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
 GCOV_PROFILE := n
 UBSAN_SANITIZE := n
diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 98a81576213d..a1140c4ee478 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -12,7 +12,8 @@ cflags-$(CONFIG_X86)		+= -m$(BITS) -D__KERNEL__ -O2 \
 				   -mno-mmx -mno-sse -fshort-wchar \
 				   -Wno-pointer-sign \
 				   $(call cc-disable-warning, address-of-packed-member) \
-				   $(call cc-disable-warning, gnu)
+				   $(call cc-disable-warning, gnu) \
+				   -fno-asynchronous-unwind-tables
 
 # arm64 uses the full KBUILD_CFLAGS so it's necessary to explicitly
 # disable the stackleak plugin
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200224232129.597160-2-nivedita%40alum.mit.edu.
