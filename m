Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBAVL4CJQMGQEFHKO5ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D4751EF19
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 May 2022 21:09:55 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id cn8-20020a05622a248800b002f3c7be2744sf5641605qtb.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 May 2022 12:09:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652036994; cv=pass;
        d=google.com; s=arc-20160816;
        b=TNpPSUsycWsZUx64W2a3DB2cWmzawb6NPz6T/oM6aE8I0kUvRy8oK5BID+67b+rusw
         +zzaA+HmokdnYUDfr9kLNxDBko1ud1nmpMoMbPpjjmzKA/SouMHqvRYElPrYh743nm+y
         f3d8kbKTeOFtBBm0F9nkR3GJj+3dxP2nm2EaOkiZp6kQKCuT/q1VJ5t5uzkFq2iTuKoQ
         SSHbPGjo9+pzu4mhK8nXRY6bDSAbnNBiT0/oTBHemAhMYidpEp6Or0HARbrj2unHY67c
         3XKaeZBQskf0c9NJln9XyBaIXF+oM/afphUSPvT3SiNndqe6dlBDfXHG/UXplg1gSkOH
         nxPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=x6cOfpp5M7nHfkZjLdAsgFVrHfCJiMcOQsZYt2E6f3w=;
        b=T5LBLfNlNEk7mxmAip7UHkusngjgqoQuOo1G58un6sh30Hvgppvj9pDhUhG09CYEnX
         DGwHsPjTZpo82OsdGkMREmg8HCniPvvNytLEQ/d9fihjJbDhl2kNOwGEwEQwbX06705f
         vDVmHyNB44cIrL2bacPUNDdHThizbpZRVMJr9CAHy7r7ETwCpjao2Ht87WIVOzWY/Xm7
         9pTKWef0OapIQRH9MpccjmltWSIPZ5cNSsh7yulE4brmj+77nlDz9VA1dcLLh9udXAx7
         bguQrfDoQHeS843vNbmd/LOC1PiI0ds7tgNT+yLDoge7Os3wtfmt6IQUEXwJw1PKjkGZ
         EF4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=F4LJf0iz;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x6cOfpp5M7nHfkZjLdAsgFVrHfCJiMcOQsZYt2E6f3w=;
        b=HZoLmgskBosv5JIElUXwDY5fZbkFXiVCxggJMfYlJls4gepcuj1qWiBMgeYUr7CNwV
         sn0fWtEME57wOlxxfA6q/54XLMmTDIxWIJao88lPd1vxP+2/GcIv1wOfhcrLnnzKLAKU
         8T+MNnHdftzKRNEuC5MC4tVpCGXVXfboO2R2jAED1jfzHV7cf+tuD+MdG3DN1r3zWzsD
         6GC+p8H0Fgv1j9Uc2F2KsD8B23eSp8X8a1RBRmKGy3Qx/SpMnBn/5T9NHIalgZxR7WEm
         2bm9SbjAgvsyLJQdbCud07iMm7mlqXjXTvVQ8G13aLTVBFAsCBg4SS+Nnx22Fk0JetHO
         A/cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x6cOfpp5M7nHfkZjLdAsgFVrHfCJiMcOQsZYt2E6f3w=;
        b=jCJO06xEYpgWQKM5KDnT3z+oGo84Tqci5GoPrEq7hPXXn7pQFrzFwg8m26C7Vh2ypM
         MUR5Koq0XBtsT1VVNdSIGPa+h8nQRiR2OS7Ca1+aeuAeCuUSbvteole+kYjvb61xDvoA
         PRanJcycgsKpLEf6kY87lwbrXdCoJyr2wreJA8V63RCrRoyu9LIxIXN1fI78iKRrqhaU
         0Xzb4K5ltNt18N5PNCvRIwktCGUOITjxgli8NWi8HwLpFiQIGUn2uiXOr1gNABU9J5D8
         pCq5jANnAAo+JpdO5yeLyr0Qjar2cWXr2zDsCwzepuexd/lUSBoZi0E59BxG12N2ekEh
         2mAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wnUhxtZ/IECUwDSCG6SwY8TlPycat5MNr4TYlCbIvz1pjYx2U
	mSXwNXW/D49g3Q3EaldiSXQ=
X-Google-Smtp-Source: ABdhPJytsnCnngNgJ7dURFU0jpOnOYXskw1tWr0T0XOMSFWWkcsNA1h530QIa6FRJY5dVPKifv8wTA==
X-Received: by 2002:ac8:5ad1:0:b0:2f3:cf42:b3bc with SMTP id d17-20020ac85ad1000000b002f3cf42b3bcmr7065830qtd.120.1652036994608;
        Sun, 08 May 2022 12:09:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:daa:b0:45a:ec0c:e5a1 with SMTP id
 h10-20020a0562140daa00b0045aec0ce5a1ls2592348qvh.10.gmail; Sun, 08 May 2022
 12:09:54 -0700 (PDT)
X-Received: by 2002:a05:6214:d88:b0:45a:9a56:2028 with SMTP id e8-20020a0562140d8800b0045a9a562028mr11263362qve.18.1652036994195;
        Sun, 08 May 2022 12:09:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652036994; cv=none;
        d=google.com; s=arc-20160816;
        b=eFpzHjzsuhJ+ohoB5uNKToc0c3p7LTB2qydiXIAsnFufw9hVRg47VlxDXPEpNUX8iA
         2Rtnk4eM1c6E1uNfUq+jvdAK48QMOl4kYeSqbmknsRU92+49evzbYRhuvwgAmhLIxBeq
         4/FeDGv43sQONXxxWp+1Ozmi2yQ2OpdJoPi444w9M/1fWPniz2CQ2B8DhHU+bZ1ToDBd
         foCY+MTBUIe86iVVvLDhN4rnwibxzVEktC8GOmLkp50jKMxNPwPgnIC7l5uTb788SNMT
         g+QA0vEt8OGNWxu4gjMgz1kumxdYPwiHvI2NMDgcQnR0FxZl4DwLWsNJr5XEdplznDtK
         QjFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=+vYUwETkJzeHMTCZ91mKcqrVUk+DZUgc4qJxVJGLB84=;
        b=iRR2r4M2VILUwCdvhkZMGKbpmXN2KZhmxl+boFDJ4FqnvTTibAQs8EqEhPyCyBoT+R
         nwTJpQi9gMz7rzl+p7UJLifhumTUAi4uj5PFMog8+ZhNuNay1CXcVJx6Sc12MSn7kF75
         kf1x9YqOE/HnvwkM6NcV6WqSU0/BjK7UplK/6/OhfmtTQgeXL2glzV3az+U2PzXEV9jq
         xvjJVEzgYm2jPh4FpCLOYFOvXPu9g2kMPkzGLHWXXPt26HKiAJOJm1gdO/rXDDQPU2lf
         ADYaGlPGQXtUbTJOyKSDN6soa3IZHM1s6mEcdDzpPTWVf0ODCXhszA6t3yBFeAIOmn/0
         znIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=F4LJf0iz;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id j10-20020a05620a410a00b0069fc740f4cesi786251qko.1.2022.05.08.12.09.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 12:09:54 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 248J8qSN030019;
	Mon, 9 May 2022 04:08:52 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 248J8qSN030019
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nicolas Schier <nicolas@fjasle.eu>,
        Peter Zijlstra <peterz@infradead.org>, linux-modules@vger.kernel.org,
        linux-s390@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
        clang-built-linux@googlegroups.com, Ard Biesheuvel <ardb@kernel.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v4 00/14] kbuild: yet another series of cleanups (modpost, LTO, MODULE_REL_CRCS, export.h)
Date: Mon,  9 May 2022 04:06:17 +0900
Message-Id: <20220508190631.2386038-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=F4LJf0iz;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

This is the third batch of cleanups in this development cycle.

Major changes in v4:
 - Move static EXPORT_SYMBOL check to a script
 - Some refactoring

Major changes in v3:

 - Generate symbol CRCs as C code, and remove CONFIG_MODULE_REL_CRCS.

Major changes in v2:

 - V1 did not work with CONFIG_MODULE_REL_CRCS.
   I fixed this for v2.

 - Reflect some review comments in v1

 - Refactor the code more

 - Avoid too long argument error



Masahiro Yamada (14):
  modpost: remove left-over cross_compile declaration
  modpost: change the license of EXPORT_SYMBOL to bool type
  modpost: split the section mismatch checks into section-check.c
  modpost: add sym_find_with_module() helper
  modpost: extract symbol versions from *.cmd files
  kbuild: link symbol CRCs at final link, removing
    CONFIG_MODULE_REL_CRCS
  kbuild: stop merging *.symversions
  genksyms: adjust the output format to modpost
  kbuild: do not create *.prelink.o for Clang LTO or IBT
  kbuild: check static EXPORT_SYMBOL* by script instead of modpost
  kbuild: make built-in.a rule robust against too long argument error
  kbuild: make *.mod rule robust against too long argument error
  kbuild: add cmd_and_savecmd macro
  kbuild: rebuild multi-object modules when objtool is updated

 arch/powerpc/Kconfig            |    1 -
 arch/s390/Kconfig               |    1 -
 arch/um/Kconfig                 |    1 -
 include/asm-generic/export.h    |   22 +-
 include/linux/export-internal.h |   16 +
 include/linux/export.h          |   30 +-
 init/Kconfig                    |    4 -
 kernel/module.c                 |   10 +-
 scripts/Kbuild.include          |   10 +-
 scripts/Makefile.build          |  134 +--
 scripts/Makefile.lib            |    7 -
 scripts/Makefile.modfinal       |    5 +-
 scripts/Makefile.modpost        |    9 +-
 scripts/check-local-export      |   48 +
 scripts/genksyms/genksyms.c     |   18 +-
 scripts/link-vmlinux.sh         |   33 +-
 scripts/mod/Makefile            |    2 +-
 scripts/mod/modpost.c           | 1499 ++++---------------------------
 scripts/mod/modpost.h           |   35 +-
 scripts/mod/section-check.c     | 1222 +++++++++++++++++++++++++
 20 files changed, 1551 insertions(+), 1556 deletions(-)
 create mode 100644 include/linux/export-internal.h
 create mode 100755 scripts/check-local-export
 create mode 100644 scripts/mod/section-check.c

-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220508190631.2386038-1-masahiroy%40kernel.org.
