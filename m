Return-Path: <clang-built-linux+bncBDWIJUMT74BRB7VBZ72QKGQEW34FHSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 732781C8568
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 11:12:31 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id c11sf5321364ilr.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 02:12:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588842750; cv=pass;
        d=google.com; s=arc-20160816;
        b=gCA9BIJGvVlASuERTZafUvLZu1hb+cGeZLF35EA4BxDPqvmWnAXIh0GuvKtHY/h3VR
         o8YfQuYnGvbThEeg7YFS4ESs2LxLZgtzofJ8ZM52NXkWsw//mR0qs02Bazwyoe0/Mjsa
         xrstjfxDXH9UjRHmEo+5coThIJMREPPdOihlXTtBJ/5m6LZhsp6QvmHleGFgxaqqdhtg
         VS2gi+txKZLfoQw7+JTpbdIzYvIhaPOADQJT4P2Yuer03JJfTfDTUXxlGQOyt3eTT9a4
         J3yV6tAPVLwok3fzIEuFr0EKO+HkXr7eetVyYgOu6IqpnxbF5z17nZfQoPIIT5rx1CGj
         l2CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=V7953sAL1ztIkr2TOtGf7ojyOBA2J4FgWacoWjTgsw8=;
        b=LS9aNmOrVulj+cIuglih76iW2urmSy3beqFXkedCLecG4qCkCkFiW6gZQ9bTPvOTAQ
         FFLKqGVm+vKcr9R48JmIk7JNCeAPGMVquvKsG0HAA8Rrew0Hw0vdnKGMXcX6cQHE/kD6
         VZuT5f0Pt1UIZFUHaUvkPPDU3J5ChgQozALAg6y3NF8bU9n+Qg/I21OUlvwMyMsVVVbV
         W2p4FC2Gw4zDgm2lmAFwpH1u6RZ4ZM1oFiE894D3fLD+4r4V6mHjHg3+gKeZ/6Ss6eJR
         cDxxUJoA93KdN/RWeliyJayBCtfCfrLrnaghX43Ty7fPImdtXwqLZJZxqJJ1NqUnkD+h
         4EoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xEn4xIit;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V7953sAL1ztIkr2TOtGf7ojyOBA2J4FgWacoWjTgsw8=;
        b=MRjYS6yZkvs4+jt4kwN0P/7sGtySCPaVkv36wDpusJTGLAJCwBh2lu+cwxAka4tKS/
         R4+dT0d8VQM4KMsQPcdXccpJMS0rbu10IqzIazRMaXuKrNjRsfAHq9l+SrreEKXT0+YN
         C4FfeECAr4G5ur/IXuqNXKkfdMnim6dS27pHEkCHGPJilHOZUKgz324cOMEH6C5gU4pJ
         5zh+XyLN/+tJRUH6VvXTCAFsWSn3RpnINEhmJFCGqqNZQg5isCIZQvZ1z/iZCBYTqdJ6
         LJlvanvB0InUlR6ArL/mBl1xsftJ71tn/l9OBLm/54F6UbUSX5CWNAAeZKajv24OzN4x
         Okbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V7953sAL1ztIkr2TOtGf7ojyOBA2J4FgWacoWjTgsw8=;
        b=M+yDLNb1hgQjR6+JpP7lEDlAzOQ00Q6sySDsbFwB+OHUmpIGbQO7nEBopkNUvAK6Cs
         klqiO9UWuslxQQGKwgkBU+atMRZiofcGnhfHneIwvO75QvhpeOB7B/4q67XlsKI7JVm5
         NCTCjxBY8KVxjvhKziagIfPdp1rQTuamAC2EDOlsNZUFSl4z1g0JoSfbrqbO8Tz1N/aF
         QH/UhavmDj4t+JaX5YnlRqAjRqcs/CK5H3JL3LCR0OucfAoS+QXGL/RzKzy93GR0oHeQ
         y36Enod1UjLthh5ovRuWRV3+8T97hCn99+ktVEBpAnQ2TnTjwnOgtIj90KjUbQ+CW+jL
         5UXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub0+Fj05UO/IvGvPx7WlM0/kzXJbfBej+6DcW7gY9VaHK2zSoCr
	NXMnJFsNoCnLOJdz3U2B7Rw=
X-Google-Smtp-Source: APiQypKHf9BuZhY5KLwtM3PqCQ8q1VVPpRaFIEDBRvS+CdnszK1+Sio99PhQk+uAJEL7+RqDRJN9wA==
X-Received: by 2002:a92:6b04:: with SMTP id g4mr14425965ilc.82.1588842750469;
        Thu, 07 May 2020 02:12:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:4cd:: with SMTP id f13ls4564195ils.11.gmail; Thu,
 07 May 2020 02:12:30 -0700 (PDT)
X-Received: by 2002:a05:6e02:cc4:: with SMTP id c4mr13141062ilj.31.1588842750194;
        Thu, 07 May 2020 02:12:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588842750; cv=none;
        d=google.com; s=arc-20160816;
        b=ddkwVOfMxXRXBNNGJpW+hRwtcirazaBBxsEZO0q37XyXbqZaXRkkVPglhU9X6GLf0O
         EDlqM6i4rHBDdhGgYfbz0cQCTaS3tk9n+1rsCzU9DLhlZE2upituzoMQo6OTgRMk84cz
         XZCqr3UJyypvlm3Rq8yaZVyX6BH5XS3HTZU45o4DDRn0reWiSK/8qy5n8GnR+YCo7iFl
         JPjXaNGZYme9BKL0MC+mXylDc8bXvFxFUO1QmUtsUV7aUWzGC+yvj9Lt0WCflBdB9VYG
         wPPR/ctrP4RJHTHOa2mb8H55iDfVRjy5Uc+p6Bheij4AxwSTt0LVdy8vmbFpizia0zeN
         BaNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=+/Bw5BhyYKitrumYiy7BQ2zd+yUN9z8dxvp9ANOxkP8=;
        b=L84xmGKPC+rXKufGz3fEhgJpBbZo3V5jtu4kvUIPsgJCaSCDu2c3IdjFKLjYcShorh
         zJlQrTzrfmWnYBHW8LZYsAZTqVZKYjn77WZRv0JuKI4lDpqts3xkXa0elPj5Ulw0j3UI
         NK9zVaKehaqZpZBcRlSAO3vhpEet4rTRTZd6WXyW6JZZ3ECQE1Lz7F1rU95f4TxLd/MH
         G3OksGbAy09bQSseUjA64vjeAix176bea2JOvVsngyfgFNj3+KwYdiJT8etlEbs11TGk
         hWXGB5IaKcfZzLbQHYQSDnkI0jzqTjxfbWqwOiLbFG+COsGmIfabH3Utd6rRriksxuCd
         G5oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xEn4xIit;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x4si401463iof.0.2020.05.07.02.12.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 May 2020 02:12:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3690D2075E;
	Thu,  7 May 2020 09:12:29 +0000 (UTC)
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78] helo=why)
	by disco-boy.misterjones.org with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <maz@kernel.org>)
	id 1jWcZu-00ACrT-U4; Thu, 07 May 2020 10:12:27 +0100
Date: Thu, 7 May 2020 10:12:24 +0100
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Cc: Luke Nelson <lukenels@cs.washington.edu>, bpf@vger.kernel.org, Luke
 Nelson <luke.r.nels@gmail.com>, Xi Wang <xi.wang@gmail.com>, Catalin
 Marinas <catalin.marinas@arm.com>, Daniel Borkmann <daniel@iogearbox.net>,
 Alexei Starovoitov <ast@kernel.org>, Zi Shen Lim <zlim.lnx@gmail.com>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong
 Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, John Fastabend
 <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, Mark Rutland
 <mark.rutland@arm.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [RFC PATCH bpf-next 1/3] arm64: insn: Fix two bugs in encoding
 32-bit logical immediates
Message-ID: <20200507101224.33a44d71@why>
In-Reply-To: <20200507082934.GA28215@willie-the-truck>
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
	<20200507010504.26352-2-luke.r.nels@gmail.com>
	<20200507082934.GA28215@willie-the-truck>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: will@kernel.org, lukenels@cs.washington.edu, bpf@vger.kernel.org, luke.r.nels@gmail.com, xi.wang@gmail.com, catalin.marinas@arm.com, daniel@iogearbox.net, ast@kernel.org, zlim.lnx@gmail.com, kafai@fb.com, songliubraving@fb.com, yhs@fb.com, andriin@fb.com, john.fastabend@gmail.com, kpsingh@chromium.org, mark.rutland@arm.com, gregkh@linuxfoundation.org, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, clang-built-linux@googlegroups.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xEn4xIit;       spf=pass
 (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=maz@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, 7 May 2020 09:29:35 +0100
Will Deacon <will@kernel.org> wrote:

Hi Will,

> Hi Luke,
> 
> Thanks for the patches.
> 
> On Wed, May 06, 2020 at 06:05:01PM -0700, Luke Nelson wrote:
> > This patch fixes two issues present in the current function for encoding
> > arm64 logical immediates when using the 32-bit variants of instructions.
> > 
> > First, the code does not correctly reject an all-ones 32-bit immediate
> > and returns an undefined instruction encoding, which can crash the kernel.
> > The fix is to add a check for this case.
> > 
> > Second, the code incorrectly rejects some 32-bit immediates that are
> > actually encodable as logical immediates. The root cause is that the code
> > uses a default mask of 64-bit all-ones, even for 32-bit immediates. This
> > causes an issue later on when the mask is used to fill the top bits of
> > the immediate with ones, shown here:
> > 
> >   /*
> >    * Pattern: 0..01..10..01..1
> >    *
> >    * Fill the unused top bits with ones, and check if
> >    * the result is a valid immediate (all ones with a
> >    * contiguous ranges of zeroes).
> >    */
> >   imm |= ~mask;
> >   if (!range_of_ones(~imm))
> >           return AARCH64_BREAK_FAULT;
> > 
> > To see the problem, consider an immediate of the form 0..01..10..01..1,
> > where the upper 32 bits are zero, such as 0x80000001. The code checks
> > if ~(imm | ~mask) contains a range of ones: the incorrect mask yields
> > 1..10..01..10..0, which fails the check; the correct mask yields
> > 0..01..10..0, which succeeds.
> > 
> > The fix is to use a 32-bit all-ones default mask for 32-bit immediates.
> > 
> > Currently, the only user of this function is in
> > arch/arm64/kvm/va_layout.c, which uses 64-bit immediates and won't
> > trigger these bugs.  
> 
> Ah, so this isn't a fix or a bpf patch ;)
> 
> I can queue it via arm64 for 5.8, along with the bpf patches since there
> are some other small changes pending in the arm64 bpf backend for BTI.
> 
> > We tested the new code against llvm-mc with all 1,302 encodable 32-bit
> > logical immediates and all 5,334 encodable 64-bit logical immediates.
> > 
> > Fixes: ef3935eeebff ("arm64: insn: Add encoder for bitwise operations using literals")
> > Co-developed-by: Xi Wang <xi.wang@gmail.com>
> > Signed-off-by: Xi Wang <xi.wang@gmail.com>
> > Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
> > ---
> >  arch/arm64/kernel/insn.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> > index 4a9e773a177f..42fad79546bb 100644
> > --- a/arch/arm64/kernel/insn.c
> > +++ b/arch/arm64/kernel/insn.c
> > @@ -1535,7 +1535,7 @@ static u32 aarch64_encode_immediate(u64 imm,
> >  				    u32 insn)
> >  {
> >  	unsigned int immr, imms, n, ones, ror, esz, tmp;
> > -	u64 mask = ~0UL;
> > +	u64 mask;
> >  
> >  	/* Can't encode full zeroes or full ones */
> >  	if (!imm || !~imm)  
> 
> It's a bit grotty spreading the checks out now. How about we tweak things
> slightly along the lines of:
> 
> 
> diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> index 4a9e773a177f..60ec788eaf33 100644
> --- a/arch/arm64/kernel/insn.c
> +++ b/arch/arm64/kernel/insn.c
> @@ -1535,16 +1535,10 @@ static u32 aarch64_encode_immediate(u64 imm,
>  				    u32 insn)
>  {
>  	unsigned int immr, imms, n, ones, ror, esz, tmp;
> -	u64 mask = ~0UL;
> -
> -	/* Can't encode full zeroes or full ones */
> -	if (!imm || !~imm)
> -		return AARCH64_BREAK_FAULT;
> +	u64 mask;
>  
>  	switch (variant) {
>  	case AARCH64_INSN_VARIANT_32BIT:
> -		if (upper_32_bits(imm))
> -			return AARCH64_BREAK_FAULT;
>  		esz = 32;
>  		break;
>  	case AARCH64_INSN_VARIANT_64BIT:
> @@ -1556,6 +1550,12 @@ static u32 aarch64_encode_immediate(u64 imm,
>  		return AARCH64_BREAK_FAULT;
>  	}
>  
> +	mask = GENMASK(esz - 1, 0);
> +
> +	/* Can't encode full zeroes or full ones */

... nor a value wider than the mask.

> +	if (imm & ~mask || !imm || imm == mask)
> +		return AARCH64_BREAK_FAULT;
> +
>  	/*
>  	 * Inverse of Replicate(). Try to spot a repeating pattern
>  	 * with a pow2 stride.
> 
> 
> What do you think?

I'd be pretty happy with that.

Reviewed-by: Marc Zyngier <maz@kernel.org>

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200507101224.33a44d71%40why.
