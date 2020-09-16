Return-Path: <clang-built-linux+bncBDYJPJO25UGBBI7URH5QKGQEQ3KRHVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 668A726CCB5
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 22:48:36 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id t11sf6735575ilj.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 13:48:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600289315; cv=pass;
        d=google.com; s=arc-20160816;
        b=n0NgOF2mO/mfPxNVQ10coge6yXE9t6BstZNq7ffTPE6/FOe8pyXjtr9Rs7jYE5inJH
         dnLdFdUY+QboAFrb5u2GLmtT0duUK392CuP1Xp3cUtIWB7WF4Rxxw411L/rmQwgd4tZF
         4qzMF7f//A4jPYzAmMtgTD1daZ7Xe+AmowE9ctbWPv9lus2BycxWYO/Mr0/N4qqZCyNq
         H2ZjdzvvglbdfnvwuJwvVZv4Gia2DLeEeQcajH8T5GXYghmDxV/4Bo6Z5mi7uTjMRGkH
         7L/rd0GsGZ5OS1DeAN9JcBJ3+eFfcvN9HHM93QwSeyTRtK4nOWPNdCY09tlyxwjo+KcY
         RJdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=qpSpcFGHNWwYVq6GrM3Q9VXGnfat7J1bY378oL8kgW4=;
        b=sJy4eaeKY6gJi/uy4+/rq0RP/8R7HWxokh394oOf3PHoQdqOpDJHH03hpvE2orF0b5
         /bFcnKfxKAVCW9VMtxTghpLmUh9s/3uNk3p/4Dx23/ye1gC6UO/M3iDT2NbByk7wOcaf
         TROFV3+ZS0A6tzNpEDF24JUOFyFNevz54fbQxyaLXcsKx2b7vR1SMUfHcZQMDVhC1lSB
         YHECEA2y3IxAGpapvBP5KFgQzAHwLBbnq1vnCfLXF2B029Vr5fli4UMq+s1TG1Qc1UQM
         LTDfCDi0FHgWxQ4FmTVpWwn53gEAZL1umoigQle56SWhhv1ouTnkwHiop+uoKb7CU8B+
         znkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ifa6dtsW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qpSpcFGHNWwYVq6GrM3Q9VXGnfat7J1bY378oL8kgW4=;
        b=IWoZ9z7FBJUvIKqfejnJg5ozcmyCOJvZ579fyVb4LEnk0JmsGxJSrLJph9us1f16R9
         sio6niCYnlH4DxrGMLFfqDWY1ZGW9HPa8AfBWu/3tqxRIFH74I93e6x+s6AoMacZW61x
         vVqoZJuraBorRkxcgBR0BnfXOz3tVXVUZHsADHVwNu2UgCWmKz2dOvnn2dRXOwF8BiK9
         C43gerHT9kFi7huYU73mFoyk4xJSKxcQjL/L+947iZNhn7XUR3SiWyUd0feP5YWCXEw7
         c3n6NkSgx28oHzW2YMTNac5RD3WWSVpw29WQKkIwW3FJSca3J6816gUKCu8iJxfoBifQ
         3rig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qpSpcFGHNWwYVq6GrM3Q9VXGnfat7J1bY378oL8kgW4=;
        b=hFlnXVgxHe1P6sOQ8tSrdA9JRScSiCSrKWTEh0Hbj8MEfmSrWtp5Ac3j+AlTAT0F/U
         r1aj5fFmt3fcgnHBIVVagPShOTEDxBqYlBYGgWP7PCKGywzIBl2hclF1NxuiiwiMgnXL
         +BzzkRk7RYcfncccS9eXhBh7bq0/GIaHWJvgS3DK/0pgGJY3qB5dh1ETSx1Hsstf8sLQ
         ngdjK4lcglJi0GegsBY6S8RQsXkj54eOFpmxXP/3co4HLb532rkhAxPYmI4SGwuwtseS
         ui58cI/qiaz4U9UJHnBHPf2fFm/JxtxZQw78I6dCJzW1BBeqA5XznulJ3xRERIt+Ttfw
         v7Hg==
X-Gm-Message-State: AOAM5326R/sJ14dP0aTm9vNMmewIXfHalT46IygLVVW/5fSxZfVJeBJP
	xEUYUs/DWeJJl8F6gmxOIgM=
X-Google-Smtp-Source: ABdhPJyuZFnwr6jhz64yg8cOf3Acp5a/gPhMqazHXAr0m/NYHM8LqFyBi6xJK9IjpJQhi+jDprYKiA==
X-Received: by 2002:a02:a047:: with SMTP id f7mr23299878jah.31.1600289315457;
        Wed, 16 Sep 2020 13:48:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d848:: with SMTP id h8ls19008ilq.7.gmail; Wed, 16 Sep
 2020 13:48:35 -0700 (PDT)
X-Received: by 2002:a92:7f0f:: with SMTP id a15mr22032029ild.186.1600289315123;
        Wed, 16 Sep 2020 13:48:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600289315; cv=none;
        d=google.com; s=arc-20160816;
        b=c8PfJqBiVTvQ1PFjRpv3i33D5FC3AFfwrlqKpT2U+8QApStYtHKofCLajdjvMtuor/
         NOKrWXY+V0qwCKNTUdFlRKd/s0/77ga4kyEA3vU4sl+vZERVUGAf1mG0yGG0/5luZAiK
         pVahtkrK9QwIBAV8VSIgLTMOWkIHNjH8NfSDZTM1qIDj+QRDiSLa0cAbFR1+x9zBj3bL
         VnGcr+v117T0tcHXprjB3JZQQDeRj/5pGjMPgOeQ16skiJjS4gm1QZnCzWS23/65KIB8
         3gNji7qCU5urzhj2TWfi6pOg5OhUb37B676kjY1AgnyZZWqZBSOAthZecGnIYfoXn/rK
         Ii3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=uPX6rKTdxLnDni+VW8OY4PDbBwwIGPh/qDCu4Axfn9Y=;
        b=HzJbdUSvwHA2EuxFCaDZfoTWNgHF47xyqRdvyaG2PAuyXq4FuTq6M6fYo/DcDejhaX
         i7BeEOAYq9Za6gPWH0jDOS8bIRMSfNd/gE4LBZLeQXKB5lw8fgSMixxUOIRXK1Rk0YkS
         dAc9dDPEs2ezZm0dWc3uc5dgYCaSLvrCwVTd/Td7VRphWW8+OmhKR+UHiEz0X3cXMaGp
         NTBQgYqAgbkBr0jgmYMwiG2Yi574Ko2/uqTxhCozEBvcqWCEtuT+o110S0lJVq8ErcrH
         55FHHZH3/mfaAz3RJElTab6C/GtjCwZ+7lWaFaoToSv2zFUCzZ7PHg0S5SmDYkGVtEHp
         HrYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ifa6dtsW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id c10si213334iow.3.2020.09.16.13.48.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 13:48:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id mm21so70875pjb.4
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 13:48:35 -0700 (PDT)
X-Received: by 2002:a17:902:c3d2:b029:d1:9bc8:15f8 with SMTP id
 j18-20020a170902c3d2b02900d19bc815f8mr24717552plj.29.1600289314507; Wed, 16
 Sep 2020 13:48:34 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 16 Sep 2020 13:48:22 -0700
Message-ID: <CAKwvOdm4AQhobdkKT08bjPGb15N58QN79XWxEaQt-P5Dk4+avQ@mail.gmail.com>
Subject: GPF from __srcu_read_lock() via drm_minor_acquire()
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Josh Triplett <josh@joshtriplett.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, jiangshanlai@gmail.com, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, rcu@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ifa6dtsW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102d
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

Hey Paul and RCU folks,
I noticed we have a bug report from 2 users that seem to have similar
stack traces in SRCU code;
https://github.com/ClangBuiltLinux/linux/issues/1081

Is there a way we should go about starting to debug this?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm4AQhobdkKT08bjPGb15N58QN79XWxEaQt-P5Dk4%2BavQ%40mail.gmail.com.
