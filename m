Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBXUM7P7AKGQEOQHR2QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 624992DF2E3
	for <lists+clang-built-linux@lfdr.de>; Sun, 20 Dec 2020 04:34:55 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id kk4sf4641833pjb.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 19:34:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608435294; cv=pass;
        d=google.com; s=arc-20160816;
        b=S+LE7j+HNopsxqgQhfKnKB/WTfrf/kvOld1n2E1fnOu1I78sF5fGrInxb0hzW0BwNA
         lPmOXD5CiSJT4WzQg55jXk77JhUEzgfyneJfmW5Pi0sx9VxnUWvW1w1lNhh4J0+n7mWP
         sgH72p4FOgJAujiyPmd7DIY/JmHeQ1HL+FZdcnOAyAqL2fujDcs2ZeC6CRUs758Fnykt
         ZJcXytcJW6V+WgsvYDH1eSCmitknxjdznWHR4BRLIFLzpeDhYFyg+tE3wBxC/tW2pHIo
         XLL/ZO7sTtW/7zLTSABAGkFaEOnyIHPRfMDOc9vh6ECopWGqAL/nV3iJ7tPl+yut/n5G
         NmmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UUpaxqJc6Asm+tWWwe8mbGmia/jEkrv6dxmFD1dlOwc=;
        b=FPJmLR/sp9WO7kKQ8UBMSxKO4v/9pcFOxsIyNvZxhXHrMLo4BrkinuUCSePTG2gTvz
         adxf71qb+GqRb3WsH3aLUwd0wkjvcr+8dqZ53/OgbZMhDzBxU3lhMdtwIRolVsvT5tOw
         LcQeF4hKKjWUNf5QNNept0QNRcuGPERuIdWXFWZwhs0FqT5nZLBFxc0kcy/sG8O5kX2k
         RcBmyhREN4m6FYiKa1h8yPHsMrrFGHWmYHNR96DExZMFo+xmltREpsgIaK44F1DPVXqN
         c9IwLGWIraCY6733LljqCDVWquhM4POEecj5Uv+Jz1mKxDMDnk4emYsbRB8IRSqg3U4J
         gQWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UUpaxqJc6Asm+tWWwe8mbGmia/jEkrv6dxmFD1dlOwc=;
        b=DUKw+Lgdi9eyD/Q5yUEfrATVphiqV700NYDJFfVAVvP21zVxPiFCeYDXvW7OfZajEH
         ZCYXXX1N/UICnmi5wBy1+YkVUeCjVzdfOLQHdtoaH05WrmDLbCJ9FN2p7RvRiI3i4SNS
         dDGaQs8FqtRT4ytEkmgS+MLxjk7bzLtN3MpsdALArtSQUOczt6KPnwFCwJdcR4V9hmFb
         q73FAjcVvCvPPboCFzdGweVFyqj1Hj6Asn09y328hy4YMXQtOvA12zRAKb5LLxkwkDbs
         D8JCNdwgKUzkIpzjXO/HHx+C37utWx1QeZWwtuleJ2WAwnPFYPhpaumYHFpvtCxbpxVt
         pLcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UUpaxqJc6Asm+tWWwe8mbGmia/jEkrv6dxmFD1dlOwc=;
        b=UV/r5njP2y9madCo5vK1v0fB0XBsKm2FhsvxQFgCQYkUkwsTTAwvoPi7VwTv/x8VmZ
         Th/6LCBFAiBJbZrXSL1+bdqWd6fn0/80vcrf2RtKD7TEB8f0zAxIiZyRwOn1GvJck2X3
         gkMzZQs+FN5DwzVS1E2GxMlaLoqih1qWClhHGhQnJTVefwpfl9p9e4OJarUzxdRzLujf
         pPERnVJaLGYfFomjIaRGrfd4FBPgrFHonG8xVm4YC81PFC6/H9MIehARI12JFIh64wgk
         cYyIJ+YE6aGVpfhhVfZexQWZtXCehi11kNMqAVFr6Jg6H8ZX3zqBW21GWmp9KR5HXf/Q
         9dJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KEMclW1V2TGMZpnCbHt3+vJl9mkk16WUMJwEAbsywQqG/P34Y
	JfPTutmQ6L98BEt1v4142i8=
X-Google-Smtp-Source: ABdhPJycFDJmn7gP3o4sS5CARY6/t72IdcJSOWJoPqb2B+68golrQHtPYPZvdu8SvuYMn7uSFZf7zg==
X-Received: by 2002:a17:90a:df13:: with SMTP id gp19mr11572942pjb.235.1608435294124;
        Sat, 19 Dec 2020 19:34:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d713:: with SMTP id w19ls1221899ply.1.gmail; Sat, 19
 Dec 2020 19:34:53 -0800 (PST)
X-Received: by 2002:a17:90a:5b18:: with SMTP id o24mr11616553pji.120.1608435293521;
        Sat, 19 Dec 2020 19:34:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608435293; cv=none;
        d=google.com; s=arc-20160816;
        b=F8AlWjLjR4gm2nq36X+KgZPCjLjmG0i6oDNWn8TVRSiSXrF0V05eMhUdXfuUFvTa3m
         9/x3mMGAH2ICczJrOMx6c/qOMAyAOJKXgYV8PaqalqnQ/mG4B1SwilIGbBuGd6EwVvAQ
         eAqGWsk7fsM3/0KEzuQTP8u4TpRsmvYNJV6ZiDeYUZcpsgH6vbVYCoGEliB8BUDEtT24
         nIQG+owAm8j5jde9CAlTmtjYDT4DQUNFjR7Kbu1zoIR64+yHqw8eMtYBnpDXnY7gjUhu
         AXK12wgOo0PC6mfOFES1cI9Fs55IDebex3o/mLWJCyZENZwwxU1MbDG73OTtgCBiCbeo
         fA3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=DCYo8AT4TtjTOrh8zbeu9NZI12kpW+KCHXDjVMrXB6E=;
        b=DiN31xFlcv/zu642Vau6sgyJl3lDOhX+tl9j70nG51TlIqvUuPfTE+dQpy5KjGmDA6
         aAPs5UHsGVFq/dqy/bzrLRRng1vM/ettYfrVdrGnnIAjskoZxXGjFndGIrBQfitc7Tr+
         IQaLVZO/OWnenCGN3casOw/a22F8OacQyaPBLdpXpCnCd3rHcj7WjiVTmErlf3D8RtJq
         sO3eJlS5ANIaOSDHl3Oo6/QmdX7VhJXoFwoM8H4B7qKEq9TURJCfmBZfso7ghu4tCSKo
         bUe+fkrnYV4DzOltAOn3ky7aIsu6XnU2H0zXH/kcEwhzZpzb3HpMI4ZWTuUL0VgGNrsW
         dWow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ce15si1040156pjb.3.2020.12.19.19.34.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Dec 2020 19:34:53 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Barret Rhoden <brho@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.9 13/15] initramfs: fix clang build failure
Date: Sat, 19 Dec 2020 22:34:31 -0500
Message-Id: <20201220033434.2728348-13-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201220033434.2728348-1-sashal@kernel.org>
References: <20201220033434.2728348-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 55d5b7dd6451b58489ce384282ca5a4a289eb8d5 ]

There is only one function in init/initramfs.c that is in the .text
section, and it is marked __weak.  When building with clang-12 and the
integrated assembler, this leads to a bug with recordmcount:

  ./scripts/recordmcount  "init/initramfs.o"
  Cannot find symbol for section 2: .text.
  init/initramfs.o: failed

I'm not quite sure what exactly goes wrong, but I notice that this
function is only ever called from an __init function, and normally
inlined.  Marking it __init as well is clearly correct and it leads to
recordmcount no longer complaining.

Link: https://lkml.kernel.org/r/20201204165742.3815221-1-arnd@kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Barret Rhoden <brho@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 init/initramfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/init/initramfs.c b/init/initramfs.c
index 1f97c0328a7ae..55b74d7e52607 100644
--- a/init/initramfs.c
+++ b/init/initramfs.c
@@ -535,7 +535,7 @@ extern unsigned long __initramfs_size;
 #include <linux/initrd.h>
 #include <linux/kexec.h>
 
-void __weak free_initrd_mem(unsigned long start, unsigned long end)
+void __weak __init free_initrd_mem(unsigned long start, unsigned long end)
 {
 #ifdef CONFIG_ARCH_KEEP_MEMBLOCK
 	unsigned long aligned_start = ALIGN_DOWN(start, PAGE_SIZE);
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201220033434.2728348-13-sashal%40kernel.org.
