Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBCWQ3H3QKGQEL2VGQUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id EE55F20BB80
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 23:26:34 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id u59sf8512053edc.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 14:26:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593206794; cv=pass;
        d=google.com; s=arc-20160816;
        b=UpZgNoc8ljiklT1VwtYknNNsvS9Hhr9TvecmXSzoThd7VgMMW+8K1PjraFv+s11VIG
         YbIV32wq9CYprIO8CGPAO7arQahH21o62dBpx1I1PIO5AeWYil1j3B3Aotx68t+1rBB/
         oiBTg15kt6rOwkEl9cznyKi8gN4k2DsUlo3eQrHRXjbhaNuVAcZquu9/CBDFhKVRPtas
         HfLcIvFoNygKDoRynJdtYI4IuroVHlCc9DSmQPR3kCfkes4RXy6JzqHTrfGw9H4vPwJH
         gsH26KlvljYHeqoxoHLlxzDCEndBRdpRTjPNcfgDIledH/WK9xRevviQ+wZL99iPrnUL
         UhEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=CgbrwQZs7wAn0/PogpG28uD/JREqR4R35D5VOMRVs3k=;
        b=pZGDHwukR6c0FiE1wNke886tq3asePpK5SFJeSe5bRdXlbPYmQHKcjJ2/Xiit6zg5q
         6lPCzpF+OQZjchntZKvzZx8FvecKaJlpGM6S6jczHaD9buasG7zm4itk4EzH0t+KF0Wx
         3aVW5B0MvBGLAml6rUyn4E99zev9EaZO1Ob1iGSoyv6O2uFMYfMywC8A302bJKiXZb7L
         aY7w4SATtI33ihNmnJUufsp6ExioP43xpv/iHeHs3v4cemhvl3ObNgCxiXiZT6QpTrCa
         wIUAWIQS8OwxR/DZF/FTq6rKL9lF4HSX6itAXAabOwBLmrrnFV1pLuOWroV1x3PQx75B
         ShfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=sipHPhUV;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CgbrwQZs7wAn0/PogpG28uD/JREqR4R35D5VOMRVs3k=;
        b=BC8XzMYS4ByCys70lNuvePCacLV8oPcHbeS5C31hdoDdhWMTLVZCwsxB/mOKexxPOG
         DmGy4zWDQWpIHmj16g03fWHD390vpdjv5iup3SRLTlcnOGS4ydb13C5/uyzxZgpLe+D1
         0yFA+UfMu/GBuw1YUXSUF/tdQZpvhls2aPRpmeaTzghmK0nIgH6gR7hCvTWYE+E2WolH
         5vo8T0srMhPy0y2AmcEglLCGVTlJN9u0xCNSaQ7SoRdK3blTFE+WXlW27cl18dnNvdHx
         880O3EwlmqGoAZgM1Lf5W0/YeQEtxY53ce5XMQV7yYe76Z8XUp3y+SO7nbIoM8pkcdI9
         E5lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CgbrwQZs7wAn0/PogpG28uD/JREqR4R35D5VOMRVs3k=;
        b=sMJ3olS9ea/YGYFphIbHQdL5tvwyFbvKdrKSD87rGk92tG4aNLkIxxvbA4dNOWRedm
         EMDE5E9g7Ca9xMLx95Rax/TWnfPw8VO6k6TUTIDcwAryKvFzzHs9sYE6fwJeOTt17Qqi
         Hp43lcVTWqSllv9KvTRzmrCRjImVsPUIO/kpBxpGVHqyw/qANLb8YhHVWbgPVfNfo1U8
         OU0kUhnKw4JPSDkYVtz6354csiS9ClQkONDpupQEpq6JgR/18BDAcK9GrG8xY9Qh8HEr
         DHA8yHjUZ5utSSMmNRwdjlPaAkuPIs+RYgKKGjOYF8DI6qe6gP4TpkQqLGnrpAAAH5GF
         B/0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Krbokb6OSLuhuOKfmKoivpUxfpDLd6e59YSh7HxO4jzOU+bba
	YqkGt4mquzdGzv5YFWY66y0=
X-Google-Smtp-Source: ABdhPJzt8qiV5BZedIPw8eBy1VnuALZOUdZR7T3CgedmiU+V+JASyZ/WNMFqp63mTbuLr4dlXciz2Q==
X-Received: by 2002:a50:8186:: with SMTP id 6mr5548087ede.45.1593206794717;
        Fri, 26 Jun 2020 14:26:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:11d1:: with SMTP id va17ls2237592ejb.0.gmail; Fri,
 26 Jun 2020 14:26:34 -0700 (PDT)
X-Received: by 2002:a17:907:2170:: with SMTP id rl16mr4545712ejb.422.1593206794259;
        Fri, 26 Jun 2020 14:26:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593206794; cv=none;
        d=google.com; s=arc-20160816;
        b=btB5XQ6TzdnuW66ZvjumXhdXwGcABQQ36beycDbp5RmoqG3+98BT/psXmeeqo/fSan
         N8D/8Hf0w6/j6FjwH1CfIMX8W8XltbZFTu83oyqRSp/ureQOOEO7hD1I2rEwaFHaFHIJ
         XwwcqwZX1DRUUwgtxuc8cXyMlN32Z6dRh1sj4Z755eF9MMvbEND4FEz1S9NdyExGsZj2
         owZZLyu1HEBMEccVpVskMkzn/Qgq4q0bCiByU1FdG86GCakV57prQCaMK5uzeDf1NNcj
         GywFdb6XceYTaE5pOg1kH/2xMiDiQ07lwuCtmdcVvc82xk69L6NkZP0S5fF8FQlFRHX6
         /78w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=BliWbyHUANX2JI8zF8nLMmP2MWt1fyzsPb8MhtX5XuI=;
        b=rC1BSR7z2YOCqLKoBFk5h1avqYqmgtTJyVom7pN4ax1D3xtYCCzJhIqGc2f7/N/2EQ
         ijTC7Ibo9iE8MCNO/LhKG5jyES0CW+bTW1VOXSiMouNsOxjzIdK3AEgaGHNbrz4Vmka0
         sTb1R8c8jphyuqLmOyG6FL5kltpWf00h2zbSMLnidmId7K1yeQxcH6Qm8SESvjTn23pT
         z++Ug3H/17H6Ff34I+oM/LLRDx675B/FMylAwq93acugmE+eDjRTLpZD4fCDytbt0Doc
         +wqwzv+y1vAHJs5LYmCmueVQvvbHgmwN3is6faTaGsqsFaAwZdEo1HmCuhoOvHdVhD0F
         f0ZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=sipHPhUV;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id a23si1519394edn.0.2020.06.26.14.26.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2020 14:26:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 9165A5C0678;
	Fri, 26 Jun 2020 23:26:33 +0200 (CEST)
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Cc: arnd@arndb.de,
	ard.biesheuvel@linaro.org,
	robin.murphy@arm.com,
	yamada.masahiro@socionext.com,
	ndesaulniers@google.com,
	manojgupta@google.com,
	jiancai@google.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stefan Agner <stefan@agner.ch>
Subject: [PATCH v3 0/3] ARM: make use of UAL VFP mnemonics when possible
Date: Fri, 26 Jun 2020 23:26:10 +0200
Message-Id: <cover.1593205699.git.stefan@agner.ch>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=sipHPhUV;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

To build the kernel with the integrated assembler of Clang 10 and earlier
the VFP code needs to make use of the unified assembler language (UAL)
VFP mnemonics.

As pointed out by Russell, even for ARMv7 blocking VFP access through
MCR/MRC is not correct. This has been addressed in upstream Clang and
VFP access will be possible through MCR/MRC (see [0]).

At first I tried to replace all co-processor instructions to access the
floating point unit along with the macros. However, due to missing
FPINST/FPINST2 argument support in older binutils versions we have to
keep them around. Once we drop support for binutils 2.24 and older, the
move to UAL VFP mnemonics will be straight forward with this changes
applied.

Tested using Clang with integrated assembler as well as external
(binutils assembler), various gcc/binutils version down to 4.7/2.23.
Disassembled and compared the object files in arch/arm/vfp/ to make
sure this changes leads to the same code. Besides different inlining
behavior I was not able to spot a difference.

In v2 the check for FPINST argument support is now made in Kconfig.

In v3 reworded commit message and addressed review feedback in patch 1.

--
Stefan

[0] https://reviews.llvm.org/D59733

Stefan Agner (3):
  ARM: use .fpu assembler directives instead of assembler arguments
  ARM: use VFP assembler mnemonics in register load/store macros
  ARM: use VFP assembler mnemonics if available

 arch/arm/Kconfig                 |  2 ++
 arch/arm/Kconfig.assembler       |  6 ++++++
 arch/arm/include/asm/vfp.h       |  2 ++
 arch/arm/include/asm/vfpmacros.h | 31 ++++++++++++++++++++++---------
 arch/arm/vfp/Makefile            |  2 --
 arch/arm/vfp/vfphw.S             | 31 +++++++++++++++++++++----------
 arch/arm/vfp/vfpinstr.h          | 23 +++++++++++++++++++----
 7 files changed, 72 insertions(+), 25 deletions(-)
 create mode 100644 arch/arm/Kconfig.assembler

-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cover.1593205699.git.stefan%40agner.ch.
