Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTEHRCAAMGQEIUQDKUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F2A2F8722
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 22:06:21 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id 189sf9238126qko.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 13:06:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610744780; cv=pass;
        d=google.com; s=arc-20160816;
        b=zFRdvtcR3PyOJUhtYKGFfqdqj/wcN0GLqbsBnOn6yLyTJ1kYg6VOfevJYK6sYGMFH8
         9TRqOcYEkC2UU6hjZ5xzkyjCGrCbkg3TbswFqU+8FqFaP+weJkoLzaVEl/ULdq2tkTKQ
         OpMA39aR2J0w5oGV9Hp4LM+EaKakgp2JDIIDmC0cdLnHsCr6Z/elz+r6aznKZpIwh6A0
         Y2zfBu+Xb8UscIuCWywKLCJ3SXhGrAP+nA3jAZWZPSHNEL19tuLcDRG8AoPsm/jSFHUR
         bo5J316Sbyz2ZLUcQWVjLnEA0eV7fMv0vmVoXiARV4hjuMcmXox+6TzhQjqUdjHtTgdY
         vZsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=ih3JcFOLk+rp9wV49Dg6li439aNmi3+0/4Kbou9LdHk=;
        b=NCaKG/Wo/keQyDW21jYix3vOKwzUpBebzWaUubEUV4AD/+UUHZZQH97CFtzYPyl2gB
         sF5g48qr0sezsBGL46Ne5VmqZfrM2CeZXvw+Z4J4EN821AT+8cu7qT4m2C++c+7CYPj4
         lmbx+QLUu7gqJIZWw/fSTFbR4MwcKsdyiBJws/LoyFKo+903bBXu3DqgMjt2NDXwmEHz
         Za3o7kuuMw0s/m+o+HHhLBSTrUkYRVmtQOPSTjPkwiKniHn/sX0uq1qeDnxzxNiYeDYC
         7pkwgo0aaY23s2EYe2rZgYqH6UUmptxGALgX5hKInurWVv6+75Gnnd+G8yyCBVyO8Enh
         7Q/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fTf4GrnR;
       spf=pass (google.com: domain of 3ywmcyawkaoapfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ywMCYAwKAOAPFGUCWNPKGTUIQQING.EQO@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ih3JcFOLk+rp9wV49Dg6li439aNmi3+0/4Kbou9LdHk=;
        b=lCc8O+Hnqgw+EGcpUelY3inVD2BDOej9sDUiOvEwzy8ndzKtcvFuqcLeEtpzYXBj50
         iBs9wDzv8RqwkvByooQowRn4h1yMmDvHEOBPLKV++QshURB706pKBHWnTuqi1nypbqzc
         sCsieJrw3h747xqfaFoKyCYRY6pJo+M+cL4sZ0Opf2ZwS45TWMbNFw/4oq/Lu6FVEYcH
         pJCmZ0IZJgc0S5BUWgbivHVXAbL85dnwc8PP4StmTRRXeEjI8a/kXhBYst/aye0exQyA
         yUfRLHfq3EyGkazpTBJTv+8Z1vW/4CGGielxCnDdTFINEV3Xuvyhu9wFwNE5MM6Oslfn
         ID5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ih3JcFOLk+rp9wV49Dg6li439aNmi3+0/4Kbou9LdHk=;
        b=eCYy1BOMrqrAHfYdBnw/bE4Z8NNepso7HEWNLbBFRZV0srOXXq8n6LXwExLD6pI99Z
         gFLGmyxYq3djWneeRIFRf/uy7Hs+eIQqo1D1YFUL96OxSbkVyeiprU9wVqY/mm0qwk/Y
         eJlKQRU5RfoeoqrWSc64wlVFY1iTGtWgH1Ow7Ko6UJVRs4uuW/kGjlsVNcDEMpLzHv3G
         /h5fF6SB3+BVuxVhDeL22M+LBKp+CDd20lvCsokegHjRhKtt8ApArZDDWTo0GuY398ZW
         trRdthzGj+FlDDs8tLkzBBmpcYYxoXwj4HenFHl6DgrBs3geWUlRm4pYahVZ41a2dpzf
         XxQg==
X-Gm-Message-State: AOAM5333Vi57u0YH3qxR44Q5S0gQ00kdic1JinCy39aLTAJo04nFwQEB
	OPSAVEZyG9bfF+8Njik7wKQ=
X-Google-Smtp-Source: ABdhPJyKNECeGxXMPw71QlN3BgMqAVzZb79VTsIfwBDDa8jj3MC+RLuNdcE15PWorJNuJvl+3p2z+w==
X-Received: by 2002:a37:a7d5:: with SMTP id q204mr14189242qke.254.1610744780363;
        Fri, 15 Jan 2021 13:06:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:434d:: with SMTP id q13ls1872105qvs.8.gmail; Fri, 15 Jan
 2021 13:06:19 -0800 (PST)
X-Received: by 2002:a05:6214:4e2:: with SMTP id cl2mr13935691qvb.27.1610744779884;
        Fri, 15 Jan 2021 13:06:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610744779; cv=none;
        d=google.com; s=arc-20160816;
        b=O3ENBQEQBaHU+LUefi48tY3KXiDJxFLQ05NqOsxIMa08oUoHVcifegl3M1oYgDKPCY
         YZVhcC9YyMRs9xmIfdIWeJ//lMbRrN9k92eCxVEJgjePtAe1IXDbJjjeWLwUFm7Knrho
         liS8/FLWxe5oelYn4w6kMQg/t1s4e7qM9ySRlfd2dKHynlFjghOHWC33sktjc+tETdEJ
         YwqRXtEbosiGeQx6YssWDuqdt8Ky5PkAPwZnPhGvJ39glv5WE9/QO6kduyREX+HbOZ98
         7PntP/BFjYcQ44biLpY2j4boDwhFcNgtDIZw30J1WiqQ1QOGUA9wGRv4+YenzDsA/j6v
         NOHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=ZbInGrM8DQpEvZpcv+BH44NrN/in7NktHoThO/+hjn0=;
        b=eCPa3NfmSSh/aSf2v9i46qriblMSSfOtryP2RxVt9CaseM+zrvCXHKqUUxk0hpbtbZ
         qtpg+wBIOUiFd5X25p/J5LdXpfV/FEV6lq3LnydagEB8ZQQt9fobBdH4n9cuLO/J2uvk
         mwuvFxgcPzmUpn0iU3mgM+wUBZ4m5XJ2PA8mRYOQrlOkAtbHT6dZeiYqiVaRyGBt2uh9
         A5B+jICW3fPl7t1wNvPxJS3PLl4X+tDgRb3UvMlkA/H6YSpfi2e/vR3DhycfKI/8WUU0
         X73UdHMfh/JtFxf8WyZfW4DeDBANYyzTvtTOORkfFR++/9xEcE/njvsaNoXndU87ZL1w
         bRxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fTf4GrnR;
       spf=pass (google.com: domain of 3ywmcyawkaoapfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ywMCYAwKAOAPFGUCWNPKGTUIQQING.EQO@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id p6si798067qti.1.2021.01.15.13.06.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 13:06:19 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ywmcyawkaoapfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id v187so6721164ybv.21
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 13:06:19 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:ef47:: with SMTP id
 w7mr19625123ybm.509.1610744779507; Fri, 15 Jan 2021 13:06:19 -0800 (PST)
Date: Fri, 15 Jan 2021 13:06:13 -0800
Message-Id: <20210115210616.404156-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH v5 0/3] Kbuild: DWARF v5 support
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fTf4GrnR;       spf=pass
 (google.com: domain of 3ywmcyawkaoapfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ywMCYAwKAOAPFGUCWNPKGTUIQQING.EQO@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

DWARF v5 is the latest standard of the DWARF debug info format.

DWARF5 wins significantly in terms of size when mixed with compression
(CONFIG_DEBUG_INFO_COMPRESSED).

Link: http://www.dwarfstd.org/doc/DWARF5.pdf

Patch 1 is a cleanup from Masahiro and isn't DWARF v5 specific.
Patch 2 is a cleanup that lays the ground work and isn't DWARF
v5 specific.
Patch 3 implements Kconfig and Kbuild support for DWARFv5.

Changes from v4:
* drop set -e from script as per Nathan.
* add dependency on !CONFIG_DEBUG_INFO_BTF for DWARF v5 as per Sedat.
* Move LLVM_IAS=1 complexity from patch 2 to patch 3 as per Arvind and
  Masahiro. Sorry it took me a few tries to understand the point (I
  might still not), but it looks much cleaner this way. Sorry Nathan, I
  did not carry forward your previous reviews as a result, but I would
  appreciate if you could look again.
* Add Nathan's reviewed by tag to patch 1.
* Reword commit message for patch 3 to mention LLVM_IAS=1 and -gdwarf-5
  binutils addition later, and BTF issue.
* I still happen to see a pahole related error spew for the combination
  of:
  * LLVM=1
  * LLVM_IAS=1
  * CONFIG_DEBUG_INFO_DWARF4
  * CONFIG_DEBUG_INFO_BTF
  Though they're non-fatal to the build. I'm not sure yet why removing
  any one of the above prevents the warning spew. Maybe we'll need a v6.

Changes from v3:

Changes as per Arvind:
* only add -Wa,-gdwarf-5 for (LLVM=1|CC=clang)+LLVM_IAS=0 builds.
* add -gdwarf-5 to Kconfig shell script.
* only run Kconfig shell script for Clang.

Apologies to Sedat and Nathan; I appreciate previous testing/review, but
I did no carry forward your Tested-by and Reviewed-by tags, as the
patches have changed too much IMO.

Changes from v2:
* Drop two of the earlier patches that have been accepted already.
* Add measurements with GCC 10.2 to commit message.
* Update help text as per Arvind with help from Caroline.
* Improve case/wording between DWARF Versions as per Masahiro.

Changes from the RFC:
* split patch in 3 patch series, include Fangrui's patch, too.
* prefer `DWARF vX` format, as per Fangrui.
* use spaces between assignment in Makefile as per Masahiro.
* simplify setting dwarf-version-y as per Masahiro.
* indent `prompt` in Kconfig change as per Masahiro.
* remove explicit default in Kconfig as per Masahiro.
* add comments to test_dwarf5_support.sh.
* change echo in test_dwarf5_support.sh as per Masahiro.
* remove -u from test_dwarf5_support.sh as per Masahiro.
* add a -gdwarf-5 cc-option check to Kconfig as per Jakub.

*** BLURB HERE ***

Masahiro Yamada (1):
  Remove $(cc-option,-gdwarf-4) dependency from CONFIG_DEBUG_INFO_DWARF4

Nick Desaulniers (2):
  Kbuild: make DWARF version a choice
  Kbuild: implement support for DWARF v5

 Makefile                          | 13 +++++++---
 include/asm-generic/vmlinux.lds.h |  6 ++++-
 lib/Kconfig.debug                 | 42 +++++++++++++++++++++++++------
 scripts/test_dwarf5_support.sh    |  8 ++++++
 4 files changed, 57 insertions(+), 12 deletions(-)
 create mode 100755 scripts/test_dwarf5_support.sh

-- 
2.30.0.284.gd98b1dd5eaa7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115210616.404156-1-ndesaulniers%40google.com.
