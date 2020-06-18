Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBF4HVP3QKGQEFQ4JS4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6671FDE00
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:30:00 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id d13sf2770729plr.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:30:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443799; cv=pass;
        d=google.com; s=arc-20160816;
        b=V4MgFLT6+gPqdachRBesrSTB8ukDGyxXvZW2mqSOdYqzYZy9Elk4rPs9QTjqdMtLk0
         S4uow9ebTAidF6n7iOnMJgFl4rzwXBnHkRHLyj+C3igTmRWAD7wiYmIRgGntO0Zp2ssa
         gkn7ppHp7cfZ8pQRAUMgr6VPFiPBA+QqcNl24ROPxFw1/5J/gvA58IVBkkReSc1Q/f7T
         aspOC0iK34Uxc9sLFlqrYR7NqSUNGlVhij/SNYpztSdycW6JOUKe1x2aGVtHEPaPcche
         38qEtl+LUu4zB2Svq6VF/TvToXVCpj0mNX06Vngk889XTCnxEsyKdE6KnBULXtasGhmx
         +26Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WnQe+lBwbnc5Ydxm+6kyZLnnPNlz5m6QUj3N9U+7xuU=;
        b=LQ1TRLUT8XeCF98LVqa+sO6v2eRnH9N0a58/knd1mTa1m2Mwto0ofb/DRfhA+u+eFX
         wLbYbHv7mBm+vzCC3AkBGqmPe72nWxH3IldgHu/xO9sRMytbsXh2JLAEBrcUaJdgTEl9
         9ZC4kdaegoISrZNhT0AF2ujVSzA2rNxCXtoSwLXyD7gvSHzxCgk0xR6ilOJS2tB0dHPW
         ukltGrws+Diy50ud8i3js6Cx279J+doLBYiRGjFyV1ayD3YEdE2RThd5kYc3n4f5Hlbf
         YtkmmKj+9zDXM/2tsZj+QoeMCZ/wKoxeRQTO/Kev4s/SwTjsIEYXHB1a3aBJ5vdsj2uC
         lR/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vx3yFd0P;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WnQe+lBwbnc5Ydxm+6kyZLnnPNlz5m6QUj3N9U+7xuU=;
        b=h2HFCzLJtkG2CtzsLv9c+74jtY7QFGHj1A50urL0EZL8sOPJvSZ5uuUY9YbqpeQ7Q0
         pPX2dRQnZdX5f5Uz6dsvJcItndHo5QK8HxA7XJ7hB3GGO2vnTXEU3rm/ACgF9tLMHSuO
         dKghb/Ybq7e385MIYRdRom96hkiJnOX5fYl0wsRtVBmAibD9XG46MMBe4xssVLt5N6o8
         yUcSI/TPK+J2rn1F7tPXJmF2/u6HN12iJO+znRxo/dBtAqqMGPFfzGkyI32GJ5pK0qp7
         arBwm3WsCX0CwbZ3slJz6t+QfXBYj1McLJP734FOCVsm+pEUjbiIXSKM6v0S4ekiPlc/
         T6sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WnQe+lBwbnc5Ydxm+6kyZLnnPNlz5m6QUj3N9U+7xuU=;
        b=q7EnpJhxNO6SzgMOUaIOILFCX0Qj+KaHP29Y+prQ2T0BhXIPeKBOITsvlekfLn0EZi
         NJuFCvD1VOfgIM4iI8n7gKrA6/Va/VRj52Wh+KSSBFU/Bvq2Pi9IJdicY/DEOOqinQ1N
         8D9tiWBxOblV8jk+xEEc+qcYH85x7fZ7z3D/vN0CCnGE8R+ig7nx3f98QQDx/YmqD+Od
         KjsXmr4FW410/FygA1NI9OZ2x76Pnz0IEH1O1orOeDleK2KoBqb2NRcpytbL2jAOUVnw
         pKh4YlgzOWLzno04QmqsRnK1vEWM2qHuOVtUW/6SbIDT5aEZ2epSzy/7Pp1fuGVa2TvX
         oNAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533tHe/0UmmvxLjVRv09J9hRue0PteXvXJdr2OsA3/4XTouBuYME
	R/UokgIPd9tXS2W0BaGMNEs=
X-Google-Smtp-Source: ABdhPJwoH0QT/x/GNd0SptgSebFBLLOYF5Z4NX0jYfoEv8RzT86ek1+T6FKvieASJjDWswDWDczMcg==
X-Received: by 2002:aa7:8598:: with SMTP id w24mr1453519pfn.2.1592443799613;
        Wed, 17 Jun 2020 18:29:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:fcd6:: with SMTP id e205ls1281492pfh.10.gmail; Wed, 17
 Jun 2020 18:29:59 -0700 (PDT)
X-Received: by 2002:a62:1654:: with SMTP id 81mr1434323pfw.137.1592443799206;
        Wed, 17 Jun 2020 18:29:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443799; cv=none;
        d=google.com; s=arc-20160816;
        b=XCdleEIgHMGJDu0t5iFMdhGL4lSvSg6CkHze26RGwZx9M+44zMz7Wl33w3eTw50D6s
         iA7/ZnGAzVjqoCYqAFGrMsCxk59fMpw1c0y+YD3oTaBv0E5SKBE8FQFJtPaS7bkcVyj/
         dfZ3MkSIQONfZ3MEgl6BAKL1jCwfnNf+fjyqkz4tfOTM3+4ZqH50aCy6taBZFb6jGPEH
         YKnut0hw2kzAQbx24l1qgIj1dtWJoLkhnzWPkN4eFMEBQg7KFe37t+OkzLzgNrPBIy1o
         7qvb19Qa8af9VrWvOO14OPz9cqjTYvv49n57LoAESfEMx+CXz0m9UBq2IHoeJI6Ufxe1
         KpXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gnFFBr3PNm8BpGgPbmX14zEHnIzw8Vog3E+J2k9lfFE=;
        b=q5uIaHBhMzaxHYFIVf0/0CC2jtTy76qiAzjaOFeQBinBE/a3NapgyMqFHWbHVZbMQJ
         o7l4JvXAQ9ocL8znx7styPLToNKwDEBbl69bXxRu7HSq7zOMzgxietMHAJuoEqvsXxPI
         HtfM8N0eNBE47qmsoYo9OB5I3dCRkL6+I2fjtjDnGp12PD9VjW75ouJb/r8seVYIQnwS
         GGJoexw8JhlrTstE7QNfsG7b/2rKxszbu4cYhMVa4ZqBQuGOyUZRB4XTZYx3vyIjqknv
         4TKrFUJ2XN7o1cZHVaYs9dbLnfvtxLAF/Dad8/LG3w2bv3rCLwiJg2Sds9Y4E7EJ4cxz
         2BlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vx3yFd0P;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g10si70363plg.3.2020.06.17.18.29.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:29:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A352522228;
	Thu, 18 Jun 2020 01:29:57 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Fangrui Song <maskray@google.com>,
	Jeremy Fitzhardinge <jeremy@goop.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 77/80] elfnote: mark all .note sections SHF_ALLOC
Date: Wed, 17 Jun 2020 21:28:16 -0400
Message-Id: <20200618012819.609778-77-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012819.609778-1-sashal@kernel.org>
References: <20200618012819.609778-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vx3yFd0P;       spf=pass
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

From: Nick Desaulniers <ndesaulniers@google.com>

[ Upstream commit 51da9dfb7f20911ae4e79e9b412a9c2d4c373d4b ]

ELFNOTE_START allows callers to specify flags for .pushsection assembler
directives.  All callsites but ELF_NOTE use "a" for SHF_ALLOC.  For vdso's
that explicitly use ELF_NOTE_START and BUILD_SALT, the same section is
specified twice after preprocessing, once with "a" flag, once without.
Example:

.pushsection .note.Linux, "a", @note ;
.pushsection .note.Linux, "", @note ;

While GNU as allows this ordering, it warns for the opposite ordering,
making these directives position dependent.  We'd prefer not to precisely
match this behavior in Clang's integrated assembler.  Instead, the non
__ASSEMBLY__ definition of ELF_NOTE uses
__attribute__((section(".note.Linux"))) which is created with SHF_ALLOC,
so let's make the __ASSEMBLY__ definition of ELF_NOTE consistent with C
and just always use "a" flag.

This allows Clang to assemble a working mainline (5.6) kernel via:
$ make CC=clang AS=clang

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Fangrui Song <maskray@google.com>
Cc: Jeremy Fitzhardinge <jeremy@goop.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/913
Link: http://lkml.kernel.org/r/20200325231250.99205-1-ndesaulniers@google.com
Debugged-by: Ilie Halip <ilie.halip@gmail.com>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/linux/elfnote.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/elfnote.h b/include/linux/elfnote.h
index 278e3ef05336..56c6d9031663 100644
--- a/include/linux/elfnote.h
+++ b/include/linux/elfnote.h
@@ -53,7 +53,7 @@
 .popsection				;
 
 #define ELFNOTE(name, type, desc)		\
-	ELFNOTE_START(name, type, "")		\
+	ELFNOTE_START(name, type, "a")		\
 		desc			;	\
 	ELFNOTE_END
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618012819.609778-77-sashal%40kernel.org.
