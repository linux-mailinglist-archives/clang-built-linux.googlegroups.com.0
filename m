Return-Path: <clang-built-linux+bncBCAIHYNQQ4IRBY57QP7QKGQE4WORQRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 099C72DFF0F
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 18:48:21 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id g17sf14745201ybh.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 09:48:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608572900; cv=pass;
        d=google.com; s=arc-20160816;
        b=T9cZJmJYTyBB1Dws+wjIeGRMIxRs5iH2vLp6opwjF0W2GFsis4dM5EXXwclLEueUxj
         X88/LTBe5BXMYSjMst3p91Ebf+UcfSgl9Ry4viSycBkn9xGmEK8hWVLcnczcOk+Paq3F
         kZZcXifV0Jucg+76hpddCNs9vL9OEdYaq3RWYNFUTPRfSAnSZxRgL5gN8oy9+Hc+FdqI
         wKs+Np/x7HIGmTX7qV9R5+NNB5jmH65j7f+iEmnJO9qmsdr554ADGG6DuUV9Au66IpUf
         1Hh99kvbYFnFS7hpI7VvTKE/fb78ozPKJ+pYyyDSk2fnsnh6Gl4F2EqIs9za48vNoBll
         6h/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=OrN3SfcxxrjeyKgeC7FYNHF12kdnyNaiogTVG4WsFGY=;
        b=gh+mV3vfAZ+JKPPrGHwGAkd4ff8sCXKw3ugFRJ2xdtVTpR8DDxkZPj/E+/l1PKKjH3
         g486M293mCptoLewMONaZpXbGv5lb8N3WqwvdB3f++/MtlxzW9mqGQbrD4jb8WiR93fZ
         CjrO5fcfea2baAyUe6AdMoqRv6AvXfF91EN2IAWU0QSaGcPhiJTJiWHa8iPwjd7tQaRj
         IMaySN4lrJZPbjemrkWcKXvFNxq8tmcnXQfJs2o7yxnbuZpbPS4PU13v3OQ4qd6NhCuz
         GbZ0vaivaQFaQC8bQQPWwZUsXnV/Xnknsj0v4tHG2ZDQK9PrYaPIreXkTCp4acXWBW9C
         zWmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HFWrQ9mv;
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=OrN3SfcxxrjeyKgeC7FYNHF12kdnyNaiogTVG4WsFGY=;
        b=UXYejM3z6J5TjCyoUD53Q1nJ1R20h81S68R9uWlpDEmGYeMrBR37sqRNxUzboCekME
         hhiCdX0FiV4Tsw9QUsz0P3OtmFT5GKwnFkq66mbbVGWoiE9lMvwDP5gU9vkgpLJcDxPx
         uWOHZOPIp1Q/eu/UAPna9kQuxpLx0Nb4YJamxLbZsgETJgpGbNt44og+fnRk8l99Ed5Q
         I7Z6FjLA+qcGIdL64Dbxh50iS4gNBvRqmqbFhA5KYaKJtDkHjIhUnqqq5WD6JdZHq/rh
         1YaV3UunJiu98mbQWDiy5PcNKFn3xswBCar8/BAObWntERSqpvGHMmXvtLl737gNfebK
         oGzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OrN3SfcxxrjeyKgeC7FYNHF12kdnyNaiogTVG4WsFGY=;
        b=LYlIGb8Y/0sbsySwXG+SGiRaSJkNBfU8C+UPmKdYYm7WSNUWyyimdAJnpcqZGK5GPj
         x6eCwRzKay5FvYrYQFruu84Zs+VidRv3DFh4dmSHOJ+OZMD3lEwF0/9n/fz+UIJ/j26f
         f4qcUA0Hqm6S6nO1xri9xSuvQ2lHLp4WipTaunQerR4VohAbFZUyt1uOmqmiLiC6fegn
         eCxOU+kNwEP8oBdsZw7aNhsYOEcomAKf9nWCIzouqgZpRl8mSBhVaeMhVYOUhCNWn4w1
         sHQIJvY7WkpBQQDklyB66xHIPXmNuzSatyysNQeGtXaPcFsUXraxD6LjAyshQQ3HSt2g
         LV6A==
X-Gm-Message-State: AOAM531V6bPtN5AplMRRAxN4Qru9/POHf3F3litBXWlBJ6wDCiEGhwrA
	Rn80jnjswnMo6l/7g5d1Vmk=
X-Google-Smtp-Source: ABdhPJxOHKKFcIUXj4RdATmEEfenzzV44psAVnehpF4qTXZuhPz5t1x27W2D9a2a1nw2WT6XH507nQ==
X-Received: by 2002:a25:4081:: with SMTP id n123mr24280922yba.237.1608572899799;
        Mon, 21 Dec 2020 09:48:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e407:: with SMTP id b7ls2781907ybh.6.gmail; Mon, 21 Dec
 2020 09:48:19 -0800 (PST)
X-Received: by 2002:a25:ea0c:: with SMTP id p12mr19853504ybd.256.1608572899412;
        Mon, 21 Dec 2020 09:48:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608572899; cv=none;
        d=google.com; s=arc-20160816;
        b=iDW5tQr4tUP7gdfTVzpV/U1THz8pv9ImgG9qVkmC+2QuIisPq8D5KQXoABcQWGd0QT
         Pi/KxII4bCPAKQ7328f2vP2tbA7Qd9spqEHrmqK6m331LoVlEfSkPYcIz+zRAmE7hdUp
         GDu4zojupDGAopAnOPhQmt0nxTGnjJpXY7C6w+q1/cW+iWyccvD4qzRPMn1+IiOYSnOG
         iTW+jwtltOg4e8TNKBV6E0iPwrTtjEgz1PNIrIYHedh9wVRLb/UB9PtAtDOJ70ya5iUu
         JpEX7OfxZ2ccUsOEXh2QSz2n0Ci7HqF0/nV4zNaQ0kSulCYE/cyPFthHR6SmV4hld++d
         mv+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bOLplW+5pp4JzOv86AiZeqRbE94ulVTnl+pKmMDmJSY=;
        b=P1XCa6hrKRyE4awwurco5itdRECDCA1joz+qQmAI/88gNy24Mu5sfX/Tcgv8N6L5BY
         N/0vmwbfAWgZEweY5LL1KJElK0GJyTWkr/iVMyxHbmO5rpcREQJFSndPovxabrixMCTM
         6/krJFiUaO+i0XxK6ot0cP92xd7G2BShF0scS9hR78duzC7XwDmiO/7x2hgsRNyY8nfl
         PJHNlBSod3a20qiiTOl3nBydWHFK9ja10GTlNiVS5Hb2t0WJfkTHOEWfrZ1dq+EXX/Qp
         JXtDh4zMHBnvfgbBFYwP1SF1SnD0LaFMhaL7tq6N5TkxujjIb/s5RGx3JbIbEQy3Q7V4
         WGXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HFWrQ9mv;
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id k6si1295694ybd.5.2020.12.21.09.48.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 09:48:19 -0800 (PST)
Received-SPF: pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id q22so6836791pfk.12
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 09:48:19 -0800 (PST)
X-Received: by 2002:a63:2b42:: with SMTP id r63mr15934021pgr.316.1608572898493;
        Mon, 21 Dec 2020 09:48:18 -0800 (PST)
Received: from google.com ([2620:15c:f:10:1ea0:b8ff:fe73:50f5])
        by smtp.gmail.com with ESMTPSA id 82sm17865501pfv.117.2020.12.21.09.48.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Dec 2020 09:48:17 -0800 (PST)
Date: Mon, 21 Dec 2020 09:48:10 -0800
From: "'Sean Christopherson' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>,
	Tom Lendacky <thomas.lendacky@amd.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, kvm@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH] KVM: SVM: Add register operand to vmsave call in
 sev_es_vcpu_load
Message-ID: <X+Df2oQczVBmwEzi@google.com>
References: <20201219063711.3526947-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201219063711.3526947-1-natechancellor@gmail.com>
X-Original-Sender: seanjc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HFWrQ9mv;       spf=pass
 (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::431 as
 permitted sender) smtp.mailfrom=seanjc@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sean Christopherson <seanjc@google.com>
Reply-To: Sean Christopherson <seanjc@google.com>
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

On Fri, Dec 18, 2020, Nathan Chancellor wrote:
> When using LLVM's integrated assembler (LLVM_IAS=1) while building
> x86_64_defconfig + CONFIG_KVM=y + CONFIG_KVM_AMD=y, the following build
> error occurs:
> 
>  $ make LLVM=1 LLVM_IAS=1 arch/x86/kvm/svm/sev.o
>  arch/x86/kvm/svm/sev.c:2004:15: error: too few operands for instruction
>          asm volatile(__ex("vmsave") : : "a" (__sme_page_pa(sd->save_area)) : "memory");
>                       ^
>  arch/x86/kvm/svm/sev.c:28:17: note: expanded from macro '__ex'
>  #define __ex(x) __kvm_handle_fault_on_reboot(x)
>                  ^
>  ./arch/x86/include/asm/kvm_host.h:1646:10: note: expanded from macro '__kvm_handle_fault_on_reboot'
>          "666: \n\t"                                                     \
>                  ^
>  <inline asm>:2:2: note: instantiated into assembly here
>          vmsave
>          ^
>  1 error generated.
> 
> This happens because LLVM currently does not support calling vmsave
> without the fixed register operand (%rax for 64-bit and %eax for
> 32-bit). This will be fixed in LLVM 12 but the kernel currently supports
> LLVM 10.0.1 and newer so this needs to be handled.
> 
> Add the proper register using the _ASM_AX macro, which matches the
> vmsave call in vmenter.S.

There are also two instances in tools/testing/selftests/kvm/lib/x86_64/svm.c
that likely need to be fixed.
 
> Fixes: 861377730aa9 ("KVM: SVM: Provide support for SEV-ES vCPU loading")
> Link: https://reviews.llvm.org/D93524
> Link: https://github.com/ClangBuiltLinux/linux/issues/1216
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/x86/kvm/svm/sev.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/x86/kvm/svm/sev.c b/arch/x86/kvm/svm/sev.c
> index e57847ff8bd2..958370758ed0 100644
> --- a/arch/x86/kvm/svm/sev.c
> +++ b/arch/x86/kvm/svm/sev.c
> @@ -2001,7 +2001,7 @@ void sev_es_vcpu_load(struct vcpu_svm *svm, int cpu)
>  	 * of which one step is to perform a VMLOAD. Since hardware does not
>  	 * perform a VMSAVE on VMRUN, the host savearea must be updated.
>  	 */
> -	asm volatile(__ex("vmsave") : : "a" (__sme_page_pa(sd->save_area)) : "memory");
> +	asm volatile(__ex("vmsave %%"_ASM_AX) : : "a" (__sme_page_pa(sd->save_area)) : "memory");

I vote to add a helper in svm.h to encode VMSAVE, even if there is only the one
user.  Between the rAX behavior (it _must_ be rAX) and taking the HPA of the
VMCB, the semantics of VMSAVE are just odd enough to cause a bit of head
scratching when reading the code for the first time.  E.g. something like:

void vmsave(struct page *vmcb)
{
	/*
	 * VMSAVE takes the HPA of a VMCB in rAX (hardcoded by VMSAVE itself).
	 * The _ASM_AX operand is required to specify the address size, which
	 * means VMSAVE cannot consume a 64-bit address outside of 64-bit mode.
	 */
	hpa_t vmcb_pa = __sme_page_pa(vmcb);

	BUG_ON(!IS_ENABLED(CONFIG_X86_64) && (vmcb_pa >> 32));

	asm volatile(__ex("vmsave %%"_ASM_AX) : : "a" (vmcb_pa) : "memory");
}

>  
>  	/*
>  	 * Certain MSRs are restored on VMEXIT, only save ones that aren't
> -- 
> 2.30.0.rc0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X%2BDf2oQczVBmwEzi%40google.com.
