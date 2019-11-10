Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB2HTTXXAKGQEYTNG5RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id AB989F62D4
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 03:46:01 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id s1sf8419397oth.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Nov 2019 18:46:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573353960; cv=pass;
        d=google.com; s=arc-20160816;
        b=qw3EpJue7253Nzrj+bKNP+vDt03zaQoRmJAFXFyiF9GncpNLD5/xeZ3n/K/mtUYvbU
         PScCJcIlEFUlYzfcSc6Ehw2ZjHmN3EIZ/+rSaeYFoAOxJCcc4n8bph/CmPlZgSsDcexq
         YAY8hWttcQ4TKILIISjF6RlPRm3aXu994RxupXnyW/KGY3XodY6zuwE6gHsi1dzFC/Gz
         MYCtN2oiPaF09jf4zfY/V60q3eL3yRhY7G/4mYc+/Fvttec5Nl3qg2XPWHRK2m43Oku8
         moxxLi90X2cVNTy5psmSBahqbF6kgbCxMmulY2SIXqXoPCy/oBMHNjgr84MpceERcn+c
         NxxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pqkMHAktr+Dhju9HGO73HCDEpqldZHxBKdl/n6vBr8M=;
        b=Hxan97qoDRzGQv81HiMiEv2aVCc3RWkDF12PeNsuC0DiehXy63vHXDiYi2rJgjfq41
         EvSt/lL2URhAzJmhhjkN8LMW0I9Y4Z9F49Z42/7zQSJjCZoDjkReorwAYviIQYPXnGIw
         Bp84yCsXnb7/OEbxHIt8NS3DcdSB17ddThQHwOO0SpcvAzjF7ckyMhJnRorvIOHFfR+v
         qIcz0Debj/rBB7r/mL7tzTa56lKESbjQFdYiWscngGDFAO6LnCNe2w7y8M7/K/gOiS2K
         xtk1YzvxsgH0PYzxQDSBMTimY5T6wo4Kc1Jo+7uLUFhJjNXMyYt2CZREEf6aZ1Kiv7LT
         E21g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Aoe9fZGV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pqkMHAktr+Dhju9HGO73HCDEpqldZHxBKdl/n6vBr8M=;
        b=Qwerue6gI53nlq4qL9CTDbxjSFuyPlv6xypqqojSfIS1xYjSYLXAGFlGuStca+WRe2
         G/PtexQBjjJIu6w15C1dde38BMEV4pjtffIVWdm8ScILcXPHd9JgUdPhg7R67Z9DoTI/
         Uyxr7lzZ66Jts6Pji9IXz2CQ1z3EqlBrZMEmXGLrqkx/M4WQ3dm0KgL3WfHirvqZnfXE
         i0zgdrrn9yWzOoSfUcvhcD4hxj4BB7MfXHP5b7bo+MTqk0z3lnYGeaIwWarcM8p7sNrv
         lVqCcJt1kNCWvBmOaV6C+uOK7NbHxFlu31QQ1sA7FjVtVUGE8MapFy7spJI6kdzXdNGG
         hukQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pqkMHAktr+Dhju9HGO73HCDEpqldZHxBKdl/n6vBr8M=;
        b=pPfzjYQepQ5gOsNKuuQC1fM1aXBsP8KcWESGU2SxrxYkRY706gnBpVJRUfh+foCpIR
         pAE3KKUuiGXmmBaWeO8ZDLdX2PghdSY5DwB8PHVRsdwTACKepdT6ab+TLWX3TmpLK/Mc
         7oKbACUQ8NjDsDgQHAyqyETUFTttHryvMbVRQWLNcf9wVSUaICR6BDDT9LmFhf0DSuNZ
         psuzdPyXnztB5VwtOl3os13IF6BY8voshOUrEhivtPKVHhjJnP0RgMvKQjDA9GI/kpQv
         eqFgAhZ2+91ymOaJupsKWkUCBufIz2iOYOYta8oAJ+S+gYe1OqSkBXY1XEl453wdR9ZB
         CPNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWRYcRFasPpWci02tWyRX3+uQcvdFUqh4E0Gal5HQmIxODnlLKK
	9MLiy1DcleXlG6gdLNYcu6o=
X-Google-Smtp-Source: APXvYqwKsgyP/0xExCmbbEINTFTAsgWAinwpTsZN+K1MZlwJP6OuKco+beWvqgt/ovQhI6dEPjNpZA==
X-Received: by 2002:aca:cfd2:: with SMTP id f201mr17565991oig.23.1573353960559;
        Sat, 09 Nov 2019 18:46:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c394:: with SMTP id t142ls867528oif.0.gmail; Sat, 09 Nov
 2019 18:46:00 -0800 (PST)
X-Received: by 2002:aca:7206:: with SMTP id p6mr5383113oic.5.1573353960259;
        Sat, 09 Nov 2019 18:46:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573353960; cv=none;
        d=google.com; s=arc-20160816;
        b=VQUDcAvT0XPJfYGvyXy5sgWZ0pwHsTZcbZJ7HLf2YpxuhvKyQMe+7Ub0xxiJtwEswB
         iGevM2Zp11iVd63r2t2cYXZvhis97huDS97ir+lXSNG+0pCt3OBW86e7fCUnhBHm6C+/
         pXVWK0vvpIbFbcfxVSHQxmWPHVg+nUZYbY1TkzQF+12ARCL7/MQGfDaiHHCeCLe1nzB9
         Tof9s9ismAtnV8qgj3KVe/L6Tc6CZzJY9aZ4j0OQLcgQ4+LveOtAPiX0lfD7k9tYFXWv
         VxaV9oLIwa09ODHaqJknRU/53GFIUOo8QH6I/r8dzT99sa3mTriIq6QFzaLZ3C/3sFGV
         UMJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=aLokR/4FCj/Zl+pBH/kTFlQ9PCDgQrS6sS+THVgkJa4=;
        b=s3KIdwr2+rQq27uBCU5p0yJ//lMZ1/TCiokdb00GscEVlBgd7ACwd37sNuCtT+jnY9
         18SU/BPh90roo216ryaRdW87ZwpV/vxV7xnsbaUoG8vp0AgmimZIBvwDXp6j6R8NPs8t
         Ia4n4aqd/ojjq7HnRAiccBiDt2zC9yHPWmjauNHGmpdht2vsLpAglG2HKNOl3bVmAuVC
         cdVuqUsD63GlDPb1RcbTxABHWcvfEeqP7FZY+WVTXQtRYNNEGY6YJSK82/lP0AT4MINZ
         vw01b6vwBbQA76Fk6yglEvN5pNzupsIQBFviMoxWd+p5FB7o3c8VPybyxGtWoS9JnU95
         x6IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Aoe9fZGV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 144si716213oii.2.2019.11.09.18.46.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Nov 2019 18:46:00 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7D158214E0;
	Sun, 10 Nov 2019 02:45:58 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Anton Blanchard <anton@samba.org>,
	Joel Stanley <joel@jms.id.au>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Sasha Levin <sashal@kernel.org>,
	linuxppc-dev@lists.ozlabs.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 013/109] powerpc: Fix duplicate const clang warning in user access code
Date: Sat,  9 Nov 2019 21:44:05 -0500
Message-Id: <20191110024541.31567-13-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110024541.31567-1-sashal@kernel.org>
References: <20191110024541.31567-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Aoe9fZGV;       spf=pass
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

From: Anton Blanchard <anton@samba.org>

[ Upstream commit e00d93ac9a189673028ac125a74b9bc8ae73eebc ]

This re-applies commit b91c1e3e7a6f ("powerpc: Fix duplicate const
clang warning in user access code") (Jun 2015) which was undone in
commits:
  f2ca80905929 ("powerpc/sparse: Constify the address pointer in __get_user_nosleep()") (Feb 2017)
  d466f6c5cac1 ("powerpc/sparse: Constify the address pointer in __get_user_nocheck()") (Feb 2017)
  f84ed59a612d ("powerpc/sparse: Constify the address pointer in __get_user_check()") (Feb 2017)

We see a large number of duplicate const errors in the user access
code when building with llvm/clang:

  include/linux/pagemap.h:576:8: warning: duplicate 'const' declaration specifier [-Wduplicate-decl-specifier]
        ret = __get_user(c, uaddr);

The problem is we are doing const __typeof__(*(ptr)), which will hit
the warning if ptr is marked const.

Removing const does not seem to have any effect on GCC code
generation.

Signed-off-by: Anton Blanchard <anton@samba.org>
Signed-off-by: Joel Stanley <joel@jms.id.au>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/powerpc/include/asm/uaccess.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/powerpc/include/asm/uaccess.h b/arch/powerpc/include/asm/uaccess.h
index 51f00c00d7e49..3865d1d235976 100644
--- a/arch/powerpc/include/asm/uaccess.h
+++ b/arch/powerpc/include/asm/uaccess.h
@@ -234,7 +234,7 @@ do {								\
 ({								\
 	long __gu_err;						\
 	__long_type(*(ptr)) __gu_val;				\
-	const __typeof__(*(ptr)) __user *__gu_addr = (ptr);	\
+	__typeof__(*(ptr)) __user *__gu_addr = (ptr);	\
 	__chk_user_ptr(ptr);					\
 	if (!is_kernel_addr((unsigned long)__gu_addr))		\
 		might_fault();					\
@@ -248,7 +248,7 @@ do {								\
 ({									\
 	long __gu_err = -EFAULT;					\
 	__long_type(*(ptr)) __gu_val = 0;				\
-	const __typeof__(*(ptr)) __user *__gu_addr = (ptr);		\
+	__typeof__(*(ptr)) __user *__gu_addr = (ptr);		\
 	might_fault();							\
 	if (access_ok(VERIFY_READ, __gu_addr, (size))) {		\
 		barrier_nospec();					\
@@ -262,7 +262,7 @@ do {								\
 ({								\
 	long __gu_err;						\
 	__long_type(*(ptr)) __gu_val;				\
-	const __typeof__(*(ptr)) __user *__gu_addr = (ptr);	\
+	__typeof__(*(ptr)) __user *__gu_addr = (ptr);	\
 	__chk_user_ptr(ptr);					\
 	barrier_nospec();					\
 	__get_user_size(__gu_val, __gu_addr, (size), __gu_err);	\
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191110024541.31567-13-sashal%40kernel.org.
