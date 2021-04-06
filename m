Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBPNWWGBQMGQEZJIEJAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B8A355464
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 14:59:43 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id b7sf4270324plr.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 05:59:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617713982; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yli58nm5EDLIVWwPRFgm2jwyTnSlUpqsKt0cuXqQOTvfRGOqLhnoF8pCnbbcARYiy7
         wZptdZjoYDfsGZ0V2K2oG7YG4TLir95WvKf8s2d9OW5C2jFJNMM8igWN1rfjHKyTWZh4
         AOJODTE/Q1Z1FZZ+D3xJ1UNg0UpmKgmzHrJAOS6fHYTVqpcVLgFinmhO7v3yg/jYSTbA
         PPuwgcV6UR5h4t1+htWrqITdavhYoFkG5J30bCKjiZNHpN57zb2vO7f8KVsiT4/8LWaG
         dCzijh0UqRb3T4O5obb40CyyRQu1NQL78fEFd9aDpwQvhsxeZoCiVNoGmcmyAv4/BTzy
         AKng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=H2WZE9YD5lnonjnejOVJY2hExcdCEphGEPGPNzJYKoU=;
        b=JQpv0O1/6psO4rXw8S0eoC9EivubFYUvs1BzK/EilR1pQlvoKk0wtnPyRex1Esj7Zp
         Fh4QGOhVt55JI8TlDgOirjPp2BPrxdUAId7PBCsAAcwmV8E+By32BPZR/8oM03hJcgJJ
         Fjx2EnHpGRpHSWQ8564FkfIYu3ckzQGOOldzQtk0GzBIHlteyGttgUDblnKD86xClsJc
         VbXrWxeNVxNOm6OhmJIZPa9QcmcbviakRHXx+CjiOy2xsdAIr3QPeb4nqwG8FHNLD8LI
         QURRH+fJUKA2VLhFia5yY+7shAI2XyCberxI2QnlNCx1/reLGkJjwda7yisKE64ShxMU
         wBtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ced3vzgl;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H2WZE9YD5lnonjnejOVJY2hExcdCEphGEPGPNzJYKoU=;
        b=QzsGhgLU7pSKwHtB5P60oClm1NFYFSqox2mwGzbj1Ax6qCVOpfcDkme1KlngX2v7TD
         QmCL9X3QB4aopUvx8jJA2I/x+vnvi74o9MN8HSvDKNwUon1ejMbZ8CrqO3gohVtpTEbB
         6A044kf3x0cVhJAb0kuJfG0d8pN6xJIjpEFBlyQ2HPd579nVApITbRz2m5k2fx9xcQ2F
         16KnSWDlrioHYoY3xmAu3mPPtfde7YoHlgZrbXZ8S9quHG9VAKb2w/m3qMjnA08bJCGb
         byvwXfe0m7A16PJbdj1mRqFfQD5xR9bCxFZf3W7z8iJRRDrmVFr763ByuZhmNAnNMrLc
         yfsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H2WZE9YD5lnonjnejOVJY2hExcdCEphGEPGPNzJYKoU=;
        b=g5XXGWciJBHpCcPHycQJEBHrHvFk6sYLIO6GAJMqMvY1+LnVSaAY2Mv8cMNZc4iCrZ
         UmXAIyTVi+Xp9ChIq8dfnIqehSSPEdBImtQmpwasGqZvBTCo1m7HpdBa47MwGUIMF4Qq
         sAKgup2/tiqHpbrbTyiRs4wZ40ADrE82yQVJqFj+35n4L9Liv571sxF974QW/XMXvf+4
         7KoSAP4CN5NXlWWyQ7nyebtTHCo8OWE3h5enZ+UPNnuskErFRo/gjN/oLfmCoRbA5PNW
         4gPX6Xb/xvqBZ8WLCX4cQdaaY7tpp5u5FgGS0fNtFlmtHWjiD6GoN4f2LK7fQGf35c5K
         3G0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53115J3N7CZC2m3nLAcYj3VjKSuefAt7LqxLrYlVu+fwqYaCGD5Z
	nu0C5D1HwuyB2IUNgp78YnQ=
X-Google-Smtp-Source: ABdhPJy8KuGM6ThJDQzT7VXCNa0qXq9SZ2LbQCSkMgIi0yIHwBlJXpU3AlPqzQBY3nrzW9ezu/tAoQ==
X-Received: by 2002:a65:6a0d:: with SMTP id m13mr8245583pgu.43.1617713981789;
        Tue, 06 Apr 2021 05:59:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7246:: with SMTP id c6ls9349181pll.4.gmail; Tue, 06
 Apr 2021 05:59:41 -0700 (PDT)
X-Received: by 2002:a17:902:dac4:b029:e6:b39f:7ee2 with SMTP id q4-20020a170902dac4b02900e6b39f7ee2mr28923430plx.85.1617713981116;
        Tue, 06 Apr 2021 05:59:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617713981; cv=none;
        d=google.com; s=arc-20160816;
        b=AtdesrgMg89Anqukt61GEWvXO+zWObWq0ZOzA8ArfsJKbZjkaMqqMAOugO1wN5iqWL
         bZUJCmXPiVQaT6gk2ofGOzwcUWa8/iD1sm8mxJ26+/vxuRiQtFbeqBBqrLMOLR1vdAl6
         Sb+cyeuBEjhssr2I+EGDeOqxHticBS1F823QwLChXvamuaNZm2zfnbcipBFKYBpPZzPh
         da98NeIXBDdMHFnuWT77iCrMbNNL53Fm08MqdqyCSetqsZuocGZZ4E9sTBW5NEpBOPBe
         So7WZ0J2q8XebOVwVMrmz6qE6a25ech9UGgikgIJuIjmuxPGkx+C6qbmLsxRGYnBWLgy
         +ffQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fPrBjvtxYheUXhkYF7v+U90c3oVkUuh9mJguQI4+Am0=;
        b=PfsZU6qQYfvXS4AnanmdoUVALsgTvK1pJV5awpX3MOjmMgDIpvEWqrWVaKr7r+aR9e
         miNkwnjurgh58FwcBOgez8T6lAPS5eAsGP41qf33w5XyJI7a35e7vD1FfsD2ho1pLiPW
         UcTopYSja6UDl2I2X8fRv1bu18G7SAn7EkrWIp1pcRMHdldjk2fDNRNIPYwDVM9l/Sv0
         91E/BW/tsZR0KIJ5467HolOzBBD1mJvWmieiygmvt2lvgkcN0hYdVYScd4HUr2xlmwXE
         sLe1GWrI2DkOOOxo+tOQMQyP3m+WWQ/xQDAvRVficte9JuzqKZQJaNAAWSR5ISGz3fDY
         x7Lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ced3vzgl;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q19si1400202pfk.5.2021.04.06.05.59.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 05:59:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BE367613C8
	for <clang-built-linux@googlegroups.com>; Tue,  6 Apr 2021 12:59:40 +0000 (UTC)
Received: by mail-oo1-f42.google.com with SMTP id q127-20020a4a33850000b02901b646aa81b1so3655022ooq.8
        for <clang-built-linux@googlegroups.com>; Tue, 06 Apr 2021 05:59:40 -0700 (PDT)
X-Received: by 2002:a4a:bd97:: with SMTP id k23mr26482678oop.13.1617713980054;
 Tue, 06 Apr 2021 05:59:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
 <20210401233216.2540591-15-samitolvanen@google.com> <20210406115357.GE96480@C02TD0UTHF1T.local>
In-Reply-To: <20210406115357.GE96480@C02TD0UTHF1T.local>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 6 Apr 2021 14:59:28 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFHm5rqKqku5=WF-NcsUNmWp4Ymxu7aO9=XkD-LhLr-dA@mail.gmail.com>
Message-ID: <CAMj1kXFHm5rqKqku5=WF-NcsUNmWp4Ymxu7aO9=XkD-LhLr-dA@mail.gmail.com>
Subject: Re: [PATCH v5 14/18] arm64: add __nocfi to functions that jump to a
 physical address
To: Mark Rutland <mark.rutland@arm.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	"open list:BPF JIT for MIPS (32-BIT AND 64-BIT)" <bpf@vger.kernel.org>, linux-hardening@vger.kernel.org, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, PCI <linux-pci@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Ced3vzgl;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, 6 Apr 2021 at 13:54, Mark Rutland <mark.rutland@arm.com> wrote:
>
> [adding Ard for EFI runtime services bits]
>
> On Thu, Apr 01, 2021 at 04:32:12PM -0700, Sami Tolvanen wrote:
> > Disable CFI checking for functions that switch to linear mapping and
> > make an indirect call to a physical address, since the compiler only
> > understands virtual addresses and the CFI check for such indirect calls
> > would always fail.
>
> What does physical vs virtual have to do with this? Does the address
> actually matter, or is this just a general thing that when calling an
> assembly function we won't have a trampoline that the caller expects?
>
> I wonder if we need to do something with asmlinkage here, perhaps?
>
> I didn't spot anything in the seriues handling EFI runtime services
> calls, and I strongly suspect we need to do something for those, unless
> they're handled implicitly by something else.
>

All indirect EFI calls are routed via a asm helper that I originally
added to check whether x18 was corrupted by the firmware. So from the
caller side, we should be fine.

All callees are addresses that are provided by the firmware via tables
in memory, so I would assume that this addresses the callee side as
well. AFAICT, it is never left up to the compiler to emit these
indirect calls, or take the address of a firmware routine.

But a test would be nice :-)

> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > ---
> >  arch/arm64/include/asm/mmu_context.h | 2 +-
> >  arch/arm64/kernel/cpu-reset.h        | 8 ++++----
> >  arch/arm64/kernel/cpufeature.c       | 2 +-
> >  3 files changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
> > index 386b96400a57..d3cef9133539 100644
> > --- a/arch/arm64/include/asm/mmu_context.h
> > +++ b/arch/arm64/include/asm/mmu_context.h
> > @@ -119,7 +119,7 @@ static inline void cpu_install_idmap(void)
> >   * Atomically replaces the active TTBR1_EL1 PGD with a new VA-compatible PGD,
> >   * avoiding the possibility of conflicting TLB entries being allocated.
> >   */
> > -static inline void cpu_replace_ttbr1(pgd_t *pgdp)
> > +static inline void __nocfi cpu_replace_ttbr1(pgd_t *pgdp)
>
> Given these are inlines, what's the effect when these are inlined into a
> function that would normally use CFI? Does CFI get supressed for the
> whole function, or just the bit that got inlined?
>
> Is there an attribute that we could place on a function pointer to tell
> the compiler to not check calls via that pointer? If that existed we'd
> be able to scope this much more tightly.
>

I agree that it would be very helpful to be able to define a function
pointer type that is exempt from CFI checks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFHm5rqKqku5%3DWF-NcsUNmWp4Ymxu7aO9%3DXkD-LhLr-dA%40mail.gmail.com.
