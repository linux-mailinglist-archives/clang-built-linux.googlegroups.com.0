Return-Path: <clang-built-linux+bncBCL7F3V2TIDBBR55ZX2QKGQE47HMAJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 154C71C7F96
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 03:05:13 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id c190sf3749980pfc.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 18:05:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588813511; cv=pass;
        d=google.com; s=arc-20160816;
        b=y5l9tsgyY/4rsv6tTNKtYNb1xbQa1RkzbttNkA4llCJ5a+nYIdw2ARAz2dsoaw2pqE
         /4WC9wv7igGkUx9ECk4ZXyMyfU97SwYdGFhGHRIDsm3guEquT3W/2aJQCpBGzjMdSkPW
         rdt1G5AlAB3Hcac5gzjg/rqaMsgPIZyTcIs8JGOgpx3J0casnCBmXxzfVW35juEytoJ7
         ZVAnCnPL/uwTpYNwZO/ywJWY18APE3peivEFefUze/eZeB5ZNjHQlYleTbXCE9STLKxH
         5uVQzsju5rIDGkw+iJG1BlULl2irSo3tdhnrUiQUiBoTf42d7LUkHjocmoGa/tw5BH6E
         YvnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=Q1xL5DDw+tlCR3wiyhL8B9P4KQLJaqjpvJDumFgRLAA=;
        b=gvbAMGY/lv/3uLkdcoiX3ebdBTNudum3dwTmnkOtRxSDl6nmTKvPNIGD+QTZBjSevl
         CGcu1Zj8keY3lV/L+MvGHEN1xHP2B6TN2x3TN+z9ncFM8JnFqf9eJvr3T5msiQG42nWe
         ztKTJ2quTl2WnFA6EuVDhd7C0KQMQMhf6clY2qcoYFt3jEbWrXKOjd+RCY0biS7rIppk
         88HzzDJtxxSXviL0MXnZB9mu/qzLWuWhkJk2opaDAqi2inPYw34Q6iZe+5LBi7zjVhqF
         FKiKXa3aqtg41CjbdebL7jlhr38GYK/BOOqjqKAuPp936+scXVBkoNnZAC1d5vKkOt23
         D7HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@cs.washington.edu header.s=goo201206 header.b=h3+IYroj;
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q1xL5DDw+tlCR3wiyhL8B9P4KQLJaqjpvJDumFgRLAA=;
        b=k3s2ios7E7sB/8hrtbbZPt+SKMS8W9HKQwkyOjhDK2blyi02PU7ykJNHmOkZLKUVSn
         VGfjE0fPntm4GqeIo8E+Sk8KDDbRMy7ymfUg1woiRJxU626uBHBCBzUkxEWF7YFZMnhw
         gSXonArifUUd9beSZ5dvNNKJL1JpofnDSjHrUGpHvTYqHUUQNVpOG7Htu8IZPu1fpM13
         5G0+EFcXfa7JBW6/7RxyM27W5f0z0S8289WsrzaMFyi6FsA3SH0HZvY9/A12KBg/esTC
         iM2aejCYiIYLlNUGejxk719oybk1KuQTEmt5bEgUwoEup/DQP5jT95h0mZX2Ms5zUhEH
         Wp5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q1xL5DDw+tlCR3wiyhL8B9P4KQLJaqjpvJDumFgRLAA=;
        b=Iv+6na2dASL06poyMDQpLuk4FS3fggWxQ7e3cx1K3MnRDwUAh7tO1aJM5QaWDY6nKm
         UFnc3R7RwiBAy6K+Fx0FShOlzX6q2itvvM42MMsmOVc8CCGYhU4/cXDT6mix3mCFX7Pp
         w1yV5cDWFaCf3fQLFnQoqZfGxhxqrM3Kz/09xKdZ3YvMfTFGrPYUgl0YZQ4C6GLO38uh
         WVJAsG+up3M6LQYZDMk7eZbB4k17EgTJ7wdB7uNaDUV3wI6lwv6rb5gFHHEvvpFKQyJm
         ojdaUaXNNtzfuX78vWqGrOKIJXJHIgVveDByIGSvgJIzeW1GZHnCbOqiUES+LxN9xzhL
         8Srg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZPMUyAoSnEK9wwCjdg3bWR8rzoITh1BRGrHHdYBLYPZyoI7tZR
	8Rs9YtoE2NkRwHE9AExfPwg=
X-Google-Smtp-Source: APiQypLOHcOBqlgS0hFx13myK0BCc3ldn9a1XaDJEUUFMi5KIgxp7nPyjGbyl9nbbNxuo5wEvR9SQw==
X-Received: by 2002:a17:902:714d:: with SMTP id u13mr10809723plm.93.1588813511464;
        Wed, 06 May 2020 18:05:11 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7143:: with SMTP id g3ls6285815pjs.0.canary-gmail;
 Wed, 06 May 2020 18:05:11 -0700 (PDT)
X-Received: by 2002:a17:90a:2149:: with SMTP id a67mr12920378pje.43.1588813510948;
        Wed, 06 May 2020 18:05:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588813510; cv=none;
        d=google.com; s=arc-20160816;
        b=nlLK6mlF6FTcaIGcRj/LYQTszcklEyC5KKNVI2ogUd9TloejRMtvFjw7jF/8Fs6Fhg
         qKfDy2z0BV+uVakcWJT2M6z6szOmhIFN+ll1Ho8SgDqwKlGWy3A/GCWkMWF7wUcy4Ruh
         GQgqGEfNUXnxKSr1daqNnYtLcvo4aPxi27kGBS67LMWF7FvGU9PAyRZ0gp9Nglpso0Qt
         QC3M9OQ4WpjAnkm29oW2w67t7vmiPvLe2n4pZC2VdsS9oIcftxw5qhMoAaYpWcEQK0S0
         mJ/iGnXpv77BjhZFNe9Lrv0Nt/5VmcFNi+n3Fz9Hw2ypM+YjdiOhoC6i295TW/8BYPdp
         M8wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=fDAxUkCWnLLNYKyqcom5jHpqbxcvX3Nwbyo0Ip8LuRk=;
        b=qmJfiN5Yswd0tFQefAbLQk1Tbc3FZj3w3+qo8loxHWDZYkpSycyiZytPDdVVXNaQpK
         oNSFb/m2fQ5R91QAfcTxh3ztFGvmybOhcDK2Vlqaa3uuzun8kwhQwu8JZ76W0OH/Etoh
         XxO+TdHR7UHiVNzZeXjjM3xa2PoDCzPBDunty5Aref03lgAXGIKV1zKLh6kkkQb+7UZV
         Qy1S5Uh9h1YwOhWrcSDTEAd0Lq13yWn4MIh8isy77Z14ZgDtmRPWVeoGHhqp9N8kGCzo
         aQ2Dme3xICDzIRIbW533E/PWaKHPd+CbDfB8FqiN73qMBEbQhWFsD12d6wBjunr5wnvu
         GHpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cs.washington.edu header.s=goo201206 header.b=h3+IYroj;
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id ba3si315856plb.1.2020.05.06.18.05.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 18:05:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukenels@cs.washington.edu designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id a7so1859076pju.2
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 18:05:10 -0700 (PDT)
X-Received: by 2002:a17:90a:d153:: with SMTP id t19mr13166154pjw.42.1588813510513;
        Wed, 06 May 2020 18:05:10 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net. [73.53.94.119])
        by smtp.gmail.com with ESMTPSA id ev5sm6165250pjb.1.2020.05.06.18.05.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 18:05:09 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
To: bpf@vger.kernel.org
Cc: Luke Nelson <luke.r.nels@gmail.com>,
	Xi Wang <xi.wang@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>,
	Zi Shen Lim <zlim.lnx@gmail.com>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	Andrii Nakryiko <andriin@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@chromium.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Allison Randal <allison@lohutok.net>,
	Ard Biesheuvel <ardb@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Christoffer Dall <christoffer.dall@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [RFC PATCH bpf-next 0/3] arm64 BPF JIT Optimizations
Date: Wed,  6 May 2020 18:05:00 -0700
Message-Id: <20200507010504.26352-1-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukenels@cs.washington.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@cs.washington.edu header.s=goo201206 header.b=h3+IYroj;
       spf=pass (google.com: domain of lukenels@cs.washington.edu designates
 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=lukenels@cs.washington.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=cs.washington.edu
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

This patch series introduces several optimizations to the arm64 BPF JIT.
The optimizations make use of arm64 immediate instructions to avoid
loading BPF immediates to temporary registers, when possible.

In the process, we discovered two bugs in the logical immediate encoding
function in arch/arm64/kernel/insn.c using Serval. The series also fixes
the two bugs before introducing the optimizations.

Tested on aarch64 QEMU virt machine using test_bpf and test_verifier.

Luke Nelson (3):
  arm64: insn: Fix two bugs in encoding 32-bit logical immediates
  bpf, arm64: Optimize AND,OR,XOR,JSET BPF_K using arm64 logical
    immediates
  bpf, arm64: Optimize ADD,SUB,JMP BPF_K using arm64 add/sub immediates

 arch/arm64/kernel/insn.c      |  6 ++-
 arch/arm64/net/bpf_jit.h      | 22 +++++++++++
 arch/arm64/net/bpf_jit_comp.c | 73 ++++++++++++++++++++++++++++-------
 3 files changed, 85 insertions(+), 16 deletions(-)

Cc: Xi Wang <xi.wang@gmail.com>

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200507010504.26352-1-luke.r.nels%40gmail.com.
