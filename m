Return-Path: <clang-built-linux+bncBCAIHYNQQ4IRBE6KQP7QKGQEM2MK3OQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3062F2DFF58
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 19:10:29 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id kb15sf6484660pjb.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 10:10:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608574228; cv=pass;
        d=google.com; s=arc-20160816;
        b=OJrUgBd0bvoJQfs2uZcauq9rb+VMbI/SWAfnkW7q3Ip3Io5+P+LDozkQqQ15uCDTqR
         IWQp1gyIOYyAmHr+CfdSZQq3qVD/pQzg0g6X8OvlKpn/Iq0lszF2gtoRkRLCq27lBxuU
         tJisYW9MD8wYZolj/5erUYRGoIrc2OXwMrbKmJAgI0FMzfQjJl8ZUTF3vKn41pQ5iJAW
         dDBJrRJQD1xVLEHiOgFAf4Sztv23ZMh38Dj53playXzCoJxTTPHAU1CZ/WJPNfzNodAr
         /iWweZrRHEliuxETZon9S9KYGn659pOUkoTff5YQZmD9ZiY7enUeU+zus3SCyjO7vhmq
         RcQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=IKL4mc4TFEM/mmXyfP8M4CGCnD+JcneboQdwD78Zq4E=;
        b=H3j5AD+2DJQjWVMX2MyBrDrD17Hb/u3oWdnzbqtgKjkmv/+L35JE+ied8V0tjzDXP8
         h/ea4VEjqBdF0fvZmRPXo+Q0Lo4ZBQ2iO85gOsavG8vphabWrnDwYIuyK1Dhwei/Tx5V
         SOnXw14UXJAAm0QBwo+Qc5u+64k43llQ3Qxv1ScQGFvieMkng+N1hlWWryQdqwfTL8Al
         YYnPKkmHkdcJOm4hrEksDCIB120UatG6GClpiVQG9ypPCebrMrDvxDj4cTs0t0HDbxop
         aU2G3/3OctaujJK2uUwGd8PlJE7SDD07fdqenjzHEfsV2AfJUe3CN6vz+MJsY5rF+4WM
         afjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BC4K4mt4;
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=IKL4mc4TFEM/mmXyfP8M4CGCnD+JcneboQdwD78Zq4E=;
        b=VAwL1cBb96RkX2MAEWjQcHhTKEsxdOxp19236o+/dwrKSe6x0jk/gGlSFbt/KIg/8a
         8cqugxHkXTvdXGx62CzmutcZLn+olGJBfyswPOVgswxgIDIXj2ImuCDfarveEfZx4l+7
         9ZzCUPNHsnqg/9r6oEcoxrY73AK9lcvSD6aW2jEoJBCMJ8ONTk6vzkbMt0+NGd+Pmfu+
         JcY/B7lKAEK5tTlozWd0+T1tjxNbUkqlR1ZYq03ucuJhOLDjpH5omQx/HC3y4QDtMtWb
         7NX4c2+4SnTVIdn7CtHlddoRf84omlCTCwSbl+GV6AeLJRYhXJnY7x5yGF1ldpclW3m+
         zmVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IKL4mc4TFEM/mmXyfP8M4CGCnD+JcneboQdwD78Zq4E=;
        b=hqh8Z2wQikogKzCmJ9QVk1tuIo6CfsI9M9h7LnuSf4ZckhYx8RU2YMwSb/BW0oAN2R
         qLQh7trvayYY8vQWsYvDtrYFprtL5LbGQ2+jx5U3C4qW2BHsCLPb5FPHYJUAhIg6DtZa
         UOaSPnxhM7ZYXN1fpqksrSpZfjoPpYb93cMxLNl6R3DlexQL1jBEI1GYwEGHuJijKKkD
         J3zXyj7/At3RZmHEQ7vLtmDgX+U0DUBve4EMQzXEEomzDLIEbuNl5MORKNJ3520fHecI
         CZgiokmO7NrYcCHWqizkyp1CsxckpExCtedlMUEebrI8r1up0Htjj04RdcbJ2/stV39Q
         IF7Q==
X-Gm-Message-State: AOAM532cNtcgAmqS5xpn3aCxeUL4C0Bz+QDsawgS6zRowyf5WTkyl/gh
	c2Tu05DgWEbKNlemuhkV788=
X-Google-Smtp-Source: ABdhPJwFaMWZ1p1nYgF7tDdV9KtPhxf9F3NYLtj5JDQEA/mhzWfKJXnOAWlWBdqEYuEF5Sz5SC2jdQ==
X-Received: by 2002:a63:4648:: with SMTP id v8mr16631690pgk.248.1608574227654;
        Mon, 21 Dec 2020 10:10:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ee90:: with SMTP id i16ls9542630pjz.1.canary-gmail;
 Mon, 21 Dec 2020 10:10:27 -0800 (PST)
X-Received: by 2002:a17:902:5581:b029:da:a547:b6a6 with SMTP id g1-20020a1709025581b02900daa547b6a6mr17313849pli.78.1608574226934;
        Mon, 21 Dec 2020 10:10:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608574226; cv=none;
        d=google.com; s=arc-20160816;
        b=QB3SYgsRWDYNSHLOyTAhcnZxFncXxvs6qCTSeJjaZaJozzGdZv5FbLDHnqeZ1R4L6Y
         iM/f2pBq5vwMw3uUwETs3JRjqET4FyCb2LjDDlRmBtvBy8yWcV97gyIyTfjqDPJePKUL
         XO1tP1alBhoEuB1AgJRL9gl1j6c6J3CmHj0VtlTS2vvZ7cJGd9Q9MXsc9cdnJIIVlVhL
         zPtWn9pihTQRY93IXIX6/qC3bn+cjd8HAPemuCobKHYmbnbdiQJIP9PITmOgWgsaZOYJ
         byNxivpuotL/pqEGogBOrXwnmC+gzKxFfGEkRPHFKwPOiifQbg8Yny6Gi/l5vKcPJY0B
         aKnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QDw9TIBxEMEN6i9q2u9TMr2zZpLOC0nfMm+mSUVGuU8=;
        b=rZRe1h1YnUP/4Akj2v6ugJs8D5zxpF4piGiTith2LFCk7yX9Hzn1ZDQP924S+rAivz
         KMNCW1s29gsZRijwdsz4dJOfsRHNNVxsN/SJvbJijuJ9cUyKC4x4FEEMcMSu3keQ6Ziv
         FE96+GwPxq/HgQnOGFlQydroJnHZ1uCIWi3Gi6ObZ/Cd1rBfnC8EIaB4VuZ51fBap3JP
         VPw6wPIo4Z4BT4iwSsAXWk9lUMjsV1l6jQ3olmYgaf0nfG/2YUwXIYACVaztIlpOBnnJ
         MWJLFVhhAsX7F6xC6XAoDikB2ELr2I70+riSXZgzi2hH3d0Lb1ZdpUgT6Xp+yC9g2FvG
         fuXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BC4K4mt4;
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id k14si991798plk.3.2020.12.21.10.10.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 10:10:26 -0800 (PST)
Received-SPF: pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id 4so6019093plk.5
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 10:10:26 -0800 (PST)
X-Received: by 2002:a17:90a:248:: with SMTP id t8mr18609348pje.193.1608574226474;
        Mon, 21 Dec 2020 10:10:26 -0800 (PST)
Received: from google.com ([2620:15c:f:10:1ea0:b8ff:fe73:50f5])
        by smtp.gmail.com with ESMTPSA id d203sm17521810pfd.148.2020.12.21.10.10.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Dec 2020 10:10:25 -0800 (PST)
Date: Mon, 21 Dec 2020 10:10:18 -0800
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
	Sami Tolvanen <samitolvanen@google.com>,
	Michael Roth <michael.roth@amd.com>
Subject: Re: [PATCH] KVM: SVM: Add register operand to vmsave call in
 sev_es_vcpu_load
Message-ID: <X+DlCpHSu+opeOge@google.com>
References: <20201219063711.3526947-1-natechancellor@gmail.com>
 <X+Df2oQczVBmwEzi@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <X+Df2oQczVBmwEzi@google.com>
X-Original-Sender: seanjc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BC4K4mt4;       spf=pass
 (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::62d as
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

+Michael, as this will conflict with an in-progress series to use VMSAVE in the
common SVM run path.

https://lkml.kernel.org/r/20201214174127.1398114-1-michael.roth@amd.com

On Mon, Dec 21, 2020, Sean Christopherson wrote:
> On Fri, Dec 18, 2020, Nathan Chancellor wrote:
> > When using LLVM's integrated assembler (LLVM_IAS=1) while building
> > x86_64_defconfig + CONFIG_KVM=y + CONFIG_KVM_AMD=y, the following build
> > error occurs:
> > 
> >  $ make LLVM=1 LLVM_IAS=1 arch/x86/kvm/svm/sev.o
> >  arch/x86/kvm/svm/sev.c:2004:15: error: too few operands for instruction
> >          asm volatile(__ex("vmsave") : : "a" (__sme_page_pa(sd->save_area)) : "memory");
> >                       ^
> >  arch/x86/kvm/svm/sev.c:28:17: note: expanded from macro '__ex'
> >  #define __ex(x) __kvm_handle_fault_on_reboot(x)
> >                  ^
> >  ./arch/x86/include/asm/kvm_host.h:1646:10: note: expanded from macro '__kvm_handle_fault_on_reboot'
> >          "666: \n\t"                                                     \
> >                  ^
> >  <inline asm>:2:2: note: instantiated into assembly here
> >          vmsave
> >          ^
> >  1 error generated.
> > 
> > This happens because LLVM currently does not support calling vmsave
> > without the fixed register operand (%rax for 64-bit and %eax for
> > 32-bit). This will be fixed in LLVM 12 but the kernel currently supports
> > LLVM 10.0.1 and newer so this needs to be handled.
> > 
> > Add the proper register using the _ASM_AX macro, which matches the
> > vmsave call in vmenter.S.
> 
> There are also two instances in tools/testing/selftests/kvm/lib/x86_64/svm.c
> that likely need to be fixed.
>  
> > Fixes: 861377730aa9 ("KVM: SVM: Provide support for SEV-ES vCPU loading")
> > Link: https://reviews.llvm.org/D93524
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1216
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  arch/x86/kvm/svm/sev.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/x86/kvm/svm/sev.c b/arch/x86/kvm/svm/sev.c
> > index e57847ff8bd2..958370758ed0 100644
> > --- a/arch/x86/kvm/svm/sev.c
> > +++ b/arch/x86/kvm/svm/sev.c
> > @@ -2001,7 +2001,7 @@ void sev_es_vcpu_load(struct vcpu_svm *svm, int cpu)
> >  	 * of which one step is to perform a VMLOAD. Since hardware does not
> >  	 * perform a VMSAVE on VMRUN, the host savearea must be updated.
> >  	 */
> > -	asm volatile(__ex("vmsave") : : "a" (__sme_page_pa(sd->save_area)) : "memory");
> > +	asm volatile(__ex("vmsave %%"_ASM_AX) : : "a" (__sme_page_pa(sd->save_area)) : "memory");
> 
> I vote to add a helper in svm.h to encode VMSAVE, even if there is only the one
> user.  Between the rAX behavior (it _must_ be rAX) and taking the HPA of the
> VMCB, the semantics of VMSAVE are just odd enough to cause a bit of head
> scratching when reading the code for the first time.  E.g. something like:
> 
> void vmsave(struct page *vmcb)
> {
> 	/*
> 	 * VMSAVE takes the HPA of a VMCB in rAX (hardcoded by VMSAVE itself).
> 	 * The _ASM_AX operand is required to specify the address size, which
> 	 * means VMSAVE cannot consume a 64-bit address outside of 64-bit mode.
> 	 */
> 	hpa_t vmcb_pa = __sme_page_pa(vmcb);
> 
> 	BUG_ON(!IS_ENABLED(CONFIG_X86_64) && (vmcb_pa >> 32));
> 
> 	asm volatile(__ex("vmsave %%"_ASM_AX) : : "a" (vmcb_pa) : "memory");
> }
> 
> >  
> >  	/*
> >  	 * Certain MSRs are restored on VMEXIT, only save ones that aren't
> > -- 
> > 2.30.0.rc0
> > 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X%2BDlCpHSu%2BopeOge%40google.com.
