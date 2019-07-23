Return-Path: <clang-built-linux+bncBDYJPJO25UGBBH7W3XUQKGQEL7S5Y6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id E814072171
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 23:24:48 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id d11sf37541298qkb.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 14:24:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563917088; cv=pass;
        d=google.com; s=arc-20160816;
        b=uxCM52Vym6ZuI417xtoWMpI1y1g1xXeEmArEhmW7Bacm2Aj86bQsjJvW7B3o1V0yZr
         vyo+EU6mmwEbsirgmT155/rFqd5OwyhxFic/cgLj+yrae5fO/moik8bqGZ/YMDyiDMyz
         6+eAZEbHFWZIWa+ZrgkFqi1mKVjTkztDQV8gLeesvs595voRNy9MM7CA3LL2dzJbnxSS
         inFQgzSv5C4GIXJAc9yenaJPtMKGmt0xQKLehUxIXKtpgsYqFc7/U1EEAgbLMYGV6JZD
         KYlENSpmihVQTcbw8Oy0muJHkVRMhLEcqq0zoMRLOHJBBuX8qSqah9IgUCmyWzJQLxye
         Ri3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=P/r7r9g7VZ7RnNC5VBtpXaNQn0NojPiIvFQmzUmhhOk=;
        b=sROZKk5jn6krPfxTOtltfneo15QJBMeyeNaP8gLMTjyi1qxn/RFTvtmSpmB82rMbWD
         +K6AJLC+BcVOKKfx4FEa0qbSYjzqqSv6jQcYaFZ3C+L++SZk97DTXwDkWvK9TxsSK/sl
         JlGYztY5PI8p5p+I8h8Tqz/HyJa6E11IzC/KSv+gqei0ZkeicStqJWAMHJmUoxuiLQCN
         kS8CeyC46Tz9DbOk69er/fd89/H4DHEoB/3Bp2IImfXqi3h9itJxGX3EyHn3/0O8HTaI
         1tslxAahLYZ3hn7dy+XH+R/QYP+xUNO71Yh54ojvqR4TWS4+ZPXg3lZTAF8nxhukEBHA
         +QSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gXAWs6d2;
       spf=pass (google.com: domain of 3hns3xqwkaoeqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3Hns3XQwKAOEQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P/r7r9g7VZ7RnNC5VBtpXaNQn0NojPiIvFQmzUmhhOk=;
        b=K4JfpM8ztEjxkQtzxs+0GsrFv9lyGwyjMQxferiXSPkUam/4JBmoIvd+1Eq38FQLkS
         XEXxqMwyJk6m9ev7rQmuo7qcr4Pf8HL/pr6OIFmIDRN72QWa4vWcCoGwjy/QP6YS3OzI
         tOGTz1JFRnIn1D3BYyV6QSj31REKjnGtJD6QyJJ+zx6SK/Z92l9CcwmM5GnTuKhr/Mm7
         U69HZRlGP47tXUYikCPA/duDhPdo9rP8gCUXDarfKP/XojzsHnYp58YgptQfGXst+hmW
         M2g10uSp7q/2XRehW4QqbIk1p0Bi8WS0mhCe3T2n2EfMf/UR7GQn9teDqsXMJml4tX8o
         KdNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P/r7r9g7VZ7RnNC5VBtpXaNQn0NojPiIvFQmzUmhhOk=;
        b=miG8VtGdku/bhYnfJFV8oGzSr4ORrJKgMONxrn5ouOoW6sgQLXjwG957aTkqRk7P3q
         VhmoAIjRYXVKosUA65Q1uY0+iPhVB22aTBRGL5uc4L3mSxMykRPAODGDwbdZia33EFz7
         9T+13tVxzJjGA/L4yB3Zd3gB4HYckC2auvUhdLkphv6OxpSRLR/LwY37MAm+do4ZF1vB
         +UN52rkvhKbuLb+4W3yzlic4MjiALYmuK0kXbp4A1FCWV/tvIS8Evh3+UY7EeUpdPWyb
         4pz3QTnHun4v+cYvcEkvaTw5MFXCYXpb8Dl8MT6nt6xjE2a2dLY2NXZ/Id4D3hr+AS/E
         t8Cw==
X-Gm-Message-State: APjAAAVvvvJqHKI+cOFjZYj/HSE4K12waXKHFYDgRGV/XM04eV0TvKQe
	Bu/FL+i4b89DRbsiiT09CWM=
X-Google-Smtp-Source: APXvYqypQPGjyFPzRlrpBkPWX4mVAH95LL3H/RjQiZxLHLpCcX6feVgvte9C8FG9n3KY5jfSmxL74w==
X-Received: by 2002:aed:33a4:: with SMTP id v33mr53440068qtd.18.1563917087819;
        Tue, 23 Jul 2019 14:24:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:d203:: with SMTP id f3ls4186088qkj.10.gmail; Tue, 23 Jul
 2019 14:24:47 -0700 (PDT)
X-Received: by 2002:a37:a090:: with SMTP id j138mr51906853qke.83.1563917087582;
        Tue, 23 Jul 2019 14:24:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563917087; cv=none;
        d=google.com; s=arc-20160816;
        b=FffA4L10UpfHI4aSaDDxsTQkUsuDJ7IKQYiPYKmQnyyS4/DGg2oAVIDzGNgvsYC9wF
         j/bbsWhcgNkRj86+P++/y1ko1dlGT4vTWYdEcPzKT70VynDdzByyTFtH1b17GFxVp2ze
         hm5/arFedFfg7p9/JQuaDjTQFJs5Grw5zWQ798AeUexYiOl/om3GvzMdq/Qh+EuYbKUX
         UoJJ5mjquFFAocgp9MXWB+KCpURx9VfvZbQVvL6t0DeKY75C//ExMhvdnG3Sqwa+zSqW
         6GONsKmv8sVf6zE8JBmVM82C/3DR/vRcVkFX6VmShwrkoRUzRlH48k21jFvXIFqx2XfP
         pxWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=ds+yDlyVjybdin7f83dyTCd0MUOnW1rqJpaXINk50aY=;
        b=QCCXBl5rpDszrfDjnj4F8URfccEDMS/Su+XImD1sJzuigFPXEPjYI47Whgj+VNSCSQ
         Q0DSooZYweUvf8j1K0KPRDMXiR6Gfx3c/MMovBWJvSKYtSu5oMknCUYAGZEoajbVAAZ6
         YHK6J3ieL284BHhnK8x8w2On1gZc59kcsm8o4mliQzqga5yNjT0YmkxyKotr9dTE8ARJ
         uyD3FiLe9CLgL30zN72jVZ46J6cI1j018FvjPGFLiszDv2dMHs1hzoWAONo7IwRHHTCl
         k2+23VcJQ2BBzrqVtbNJKsZbRo1O5DXsAgWvlZHw24ASP/36+AbfYn8/IIOvKSbaXHv+
         ihtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gXAWs6d2;
       spf=pass (google.com: domain of 3hns3xqwkaoeqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3Hns3XQwKAOEQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id o6si2292698qtj.3.2019.07.23.14.24.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 14:24:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3hns3xqwkaoeqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id h3so26775401pgc.19
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jul 2019 14:24:47 -0700 (PDT)
X-Received: by 2002:a65:6448:: with SMTP id s8mr78700016pgv.223.1563917086436;
 Tue, 23 Jul 2019 14:24:46 -0700 (PDT)
Date: Tue, 23 Jul 2019 14:24:12 -0700
In-Reply-To: <20190723212418.36379-1-ndesaulniers@google.com>
Message-Id: <20190723212418.36379-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190723212418.36379-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v3 0/2] Support kexec/kdump for clang built kernel
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: peterz@infradead.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, yamada.masahiro@socionext.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gXAWs6d2;       spf=pass
 (google.com: domain of 3hns3xqwkaoeqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3Hns3XQwKAOEQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
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
CONFIG_STACKPROTECTOR, and CONFIG_STACKPROTECTOR_STRONG flags via
`CFLAGS_REMOVE_<file>.o'

A good test of this series (besides boot testing a kexec kernel):
* There should be no undefined symbols in arch/x86/purgatory/purgatory.ro:
$ nm arch/x86/purgatory/purgatory.ro
  particularly `warn`, `bcmp`, `__stack_chk_fail`, `memcpy` or `memset`.
* `-pg`, `-fstack-protector`, `-fstack-protector-strong` should not be
  added to the command line for the c source files under arch/x86/purgatory/
  when compiling with CONFIG_FUNCTION_TRACER=y, CONFIG_STACKPROTECTOR=y,
  and CONFIG_STACKPROTECTOR_STRONG=y.

V3 of: https://groups.google.com/forum/#!msg/clang-built-linux/GzThkAkZqqI/J727I6vpBwAJ

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190723212418.36379-3-ndesaulniers%40google.com.
