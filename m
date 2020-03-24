Return-Path: <clang-built-linux+bncBAABBIMT47ZQKGQEELELYHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id D595E190809
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:49:38 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id i1sf7240361pfo.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:49:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585039777; cv=pass;
        d=google.com; s=arc-20160816;
        b=L6pUqqpDwzGyof4nT3W0Hu+C4/HG47tTBhCQ0LZkHdu7kJ/gvo5otphWFbFhu+Sc9X
         KjnPpUpnh7dmwgxTg3C6tKH3AzexRfdZ3S1vTzrjcMs6eVHrirR0Ryd3uNT49LIT+rg9
         uePiLMsbytpEzK6/dUfloDEZpu5nmGJP028/zuN/S6nrWm7s+bqE7TANSJAs8hSeCUNA
         wFsn+OmqsUq9gt6KCMX0iRj9w7e5yHsHj247IR/TH4+kqKsVp3qmKCoCiWXgHILqmbbR
         /czhdO3v8BD0b8y7kYoVY1IebtesUxoitr2ll5HjOCrEV6E2y4iCEC8TnXTWZM6Dmz8m
         HvDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=PaTmvl8QJ2EaI1ItdGuT3iN3479JXu8AAH2stUdDxFo=;
        b=G++YEeyTfxqgV0AQzy+4eBR+ACIADmk/vjbTKgNgzscsxo1lCVii4brIWmVtq02WQ5
         CGD0MzYmxU5GkzkNVfqtkIjNw0tKmUP13lMtFZXWoP/52hjGESM2etp9/LopvvuXYdAF
         iO2iZFr7T8bfyyWyWSr6k+fjcVYSUa/DIHCyXeSnxyk5OlgJHExSl9viGYtzSjE7nNE2
         L6QitzaP1RiK5mfKKRNFL6Q+ULGFfNTUAvYSkdH1kWSySUARNbbA/OOSPyCy4pUcr2nT
         6QRYfYTzOUYNQNMXW3TyL/vV1iLxlQtrZfYxR9JuH28u3AJtsRiXyk63P4UbKAI0HCIS
         X2sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=VT7u0p7j;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PaTmvl8QJ2EaI1ItdGuT3iN3479JXu8AAH2stUdDxFo=;
        b=jagQhYmaaRrgcc9M9Dg7Xqtva+LftQJDuhykpG6RbIOq1vfXf6AX3pj6InUldb8u8G
         4fSnr9A8TOl41dBLj2k6jRGibnWJrRg4ucy4SLyMsyyxrYkVe/igX0kSDu6liMFTEAK9
         71+YRrmQERE09B283WV4PjeP3yBREek/byzL/tSM5WhTPeDgngaA18AmlVEuay8JFviN
         unkKWHpPGDZPtTuyROMoKXa0ksxmjz4ay39PXMTuG7/FnJsbVL0skWkOkY6xkLB5idSA
         Zf7cLR3IpYI7yy43cfZjp7ABMZzFJoe24PSPDhOXasHzy8cm8hSJ77JXZKDNQN6y+rlH
         xeuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PaTmvl8QJ2EaI1ItdGuT3iN3479JXu8AAH2stUdDxFo=;
        b=gH6aeH5yhO9fjDMy65v4THMnbUMPc0FGq/poGR31ZDbl9HaTfswzM/6sq7D8jkhFKw
         IrVPncrifM6VkDO57bNRU6CjC3hHGE9Mxq0BJGGzyV7fmFYTi3KhCWZ5qUj0jcZHdpOI
         jy+2+klhxkMmlFLou1Gk2Hc/ufcTJCg6GO5pzNw+QsPjrkx0rNsvi0fIcIPLyudBmJOf
         Z+bVmTiBpEu7qGDWgl7ulskBl86bozqOC1DkdkXpQHw5F4it0NlZ1S7Z8oRuexMrSxPi
         Nvx5wFneP5RC8HqyujaasVhOUYBHge0qW6OzE4wnfNv8Rcs/bEiQPPpk2qlVj0DiTCPf
         XEEg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1GbRnI82TMhga571DVdyFjp0MspdOAfhK5J0c5oDJmUlCLwSYi
	or3HBMNmjYUZNB1NXOoDLQQ=
X-Google-Smtp-Source: ADFU+vuETXAdS36eTImN1y3pTnGmGMTWBfXwFZ+sjeggWq/wZseLp2C77WIL5y7GXLFe+5QDDd5jQA==
X-Received: by 2002:a17:902:8647:: with SMTP id y7mr25762909plt.224.1585039777230;
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9688:: with SMTP id n8ls2474979plp.3.gmail; Tue, 24
 Mar 2020 01:49:36 -0700 (PDT)
X-Received: by 2002:a17:90a:c396:: with SMTP id h22mr4187194pjt.128.1585039776864;
        Tue, 24 Mar 2020 01:49:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585039776; cv=none;
        d=google.com; s=arc-20160816;
        b=eBmSBs+XAic9iopZ9T05PjXu58uL3gO2+/BoQ0fnGyMzKW2Q9IU7++/y2lTGBChZqm
         TWp23L/gsxcfYJ1NRJIiZAAhslbI1X0tR75Y2HULf6iZA9udhQTxnYWzQDeM+aQIPhsO
         XQFfWZEueTJi+wj8c5CtaHeb/ZBDwxCwnkZDleJmM8ytki2nW+ZSEiUQKCyo48PcQ6if
         nLJY+M+V6T7UKJbFJNY1E9z+Q5vjpmCE7hWMHyKhCrcTrclvozo/hZFB0U49zhnenYg0
         MTl5TAFIwTMaXeLaqVEVoNyfH/SXbk80lG4ab91oJnZnRqmrT10ysEV6Xe8SLZuQzDgx
         pSEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=JqtixBVE5LvKs0Tzf5JjzcEl4PHKG6BuoyaSQFvvj58=;
        b=kuM1fDyYSX77erxXCPV6F4K7wM7MwKIrPvj/haj+jeFOJmYMkp9V+ZsEqLZDRvM81T
         LtqMqtBG5mCOc6+phMiqQKJq4FOC81lHxhiQczCiGtD5k6gA+emvLOyqaPRTwzUSr5h8
         j8Tw1WRXj2Ik+W/xDVb1Jcerknh4o+psE1RGKOSVT2lACCgpi5bWJI4D187IRzPbzceq
         dyCfdD7PSMmDNkq6tAQVOJEtjbw8gqwM6v6qdQdEtbPgV91rgjhikN7q6ojXgQpw/1fq
         HORyi/sPG7w0g5we+Z9ukdXbuk2U/yQOVHIGDjc0rhAL7XK1cYWPc194i+T5DZWvY2eF
         Isxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=VT7u0p7j;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id m21si19327pls.5.2020.03.24.01.49.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:49:36 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O8mgsi011219;
	Tue, 24 Mar 2020 17:48:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O8mgsi011219
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>, clang-built-linux@googlegroups.com,
        Herbert Xu <herbert@gondor.apana.org.au>, linux-crypto@vger.kernel.org,
        Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        linux-kbuild@vger.kernel.org, "Jason A. Donenfeld" <Jason@zx2c4.com>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH 11/16] x86: probe assembler capabilities via kconfig instead of makefile
Date: Tue, 24 Mar 2020 17:48:16 +0900
Message-Id: <20200324084821.29944-12-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324084821.29944-1-masahiroy@kernel.org>
References: <20200324084821.29944-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=VT7u0p7j;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

From: "Jason A. Donenfeld" <Jason@zx2c4.com>

Doing this probing inside of the Makefiles means we have a maze of
ifdefs inside the source code and child Makefiles that need to make
proper decisions on this too. Instead, we do it at Kconfig time, like
many other compiler and assembler options, which allows us to set up the
dependencies normally for full compilation units. In the process, the
ADX test changes to use %eax instead of %r10 so that it's valid in both
32-bit and 64-bit mode.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/x86/Kconfig           |  2 ++
 arch/x86/Kconfig.assembler | 22 ++++++++++++++++++++++
 arch/x86/Makefile          | 15 ---------------
 3 files changed, 24 insertions(+), 15 deletions(-)
 create mode 100644 arch/x86/Kconfig.assembler

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index beea77046f9b..707673227837 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -2935,3 +2935,5 @@ config HAVE_ATOMIC_IOMAP
 source "drivers/firmware/Kconfig"
 
 source "arch/x86/kvm/Kconfig"
+
+source "arch/x86/Kconfig.assembler"
diff --git a/arch/x86/Kconfig.assembler b/arch/x86/Kconfig.assembler
new file mode 100644
index 000000000000..46868ec7b723
--- /dev/null
+++ b/arch/x86/Kconfig.assembler
@@ -0,0 +1,22 @@
+# SPDX-License-Identifier: GPL-2.0
+# Copyright (C) 2020 Jason A. Donenfeld <Jason@zx2c4.com>. All Rights Reserved.
+
+# binutils >= 2.22
+config AS_AVX2
+	def_bool $(as-instr,vpbroadcastb %xmm0$(comma)%ymm1)
+
+# binutils >= 2.25
+config AS_AVX512
+	def_bool $(as-instr,vpmovm2b %k1$(comma)%zmm5)
+
+# binutils >= 2.24
+config AS_SHA1_NI
+	def_bool $(as-instr,sha1msg1 %xmm0$(comma)%xmm1)
+
+# binutils >= 2.24
+config AS_SHA256_NI
+	def_bool $(as-instr,sha256msg1 %xmm0$(comma)%xmm1)
+
+# binutils >= 2.23
+config AS_ADX
+	def_bool $(as-instr,adox %eax$(comma)%eax)
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 4c57cb3018fb..b65ec63c7db7 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -177,21 +177,6 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
 	KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
 endif
 
-# does binutils support specific instructions?
-# binutils >= 2.22
-avx2_instr :=$(call as-instr,vpbroadcastb %xmm0$(comma)%ymm1,-DCONFIG_AS_AVX2=1)
-# binutils >= 2.25
-avx512_instr :=$(call as-instr,vpmovm2b %k1$(comma)%zmm5,-DCONFIG_AS_AVX512=1)
-# binutils >= 2.24
-sha1_ni_instr :=$(call as-instr,sha1msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA1_NI=1)
-# binutils >= 2.24
-sha256_ni_instr :=$(call as-instr,sha256msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA256_NI=1)
-# binutils >= 2.23
-adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)
-
-KBUILD_AFLAGS += $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
-KBUILD_CFLAGS += $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
-
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
 
 #
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-12-masahiroy%40kernel.org.
