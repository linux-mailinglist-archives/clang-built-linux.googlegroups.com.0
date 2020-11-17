Return-Path: <clang-built-linux+bncBDV2D5O34IDRB5GTZT6QKGQE4JF577A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id BC61C2B5653
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 02:40:04 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id e18sf12134829wrs.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 17:40:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605577204; cv=pass;
        d=google.com; s=arc-20160816;
        b=s9RmMCgIx04xBHYNItHLAADoXfPI4QathvCMIyj0Awwp2WO5jymkK/TQa3LJwgquoT
         pQ/rYr/dgAavU9wSTnTSjiI2x0ZIqdCHVNUWXCivanrJzqGcBJVjTNRM3ctrVlSxP4L+
         OV/A6dneB8kcQ0E+AzpuZOUtJq3o9j7LTqVD+c/L5vPQ4058lSEwdlH8RfmdlvRTpz6I
         kFa3WDd59yyAS9U+1jYFGQaLT6I8h+o884XOyfteUafx2Qfi3dxifUSENRxPxrpJXVw/
         JAmpwQWQq1+4yypPW6RYkRk3nWiqyFLoliAbwfK033QfkfTdPTvfKMZ0+mm9UUEgCAjS
         Z7+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=OBse1MhTE5yy6qOTILDBymxI4shQxzZYPcWJ0onHKI0=;
        b=B/WuDXOF3065FMcScqMonmkUTlW5jSkgiO7noWHXI5P4fIdEGX1newkHR1jThJvOQ2
         7nrAiq0u4UH7YL5ZzyNdLBhSV47Z5ew4/TWJcjLzwIKhOOUc4m66xYTquf/1XCz6sZQR
         R5qzGtnOCyk85gemb9l0hd9gSfv/whdEkbgxttg5ytLMo2ZOCc0t688yhnUsneE4ACeF
         HeyCUGEWSiq6HcDWAf1KewC+nNP+Iw57zx0e4BVDf/Gg5xkMuIq6MVatss64h/z2EmO5
         wdOSHFjgR6F7Jhn17nmQ1uGVawTBkLGE55XAqDozJBO8HquYE8/n0DNgrMe8A/c8rS97
         fjGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="bEW/mOR3";
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OBse1MhTE5yy6qOTILDBymxI4shQxzZYPcWJ0onHKI0=;
        b=aLG5at782J0ArTaoFk2bnbQ1iVOc2fHO/DliC6hOtaMSObxPEdS/byXdQk3zmUVIG5
         nup5wthEkaxxekkEug+UxVL4NxdgBwIr1x8QJHaBP0BlFAGbQKGm338DUQj/yKz0kkrb
         9Vja4xDUDvRnSceyW+h86dx1HQQw7SrG3WrVAhgnGpMODmCSWdC0fo+r5SXXh+0V5mMp
         1QSsy5uM2xBraMDeBctXbbd/LKgfh8/wqm/hiGtJac8KyMImDAmO+rVjCcDKDn1QBOP8
         VUixcTqpuVqRtcVsPnAw38V9Zt5YoSH/gZzKWHTq+4/kdC5nQ/Z7XS3I2g1mPUKBuXHC
         0uew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OBse1MhTE5yy6qOTILDBymxI4shQxzZYPcWJ0onHKI0=;
        b=t24f3qc711XbVCu/QBep5ouYIdO+FYiKX2yBoYNVOT3/dIJ+sXfmHMryJj9y1Z+vrS
         P0bSytk80aLuTJLzbhkjMQaXLYurPDGwzE+SUHQh8AmRbX1xAlpsjEPf53HO4os3JRHW
         TbXfuEwAp1Dn3L4P3rx5/Sri5rkhPZl0U3E7KLIUOV0lLTujQfW/Ot/3jes9Dkn9bknb
         +qX7VG2ESjDHiypHEnJrhbeYnpjaZIJYXG+K4XmZPerUIHjtPTQENUO0HxYyMDfSOueQ
         YvVEE+6oW4GYlDsgvOaXxa0t06CMTZ68Ok4CWCL3j4WIxE6+bjGYu7RG2MePU8T6urKa
         YyvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pAbFfDUyk3QjILlk1Nv1kApIhvGCGyl9hmFDdVjfQoOOzT5Gt
	vtZhHYOicvr0fgxU0kyBttE=
X-Google-Smtp-Source: ABdhPJzzdfUFJ3WFF5nirr852epwLxqGyS+FdYNOAZKm8MvXrTqiPPIkKntQeAW456Ac/V2gYs8CBw==
X-Received: by 2002:adf:e74d:: with SMTP id c13mr23215334wrn.277.1605577204524;
        Mon, 16 Nov 2020 17:40:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2d14:: with SMTP id t20ls294200wmt.3.canary-gmail; Mon,
 16 Nov 2020 17:40:03 -0800 (PST)
X-Received: by 2002:a7b:cc84:: with SMTP id p4mr1670014wma.86.1605577203658;
        Mon, 16 Nov 2020 17:40:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605577203; cv=none;
        d=google.com; s=arc-20160816;
        b=RBw8Dh7drFhXl4i38tujoT91eYAKymcD63qUsn8stGoG70hO9paFEJMt8vzPW+bIsJ
         wNZ6oeNYuOy0FaL6g8pEm2Yz1XuKQAGg8Ch8BcwE+Es6tR6tsTweQ4DSagU/6f075FUs
         MIm4Ahfe85qcvqV2MxwzpvjS5fhB4g4tFY6ryfiD6rbUQHw2p9oNRKAs5UNyvso6XatM
         J78Pw23J8jOZ7NoZqxV596yyco0vVIE1LV/U0D9OScUMfKMFZN0zeBrSUjZHnm7JQPXy
         REeX8PHZ1fqdaLV9HRsCK2q/1KFIkI/RKjJtQX5YTmnvwLj1Hw/MC8iMTeEYPkSFJfs9
         4Bmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=jvqxGYjFQsaLtu5EXBK7p5m45joX49ZCWSOOd/T3udE=;
        b=rIR5AGLtiCzOyidp+IS2/3nrFkHK/DhlHh6OaBLQR0T0+LhOZr4lYy4ornITsedd2v
         L1NHq5Dgq6ASt56ptTG0V+K3JcGkb0QUJR/fu5k8/AMbcDaWdn0AkV9X/Vf2VglGPEmc
         /FMHBak1pNsfv3/jeLiPzPihXpyjRHoYx510ds+JHE//RrK7LEMObf6SYq8g0cEoR2x1
         sI0AC3q9lpqxey60ttVrXmMoqu5aMSs74MA8Hu7fvufE9VHKRNOg/+X3jafnjh52npiU
         WHql9q7bBWZrzJQEwFWsNr3Iu7cv2QznCYd9/e98eUFB9o3i33mx7G6xnh8fa/JsSPFL
         pPHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="bEW/mOR3";
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id t9si41823wmt.4.2020.11.16.17.40.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 17:40:03 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::f32] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kepyN-00042a-Uc; Tue, 17 Nov 2020 01:39:56 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Cc: Randy Dunlap <rdunlap@infradead.org>,
	Andreas Schwab <schwab@linux-m68k.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Subject: [PATCH] RISC-V: fix barrier() use in <vdso/processor.h>
Date: Mon, 16 Nov 2020 17:39:51 -0800
Message-Id: <20201117013951.7827-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b="bEW/mOR3";
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

riscv's <vdso/processor.h> uses barrier() so it should
#include <asm/barrier.h> to prevent build errors.

Fixes this build error:
  CC [M]  drivers/net/ethernet/emulex/benet/be_main.o
In file included from ./include/vdso/processor.h:10,
                 from ./arch/riscv/include/asm/processor.h:11,
                 from ./include/linux/prefetch.h:15,
                 from drivers/net/ethernet/emulex/benet/be_main.c:14:
./arch/riscv/include/asm/vdso/processor.h: In function 'cpu_relax':
./arch/riscv/include/asm/vdso/processor.h:14:2: error: implicit declaration of function 'barrier' [-Werror=implicit-function-declaration]
   14 |  barrier();

This happens with a total of 5 networking drivers -- they all use
<linux/prefetch.h>.

rv64 allmodconfig now builds cleanly after this patch.

Fixes fallout from:
815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")

Fixes: ad5d1122b82f ("riscv: use vDSO common flow to reduce the latency of the time-related functions")
Reported-by: Andreas Schwab <schwab@linux-m68k.org>
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Arvind Sankar <nivedita@alum.mit.edu>
Cc: linux-riscv@lists.infradead.org
Cc: clang-built-linux@googlegroups.com
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
---
 arch/riscv/include/asm/vdso/processor.h |    2 ++
 1 file changed, 2 insertions(+)

--- lnx-510-rc4.orig/arch/riscv/include/asm/vdso/processor.h
+++ lnx-510-rc4/arch/riscv/include/asm/vdso/processor.h
@@ -4,6 +4,8 @@
 
 #ifndef __ASSEMBLY__
 
+#include <asm/barrier.h>
+
 static inline void cpu_relax(void)
 {
 #ifdef __riscv_muldiv

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117013951.7827-1-rdunlap%40infradead.org.
