Return-Path: <clang-built-linux+bncBCTYRTHE4EDRBHGI7OCAMGQE7FMZAZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5B5381226
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 22:57:01 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id p124-20020acad8820000b029013d36f4aa65sf316766oig.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 13:57:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621025820; cv=pass;
        d=google.com; s=arc-20160816;
        b=xxBU4Nw1HMYu4XoNjyqjQtJIarMSreUaEWFgW+I7xQvzcrIGITr3VgeeLeohlx4HBi
         HEfW9vy8mEaiw2Vx8oAgVqdNmS0DUHANopaq7GqfhB7koA/Ki7wkXHdHaa1G/5Jn7oPY
         qiGtdfmyKS/JxX7IS8E9RvTofxH4TgiE55OSO0nmpyS4mDn2i+oNG0QHARMkpsuzacYS
         OqoEfkiNv7pWne385wqgdRNVMD0n2XmiTiXqMBD8T5SQDlgJT4Kfl5ulaYPz5nPLdBpJ
         ktHQIaENQC/K4q0HzV/y2fk9TMQN9/qBgTaKkq7qC1Tbsjcxm0qKNvgbksWG/1p1VyWe
         Awgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=4l27NgxliRhhieh/KhSljIsJ8uWw3w8cjhd4mgtZNGI=;
        b=uOiWlY9BzG+GwSTvO95VUZnwzhekiQjkW+QEaDwaAiMG1FWdU3SoBkBmKr21mRTfIv
         PiN/8y/3sxoUxl69qXZPr2vZXxdhYcOFM546zFI7zvDq4WTy/hBUfPU9eHiMtk30f18o
         ACQJE4AM6CIyfzE4uxXUi0nQNGJbIrblL2yh8rLVg/fVSgADyJZYAoUH7VPFko19Wsdh
         Nb/LSBTJCV2Nd/q8yIPQTWPKRyVMNUXvIwtbhHaKZlRHMkWwrrUcCNo3PFKMO1vwLnTF
         w88SHELqO2TXlf2F2Lz0nv0w+84nB+7EY4tYS9UYwz6Wt/sxa4Mnsp5T89VJYJ3jAhvV
         /m1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ftrIUdlC;
       spf=pass (google.com: domain of raj.khem@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=raj.khem@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4l27NgxliRhhieh/KhSljIsJ8uWw3w8cjhd4mgtZNGI=;
        b=mykjQRMmGNbU44/YlA5SVRZL/1hYrVZ1h2llDM59fXGxHrpSJzIXOYq7ET8w+O3vsm
         S0b7GIWeNZfBc206vUyHt+f5dI83DApZ0rZxoGvsIXBNjNGQzVQ2k5R56PfG8WuNn55e
         3qTSApMOm5nU7f5/gPIyyBIdP4JIkPqkxInUv/SDXz0y3PUkWfhZ7MmtXObZHeHA0fnA
         wOmVQTxG4W1ec0/3siR7zhtWFvTXO//gBzQ3JumQJY2s9GWcA4VG0snIcxzyIxC/nlf/
         Q0Ws739Ruq/w/bojskjxxb5EKzJ4fEyeHkKBWqXsj8b8uMQYPhVVE4TzBywlfvxkG518
         78Xw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4l27NgxliRhhieh/KhSljIsJ8uWw3w8cjhd4mgtZNGI=;
        b=aS8CpsYfy7gNgSk0AOFv/UyXMkmC9T/ArQ3Yj8x8O2xeN1Rn+QVJjV6SHi5zzaPcR3
         sdM8xbBQ5x6v+UCxiyohspNK5ahbhFXWzF2cyMx35YGZC9SUJlFXf84kMD+AwxeiPZVA
         8A42s9XaiE73bntLGMK0TDJz6PcTSP2TmdMmZwZ7dcuNbyx5VasroNpwP6DBcFT5Ixc5
         GMzRYXsFEzarFHvfZyOy4VylvpSoVucG2NT2OaX6LMZrR1HpyplRaxc63byZORseOMlF
         2c5KBToid07/XDAR7ESoVzrAb7C54jie4IAWKOhAATbOieRTxNLbMw7iO3s3ZBwrSHTe
         cjVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4l27NgxliRhhieh/KhSljIsJ8uWw3w8cjhd4mgtZNGI=;
        b=cuGtz9JRYHpsm7SliA01/GHp36GB4RMf1cdmUExRhFsRl/wYXzB365Umn9dPtjzZSx
         OAuNPq4Hj2z2JDrFzp+/fhiWfbRU06KD1y1g251+GpxIqbvzG+xo7NBKJL0brEL3KcGj
         AEiAuJLN1PzZ0ykDjXrygHMKr/QoQEgngmYxvg8h+/c7qROP8mNdQBPFghV7WXENXhzj
         xsEXUr7Pxz6fmFHnXBaffZ46OxPK/3dlOpDPyjofafcxxsV4AglCxqYxTpjRkmS3vNWe
         WeIGfcAlyAsPypzVOKMJgJ8V0MVwwVUAuSBfIuPXUOiMT+EPpsbpLL+o9F+GhBRInEDK
         L1kw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321C9h1p9lAI7UwyHeYbmvVHgBTVTGxRQxtqHsWwohNbTWJBL9C
	lA6h5Pe3apyskVa7rYg9FdM=
X-Google-Smtp-Source: ABdhPJxVJvSXRY3sGC/fujaES6zNMBSs7CJadbKXOq9+ciXxYceqw28voxF8PNx9cdwklXpFuXdvEg==
X-Received: by 2002:a9d:1b4c:: with SMTP id l70mr40455590otl.344.1621025820649;
        Fri, 14 May 2021 13:57:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1d6e:: with SMTP id l14ls2883244oti.10.gmail; Fri,
 14 May 2021 13:57:00 -0700 (PDT)
X-Received: by 2002:a05:6830:16d4:: with SMTP id l20mr33799663otr.356.1621025820232;
        Fri, 14 May 2021 13:57:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621025820; cv=none;
        d=google.com; s=arc-20160816;
        b=y6U8HLmHZB+RC/+yzRUK4Kb4MSEHNfw+rt+NkDFNEvcB0Zwh/DxT54HHbFKSMYLLKj
         q0m8ix6o418yUQp77vR6KmaGI/1GFGVKrJMpIe2TT3EYjgITc4HPp8W37BXX7J4m71uz
         uHaFosM4LQx/+Xszz+BAIQ0VLbOzmTCE189YXFhHJ+9WCvCdZOjFlhy3428k8qCZiFkU
         /e4VwZyoyKpYKocwtluxXDMUkORQTD1TaG4KS52QoxZWnLqziBe4X2LsOqS1aMwfWteX
         gyQQ7XxOIKOJTgBVOyK34/Pn0GF0riW6aJoI+L+qXJ05bM4KLIHn0EX/WQ4ya8PxA9fa
         VTpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2fvOFfIAxcQKIG6FfQSNQIWF5U/hDFDvo7cGWOH+Z/8=;
        b=k7QtnRGhZ+IQ5uya2tiRiB93IRQwP6/Uh+SLaJwF3quZ9hGMhc1smBG/YfJc2jl8Zk
         Yy8vDD2pRwwwvZW5AQDGzvkOha4GvKInjRHtuLUwNJHyAGxazSfvEEHBxAh1SZYmbZLR
         LNtY1eqZQA7BzX+1q/sC0N0XP8cL9HtVZkTnIk+vXRf6swiWUkeQcwZBB1uf0pVfFpYw
         kmYL5vypQoBKC0a9VqIrPpqDHJBh93NMeTRZuwyZbbckKzRY7hMz7QfC/gIr1M2pOIrF
         re+k+7AIKmH246XZfvTjl3QqDiy4XRz4LKZ6BKdAWSYIO3x0VxsebfGb7/jA45iPDvOR
         RQFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ftrIUdlC;
       spf=pass (google.com: domain of raj.khem@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=raj.khem@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id b17si692907ooq.2.2021.05.14.13.57.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 13:57:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of raj.khem@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id p17so481309pjz.3
        for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 13:57:00 -0700 (PDT)
X-Received: by 2002:a17:90a:6309:: with SMTP id e9mr13674375pjj.20.1621025819522;
        Fri, 14 May 2021 13:56:59 -0700 (PDT)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::a7ac])
        by smtp.gmail.com with ESMTPSA id j16sm5235774pgh.69.2021.05.14.13.56.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 13:56:59 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com
Cc: Khem Raj <raj.khem@gmail.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH] riscv: Use -mno-relax when using lld linker
Date: Fri, 14 May 2021 13:56:43 -0700
Message-Id: <20210514205643.383422-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Original-Sender: raj.khem@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ftrIUdlC;       spf=pass
 (google.com: domain of raj.khem@gmail.com designates 2607:f8b0:4864:20::102a
 as permitted sender) smtp.mailfrom=raj.khem@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

lld does not implement the RISCV relaxation optimizations like GNU ld
therefore disable it when building with LLVM=1, Also pass it to
assembler when using external GNU assembler ( LLVM_IAS != 1 ), this
ensures that relevant assembler option is also enabled along. if these
options are not used then we see following relocations in objects

0000000000000000 R_RISCV_ALIGN     *ABS*+0x0000000000000002

These are then rejected by lld
ld.lld: error: capability.c:(.fixup+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax but the .o is already compiled with -mno-relax

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/riscv/Makefile | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 3eb9590a0775..519f133e0d53 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -38,6 +38,15 @@ else
 	KBUILD_LDFLAGS += -melf32lriscv
 endif
 
+ifeq ($(LLVM),1)
+	KBUILD_CFLAGS += -mno-relax
+	KBUILD_AFLAGS += -mno-relax
+ifneq ($(LLVM_IAS),1)
+	KBUILD_CFLAGS += -Wa,-mno-relax
+	KBUILD_AFLAGS += -Wa,-mno-relax
+endif
+endif
+
 # ISA string setting
 riscv-march-$(CONFIG_ARCH_RV32I)	:= rv32ima
 riscv-march-$(CONFIG_ARCH_RV64I)	:= rv64ima
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210514205643.383422-1-raj.khem%40gmail.com.
