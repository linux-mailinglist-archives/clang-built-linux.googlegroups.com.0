Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB7XXSCDQMGQEJEOMVOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 852263BCCB8
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Jul 2021 13:18:23 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id a16-20020a17090a6d90b0290172c6293174sf1527173pjk.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Jul 2021 04:18:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625570302; cv=pass;
        d=google.com; s=arc-20160816;
        b=aJQlVH+7JkqPfwtoyvwxFh2Cq4eEUBZUiittOEqwZowksYjkQR6SxQJQG4josJQg7U
         zfvr5EnD8ank6az2tkGBG9dJP+qQGfLNyPF65vk4PBHG3QQKYDeBAdtNqkli6D0X9Ju/
         NxvD0eIaTYj8ImaETzWTnkMG7R7za1fUgJL58jERJTL8W82Gua16FJzN9jxGzb/8MHi7
         Yvw1QKpm6plDH/1DQ8KEXNOmhi555/5d+6K+R8sxqzc9P1n722nLBsJECQYgJzkCzHBB
         lw3sxWjSG1dsSlck6Vt5TP/b3N9gVUPCynDAU7hD1qQ7auHoXB5MvEzoFyfF+1eZKC7V
         WlhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=o6JbNknEIMxVNeqIfEYxGhRsqH1lf80n6GPJZktDqEE=;
        b=bqJFp29AfvRF3Q42cQmlKizOVWPUM6uY01e0cRAX3ZM9kUTujyI212o+Iiu6W7UViC
         o+wgVU9Y+R2L0h3W6XwG8fHb2lP7wQykG8NaPQptjPaKVMNixB8z6s50yLXuSI5nLSH6
         jnjmxTW8cuUrO0JquexZN9vbQdjIT2Sa80DvaIcwD/f1WdgKe9oevgsc/sJDRLS/vLNs
         8M4luWcSJdGSLhUdXOpFCAa8dQI33Pp419IFE2qUR3bc+O+ST2Mb6H5AO2JXwqJHJbcj
         auWwRf3ZyOtlFZ4YDiZ8koX9iD0P6QVKVJ3dvVo8F5MfC/4I4Xd1VVNrnsP5pmAQw6p+
         QlHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=C9XbrFlo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o6JbNknEIMxVNeqIfEYxGhRsqH1lf80n6GPJZktDqEE=;
        b=LAnw/+vCybxfXF53LIKVVO8kva3ZQjPFX5VihXbW65Y+rsE1HzYXpWObk2xyzPPEyo
         jEYH8IJwEbZiNTzsXtxubpqPvUAIQvoaB3XzrBuZXEsZrWZ7nbskUg27Wii/4aLUR9cv
         qaibZ/n40FJ++NkI30NMd0X2bbOie8ihND1JzJb+0XnZJA5f29zdhP6F56gLDSrr+ccn
         i93FtGzRajGWD8vtSIOuGMAQj3l7DbbsQIxFoZ/scRtYnfGIfp/utSk1Tw656RfuigCc
         GjQ7u1QVL95mTQHv2sDKESvkNwP8BpGTZVo9Wxokk3bBJe2SrA6evr3nn4DkhxstShrA
         +GTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o6JbNknEIMxVNeqIfEYxGhRsqH1lf80n6GPJZktDqEE=;
        b=qT2KC5V3D1RLUs4cJt4hHf/aJc9KGv+Pm4QfOwkFLE5Mah/UQml1iL31N3ZnyjQNZW
         LI8RWN4BIZsmxyXFn2YVfkrg1mUEctO07GKJ88LQW66KaWkNCwHF/5ySXO4YP+dFrpPh
         U378XViiqjglwgpFin8q9O+F5f6H6NC7dkfmx82ErtKEcD9f3D2aM1uD7XMvzNYwxROS
         o8qlct1lsng9PEvIbp3VcojtTJyuLHxwSPuxx2c11sgh1bt9jMy6786rmtKD7nYbXUVH
         zzQhiMNdTQNwl0nJg482R84WxVwXUUrp5BbUb/Lq2TeCFI6wd4xbKIWAksDHCdTUfvTU
         5VqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328xX0ltZmIRRBjltK6GXlGC5fZ6QO++VdtXm6Tr8welh/YK/Rn
	+OmNVOTKjJpZ1qSXDIbulZo=
X-Google-Smtp-Source: ABdhPJzDxujOnRrhWOUfjO1hDuc+1RT7i8yDZpMdpZCDpU4Zhm8Xg5dcCOeca2cL/Nqb70+VBoSmEg==
X-Received: by 2002:a17:902:e8d8:b029:117:8e2c:1ed5 with SMTP id v24-20020a170902e8d8b02901178e2c1ed5mr16606882plg.39.1625570302219;
        Tue, 06 Jul 2021 04:18:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e23:: with SMTP id d35ls10726561pgl.5.gmail; Tue, 06 Jul
 2021 04:18:21 -0700 (PDT)
X-Received: by 2002:a63:48b:: with SMTP id 133mr620062pge.249.1625570301552;
        Tue, 06 Jul 2021 04:18:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625570301; cv=none;
        d=google.com; s=arc-20160816;
        b=tgikbJtiSmqtlxhh7tLbcY+ohjkzG+22OEn4D3Vkn2wi+/nowfvHTXDcZLq6mumWBR
         KMHSPQ6dhng2LV2TtZdfRGUAwRvG178ZNnmDbQaYQR8dg4+Rv25ff3V9tjBKOoxzaZtg
         w30M7u9IWiT/bNV9MMQz7RoK6VbDUIuw2oeo/zhPOmIFGBuJpiOdEvMX3QOsOPEfVHaB
         RJEW3jX+GQawqqnJgcXTxblhKDvAPhEUk2BF05o+f3N91QJ5WfytI36tdqsmp6uSp/ps
         sBD2MKr11wnEJaxeiaOsHriJDOljxQRUqx8m9gPlqXXyLvRJoFXLWs0tz08V4aTRtRcp
         0ucQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pJv5n/xs84eq4+wD5qtgAGv4UNmSoGT098yLryF+cH4=;
        b=lmwzLK8PKg2wN/jS4YJd68BdHK5wKQJFCxsWPkxvxge3XAYgZhWVP04lk+625NoMGi
         kP6FgSVA2pgGHqZw3pOxR1QZZFJnbMLhqxmWtMsG+U/2AxwdBPfea3f1irwjcgLqkrSN
         2bcW1Dmd/hq0n8OYw0IODSuYW/Y6gfnSHV3XRhmj2c4bCLSuTNfzF5x/OL3cNLxISGtg
         2EWMTYSK30qQ0/4pT0JyqmA+xr3CQ0ZYK4wSgq44BzhPP1zFU50YT9l9OzmBpOFD4X5w
         HbQRLrLM0U13kFygcZ6PZfeCA9hwCdWdMzTxteni98bq5AzWIruVSCqNVuX/35ePFSEW
         pt2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=C9XbrFlo;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q7si1909093pgf.3.2021.07.06.04.18.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 04:18:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7892561C99;
	Tue,  6 Jul 2021 11:18:20 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Sasha Levin <sashal@kernel.org>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.13 188/189] MIPS: set mips32r5 for virt extensions
Date: Tue,  6 Jul 2021 07:14:08 -0400
Message-Id: <20210706111409.2058071-188-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210706111409.2058071-1-sashal@kernel.org>
References: <20210706111409.2058071-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=C9XbrFlo;       spf=pass
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

[ Upstream commit c994a3ec7ecc8bd2a837b2061e8a76eb8efc082b ]

Clang's integrated assembler only accepts these instructions when the
cpu is set to mips32r5. With this change, we can assemble
malta_defconfig with Clang via `make LLVM_IAS=1`.

Link: https://github.com/ClangBuiltLinux/linux/issues/763
Reported-by: Dmitry Golovin <dima@golovin.in>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/include/asm/mipsregs.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/mips/include/asm/mipsregs.h b/arch/mips/include/asm/mipsregs.h
index 9c8099a6ffed..acdf8c69220b 100644
--- a/arch/mips/include/asm/mipsregs.h
+++ b/arch/mips/include/asm/mipsregs.h
@@ -2077,7 +2077,7 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 ({ int __res;								\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips32r2\n\t"					\
+		".set\tmips32r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"mfgc0\t%0, " #source ", %1\n\t"			\
 		".set\tpop"						\
@@ -2090,7 +2090,7 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 ({ unsigned long long __res;						\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips64r2\n\t"					\
+		".set\tmips64r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"dmfgc0\t%0, " #source ", %1\n\t"			\
 		".set\tpop"						\
@@ -2103,7 +2103,7 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 do {									\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips32r2\n\t"					\
+		".set\tmips32r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"mtgc0\t%z0, " #register ", %1\n\t"			\
 		".set\tpop"						\
@@ -2115,7 +2115,7 @@ do {									\
 do {									\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips64r2\n\t"					\
+		".set\tmips64r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"dmtgc0\t%z0, " #register ", %1\n\t"			\
 		".set\tpop"						\
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210706111409.2058071-188-sashal%40kernel.org.
