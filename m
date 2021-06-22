Return-Path: <clang-built-linux+bncBDN7FYMXXEORBCWMY2DAMGQEDU3B7RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D65E3AFFB6
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 10:57:48 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id b9-20020ac86bc90000b029024a9c2c55b2sf4216967qtt.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 01:57:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624352267; cv=pass;
        d=google.com; s=arc-20160816;
        b=dqG+MTuEJR+XH6+RcK3qxvHKV3B4puFjRvAKe9M/ASKRag8QZJ1AG6VBr0/lufuqPU
         scA8unDyVq9CMAHqyJN3MDBnPtKNibKtsRyH2Fjzn5UUneJ9ms8ttCps4DY5BjAlXY6L
         rpVZURlqVJG6SFfO64yy9W096IRz9WIFIFgI8iRTyqJ3XdpEZT0cniUe727/aMwAS8sU
         wbx9PHBujA/e8kk9SDMsjD3onbN+UM7AtZ/3w2IJnNWtsZCspl4OZZYCD1VWCIRar0OX
         q8VR6dUVBAwz9AaOE8VJdmCvYvOfs9SXjwEYRy5/1fMTunKWoLVAfl9xUqkr7Sc7XiiT
         dqpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:mime-version:in-reply-to
         :references:cc:to:subject:from:date:sender:dkim-signature
         :dkim-signature;
        bh=xSqrB92nwQpjxmgBsSzyDlgBiNdx8+VU6uBYjRV9JZM=;
        b=X6hPC8JKW0QQaEngliHpADYpSG1Tt8VV0Ah6w53tpdXNBHhnq7FvIKWtdckhuSs2v8
         8T+bKARF4k6unYmQzGiY2FTFKrNu4opOHpxu3u0eIA9Kq+eSPKMjVG7826MsMBnjcl61
         s7LUfY8AeABW4g2I6YfGXWpOffRU3Wb3Y5c7PSiypaSEIFZP/if2j6TO8kqz0+3Gt4Ff
         iWO2dTNVmAwze3VfJBdz5GqVXwcK2pLE6uL2ff2vekj9DMkph2aD5x074ZujMdfkD4f0
         tK2uHCcWIMiSSuuNPaD88lOJwRYJ0H0/BrQnad+uDXUrzdngjmnYD5z6PD99tWkYwIzY
         HhpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mVukyLLV;
       spf=pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=npiggin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:subject:to:cc:references:in-reply-to:mime-version
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xSqrB92nwQpjxmgBsSzyDlgBiNdx8+VU6uBYjRV9JZM=;
        b=gX5uCeqGl5ecLp8OX0H0ycpJGI2MGQxbbnLPCxdYqGxOQr1W/1uzT2MrY4ph6cqCao
         nKb1BXcuRPcTZGs1t3I2bKxkChXvhewwROnpGtLZfFhcqXB0IvC+S5Wacye8zh320RMK
         qseKAUHAL4ZjIMYhKWZL8WlC2BlipI4N+p7IDgQ3Jcfn24lLKzkxJHM2oDc7p7lXLDU5
         AbOzJEWeflLY4QjjfEX+yTs8VaJrpoAjwJ61t4WesCA56BP6MU4ssqdhy4ASzJv+eHHS
         nYCL7TsTPxE8QJm836yrhyBdIA4DPAFOsl+7kGEhR9qrM0DDnrtfvg2qtJ1uJETZ5oQm
         fw3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:subject:to:cc:references:in-reply-to:mime-version
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xSqrB92nwQpjxmgBsSzyDlgBiNdx8+VU6uBYjRV9JZM=;
        b=U0W75mFYPGwvcgqz1LMUDkaTAETkPlCKECP3GI2xVO16unun97rB1yArVDV9c5bWnj
         YXqkf430H0LOlm4JFMKsQPWa6Ih+TaJbCVjRbE0V/4072Yk1ksX7FGl/ZE+XNUtezeI6
         87AuOpZpmqEZEKXy01OMjoAAyuTT5Z0ai+xVMa3BEHRIdY3Kj0z/w/RtYe/4+jJbssIb
         7haVc+jo4akDxHV54cl5r0cQxhIt+t0bB/j5uWqcLhx+umcXDIN5PEtnEAevjkzqlE2a
         /dBD2m4gTpzOLrYhRxbshisH8hrclP1BNaxoCU85UxuQsPPmNTvJbew13zdlfFF1INLg
         CZkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:subject:to:cc:references
         :in-reply-to:mime-version:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xSqrB92nwQpjxmgBsSzyDlgBiNdx8+VU6uBYjRV9JZM=;
        b=pPx5zQROo16CNY6VD1H+5FXWLPDfCc96ukIRxQW9751WJMu6OqxdZLsbT/bhmWkZTO
         Qc1ih2Uo5HcX4dVP77iit9uel0QKV7LuWZNLDn7yJxcer1+yKYdH3erVJnuPHrDG38by
         L7jXDnWg9jXD1S+SGhEeQkzU9l6X90OxxyykugwL2rVwVsBFuwoMHyLkQcM8TqK+2mZ/
         vA1sDFwD0U+/8Sv3KzfLd7P1h15eIQiF+bChV+hdGrdmZX5jWcZ8adTEAn4dyeJIKWKt
         k8p79veCtsl8GIcVUvP4rDjNBlUb4qUbFxc9QyLsa9zrvn3HRB3QeRd9uchgMZATfXK6
         mzTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532yVYeGzdAd4wp2XNqJupzKz8tCfhyrKgLz2tLpxuWisqdlZT6u
	ziQlpO/2hXLk+Ol+dE8OFbM=
X-Google-Smtp-Source: ABdhPJwZjXT/CGkOUxeTzdr7Eb/5cdVS/3zJN1BoAA488M75GrtZfcnFTfHZZRtd3ANqydvbRtfREg==
X-Received: by 2002:a25:f446:: with SMTP id p6mr3448187ybe.288.1624352266858;
        Tue, 22 Jun 2021 01:57:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2787:: with SMTP id n129ls10690246ybn.6.gmail; Tue, 22
 Jun 2021 01:57:46 -0700 (PDT)
X-Received: by 2002:a25:9a45:: with SMTP id r5mr3367352ybo.450.1624352266417;
        Tue, 22 Jun 2021 01:57:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624352266; cv=none;
        d=google.com; s=arc-20160816;
        b=TqGlKcUjKGBnm94hrUycHOIkpYe5Lx1z2yTWj7NRzOR7a+BMnZVj/OAJ8NcuUhBepk
         nK0xd9bLC+OF0hsXaoV3gMzhyIow/HlBuFXbmYbAIIP/kuEXt1TWvFLzb+77QzldTRN9
         Q5TQhg0dHOQ7oXiBFaBUOaYnARUmmB6dEMf+Dv1nMfjqAk+ySfc3JA6k+Oocts7zwzVG
         2+6V8B+rSdA+e4ErlwpfC99ZxSWcXOQDZy1081K9P0glfsUrT/vQhrs8X/lP4J8y8C+s
         jr/ZhGQMHEqyZfo7N0eOHgpVDVoftPVp2KD1GpHzLrzTpOjFlvnq4iwZFSioDo2c4g2s
         YwZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:mime-version:in-reply-to
         :references:cc:to:subject:from:date:dkim-signature;
        bh=HNevKIrxlPVGEQdCRLTX5YK2dWZlzRumxTolSmIBotY=;
        b=uWJ2kWJlXOcfNMNRBbT0yFVByZEycX8OioESiB8IgD3hRxZ/hOe+Nv0wQq48lqsGKl
         5B1r5wthkxChTMnBa3oM26o+aI4nf+ROXVn1hMsu4lyTd4VVqlaYrz0275/9tmA6Y+EQ
         fPAtVbXjwDX1wQ8nhjutgm488rB/K/pu630BR0eOpu6wF4hDOd0rEBAAQCa6SbTWzu0N
         twEvCuhsilGThPZOeR4Y2CsQ3HTa6qWm4JpJ3dFH9LHA6qNrvtdIao3es5KDCpdPxjAR
         z9ERBrdlEk4zlGVx9GAhO4MsM2453wxw1aJqcqZ2IJOjmYz2xwTIfQH2Whe8pM0YiVp6
         0Sbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mVukyLLV;
       spf=pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=npiggin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id x199si114966ybe.5.2021.06.22.01.57.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jun 2021 01:57:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id k5so11701551pjj.1
        for <clang-built-linux@googlegroups.com>; Tue, 22 Jun 2021 01:57:46 -0700 (PDT)
X-Received: by 2002:a17:90b:2282:: with SMTP id kx2mr2673071pjb.60.1624352265702;
        Tue, 22 Jun 2021 01:57:45 -0700 (PDT)
Received: from localhost (60-242-147-73.tpgi.com.au. [60.242.147.73])
        by smtp.gmail.com with ESMTPSA id n5sm15609389pgf.35.2021.06.22.01.57.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jun 2021 01:57:45 -0700 (PDT)
Date: Tue, 22 Jun 2021 18:57:39 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH] KVM: PPC: Book3S HV: Workaround high stack usage with
 clang
To: Michael Ellerman <mpe@ellerman.id.au>, Nathan Chancellor
	<nathan@kernel.org>, Paul Mackerras <paulus@ozlabs.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Benjamin Herrenschmidt
	<benh@kernel.crashing.org>, clang-built-linux@googlegroups.com,
	kvm-ppc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, kernel test robot <lkp@intel.com>,
	Nick Desaulniers <ndesaulniers@google.com>
References: <YNDUEoanTqvayZ5P@archlinux-ax161>
	<20210621182440.990242-1-nathan@kernel.org>
In-Reply-To: <20210621182440.990242-1-nathan@kernel.org>
MIME-Version: 1.0
Message-Id: <1624352117.tss3fnkwt4.astroid@bobo.none>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: npiggin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mVukyLLV;       spf=pass
 (google.com: domain of npiggin@gmail.com designates 2607:f8b0:4864:20::1029
 as permitted sender) smtp.mailfrom=npiggin@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Excerpts from Nathan Chancellor's message of June 22, 2021 4:24 am:
> LLVM does not emit optimal byteswap assembly, which results in high
> stack usage in kvmhv_enter_nested_guest() due to the inlining of
> byteswap_pt_regs(). With LLVM 12.0.0:
> 
> arch/powerpc/kvm/book3s_hv_nested.c:289:6: error: stack frame size of
> 2512 bytes in function 'kvmhv_enter_nested_guest' [-Werror,-Wframe-larger-than=]
> long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
>      ^
> 1 error generated.
> 
> While this gets fixed in LLVM, mark byteswap_pt_regs() as
> noinline_for_stack so that it does not get inlined and break the build
> due to -Werror by default in arch/powerpc/. Not inlining saves
> approximately 800 bytes with LLVM 12.0.0:
> 
> arch/powerpc/kvm/book3s_hv_nested.c:290:6: warning: stack frame size of
> 1728 bytes in function 'kvmhv_enter_nested_guest' [-Wframe-larger-than=]
> long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
>      ^
> 1 warning generated.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1292
> Link: https://bugs.llvm.org/show_bug.cgi?id=49610
> Link: https://lore.kernel.org/r/202104031853.vDT0Qjqj-lkp@intel.com/
> Link: https://gist.github.com/ba710e3703bf45043a31e2806c843ffd
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Seems okay to me. If it was something where performance might be 
signficiant I guess you could ifdef on CC_IS_CLANG, but for this
it shouldn't matter.

Acked-by: Nicholas Piggin <npiggin@gmail.com>

Thanks,
Nick

> ---
>  arch/powerpc/kvm/book3s_hv_nested.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/powerpc/kvm/book3s_hv_nested.c b/arch/powerpc/kvm/book3s_hv_nested.c
> index 60724f674421..1b3ff0af1264 100644
> --- a/arch/powerpc/kvm/book3s_hv_nested.c
> +++ b/arch/powerpc/kvm/book3s_hv_nested.c
> @@ -53,7 +53,8 @@ void kvmhv_save_hv_regs(struct kvm_vcpu *vcpu, struct hv_guest_state *hr)
>  	hr->dawrx1 = vcpu->arch.dawrx1;
>  }
>  
> -static void byteswap_pt_regs(struct pt_regs *regs)
> +/* Use noinline_for_stack due to https://bugs.llvm.org/show_bug.cgi?id=49610 */
> +static noinline_for_stack void byteswap_pt_regs(struct pt_regs *regs)
>  {
>  	unsigned long *addr = (unsigned long *) regs;
>  
> 
> base-commit: 4a21192e2796c3338c4b0083b494a84a61311aaf
> -- 
> 2.32.0.93.g670b81a890
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1624352117.tss3fnkwt4.astroid%40bobo.none.
