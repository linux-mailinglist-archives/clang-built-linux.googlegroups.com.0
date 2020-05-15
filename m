Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBUW67L2QKGQEHPMIMYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5B01D52EA
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 17:03:47 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id z11sf2369450iom.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 08:03:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589555026; cv=pass;
        d=google.com; s=arc-20160816;
        b=MhNb6Nvxg0NjY6L8+c2CRpwNkGLR/+i0NqNQgtBKVpdxnhEeQDTI4Z6Gk1ON824LAY
         zyF8bBbMF3lN4T+oMdxjXKMI5SYX37NDWMuzdoL3hr5zTjA4VtUeVkU5u+kTpSOzoLRt
         ctgMk6KIOBaaNxVjQQrVL+AN1GOuq7poVpx4/0kNvMb4Do0yuJW/Bc37pGN8B2rWbHXo
         ephPAUcO+K2SumUJqWjQr5ii42LfiTsydF4L7SjjrsJfy0gSdDnX5Ls548ihQSMibwkQ
         br1s5N2U7eZFD1FODQY0QqNrSRs9DQ/XKBUtky+NXQ2ZnfBtI2VDjCyToaDKiStM06tP
         P04Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=oOyhzOBRo/hHPSjaNblo09l/urP+8as/Xw5rY6O/QMo=;
        b=cSc8gLvf7q+zdCTxTEUNVeH3qz6Hs0g20vPlErpqN7hMgoL1Di03OEjfEwrpYXGSjA
         yEt5GavHApamLag2F9wZq5fU6Ln6Ek3Gxx2/3PZWR+KgI53gEsXN8iQW4maRJMpVI14K
         Z0LX7BeBmU3zQhOsORgjVc+R252UYNuOIbg8DWsnxNYAdw7hQCmU6aEIyhRBgkJcTyd6
         x65Z75RKzaOlzhbHTUoY1Nr4eiUd1PPYhHQiU8rlOfSu5ETpZGsHhaZDMxzkTRWFrThG
         7mIIqEwfipB6goYb5Y7pqzDC34pmDTa+h1q9t8b/BG8xop6lRMcPdRRSrSvKOvosfGzh
         jXlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="RR/K1jJt";
       spf=pass (google.com: domain of 3ua--xgukeaykrbkxmuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Ua--XgUKEaYKRbKXMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=oOyhzOBRo/hHPSjaNblo09l/urP+8as/Xw5rY6O/QMo=;
        b=aFSKttkrwnCxp9tms+UUb0kWvzvVVN4iBPav/78auugm9fXMaQxgTEXMtzpDonEr7U
         +s0OAD9cJ73E26x9g4EFi/TmQqTV3PJ/EMi4vUCKMfdW5rEOC89Ioth2iQaB5gEQ2Ozr
         wUmTdig0m/VtsYhWXg0HA5bl5gDUhRzJLQPlvUA++s2tNXBmqWpHpwGKH4jpSDs2lkZB
         PnQluEP7I8II8/DuSq0v7CDZqwdl/A1FrkqoKh40n5n/tWBGT9DSoqbBomV09z2sMbgv
         55o1YRSTI60zpvEEPG5aEzO+id1SbGfk4biMfFE7H01WSgtA/aMpMPoB9KsbxWK0kp68
         VlBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oOyhzOBRo/hHPSjaNblo09l/urP+8as/Xw5rY6O/QMo=;
        b=sD5W2UdDYqVznGQnrmsVvIVxPmVCOwOIcZex8jioGW+S9rYwYHtIMExSoIyl/m6L46
         N2hkiaZOVT/CXfUm0Y/pLTvvvXRlqYqoRsQplv2DIN+QEBzbfBd8Z+WpBeF0s2eVQIVc
         Se5iwbJyzSnZF6OGFAkIUSpVc+w+mgJnnm00pW/uIPISouGlDPUMkkwGp6akunQ0js+c
         updYnNbNUrFYt4pwVqbw0voPKffuWhaN3rTcPVq3Roajqq1WCRs7mn6tnVhmxaaGu221
         zI2NpPAujV0gGGv/ZQ5Jg4K/vtqALJUaoq2W2rCMRSVFRaEjPLs6UcWfmMUsVctzuhVV
         ExRA==
X-Gm-Message-State: AOAM531fqs3/GvJVxx/ON3SZ+JYwzGVhkCWx5OHRV1nRn3i96qWosI4r
	FNMtVVl4Sa4/R6pE5Mjept8=
X-Google-Smtp-Source: ABdhPJwLMfpCBUrBT6RVuMQ15/y9+rjhpngBi3gDwk/ElrW+27mSkQt2lxQnWXEJLmboGoq1Q4rdRQ==
X-Received: by 2002:a5e:9705:: with SMTP id w5mr3324267ioj.86.1589555026691;
        Fri, 15 May 2020 08:03:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d68a:: with SMTP id p10ls737401iln.1.gmail; Fri, 15 May
 2020 08:03:46 -0700 (PDT)
X-Received: by 2002:a92:8d4d:: with SMTP id s74mr2427306ild.287.1589555026060;
        Fri, 15 May 2020 08:03:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589555026; cv=none;
        d=google.com; s=arc-20160816;
        b=YVJRpgUnkABEMuyhoIEjzCvhd+6BBt/DL8cM5Y1i8DwxPfHZleXhJ/GsvH8Hd0W4aS
         sdAdJFVhMVM7Xo5ZaUETWJud8dTxzhZcw5FAYsvEOBK8hM3ichyeLSi8wScZk1N6ZHmj
         XDPGqAswoaH421EvomKgNV7U/4IBw+nLqk51ISXxHLKbAhC3AOnMILd2WRe5b1h5LYYN
         40ss3ZbC+ERb+tjd778Pz2FWsUb0SEqQONQqg3W0dmsfno2/h/yYde07M+aKD9Yzd43K
         mX6KyUuyqwpvfO7RtHJNDX2I8r5UrB96oZo6OHouxGjnXYX43k1975IvjHTWfEUUeKY7
         kHCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=c51QaJvL6D/qqlVaG3mfBJRBx6GYLLBQHT61u+1oODA=;
        b=ziLIDfgHGWsMApRD0nTBaFi8o2k/pBh2YHD5gzYomhKQR60yMBa+pYsELFkmbFbho/
         paSrrP4SNDf01n7pDlVydHVIvaBecdzvkBYKNlg1HOLS3XeRyB0QzkcGKxHe+rHMwCSo
         g3X/zHkRa8Tb6PYmc8AYazqE8qbrd6x7zi7bsH2cpaK7Bh0v4JOj6XskGW1x2lAZauVQ
         Rh8FsBfiXuKnjyz4e9h3d95SbQ8SB5CBM4VYTfhrzxU3stcpK77aCyV81JvsAU8Bw0Yt
         yKzfksN1MUK5R+0RoPHYMsNDVQaT3ekOYN9McNoMGb/JJ57AqpR5gc8365i0L9UKGR8b
         zaAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="RR/K1jJt";
       spf=pass (google.com: domain of 3ua--xgukeaykrbkxmuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Ua--XgUKEaYKRbKXMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id k8si218099ilq.3.2020.05.15.08.03.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 08:03:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ua--xgukeaykrbkxmuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id n7so2814551ybh.13
        for <clang-built-linux@googlegroups.com>; Fri, 15 May 2020 08:03:46 -0700 (PDT)
X-Received: by 2002:a25:2054:: with SMTP id g81mr6167148ybg.470.1589555025225;
 Fri, 15 May 2020 08:03:45 -0700 (PDT)
Date: Fri, 15 May 2020 17:03:28 +0200
Message-Id: <20200515150338.190344-1-elver@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip 00/10] Fix KCSAN for new ONCE (require Clang 11)
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="RR/K1jJt";       spf=pass
 (google.com: domain of 3ua--xgukeaykrbkxmuumrk.iusirgtm-haorz-rotadmuumrkmxuavy.ius@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3Ua--XgUKEaYKRbKXMUUMRK.IUSIRGTM-HaORZ-ROTadMUUMRKMXUaVY.IUS@flex--elver.bounces.google.com;
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

Arnd Bergmann (1):
  ubsan, kcsan: don't combine sanitizer with kcov on clang

Marco Elver (9):
  kcsan: Avoid inserting __tsan_func_entry/exit if possible
  kcsan: Support distinguishing volatile accesses
  kcsan: Pass option tsan-instrument-read-before-write to Clang
  kcsan: Remove 'noinline' from __no_kcsan_or_inline
  kcsan: Restrict supported compilers
  kcsan: Update Documentation to change supported compilers
  READ_ONCE, WRITE_ONCE: Remove data_race() wrapping
  compiler.h: Move function attributes to compiler_types.h
  compiler_types.h, kasan: Use __SANITIZE_ADDRESS__ instead of
    CONFIG_KASAN to decide inlining

 Documentation/dev-tools/kcsan.rst |  9 +------
 include/linux/compiler.h          | 35 ++-----------------------
 include/linux/compiler_types.h    | 32 +++++++++++++++++++++++
 kernel/kcsan/core.c               | 43 +++++++++++++++++++++++++++++++
 lib/Kconfig.kcsan                 | 20 +++++++++++++-
 lib/Kconfig.ubsan                 | 11 ++++++++
 scripts/Makefile.kcsan            | 15 ++++++++++-
 7 files changed, 122 insertions(+), 43 deletions(-)

-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200515150338.190344-1-elver%40google.com.
