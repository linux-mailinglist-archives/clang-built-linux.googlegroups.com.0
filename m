Return-Path: <clang-built-linux+bncBC2ORX645YPRBU7R7SBQMGQE2ZC3WKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3B83660D7
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 22:25:56 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id z3-20020a67d2830000b029021f3739c660sf3488339vsi.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 13:25:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618950355; cv=pass;
        d=google.com; s=arc-20160816;
        b=wRUmE/KwW3QNLqr5qwokM3Bh8BpfeLXfpWraBqYj0A7ma/vldPyZ0osNchDEWyhz0T
         CVSZsjqw4N2bcHxifGHqHxOu48CUQP4apr6/7Ga/e/42AHZnlUH3kP3PQ/VXU2ejnVx3
         EwdSTh5G5RwCzIN8NN9zSofcZ2lsNqHRJfzucvmwFVw9OYCBqPNIKMjAoYa+ou9U1X/K
         nKZ/TGE3DjTcNmS2/G8Cbb4PYXtW/mHVcnia4CT4y4QSS7t5cjGkrmIpV+Y+Q1oUfS00
         gCbWDQx84uKfdT5PHb8IMwXW729iHw710Pp41EBcBTMD9qdF+kzv4mW8Rlhoz+SzKaUR
         8iUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=f0kuK/rAwIB5hWP2Vtib79gDvbBCpuS1gW/+skyrirI=;
        b=JWHin7Fj7+QXEiTuhtPpiN3HJj3dYXenyzpoM9SyX2/a4A2uj7oZCwCMsR9+tSBVzb
         gWT4sbtdEUTZ5cXm4oxLdrkS4uitU0uJYwYPOHpGY8PlBMHFiiBHb12TJZIkxdAlEBqy
         vgrOcTRSklFzIMaQZZpfECxc0ZMlCgvT+ZAxVFyUqE1+uLseb4tJ2sEYJFgM9agElhq1
         JSvM7cqjEBw4gCpYeWpmq5PhKx874EVN3eWuJ/H0QTGLBAQb2FOOwqa8OhfIRBLt+IpP
         X6l51T6vf0Y1HA1j4SFRyLUvuUxjC6DW2sOycVh2msEbHfGu8ZuwyjxoLV6GnsdEKqz4
         t/Sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Py3f40b0;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f0kuK/rAwIB5hWP2Vtib79gDvbBCpuS1gW/+skyrirI=;
        b=gBWWy5ilm1HXmgdieXh/Q4Tx1ZYJBbhUu7OxQbBxxEIh+8d7D3aS3M+sk37SYYGOs8
         AKUfxxvxQAYtzgQxT3W6WIkAyGKyOSygO+/ZrU0kE0AksufmOUgX4WIiN0lDsq/0ZACo
         9NnN5BmkpOnQrwl1VFlBgjPW0UOtftxtQK62qhGWY++znsI4HnG6B2jDWnnRoxJjcqh1
         tqahiASCnDWyGDoSr6Gg7Wcbt/rCgjp+vnTnYEXyNnwwB3TvOf4hmnhyz2KlM5BdxART
         3+yBNPYHHOFpBpEqEmuafdcpcjajpqZtA4AzqF40GABYzLtVyQXn+wkk5Lw06lkIkjKq
         +utw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f0kuK/rAwIB5hWP2Vtib79gDvbBCpuS1gW/+skyrirI=;
        b=QnB8ezNT2sY8NAbf5KDc/9gJDh3WMvhJHlsDZ1+Oz064h8LU5+EOo/QaqcEwYcPF55
         cgMqtqyXSZXI8iRLWo6659FYqWDH2LS1+KkUFT32jlTScum1Ra6yF85pA+BPDlnUxZJE
         ql1DKzsXHeJorl015y34F/FM+baYHd1330KJXx32UkpQSZmM9QXxNyiDC+hBnQsDnOy2
         rvOZWdzzCytVpO7ADEaOlZ5R6SoknKlxzSYzAFGfTQkYkPECKPi7nW8dl4/wRZs56vYu
         tjcqnOmJCeFmbC6mOu4gfKwOMBpWjD6xUwyJ7ubRGPyeG7avl8vGROVuea6y52fBT00E
         ualQ==
X-Gm-Message-State: AOAM532mjOoPwrLv/mTNhCRC7M37U06BinlgULF+LAQW1tVUrJ48BPBL
	7JBmbCMPHzWSQTAI2EnyMDU=
X-Google-Smtp-Source: ABdhPJwWPmwUBjDfaAZF+xX6HSnNSRzO/0g8Z9yBBbpJXCCWk+r6jbuzInuNmtATn+hEWGhArZAteA==
X-Received: by 2002:a05:6102:104e:: with SMTP id h14mr17854304vsq.38.1618950355308;
        Tue, 20 Apr 2021 13:25:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:37c5:: with SMTP id e5ls2161543uav.9.gmail; Tue, 20 Apr
 2021 13:25:54 -0700 (PDT)
X-Received: by 2002:a9f:24c7:: with SMTP id 65mr14155274uar.119.1618950354847;
        Tue, 20 Apr 2021 13:25:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618950354; cv=none;
        d=google.com; s=arc-20160816;
        b=SaLiiArrM4KCcEyTR2q5rMOC16v+fT9q6CvDDnBVZ59xyFuJMu/Xs6qhgaNJDSlFx9
         YrekYm7OHopu75ahwdQn0RFcbvvuQB+QZ2RWPU/gklEx3wjxaFkVi1h4lWTYEzyKt/xf
         evKmBJ7SXf54n4fKnAxhxioAT7JV9scPcICF/g5sFkwfxdexI10FW3oCXKOGPesynopg
         giLCY9x8TwbbqZJIFP88/L/FTIaealv56MkHQgQvfdsnUQjMJ6GuL7+LePKhhMJpz69a
         wDvi4rx5RMIMMHaSzugGYJJxaZ1WQFAq2TVDXzWozcKvYhdYy3CbxBHc/gO0ge3kjYcS
         nEDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6ZnvC7WqtbGWJJ90rcSCNfd5IgRs5WT1R+r3wLlKOvA=;
        b=IuQ596/Jx76eC6JisC9syRMtSqd/d5dz31sFXHLxqIUMr1YPAzJwvFJWUdjPJuCGxA
         pmpejT7zxytDFsnyl62EK0qkB5a6/BzL5ufvFa+vHOmHEIxUllLniuaVAhCTy43FiLVt
         BnAAsqnGOqvdj0XF/kleErw2fOBCBi6tjWJLoqcDFRGCvEXTsH6ekgpV1NGw9wqgUAxh
         yBNlV9GI8oVHU4iHxd5bX8tUog0BfbpzWJH77dcM0ShZ5A0IcgFvSF9i3I/qN3vFUGQS
         Vh9s6uUdecZeIH1//Kzs47evbEZbEP3R+VugxumVAm11gRVaafYqCbqe2itzQGS4aw4f
         YphQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Py3f40b0;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com. [2607:f8b0:4864:20::b2a])
        by gmr-mx.google.com with ESMTPS id h19si496495vkf.5.2021.04.20.13.25.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 13:25:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2a as permitted sender) client-ip=2607:f8b0:4864:20::b2a;
Received: by mail-yb1-xb2a.google.com with SMTP id i4so6981072ybe.2
        for <clang-built-linux@googlegroups.com>; Tue, 20 Apr 2021 13:25:54 -0700 (PDT)
X-Received: by 2002:a25:7085:: with SMTP id l127mr27885350ybc.293.1618950354345;
 Tue, 20 Apr 2021 13:25:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-2-samitolvanen@google.com> <20210420181412.3g5dsyhggxnvif7k@treble>
In-Reply-To: <20210420181412.3g5dsyhggxnvif7k@treble>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Apr 2021 13:25:43 -0700
Message-ID: <CABCJKudO9Ovuih3ieQ70w8y744Cg3tPnciVBhCuuBPuhq4i3Xg@mail.gmail.com>
Subject: Re: [PATCH 01/15] objtool: Find a destination for jumps beyond the
 section end
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Py3f40b0;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2a
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Tue, Apr 20, 2021 at 11:14 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Fri, Apr 16, 2021 at 01:38:30PM -0700, Sami Tolvanen wrote:
> > With -ffunction-sections, Clang can generate a jump beyond the end of
> > a section when the section ends in an unreachable instruction.
>
> Why?  Can you show an example?

Here's the warning I'm seeing when building allyesconfig + CFI:

vmlinux.o: warning: objtool:
rockchip_spi_transfer_one.f088382d97b74759d70e27e891fe8f1c()+0x149:
can't find jump dest instruction at
.text.rockchip_spi_transfer_one.f088382d97b74759d70e27e891fe8f1c+0x7dc

$ objdump -d -r -j
.text.rockchip_spi_transfer_one.f088382d97b74759d70e27e891fe8f1c
vmlinux.o
0000000000000000 <rockchip_spi_transfer_one.f088382d97b74759d70e27e891fe8f1c>:
  ...
 149:   0f 85 8d 06 00 00       jne    7dc <.compoundliteral.4>
  ...
 7d7:   e8 00 00 00 00          callq  7dc <.compoundliteral.4>
                        7d8: R_X86_64_PLT32     __stack_chk_fail-0x4

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudO9Ovuih3ieQ70w8y744Cg3tPnciVBhCuuBPuhq4i3Xg%40mail.gmail.com.
