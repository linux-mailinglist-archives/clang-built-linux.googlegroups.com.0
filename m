Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBFH3ZD3QKGQEMH5552Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E152058D2
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 19:36:21 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id 204sf15769501qki.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 10:36:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592933781; cv=pass;
        d=google.com; s=arc-20160816;
        b=zCyle/Vc43oK3omXXleI6Oryn3ue6f+nKRg/OV3pGZ3cUXxxJ8PoDh6pDPBP5RjjiO
         j9AbmgFFWSQpWJY+gkP86OFUSpegYcVwv+taAseW73X1CK8QmZt1GcfLyOxKEHBRrp+Q
         1O+rc/DfTURLixfiIpJKZUeGowBTiIsATfhpezwIBp4QSYqY/KdqiOLuPI94yIZCVKi8
         0x78Rl/E8Vq0DLhoGMQq2zv3OqkJ72G3+uFx5s2bEg/i7o6rjxJjYzaWdG9Mb+BRLAg1
         O0iEw7zl1Npo0jDq7qdevoeKQlTR/l0MIRDII2EyyuGBDJQxij5cKbd1kp1zt4nS8B7Q
         w9Qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vIEkLiURlhGTDZZ69UjaG15IYlyjxAGk5e3S7Ukfass=;
        b=H6xWRZLEo+Qn2W0HLgFLhVYp0RJ7q8j26EOK7BkiYSZQ13Ir55W3T+J9KKAevhK/J4
         m11iRvXt0quCo7um6MFNdaAGgYwTrcmrPxeu1V/NM/GpFFoMVQrlvyJVoFEHaSHsJ1nu
         yIHmvLq+aoQxnjWbhI37Q+49a8TtWUHqIZz733CA+tyHa6Mn8w2IHjBWeAmgDi/Ibzfm
         qxbr3gSZkthCRGkjetVDGDGqWD0jD9zSYi387jDEq3sPxWOC/YY/2MN13P8kBgamWEzI
         eiHu/oTUIj8QK77yZOD6dpUhood/o7JO4unuDUS8bzwmxqD9Mk3F01iChZsh+xt65wBo
         YZbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ucA1AhgL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vIEkLiURlhGTDZZ69UjaG15IYlyjxAGk5e3S7Ukfass=;
        b=Ufuwv1A0/PUN/eFxJ70qS9s2xEAVaXoSUCHUE6AwNez5luTeaMsAzAZalx89CPHq8g
         +fQSRjEf4rskAoDcelOCg1dA2oXbeE/SjlbnBbRLLBkmSk25qMLEP5OYR1Hb+dwH2HLE
         tW5OuYLbYe+R7tKAgJLrFtkPueTxwoG1WtICdgxCG4DdPsuEHcbEHIS8r4BNQxcWlJIH
         mwgdFUcdZbHiP4wdRVTihRZTgecw2gM/KLYi0IP/i6FHPe5XaMRtApK3JttDNNlqR0tQ
         w/ZDwPy8gF2hjFHQV8r6jG7Vwwo8oVogMlesVXDBmrJA/KU6UM3jStiIzr0i8nf9tn/L
         rTtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vIEkLiURlhGTDZZ69UjaG15IYlyjxAGk5e3S7Ukfass=;
        b=VGjm+U9TNp23XBzBRArIMKM9jcVy4ZMTyv8ok8lf69AH9WuDxCY2F9gyFIlZX/y7pg
         N0ZPQC2jm08/UCwTyvsLsbL2ZIWPpPvAIspJ7rI21PzDEvBXM2JDzPjmLpEEY7jTNygT
         llQwXhIOrKYYrb3Q/bIROCo0MpHA0lR83/ptEHLjpivk+skBZDtio36cPIkbJrf6GLSD
         mnDP5iGrEYWMaOC76mdIXCjhjwa4c386lxoQi8pahXSU3MazF+kRj9JYEfZ26cEL0Bb2
         gWAzMFaMwhxJCu9vMAdi85IG0fvoizJ1AjuhsjeL4dMhiBiuWb09Gqv0z1c6wiE4rh9i
         ngRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532SqaxqefEnbIx3sFLL9Sk7PIibafQsggASrGqLofDCbDN0iZ5T
	odNwXIzApYz2wM4x/Wh3AE8=
X-Google-Smtp-Source: ABdhPJwpx+AnMs13mmVUp9VXKrO/GUoAaXwIKBNDVSymhv0JxKrb/3mUorgkSLv6+EizLQhRQSsPrA==
X-Received: by 2002:ac8:19d3:: with SMTP id s19mr11775001qtk.274.1592933780895;
        Tue, 23 Jun 2020 10:36:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:f8a:: with SMTP id b10ls9973363qkn.9.gmail; Tue, 23
 Jun 2020 10:36:20 -0700 (PDT)
X-Received: by 2002:ae9:ed86:: with SMTP id c128mr22139188qkg.475.1592933780461;
        Tue, 23 Jun 2020 10:36:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592933780; cv=none;
        d=google.com; s=arc-20160816;
        b=t5eQ6EAXqOBTQ10xyoXqa1BgavtoimeD6ma2Zc+d7LLZjuuW4HpCUPic6+ZboqovJC
         N4+ZfDoeIS5TGeZSxbGVFJAetN4sCnFVjqjmSFzjKTkfU78BtCD+ZXjOQwN4IBpAHzgb
         BvIdPzLd2WwoQ9FaZFM8JXkSAWRX/zcg/QaaPPcEUrC9HUhMPfGvTgE8oWjtgY+GIpzt
         4gNKOttw3MTqa4SP6a6N54nIfoIorlQngccZIt7Qb0afI6GX6JUoTJjz4cFMjIq4KDWM
         82X7zl+NXI+Na2eU7ruXoddnFSXAfV3xuPVdqMvjR1ro8q7HdNWDRywQwdJvkekCN62g
         TuAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3JgnEGcDwXpsASk6okxZ3uhf6AfousRHMh8U1fKtYMg=;
        b=olqLh5+/GDV7gk+yXt+JDkcZtSTUX4u79PkYscFp01BVtcKPd4a6OH5758r1LVps7f
         08+DCXBGYnqzHuJ5yQti2vSbGeO+DTkm532R7AXg1fh2RlkDsFi7DAAngV8q4k8PhLdp
         pEzCygrn5qjAU7BaO0OgrNJ+cNlPgmr1LsD2JgWGuxO7onsnglMXisAKZFY865sdn9Q+
         oYhD1B74zkhOqgoMqO0SxMqOBjkzM9ZQzQ+M0bE9xajuci28gEx3rno3dPDkp679ZxK9
         zgTR0XgEkT4066ElBZkKUk2GuMTQE4iLdfcN0ywolddJnSd4mxtIh5w5EMNRVpXvQQN5
         Onzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ucA1AhgL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z7si859904qta.2.2020.06.23.10.36.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jun 2020 10:36:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5476320780;
	Tue, 23 Jun 2020 17:36:18 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-s390@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 16/24] s390/vdso: Use $(LD) instead of $(CC) to link vDSO
Date: Tue, 23 Jun 2020 13:35:51 -0400
Message-Id: <20200623173559.1355728-16-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200623173559.1355728-1-sashal@kernel.org>
References: <20200623173559.1355728-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ucA1AhgL;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 2b2a25845d534ac6d55086e35c033961fdd83a26 ]

Currently, the VDSO is being linked through $(CC). This does not match
how the rest of the kernel links objects, which is through the $(LD)
variable.

When clang is built in a default configuration, it first attempts to use
the target triple's default linker, which is just ld. However, the user
can override this through the CLANG_DEFAULT_LINKER cmake define so that
clang uses another linker by default, such as LLVM's own linker, ld.lld.
This can be useful to get more optimized links across various different
projects.

However, this is problematic for the s390 vDSO because ld.lld does not
have any s390 emulatiom support:

https://github.com/llvm/llvm-project/blob/llvmorg-10.0.1-rc1/lld/ELF/Driver.cpp#L132-L150

Thus, if a user is using a toolchain with ld.lld as the default, they
will see an error, even if they have specified ld.bfd through the LD
make variable:

$ make -j"$(nproc)" -s ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- LLVM=1 \
                       LD=s390x-linux-gnu-ld \
                       defconfig arch/s390/kernel/vdso64/
ld.lld: error: unknown emulation: elf64_s390
clang-11: error: linker command failed with exit code 1 (use -v to see invocation)

Normally, '-fuse-ld=bfd' could be used to get around this; however, this
can be fragile, depending on paths and variable naming. The cleaner
solution for the kernel is to take advantage of the fact that $(LD) can
be invoked directly, which bypasses the heuristics of $(CC) and respects
the user's choice. Similar changes have been done for ARM, ARM64, and
MIPS.

Link: https://lkml.kernel.org/r/20200602192523.32758-1-natechancellor@gmail.com
Link: https://github.com/ClangBuiltLinux/linux/issues/1041
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
[heiko.carstens@de.ibm.com: add --build-id flag]
Signed-off-by: Heiko Carstens <heiko.carstens@de.ibm.com>
Signed-off-by: Vasily Gorbik <gor@linux.ibm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/s390/kernel/vdso64/Makefile | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/s390/kernel/vdso64/Makefile b/arch/s390/kernel/vdso64/Makefile
index bec19e7e6e1cf..4a66a1cb919b1 100644
--- a/arch/s390/kernel/vdso64/Makefile
+++ b/arch/s390/kernel/vdso64/Makefile
@@ -18,8 +18,8 @@ KBUILD_AFLAGS_64 += -m64 -s
 
 KBUILD_CFLAGS_64 := $(filter-out -m64,$(KBUILD_CFLAGS))
 KBUILD_CFLAGS_64 += -m64 -fPIC -shared -fno-common -fno-builtin
-KBUILD_CFLAGS_64 += -nostdlib -Wl,-soname=linux-vdso64.so.1 \
-		    -Wl,--hash-style=both
+ldflags-y := -fPIC -shared -nostdlib -soname=linux-vdso64.so.1 \
+	     --hash-style=both --build-id -T
 
 $(targets:%=$(obj)/%.dbg): KBUILD_CFLAGS = $(KBUILD_CFLAGS_64)
 $(targets:%=$(obj)/%.dbg): KBUILD_AFLAGS = $(KBUILD_AFLAGS_64)
@@ -37,8 +37,8 @@ KASAN_SANITIZE := n
 $(obj)/vdso64_wrapper.o : $(obj)/vdso64.so
 
 # link rule for the .so file, .lds has to be first
-$(obj)/vdso64.so.dbg: $(src)/vdso64.lds $(obj-vdso64) FORCE
-	$(call if_changed,vdso64ld)
+$(obj)/vdso64.so.dbg: $(obj)/vdso64.lds $(obj-vdso64) FORCE
+	$(call if_changed,ld)
 
 # strip rule for the .so file
 $(obj)/%.so: OBJCOPYFLAGS := -S
@@ -50,8 +50,6 @@ $(obj-vdso64): %.o: %.S FORCE
 	$(call if_changed_dep,vdso64as)
 
 # actual build commands
-quiet_cmd_vdso64ld = VDSO64L $@
-      cmd_vdso64ld = $(CC) $(c_flags) -Wl,-T $(filter %.lds %.o,$^) -o $@
 quiet_cmd_vdso64as = VDSO64A $@
       cmd_vdso64as = $(CC) $(a_flags) -c -o $@ $<
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623173559.1355728-16-sashal%40kernel.org.
