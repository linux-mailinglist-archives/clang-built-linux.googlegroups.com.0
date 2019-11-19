Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMPMZXXAKGQEA67BDJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6F51012B2
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Nov 2019 05:57:22 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id g13sf13834901qtq.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 20:57:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574139441; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zl4+L4O17omNrO6aNDBOXbFHASEnJFPgx/uis3FK0PRanyIJrKhWQXVPfmfFWE9AMy
         wSQvL0yEDtx+HXV4cFmaAyQ6sDF1uoLnY3+pwbtVzggPrjuaAeajTxVVhBxzPG1hCIui
         yVyMYNX+KRHDmF0ClPDIv4JJV5r0iGZ3QypCr8ciCS03LZwQ2XMofLIjhEvCPa6TZ1uI
         fHvBAj9HOwBm42WbdguYU03Oio64WsqIHwl/HnmtZWrld0hzn6xJxa+xubUg+j7YwapX
         YLdQntQF64J0EDa963OiE79/xoHqcnvQ61eOABH4853iIcOSx3P7lFSWiFQnP0k6AJTA
         xRLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=WDqGryxLwN0iSNoHvOZBTkT11cd2m1jesg3MMakaWl8=;
        b=oug6tCLnqJzrLMG8a5+EeP3XKfJDalNdAluV7N5edsCadevnPHTFSJZLC9F+XvwVit
         2t0i0OqlfZE71CEAzeQ4U5G5dSFJYFVZbXS5YtUEUwZ/dBnzXQoS3rqt1yUNCKxVXu7g
         28t6b4lzRno3Qibhl3+YHHB6bwB32cBDanNNzMogA8gI5UdsNvENCdniJH7GmsatfXBq
         1yELVtpPD0Ft4Mz4dTJNd9CQTgoXbpxYs7Az+Fp7k0Qj+Av3hc+dUBtlCizGH2OuBJDP
         lDhumRVq/6z2c2A64nMr1BBo+FTKxJ5Kg4KZYxzOO3VBP84ybk8ws5yOoN426JtBe4aZ
         8CNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NzXqUC3r;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WDqGryxLwN0iSNoHvOZBTkT11cd2m1jesg3MMakaWl8=;
        b=dfbWpL4QMDfwuvS9YVdf1Hl6Ps5RhpxFkxRBSit4n+7k0qpcQOx72Rz5eobfi9adq1
         wk5B7tUkP+XJITQZxlzUHAwFaGbZHu5xapcGtQhpj5ambWEAkln9eQ/RtLXcbeDEjnEL
         zBXioBmlhSQQBIvG+h4vcV5c1kP6rHKkSxchb63dzODEi/4I0J8KIEXuP8AmpZwHjD0k
         axvD1qdq6FJjaXeSI05Bcl8GmlrC8+c236kBRKxZEe4eiQhrrz+XqEFyK5h1+e5UQrbH
         zQ4mM6tXGryRk2quNfFXSodo6uVhXxtZnEVgTsEo3z8DsyZWgh6nvSVTOZkpY1G7DIHo
         2wZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WDqGryxLwN0iSNoHvOZBTkT11cd2m1jesg3MMakaWl8=;
        b=feH/LjU8rdKmpTaH6Eb3yX6DX3XhTFdRZJ2kDfbXNlQO65x4yp4k5AuQkgGStddFrg
         RLtXp/tgqICjzqNiZt1eRtY+rcAqc42lWhtrBrwFHMMQ+DESFhUywLRSnYDfrYu3BGt2
         eep1GuXAVbijhHKiei3kJ7Zvy9sl+NhaQk/Sz8qXrOjHRrdOLBDaYbpiUE7wzGBYTzUE
         3gJAbq834zmwnkvOaemBNyn6zIUp0OahrM8Bj6vUAVMSN0XUXKnb85gRwIKpaElyIpQl
         wiCrVP0gzZWNrww7uNYrv0gmz+DOAYLlOWFJ6X+p560ZmBMdeoeeIuqvP4m952dSkVpY
         PFVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WDqGryxLwN0iSNoHvOZBTkT11cd2m1jesg3MMakaWl8=;
        b=oefUeU232UBW7UpbobFznPARdiuQFcz1ENS4CeK0rgEhgSi5kRIrves36oWaxpNrOC
         aK8M3M/ivyjMLQutuIsoAizcKYRK3cd9ezYZISLVcXny3lQB21EJdoroI8gay/dsh0TL
         PtrMfQctCMUtOLcUotuHbzv6SzewNe4s6p5qTsT4o4muI1Pj8GcJcq1ypc5Dbo/b3Cj6
         uM4rTkl0EmPzs21frMd3XajRN6xLZBvtGRvXlyjZkG3kAtzlung6Q9y3WNtsGpbxJ09H
         7hxWRexGoJIUSLJ8A+pLYPSBg8QQN7DypEX9GVFvZ/UgO9psxDX1RNGS2+xFD4IZFaJG
         t4HQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUp2/E+2XC1+DxKnW37rr9bCEaenrjxGKQpakr3gg+jkX4Qdoo5
	pZCf+CajG/ckGMxg5sP2R0g=
X-Google-Smtp-Source: APXvYqyWadQPuekLzPXbKtIoD3BmhqYM8jcJUAcmmhB3Q5RWW87hnn7KIqy3TUtKyC3X5PIO/TgaHQ==
X-Received: by 2002:a37:ac09:: with SMTP id e9mr28327150qkm.258.1574139441117;
        Mon, 18 Nov 2019 20:57:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2786:: with SMTP id n128ls5646726qkn.0.gmail; Mon, 18
 Nov 2019 20:57:20 -0800 (PST)
X-Received: by 2002:a37:a281:: with SMTP id l123mr27337040qke.135.1574139440792;
        Mon, 18 Nov 2019 20:57:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574139440; cv=none;
        d=google.com; s=arc-20160816;
        b=yr3pcO1deeGZYIiH3bMqikSICyvWQMdrYzDV42sai64fcmSX0p9LZ+wgwHeJMf2fSy
         r13jB8Wge3tM9G02laDCkOwldTvCCkIKOPjzhE4UvfyMMG7hHWibAJXqaSSv//5k4/ey
         Flsw2qf6MahlNUmQH15wBsgljaPb4dNQrG97WUH47BDoZ1RVczME9qeu5Z4mf71TDYOg
         9s81bWsj45QFTOkmIAf1pjwzXeB8qXlQ1zRAjNcigMBOhiJo4lpQfqCB49ZqBpB6FlTo
         /1Tx7llSMF89Dip0SafGwpFlPVbo2vy/WIbEMvcsr5x33/eGPcLNFgfom+7LjMDydNPC
         yyYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JKv0VBuRwgPnUIE0FprSRERanMIVD3+yR6LSEQF1wLY=;
        b=iC3/di/2Z+ICV1sXyOMYXel4vQ0/Ps8yK4AmfF2/K9424cnPOPJykueFyoSmDwMfIg
         QyLya8hGVI99DwOA6FUEHou70LmIg+tkNrLYInnamV7T+0P0sR06bAz54AC9XVxETUkB
         bu++GN1U90ioU6MUR7BcaJ1Eti0n00hY9APWtcyq6dQnc3+Ns4r9dDshp4Rp1MtWFz6l
         bvTyqgePT7Vp394S1KoL2YXQlTaXHpOH94Izxw7dobhZwnz5vqy2PQQ3Vk9eLosmrHbe
         tr4zKqXpMVPBQEpB+menJamcHAyqT1xPbtxz9ndyTwGMImU2E1zPRTeIiaUKy4Ka/MpW
         nwLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NzXqUC3r;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id x6si1032249qkl.7.2019.11.18.20.57.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Nov 2019 20:57:20 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id n23so16709126otr.13
        for <clang-built-linux@googlegroups.com>; Mon, 18 Nov 2019 20:57:20 -0800 (PST)
X-Received: by 2002:a9d:75c7:: with SMTP id c7mr2239508otl.12.1574139440139;
        Mon, 18 Nov 2019 20:57:20 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::7])
        by smtp.gmail.com with ESMTPSA id e88sm7019765ote.39.2019.11.18.20.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2019 20:57:19 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v5 3/3] powerpc/prom_init: Use -ffreestanding to avoid a reference to bcmp
Date: Mon, 18 Nov 2019 21:57:12 -0700
Message-Id: <20191119045712.39633-4-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191119045712.39633-1-natechancellor@gmail.com>
References: <20191014025101.18567-1-natechancellor@gmail.com>
 <20191119045712.39633-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NzXqUC3r;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

r374662 gives LLVM the ability to convert certain loops into a reference
to bcmp as an optimization; this breaks prom_init_check.sh:

  CALL    arch/powerpc/kernel/prom_init_check.sh
Error: External symbol 'bcmp' referenced from prom_init.c
make[2]: *** [arch/powerpc/kernel/Makefile:196: prom_init_check] Error 1

bcmp is defined in lib/string.c as a wrapper for memcmp so this could be
added to the whitelist. However, commit 450e7dd4001f ("powerpc/prom_init:
don't use string functions from lib/") copied memcmp as prom_memcmp to
avoid KASAN instrumentation so having bcmp be resolved to regular memcmp
would break that assumption. Furthermore, because the compiler is the
one that inserted bcmp, we cannot provide something like prom_bcmp.

To prevent LLVM from being clever with optimizations like this, use
-ffreestanding to tell LLVM we are not hosted so it is not free to make
transformations like this.

Link: https://github.com/ClangBuiltLinux/linux/issues/647
Link: https://github.com/llvm/llvm-project/commit/76cdcf25b883751d83402baea6316772aa73865c
Reviewed-by: Nick Desaulneris <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v3:

* New patch in the series

v3 -> v4:

* Rebase on v5.4-rc3.

* Add Nick's reviewed-by tag.

* Update the LLVM commit reference to the latest applied version (r374662)
  as it was originally committed as r370454, reverted in r370788, and
  reapplied as r374662.

v4 -> v5:

* Rebase on next-20191118 to avoid a conflict with commit
  6266a4dadb1d ("powerpc/64s: Always disable branch profiling for prom_init.o")

 arch/powerpc/kernel/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/powerpc/kernel/Makefile b/arch/powerpc/kernel/Makefile
index 3c113ae0de2b..82170c155cb6 100644
--- a/arch/powerpc/kernel/Makefile
+++ b/arch/powerpc/kernel/Makefile
@@ -23,6 +23,7 @@ CFLAGS_prom.o += $(DISABLE_LATENT_ENTROPY_PLUGIN)
 
 CFLAGS_prom_init.o += $(call cc-option, -fno-stack-protector)
 CFLAGS_prom_init.o += -DDISABLE_BRANCH_PROFILING
+CFLAGS_prom_init.o += -ffreestanding
 
 ifdef CONFIG_FUNCTION_TRACER
 # Do not trace early boot code
-- 
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191119045712.39633-4-natechancellor%40gmail.com.
