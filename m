Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGMX5L5QKGQEX6RW4BY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E796E282EFC
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 04:57:30 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id q11sf6260771ilt.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Oct 2020 19:57:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601866649; cv=pass;
        d=google.com; s=arc-20160816;
        b=qb6h5x8Nj6bq5c/EXHCq9k1kF2mSk2xLg1JvXblczZspuzMV2GAESt8ufD2ieaFC2v
         iEV+8ozd7GTbqcMAz2ubpeep2m59LM7u+/RXbWUZu/YtJJplmftoTQcFE6SgM1Oy9COq
         o1MRZUF2aL0Keegw6PEKHFoVCUbvpMhGooU0e7lY3Zh/1tMRGfMmE8TOOPto5jx7IneW
         FjpyL2Q1maGTgGOM1yRx0b4zv4ujC2STH1bEvlGuu1vO9NN9WPvHuXpRRb+6Q/SYu7nj
         aRA3pBfBLrMFVtwGOkunAe1hpT221/ULInFtr+udpzFSj10ZgUTthapC6eLJYeA/BUZ0
         ibpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=mpZMVXj6JKqPrQdthgo9A8LiidHuc1BfYrQFbyAZQzM=;
        b=VCbcY8svt+c37HbS65HVjOfHvCcg33XMJpHBCVQdkHukvzt0jmTi3siV73w1Oci1Iw
         jlXoDZxRxMXufrdJ+S4Z2xdEi+UMZiRGKXqZLYs9fyG8w2Cf00vB8kAlyDd1bvBRo070
         m1RxG+0lc1oQckyyaU58XMh/aCJt9spEFWGZf7nwqflf//N+NAkCP0yENfBkkTCKhTkY
         NBV3ceKU1ZPY47dXXdV294NSEcGwNQRh00jO6BOZ41khhabp20M4s6G+KkSPHMbv8uDd
         zvj5Lo0Kq68lrqeM6lHNMzSN4LnwOq3FYbHFHmNDSnLAnbFZH4/ZzYirUePNKyEXJUrv
         VhAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RaF15Fd9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mpZMVXj6JKqPrQdthgo9A8LiidHuc1BfYrQFbyAZQzM=;
        b=lwFpXceDWgTLMwgo3UmR8zuQRUBw1AdCFw3dqmM8XwEemeF+cls1LwVvmoj1wOLaFi
         J0xBMdQT8E9EIEd7k2Wij4yJ/PI+tCH+1cBk6dlPK2/HBBytNHGHVUdyAVbAWHb/szTx
         zLJFX+eVm4et5C1gDLzxwz5ZpSmcjJpInfWJ805+PY9WakA5KBqePNY5BljJ2u/wYuQI
         3e+Pd7P5WyP9du0v2WFWe3HCFva/RQRuNZ1A/Yff5COJILhnem1IwjENv9SlqO/PwCmG
         jpZDH+5zAVzUzA00wpMYeSLr6EnHXjeN4awVl/papV0wCLhhhbncrcA9q+BLvau8kI3n
         hHjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mpZMVXj6JKqPrQdthgo9A8LiidHuc1BfYrQFbyAZQzM=;
        b=gYF3ca21F99RCN6TR+lsH/ESwcnB+5bhdPBGVJ5wnG/SUww5rDFhOMg0WD7udEZ9oY
         OApqNvADvU/F69cj0BmPYjTkmKYYyu4z1/Ib+Dgw5bYkG/nKZrgm23iXkcm4oCmo/VKo
         JJSC20WnGxMPN4oR78lElypX4uSDL/dEym7lt4NfaFyyllC5JwFVqzAZVVATTcYh1Yn8
         lNxQB/Gx/P3jkwgUXT+yEaVHf+EiHDd37rr1R6mSqtj80PGoJe5nTfkwTiBWlnVR5hck
         IHpXzUM/BFiB6cynSlBdoez3meIu/bcXF+kxKyUZop2B2oKymP7l0eDAVPXzATlhC84U
         5pMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BpkXYVmy2BCcqplBc4tDkV2FcBmt2EPGs8GUn2YxfLmZ8EXrw
	1JAu/D04sdcgQ/XycMpmD8E=
X-Google-Smtp-Source: ABdhPJwAW/P+ZSz1hZ7WymOCc03Wbzuk6Mfqg1vtnqOvzUtWU2JbdSaK1T1hIeMRACItYKIB7BuICg==
X-Received: by 2002:a5e:9613:: with SMTP id a19mr8988907ioq.116.1601866649400;
        Sun, 04 Oct 2020 19:57:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8897:: with SMTP id d23ls1098299ioo.10.gmail; Sun, 04
 Oct 2020 19:57:29 -0700 (PDT)
X-Received: by 2002:a5d:9344:: with SMTP id i4mr9143234ioo.115.1601866648988;
        Sun, 04 Oct 2020 19:57:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601866648; cv=none;
        d=google.com; s=arc-20160816;
        b=s8gr63wr58Fd+/PLDxMksz/fFxXkKgKbcUjv7Uojxfm6C0kbRQ5WBWzB7hndUtGiCJ
         Xn2RTD88o13CpaZcrA5qbRf/WGbHbjZ5plins6LJytzXWyyId/Fq3ZHFBy5LU9Z1e54W
         PXC1hYi3lSMcglCbzf+ggSj8Ece4BZp8w3eJUeeWZ/kM/LeZ0wk+0F97w5aI4n2Nm2wv
         5I/+IOHhMYM6KIuj6kVEPO1A6clss+B2dJRkc76Jqhjge0/K1Ztj6t6504HSUaw/i1Wr
         N5mkqO6KccTQJyCI50Ol2F74QbNwUf6aHRXij/wOsZRWSxUmSsqj6QnaK+6EnHf/3DUZ
         jGGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=OGtLendMkx3eeiJ6VgZEb6Gt3GGRj2yTJFPvPu5CLd4=;
        b=q4f+yGmxkQzsE5aY27ArUpKDFkVUJYIfnvlITmtxIvpCDdwsqIEwCgapvnxyH4523F
         5FIyzgL5HkKWSupT4fWXi6PiXA4umuiHI1R6EEeE1uQ3XcgYrUXEW1kkS7e36NU70tac
         /dLYJgkpog+Sec1lb8upUDRcwyW3et190WGwOqLfrynRBSe0J1PHr1hbcugFktgYeoJi
         KWZAL+Ql5Ja4/eclPyx0mwxLv7F0CriiymCx6u9O5e6gGQRjNzmnBN9/59wGtzizHgF7
         j/kzrYO+RNHNhQwwDAvkkw2Xt1LXjHbB5p6iMp6wK6O9xLoPm0/6NNfWtoVtfUFM3SnU
         Eqwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RaF15Fd9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id n14si689627ilt.3.2020.10.04.19.57.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Oct 2020 19:57:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id n14so5838039pff.6
        for <clang-built-linux@googlegroups.com>; Sun, 04 Oct 2020 19:57:28 -0700 (PDT)
X-Received: by 2002:a62:2985:0:b029:142:2501:34d6 with SMTP id p127-20020a6229850000b0290142250134d6mr14273789pfp.47.1601866648452;
        Sun, 04 Oct 2020 19:57:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g126sm9476727pfb.32.2020.10.04.19.57.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Oct 2020 19:57:27 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] vmlinux.lds.h: Keep .ctors.* with .ctors
Date: Sun,  4 Oct 2020 19:57:20 -0700
Message-Id: <20201005025720.2599682-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=RaF15Fd9;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Under some circumstances, the compiler generates .ctors.* sections. This
is seen doing a cross compile of x86_64 from a powerpc64el host:

x86_64-linux-gnu-ld: warning: orphan section `.ctors.65435' from `kernel/trace/trace_clock.o' being
placed in section `.ctors.65435'
x86_64-linux-gnu-ld: warning: orphan section `.ctors.65435' from `kernel/trace/ftrace.o' being
placed in section `.ctors.65435'
x86_64-linux-gnu-ld: warning: orphan section `.ctors.65435' from `kernel/trace/ring_buffer.o' being
placed in section `.ctors.65435'

Include these orphans along with the regular .ctors section.

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Tested-by: Stephen Rothwell <sfr@canb.auug.org.au>
Fixes: 83109d5d5fba ("x86/build: Warn on orphan section placement")
Signed-off-by: Kees Cook <keescook@chromium.org>
---
v2: brown paper bag version: fix whitespace for proper backslash alignment
---
 include/asm-generic/vmlinux.lds.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 5430febd34be..b83c00c63997 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -684,6 +684,7 @@
 #ifdef CONFIG_CONSTRUCTORS
 #define KERNEL_CTORS()	. = ALIGN(8);			   \
 			__ctors_start = .;		   \
+			KEEP(*(SORT(.ctors.*)))		   \
 			KEEP(*(.ctors))			   \
 			KEEP(*(SORT(.init_array.*)))	   \
 			KEEP(*(.init_array))		   \
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201005025720.2599682-1-keescook%40chromium.org.
