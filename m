Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBDX3SCDQMGQEKYPL7LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9443BCE47
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Jul 2021 13:25:03 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id k65-20020ab043470000b029027cb996995fsf7851134uak.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Jul 2021 04:25:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625570702; cv=pass;
        d=google.com; s=arc-20160816;
        b=LdOKB8uMOSOmi4e6N4mQE8Rud+7i5lEJYhQj5S7m/AgYXPsd6vXcGHaiIGnkxAsDmH
         lwzu91BwACjnl6kC51GtDwVhGISiFwOdMVrlY2iVlT4gQSlj9AuQlujYM1qsduQaPrc1
         RU2p0zep3VtXhO4XC7FJY8u/IwKLg7fyW+NNRCzyQksglTPIQv/KG2JaFkB6EJy3yqeg
         9rAM4iVT8ixnsYRUimEIPaSNfnAFuGfAZK/D8hbEYubsQbeBCKp2gDWilHTFLc6jEj3/
         reitDCRhECShptS0TKllUOkzl9S1kdfQ1mWN/xc2upk+4RBgzjkrgK5kivRGDUFRNA+0
         IMJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pLAONBxwpSdNvCaNhWbgG6XWc0UDZtAiniUb4YOmbxs=;
        b=W0MxT+wgYR44Ar8x+cPD7f6NR82CI+0gaD1CqrnoqDv9lMrfGat8Vw959hRM3Hvktf
         j60gUhtdZi5Pq7AgyWfWo9PFY2BIC+gNf4mVaVcw15omyFvYcU3tK7apDac33g9xIOJX
         6ioOwMy2rMcIxRvkmVD55mpkxnMOYOXvLrw/6LQvabBjiivHjXM4VZVFCOJGR8JryPyZ
         UvalpQTX/o/0v7OVJYmhyWwICDnPOu1FCDliXaVavF+kXz5iKLrDgPIXG9ZAs/SR4+Ct
         Qdtt+blDaR9kuw8+f4zeAL1DuOhC32f1ZVinNiYHpRtCEHdEi4SpKwVWSqakAXJqQn6a
         qneA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=F8Z2pvo3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pLAONBxwpSdNvCaNhWbgG6XWc0UDZtAiniUb4YOmbxs=;
        b=Un+mooUE0X73M3PUKKkLYIYZFM+d30c1tIoydZNdg8l269xRKEeeDzUNPzXM3gW5v3
         M6TQRzurbaNLPDp13lZd7fPiG2SmZunscRCcn+Ga6p6fa4EaJV0q2Wt2EjSVICO01T57
         NqO/KM4c6eL0QycJVfE0wjKfMBi+GZzblTLqm5iL5wAmWBywh1pKUDQIN58sd4xixC3v
         u+v3sR9cGphY9SVHgQbTuNcP7M+sw+XkntY437ZQuiQmsyFe9RT/bg3TaUCi1s5kM0CU
         Zy2CAOSST3emsxAqgxRRygJvmEDbagsj2SMEdhB+DkUEG2+Hlxj720lYHRuH5a3hDV+v
         gM6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pLAONBxwpSdNvCaNhWbgG6XWc0UDZtAiniUb4YOmbxs=;
        b=A5M3l/i+uWY8QUSow0RGWYBjRbHNnRqJxmKKJiQjCoBfq5Le/JkcqHJDCnmOc9iHgt
         YRG3DMjydLyJXqTOwLFrnh++2axtDd+cab7+BLiDWfJgaJYb2OYuti5fje16uhbmbYu3
         WOW/3LCbWM6MB16BDYQ75YYCqBMsz9wNYGfvSyIaPrJj9FYXKTw5UMzN15ibDEOY0CaG
         U9SkPEDVwr1KllJrjHfWrPIpm75WA2e5wZkU3yE95+zIJidn4qMW2th434xUQMwRRCd3
         bchW6szYhAx6G6ZMu+lk0Z6HkgrYHuY4NFizubMWcMZRAiQviSDXx6x6/bBdeKxYyKvI
         w8KA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qyk1d6gRo3gVtThX4kn5pkMN++UTdPX67v5nl73WQDktJrm5A
	px/5IxGOw1SgCSi9Irr12gQ=
X-Google-Smtp-Source: ABdhPJy8kDQoqHtFzrX7RXzS1EI5DZ1E6T8LJLBXA29tyoKAYIgEZGXwBDqoy2wOp1GLMcvwpzSxEQ==
X-Received: by 2002:a67:7dcf:: with SMTP id y198mr11100711vsc.29.1625570702285;
        Tue, 06 Jul 2021 04:25:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f8d7:: with SMTP id c23ls5002054vsp.5.gmail; Tue, 06 Jul
 2021 04:25:01 -0700 (PDT)
X-Received: by 2002:a67:a24f:: with SMTP id t15mr13771279vsh.25.1625570701741;
        Tue, 06 Jul 2021 04:25:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625570701; cv=none;
        d=google.com; s=arc-20160816;
        b=AsL8DLHFhFeTFb54m3Cg1yTnbEzyNXec0XaqCi68JHzEVi3jpb9ZGwgBKu67jqYlT5
         OwWCuq1exQW+gYqFjWFFdk1AmikX1naqVVXHggVYPP2KHGg14XAoQcjbQXTjALJsTgdG
         DTcnXryaEukSbKf9icKvzoMpn8zKC8c0ZVbJPP2igDvPfKRnRNQ7dxji6ZHBTfUZluVy
         UrfEM5GE4jJkhFrf0VFJD/TUXs54bHrFhvx2lVzUYNqG1foIq6gzCoUKaxmwZtFaylor
         UL97eXESdC/BfADeDBhC7OUePkzHPg9QAqY1M7om/+97i17O2Ikuw6T+sQNpu3nQm4dZ
         f+HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sBUZUd8T+ux6/VRJwrNccov4Jho+J72Nk+b1uMDMWUs=;
        b=aTzyiTr9nuegO340ljLMlpgoVX0qjj8M+oQM15lcPD0iqJ07Z3JQmpCW3TKOYOINR0
         +veqsZsEOmwS7GrSsgGRib2CYUCg2vQNNnndh+CNNTsc7rdrixLsTu1CDR6kdGqLKxgd
         opK+bFHvfgob+Og6WD9n1nwxtPHXoL1mfk+/LkgeFPcXWKeF/Qj20brQFr+B0eSlqEHJ
         Wi11gWlUh35R9tO7k/Z1I2gMv37U9wQDIJJodgr9GLqv0kLFT5hnsrwujv/hx7HfKeJv
         z1PsnvU332hHYQrbF7Z300C/uCQFVAeoo0MccDDSwQlUn/vhm7U0Sxp6sbaOvR8vS/MY
         Jx3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=F8Z2pvo3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a1si1231413uaq.0.2021.07.06.04.25.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 04:25:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DFF4761C91;
	Tue,  6 Jul 2021 11:24:59 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Sasha Levin <sashal@kernel.org>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.10 137/137] MIPS: set mips32r5 for virt extensions
Date: Tue,  6 Jul 2021 07:22:03 -0400
Message-Id: <20210706112203.2062605-137-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210706112203.2062605-1-sashal@kernel.org>
References: <20210706112203.2062605-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=F8Z2pvo3;       spf=pass
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
index a0e8ae5497b6..7a7467d3f7f0 100644
--- a/arch/mips/include/asm/mipsregs.h
+++ b/arch/mips/include/asm/mipsregs.h
@@ -2073,7 +2073,7 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 ({ int __res;								\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips32r2\n\t"					\
+		".set\tmips32r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"mfgc0\t%0, " #source ", %1\n\t"			\
 		".set\tpop"						\
@@ -2086,7 +2086,7 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 ({ unsigned long long __res;						\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips64r2\n\t"					\
+		".set\tmips64r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"dmfgc0\t%0, " #source ", %1\n\t"			\
 		".set\tpop"						\
@@ -2099,7 +2099,7 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
 do {									\
 	__asm__ __volatile__(						\
 		".set\tpush\n\t"					\
-		".set\tmips32r2\n\t"					\
+		".set\tmips32r5\n\t"					\
 		_ASM_SET_VIRT						\
 		"mtgc0\t%z0, " #register ", %1\n\t"			\
 		".set\tpop"						\
@@ -2111,7 +2111,7 @@ do {									\
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210706112203.2062605-137-sashal%40kernel.org.
