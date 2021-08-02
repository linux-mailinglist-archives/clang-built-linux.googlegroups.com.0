Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVPXUCEAMGQESZ6H5ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E563DDF60
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 20:39:18 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id s123-20020a2577810000b02904f84a5c5297sf20026802ybc.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 11:39:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627929557; cv=pass;
        d=google.com; s=arc-20160816;
        b=qDKPmHc6YZnEw+nu+/iWTQu2e3LuqJAvF3GEWPIpFosxZh1jQdc4gEEPo9gW9WPVaW
         MEUoqo6HHwj0PLs697dvNLxIb/wuqMLVR9MU5YJaC0JetzNo0BWlb3RBRjrHtn3QB3ko
         i9jZGkvVeDs88HberzKrfBkNR9I4BlBijeBwgjOk7vB4jBXfgzSPeSGC0Fz24a5Azmdu
         SRHGPTkuvwVVwZS8NBVAi2O0bu/hYVnJY4Eodl7y5SxArvXJ57jwwrdNdfE56nlpVLux
         boob00uALjaqVjtNQzpvHqRP8p+wv0QiYDrEU3oAersE1IgwhlQjkUThKalNd52caAqP
         nf0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=3HskzHFDMjLVeMEYGvl0y7Q2KyWqTz8/XKyAPwpo7ZI=;
        b=KJK2bC9vzrb28vJeNQlBs0aD8Tc9DUMPfek2/RIk/xJBnlhhhcw4JDYOUONOg31qhi
         pl5EqspOmk8tb7+UFRUamW54NE446Ud85iQPIYqgkvMBd2+hKQCW4SuFMCBcsYMApEv+
         bgS6vM4bzfQa5eJoMqBgsHLbKGFy/6ZY2Ammw4CgKb/zMgT7VkJoO1NHuTtIbXEFQH+r
         IUxiteb+P8Ba4JIf3fIhxY8OJ+QA2vD8YpzV8OIOpjuURiir+q5dpZ1AGXY1BZ0M6qei
         c0wJhasgDum3Xu4/aWUhO8096TTub5O52Jwa6RrUXbXvyuJzZyXnvkCNn1jOkfP+pElA
         VB/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vGeI3BYB;
       spf=pass (google.com: domain of 31dsiyqwkahsmcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=31DsIYQwKAHsmcdrZtkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3HskzHFDMjLVeMEYGvl0y7Q2KyWqTz8/XKyAPwpo7ZI=;
        b=PgxP+g279xprkGoEWWQ7WscK98Ff2F9XoMkPvzwf4I4CbD2Kk0qnPz13cUY1+CgFd0
         9h/bcGZRvjxEIn9hjG0PQJS/Cc13sHJYCJJ2y0ap6unDoqpWQyYKK1TxZfRkIQADfN0j
         XRVqwOlJ1AHLAr2LGZfjDsVmnm2zdKKW38OVAPggidH/RSn68ez93C9i/heKkPheGweF
         bxwstXXAZHzWSzWXuf9mg4CR0oSec+T4iNaHin27tuD7dFFRiHGCoIQVwg/tV/py+5ak
         mhRqTYGjkR+MZan5UG/94x9fgfTQKUCurzR2uoFvjGerNQWlR2hYkx4CxNaB17iZ1N+Z
         rqkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3HskzHFDMjLVeMEYGvl0y7Q2KyWqTz8/XKyAPwpo7ZI=;
        b=ZKX2oCUUATk/0mRJADhas1qa86koCQ9/vGdGxmbtQoKhysTvdwbJM7ZO7aW0xYC165
         vOAvO1J2R0hKeWfqLDmocUx3P/Sg6bd0WYwY475ne/3wZoKajjFi758aFs4/+xIw6YvV
         HDv+ymYlrqT8npHk14heUxfykMGNP7VfKtFbPbv41CGc8kypmqXXW95pWdw2GvuGDInR
         go+UZgI5wtZ+dX7XpqOWHHHPXpuzLnWbeNqcMh0kzK24UgaQCEOND6C7ujTFyNkQQC23
         dAph9+1CCtRgquF9fhX6qxfftaCghwdxn2zLQKoP1/7l5SGM6H3cYAea+dFmCpJS0QQK
         eMDw==
X-Gm-Message-State: AOAM531GOzMaGHJz91In5SbrjIsE2wS8ZZneL7T+VJojbtU3rOuG0B1Y
	R7IbBUVvoBsO4bxJC7ASFi0=
X-Google-Smtp-Source: ABdhPJx3UHgig2jtTjjffJ2v52C4GuHeUzIsAKXvdfxKz57j1geyjN2/0X/lrxnCr02zIWZSgumgxw==
X-Received: by 2002:a25:d290:: with SMTP id j138mr24626210ybg.151.1627929557670;
        Mon, 02 Aug 2021 11:39:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c70c:: with SMTP id w12ls5073214ybe.4.gmail; Mon, 02 Aug
 2021 11:39:17 -0700 (PDT)
X-Received: by 2002:a25:568b:: with SMTP id k133mr24212390ybb.196.1627929557186;
        Mon, 02 Aug 2021 11:39:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627929557; cv=none;
        d=google.com; s=arc-20160816;
        b=Yr9j87UdHuakSp8E5uTSM29IUtv/AfK0YoEY35q5j670CqEDpkvb2ao/7F7i4eqFk9
         FhKSvayblPNEWknprliZ2GWnv2+V1QM3i2BXLpY1IElHjG9BSC+ujNXzA9odUiVGxRgw
         JioBXb+NZyQtHmLMktc1ZtxnaDSWbpPZP4Ooqib3hEM5+AhHEUV+0kFXNZcsDKAFYYIe
         Cuk47HOTwrgKnPHhBPnFmZh8INwajEp1WPssujPUHsYoocamclhldOEo3V8XVAqN4Imv
         ikN0AgLktD5EuCIZpXBMeUmT4GvtBqPlvSDcG/FTrCz7hJ+2v/lqmgSzleWfXNY+n6Mn
         UELQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=WTdy23QqSO2DMUu2Ys+7R1vYJMU/74du8VLy/2Y4DPA=;
        b=GgDpbFtCMKsiWeHFElnChi9LWHgVbFgDj4A2ETYuAskD6w6kybrI+tQBGddAQY9tNw
         iDH9DR1dZcP4e/4KdAWjPBeZ0K+LeGit2sp6WyS6DZkBNnZFVaGDdAOxJbs4BDK3uE3K
         MTnOTa/Bzku5EfxdGSbEIcxYFPQ3SIcvEmd3AnzFQmeH7/2FZ+64Y+ubQxFLQicNbvDD
         0xUKbvofs7+kDK02Oni/04papmNXXJlXh7cTwYZJlZtZgabTiI86iMYgq3vVek1xxkRu
         Egt0ap3/nR6D7qd6ZMAS5EdIxQzTevvxUJHmMev4zNqC6t3iPKgzxJrl++Tu4EFLVow9
         p5MA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vGeI3BYB;
       spf=pass (google.com: domain of 31dsiyqwkahsmcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=31DsIYQwKAHsmcdrZtkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id q62si716115ybc.4.2021.08.02.11.39.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 11:39:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of 31dsiyqwkahsmcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id e145-20020a2550970000b029056eb288352cso19910444ybb.2
        for <clang-built-linux@googlegroups.com>; Mon, 02 Aug 2021 11:39:17 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:3db0:42c:8665:a4ae])
 (user=ndesaulniers job=sendgmr) by 2002:a25:1209:: with SMTP id
 9mr23717204ybs.166.1627929556907; Mon, 02 Aug 2021 11:39:16 -0700 (PDT)
Date: Mon,  2 Aug 2021 11:39:07 -0700
Message-Id: <20210802183910.1802120-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH v6 0/3] infer --target from SRCARCH for CC=clang
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
 header.i=@google.com header.s=20161025 header.b=vGeI3BYB;       spf=pass
 (google.com: domain of 31dsiyqwkahsmcdrztkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=31DsIYQwKAHsmcdrZtkmhdqrfnnfkd.bnl@flex--ndesaulniers.bounces.google.com;
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

Instead, let's infer --target from SRCARCH, and move some flag handling into a
new file included from the top level Makefile.

Changes v5 -> v6:
* Use indirection as per Linus.
* Change hexagon triple to use -musl rather than -gnu. glibc doesn't
  have support for hexagon, and hexagon-linux-musl is the triple we use
  in CI.
  https://github.com/ClangBuiltLinux/continuous-integration2/blob/d659897d1700894d67feb64fe28e298da399a287/generator.yml#L53
* Pick up Fangrui's RB.
* Reorder use of Env vars in documentation to use command line
  parameters instead, for consistency.

Changes v4 -> v5:
* Include previously missing first patch!

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

Nick Desaulniers (3):
  Makefile: move initial clang flag handling into scripts/Makefile.clang
  Makefile: infer --target from ARCH for CC=clang
  Documentation/llvm: update CROSS_COMPILE inferencing

 Documentation/kbuild/llvm.rst | 19 ++++++++++++++++++-
 MAINTAINERS                   |  1 +
 Makefile                      | 15 +--------------
 scripts/Makefile.clang        | 35 +++++++++++++++++++++++++++++++++++
 4 files changed, 55 insertions(+), 15 deletions(-)
 create mode 100644 scripts/Makefile.clang


base-commit: d7a86429dbc691bf540688fcc8542cc20246a85b
-- 
2.32.0.554.ge1b32706d8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210802183910.1802120-1-ndesaulniers%40google.com.
