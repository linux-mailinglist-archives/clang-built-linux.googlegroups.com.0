Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQV4SGEAMGQEQKCGKEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 112B83DBF7A
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 22:17:07 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id c21-20020ab00b950000b02902a1449fe0desf4078668uak.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 13:17:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627676226; cv=pass;
        d=google.com; s=arc-20160816;
        b=skjYP8IGcNn36+gF4ud1qnJY4lz6ImeaftWRmgvENoNZMo6edZkLX7UenSyw6SAJeQ
         3iV2aAqBogLP/vAUIGsagXuQX2iPW0OeKZ6t7M2IFKvnZSD0roVK0YJ7buCi8qtt9kDK
         Fw37eHe0aSNRcvG7Ye1XWqb2i9vKM57TlMbIBmtpuew4YTXdZvC86xeuBCK3P26N8joB
         e/GYNYmsnWN9wjYTTif7Un/Ta4C/DqUSNaQWhufW0yfr4ceWuqgx6Ckm507rKg/P5uGX
         9CxhlxQ9pMixaZ9FKTL2LrVPbibOnHIIUiWzjf6swSXl6Px2ep8LdmtexmBBHr/eL9WC
         SCKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=T2yphrTzDafHF3u9FUf0s1gu99bDlouCEPPYLzCpGdI=;
        b=o7O36XdG679bhpElqAtO+0EX2XBvgJPs8Za32jIKnFbuZgtbHtrQaARmIfdFmsTQnJ
         Rdc3ACtLHlALdtia+ofnfRUYcNGJHDSLQC79rxtOf94AmDwxcXqonamEB6NezGP+qrrY
         jxtAkM3/sNb0tgvEHrO6mzLp6m/U8CZbRUbZZxlXdFwjFqwo+gCb0/jy7wL8NZro5Thi
         svq/7wRItTqAPfE2YfJTH6V8akK0u44xIl/0IfcE+QdJD57Bo/Ldotseu+pwI0mPzltN
         D/AS+M0Bh1clBV91cobx1FXJUR2qsWZxSTyHnfBzQ34cyN3bsbPLtBpyUB3Z5kbCmI5+
         72NA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xt4ghdxr;
       spf=pass (google.com: domain of 3qv4eyqwkab4h78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3QV4EYQwKAB4H78M4OFHC8LMAIIAF8.6IG@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=T2yphrTzDafHF3u9FUf0s1gu99bDlouCEPPYLzCpGdI=;
        b=DKlWixdsUXBCcTaNLRPDQT5y89Dv++XOdEkT4zwuTRTXioOqjBRHaJAt4HhG26hpfn
         yzjSfFMZj8m8h1KgaO8wtjus4iiai5xuoCvnDHMPdjm5AnCKwMUzp0B0MxlBukJkjKuk
         WSsWeeIFC4d0kKea9am8tOC0kXeKlgAN4aQILaO3QuspvXiMiadb2OZksFsgGhYl1AEf
         tCI6wdlVTj4keX3udMyzekMJKK9aprQVXaPGiHQRmBtHMGOLlrWt2i0Wv69CNrqlW0w4
         JFQFpRRdONEwaQesh9NweFt6MejHUUEbLNvxFq0m5NgGThdz5B6rsB5Cc2nx4wnrbWQq
         T00w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T2yphrTzDafHF3u9FUf0s1gu99bDlouCEPPYLzCpGdI=;
        b=nkl2fJURZP4E4V/1mqbKro+czBmk2DqG8DZ/smA8pv4mo+Q48rmAbnoOt7r0Qbfgvf
         1SuYiDrV06oCro0rD8kC8VzTpbxyxTpljLl+p66n3kwL7HDQXmMJTP3SeYb/jRoDKwOZ
         JBhj03RzvtxOmR7ffBdzrxTveJth9kxpSwBl2GWQQpE6LZ3kkvaFYxWiuEg12XAtNdc/
         xSl5ChlDoYZ6g7T/Ix9K0GenpVRr+ffhX53wGPbLQMA7oCukL3wfEvqssQdWJTRQyIlT
         pXT99f9pJaNlsOYsJoVhvROYKpPOBasnv4z4cWnLvRBJLtelVEE4ZpVd72V6PEBqtBja
         2Mfw==
X-Gm-Message-State: AOAM533jmAUpZcZcOTWr1MnNN4EBbErjtLyZEcbeja0uTJwZl0b+1U5R
	0Maqr2ozEKstmWWm5NjHGuo=
X-Google-Smtp-Source: ABdhPJyGycJQbyHuFTszhQkCnRpoOmJplSfr9WWwHc/bYEuc8wG5wxaAHNBJpV2/TGgoS8DYObgsbQ==
X-Received: by 2002:a67:c009:: with SMTP id v9mr3962591vsi.47.1627676226139;
        Fri, 30 Jul 2021 13:17:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7682:: with SMTP id v2ls383647uaq.10.gmail; Fri, 30 Jul
 2021 13:17:05 -0700 (PDT)
X-Received: by 2002:ab0:42a1:: with SMTP id j30mr4097409uaj.44.1627676225680;
        Fri, 30 Jul 2021 13:17:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627676225; cv=none;
        d=google.com; s=arc-20160816;
        b=moW90roSAammv6pzZBQcud/XnVuC50T8aCXrjttkimCQn0HZWS1GWbCxosjYcTMTMN
         i/zrUxJYo8e3HN8WsZR+ZA1qpbm5FyFeRumUOiCQy3SHW9tx9MVSI0sM8RY/bnkZGXGz
         5InZlyX+33Tef8qCA5jBhP3/9gP+XdlYNMx/zT4UwUDIgMvcKVFuVtIRzj9nvlf3k9w0
         yNYbksN3lkdKPjdLAAkSBWwyDxIud6PE/+tArTmMLB7FDdURBzE0jEmGJvjMEw3S8d1Z
         5v7HbNP5tmtimQ7KRuYt5xhs4eg11HHmdBuuZEEFNb49fFY2x9kOTfvK46OXJEN23cvF
         9BZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=8AtCRYZlS4QAcv/oikz1vcPY2UcNkw1l4cMxrL2XXUs=;
        b=f9i+VFU+85DGD5rS0qk7ujTpyVOXhG859GgqOqCAX/Apo6+P7vbZydFXMXsKz2Eymg
         54WVDwzT1wbG4ZN0vkA5J7jQaa4JEUeZ5fvM2/Krp975ZZ1M+2RbTmvQadMUHLIQZdV8
         CRkrjeWFQHVBdKugMNICKmHuDIysD+t+mTeqgm+C4Jzlor8teHw7amoaV9DPPYjIogck
         k7Lgkm8pdwrw0ouq7jC4yPiwEIHa5mfVx5Pv/Ncy2sXCRIbVRAVdZ10jdGpX7JGYQxKJ
         0ier7xqb6Aoa46SofooovgH/5FX2UEs/9YXqgkdZunUl8PzqeuWLc26EXYHhwU9NcwvU
         oL7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xt4ghdxr;
       spf=pass (google.com: domain of 3qv4eyqwkab4h78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3QV4EYQwKAB4H78M4OFHC8LMAIIAF8.6IG@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id v23si147573vsm.1.2021.07.30.13.17.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 13:17:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qv4eyqwkab4h78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id v71-20020a252f4a0000b029055b51419c7dso11693141ybv.23
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 13:17:05 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:ca8b:b433:7c1d:90d])
 (user=ndesaulniers job=sendgmr) by 2002:a25:7bc2:: with SMTP id
 w185mr5271445ybc.3.1627676225211; Fri, 30 Jul 2021 13:17:05 -0700 (PDT)
Date: Fri, 30 Jul 2021 13:16:59 -0700
Message-Id: <20210730201701.3146910-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH v4 0/2] infer --target from SRCARCH for CC=clang
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Xt4ghdxr;       spf=pass
 (google.com: domain of 3qv4eyqwkab4h78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3QV4EYQwKAB4H78M4OFHC8LMAIIAF8.6IG@flex--ndesaulniers.bounces.google.com;
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

We get constant feedback that the command line invocation of make is too
long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
target triple, or is an absolute path outside of $PATH, but it's mostly
redundant for a given ARCH.

Instead, let's infer it from SRCARCH, and move some flag handling into a
new file included from the top level Makefile.

Changes v3 -> v4:
* Remove the requirement that LLVM_IAS=1 be set, as per Masahiro.
* Remove the Documentation/ change from patch 2, as per Masahiro and
  Nathan.
* Add Documentation/ change as patch 3, from Masahiro.
* Reword commit message of patch 2, as per Nathan.
* Change patch 2 oneline to refer to --target and CC=clang (not
  CROSS_COMPILE).
* Carry Arnd's and Nathan's AB/RB/TB tags, confirmed ok on IRC+discord.

Changes v2 -> v3:
* Remove requirement that LLVM=1 be set. Instead, if building with just
  CC=clang LLVM_IAS=1 instead of LLVM=1 LLVM_IAS=1, you should use
  LD=ld.lld explicitly, or LD=aarch64-linux-gnu-ld. (As per Masahiro)
  Example:

  $ ARCH=arm64 make CC=clang LLVM_IAS=1 LD=ld.lld OBJCOPY=llvm-objcopy \
    STRIP=llvm-strip -j72 defconfig all

  (It's still preferable to use LLVM=1 IMO, but this is maximally
  flexible.)
* Change oneliner from LLVM=1 to CC=clang.
* Update Docs slightly.

Changes v1 -> v2:
* patch 1/2 untouched.
* Fix typos in commit message as per Geert and Masahiro.
* Use SRCARCH instead of ARCH, simplifying x86 handling, as per
  Masahiro. Add his sugguested by tag.
* change commit oneline from 'drop' to 'infer.'
* Add detail about explicit host --target and relationship of ARCH to
  SRCARCH, as per Masahiro.

*** BLURB HERE ***

Nick Desaulniers (2):
  Makefile: infer --target from ARCH for CC=clang
  Documentation/llvm: update CROSS_COMPILE inferencing

 Documentation/kbuild/llvm.rst | 17 +++++++++++++++++
 scripts/Makefile.clang        | 30 ++++++++++++++++++++++++++++--
 2 files changed, 45 insertions(+), 2 deletions(-)


base-commit: 27932b6a2088eac7a5afa5471963b926cfbb4de7
prerequisite-patch-id: 0d3072ecb5fd06ff6fd6ea81fe601f6c54c23910
-- 
2.32.0.554.ge1b32706d8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210730201701.3146910-1-ndesaulniers%40google.com.
