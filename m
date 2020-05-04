Return-Path: <clang-built-linux+bncBCFYN6ELYIORBW7XYD2QKGQEUKFMWRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4121C3F37
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 May 2020 17:59:25 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id l7sf9015pgb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 08:59:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588607963; cv=pass;
        d=google.com; s=arc-20160816;
        b=rniWodDslBCdRpie+I/H2vmrPZ6aFNeU544VhZ/pu7KM4/9rHQd3nyN7khlpjYRfkq
         F3OPEhHIu0fIekVVgaV5ZNC96DtP1wVmIrgBRbdyiL67RzguMgOtV1AqCPNHe2z2cflG
         F6OS/xlwgtRlXt31X9vSwmpI1TXQQN7VZbyHVP4dikCTOOXipv/CXplPpZlvXqQ7Cr4/
         i2FpE+6k2wJbxLTA9DAh7WCR+B9avO1ZjaBe4JeWDaA1wc/i6U7gkSYU48VLFdCVhARS
         CcF0/bwncRuxLB1hvLl6FpGg4Dn0pLje6pPgQRKq146VmMelq+05GKPiodnJcZvZfLur
         TsYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=XTdt7x/KRzKxCGnbEstR1qLxT6jurNV62h62/k3Ty/E=;
        b=U3YjhAcws/lZgNzjD/elqTRXrpeTNoIXlGF3Z3jloLdt66UL8E+pNoSBQ9yZamXlxb
         TiXfo0EL4mLXxDKGxg5Wr4f0MBAzdLeoyRlTwO3RC5qTJ0IKmLF60CYc9Q4o4sQCOnk5
         FvfllA6I1J0Ycgk77snDNa72k/lDjUyF6xa8Bc75xwwgjYXdMx6FAlXIv9F7mBkvIRy9
         NbJjf/piuT7wT0k17aAYAs2gKDGktn4AjJ5YZClEE+AorpGLYdMjcmv7M+GdO+2hqnZs
         MIhVnfjkYB0tio+51wiQhRRh86zRfOA0Eea/Q+zdy4F/7m/SMjGdaNbI98Qjp92AGWOv
         Btig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Sq4mhCny;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XTdt7x/KRzKxCGnbEstR1qLxT6jurNV62h62/k3Ty/E=;
        b=sn4mjEhPaGIFB6UiLtfZl3gnj7RyIHlOnhhJc7BL6+LRarrTYbIrzwSJwbkKdYaHNY
         D95lf57b07wK3a1kpszuZG89se0uQpCIZB9JyOzgCp/r0HC/vYu/sMviRx69LVBB15h+
         N+qUgU5yUUzPjcwl0bgtWs+G4+9bG7U8Fvy0Huwo9xqOLL08/hTuqGuOShnhpKlvWsIu
         Q3vyMu1T6WAtyfPxEXe/058UCW4fbiVPaMwevyUbTRB4WgHS99SAm+5KMeS6sFZ/HE1V
         7m2UB+eLU6vgI9bHgGTnoHP3+RQC4qXD5W+U224PKgyb1RAc+c3ylqIqIe8BRKH+NrFJ
         d+0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XTdt7x/KRzKxCGnbEstR1qLxT6jurNV62h62/k3Ty/E=;
        b=Qz7donHVRBkbQLSIWV5hMf2kv0/DF/HeptbbyI5gpEUsxJaWeoD5Voal3MGfoIxFJH
         t9FgUMGhmGUt1pLiWrCpgcG4LXE0i+G8E0vrMLLnHi/0maczEnSmGKg4bIJydawX3OcE
         XHBAKRoXlXPYffUGcRDCJ6x8R5eJaduyOW3dsoBaxBdp8KvXlxUxjT+pVSWDVpIAyqqW
         savgqzf7TEu25ynz+JOoLUvfeGrzMvR65gUvRUcGzX4shjKmEG+zlBUciYCZ7UdfUI6y
         Ors8hd1zBkf4n5YjHS2yRt3g1yn9q9pRBk5FH4z2mGKBErdFk2NMb6Te+eYz93DAaJqh
         dSjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYRMA5YV6BN/3Usmt0cbWvCCj0UvBvXPgnS8avxhrWRfAb4jYIe
	agX4MKuPR6CEakk0IOtQGDM=
X-Google-Smtp-Source: APiQypKxTn0285mIbCkeCe3YGXNgnqbdDqrrYJLmDTLwoiJcfA0L/Z2zE4KXaxADER+fcW0GpRIF5g==
X-Received: by 2002:a17:90a:37a3:: with SMTP id v32mr25452pjb.2.1588607963607;
        Mon, 04 May 2020 08:59:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4b5c:: with SMTP id k28ls15195689pgl.0.gmail; Mon, 04
 May 2020 08:59:23 -0700 (PDT)
X-Received: by 2002:a62:4e88:: with SMTP id c130mr18591966pfb.122.1588607963015;
        Mon, 04 May 2020 08:59:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588607963; cv=none;
        d=google.com; s=arc-20160816;
        b=aMwp+5w0nXWBNHi/NL+yKd8Juv+/1S9UA+TnRn9vSuEPgqC6Dw7ZoWF5eLjglSnbVA
         VnYe6JSUQOkwSVVrrgk34h0KWGPqyrkXWpbgB7lIY0cktYXGZmMqrDPrqzaoYw9PlaRY
         NDBJ6+EictlSZHFHgSRk83kyx87Xf8j5weOypFXE5k+XfM6bme6PoeNf5ETirTZcTAIT
         qBXmXCAlMtiQN0ny5rDda1GxaNNvx9CnF/mXCdkAAqCeFjn2Af50hKkyIKyqN7PRW/bZ
         kvzc29FssCzPJPhFerdHB/qS74kkENXMtgPAqXbq33GHgfkkZxJq4EEkkJmYn5qGoNEV
         vUTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=ddTUPWkbJZYVFUnajNbkHHVyfS6o34xZoLIhU7FW+jg=;
        b=QEpDIMx37Cf3oObGeFgC8aofhLury5gxeAy9RBpgTOYyOcj8qjgBOkxz6BkqMQMzC0
         9Di7MLPwq5cY01Y0nUIu4e9TwhWD9iJWvcaRxVmTZQmBIWVKi1gU0ntFgcWrWiL3Yyn7
         JDaKqQ5Ucs7ddtJinXCyyng1Glc9P4yLD2hq6KWbSJq9wtohtUeHBrZuYJ4bQtCSxvOq
         P0rCiDRGXZpk4CJyeamxIleNmKeSXqdQfT13LBSHUpOWV+AVWngjxAP22WO5b64ejKMS
         RcYXRj6/5sfXf52ezJ1rgDVd6gzB0PJ7+Vz/fUrq8QM7SeGxDJOXBdLXE2ybjoDxajHy
         PKqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Sq4mhCny;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id g23si780053pgi.5.2020.05.04.08.59.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 May 2020 08:59:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbonzini@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-89-C4Tp5rGWNP2hqfdRCjokQQ-1; Mon, 04 May 2020 11:59:16 -0400
X-MC-Unique: C4Tp5rGWNP2hqfdRCjokQQ-1
Received: by mail-wr1-f70.google.com with SMTP id m5so10989619wru.15
        for <clang-built-linux@googlegroups.com>; Mon, 04 May 2020 08:59:16 -0700 (PDT)
X-Received: by 2002:adf:978c:: with SMTP id s12mr19581296wrb.312.1588607955104;
        Mon, 04 May 2020 08:59:15 -0700 (PDT)
X-Received: by 2002:adf:978c:: with SMTP id s12mr19581276wrb.312.1588607954889;
        Mon, 04 May 2020 08:59:14 -0700 (PDT)
Received: from [192.168.178.58] ([151.20.132.175])
        by smtp.gmail.com with ESMTPSA id f7sm18140805wrt.10.2020.05.04.08.59.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 May 2020 08:59:14 -0700 (PDT)
Subject: Re: [PATCH] KVM: nVMX: Replace a BUG_ON(1) with BUG() to squash clang
 warning
To: Sean Christopherson <sean.j.christopherson@intel.com>
Cc: Vitaly Kuznetsov <vkuznets@redhat.com>, Wanpeng Li
 <wanpengli@tencent.com>, Jim Mattson <jmattson@google.com>,
 Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
References: <20200504153506.28898-1-sean.j.christopherson@intel.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <5bf03dc1-c5b1-8264-6361-e85c523a2fa4@redhat.com>
Date: Mon, 4 May 2020 17:59:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200504153506.28898-1-sean.j.christopherson@intel.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: pbonzini@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Sq4mhCny;
       spf=pass (google.com: domain of pbonzini@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
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

On 04/05/20 17:35, Sean Christopherson wrote:
> Use BUG() in the impossible-to-hit default case when switching on the
> scope of INVEPT to squash a warning with clang 11 due to clang treating
> the BUG_ON() as conditional.
> 
>   >> arch/x86/kvm/vmx/nested.c:5246:3: warning: variable 'roots_to_free'
>      is used uninitialized whenever 'if' condition is false
>      [-Wsometimes-uninitialized]
>                    BUG_ON(1);
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Fixes: ce8fe7b77bd8 ("KVM: nVMX: Free only the affected contexts when emulating INVEPT")
> Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
> ---
>  arch/x86/kvm/vmx/nested.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/x86/kvm/vmx/nested.c b/arch/x86/kvm/vmx/nested.c
> index 2c36f3f53108..669445136144 100644
> --- a/arch/x86/kvm/vmx/nested.c
> +++ b/arch/x86/kvm/vmx/nested.c
> @@ -5249,7 +5249,7 @@ static int handle_invept(struct kvm_vcpu *vcpu)
>  		roots_to_free = KVM_MMU_ROOTS_ALL;
>  		break;
>  	default:
> -		BUG_ON(1);
> +		BUG();
>  		break;
>  	}
>  
> 

Queued, thanks.

Paolo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5bf03dc1-c5b1-8264-6361-e85c523a2fa4%40redhat.com.
