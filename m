Return-Path: <clang-built-linux+bncBAABBWPVXTWQKGQECEJHK5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBF9E0A83
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 19:22:34 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id g67sf6183681wmg.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 10:22:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571764954; cv=pass;
        d=google.com; s=arc-20160816;
        b=nk54SQhM7KWWuBBqisDxqsIxkgZhjB29TTf4gCaUH5sqMef0TtcG6g8CgqVfVbLlDn
         LnonFkuIdplOnW3cpWjzfkWhxdBkezSRI2P5EsRUyDhtKsqEl5j/MWXU6UT90lXOXqmS
         XJbAJYkHSdXp5izlJ0Wg/Pr/Tob/+RSFb/J5aQjtkr4EMFdG/PxhulYftBT4881qtkPn
         Sb/W3RD6pn804uqlBclAwQiiHLZKaU9yMqPLb42RNcAVEKe3gfNM7haInD7td7QzkDx+
         54XyUhcenUzIzZh721n0f9yDTNn81LzqrNeT4R/JQ52QdA6tyaO+PXN+Wbc7r37QAQOc
         Q1CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=VUUuPuksdfjyYLEeJeAjFCsQSSVAedpau+3DCv8AMXc=;
        b=vBb8DkCyo6eP12n7DCUXjw4eJXRcOQooJhsdEOLHc5ZsYjJgEq5F0hgjx0trhRsiPZ
         AlJHQbg4DqL9gNb47QjgYFqwuNM3GcZ/gNvTevlj17gbgEVLbVp8kWQqnSjp2+qk0ed8
         JqZWKFjKzaeBhJx2nz8Q6xu7bkpk4KpLqHRNm00ySMnh6VNRiR3vwE2YN9vW8W5c94C8
         6u4ncO7S5QvvLxc//ZXy+Ldr179NxIumPqMSkakQqVblfOTMpqo1fesiiNvB2VhMMhMb
         PZFNulLEAkYv/8yzpjjyFzSEcsGV87MInBcoL+SqfoNkCKFXj8fSA054dMYF2WaF7ruY
         bSAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VUUuPuksdfjyYLEeJeAjFCsQSSVAedpau+3DCv8AMXc=;
        b=r20UioFKg/JogsxFGQEgH1+NtVC10CgYI3RFjn8qODB4eYWkTUwK6+mD+jxL2eVciW
         texBXuj8F8psIEkzTgDyo4FIKzJ4kQrL1/7Le6DcMce4oFCZsUXyDcSb99Vo1Hd/cq+g
         7//sc9FcampIuuVWEnuSKLOEH+1Owr78oxikq5FWxaiu9QQu0eNHWk55RR4aHeM3ltIU
         UNnIICJFgei0MANcO5FpgO3nxWF/w0kM6a/8IstDAvNDSKZmaX2VftZPp6GItFrUYzHm
         +PDqMDxnJvtbBAjfyXl4D/t4ShH9tQRnEMX9P3MLsbHXSmtsJopyte7Xf+LActV7sLDo
         e5fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VUUuPuksdfjyYLEeJeAjFCsQSSVAedpau+3DCv8AMXc=;
        b=j/3v6dLHGrRzicU630gzVoY36GvMjf6vwAofU9y/d5oaQJSSOQJlo9YIPcdqti606J
         9L0jAj6nrYJbj7wIiBumkL10FsuYK90KhSBDjQngBV1qUrWKm4InAYDG3tGHJw7eGxmP
         GtXGDGJJgn4j6z2LgzuV8aYx0l6Y+6YkiSYWkR7JJqPwZ9Y68D3EiUZQ1GJ8FI65KgaY
         MfQDTv5N4I4CV1V6MDiQjWi6aLuGp/L02iA+aRrgAqY7Utfr5ShQ8etQSI5BcNCpB5Ju
         Fs/6p6pD2kiu10qNmsfc6Ct0AwZemtEKrK+OlE/rcZyHSRk8xXJVrzDqT77MgoyM9hPg
         DOvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWSTvWD+cs6o9wgP2wsmUS0DOWOzXroeSLjSvXMmrDy2UslxW1l
	JhHOGxQqsy7oN7dbgiTX878=
X-Google-Smtp-Source: APXvYqyzSe3o5U7u9kZlCTSNvR8Y2Xe8dTgv5i+cwcTgUXOmHyOgub7kTbSRMMpiu2oMZky7LXXk9g==
X-Received: by 2002:a1c:a4c6:: with SMTP id n189mr4013831wme.111.1571764953893;
        Tue, 22 Oct 2019 10:22:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:68ca:: with SMTP id p10ls3085478wrw.11.gmail; Tue, 22
 Oct 2019 10:22:33 -0700 (PDT)
X-Received: by 2002:adf:91e1:: with SMTP id 88mr4793796wri.16.1571764953564;
        Tue, 22 Oct 2019 10:22:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571764953; cv=none;
        d=google.com; s=arc-20160816;
        b=uRIcuznP1HuhDqn1j/S7T5gQJ8a9TDy9Fn839iMKGHHqq5k9MEHciF0vHEZU16KNLo
         gDGyTk3gOuxwBB+306U7xV4oh1ArGHhRctYx+2r472irRTJKeknmkyUott5ATmKnqeD5
         UL6/gyloKmZs7J3aO5JKqW2tG/k513P0Npq6g4kVS1KJPzamMtjaS0ht5eub0aKdfPOv
         q8PShwxts890qggT+ih7d/7ZcGKIE+RH+nppi+JCGcFrsUGJBXC0ivdKtnmhyEXfZ/GQ
         UxRNrxokIZnUi0u0rY4wEzy6jqJIQE8+7Kk8Y49NuLeMnUMrSc0VgibFvUWvQNHAn0YZ
         Uang==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=6x0/O9PlIfQHOPcrcNuWjqPyMCk7P/nyeHR5COhNuX4=;
        b=VTc0jKSEsyYNpBhXRouwUjALk5qucZLvmJT9zD/htZnlqboWJkkQ2qcrSgHtI5RVs6
         6b35G7FvGZ+d9NXxjA/ZCHyYZGMNX9eHA46Z2AlfRwkPDFyR+V3op0OQOXbRJBHWYFHw
         EupPC++e62T8xSy55Pi487XApS4sur9J9rhxq2xe493y+KZVynTmnjrDuDw1rVulShs9
         dR0Pf40V+Xdw6d3dGXMBBiiMu1HLF2RKyaEdiaN2xWEXCBjtT6JB1niFxPe7OPh3FJbG
         w8+m7hBeq2DNUAAAYkjSxZJMDcY4POew0kPLssM+Jbnw65rR4xNGkLgebNar7+vcIOXU
         jbUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from inca-roads.misterjones.org (inca-roads.misterjones.org. [213.251.177.50])
        by gmr-mx.google.com with ESMTPS id p15si979757wrj.0.2019.10.22.10.22.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Oct 2019 10:22:33 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) client-ip=213.251.177.50;
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78] helo=why)
	by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
	(Exim 4.80)
	(envelope-from <maz@kernel.org>)
	id 1iMxrD-0002o8-Lr; Tue, 22 Oct 2019 19:22:07 +0200
Date: Tue, 22 Oct 2019 18:22:06 +0100
From: Marc Zyngier <maz@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, Ard
 Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland
 <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 kernel-hardening@lists.openwall.com, Nick Desaulniers
 <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Laura Abbott <labbott@redhat.com>, Dave
 Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 03/18] arm64: kvm: stop treating register x18 as caller
 save
Message-ID: <20191022182206.0d8b2301@why>
In-Reply-To: <20191018161033.261971-4-samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
	<20191018161033.261971-4-samitolvanen@google.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: samitolvanen@google.com, will@kernel.org, catalin.marinas@arm.com, rostedt@goodmis.org, ard.biesheuvel@linaro.org, mark.rutland@arm.com, keescook@chromium.org, kernel-hardening@lists.openwall.com, ndesaulniers@google.com, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, labbott@redhat.com, Dave.Martin@arm.com, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=softfail
 (google.com: domain of transitioning maz@kernel.org does not designate
 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, 18 Oct 2019 09:10:18 -0700
Sami Tolvanen <samitolvanen@google.com> wrote:

> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> 
> In preparation of using x18 as a task struct pointer register when
> running in the kernel, stop treating it as caller save in the KVM
> guest entry/exit code. Currently, the code assumes there is no need
> to preserve it for the host, given that it would have been assumed
> clobbered anyway by the function call to __guest_enter(). Instead,
> preserve its value and restore it upon return.
> 
> Link: https://patchwork.kernel.org/patch/9836891/
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/kvm/hyp/entry.S | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
> index e5cc8d66bf53..20bd9a20ea27 100644
> --- a/arch/arm64/kvm/hyp/entry.S
> +++ b/arch/arm64/kvm/hyp/entry.S
> @@ -23,6 +23,7 @@
>  	.pushsection	.hyp.text, "ax"
>  
>  .macro save_callee_saved_regs ctxt
> +	str	x18,      [\ctxt, #CPU_XREG_OFFSET(18)]
>  	stp	x19, x20, [\ctxt, #CPU_XREG_OFFSET(19)]
>  	stp	x21, x22, [\ctxt, #CPU_XREG_OFFSET(21)]
>  	stp	x23, x24, [\ctxt, #CPU_XREG_OFFSET(23)]
> @@ -38,6 +39,7 @@
>  	ldp	x25, x26, [\ctxt, #CPU_XREG_OFFSET(25)]
>  	ldp	x27, x28, [\ctxt, #CPU_XREG_OFFSET(27)]
>  	ldp	x29, lr,  [\ctxt, #CPU_XREG_OFFSET(29)]
> +	ldr	x18,      [\ctxt, #CPU_XREG_OFFSET(18)]

There is now an assumption that ctxt is x18 (otherwise why would it be
out of order?). Please add a comment to that effect.

>  .endm
>  
>  /*
> @@ -87,12 +89,9 @@ alternative_else_nop_endif
>  	ldp	x14, x15, [x18, #CPU_XREG_OFFSET(14)]
>  	ldp	x16, x17, [x18, #CPU_XREG_OFFSET(16)]
>  
> -	// Restore guest regs x19-x29, lr
> +	// Restore guest regs x18-x29, lr
>  	restore_callee_saved_regs x18

Or you could elect another register such as x29 as the base, and keep
the above in a reasonable order.

>  
> -	// Restore guest reg x18
> -	ldr	x18,      [x18, #CPU_XREG_OFFSET(18)]
> -
>  	// Do not touch any register after this!
>  	eret
>  	sb
> @@ -114,7 +113,7 @@ ENTRY(__guest_exit)
>  	// Retrieve the guest regs x0-x1 from the stack
>  	ldp	x2, x3, [sp], #16	// x0, x1
>  
> -	// Store the guest regs x0-x1 and x4-x18
> +	// Store the guest regs x0-x1 and x4-x17
>  	stp	x2, x3,   [x1, #CPU_XREG_OFFSET(0)]
>  	stp	x4, x5,   [x1, #CPU_XREG_OFFSET(4)]
>  	stp	x6, x7,   [x1, #CPU_XREG_OFFSET(6)]
> @@ -123,9 +122,8 @@ ENTRY(__guest_exit)
>  	stp	x12, x13, [x1, #CPU_XREG_OFFSET(12)]
>  	stp	x14, x15, [x1, #CPU_XREG_OFFSET(14)]
>  	stp	x16, x17, [x1, #CPU_XREG_OFFSET(16)]
> -	str	x18,      [x1, #CPU_XREG_OFFSET(18)]
>  
> -	// Store the guest regs x19-x29, lr
> +	// Store the guest regs x18-x29, lr
>  	save_callee_saved_regs x1
>  
>  	get_host_ctxt	x2, x3

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191022182206.0d8b2301%40why.
