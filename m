Return-Path: <clang-built-linux+bncBDV2D5O34IDRB6WJ2D6QKGQE4NNN33I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 871812B6EA5
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 20:31:07 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id x16sf8722123wrn.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 11:31:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605641467; cv=pass;
        d=google.com; s=arc-20160816;
        b=tE5asKUWJGkFXJ/DebbrtokN4h2Ehbd5NDbc9z67vmx0fXF/g3Q9wgzeoIp+VMnagr
         SHsQ/UHAxy2e81O/ak1YALqF7aEhtHD4mbXNYLpyb6BA/XJ3FcyDbP21+NgKZlPwssuH
         fld5ZUs3KHzOyMt45lqd+3UH6S7RFROG3IU5e28ia7ZIlepteaie5FJxehevlQTDIcYf
         cmtlo4DlYnUiHnPAvZ0n18WaI7SgxA2KG53FqQLHm7h6nLXbFtpcQtGzlT+na0yRm+yn
         UMvzxfbrXZxM7ARZZackMw6TXfLIoz9fgVyQLTgkaQjLzF0usr2Cpzhi2DlofB1DDHXd
         YByw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=F4nRwL/6nW/llg9wjkNBIhjqRCghXfDbbwDkjYAN5+M=;
        b=vtMraDSsp2AUqltuktt3JqXkRt1+A+NICMNc7P8np9YnY6l8v/lQxR5hSC2YpSPwic
         Oo7x/Ese2ZPL2+yQGh8IS1Y2/lJClzi9e11MMJVr+anlmEehBpVB2H/Iq22/WQyOb/Iz
         Upuv8ZJ/1Zx48k/goI+/YCsMaVTRaCz4RNsId3+nIgQqtOmuxdrDs2PYmQiPMxgBPp67
         kijYPCRKWFHJIgDDnrsBdCRawZxzL4lIN9han4S5UoX2GKxQz9zM8j3eay0xWCfg0sQ3
         09bcMHPGkrdjYdLCdXnprU+G+tShgB5PV6OU5873XVp/v2XGVT6gIN9TjdvtBrVAahJf
         EhCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=LAH0bwix;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F4nRwL/6nW/llg9wjkNBIhjqRCghXfDbbwDkjYAN5+M=;
        b=kBlk3WpsGwHPM8ZKrKj2UQ5jwdMM10J9ygvx8EaK/TlScHxPaPzJ//OtIvxgRpn05Y
         rNRG5xlktRAp7CTw2Q1OVhru63LQMIRQDNZn6dJUdYA07PkUaxV24OJmgFJMfwM2XCEj
         rcXYDPSWVgz54giBkiesD0QzgYf+Zzrm0R4jbxMVyZoqf6G9HTDIlydLS7bI0WVgtk27
         0FutnnNt2v8mk1bX4QOhm34Xh9slpXKzlKiKcoi7uV4Vy6rBpbCWSMA4ROgZeYJhTuOb
         N0/W1rvY7qiUvhQ2DW3wfNFeW4JvyGRsK8JyzjeE8FFG2fiwGKtpsOvMW16d0GkhL7ZO
         PqPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F4nRwL/6nW/llg9wjkNBIhjqRCghXfDbbwDkjYAN5+M=;
        b=Gh2IfefQIUq+RMxMGUQeKF+9ZNmNBHjFPqLj08Y90y+TUMJ0CcBTMyXwp9lO8ySUVN
         bQUmLqpynJ9WlU2NEq1jQFDVIoctv/snQl/3+g1rzMfQSgakF8TmG9Ox6AMaQjGfD3fw
         cwFoCaSFMz56p6ElLqopr71QnODd+6oCs7s/2EWNy5Fn6iMY9Q2Ep6ja5c5+dK4Vr+wR
         ZETAdI6ztx0epTX2CxgemQIoeZKBLSMZJJ3M96iRc+xKARl6DlokpJvGnPlKGHGp9LtP
         ch/zd+fOt1bSRLVXRo64Ua1JrW4ySkGXWhbQu4LiJoLMYmaFTO4/D+Of95fjNdgmPPew
         NlUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dgWU0bKec2n0JhLDeqykEGXBS+1EgkXeDX/AFkSucWz/iWRf7
	qAE07DMIDkOzRtQVI/vB+VE=
X-Google-Smtp-Source: ABdhPJyLuRVNzLNWiO8acWTo4M5Lz+KHfc7aPi9Dxbo16HLY+zt4sHwPL57zke9MaHrB7bDa1FqFVQ==
X-Received: by 2002:adf:fc48:: with SMTP id e8mr1132372wrs.313.1605641466302;
        Tue, 17 Nov 2020 11:31:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2d14:: with SMTP id t20ls1839633wmt.3.canary-gmail; Tue,
 17 Nov 2020 11:31:05 -0800 (PST)
X-Received: by 2002:a1c:1bcb:: with SMTP id b194mr638050wmb.139.1605641465361;
        Tue, 17 Nov 2020 11:31:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605641465; cv=none;
        d=google.com; s=arc-20160816;
        b=uF2zgVojZBY+Gpxt/rOQGdHztlE/PQflrzi3VN5iM9h5FVyZLTgkwPmfiyJsH+7kcI
         VvDUtq9nJ22Hg80JL6HbRkW18FP2dkXVx1GIKbh7SsaIN8Sx6nEcYVo6ougH1saiOgxV
         iyZL7gvRq8eV84ptKxMdVXYjo3WTcvVcTqQkGJ066QeZbF9RNp3J8lLgqX8+Gg5phhKc
         cQi/+Il4Ngcin21KmKFol0LUtl/RIaK2AQcnnFmpI7oo4TAfhY5thgbL6Ai/tmzSIX9L
         UzkQdM5jnuAcqTWK5u9IESIV1Aa0EvzpiQGr9xY03BoiSvOxc/Z1Q+d+J0jPS0g54n6q
         P2pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=0w7Ozk28Ycs+oUmhikFWAD+C3GsZMaJDoL2VuQ4QW/c=;
        b=Etydng0BKNbsbC7vYCA4Lf4GiQY+HxMYDotopvyERnLcdZS5LwzNetWIXqkhY+kU5T
         KFE8lJdj53MAOanKaiIkFkKRa87eHLRJxL2C87lPWlQjTjBlA6Qd6fNpnKa9fyX4w8+A
         fsw/AAcLs5MAjJIakDk48vHRsdVLYmSDsUSQMSZMrPgANrNBWHwUtjDbE0FUtnAjNCRv
         KvaKMd4PbxaieSYAIRa36m1is2zjasq4iBx6nZuJY7u1ckDpbWqYh+dtc6BA8BSYmzzU
         zVSJQ38lhrXfeJ5hjymiJ++geiropEORtaeENHXur7gw8Dn2RQ9XnpDzG1pS94SVQs9G
         1Qxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=LAH0bwix;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id r21si926450wra.4.2020.11.17.11.31.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 11:31:05 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::bcc4] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kf6gr-0005l4-Gg; Tue, 17 Nov 2020 19:30:57 +0000
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
Subject: [PATCH v2] RISC-V: fix barrier() use in <vdso/processor.h>
Date: Tue, 17 Nov 2020 11:30:53 -0800
Message-Id: <20201117193053.18990-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=LAH0bwix;
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

rv64 and rv32 allmodconfig now build cleanly after this patch.

Fixes: 3347acc6fcd4 ("compiler.h: fix barrier_data() on clang")
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
v2: update Fixes: tags (Nick);
    also built allmodconfig cleanly on rv32;

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117193053.18990-1-rdunlap%40infradead.org.
