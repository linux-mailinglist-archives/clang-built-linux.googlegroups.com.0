Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB3X3SCDQMGQEBXLZP5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id D26183BCEBC
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Jul 2021 13:26:39 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id w13-20020ac843cd0000b0290251f0b91196sf3798308qtn.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Jul 2021 04:26:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625570799; cv=pass;
        d=google.com; s=arc-20160816;
        b=ED4Ze0C8XdVfyxSWowpEU7tamdKOW/D34jKazC3+5QTqsEO/IOYNGbLFnzhqtKNcyz
         dD2LkizOBkhESn+ksA1VAOzplLW9IBgTMZdYA7SD5LiAEg7q9dO0/XpYkcOI5vRyKdtw
         TQnkfiyrDR+7shsBcCeQXTp7c8zsM08gHXPlwvF7nEoAJPwg1ltQs1RZfWHVaCow7cyt
         3q/dignicruBRTnS1FWHW4o08i0/lC2cnH9ZDNDzMX5b7qMMFkB+LVyMdqgjqVJoFLJ/
         Mfx42T9OyF/MF7KXYRk4fH32cKIXoig5tSZh2eQ3or5VwjvGIfAqrlcVHOBLRng2BN2u
         VjBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Zy+sCbHwMqNfd8pIWBB7+/R41rNFyYQhQU4ULaOW7+4=;
        b=Qy7iGqFZHGVfVifF4to1vCNPEe6AMmJflbdDNj+k4KUF4m38Ahe9uUt/5JzjCsoTgg
         utvGuUqYDfBmQtXE2wVyvUT6G7EUsCb4zjcrotxNAAoksEaQaSToS5O0tiFDLJ1WdqHH
         WaO79v3ZYPye3JCWwYDl2AOVSqKz8kGkGR2pVil/ygYZedRUj2VN36EQ7ntdHp0DYLrs
         Yz8wz9vm/E6PTeJtFw+PUIWB26xRq3B1VOBimxUwyaT9f/TGbDU6CL6u3yo57bp9LsqO
         jMoaTdXbrWjTxemzcsr+/LGx1sFZKKbh9B9pNQEVt48XhxN1ZwNvSDrhUiBXvRD3c4XH
         gTpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=vKZpxeG4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zy+sCbHwMqNfd8pIWBB7+/R41rNFyYQhQU4ULaOW7+4=;
        b=qWDv+w4nhq95M/AtVsbRnrogmfaeVmC4AhCz0VzCjRACzuiCkQFnBrxSRBGhz9xZ0G
         fehifxxFfP3spuZcTFFeH7G0T3JBelynOBtlsT8CBaPOX42ghR9nyYVhSVFUj4KKwecN
         UDSylVXKbZ8z1Zj2Bd7rAaBX3j0K9Jr1ffU62Dqvz4ZN/8Z3tZ8rappofzSGvWJUZ2ZH
         r1boG2t9lHu/5Df8K8+6x0DByy9b+hiamEra6cq/Y1oR6gHIuBb2rIwZSd5hu8zrqulm
         NB4FBwql1lRVt7WFeuwFx0ViDt8cdmd/74zhQN0IjoXXR/Y2NXR6KIWlp/XomHHrM7WB
         NZ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zy+sCbHwMqNfd8pIWBB7+/R41rNFyYQhQU4ULaOW7+4=;
        b=WCv6eikzOLdWxtjK+2GTaXYlfDoZPenbalSgw6Mhqx0v3hNq3cBV9mq/Num7kx/HzW
         yfYp+FgWZT7Pc57oQT+Hl4flfPJgpggtQpxF5XauvvWQ/DONJC1UbVrJnbu4koy7XicC
         o4rzrHe1TV3smQsc5wqtBaZKLfd4zN8B+CI/ovAbyO0UwhAq2eoD91ulGnBUFPDdehUy
         6qava8nkMBpmH5BVw2tuuhUTMu489IOJ9RkAgyA5IxguTir1NUx9GnsPtBgeGXs8ZdJi
         G3G6VDdysWQJC6T0qNA6/BRwcoWIORd2V4VrzRPXCCTofCkeESGJe5mULvbs0N31HBKF
         vXkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OVgV33vLKitdP45tFi2kc+Mb15aFuqSY4szmwq/Oz+J+sBiPD
	PsddVaSzAzxZCXcP6qRZx/0=
X-Google-Smtp-Source: ABdhPJxOpoOfEz/58eN6aiqBsnSMHJfELI5tJMygMpK7vSBj8t/LOJ6ZsnVZnzFXIjRlST3hQZWiaQ==
X-Received: by 2002:a05:622a:448:: with SMTP id o8mr16937322qtx.341.1625570798803;
        Tue, 06 Jul 2021 04:26:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:edc6:: with SMTP id c189ls11464551qkg.2.gmail; Tue, 06
 Jul 2021 04:26:38 -0700 (PDT)
X-Received: by 2002:a37:9481:: with SMTP id w123mr11581732qkd.75.1625570798393;
        Tue, 06 Jul 2021 04:26:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625570798; cv=none;
        d=google.com; s=arc-20160816;
        b=hznO1T2Rv86vsCRwgWqJlIxjE1fiGJpxVWMRTPZUS/oeNJ+ZzawyDC8VtAbUa9YLLy
         dv9fQ22BXtiyKAy41hepIrcRQ12NQcu5VePLTJuaJ260YRHj5Hoh9ri+QMjMR6Nb4bHj
         NB3/ulDRCvBSyy72pELn0c0u1ikbNmt0i5Wlcx1d5CHBVlemibUFDyNxc3KC4TD4/UVc
         NIFfrBm7DC4kC2FzMq9sO4JmpDnI3mNg4P4/6aeSeX4p2yf5W9tRtUGfblpNCm1YPc+v
         6lMxgEU9dJEkpwBoc8QEYbWj+K+QzRA+DOAWWzMcoFxGvGUDBp4NJoA/JiGPUp65JcAo
         oNgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mgD3+LZCF1XDd19oOvbsqO71CwPEQdCCRwfY4dkKfCI=;
        b=UTGNUpZHXUNKcyTP//IznArAyoOj37Ir/ZnWUcjiyQP9E9vRyKUoIKmA8vhveSNxjq
         7c+yJ8GzN/OiaPH2Sr0v31o8AzEESILK4nBc0WUw+Riiyfvc4UQSUMJMxx/TJZL0CZcx
         QMUD4YlBhHMm1yf6mgAc2xbctjJc7vpYq4O6igzDqIQQjiltMoTQk/5i9UN1/DM1UpFq
         HDy9Nqp9avYx6qHhIqnZLI10X1hsb98s4i6nzLF//Gy+ts8bz/0lUrLQQaim20+4op0U
         SYNdMf9wBCZBr/eEPuPuW/1envsz40H3+D4Y0CynHpfXRzS61doKeuQt6Zada1EV4iCl
         9OAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=vKZpxeG4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r17si1505920qkp.1.2021.07.06.04.26.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 04:26:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9DFDB61EF3;
	Tue,  6 Jul 2021 11:26:36 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Sasha Levin <sashal@kernel.org>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 74/74] MIPS: set mips32r5 for virt extensions
Date: Tue,  6 Jul 2021 07:25:02 -0400
Message-Id: <20210706112502.2064236-74-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210706112502.2064236-1-sashal@kernel.org>
References: <20210706112502.2064236-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=vKZpxeG4;       spf=pass
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
index 3afdb39d092a..c28b892937fe 100644
--- a/arch/mips/include/asm/mipsregs.h
+++ b/arch/mips/include/asm/mipsregs.h
@@ -2007,7 +2007,7 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 ({ int __res;								\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips32r2\n\t"					\
+		".set\tmips32r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"mfgc0\t%0, " #source ", %1\n\t"			\
 		".set\tpop"						\
@@ -2020,7 +2020,7 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 ({ unsigned long long __res;						\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips64r2\n\t"					\
+		".set\tmips64r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"dmfgc0\t%0, " #source ", %1\n\t"			\
 		".set\tpop"						\
@@ -2033,7 +2033,7 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 do {									\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips32r2\n\t"					\
+		".set\tmips32r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"mtgc0\t%z0, " #register ", %1\n\t"			\
 		".set\tpop"						\
@@ -2045,7 +2045,7 @@ do {									\
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210706112502.2064236-74-sashal%40kernel.org.
