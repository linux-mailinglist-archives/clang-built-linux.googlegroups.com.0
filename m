Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB6UGTPZAKGQELOFZNLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F2415DD27
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 16:57:48 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id l15sf6307644pgk.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:57:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581695867; cv=pass;
        d=google.com; s=arc-20160816;
        b=ynEMbKGh0v1yVT/EE+I6w0CLQUVJSca6DobGE4qKSu3Jdk/z/PGEAQGBIv/zYcrhtx
         ILzGAN1XEglBH+yra8Wkutq9Qzw3mUtYIz8PsHF+Omg/Shmevnz7VkZp9/JU+4AKQwHp
         2y5WfnvjTkT2hyvQSAkEcCyGiYKTpAruVVgTNwRA3isTkUBkExZuadzeqPxbqhD74O7G
         iX9CI4D9V6M6Yl4Lsco+QhZojxODGqGgdfC/CCMbn86wFLuinK2KJj9O0XYEKpRbwqBo
         Ab7HTc4cR6qJReCUPvwlk+jHNGR4rpZKR+SPgH74BnVzDmxPRtKDo2TGI79wVhuRH382
         ZIWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vp2WMVlGKiP5oR8c5SPxKFKKIQyhYq906XDEiuHHYlY=;
        b=kiG8woyBGUmbPe5duzTo6swX6QvxQq9dh1HtZZgDM7WPPDNJRCV3qDZN/CBmr2Deg7
         mh7VsRryh9zRErRj1GVmn1Cs1PodmC84RqPZdXMNFYWKATursV4vpGTa6H4XdO0g5KtY
         AZ5ZGuBHMcTM2aX/LAf92UDcxwGgLX39sub0XcI2JxaNWJoCUuyMp+BLaqFQTElbpWRU
         80GljdEk3wR1sHcVS8Q5IuDmm8ZEuGqBiol57vp256EOjgpfzagPr+vfNVkvdQURQre8
         RrfEbaSjlD/kzA4fpMrpF2/Du05Hi+lTZYIj+GjRNivzkEQIjskD6xsrgaTXc2rjFviv
         Z1qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1bXVbvPg;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vp2WMVlGKiP5oR8c5SPxKFKKIQyhYq906XDEiuHHYlY=;
        b=D2wio+POjbqFxMXtAykdxVhgnTovKa5lFNmjQBjJlebGErjFnL/R2V7a7q+VuXc+Vc
         XCOFci5oPp2mn5Z1mochTsSsYktyenH4o2q1cQOP/BX5vBp3DE3SyvZQBkrA0xLdOeVQ
         dy5uFDy1AhEWbO9ROBNWGsnQEAojLPpAXan12feF0sdQJlYxPZlhzQYz3aPizfwwnda+
         2P9UP4e3JS6AkFH6BbEQKK/2qbKO/Mk0xZ2AKNWz+tzmUTY2kNdscpFJeShSXkGYvCBb
         7dcfcJE71OIdP/zbCT/R/Upf4Ct9CW+xqZNClZaiI61r3iw4wvDo3S5RYioWxpwQ6ZLe
         OzCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vp2WMVlGKiP5oR8c5SPxKFKKIQyhYq906XDEiuHHYlY=;
        b=VffMizNdoqSillYr9Tb1CIH7r0sp5uAEJdIU2Nk5188ZZv4hPZGxTRyXo8gsuufqhf
         LzSMBmycesyhaksf2LxendOPeyqFHV/znxwUwyg8m2O9H7YwMXJIWbKzzx8ZTXlXysc0
         zzouLB3t7dyYusXMS/pCksYt4+ylSiiLNe0o+eiikPFMPphZDfVKdCMa5HkS+lmOk+aa
         XVlKhQ0+zDkwjlI0rK+HZrimswZExui8SDd9k5o/g0qtnn4KO7rxtVSvmRj7UJAcLXm+
         f8kohtmyyac5G4EBajuOubUdVUQvJSM0OWPPZtcYPEkZnXXg7ZWHOvxCrdQKNcy7uIL3
         r9GA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW9R/T0Q6N/2RFhbI9lrSgLVuX3AOqPeU1umCFRgP7tRrURaz0I
	ZLzTN7VYoJQ52L/8G91YZuM=
X-Google-Smtp-Source: APXvYqyFd7+nDtQKR/uBE3RAn5euhuPcoT/eQdKxZf6bBNFj4nT6mJV7L3jQBq/QZQhCarSH+B2pPQ==
X-Received: by 2002:a62:e91a:: with SMTP id j26mr4231185pfh.189.1581695866822;
        Fri, 14 Feb 2020 07:57:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ab0b:: with SMTP id p11ls1663099pff.0.gmail; Fri, 14 Feb
 2020 07:57:46 -0800 (PST)
X-Received: by 2002:a63:5b59:: with SMTP id l25mr4367292pgm.382.1581695866389;
        Fri, 14 Feb 2020 07:57:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581695866; cv=none;
        d=google.com; s=arc-20160816;
        b=rnZMAoSipy2XzolRyRJQSQO6ZltfOtwZABrADY0I24RFGLBe3k745V3qhUO6A62XqF
         k1QdHqU/UqZFGOSfMQAvCO9FZs6yNamKSlrU5b3d6AqAcuUxaRSt6EcwZ/FH3wDybPIM
         rRRmjftKsfoEWhCOJJLl1AboWHKgMRU5/1sHwJIym89lMM0LNhv+TQCitvGis2nlsZ5/
         y7kjsC1k14upDl3fvMqG0vTqYcWC1e7n9G0fgasVxlDmQYQrEGtzVJkVabx5En+j49KY
         hAsgoQPj055vIAqgLAgmf3J4n3LJJejKo67l7JtdP310bgBX9C2RzHaSoT9THVeq+hzi
         7oGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5lY3Wt7tnJu0w8MCvlWRosZJtdKPr3DIHja6Ox6Is44=;
        b=XABU6V0upXeAdqqOaOOclzlXOBVDUXQ8ftOPM+cdqnvFNjB2643yyXSAqfKFfr2F4+
         mzs867dFPqat6ZI9ocWN/l5pQm8esVt6OSLRolXY/LuIyEPsYZ4+W163PLKct2jKGirS
         UppBmbyPLFwW7+M2FGFKwGwYIia28nh5eneNSbxp5NQdnYtKK8ao5kFWxkXoBkNhEnM5
         uTSjdJ4gIBa3264FNDukow7d2RDcxfyvDXwFix0fkQKG5duSolpoOvSlKZaLwxCpova9
         ZQWfiFojt1A2Pn6XlibMTR4cc33Icn2AdOHaD6YjdLAY3mU49Ubu8XyfyWE6dDxngrMI
         6FnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1bXVbvPg;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n20si236318pgl.1.2020.02.14.07.57.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 07:57:46 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 49A39206D7;
	Fri, 14 Feb 2020 15:57:45 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ard Biesheuvel <ardb@kernel.org>,
	Ingo Molnar <mingo@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.5 412/542] x86/boot/compressed: Relax sed symbol type regex for LLVM ld.lld
Date: Fri, 14 Feb 2020 10:46:44 -0500
Message-Id: <20200214154854.6746-412-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1bXVbvPg;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Ard Biesheuvel <ardb@kernel.org>

[ Upstream commit bc310baf2ba381c648983c7f4748327f17324562 ]

The final build stage of the x86 kernel captures some symbol
addresses from the decompressor binary and copies them into zoffset.h.
It uses sed with a regular expression that matches the address, symbol
type and symbol name, and mangles the captured addresses and the names
of symbols of interest into #define directives that are added to
zoffset.h

The symbol type is indicated by a single letter, which we match
strictly: only letters in the set 'ABCDGRSTVW' are matched, even
though the actual symbol type is relevant and therefore ignored.

Commit bc7c9d620 ("efi/libstub/x86: Force 'hidden' visibility for
extern declarations") made a change to the way external symbol
references are classified, resulting in 'startup_32' now being
emitted as a hidden symbol. This prevents the use of GOT entries to
refer to this symbol via its absolute address, which recent toolchains
(including Clang based ones) already avoid by default, making this
change a no-op in the majority of cases.

However, as it turns out, the LLVM linker classifies such hidden
symbols as symbols with static linkage in fully linked ELF binaries,
causing tools such as NM to output a lowercase 't' rather than an upper
case 'T' for the type of such symbols. Since our sed expression only
matches upper case letters for the symbol type, the line describing
startup_32 is disregarded, resulting in a build error like the following

  arch/x86/boot/header.S:568:18: error: symbol 'ZO_startup_32' can not be
                                        undefined in a subtraction expression
  init_size: .long (0x00000000008fd000 - ZO_startup_32 +
                    (((0x0000000001f6361c + ((0x0000000001f6361c >> 8) + 65536)
                     - 0x00000000008c32e5) + 4095) & ~4095)) # kernel initialization size

Given that we are only interested in the value of the symbol, let's match
any character in the set 'a-zA-Z' instead.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/boot/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/boot/Makefile b/arch/x86/boot/Makefile
index 95410d6ee2ff8..748b6d28a91de 100644
--- a/arch/x86/boot/Makefile
+++ b/arch/x86/boot/Makefile
@@ -88,7 +88,7 @@ $(obj)/vmlinux.bin: $(obj)/compressed/vmlinux FORCE
 
 SETUP_OBJS = $(addprefix $(obj)/,$(setup-y))
 
-sed-zoffset := -e 's/^\([0-9a-fA-F]*\) [ABCDGRSTVW] \(startup_32\|startup_64\|efi32_stub_entry\|efi64_stub_entry\|efi_pe_entry\|input_data\|kernel_info\|_end\|_ehead\|_text\|z_.*\)$$/\#define ZO_\2 0x\1/p'
+sed-zoffset := -e 's/^\([0-9a-fA-F]*\) [a-zA-Z] \(startup_32\|startup_64\|efi32_stub_entry\|efi64_stub_entry\|efi_pe_entry\|input_data\|kernel_info\|_end\|_ehead\|_text\|z_.*\)$$/\#define ZO_\2 0x\1/p'
 
 quiet_cmd_zoffset = ZOFFSET $@
       cmd_zoffset = $(NM) $< | sed -n $(sed-zoffset) > $@
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214154854.6746-412-sashal%40kernel.org.
