Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZNYROEAMGQEY7OJ65I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id D85133DA969
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 18:50:46 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id z1-20020a1709030181b029012c775d35e1sf2269449plg.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 09:50:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627577445; cv=pass;
        d=google.com; s=arc-20160816;
        b=miCS4bT4lZ8lkxMK+egABChQ+ZUfIvdoExkyNSnGDMpHEx9NPDX8jTKloNMySr58xY
         P7cRAXWLw7L+zrpHTeH/gz0yzwgHxVe2nD/WSIBfDSBLYBsSZntBGHouAgJTE/ThXQMh
         Ve/9wjqe7aWcX+v3Zl6ZRGr+kxq3WvkKSKuHjCb3pElGAoXnJY3CCNACIT2yWjGQIjCQ
         JhPNA/1ewpnsuvN6HBE8zz8vEyVp6yfwtYqf3hS6PtKwoFRG3rDi0pDi85wWRRtHiJN7
         UGPplz7DY8zV5RBsdqbuPFc6wQCjZGhGLrDXyp3T058LVG4rLGj5c3EmFrwMUUxdhnij
         rAeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=9ci0okdLPvF47LdD3U4IvLS9XIKYAIopXRbsRmb+lww=;
        b=cmJJA+9oHqTEqlwZ4priro3cqAeBiw6giIfJhIrROOKeHpDx7crYFbDvDh94rExlfS
         RqTEZOWOeWAAaMHchYmd/LCvNLpIdjiL+IMy5wzUbNO4vvQkHluWhNVmtdlqEHHHg0+k
         oD3/OKVW1wCJRs6HcgvVssgdqAs+35FGMIB8c2VHtzo2bY6t6eQDCSwPe9fKEXeMP5VH
         a45qYFjBmZIbAj9NQxeffRuDpCP1ynkagUKR1B2f5rDynyaiiBi+L9W9lTm3pbB+QR5d
         aaSmrrKoiTJ46SFCbBJnAOfuU9/fUy401L/DNC46wFib9sI/0hrx6VEncz7r1uc3x7Tb
         T31w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p8sWn2db;
       spf=pass (google.com: domain of 3znwcyqwkadcgwxltnegbxklzhhzex.vhf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3ZNwCYQwKADcgWXlTnegbXklZhhZeX.Vhf@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=9ci0okdLPvF47LdD3U4IvLS9XIKYAIopXRbsRmb+lww=;
        b=frY0ASQOMz2hrZnn4B0JG+4Zey1Spcz+wruKMlZUVohC1nBpglNvaXqTwejmU/4cXu
         WjQh98sD9KqFm5RFicF8gFg6jgs9Ww47Kt5faGRUt3sx3wiLQwxsM0oNmy0VMj73hk47
         9r97z780703JvfaUmRI89QlfPZWctoEg7Fef1axwwWWyk06VCxC316nJyEz/hG6NuQ/B
         ++yxCa+vDrRt5gwWbAfdrqSil/fkMwNjvfw/bnzvNbme1P1vjHhLMptQgqc6+lB09s6a
         jJ5g9U8YaMyRqJXzS3TgjoH1tJDJFURrIUDKgIuED7Sla0+x+WSfcluWGSa+ELBuQIY1
         HScw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9ci0okdLPvF47LdD3U4IvLS9XIKYAIopXRbsRmb+lww=;
        b=D+Wt62FxnlbTVKvO2ngGsl8KthExOilbVGR+n67RxZ6hGbxB4ka25D3hpSEhWrg3GI
         JaaAtxwUQXO6fd0EgjmRV8nNZ+isMTRlyU0VO8zyhLb3L6U0qGR0UoNs1G+rvIT+/cX7
         8l+NcnGoryGhLHS+jfUvGgXiIMOr4o/5NuEIiAHA3TjV25OYEH4k5RY57g3rdSiOeL9g
         2/a0MWmxtwv1gpSstCDZcQ/4rGaCSck1iLFGbRF+pox9X4rWJinEEN6XCBxO11GKSy7z
         AL+W4X03N5A3UgpRRLejX/xFpT8alShB1l7sMfAxY90fq5yWNZRXTxSSasoyb2gzRNkN
         gJ/A==
X-Gm-Message-State: AOAM531e+qpsatwWPNEZJi0KGXV09IYIAMqGJ1q1jR81zo617+43yb9k
	aLARCBLS3inGXfRJ7nWfK+U=
X-Google-Smtp-Source: ABdhPJyAOpof3pW07tmMDqwoegNbeWy3rWPM4xqtWGz1epJwagh8pXHyaOG8METxWJ2XLnlfl0iS+g==
X-Received: by 2002:a63:ff4d:: with SMTP id s13mr4580097pgk.237.1627577445529;
        Thu, 29 Jul 2021 09:50:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:a1a:: with SMTP id p26ls2540744pfh.9.gmail; Thu, 29
 Jul 2021 09:50:45 -0700 (PDT)
X-Received: by 2002:a63:5809:: with SMTP id m9mr4615068pgb.342.1627577444867;
        Thu, 29 Jul 2021 09:50:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627577444; cv=none;
        d=google.com; s=arc-20160816;
        b=tb/AtvLRqmFMaRHQzL3hh2UqY1VNqr+1FdvQkHWjQxhgsyOvauAcXQI0yYIJg+vxvS
         qOb4hCOHzsMk7hUydBbcvFMFYUkdeSBFscULJj6p+BWo82Q78crCM6iHcxiy3LeKL/RB
         rB4cLvDaaAMUwyOO38YPcVp0zzNVJA0628lFIXItSSWVRP0/CqP61DEdkUlG+urimqqV
         rWSxkNOEwCNgeKDsR6jKyRQSu4HrVXvnLlZDEIjfBh6fupwTAtBAcjG3DY+6lH+9d5Rh
         9FX/x3P8y4URj+j0dzUATOW2Hi9ZRfNNdBgGOZCSKA/RCs2heZn0FdpGWEjFMF8r+anO
         D6vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=MJP1t72bFvITlNOtlr8RusQlm4nGOAfcjgK9C55asO0=;
        b=DVbUbrr3HfJvPzN477wByRGvIo18kIndN34ChInNTiAaPoz6DRRbZWKqN9Odq/jFkS
         9bi97iWiJpbf7GdXUturBS629QEkgYctximcSz0kSSrMsQvYwjqYZZN0mSDXd5m3q/rI
         ctj1guYpOv+g/gHRsM4fICcdwRG5q9hHlbP7vbQmOtjUKxTkYxMJdsydPCiUo/zZ3fKR
         wgaDqGLABNoqJxKfVwjhgP8goVizv4Emahx7ufkY5PnOIWGsvkE9nRWSUCtIv0RKkrXu
         LIxTiN+keznGamzSa1RZdwHmP2Fk+h/jyy9R5df8PXdmX7Q2YsJ4D1MZ+B63U5+HlLlt
         qbug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p8sWn2db;
       spf=pass (google.com: domain of 3znwcyqwkadcgwxltnegbxklzhhzex.vhf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3ZNwCYQwKADcgWXlTnegbXklZhhZeX.Vhf@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id o20si275178pgv.1.2021.07.29.09.50.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 09:50:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3znwcyqwkadcgwxltnegbxklzhhzex.vhf@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id o32-20020a0c85a30000b0290328f91ede2bso4248355qva.1
        for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 09:50:44 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:8132:32f4:cf29:1268])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:1362:: with SMTP id
 c2mr6400031qvw.9.1627577444006; Thu, 29 Jul 2021 09:50:44 -0700 (PDT)
Date: Thu, 29 Jul 2021 09:50:37 -0700
Message-Id: <20210729165039.23896-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.432.gabb21c7263-goog
Subject: [PATCH v3 0/2] infer CROSS_COMPILE from SRCARCH for CC=clang LLVM_IAS=1
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
 header.i=@google.com header.s=20161025 header.b=p8sWn2db;       spf=pass
 (google.com: domain of 3znwcyqwkadcgwxltnegbxklzhhzex.vhf@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3ZNwCYQwKADcgWXlTnegbXklZhhZeX.Vhf@flex--ndesaulniers.bounces.google.com;
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

Nick Desaulniers (2):
  Makefile: move initial clang flag handling into scripts/Makefile.clang
  Makefile: infer CROSS_COMPILE from SRCARCH for CC=clang LLVM_IAS=1

 Documentation/kbuild/llvm.rst |  6 +++++
 MAINTAINERS                   |  1 +
 Makefile                      | 15 +------------
 scripts/Makefile.clang        | 42 +++++++++++++++++++++++++++++++++++
 4 files changed, 50 insertions(+), 14 deletions(-)
 create mode 100644 scripts/Makefile.clang


base-commit: 27932b6a2088eac7a5afa5471963b926cfbb4de7
-- 
2.32.0.432.gabb21c7263-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210729165039.23896-1-ndesaulniers%40google.com.
