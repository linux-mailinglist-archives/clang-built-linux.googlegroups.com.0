Return-Path: <clang-built-linux+bncBDYJPJO25UGBBM43VXVAKGQEPYPHV5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 5324185594
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Aug 2019 00:16:21 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id f11sf57724930otq.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 15:16:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565216180; cv=pass;
        d=google.com; s=arc-20160816;
        b=RPB1ooAje5fxR+bA8SP7Hee5BlJ+73jSGfvLhlBzLswpMZMBSh+svyX4kNu063Nxl4
         SzKkfrFrv/Tp2rgR7QJmmdxIFoMJRSJoC6NZaIXmMSF3OhVZtjvSYrbC5pZING7CdWrw
         IaJr8gb9BD6s0RPWBoZILEk5OUdkfLbuD7E+HPcrvNXDTnrpZV15BV8lbMaKF7MZ0Mbb
         K93Ay/JV7869IDTjFu9oGFwgbcoxpzzTxh4hXYWH9jI3RF49eSp6hdJSoXeN+tkgEW28
         eFzb9oekpGeyBgNjIeI9pM5vyXUFPAd5O7wgZhe+cWyz1EeKX48+8/f4SCK2ZnywQske
         cluw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=bspSpEHrygadWAUqEnlatMIzLqjoXJzuolSZEz56e+0=;
        b=OEZkzTdhNqgos0qIOLGeW3ehgvhJc/2blDVyZLKAEI2VPELc+Md+Se31SRb27wQgK6
         wYwwuHl6SVDCXepTjouZSlB8LvGqN4J+X2r4QeYVs0ey2uWYkdBvZymnveXgDq92ihpI
         TL4LGIdC/GmxkYQKTuLY02U4CT/LLJuDmLHJyWLkUI/qILmiC5jfVEBjgZw70mOHJwlO
         ll701xJbGPgdLsmwy2uHrMmDZhkm7dEsbg946w8WIBRulNblAFam1GzGmlcK63DFmYTp
         XL7OiLQHny9gAKnLnqoVUMPzQvvGpmEb2x8bERWBIpuEvGmqzuXL2LKamoHeS1EQQi1c
         Yjeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SXte6O0s;
       spf=pass (google.com: domain of 3r01lxqwkaggtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3r01LXQwKAGgTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bspSpEHrygadWAUqEnlatMIzLqjoXJzuolSZEz56e+0=;
        b=rgqoX2V/qm1aiGY9USCJDOVnlG02DKg+YfSXR7xWpjg7rKWpHU+arRuAWXSy188otS
         MyqhjnB3sz6J0ReRQ69vwoj0/IyOjy/dWMFIBOisT6xEWMtBn+9SYEf3ocTZQTOHdmVp
         CfkWYW9UHcpZtx+as7vGkun3V6ibyFEcHHOm4fqPAoPfKq+envGUbt7vqQIt8HO+Pf1D
         ZgGoMrAfehUIbQQcKXbh07qmFXCXoODSv3bjofENFAMjnScwKagvNzrR8RMMsgucdaYX
         oXZsgPA9VXyoEPRnrnNNO3wUkBKQaSFwVauQ4YGuDV/+NTggYP/JEbRDO6JH9j7xw/wH
         zx4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bspSpEHrygadWAUqEnlatMIzLqjoXJzuolSZEz56e+0=;
        b=r6jGbgH1dY80Nlwv0ITXIJPehpbjF9fLy955z3jwOIaXqpQ1TMQ9Ts3UrqBQ8hGagd
         dcUWAYTMdmgPrxqK5CuuB19+Y4DP2hI3f2cZMdRUsXhNCr44W/X9UIsQHP67NtQWxvzE
         VnRVqWrZG6LLbPKb4fsRstGrNm4P7tsiLhaxNcwUpNbQZDGjiymohpeS8eMYERRyHVUl
         FyGB16b7DYwYODAOLwnexBMcGtubzMvxc0/u5U+eJJZsSUcMpvoD7f9jGV5MLpvbQp2R
         oV0qSfi37SIjPt+g25mXCFmIs3lx8qok4E6oGRVbV9X8FJXCcHHXBe11D7G0wBNKJlP2
         aXkQ==
X-Gm-Message-State: APjAAAWMa3tD3iNwMKgJIbNn4DouhgkGHR3tEHiIlifD74E8HSvTay2v
	p4464wrbHbZZBTOAg340Dik=
X-Google-Smtp-Source: APXvYqwcyJ0odwsZUuA11i9sYgbz1KnKTcTZMSos4ENVkhZwB1ilbxR4nvxPJ8GGvRPv8Pct+gP2+g==
X-Received: by 2002:a9d:6517:: with SMTP id i23mr9338140otl.134.1565216179079;
        Wed, 07 Aug 2019 15:16:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4705:: with SMTP id k5ls1507172oik.13.gmail; Wed, 07 Aug
 2019 15:16:18 -0700 (PDT)
X-Received: by 2002:aca:b254:: with SMTP id b81mr284415oif.53.1565216178807;
        Wed, 07 Aug 2019 15:16:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565216178; cv=none;
        d=google.com; s=arc-20160816;
        b=Qe6Xy4cSksgzLGdbAeDezxDL6If5obbZ41WhAKWhEFr0/jeXu+MPj3YLya1QgTGm5L
         BDaRXa2XEadCVQEGLQXPQAidF2aPvTiBEIPEK9HORxxZ8R/ZCc7Sm52x1Eu8mwVAsEXt
         Fc7GSGUsDR8rZWEWl4ecbUfueQSfPSil40HWa3SS0J7ml42D74XCJkJoGlCm2USVJZTq
         2Aai+RnQfvaGOHd1L6LNxjIfeTZIZmEl1+WRc2OwzPx1srFT5YD/Bt8ck/unUshRUU43
         FFPGgGZxqt5R5ymote0eyZCmp/qZQ6ptOlRikDBFdyhQz+64ugiYTQiqMhJbqx0Aus9i
         DZpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=WAx2iZwY+b66jFRqTbeBjgCzUPOFgxIWR/mlIl2o4o4=;
        b=awkVyPjkxBDmtTlg2e9YmB5s1fWSOFMzKuoIbv2x7js2nqdkbKoGONnZf7F/zogyXw
         Ud3qkJiNI/RTwnYQ5/zSurnX7GfCuyNVRh8YYit78AR9wibTG2u0sA8okmSfICwuD0l3
         4SHMAGHx4lQrqwKCtNX/TP0oQ+X5AtVi5VKStLKjFj5yDjhg3SGBsGy511swvG7PYJKH
         TkOP2WKQW2pXKC6qOsQC1T9wH6Pq7QBDcrL8hcQ5DleoYiws4AAGAU4tWhDT8l9esrsB
         dyQMG8URl2TpGdDKXG5qrm9licubXHVgmTg5vteQfwPkJXCQ/SdJA3rs1GLgeCqXg5Vx
         6iSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SXte6O0s;
       spf=pass (google.com: domain of 3r01lxqwkaggtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3r01LXQwKAGgTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id p6si5126962otk.5.2019.08.07.15.16.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 15:16:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3r01lxqwkaggtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id z35so10054541pgk.10
        for <clang-built-linux@googlegroups.com>; Wed, 07 Aug 2019 15:16:18 -0700 (PDT)
X-Received: by 2002:a63:9e56:: with SMTP id r22mr9652732pgo.221.1565216175000;
 Wed, 07 Aug 2019 15:16:15 -0700 (PDT)
Date: Wed,  7 Aug 2019 15:15:34 -0700
In-Reply-To: <20190807221539.94583-1-ndesaulniers@google.com>
Message-Id: <20190807221539.94583-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190807221539.94583-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH v5 0/2] Support kexec/kdump for clang built kernel
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: peterz@infradead.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, yamada.masahiro@socionext.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SXte6O0s;       spf=pass
 (google.com: domain of 3r01lxqwkaggtjkygartokxymuumrk.ius@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3r01LXQwKAGgTJKYGaRTOKXYMUUMRK.IUS@flex--ndesaulniers.bounces.google.com;
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

1. Reuse the implementation of memcpy and memset instead of relying on
__builtin_memcpy and __builtin_memset as it causes infinite recursion
in Clang (at any opt level) or GCC at -O2.
2. Don't reset KBUILD_CFLAGS, rather filter CONFIG_FUNCTION_TRACER,
CONFIG_STACKPROTECTOR, CONFIG_STACKPROTECTOR_STRONG, and
CONFIG_RETPOLINE flags via `CFLAGS_REMOVE_<file>.o'.

A good test of this series (besides boot testing a kexec kernel):
* There should be no undefined symbols in arch/x86/purgatory/purgatory.ro:
$ nm arch/x86/purgatory/purgatory.ro
  particularly `warn`, `bcmp`, `__stack_chk_fail`, `memcpy` or `memset`.
* `-pg`, `-fstack-protector`, `-fstack-protector-strong`, and
  $(RETPOLINE_CFLAGS) should not be added to the command line for the C
  source files under arch/x86/purgatory/ when compiling with
  CONFIG_FUNCTION_TRACER=y, CONFIG_STACKPROTECTOR=y,
  CONFIG_STACKPROTECTOR_STRONG=y, and CONFIG_RETPOLINE=y.

V5 of: https://lkml.org/lkml/2019/7/25/1276

Nick Desaulniers (2):
  x86/purgatory: do not use __builtin_memcpy and __builtin_memset
  x86/purgatory: use CFLAGS_REMOVE rather than reset KBUILD_CFLAGS

 arch/x86/boot/string.c         |  7 +++++++
 arch/x86/purgatory/Makefile    | 29 ++++++++++++++++++++++++-----
 arch/x86/purgatory/purgatory.c |  6 ++++++
 arch/x86/purgatory/string.c    | 23 -----------------------
 4 files changed, 37 insertions(+), 28 deletions(-)
 delete mode 100644 arch/x86/purgatory/string.c

-- 
2.22.0.709.g102302147b-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807221539.94583-3-ndesaulniers%40google.com.
