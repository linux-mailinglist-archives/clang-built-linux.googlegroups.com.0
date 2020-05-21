Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB7WCTH3AKGQE7QTHTEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AE51DCBAD
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 13:09:51 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id 67sf5032224pfe.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 04:09:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590059390; cv=pass;
        d=google.com; s=arc-20160816;
        b=AWhS2ZGEF953ZcXAFJEx1VV17eUEZ0V8bwJF066jEaGXoEyCqfUyOrdK6uUip/XIVa
         U8alZai/qDRKhz7p8kEv9QZi8kXfdg8IiK/GNvOWJF2zI76cEvhwLf5VKW2IZ0OVt4n2
         n3W8NGFBALf4IRjARK9Tyq+h+SKLx2ArlZtRoRTO5G98BikUi1TrSN8Bl1vRZcJTzAs2
         y0hmyfM9mTjC7orezNsW0X0riNeDKvMz8F04XfJha1u5XUQxJgRUkvQMmr9ZJP2b3G4E
         hk0+ULpaxWK/9/PiPYqvUw4OxWVYXRM7IOhv10w3qk6nKt92U1sHrsMlgV4dvKBXICKt
         ZaUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=nzZg7hcIhMgspHGCvvfRkWCTLv4GLzCpUm4DXCbC5Mc=;
        b=TxzC3n+gF6hBNsY1WZttCdVY6ZPE/tHNlyYY/dupjE0RzSxTwQ/sIutNaL9y+PKvAy
         NDXCuyGko2q9bzdT84O+yTiPl+PQnl/nnXhaR5xO6nZTigG01WRigP/B61WQyFFBzffy
         bjUs1y5YUPHH3JhcypITxpWzL4VpKnJyHet2lc4m1mmuwBjIk2FGbJtIptebCvZq1MeU
         5sUT4PToxuzP8/5oCyB5oObm2XsuhTHzRvnbrkWdFVViWfRxfgzeoeVEGmr/tSXmCfcC
         TzVnxQeZvwprEgcURHjKxD2DPm1PvnZRELV9gbEpSB5SLd4Eyb4YL2Gwx/joN/tmP5Lm
         zZ+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A8yrTvao;
       spf=pass (google.com: domain of 3fghgxgukevu18i1e3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3fGHGXgUKEVU18I1E3BB381.zB9z8xA3-yH58G-85AHK3BB3813EBHCF.zB9@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=nzZg7hcIhMgspHGCvvfRkWCTLv4GLzCpUm4DXCbC5Mc=;
        b=Q9DQ8TZaa6qqWJ1u5ivXcCJfXcDqo+epXW6RxkdLt/X0iJvlu756Hzb4TitA8sEae4
         sdHWTXMN7YDE6V6Lr8x4ASBvLupvLDbNoN+rp3ZDUgyXFmwwGr4UOyjt8hKMMqeSC2Qb
         3D74yqJwAchtcAk7fpE6X+fEMDHDtjE0vcvcBhz2QGI3qBirJuWyRcN8SBwINXaj0G9V
         ZghW5YIB7fYhm7CucbPk6dSxoDYtJTQ7O8S3g79USZr2GLn936KHLY1l7woSHovpShDz
         S+nP9xopLoVIUNHh8hopUN17VP0mLWYUin7e6T1klMkVlo57/09JGeCht5p1Apz9TSQ3
         jkQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nzZg7hcIhMgspHGCvvfRkWCTLv4GLzCpUm4DXCbC5Mc=;
        b=DXregmX7Ey2FQTsVqu2oYzjDx0eBskCdWe4wuvNVjGAmsIAH5WX5HfWK4gG524Ycnn
         6RRyIdp+Rm4IdV86HwZ51JxB9XMPrcdm9l30DaDkhqdnyJBjgDKRVafPJEGVtNzqphml
         cdxwtTpA9voYZqqgDTdS5Y1GcfhrpgTWjv9xwVGbCjwnM2j2OaaW0FZ2dZkb6RTqetTA
         ySfcJxc/vqz7fxrjCOiOsZYmWjIXznQnp/os1gf4jSnfNMayBPp66uZw3jT6mFM2QX1+
         XvepPQHnWNjAFV9kZDtYX9D/UU0Egokndp+3hUeEomRZhphRAZm9WgMpcwvYrUyfhl7G
         LL7A==
X-Gm-Message-State: AOAM5318sa/dlWeyg4PWgwcwyOe58XnaGZO6NHehP91CfL+vrL/N/F3Z
	YfFwfrxAWToJbGdzDk3Sm64=
X-Google-Smtp-Source: ABdhPJwkUMaXd0WdGJpzvqv+Nocrot0k8S9BJZM1ta11P8/l+67UnCnDUdpbvpeqa6PLdkHBiY0/Tg==
X-Received: by 2002:a17:90a:c201:: with SMTP id e1mr11216120pjt.162.1590059390174;
        Thu, 21 May 2020 04:09:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b702:: with SMTP id d2ls742276pls.6.gmail; Thu, 21
 May 2020 04:09:49 -0700 (PDT)
X-Received: by 2002:a17:902:c214:: with SMTP id 20mr8271354pll.205.1590059389717;
        Thu, 21 May 2020 04:09:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590059389; cv=none;
        d=google.com; s=arc-20160816;
        b=y4RoRNaONAsAowwabrdzuUeMHvxSY1c74I23BjZB3W9OR7NlC98hh1MCaG1sVd1WDg
         gYXJN0B3aSi6Izs44ZhY5dwswRWlA3WlcMicfMk2NBUnvdXuyHyN3Gc3JCkE+/tokTqk
         tKu06ZTdFL4mj8JimqYAY1FlZ9VKbDiUNPuJ78B8dZbb9c8emGpHcWRABb0p7XAffwMJ
         qJCYl3OMAKRHYkol38zs71q3DzHEgvPSQEtzPDDodUlLq72APf2UW/s7l/QHkwept4ux
         zLiCNfl4GWtrFliiVIwpWP9DV9MYiDuatmSjf+GMiXAIVIGsEkJw2Mq3PytutSKsTNUi
         UDzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=IzoT0kShpKOHmhw0CGt76GVflwk27IMd1HUpDtAtB68=;
        b=vC/yszUrH4W84KiZcsh9Cl6bIQaZXSLpHiFyyNF7Ie/oPCWE75uckuWbnfzh8ZwqEL
         cEixUwydvXXsB3YkBO1fLkPh7iO5SsM7IGW8YfIdX9F2KRMFwa7wGN8WJzHCaDs6LSWd
         8x4TXc7y2lHdO4FVei3ATVOQBacltDD40rudFT3sGq21iq4WNwapjqbVl6T/tIcejvC8
         46cCHLoQZu8qWVXOC7yOaawThMeAnVj5NeDjktklEcCEhHJ2AJXhlrNITP4DHaXHbjJO
         EXZxSu8DzZY4Wwc1JsqsYlRkhYtO065hmOBHdd6MhIBnuGR58SgWX3Lk4nqpdbCK+nNa
         4KQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=A8yrTvao;
       spf=pass (google.com: domain of 3fghgxgukevu18i1e3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3fGHGXgUKEVU18I1E3BB381.zB9z8xA3-yH58G-85AHK3BB3813EBHCF.zB9@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id i4si301827pgl.0.2020.05.21.04.09.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 04:09:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fghgxgukevu18i1e3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id e43so7328540qtc.3
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 04:09:49 -0700 (PDT)
X-Received: by 2002:ad4:4e6a:: with SMTP id ec10mr9092247qvb.225.1590059388762;
 Thu, 21 May 2020 04:09:48 -0700 (PDT)
Date: Thu, 21 May 2020 13:08:43 +0200
Message-Id: <20200521110854.114437-1-elver@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip v2 00/11] Fix KCSAN for new ONCE (require Clang 11)
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com, 
	bp@alien8.de
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=A8yrTvao;       spf=pass
 (google.com: domain of 3fghgxgukevu18i1e3bb381.zb9z8xa3-yh58g-85ahk3bb3813ebhcf.zb9@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3fGHGXgUKEVU18I1E3BB381.zB9z8xA3-yH58G-85AHK3BB3813EBHCF.zB9@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

This patch series is the conclusion to [1], where we determined that due
to various interactions with no_sanitize attributes and the new
{READ,WRITE}_ONCE(), KCSAN will require Clang 11 or later. Other
sanitizers are largely untouched, and only KCSAN now has a hard
dependency on Clang 11. To test, a recent Clang development version will
suffice [2]. While a little inconvenient for now, it is hoped that in
future we may be able to fix GCC and re-enable GCC support.

The patch "kcsan: Restrict supported compilers" contains a detailed list
of requirements that led to this decision.

Most of the patches are related to KCSAN, however, the first patch also
includes an UBSAN related fix and is a dependency for the remaining
ones. The last 2 patches clean up the attributes by moving them to the
right place, and fix KASAN's way of defining __no_kasan_or_inline,
making it consistent with KCSAN.

The series has been tested by running kcsan-test several times and
completed successfully.

[1] https://lkml.kernel.org/r/CANpmjNOGFqhtDa9wWpXs2kztQsSozbwsuMO5BqqW0c0g0zGfSA@mail.gmail.com
[2] https://github.com/llvm/llvm-project

v2:
* Remove unnecessary kcsan_check_atomic in ONCE.
* Simplify __READ_ONCE_SCALAR and remove __WRITE_ONCE_SCALAR. This
  effectively restores Will Deacon's pre-KCSAN version:
  https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/tree/include/linux/compiler.h?h=rwonce/cleanup#n202
* Introduce patch making data_race() a single statement expression in
  response to apparent issues that compilers are having with nested
  statement expressions.

Arnd Bergmann (1):
  ubsan, kcsan: don't combine sanitizer with kcov on clang

Marco Elver (10):
  kcsan: Avoid inserting __tsan_func_entry/exit if possible
  kcsan: Support distinguishing volatile accesses
  kcsan: Pass option tsan-instrument-read-before-write to Clang
  kcsan: Remove 'noinline' from __no_kcsan_or_inline
  kcsan: Restrict supported compilers
  kcsan: Update Documentation to change supported compilers
  READ_ONCE, WRITE_ONCE: Remove data_race() and unnecessary checks
  data_race: Avoid nested statement expression
  compiler.h: Move function attributes to compiler_types.h
  compiler_types.h, kasan: Use __SANITIZE_ADDRESS__ instead of
    CONFIG_KASAN to decide inlining

 Documentation/dev-tools/kcsan.rst |  9 +-----
 include/linux/compiler.h          | 53 ++++---------------------------
 include/linux/compiler_types.h    | 32 +++++++++++++++++++
 kernel/kcsan/core.c               | 43 +++++++++++++++++++++++++
 lib/Kconfig.kcsan                 | 20 +++++++++++-
 lib/Kconfig.ubsan                 | 11 +++++++
 scripts/Makefile.kcsan            | 15 ++++++++-
 7 files changed, 126 insertions(+), 57 deletions(-)

-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521110854.114437-1-elver%40google.com.
