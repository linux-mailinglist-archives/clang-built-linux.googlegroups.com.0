Return-Path: <clang-built-linux+bncBAABBKUT47ZQKGQEM3XAFRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A69119080D
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:49:48 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id z9sf11505636pln.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:49:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585039787; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z/DIQt247qETfl7NlFz1Co/eMPDlLinJ6KKbc76CORfAYprHpQ2CVAdXG7SsUlUndo
         OaOOfsiE9OyLJjoyODXvm/B+RzBwx3YbieFLt1NKru4C8QieZdHs3AkKdCyJbbtxTkuo
         9aaZ/yGOQtJXQ49uKGTOiCVr+O6WbQd5X0/5Y1hXqxQ0s9KcezNUjZiwFKj0kK9LLOJY
         dBtNZeG4+0vM/T7LpSRCgA/JP2PfmzEg6Mm7kXb4ONa82oj/IcskL2bM8Nn1l2b4WnPh
         pu9lakDVwn/8h+75mWEgOQyJp7M5ddkOPvw2zCk+2/u3+bNilXA8NWqCpM2Jxy9hBhO6
         Ea8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=pT+1puKuBFggGZaeVaPBtRc2LExxP1Ttexe4yYVAN5o=;
        b=iZN7wtmsj4DuRhSWIT68BdJfkTHOtT4Fjd7mbVuhfYSqyxahFPy96hMjMeoAy3DgiM
         71becPEYvTz7kuS/RV7bV5Ns0jte6H6bpQscY8rLL63SUprQqA71X7VD1lXj7SOBeU9q
         FpFnZ3ZvtRtREFYyK+wF5vD0daz/Lq/s52hb92jxYTid0tgFp9WghTVcRNCwgwmIyQrf
         9G3SH4UvWmdf6qe5foYeTyBYPbx1j0Hwiz5jJjoDih7w1A4an4nntRoZB6TgiI+Efi5h
         bgmQvcnmK4qtJL6HJwwNqc1kGqShlHz7LD1UnMMvYxCkoyAhwBQk+Wry2pDbnBXm/C6H
         zOag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1o9+mpHF;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pT+1puKuBFggGZaeVaPBtRc2LExxP1Ttexe4yYVAN5o=;
        b=hz4ge3eAR6LizfLlUqcys5OguXccs0WQ/ItvJtefpdFgzo6ISTbuS+5TT3JwrTX2Jb
         CeQazO1zc/hFfO3aRXowjHY+oPRTWEM7pugMBGrvNrGfW35578q7z5SBBGsF7ey6Rdox
         CE5bcPVOulP84C54grsIfzaDic44kfeOXwQ/UGChwBLUud0lDomi522RrdQwgpoEhd11
         j6eX6DGXikSDDLL8qFtmVTslE4h9+tV693QP8Bk8Q+r+Xmw+4Qz8ebgyPhy54VRnjmC6
         qH/PThb3zIAjs4N6oyeRixhyNBvVXfhKbmJpEVnABL935UeiX4PckpILbT8V2c2tS+Gv
         9jwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pT+1puKuBFggGZaeVaPBtRc2LExxP1Ttexe4yYVAN5o=;
        b=b2BuBiFP7FWrHxtSDU/cPXaE/2RcP8OSav1uuS8Hjr+G9YeubEyT6koN53MUVP4hOk
         tQjOwGjfG20lVRsEos/jIW8nojiZnC5kc+1ReVlpDaEbERL53HFqw94kuj7zT9hDTgeH
         qN8rNXTWaMilFfZ/4LKAAHZnlrIkNLVVcQaWSIfNBbRSnzEVhkaA9qwgU2XcYCV9PoYe
         AZGgFwsbf0oRZyVvj/P5by+VCeILjaO1gXZQa7YY2AnAdBEXL9CuQzimqAVYfe2UcSSA
         IJBXo7vdtmIlZ+gTmvpKmQ8XBwuBdfsy3XtHpilHAA8ikEys/h9VaF9AQilpjZn7ev8O
         XVzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2UEOhtgq1qETiqlPR+dmZYYDoSAdsJ+NyjjyvX4Ic1W2rSvDg4
	iHu0l6vlT0X/rW/V+fm0OjA=
X-Google-Smtp-Source: ADFU+vut5v2d+EUTWi9gn8VaRMJLABqNaTNJJYT8bClyQn9Mno47tL1Da3uhfMVkTKEDlyTrSG4wsA==
X-Received: by 2002:a17:902:aa49:: with SMTP id c9mr26601849plr.145.1585039786964;
        Tue, 24 Mar 2020 01:49:46 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:16d5:: with SMTP id 204ls9014337pfw.3.gmail; Tue, 24 Mar
 2020 01:49:46 -0700 (PDT)
X-Received: by 2002:aa7:9f93:: with SMTP id z19mr29820929pfr.187.1585039786569;
        Tue, 24 Mar 2020 01:49:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585039786; cv=none;
        d=google.com; s=arc-20160816;
        b=YmTf8dt2eMvzK07m3dLzeV/cOGiuiFeePNUU+DwxHrB9CUN9sAMolZ25ipnHB5ucDe
         W8eEq5jPsMoGkElKuHtC3tMcEfEnIx/VfOFpMrmYlihaMMhckDTW7nC0F1r6f+TjoXAs
         PnlU66xbDrbrLdjf9kBHzSbQ7cs4qoVv+ULXQXkeMhTktgI8grQZic1GEQPE0R8OhEIZ
         RkrU129X91qeUM5PEFMfdVGPbFgbuzyoeXkkykULVY2rb53e5dYQ8gBginyGfbTSUwSa
         5bdBNCJtJIn4gK7o9xbvuCPCSM/JJ+4ybTlu7EnWsOq0leZBocquqI9dsTim/KLwGbpx
         fKtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=jHh3bC0B7EFxldpRV9Bvb2uWBZf2Z0xQXY60ZYUAXx0=;
        b=J9QsCxq984Aa9atyoREeqUS8yCESaeo59sE6UyrDAdaO4ZnPPSqxu3PNuOCe/L/Yns
         CTHRlttx9FICtIQ+2EbHZS0pcC3QSBX6P4riifRnbQN9jg7bRt3Mu32TldXk+k1oEjhG
         E/Ovd3O0MbmP8W1DXygA1/LPfqq0AUUTL8OiaRRM44hS2pRUaJRJT4OlgF+DcA6PGBmK
         WalB75BWrqHc5hjiYvoYtwKFNwCwVT1Y/p5B1P4pE24IWH2N6tUJ1pKvYJCbAyNqklDg
         K/SkBXzV4WF8veuZ3kjpk08wsu/FL6F/lTwmCTwGU8aca/Eq8AkLvglJ0mDrzE9E8i2Z
         Rt6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1o9+mpHF;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id j14si995621pgg.1.2020.03.24.01.49.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:49:46 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O8mgsX011219;
	Tue, 24 Mar 2020 17:48:42 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O8mgsX011219
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>, clang-built-linux@googlegroups.com,
        Herbert Xu <herbert@gondor.apana.org.au>, linux-crypto@vger.kernel.org,
        Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        linux-kbuild@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Jim Kukunas <james.t.kukunas@linux.intel.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        NeilBrown <neilb@suse.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
        Yuanhan Liu <yuanhan.liu@linux.intel.com>,
        dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
        linux-doc@vger.kernel.org
Subject: [PATCH 00/16] x86, crypto: remove always-defined CONFIG_AS_* and cosolidate Kconfig/Makefiles
Date: Tue, 24 Mar 2020 17:48:05 +0900
Message-Id: <20200324084821.29944-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=1o9+mpHF;       spf=softfail
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

This series of cleanups was prompted by Linus:
https://lkml.org/lkml/2020/3/12/726

First, this series drop always-on CONFIG_AS_* options.
Some of those options were introduced in old days.
For example, the check for CONFIG_AS_CFI dates back to 2006.

We raise the minimal tool versions from time to time.
Currently, we require binutils 2.21
(and we plan to bump it to 2.23 for v5.7-rc1).

After cleaning away the old checks,
as-instr calls are moved to Kconfig from Makefiles.
(patch 11)

This allows more Kconfig / Makefile cleanups.
Patch 12 is complex, but I double-checked it does the equivalent.

Patch 14 bumps the binutils version to 2.23,
and patch 15 removes more CONFIG_AS_* options.

I folded all relevanet patches into this series,
as suggested by Jason A. Donenfeld.

If x86 maintainers take care of this series, that's good.

If it is OK to queue this up to Kbuild tree,
I will send a pull request to Linus.

Thank you.



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
  x86: add comments about the binutils version to support code in
    as-instr
  x86: replace arch macros from compiler with CONFIG_X86_{32,64}
  drm/i915: remove always-defined CONFIG_AS_MOVNTDQA
  crypto: x86 - clean up poly1305-x86_64-cryptogams.S by 'make clean'

 Documentation/process/changes.rst             |   4 +-
 arch/x86/Kconfig                              |   2 +
 arch/x86/Kconfig.assembler                    |  14 ++
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
 30 files changed, 98 insertions(+), 324 deletions(-)
 create mode 100644 arch/x86/Kconfig.assembler

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-1-masahiroy%40kernel.org.
