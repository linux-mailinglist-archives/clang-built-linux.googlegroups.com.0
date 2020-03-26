Return-Path: <clang-built-linux+bncBAABBFWD6HZQKGQEVKYGCPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 163E5193A2D
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 09:02:31 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id a30sf2075838uae.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:02:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585209750; cv=pass;
        d=google.com; s=arc-20160816;
        b=eXfpA4fdnj8RDsd2S3e0XS3gIEzeUX3RHMcYO5p7c+wFbCrsi+KwKByH7IFU7BFLdx
         W3fe4MGqrx8rntWSxbrCRHQD4zfjTEbryZxrULhyCjgX0zvJCK76Qu2rKEy3KgBKJPJa
         oDnVIH4xYYYcgx4s5X5H6lrQbbohciwBKHCSnnrO/p+Qz8wJ8bVvJ1LivyGrmtgmf1ks
         EVxAvAFgpXzOM2bxUeRWgZu36hSWNMbw4bfl0Eph/FBc+l16JQ5TsiXrTeDJVqXt5ylZ
         QzBVy04PrjMaNlbkrfCuKESmP+R80LcUZP+DVp4TLNGRGuxa6c84NY5axjPTm8tUCWAU
         Fpew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=9UrDYAfDzfzdlmFL8ow2lrZvo+GyM8y8ZFw36SbhfPg=;
        b=MAjZVtOJyhCBAU9xlk/7pFMCP+NeudBumlxSCHc07ogAEpcUdPZ/UXpvQS/+Xk8k9j
         mJ/EOkkQZx4FEnYDOjc5KUsrGI8ALZoT67VPIPqfqE6Y22XUcr+kaas3WtGWpapwaIaJ
         tm3zbtPRUm5gs/riGOT7qgpdeyuDtqBiX76IPEfKllzHRjwY57/HEiYxdSbhn+zohmLD
         5UhSzxLZOFulGLNc9Up+7wNXjfIKE/ogr9URmxv8xx2Cwhrxz60C502UYwfMN2VY9ZFy
         c7gnmiD0eBRPQSLO0VSem5nAWNdC9sDAS+LmGtNR/Eo5B3g0QBMrnviYrX4LWK0xUDSY
         K28A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=bzmVG4HA;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9UrDYAfDzfzdlmFL8ow2lrZvo+GyM8y8ZFw36SbhfPg=;
        b=U/a+15dopgMysPn0qg/v2sCEQvyq1WS5xeJWPO5Q6L4KL+3YZFghMJcy5tKdajeBDE
         TICRRoW0YAmwb9xThDgeaO1YtqsWLkiikIcWRPsE6DWnkjb8b4g7D9pXf0POna1FSG0w
         TfXy/pZe7fyTaMnr8uhuedQdYedJZWlYo3BEXA333BJBJ7TO44ohQek1qxv9CbkHOsmJ
         CdMOWvsXZ7RurvBmkCci8Gh3jYlHMAYOGbjJWd046mK5i5xMdRvwKi1ith7wqyWA9bt3
         X/KUjLBF/JPwPIiE0+YD1GA13qVSXtNo83M7dNIHVxpe+x5esRt3yJKjg5bkWMlKiBgK
         Uywg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9UrDYAfDzfzdlmFL8ow2lrZvo+GyM8y8ZFw36SbhfPg=;
        b=c8366f7dx+FfSVUFDP1ciHjJTkqqa+v0ki59/jz7PeWPGKdiRaRWcrUI9omGdLA4Be
         HuJH4L8aVWeZniPHsPwtFmJor1x1vwMSCdZPhlovOH+VTLkuaYmzbmwuf4SJBNF2xahJ
         eJB37ffT8w12ctCXCzG8DUtXMaPceKyLp2QgXZH1Haa+cgLfQgZzwTyFQpd9YZwgg15a
         zA5dtXDR8IpflpC8MMSr7fXvCm6UFUQPSKKeRaTTvEgLGFflikGTh1vgoRPhdUfOCEBJ
         HZ5PeHUJbo0VZBytuXTRZYlstXlFRrIz+tZrOPCVtnNSBXJcAKPQopQko2YudSB9+tw7
         SZwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3+npn9T2HKwJRYHh6C1XzwB/LWI1nsr6UOIrDnYfMb9rtgJajO
	skCho6SO4EsJKssoMuDkqNk=
X-Google-Smtp-Source: ADFU+vuz63yCjo+Fuq9dJRTynN35A5iGKJXl6JkUjpCFBKrit2cmsWuRy2QR0ac0F1vnq3W2Tdk+QQ==
X-Received: by 2002:ab0:378:: with SMTP id 111mr5702501uat.78.1585209750061;
        Thu, 26 Mar 2020 01:02:30 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:354c:: with SMTP id o70ls389668uao.1.gmail; Thu, 26 Mar
 2020 01:02:29 -0700 (PDT)
X-Received: by 2002:ab0:2553:: with SMTP id l19mr5249097uan.128.1585209749734;
        Thu, 26 Mar 2020 01:02:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585209749; cv=none;
        d=google.com; s=arc-20160816;
        b=RXI5f0gxlqyXE1vtrSfB6dDsQ0o/nAaEkPWQkLCyGgBtmuF8+LM4yVihqW+5+5mBak
         2YDDi3E5BmQExGorO95dgN17eavggr4GvAVX++6w/ydBAyuRfOefCUUzl9R6JjYuYbbv
         0LLWofdWZKBw+q227tKpe9+BSiNmcrojP4edwQ0lVpeaHocH4H2Y75SWeQQ85iHS45SG
         eXcj5nVc4AnnV7kbgI78QLqja287yZNNERtA9z22cfBO2jKbrUD12TMm6yt57xSfX40X
         YU8D0CeIfF/EQFIO67N60g9XtycB6847YLaFGp9vHW23fR4UOKICDlFkTtab+dTnTDAI
         4e+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=pP2B3e2HIi5aiL8gQpMs8wNmwELktRFcv9my7u/AjTs=;
        b=ncLWeBLTjHdG+cE3wQ1MuM/BF+385JfaqCSFFDalwEnnH4F0+x09sxuRLNlrZ/bebI
         0CQrKpPFAqB7RGEpfcNXlcsO3LEg6ESUwaq0mn/MYULyS725k7nYpIWEINaGK+wPf5KQ
         I+T1YXOXhov6Hep+NcBk49OgYByGKfFffLs15Iy5vYcbQ+DKwFTTtMgSRhCxVSOD+6ON
         UDI6xWeFf4ESEM17YQmNGx6nbCQjbweBV7bdgUpiDdek0V7x4Ugs2FEW6PF9+osN/iAe
         xtyC7PqJIxNNQvPAYlPQr3wxO0ACrI7LasTgFJafrLbFk+BGdUVXChAWAv0AqwH4H+L2
         ZWIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=bzmVG4HA;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id v5si43713vsl.0.2020.03.26.01.02.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 01:02:29 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02Q81WpT002183;
	Thu, 26 Mar 2020 17:01:32 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02Q81WpT002183
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Thomas Gleixner <tglx@linutronix.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        "Jason A . Donenfeld" <Jason@zx2c4.com>,
        clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
        "David S. Miller" <davem@davemloft.net>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Ingo Molnar <mingo@redhat.com>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Jim Kukunas <james.t.kukunas@linux.intel.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        NeilBrown <neilb@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
        Yuanhan Liu <yuanhan.liu@linux.intel.com>,
        dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
        linux-crypto@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 00/16] x86, crypto: remove always-defined CONFIG_AS_* and cosolidate Kconfig/Makefiles
Date: Thu, 26 Mar 2020 17:00:48 +0900
Message-Id: <20200326080104.27286-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=bzmVG4HA;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

This series of cleanups was prompted by Linus:
https://lkml.org/lkml/2020/3/12/726

First, this series drop always-on CONFIG_AS_* options.
Some of those options were introduced in old days.
For example, the check for CONFIG_AS_CFI dates back to 2006.

We raise the minimal tool versions from time to time.
Currently, we require binutils 2.21
(and we even plan to bump it to 2.23).

After cleaning away the old checks,
as-instr calls are moved to Kconfig from Makefiles,
then more Kconfig / Makefile code is cleaned up.

I folded all relevanet patches into this series,
as suggested by Jason A. Donenfeld.

The update for v2 is quite small.
I just swapped the patch order of patch 8 and 11
instead of moving comments around files,
which was addressed by Nick Desaulniers.


Borislav Petkov (1):
  Documentation/changes: Raise minimum supported binutils version to
    2.23

Jason A. Donenfeld (4):
  x86: probe assembler capabilities via kconfig instead of makefile
  crypto: x86 - rework configuration based on Kconfig
  crypto: curve25519 - do not pollute dispatcher based on assembler
  x86: update AS_* macros to binutils >=2.23, supporting ADX and AVX2

Masahiro Yamada (11):
  lib/raid6/test: fix build on distros whose /bin/sh is not bash
  x86: remove unneeded defined(__ASSEMBLY__) check from asm/dwarf2.h
  x86: remove always-defined CONFIG_AS_CFI
  x86: remove unneeded (CONFIG_AS_)CFI_SIGNAL_FRAME
  x86: remove always-defined CONFIG_AS_CFI_SECTIONS
  x86: remove always-defined CONFIG_AS_SSSE3
  x86: remove always-defined CONFIG_AS_AVX
  x86: replace arch macros from compiler with CONFIG_X86_{32,64}
  drm/i915: remove always-defined CONFIG_AS_MOVNTDQA
  x86: add comments about the binutils version to support code in
    as-instr
  crypto: x86 - clean up poly1305-x86_64-cryptogams.S by 'make clean'

 Documentation/process/changes.rst             |   4 +-
 arch/x86/Kconfig                              |   2 +
 arch/x86/Kconfig.assembler                    |  17 ++
 arch/x86/Makefile                             |  22 ---
 arch/x86/crypto/Makefile                      | 162 +++++++-----------
 arch/x86/crypto/aesni-intel_avx-x86_64.S      |   6 -
 arch/x86/crypto/aesni-intel_glue.c            |  21 +--
 arch/x86/crypto/blake2s-core.S                |   2 -
 arch/x86/crypto/chacha_glue.c                 |   6 +-
 arch/x86/crypto/poly1305-x86_64-cryptogams.pl |  16 --
 arch/x86/crypto/poly1305_glue.c               |  11 +-
 arch/x86/crypto/sha1_ssse3_asm.S              |   4 -
 arch/x86/crypto/sha1_ssse3_glue.c             |  13 --
 arch/x86/crypto/sha256-avx-asm.S              |   3 -
 arch/x86/crypto/sha256-avx2-asm.S             |   3 -
 arch/x86/crypto/sha256_ssse3_glue.c           |  12 --
 arch/x86/crypto/sha512-avx-asm.S              |   2 -
 arch/x86/crypto/sha512-avx2-asm.S             |   3 -
 arch/x86/crypto/sha512_ssse3_glue.c           |  10 --
 arch/x86/include/asm/dwarf2.h                 |  44 -----
 arch/x86/include/asm/xor_avx.h                |   9 -
 drivers/gpu/drm/i915/Makefile                 |   3 -
 drivers/gpu/drm/i915/i915_memcpy.c            |   5 -
 include/crypto/curve25519.h                   |   6 +-
 kernel/signal.c                               |   2 +-
 lib/raid6/algos.c                             |  12 +-
 lib/raid6/avx2.c                              |   4 -
 lib/raid6/recov_avx2.c                        |   6 -
 lib/raid6/recov_ssse3.c                       |   6 -
 lib/raid6/test/Makefile                       |   9 +-
 30 files changed, 101 insertions(+), 324 deletions(-)
 create mode 100644 arch/x86/Kconfig.assembler

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326080104.27286-1-masahiroy%40kernel.org.
