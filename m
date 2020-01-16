Return-Path: <clang-built-linux+bncBC2ORX645YPRBPUSQPYQKGQECRUUQCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B9713FAB5
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 21:36:16 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id 145sf13689028pfx.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 12:36:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579206974; cv=pass;
        d=google.com; s=arc-20160816;
        b=DnFOiEYW9ThBY1tVMJ2lHW3rqdvHMDwDPeV6kWK302MFEOXOpjWKoVyI47ah9iREfi
         8Ndcg0PDMgfozTIKRmdSIHkFGa0D+cQsShDCaa0tufbG64mRPOQ3yG0h8ABE8xZI2ttD
         Ob3DGgiKer0I7YPO1tWio0wUpLks7Ro+TtgG29vMGCpKyNXv7HrYgyRhDANGaohO8FYw
         oSTLLqfv9yXqQnjg7de6P/LB+HtayrMH33xjuJFUmbJs//idqCquOBGEI8aAkD9RKDdl
         bVviYtDwoH5U/CwjrMtSAYdAQN1Mt5RiNSsUu8dcU4zM9AQKZ8Sj7Jj23Mmt6Ebq8AZ0
         erYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=anfZ5gt9dJivoIo/Zl/bGsgMR6KCH7vkad3t0Ex7aNg=;
        b=fgjXtRU5/FJPu2qA2E7uPVZykjWLDq+Ia1uSKKs3I9tHjjh3azFj7RSOCW9+auUNad
         4M0tgvengTRxqvyloC+YKtw9rfJmNfO5DLQQnqYW1Zj+kuo09ZTlXHfHAmRoqrX9sXf6
         7cEla6G4AUP5WVdFiq2q0hI8matFRPhOXcuhG2gNLc3OqR0jGLA0bmYl14gwW92ZuOu6
         8cY0fswslXh5sOP/1jJu2PJK6m9oj3P+70+ejYLyGJwxEJURgdanlsLo5NxH51DLZc4n
         lwIXKThgqptnr8dv7v8l0zFLi9lm2MwzNEaY1eT14NsBa0kVR/mEsaH3sTMTWW822tIE
         2hRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dryW2bgx;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=anfZ5gt9dJivoIo/Zl/bGsgMR6KCH7vkad3t0Ex7aNg=;
        b=QAjk4mSnJcaAZkBz/AB79iYcysntJgcrT9QSkRxQ5a+E01mzHJkyxcLkN5TtoscXpb
         tNibecxBntkYJk9XnzwceUHxNBMPDIADMzVhRA3W3YqPxxWOuSPvyPK7y9VB5pQb38vi
         8HjgSyaaDtGhkLMR4+IrCVvpM+s6PVLecsbQiGGMvXIbJr/7NNJzPaAjP53EEKCWNXA5
         0jp9CngCMY/effnfCP+6jIfF8X+zC79AzfUG/KriXVRNtj/+urB3YZCPKKU6WjVM1bn9
         mexvkgqjsSLlvKTGHIj4r7kq1/ecS6sf593QF46sqylnRbg/Beo8AmYkrLqGeOJYhyqp
         5vgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=anfZ5gt9dJivoIo/Zl/bGsgMR6KCH7vkad3t0Ex7aNg=;
        b=UsFUrSEYMjbUMFACrZy+NVkiM3V4cHlziRVLzPsr7EGgpl69Gi+1j2aN+WhS4CRTkN
         qoB1ATfm1DXtdsnK8pEfnR6B/VxsZGZ0uj4OL5K/hpe1KjGxIiATDHNCkQAQsbW5J9tb
         8DprKQ0UCzB9zfrcVrsFG0EggUDSd8/Gym5obgHvlvzMJUR1RnNMURbdGz5lXPZXAKpC
         syPFdv6SB6paGkLmSVCj5S0mx7F720qnlrbJPzY5X9b0yU3OAdUZmq9YtOFesqdsJraZ
         Q/8/W+KNMbTNAJJXgOZlh7fqI5vOKmELPJyBuHk+8NMcTVEMSlVMUDbOtwCdo96sAcy7
         W7gw==
X-Gm-Message-State: APjAAAVPAN8BSC3ejxvJ8M35ywdqAAyW1n41o2HKujcoTY1eeN+WiskQ
	55n7hBwvp90rq66mELJBQXk=
X-Google-Smtp-Source: APXvYqzOpEMJJAO1IH1MYFjSbwTML1oQNy06cRtzerL11ZDJSux8oP2tupZetpFQ59Joz/R4YmM0Yg==
X-Received: by 2002:a17:902:b78b:: with SMTP id e11mr35090887pls.129.1579206974570;
        Thu, 16 Jan 2020 12:36:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d988:: with SMTP id d8ls1295441pjv.5.gmail; Thu, 16
 Jan 2020 12:36:14 -0800 (PST)
X-Received: by 2002:a17:902:fe0b:: with SMTP id g11mr14480449plj.0.1579206974093;
        Thu, 16 Jan 2020 12:36:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579206974; cv=none;
        d=google.com; s=arc-20160816;
        b=ZCFJlfvCEYIF2yQhu65JRMzQgTrX3Er3cVkfFWdUor+ad0B+1Z6IEamMvH7T41/wih
         t9sz3eVmmnaQsl1eLnz4mUMFH1fyawx6LOJrLo9IVRESHWf8zSNvsPgpq/x3YSMg3e96
         nco1UerMInnVrt6B1c5N+5GCVkanWQ+qGBsspQWD32o+B+iZq7zsubm5G+BiWMxEuySl
         o4NTJC6wTzl9UeSgt7njdAigM1InHGgmm9KeO5LWBPjGnCRV8j6SSvzA/iBAgpKOJc70
         aIELPGd5d2tkBuLGz5Cd5c3zk0AFvilwh0FebfIJS7suQ8Epn6cib7yv4qghJ8o5ht78
         6fIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RV6fXTo3b3qoT7vSlLu9LZXPKWnKYVEBYLBa7aJ3coE=;
        b=CQc15HFWCgYPQZywSlAh6afVEB5YbuJMk0hcfL+yX/ALccri2dPq3dbTmxD9qLD31n
         MY2CIbEMd/ArXCKV6M4kwdkDIquZTYk/mDnEx6HOfygmnikd6urEFXkgxgFwQA/7V7v2
         mmEtjGbvOoVedstUK2WicYPoZkOI0giYgsHzO4zTfojfPQpSCmbvKinjplBvlnOMxr3Q
         DeZkq1QcEuFvBWELFnkUsVfYfGVdFwwoeex/BLVDcQFQ67IU82p1d0XxNK/h5wqOEnGU
         wurGbzTM9tw2+v9E9p+7WmXPydloysa+wu96SDwC4Eyxml2p2154AkjglRQYpqpfA4CA
         J9fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dryW2bgx;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com. [2607:f8b0:4864:20::a41])
        by gmr-mx.google.com with ESMTPS id d12si507304pjv.0.2020.01.16.12.36.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2020 12:36:14 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) client-ip=2607:f8b0:4864:20::a41;
Received: by mail-vk1-xa41.google.com with SMTP id i78so6052436vke.0
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jan 2020 12:36:14 -0800 (PST)
X-Received: by 2002:a1f:2910:: with SMTP id p16mr18939592vkp.71.1579206972944;
 Thu, 16 Jan 2020 12:36:12 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com> <20191206221351.38241-12-samitolvanen@google.com>
 <20200116174450.GD21396@willie-the-truck>
In-Reply-To: <20200116174450.GD21396@willie-the-truck>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 16 Jan 2020 12:36:01 -0800
Message-ID: <CABCJKudsTFd22NzB9JdzrAo2UFzsfNVtB_zvdRiAEBXAC9t3=g@mail.gmail.com>
Subject: Re: [PATCH v6 11/15] arm64: efi: restore x18 if it was corrupted
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Marc Zyngier <maz@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dryW2bgx;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41
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

On Thu, Jan 16, 2020 at 9:45 AM Will Deacon <will@kernel.org> wrote:
>
> On Fri, Dec 06, 2019 at 02:13:47PM -0800, Sami Tolvanen wrote:
> > -0:   b       efi_handle_corrupted_x18        // tail call
> > +0:
> > +#ifdef CONFIG_SHADOW_CALL_STACK
> > +     /*
> > +      * Restore x18 before returning to instrumented code. This is
> > +      * safe because the wrapper is called with preemption disabled and
> > +      * a separate shadow stack is used for interrupts.
> > +      */
> > +     mov     x18, x2
> > +#endif
>
> Why not restore it regardless of CONFIG_SHADOW_CALL_STACK?

The ifdefs are here only because restoring the register without SCS
isn't actually necessary, but I'm fine with dropping them (and editing
the comment) in the next version if you prefer.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudsTFd22NzB9JdzrAo2UFzsfNVtB_zvdRiAEBXAC9t3%3Dg%40mail.gmail.com.
