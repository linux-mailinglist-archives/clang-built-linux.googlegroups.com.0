Return-Path: <clang-built-linux+bncBDEZDPVRZMARB34AUSDAMGQE5CCCNZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 7456D3A898D
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 21:33:04 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id n129-20020a2527870000b02904ed02e1aab5sf21457152ybn.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 12:33:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623785583; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZuRLk492R6r2tlZmv7loajziuv1K7Ww21lc8LO1TqoNQrNbXT67lUCJaMVOmW/kQBL
         QLzT9k66+D2vS6pgQgOblnbV0uGOo8s7qOlr4fTzt4E9pwf2d2kNcx5T3tvbm62pHfhC
         +UrMP597pmCpuY6h3uvoPTUJQDTLwNexB0Wl401CALA6ZDjaGBoPjnZDgM1BcjsZY0EZ
         e3UNTeq32p/eeY5tFY1TquYOzRpzXDX+CWaqOM9bwdlgk8HQ8zDCl59uarQyQyiXmnsO
         BvCjadvhLtjifI5RRTo9tMPz4VtvkSe02Zo1u/SwYOwLhEiflrnUtRixm9IcV2kSQwkh
         f79w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RJBc82K6cRZA/c5fgFgnkn5RNK0K/hsAUxX0C1fcpwg=;
        b=WTf5q/7Yhx+2D5ppaYa+n2d9guX00+D1Lih+Jxx/UcHc1zVuuYL9sm0Wz+EJYx15EY
         fC6IjEhoyrZP1wvz8P6BXYzAlus/St7KpSTtoiJ0WjP6I77AAY/tTpZ2d3a7FpM7rvvn
         ztoh/oLfSfDHW9sE4gq1hN2+VofcMfrZH22QxpjdKkxYeQEzj6lp7WpkQztS9vMpHsDE
         uNu7Uf7lYt9K3CjOGNhUNQqtqMSC7MwPPBY8PAXz30s2cU768vIRwRrWvvtjlvze3A2d
         rayCfXGJCazdilvgPHDvRpichDwwoc3RhHe9uo8Tvk/F9MpabWDfd7IAbBQon2qcKoyC
         WFyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=s+556g9O;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RJBc82K6cRZA/c5fgFgnkn5RNK0K/hsAUxX0C1fcpwg=;
        b=bDOvr/vy1yiZC55/IqcEggASzngXeHYi1D1Jc2K1UDj0UGvDZZxGawjYrBS3n16FhA
         sA5MElkC2ZtlUg8bsqK2hqiBI6tCCnmUUq9PMyLZf4LS9xP4XEJEduXXdCdjCpXdriDd
         nYm/jcEtBJz8S+qocc+95JoyzTfcdv/DcPvEVeIm5XAjgYt169CuEvAwuizsSsDhhAye
         yGT57Lb254BfLKYYwAtliUTHa0ATcH+iNbS7GD3gZHbyJAzcaUoaKwz7hiAWoGkCnQtF
         8rvRudWxdJXahB2MXCupN8OKHyg+snLQp26zfuDaKNBbc4sYDXXLH+sPTdBhG/h9ZKZN
         h+uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RJBc82K6cRZA/c5fgFgnkn5RNK0K/hsAUxX0C1fcpwg=;
        b=nj3HUoc4DcRKuTAba/laOqReri56LVrV/rc6E+4KjUDZ3jZ/L5WipIhL9R/JJteYuY
         tDCyOE08FgJWFwZHVXNrwW3rrqxlVOk49XG9WqI8h87/lh9/agco4XcGf2eD981AT95W
         CsG7FxjNK8rhU63qMCB41gGoTyissTEB87T/rfvAV4eZNVYtiltKZduldKa05+mhgd+L
         Y7nDZ3TFzEgLsItdnyabs9TW2P/v6WJLVJnwm2xdaoBPBzbX2/SJ61I8ODw4JogmnDql
         /XIVAAERi2CsoIjD/wPgfLGPIOlki2lQibr5RZ5U9Bhfa1ujnel+ZASfAratX05D/VCO
         xn7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DhmOaODGgzh1Jfo9NyBnpBvc27J2gdIrVWO55h8qmQImMFRtC
	rlS74BPvrtI6E7G0150zAIM=
X-Google-Smtp-Source: ABdhPJzjBBI80EhoF2Op++SUi33zC7NjV0LBz1tDcrozndr97ZcHXlT5JgA/Rx9M0d22KrfQR+zJ4Q==
X-Received: by 2002:a25:3882:: with SMTP id f124mr1043875yba.110.1623785583482;
        Tue, 15 Jun 2021 12:33:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2787:: with SMTP id n129ls9951ybn.6.gmail; Tue, 15 Jun
 2021 12:33:03 -0700 (PDT)
X-Received: by 2002:a25:764c:: with SMTP id r73mr1121759ybc.271.1623785582995;
        Tue, 15 Jun 2021 12:33:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623785582; cv=none;
        d=google.com; s=arc-20160816;
        b=hAT7YcTUqqZjaw7Va3ODf2zHS5YaM8+33PIKc7nPMiNyHkOQpXdNMNJLlwmLD4U25Z
         lX5xtFhheQKQYSPFuIBp/8ANTXx96Pd/NiwQ8E86MU/dyaedPIynJUUd+LdXHQVJXv0e
         8MH7h05ZAIW7VS534DhTteCVEF8HXoeceBvM89Q+TCiS5nAR1l5xfhVRIUwrncV2C6h5
         BK14h/gPNDZIRTbaz3khWsvydCa2yPhUH5b5CkwdxnobcYh8lRq0WCCNA/U14XpcRpXV
         X2U/R9UboMKwi/vTXEuy5Mv8mKLwTY7S1/R31mMnSsXJDnDxFQTimEsLUIv0Qza7Qifs
         8Shw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9o9cYCs0zHNio05ImrzjlAnZH3CFqgtE2kOdF5LazHs=;
        b=Yht0B5ik6VpoC/R4/tvWrvpwnsCJDvQXuuw5UhjDubLUswXjVfihze0Eua1ydwpHSO
         f9dsqx6zDHlfC+pW5RpLSuNo9d60pFy0ESrPqVM5eU5wMtPLj+lJY573YC/XV4mTIAjl
         IqpFLfEZI1EV3NDcYMf4+kAlhk0dfugVZe/rVGQRmEBnYBvG/t0cJCmcLQC5dtQPPMqQ
         KPlA0y1Pa96atRnv7hsqc6YMOD8sc0lFBtjTiB4ZZKHXbzDCSCIMGyPfYnxnHr8iBGQy
         xAltQff/S55XD+D4C1hRyf1EmPO2KRlNYulVr6iKJ7c3j23ArCziCrvXoq6QGtdQoo8d
         8bxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=s+556g9O;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c8si389860ybl.3.2021.06.15.12.33.02
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Jun 2021 12:33:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9A28D60E0C;
	Tue, 15 Jun 2021 19:33:01 +0000 (UTC)
Date: Tue, 15 Jun 2021 12:33:00 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Edward Cree <ecree.xilinx@gmail.com>
Cc: Kurt Manucredo <fuzzybritches0@gmail.com>,
	syzbot+bed360704c521841c85d@syzkaller.appspotmail.com,
	keescook@chromium.org, yhs@fb.com, dvyukov@google.com,
	andrii@kernel.org, ast@kernel.org, bpf@vger.kernel.org,
	daniel@iogearbox.net, davem@davemloft.net, hawk@kernel.org,
	john.fastabend@gmail.com, kafai@fb.com, kpsingh@kernel.org,
	kuba@kernel.org, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, songliubraving@fb.com,
	syzkaller-bugs@googlegroups.com, nathan@kernel.org,
	ndesaulniers@google.com, clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, kasan-dev@googlegroups.com
Subject: Re: [PATCH v5] bpf: core: fix shift-out-of-bounds in ___bpf_prog_run
Message-ID: <YMkAbNQiIBbhD7+P@gmail.com>
References: <CAADnVQKexxZQw0yK_7rmFOdaYabaFpi2EmF6RGs5bXvFHtUQaA@mail.gmail.com>
 <CACT4Y+b=si6NCx=nRHKm_pziXnVMmLo-eSuRajsxmx5+Hy_ycg@mail.gmail.com>
 <202106091119.84A88B6FE7@keescook>
 <752cb1ad-a0b1-92b7-4c49-bbb42fdecdbe@fb.com>
 <CACT4Y+a592rxFmNgJgk2zwqBE8EqW1ey9SjF_-U3z6gt3Yc=oA@mail.gmail.com>
 <1aaa2408-94b9-a1e6-beff-7523b66fe73d@fb.com>
 <202106101002.DF8C7EF@keescook>
 <CAADnVQKMwKYgthoQV4RmGpZm9Hm-=wH3DoaNqs=UZRmJKefwGw@mail.gmail.com>
 <85536-177443-curtm@phaethon>
 <bac16d8d-c174-bdc4-91bd-bfa62b410190@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <bac16d8d-c174-bdc4-91bd-bfa62b410190@gmail.com>
X-Original-Sender: ebiggers@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=s+556g9O;       spf=pass
 (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=ebiggers@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Jun 15, 2021 at 07:51:07PM +0100, Edward Cree wrote:
> 
> As I understand it, the UBSAN report is coming from the eBPF interpreter,
>  which is the *slow path* and indeed on many production systems is
>  compiled out for hardening reasons (CONFIG_BPF_JIT_ALWAYS_ON).
> Perhaps a better approach to the fix would be to change the interpreter
>  to compute "DST = DST << (SRC & 63);" (and similar for other shifts and
>  bitnesses), thus matching the behaviour of most chips' shift opcodes.
> This would shut up UBSAN, without affecting JIT code generation.
> 

Yes, I suggested that last week
(https://lkml.kernel.org/netdev/YMJvbGEz0xu9JU9D@gmail.com).  The AND will even
get optimized out when compiling for most CPUs.

- Eric

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMkAbNQiIBbhD7%2BP%40gmail.com.
