Return-Path: <clang-built-linux+bncBDRZHGH43YJRBCNARHXAKGQE5LJGLUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FF4F0DF6
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 05:46:01 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id h16sf93505ljk.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 20:46:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573015561; cv=pass;
        d=google.com; s=arc-20160816;
        b=XMK/dwaXRQ5loe1MrbVjo9+0LMTOC7e1aUFzZhyxlfUT6tDVrV1wWCElWKQhybouxR
         vSBf9jjviqAQ7UaZfkoMUUSPlljgV4BHymwIkMNsJdIKgZkDRwVUwjux+sgaAKHcYcNE
         5TbFVbuy3isJu+M0NTZkRZX/9wfCrenESLlG8AGC+/1VrwkT21ct1WOJw7piKyr+ea0y
         CuZos8CGKnpqQZzs7Qrlfasx8E7CA07+hOAyaZLlvRs0EDMrNbIcfDLEd6O6IuKTzK3b
         Fxmqr7pXyzLyOIKy/u9Jw9zDKIbARJKnLDDFEOtIsf991dnFbI994UD6Cj0IKvbY6k/p
         sTPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=RUZXDrb0Z9Ytb+ZoUPdxiCS2ax919/TBPupVVwmsSKc=;
        b=Dp0rZnn6ssImUuV1pf2WYdJVIejWYnJJKLsniPUIba466M4Y944k2ltlmEGFXLqtao
         yc3IXqCDgxwj4JSOZTylGmqWVHXn6bp6vgGfprQ9DUjMSGhHINV+W5AVrynreeUEABWM
         nDQij/APqr7NZN6QdpHQ7do4QrJnMsbWXDS00zTnkqR48KKAJB0Il/wp2BEJKIvFDQeh
         WaoUvNx/m3v8YXQh7vVsE9mIyfuBJhY1/lA41z0tIj9M6YWEkBgDCoq8V0949QIbiRTl
         6TlNU75ebuDRqq+yv617BwhNJp6EBNbcd3Sr4gWKFC6oVh1aF/WUF4r0c2r2wvyKzEQU
         cqWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AGaoiWuH;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RUZXDrb0Z9Ytb+ZoUPdxiCS2ax919/TBPupVVwmsSKc=;
        b=TM+Bn34XMUvFcO1HDTjNiyg7Lzvpcp5Ziid23o09czy+LZaR/EDefy6VRPnoknork6
         UcbEvt5gf9OVphZxEFv3+h4OC0m7Q8WY90ESJvCX/Lvkijx8Za/KJFuO4DQH7lQ8UI1V
         DKAQDQZhhzzuPtSfxyq44XnlQ9pFn5fynaYSONscBwJ0fHLxQ4d0ef2hlQSy+Y1fTEXd
         iHR+SMPppE3kRBEzGVE2pW3ECw5virji0g4k3qdkMIOTSRo3gtRy/hKzOcz2HPKFmvIb
         H8bDwFkJxUvZV0MsMVcRl02VajGonnvR+sOSe5Qxwr6QCzgicW8OSt50n0Yz82u0Udg1
         92QA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RUZXDrb0Z9Ytb+ZoUPdxiCS2ax919/TBPupVVwmsSKc=;
        b=fT4qfe1jnf/hDwGpBgehjpR+iEWqbu/m/rxmQUD9T3sew+na0PBpIdnMzdvAzNlKSN
         hyDPeKaBkXhxE7R1taQ0Gk8Q9NGVNTlO8l+Vp8Zq+abPhEOWSOr4HwjEwQ6rFqT4FcR8
         A1ACxtWJmLtZ4AqieuTz8eBNg0aHNtSL2jGTtEv139i9IbQ5L8yVOzdDcWFn7oEE2kJB
         NJI0m4u/zrBrOxc+ejA0GuNPvYRclZ/+4xmp8d5H2ayXXK9zvDLpWrAlIzmcQ4VfkokX
         XfrD5LyoxTCvTPaSYj8Uk6pNv6LjAvrSFGxgDXlWZ3D8oL4m/zlI+IeRZXiGJnX7Pn/o
         IwXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RUZXDrb0Z9Ytb+ZoUPdxiCS2ax919/TBPupVVwmsSKc=;
        b=K2t4Hk7/yWm67BqPHMUeHWYd8g6Ugt7CVbjrJba7uWAWejsV/x8RwPu36hH1ySk6Gm
         lc6w5cQFD5MXFpqNhw/6pcerakiTv8pDEB0XobhW5rE80aIkEKPbVnU0dFQlVZwrRsds
         XR4jJFi59DEwCDAaiYeV0shW9CjWiuewm8Q7qli+PBUbkJY40vzwEb+DmXDVgS8gCFCP
         DHmpIYwpxUZvDI8lcUx2EUjZYk6/+dML6xNZNvupFWsbAiUtD33EkBzU2vZJMJhxcutM
         LtvA/Wa1/ioRSUkA9TSnX2M/N9Z+CPCNoOXtRWKFYFi1zs3xROVxtFTnoL2wZtVmVEDv
         DVlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXjHRgr3VCs0gJzKtKz920qCiS4SyaHPGVtUjgaPdznM0GR8aa1
	+8ubktAlxb+vzsNlvrP55u8=
X-Google-Smtp-Source: APXvYqxbHQYW0iuRjOeVIDB5m/IRp7wX84HBAZAD+U7ULcFO1CSfl3yd0smVMhruUdX7AOcCxCaP+A==
X-Received: by 2002:ac2:508b:: with SMTP id f11mr7015993lfm.116.1573015561530;
        Tue, 05 Nov 2019 20:46:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:289:: with SMTP id b9ls496492ljo.10.gmail; Tue, 05
 Nov 2019 20:46:00 -0800 (PST)
X-Received: by 2002:a2e:90b:: with SMTP id 11mr236746ljj.233.1573015560763;
        Tue, 05 Nov 2019 20:46:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573015560; cv=none;
        d=google.com; s=arc-20160816;
        b=GJK7BtGtvTBCyJcvBnr5u1RVeq5FmZ3YJpPr9ghB+jZaMZotCUZ6w9UZy4wVweVQLo
         i5c9guIX0wHn8WIg10CbqXazJLWBLpVsQXIhFJllpUilambp+9CkybXLZNG2h43WRQZ4
         Lm74ja0mAt7KUyxQri5LVPG7ktLJv4GFZp+oFsFJug5drvYDRaOzqSuUtTBkHLw/zr3D
         y7QHCFbXeyQBjAjNIVRwWYALJ8vJsF+W02WNjeygWYcJ9p3jRIbsqK+pupRNC+ev1Fez
         mZFfJE1v3GegOE18CScR21906+60tr9PZElU9c6k4A3XucJ0kfugjOhikTynAeJeccH+
         kMnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gJMPHhKHFX8udqWNx4esBxs7+6CjmiT3KwNBEYCiDu4=;
        b=gatHmkACP9LdC7zY9qSaX+vcWq20ysWOt38bG3eIx4EJYyGMId8sso/+Ub9+GPijwP
         WYwpGt2/nsMxCFvVB0UCjF4rE1L536+V7NBeUL86ZZP6vhJuJPD/5xWhfNxG29nI69V7
         KqEZwcIuQG0DaIkwxxP36NGgjHHA1TZpMIFH7zIeZQAqewqVkQe31IikblfywH0Z0e3D
         SYn0xF1ubTg9kMqx35clOAgsr96X6yYVtTjsFOx+KWLXEoa/p/gR0VzRz06G2RYpVt7O
         c7WuE2U6WPbR4trkrti2WqEG/g7Qg8MAUOvp0WBynRSDpZZOvNL3kmgaW1Odo19/5LJ1
         XjAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AGaoiWuH;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id s4si1944610ljg.1.2019.11.05.20.46.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 20:46:00 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id m9so24434098ljh.8
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 20:46:00 -0800 (PST)
X-Received: by 2002:a2e:2419:: with SMTP id k25mr252654ljk.59.1573015560588;
 Tue, 05 Nov 2019 20:46:00 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com> <20191105235608.107702-12-samitolvanen@google.com>
In-Reply-To: <20191105235608.107702-12-samitolvanen@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 6 Nov 2019 05:45:49 +0100
Message-ID: <CANiq72mZC-G_R_RJjapZS+NvkQcrjdiri0NyHUgesFzUpe-MDg@mail.gmail.com>
Subject: Re: [PATCH v5 11/14] arm64: efi: restore x18 if it was corrupted
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AGaoiWuH;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Nov 6, 2019 at 12:56 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> If we detect a corrupted x18 and SCS is enabled, restore the register
> before jumping back to instrumented code. This is safe, because the
> wrapper is called with preemption disabled and a separate shadow stack
> is used for interrupt handling.

In case you do v6: I think putting the explanation about why this is
safe in the existing comment would be best given it is justifying a
subtlety of the code rather than the change itself. Ard?

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mZC-G_R_RJjapZS%2BNvkQcrjdiri0NyHUgesFzUpe-MDg%40mail.gmail.com.
