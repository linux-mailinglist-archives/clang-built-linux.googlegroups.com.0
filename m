Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSXFRT4QKGQEXF7DMMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A0B233A00
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 22:51:23 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id 7sf6706367yby.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 13:51:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596142282; cv=pass;
        d=google.com; s=arc-20160816;
        b=H3CM3k3D/2evx1atzYA0R7tCr5FHcRkbtpncmtqMQ1jEYwsZ+QI2p64rWP0rj91/Y2
         DJE1tzp5Y9ViSyEwnqqHUFffaDkd0bs449U1ksxg0iQeu/BDxasuoW8s/ZwvdKMjUd0a
         1c7p7AThXg74Ulj8PqmxJews3D6Qo2e/ixH+EXx2TFhgz3AOL00mj8LMEW1QIBLsTlj0
         zE9giptN26y9hHo+jIdNLyZo5v5wSVUqqMotMuv1maT9ajWTYIY6/VRGRJgpMbAIe0Nb
         pI/j5hOtLA+aJnalia+naP5P9jEMprnyjahr28wTxUt5AIe1AvbBmUxdJwVKDkfoiXf1
         x6Hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=LZa89+hYXa/pkU6YTkKVuxGLD8Ue/j4SV+TkgJJUNWU=;
        b=cvCdPZ2prB3bhgYboKEp+tVgfSkmEmHZe4waTjbp0HN80W7bOgBJZ+JkTiXZrOcxFx
         7R+wH67iyLvxxXeIPPVxxQOJZnMVdzk/loOeMPZZdwbGaf6C/sZd90aeAAHbP7gZPeK6
         8UOS4t9MxsNRZt5vNq/HC9oQzh7EpBzk93ypK0r5POZ+z+XgbQii3PLbr5tjh2PBAGy5
         QsDykQTSh/suaSKi/yvc2FNDpYNThRg1O+LUGBkmzF/Uy7V4pPQVVCUWZHCv+GZ/JNFy
         wJV+BROPsi6jhAZ5aQlwuGNGHhi/Xk1/yktPnBHE0bx9OL4dsTZKrrlmnrS9elZh/HIV
         mQbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="WS/N+oLb";
       spf=pass (google.com: domain of 3ytijxwwkalosijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3yTIjXwwKALosijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=LZa89+hYXa/pkU6YTkKVuxGLD8Ue/j4SV+TkgJJUNWU=;
        b=s3RCQiakZtK7tBebf746vxa20NTiOwyPuzUfUSOKq2sflT/HHEGXyV2yaP13GA1MGX
         nX62M+qYMiPGI0CKutKA2qehcZwsjhJZgUgHIHTY9R7n6D6XrZic/H/AYUnUMhdAG6Nd
         eTl0OFWE5YMOXkTcfGCqpQFJwA9RnqSfak5SlGlbChM9ipsVa61YJOCdCBCr8oy9RdjA
         bRgIZ5l8NOagmKPi6/ULv17LgKscq5p6hsaOmAA5dahV4y1nv2fQO3NIHRHsFci//UKa
         3DusBtWiPwFfNC0UXrVkh9Z/rAAafb/i8FsdI8YlsEVVXLWHU0LDPeHD0kCzvhN16vKc
         MI9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LZa89+hYXa/pkU6YTkKVuxGLD8Ue/j4SV+TkgJJUNWU=;
        b=BQwQVZwcVIECtXTb0X8AvbD8Q5nCDUT8Wp3YRH1B5OEb9tPU0Pb5Qrj2yiTcMvpAnf
         gVYOUHaybhE2kjbI6cLCIFyRNa7pnxoe1UyzG+q/fG615/+Rcr3EFYICpgeLHi2hDZ1L
         DbfzG/X8L7cNeCUnnsVQ/m+jZKe+bcR93oeSNXHmxWV/1ceu78jNuuUrq30Og8b2z3Z7
         kj0LSiMgocKN4QRQNCJrxa+LMnQGwMddUHbrNPkhsyT9Fl1LEFe/31+ZRRnXw3Kj12i7
         ShvayW4nFIfI4hitzqkfsGRZJVH2YoQkHF9m0CDRcet7Oo94bjfriATqi89Diav/Q+ms
         m29g==
X-Gm-Message-State: AOAM533kgQPG766VMdVVkp54KfqW48kcN1G2X4YHM1UHNcTFKzpeZD/p
	lCJN56ssHa+aXIV/RAMOkj8=
X-Google-Smtp-Source: ABdhPJyOvIcnPeQ+UAD8pRbG0DoLbqiwbqGYJbIFmXoDusXmgvxCr2xCZz2JpfWBxAwdS0joovtBQw==
X-Received: by 2002:a25:76d7:: with SMTP id r206mr1092997ybc.235.1596142282204;
        Thu, 30 Jul 2020 13:51:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b111:: with SMTP id g17ls2740485ybj.11.gmail; Thu, 30
 Jul 2020 13:51:21 -0700 (PDT)
X-Received: by 2002:a25:c78d:: with SMTP id w135mr1143992ybe.497.1596142281873;
        Thu, 30 Jul 2020 13:51:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596142281; cv=none;
        d=google.com; s=arc-20160816;
        b=BuefxDpAyau7UFxkRzhDRmEqtzYWV18uy15RT0+mSPiaMrFCiDmIYKN9ezD3/0x7fw
         r1GCYm/l6bQ3zic/X6DIK3U0wB4LCR3fSupkR900eXQMFFwkONeYPuF7lTgGjlcOBiaf
         6Jxt6D0ZK92Pn/DqS7MNgnj0JdHB//0Cja7FhNOqZl21TZLTBjxRP+topjLYzwGgtqqB
         2/iPdco2BiL/vPN32yEgwafpJSrVkyy+3GpfpA3kz4XGBMXVEp21/kd3sX4Ckzi0JAmz
         stBUHOIbc1mO3AhM878cMEOwNspstiq/PydHn6dlpCn4Iq2AwFZbrK5l4Tc+Da4bLoJU
         QlNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=+8IcRcjNMmg55nzAYWemaonCO3YVJFMOAlMg6/HQqZk=;
        b=iRTktoqEUkin19kU5iwKFhvk4OteRAPSY9XNb2+E6WiBT+ItoGV+ENVCmR97lnPO/+
         ZmokxCTc5y14Ns0I3XNAgn2cQXG9dW3MRwcscFBNE1E7Wz3M2TgW1Zlky3RdWPIgFGvW
         HZp+w4nT2wP5ma8Wb/Xuuzqhn1T9hXSkMWK0g0HOZHbPwDuFITyUcXuqDgm4HptGLui9
         2oLmWoMhEczybIVStAhlBpNJvizPTZzp0VWC7xwDA6MGq742DauzozSsbHbO8/8tcXK3
         LTIsWjNjmOwVRA91Ok9pG92QH1d/YbBllcRlGxbomxNaWY9DN0It6h9Esdzqmb7dlSv/
         r3Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="WS/N+oLb";
       spf=pass (google.com: domain of 3ytijxwwkalosijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3yTIjXwwKALosijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id n82si435963ybc.3.2020.07.30.13.51.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2020 13:51:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ytijxwwkalosijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id e6so18926977qva.2
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jul 2020 13:51:21 -0700 (PDT)
X-Received: by 2002:a0c:b712:: with SMTP id t18mr958012qvd.205.1596142281418;
 Thu, 30 Jul 2020 13:51:21 -0700 (PDT)
Date: Thu, 30 Jul 2020 13:51:08 -0700
Message-Id: <20200730205112.2099429-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
Subject: [PATCH 0/4] CONFIG_UNWINDER_FRAME_POINTER fixes+cleanups
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Huckleberry <nhuck15@gmail.com>, Russell King <linux@armlinux.org.uk>
Cc: Andrew Morton <akpm@linux-foundation.org>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	clang-built-linux@googlegroups.com, Dmitry Safonov <0x7f454c46@gmail.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, Lvqiang Huang <lvqiang.huang@unisoc.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Miles Chen <miles.chen@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="WS/N+oLb";       spf=pass
 (google.com: domain of 3ytijxwwkalosijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3yTIjXwwKALosijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
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

We received a report of boot failure on stable/4.14.y using Clang with
CONFIG_UNWINDER_FRAME_POINTER. Turns out, this was a cascaded failure
with at least 4 different things going wrong. Working backwards from the
failure:

4) There was no fixup handler in backtrace-clang.S for a specific
address calculation. If an indirect access to that address triggers a
page fault for which no corresponding fixup exists, then a panic is
triggered. Panicking triggers another unwind, and all this repeats in an
infinite loop.  If the unwind was started from within start_kernel(),
this results in a kernel that does not boot.  We can install a fixup
handler to fix the infinite loop, but why was the unwinder accessing an
address that would trigger a fault?

3) The unwinder has multiple conditions to know when to stop unwinding,
but checking for a valid address in the link register was not one of
them. If there was a value for lr that we could check for before using
it, then we could add that as another stopping condition to terminate
unwinding. But the garbage value in lr in the case of save_stack()
wasn't particularly noteworthy from any other address; it was ambiguous
whether we had more frames to continue unwinding through or not, but
what value would we check for?

2) When following a frame chain, we can generally follow the addresses
pushed onto the stack from the link register, lr. The callee generally
pushes this value.  For our particular failure, the value in the link
register upon entry to save_stack() was garbage. The caller,
__mmap_switched, does a tail call into save_stack() since we don't plan
to return control flow back to __mmap_switched. It uses a `b` (branch)
instruction rather than a `bl` (branch+link) which is correct, since
there are no instructions after the `b save_stack` in __mmap_switched.
If we interpret the value of lr that was pushed on the stack in
save_stack(), then it appears that we have further frames to unwind.
When observing an unwind on mainline though, lr upon entry to
save_stack() was 0x00!

It turns out that this exact ambiguity was found+fixed already by
upstream
commit 59b6359dd92d ("ARM: 8702/1: head-common.S: Clear lr before jumping to start_kernel()")
which landed in 4.15-rc1 but was not yet backported to stable/4.14.y.
Sent to stable in:
https://lore.kernel.org/stable/20200730180340.1724137-1-ndesaulniers@google.com/T/#u
That gives us a value in lr upon entry to save_stack() that's noteworthy
as a terminal condition during unwinding.  But why did we start
unwinding in start_kernel() in the first place?

1) A simple WARN_ON_ONCE was being triggered during start_kernel() due
to another patch that landed in v4.15-rc9 but wasn't backported to
stable/4.14.y. Sent to stable in:
https://lore.kernel.org/stable/20200727191746.3644844-1-ndesaulniers@google.com/T/#u

Read (or unwound; pun intended) in the order 1), 2), 3), 4) explains the
cascading chain of failures that lead to a kernel not booting.

Patch 0001 fixes 3) by adding a test for NULL to the conditions to stop
unwinding. This prevents the cascade from going further.
Patch 0002 fixes 4) by adding a fixup handler. It's not strictly
necessary right now, but I get the feeling that we might not be able to
trust the value of the link register pushed on the stack.  I'm guessing
a stack buffer overflow could overwrite this value. Either way,
triggering an exception during unwind should be prevented at all costs
to avoid infinite loops.
Patches 0003/0004 are cleanup/bikeshed, feel free to NACK them and I
don't mind dropping them.  They're just minor touchups I felt helped
readability from when I was debugging these. 0001 (and slightly so 0002)
are the only patches I really care about.

Nick Desaulniers (4):
  ARM: backtrace-clang: check for NULL lr
  ARM: backtrace-clang: add fixup for lr dereference
  ARM: backtrace-clang: give labels more descriptive names
  ARM: backtrace: use more descriptive labels

 arch/arm/lib/backtrace-clang.S | 34 +++++++++++++++++++++-------------
 arch/arm/lib/backtrace.S       | 30 +++++++++++++++---------------
 2 files changed, 36 insertions(+), 28 deletions(-)

-- 
2.28.0.163.g6104cc2f0b6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200730205112.2099429-1-ndesaulniers%40google.com.
