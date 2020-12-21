Return-Path: <clang-built-linux+bncBCFYN6ELYIORBGOLQP7QKGQE53NB4IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FC12DFF66
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 19:12:43 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id k66sf5821911oia.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 10:12:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608574362; cv=pass;
        d=google.com; s=arc-20160816;
        b=t29e3Fk8paGwaPO5vqHlRfddSzKE6pxmZaO0OkL2WLMe8/jjJ97eGL/Mo9ow7vhvil
         P9QNQdI41DXmIWCSY9J0IoPg3eVBOCmnAFCrYblFBIlucqjaTnh1RER4pzNjZZTsLPqX
         SRqKRlkpsJr6x1x93uebOVQel+zSC0p8DNdHsV7mhlnk2WLel+wHdMfAsUriun2/66i4
         L3Uyf/8ZGPhpe6nfJqscZqF27QAYYVahBX+DEaJHtQh+h4p6wBIGXBGwJ0/cfp0GiTQt
         DmNldf0HgtfUOxsWdSK0s0nrLQ1gMuWJ1PKnaGOkuYq/eXo9V8bVM2tqkhdPWybGY1pU
         Jv9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=d1H2J+6J6CwSrVSM/oycF5h41ixYR0wQ5Lyk7+a5frs=;
        b=bWkOogqh0T0k6xEVQXgA3wNTsiuVoQg1oHY9J1pVMroMEOcqZyHDSO4btGN6qBK5BG
         yY26KujIijJqHw/s29iV7u+YnOL4Zy0XLm6nQHJ3yYQ/RDL22HHn2g98ZROX1kBqoEoP
         WxE1Kj3KR4Msx2Vs5Ad4AWUkah+mEpkmAjSw6E3fAQy01WAG1c36GN4hMS1UW/nlvWrt
         RXz7kylYSVYljiRdjCNwfrZSuk4Up4Lc0gJAm4J7VzzYWF7Dr6UHin7r0FLg6v9Hycjo
         LFCPbtOQs7r9UuYrj8mJ1xr2eK13mZlW+YDuu7uhiQt7XMBI6TvR37rYp77RASbrLroB
         fIlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TQavvN1i;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d1H2J+6J6CwSrVSM/oycF5h41ixYR0wQ5Lyk7+a5frs=;
        b=LtIg1WFm6KZHwDU8Ddbz1K1kP02Jk8qcGC/sfBt7pFFV/fuwgKrmScD0jEhPbj8hhp
         odJRRO4GKm1YTl36wNCpU3Arg05GCVyYt5ZM6TgZKM9s+0u/VJ09i+9TMCsSnf6d6hbb
         u/sDG77/ZySQEordO/4vmu6MtW+B74IkT4e3FCZXjiKGDvC/VfkpMVa/SqfIIbAPwFK5
         B6TFn9d3RrYNSNqLKCACSxgS9cQij048gLweFvBKVB10Ityc65IyGEQzDbYCmBiioBv1
         MinRHbo9u2u9h+tAc/L+FTD+t7U4TMvC8c193fpe0zzbg3DsjLv7REzkvdYn7mX/o4RM
         Jtvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d1H2J+6J6CwSrVSM/oycF5h41ixYR0wQ5Lyk7+a5frs=;
        b=IgtxVnbEUemRyBqnEqDzLX0GUOxdNf11mPZurW5MgSsO5WTOW+90YJbnrce+sFWuN8
         SODc7dWMx4EL8C3WeX7hzGZV0EnJ5YvZywgmByudwuCsIoJ/QVskRXaQzqXgY/51/dyZ
         qx9wx9lLmwot5hKeq+7ql5rGNuJjjz3rcQMXTALuxHvCULVepJnshdDgfIJP5mbk4tas
         QHMBXmrP+gNnzJL5sB0iv/MIrboF2PglYjnm5MGTXax1wIadKgmNzc3p47YvV1tHQCkU
         wqJSlS7V3ygOJTp6t2bCYVqk+/xf6riMpd+Vq9CRenF5OVnk9NjWErPqnqN0WgxFjiCN
         R55w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jODP+wKCplRND4ysyULlhu4kmSxax4TF2omf3VG/PhZJ80C5j
	JYiuYWJXYP3J7MZgtTeMuKc=
X-Google-Smtp-Source: ABdhPJyyvMFqKekKWC2HqT57vvfnUT0XY7dol7fTqN+d10fQiriCo7AV9d4OgXtqekykWpuPiS9Gcg==
X-Received: by 2002:a9d:46f:: with SMTP id 102mr13300522otc.293.1608574361865;
        Mon, 21 Dec 2020 10:12:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:a843:: with SMTP id r64ls9905991oie.2.gmail; Mon, 21 Dec
 2020 10:12:41 -0800 (PST)
X-Received: by 2002:aca:ab8b:: with SMTP id u133mr11985344oie.18.1608574361389;
        Mon, 21 Dec 2020 10:12:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608574361; cv=none;
        d=google.com; s=arc-20160816;
        b=JHkcBund/CaFDDmQVGPZnsYB0uRi4ERiYa3TiePwSUTf+9TrPoEtinhVImaeBwc220
         4SGBVM9BO1DDKGjm+WV6zzQg7rnV97eGC0s3M4F9MPZhj/mqomVLAY4Xw63QRkQf1bdN
         5dADWksw8EcGh7Ipwm23OGLLHwbb5e79UluMBAKOOq04SOVMTgGRy8zWUNf2Ya8hHos/
         7QffLPB5f0PrGPB8HGiXSupmkmVZFrQ6Ojh9NS3DcrYIZkfmVGs90DL7FAC5ndaJvC9o
         lnzbYaf1y/cT4IKlEnSQl14Lp6QWJoq1w2+K3BcDmCkMnfwWo35ZZsptDBeuJqj+rEkj
         oiTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=FNWljgMN9GP4v/GttfkerKbzxoxWratIwvuxaoSFccA=;
        b=MFMm2BtIg274G6fuhq3npOmF8VMBwybhwzJof7GODyKL+NE6ObTzMtBlDrwGX6kJc7
         iGCFjCVk1kJnJQhn5YxYfxemxhBiTt54wnAFAJ6K8MeqRLh05gZ+4SXm9nmQsAVdL10v
         W2+55Ds7jvy5IZFAKohBX/I9CBH+VbXc2BrlYUDCsFCVuRZChsREtA+Y8Zddtj+/CSdd
         dMh1HlbfTjiVnS5YM9yVu3x2vLBypraynXVxU6OqOpAxMy0Yy6+wE+pWqjyc60I31y7P
         AeGaRnx24hj7R4ALzRoWYEZ7mpwTIa/rZqLEqxOC1XV/GNAlc/xyDPnaxlDqbqrTNt57
         SndA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TQavvN1i;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id w26si1151375oih.1.2020.12.21.10.12.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Dec 2020 10:12:41 -0800 (PST)
Received-SPF: pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-569-geVRXnTGNNmEKvgpzewiow-1; Mon, 21 Dec 2020 13:12:37 -0500
X-MC-Unique: geVRXnTGNNmEKvgpzewiow-1
Received: by mail-wm1-f70.google.com with SMTP id s185so5331131wme.0
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 10:12:36 -0800 (PST)
X-Received: by 2002:adf:ce84:: with SMTP id r4mr19650813wrn.91.1608574355730;
        Mon, 21 Dec 2020 10:12:35 -0800 (PST)
X-Received: by 2002:adf:ce84:: with SMTP id r4mr19650775wrn.91.1608574355458;
        Mon, 21 Dec 2020 10:12:35 -0800 (PST)
Received: from ?IPv6:2001:b07:6468:f312:c8dd:75d4:99ab:290a? ([2001:b07:6468:f312:c8dd:75d4:99ab:290a])
        by smtp.gmail.com with ESMTPSA id r7sm19534725wmh.2.2020.12.21.10.12.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 10:12:34 -0800 (PST)
Subject: Re: [PATCH] KVM: SVM: Add register operand to vmsave call in
 sev_es_vcpu_load
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Tom Lendacky <thomas.lendacky@amd.com>,
 Sean Christopherson <seanjc@google.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, x86@kernel.org, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Nick Desaulniers <ndesaulniers@google.com>,
 Sami Tolvanen <samitolvanen@google.com>
References: <20201219063711.3526947-1-natechancellor@gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <f6d61324-4243-e5ed-9450-6ee8f9b1f44b@redhat.com>
Date: Mon, 21 Dec 2020 19:12:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201219063711.3526947-1-natechancellor@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: pbonzini@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=TQavvN1i;
       spf=pass (google.com: domain of pbonzini@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 19/12/20 07:37, Nathan Chancellor wrote:
> When using LLVM's integrated assembler (LLVM_IAS=1) while building
> x86_64_defconfig + CONFIG_KVM=y + CONFIG_KVM_AMD=y, the following build
> error occurs:
> 
>   $ make LLVM=1 LLVM_IAS=1 arch/x86/kvm/svm/sev.o
>   arch/x86/kvm/svm/sev.c:2004:15: error: too few operands for instruction
>           asm volatile(__ex("vmsave") : : "a" (__sme_page_pa(sd->save_area)) : "memory");
>                        ^
>   arch/x86/kvm/svm/sev.c:28:17: note: expanded from macro '__ex'
>   #define __ex(x) __kvm_handle_fault_on_reboot(x)
>                   ^
>   ./arch/x86/include/asm/kvm_host.h:1646:10: note: expanded from macro '__kvm_handle_fault_on_reboot'
>           "666: \n\t"                                                     \
>                   ^
>   <inline asm>:2:2: note: instantiated into assembly here
>           vmsave
>           ^
>   1 error generated.
> 
> This happens because LLVM currently does not support calling vmsave
> without the fixed register operand (%rax for 64-bit and %eax for
> 32-bit). This will be fixed in LLVM 12 but the kernel currently supports
> LLVM 10.0.1 and newer so this needs to be handled.
> 
> Add the proper register using the _ASM_AX macro, which matches the
> vmsave call in vmenter.S.
> 
> Fixes: 861377730aa9 ("KVM: SVM: Provide support for SEV-ES vCPU loading")
> Link: https://reviews.llvm.org/D93524
> Link: https://github.com/ClangBuiltLinux/linux/issues/1216
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>   arch/x86/kvm/svm/sev.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/x86/kvm/svm/sev.c b/arch/x86/kvm/svm/sev.c
> index e57847ff8bd2..958370758ed0 100644
> --- a/arch/x86/kvm/svm/sev.c
> +++ b/arch/x86/kvm/svm/sev.c
> @@ -2001,7 +2001,7 @@ void sev_es_vcpu_load(struct vcpu_svm *svm, int cpu)
>   	 * of which one step is to perform a VMLOAD. Since hardware does not
>   	 * perform a VMSAVE on VMRUN, the host savearea must be updated.
>   	 */
> -	asm volatile(__ex("vmsave") : : "a" (__sme_page_pa(sd->save_area)) : "memory");
> +	asm volatile(__ex("vmsave %%"_ASM_AX) : : "a" (__sme_page_pa(sd->save_area)) : "memory");
>   
>   	/*
>   	 * Certain MSRs are restored on VMEXIT, only save ones that aren't
> 

Queued, thanks.

Paolo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f6d61324-4243-e5ed-9450-6ee8f9b1f44b%40redhat.com.
