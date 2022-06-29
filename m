Return-Path: <clang-built-linux+bncBCH67JWTV4DBBQ5H6KKQMGQEFM64SCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 67027560835
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 20:02:44 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id m38-20020ac5cfe6000000b0036c7c6b8508sf3221375vkf.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jun 2022 11:02:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1656525763; cv=pass;
        d=google.com; s=arc-20160816;
        b=J3R0f0JcK3LKwDCcbBCOHlXme57V5rWQIL+fbZgxOgd1MMbMa+uS+zAWE9DvnZD5R3
         6JXQXI05GSxKO59QQ0ivaHCPKJUSf78Qu6t3KnsGFmMSOFkiW68C9EBc5ySyTyV/dlVr
         ONtntvo+L5lg7Kq50fcKESa+ivfK+hBs/QiSClJjGC4EzRb/LZXENd4L1lIM9BgbWLHl
         8s8YZhlq1FtKXULD5IUBtLiAMYz5aRDyKXYNqcVTw/GgrOedJUlCJSHm/LrzyGQELVEy
         UzVlkuFfb8KOQHUscGtsGtDslugZMGfbylanv6b6UcbxwlqHWvo3AsaQeWxJtCef1o6A
         FXGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=Kn3lQIVO7sNEjWiw9d0VCmEfh7MqcmODNnMwUe9ONbc=;
        b=nAwG8q2WOIxTiegfcQWJjtCkB742n8w9ZBQHV+Nt51Fa9uwkSffWy6HTPstg/MwgAy
         PLB0OclQjAjSw8Zm+fnFyAh+VzUHT0dMG1qRSOjyF0mx2iLt8LAMliNRY1YYvSk0CL1X
         KGln4vYvNNsC7xRhscutJf5oXqCcM8vlU7H494hhCuDLOc5SaeWnKOZhIC9zloHKsQU9
         qc5xFEzQhcJ2KHGNI+/nHh9ApcU0LZu2PbcnNQxxZUiRdQ7OZBd8Gc/w89PpAfc8mKm0
         TB2/B0BgqEliTsWTGbLgm2V0Zz9iYmPAeGKgMvxKZ+qL2BjH3xaAr1gxbCpwjtPiivb9
         IvAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=PPaFWkYU;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kn3lQIVO7sNEjWiw9d0VCmEfh7MqcmODNnMwUe9ONbc=;
        b=X+yy1qyb5Jd7RXStRxZYykwEKhrJ0e9WfBc/oeC3U39nMwJb8xL+JIFpzeyD84A6jH
         lP6vmPaDZGu1i+jLyym32uyB/bDjb1tomNmbHwAKqdEzRy34a7T3tSbiV6oBizdcbrkO
         f3eSIyGibBnAbgl9J+ALGzL6JmLvHWHEMp6E+H9X4qqD1tJ6jgQIX3i0gLIyoeT0LBs8
         lwouwOHYoo1JolS5LwmS2kWByIdZBE/sdIxgI/XYz9dPvTXvxr8r857KmzEd7yHc99xT
         MRav/4J52lNplmTIDi50Lst1W6tD79dLYBeirxqLKvtoAiC36x1snGyWZY7dBzA4JxAe
         /AwQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Kn3lQIVO7sNEjWiw9d0VCmEfh7MqcmODNnMwUe9ONbc=;
        b=HaQlVdb/NP1Ftuy2sUZ6KWMO+i8kZrUr/nZTHalRhV9ACn6KHdEqgbGeV8YX6/pMB5
         LdxiTj0WxS/9zy+OtuLDogFsouawt+yEYR2wSk5dqIaxHz39VHmWXlNKO1po4eWUu8su
         XFbCAOZVYLF4MCIto7aa+BxaGvWtLrC+NWdiYUo5l8oJBfMBBIkA7hvxKmmj+aJ74wji
         nOBMEfqrp3v/lnuj4HC3pxN/RErtnkXR1C8KT1RenayfMU9MttrEPxPvKS9fci5U0vZO
         R35CpNMrl5qJjE7+b6V+T2uldkfIVg7ip6KK0fKcY6Kozki6FGOQ5wBPjd8388gKySv9
         o29w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Kn3lQIVO7sNEjWiw9d0VCmEfh7MqcmODNnMwUe9ONbc=;
        b=MTQrK5A4rwUKpyMppu3AQ8j8GwthvpEFm23ABa5gPnO4jjQc8VOU8qcWhEG5AviqS6
         lJRcJK8h3X9GKkyf+S1YBNgj2es5Ig1FGejsPkigYUm1Oj0itdMkja91gqHn+QR9/UZC
         44FXhHLZIhj4cbf2QmEEAfymdrk9VT7tKj7YT+UeD51y7pW2TqTThIMnAMTtHVQ5QguO
         8pLBfSn7KG054ZusUnYhaKSVvBWxGrhpuWBziJC17SosvVoc8hq7pbeUdUijpUbNPPRz
         VbmEB2xSFZAqTEhjyiKFzUn6Q3Pt3nTbujQ6nrFw3Ktf9BSVRD4A2/HC813bS5Re/0rm
         ZDaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora8vmFycR1XAx4c59KGDeDH6HcHif2EH+dh0VToHjt11vix4VOhS
	wkBfW+PpFdj52jqsU0l+liM=
X-Google-Smtp-Source: AGRyM1uDJ59M3ylYXXub353bsubcp7oMu7+2S4M49jL7fzVWo76umrdwbQh7+W3VlNenqVtawgmoAg==
X-Received: by 2002:a05:6102:66c:b0:354:5a2f:af56 with SMTP id z12-20020a056102066c00b003545a2faf56mr5964500vsf.14.1656525763193;
        Wed, 29 Jun 2022 11:02:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cb0b:0:b0:354:31d7:3b5e with SMTP id b11-20020a67cb0b000000b0035431d73b5els5191157vsl.6.gmail;
 Wed, 29 Jun 2022 11:02:42 -0700 (PDT)
X-Received: by 2002:a05:6102:30a1:b0:354:3130:6c33 with SMTP id y1-20020a05610230a100b0035431306c33mr5606970vsd.23.1656525759856;
        Wed, 29 Jun 2022 11:02:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1656525759; cv=none;
        d=google.com; s=arc-20160816;
        b=J6H76fDSUnCE1UYhIgk6mCcACP3AL+Ce5WAmfGunnnaa70tLFXribzVXrI9MQN+74U
         VlwOMfg54m6yQ4CgXhlSEJwRJkYekVQrCvPLq4L6ML0P/IB57SkAROlqLROusA4hPnVk
         qX+8Xt5SokQU58kDfPLmLX9J0KUGkPPKlhpGQNwgltsbHc2i1jsgtBONZhRLJiNNFZSx
         2/rtpQEDFoB0GxNsg7FUo6FcxuW3k0KJBmvWXs/regRHNOk8B5w2xH8unaPyNW7s/Ivj
         //umEl1dKGml3OhI23nLUk+noZvzu0LEWblmiGwQicclZN90c/zy8ypRZbi4R2/eTCOv
         Oifw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=OeT2ITrjmuVxlcpJzzC4BUYFkEFLXsguD1Lu33hDD8A=;
        b=Bf9Y3HQqAVXKkoK7kqnverldX8Qd/4dzlwnpqDA3CO0jydX46VMFHLHgRUyYcWxRZ9
         62QfI77vb7xMOcl+vlO8D50MMh9fXrhk7prOQAUieYKn0vofTYtLtTFg3kgKxcqfrhOR
         D6Vii1K9TYbqQzPOl5CFArzWG9LBut3JR3XHLSPPIK8g+7H925jSDtY5TjLqHynCUEM9
         fbOK5F0+kDN/13bulC54UPds1h10tmtaThQoLTWQsyt0pppjYjpj3s+mCuRC3UAjp4fJ
         AjRG2UeuJ9RSMdamnVTh+HUg2fH4wM8IdZjiAHWXOWABdwOoeKbbFBdJPxHocQfLK1dh
         SPXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=PPaFWkYU;
       spf=pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id x136-20020a1f318e000000b0035df1d45071si596549vkx.1.2022.06.29.11.02.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 11:02:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id m14so14832562plg.5
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jun 2022 11:02:39 -0700 (PDT)
X-Received: by 2002:a17:90a:c4f:b0:1df:a178:897f with SMTP id u15-20020a17090a0c4f00b001dfa178897fmr5155617pje.19.1656525758913;
        Wed, 29 Jun 2022 11:02:38 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s7-20020a17090302c700b00168e83eda56sm11736371plk.3.2022.06.29.11.02.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jun 2022 11:02:38 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: stable@vger.kernel.org
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Tony Lindgren <tony@atomide.com>,
	Hans Ulli Kroll <ulli.kroll@googlemail.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Stefan Agner <stefan@agner.ch>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nicolas Pitre <nico@fluxnic.net>,
	Andre Przywara <andre.przywara@arm.com>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jian Cai <caij2003@gmail.com>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM PORT),
	linux-kernel@vger.kernel.org (open list),
	linux-crypto@vger.kernel.org (open list:CRYPTO API),
	linux-omap@vger.kernel.org (open list:OMAP2+ SUPPORT),
	clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT),
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH stable 5.4 00/11] ARM 32-bit build with Clang IAS
Date: Wed, 29 Jun 2022 11:02:16 -0700
Message-Id: <20220629180227.3408104-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: f.fainelli@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=PPaFWkYU;       spf=pass
 (google.com: domain of f.fainelli@gmail.com designates 2607:f8b0:4864:20::62e
 as permitted sender) smtp.mailfrom=f.fainelli@gmail.com;       dmarc=pass
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

Hi,

This patch series is a collection of clean cherry picks into the 5.4
kernel allowing us to use the Clang integrated assembler to build the
ARM 32-bit kernel.

This is useful in order to have proper build and runtime coverage of the
stable kernel(s).

Ard Biesheuvel (3):
  crypto: arm/sha256-neon - avoid ADRL pseudo instruction
  crypto: arm/sha512-neon - avoid ADRL pseudo instruction
  crypto: arm - use Kconfig based compiler checks for crypto opcodes

Jian Cai (2):
  ARM: 8971/1: replace the sole use of a symbol with its definition
  ARM: 9029/1: Make iwmmxt.S support Clang's integrated assembler

Nick Desaulniers (1):
  ARM: 8933/1: replace Sun/Solaris style flag on section directive

Stefan Agner (5):
  ARM: 8989/1: use .fpu assembler directives instead of assembler
    arguments
  ARM: 8990/1: use VFP assembler mnemonics in register load/store macros
  ARM: 8929/1: use APSR_nzcv instead of r15 as mrc operand
  ARM: OMAP2+: drop unnecessary adrl
  crypto: arm/ghash-ce - define fpu before fpu registers are referenced

 arch/arm/boot/bootp/init.S            |  2 +-
 arch/arm/boot/compressed/big-endian.S |  2 +-
 arch/arm/boot/compressed/head.S       |  4 +-
 arch/arm/boot/compressed/piggy.S      |  2 +-
 arch/arm/crypto/Kconfig               | 14 +++--
 arch/arm/crypto/Makefile              | 32 ++--------
 arch/arm/crypto/crct10dif-ce-core.S   |  2 +-
 arch/arm/crypto/ghash-ce-core.S       |  4 +-
 arch/arm/crypto/sha1-ce-core.S        |  1 +
 arch/arm/crypto/sha2-ce-core.S        |  1 +
 arch/arm/crypto/sha256-armv4.pl       |  4 +-
 arch/arm/crypto/sha256-core.S_shipped |  4 +-
 arch/arm/crypto/sha512-armv4.pl       |  4 +-
 arch/arm/crypto/sha512-core.S_shipped |  4 +-
 arch/arm/include/asm/assembler.h      |  3 +-
 arch/arm/include/asm/vfpmacros.h      | 19 +++---
 arch/arm/kernel/iwmmxt.S              | 89 ++++++++++++++-------------
 arch/arm/kernel/iwmmxt.h              | 47 ++++++++++++++
 arch/arm/mach-omap2/sleep34xx.S       |  2 +-
 arch/arm/mm/proc-arm1020.S            |  2 +-
 arch/arm/mm/proc-arm1020e.S           |  2 +-
 arch/arm/mm/proc-arm1022.S            |  2 +-
 arch/arm/mm/proc-arm1026.S            |  6 +-
 arch/arm/mm/proc-arm720.S             |  2 +-
 arch/arm/mm/proc-arm740.S             |  2 +-
 arch/arm/mm/proc-arm7tdmi.S           |  2 +-
 arch/arm/mm/proc-arm920.S             |  2 +-
 arch/arm/mm/proc-arm922.S             |  2 +-
 arch/arm/mm/proc-arm925.S             |  2 +-
 arch/arm/mm/proc-arm926.S             |  6 +-
 arch/arm/mm/proc-arm940.S             |  2 +-
 arch/arm/mm/proc-arm946.S             |  2 +-
 arch/arm/mm/proc-arm9tdmi.S           |  2 +-
 arch/arm/mm/proc-fa526.S              |  2 +-
 arch/arm/mm/proc-feroceon.S           |  2 +-
 arch/arm/mm/proc-mohawk.S             |  2 +-
 arch/arm/mm/proc-sa110.S              |  2 +-
 arch/arm/mm/proc-sa1100.S             |  2 +-
 arch/arm/mm/proc-v6.S                 |  2 +-
 arch/arm/mm/proc-v7.S                 |  2 +-
 arch/arm/mm/proc-v7m.S                |  4 +-
 arch/arm/mm/proc-xsc3.S               |  2 +-
 arch/arm/mm/proc-xscale.S             |  2 +-
 arch/arm/vfp/Makefile                 |  2 -
 arch/arm/vfp/vfphw.S                  | 30 ++++++---
 45 files changed, 187 insertions(+), 143 deletions(-)
 create mode 100644 arch/arm/kernel/iwmmxt.h

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220629180227.3408104-1-f.fainelli%40gmail.com.
