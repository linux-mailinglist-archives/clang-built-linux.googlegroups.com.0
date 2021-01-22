Return-Path: <clang-built-linux+bncBDV2D5O34IDRBGGLVCAAMGQEOIEUT5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 006DB2FF9C6
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 02:08:41 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id x19sf2693484qvv.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 17:08:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611277720; cv=pass;
        d=google.com; s=arc-20160816;
        b=YTPOiUaHoxPvK6micLbfMNOWtbGnmz2HdlWOs9mnqZ8yPG7d+QsuAF5mjrHLupXKC/
         RKE3GX9srsVmag6UodR5CAoToiUORgZw1QT7wID7kiFOm0x+aIRzmYaO0HFZCO9/x8/t
         z+nqFsL9GGu2YqjkV1X/vrZ98dvLVSR0GTmBrNUIxPMEW5STDR5SvNGMSUqlQZ8kmk3D
         ncoF0u71UQdWta4iQBTFxLe84Z8zvLvhXtbYh4izAEySR9XDRUknGrfFBLU4MdFddrcy
         DJg8x63FSyfqtJ8QFl8Y9PqBhyC4h0Wy2YpuLtEWUCfkBGtevdccbJG0deu/pdRo932q
         giSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=CwtzaHwlq/tQuD915fx4Y9v2QmVcsUexmKaR+F+Hlqc=;
        b=F1xKcCdoIqbrr0zNoknjhABRSykr63fHaeAmECFaknbNlU3hYirFFrTtQ9QZxjk3OA
         tg58eBq9N7RnAtD4ri2GRsXrN8TRyLPNAJAfXBAYqqADAbvBw1HBsVxBE6vDr3xi2dsd
         20zYCQDjrjKZHY6ch5mEUgBPgx7CrktTD62s+2oHrCzZ/9VzEkPZROvjh7ndvkOYIKzi
         8ylsqXUkXVVuobAlUfsvqMWVaJFbGc/TXweGe7mC4GkXYurWfVh0Y0jw9oVXAubWes5v
         0qG4erVHMmSeGhkWP4V85FKKqGcqH6S8LnAR/MrHTYSkZklqlx3jXVQU0PQ03kyyLSj/
         wntA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=pynfINvS;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CwtzaHwlq/tQuD915fx4Y9v2QmVcsUexmKaR+F+Hlqc=;
        b=cGtIQX2mRy3FViLdbw4FeZ8vJbieqfXHxr5wbcVDNNHQMPZhIbbBR9TEjdCuTC5z+V
         xSNUWtVr8EjxtMGGpeQ4u2Z0VgOx5CTUxMFHTKV6GIc3h/ynn3oYAAL5Efpl+CHAsnXe
         wbI0+6FfyjST4+Au3fkiJqNpPDxH9zmrNg1sYoqJ6GFnxgIzg5sCq8ogJK3M6DIcbv1x
         DZhzZxrwjkEcc1sgB8fcnT7WsrbQWZ7/kwWEMggs+YROqljtWnChYmRTCj+gdFOhDDa1
         FDa0KPLqmQ386GsQydKO9YixHEU5czt1xf2YSnkmyyfTyvqori98EC3HPFWoA20c5JaF
         FKiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CwtzaHwlq/tQuD915fx4Y9v2QmVcsUexmKaR+F+Hlqc=;
        b=r6gB+co4E/vUHcYOkkW4xanCB+1F5NlQgg7meQMVbUZ3H3YEsEY8NS/czczk1oasKw
         DdP4LW4TA7sW84OLiyWCtmp92IFMOwtzZW4DXBISc67UwFY2NH6vBm51kvP2jsN24OH0
         M+Qt3hG8hlsJ7PbMnnoomsrA5G9NMoKy6nk//vs1BF9gotplH2tBkKTsgSDBcXn/t0Av
         O4t4/xbXwZbo5ubyRFuqKU2JAJiOhZWUxm6f/XvFvnRdX2nXv+w3bomVYVkG1caHNh0m
         eNyD20acyHit40n1rW4abbwyvffbV+0xnFYnM5XHQZfWdSUa5hl4DxgY9dSIZYMWGctQ
         bQ+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337PFZSQSBOXyrtTA1lMFabsUv5TiBN1Q3kLHCh0HuQZ46C1KtU
	rIGvxzORE53nF7CcawKo/7M=
X-Google-Smtp-Source: ABdhPJzoF+momD0yZaxrUCQXCLdno8FjFi8FZkwTT/GnaCMwq1Zk0Qe8c7ORQAKCUZiPgi2Lou/xxw==
X-Received: by 2002:ac8:1115:: with SMTP id c21mr2300443qtj.389.1611277720694;
        Thu, 21 Jan 2021 17:08:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4b77:: with SMTP id g23ls1614568qts.0.gmail; Thu, 21 Jan
 2021 17:08:40 -0800 (PST)
X-Received: by 2002:ac8:66c7:: with SMTP id m7mr2318939qtp.69.1611277720154;
        Thu, 21 Jan 2021 17:08:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611277720; cv=none;
        d=google.com; s=arc-20160816;
        b=Gi2s31mNc1xdVBxxLknh0VnylpeovDE62hwwynfoT95YgG3BWdyY+SjlaoziGMj9Ne
         GBU7AuEBgfdihxCotgcwdZ1E7f7qkbs245EwNAV7TRxDZi2WZDmzDsSGTPElNRmCGQgv
         CAgxbSUvwmCx9nEOtuMAaAh8MwZa92/2vB3zY3Gh1k4z2fVAASAtamCXatqwGGYz/BBF
         jZVT2Md3D+H1hJR69V/ftTqoalmEH+ynfsA9UMn9WiAMuCKhS0AH20IDA8kSVLAuRHUc
         LdUsS2uJZg6JYCMuexUmoKcmKTHi1EcaiB6FwzEN1IsDxHmK/mX8jQHPIcKnYFwHpMPG
         AV5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=/oDnqYJ3Lv1FNKyp8PO4ESlMBOKK0rSIbZdQUowJFjk=;
        b=hNe3HAGqfB0h5LPZnx2c/zHFVd2F+8xCXg1SzyrENXAB8AVicYrOxy2vlkuxu2kdZQ
         /evN2zmapVWtN46sWGhnfvIn+czxrX4KJJD99d4EZnfN1Bmv7q2j7yTJ1WR4V6zHLhto
         V1DBSmeXC3LoBt45zYI4H/rGGIrwYG3qOriIDBUK7Tc8+DD5P/uqRUCunw50q2h1+fhC
         fw8ZPcZKLPPuH+CfwuoStGAD2Bf+jV0cB+yej5E8a0ghBvuT42dkwhbm0PgXqnk4zU+z
         ZNKYAsxU5nRiA0Ko7xULRHqT0O8kals43UUQGc569LxsGeOwtlwvP2xEOi7pdTcl/sTI
         YsKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=pynfINvS;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id i2si574854qkg.4.2021.01.21.17.08.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jan 2021 17:08:39 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0::9abc] (helo=merlin.infradead.org)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2kw7-0000Va-5O; Fri, 22 Jan 2021 01:08:27 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Cc: Randy Dunlap <rdunlap@infradead.org>,
	kernel test robot <lkp@intel.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Christophe Leroy <christophe.leroy@c-s.fr>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	linuxppc-dev@lists.ozlabs.org
Subject: [PATCH] powerpc/8xx: export 'cpm_setbrg' for modules
Date: Thu, 21 Jan 2021 17:08:19 -0800
Message-Id: <20210122010819.30986-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=pynfINvS;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

Fix missing export for a loadable module build:

ERROR: modpost: "cpm_setbrg" [drivers/tty/serial/cpm_uart/cpm_uart.ko] undefined!

Fixes: 4128a89ac80d ("powerpc/8xx: move CPM1 related files from sysdev/ to platforms/8xx")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Reported-by: kernel test robot <lkp@intel.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux@googlegroups.com
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: linuxppc-dev@lists.ozlabs.org
---
 arch/powerpc/platforms/8xx/cpm1.c |    1 +
 1 file changed, 1 insertion(+)

--- linux-next-20210121.orig/arch/powerpc/platforms/8xx/cpm1.c
+++ linux-next-20210121/arch/powerpc/platforms/8xx/cpm1.c
@@ -280,6 +280,7 @@ cpm_setbrg(uint brg, uint rate)
 		out_be32(bp, (((BRG_UART_CLK_DIV16 / rate) - 1) << 1) |
 			      CPM_BRG_EN | CPM_BRG_DIV16);
 }
+EXPORT_SYMBOL(cpm_setbrg);
 
 struct cpm_ioport16 {
 	__be16 dir, par, odr_sor, dat, intr;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210122010819.30986-1-rdunlap%40infradead.org.
