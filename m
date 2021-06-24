Return-Path: <clang-built-linux+bncBCFYN6ELYIORBIMZ2ODAMGQEUJJWPNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B18BB3B3581
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 20:19:14 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id h12-20020a4add8c0000b029024bea4e22afsf4226643oov.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 11:19:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624558753; cv=pass;
        d=google.com; s=arc-20160816;
        b=BnINT4cWeY/GE7Afi9gL+tgUj2h4HbRk/dkNDFR67MMakvqvSOZaxQnSfXlbZmTS4u
         x+Ry+f4MaNurQsFZd/Ue/36JeDkl0XtlX0Y9nM+8XSZJq5yAPJQwHcIDdXUIzFeIRSmW
         YkbrylIR70xuK7EdhtgK7zD+FggDHH/CAz1Oj8/FaZp9nh5fKcWDYUTL9z1ljepKtaCc
         HPMBDWMeypVsfgLch4i461EJb1GJtc8sUeAK6PQkG2WPxyf+BYz3Pe9hdL6qhEKM3Ps1
         WGSpQA1JxXIoBBFaQyDBy/asLdZ4f35S667vKr8ChJyJVw/AQdlv/Rec4dhsK/uRQnw6
         w1Mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=2QvXInlssmVYldeFvbcEAtqtolKFvLRSkggEPwAeTeU=;
        b=y6TYEbdQGFnOdHNSrhSIt8Z4vuNzz9MzCTe39CkEb0G1DeoF1xiPS49QJhLAfuV4IY
         FOd3z9VBanqjDSrtf07LdbMOjiAoqu1ofN22e4ImuZwGSvdPQvNSXFEXlzxP/E8Y1Tpl
         u86iHnVdLrDrNdufN2Cxysro2iRkQWSS2RLTk0GNiAsaPmT4wf+/yKm5NAooKOoYQa0T
         R4pFF0hNhaEDgDh/+8+YCiZZ89xlQw01RIr5bn356e9BtZJrB/XQ9sPt2LrNdk4jCD4l
         RjlnKLNmoex/3BTgQqKppFd/kgLdyScTArxbHH0tU1fSsPTtezDo3h8Ihq9FLpqeLrYS
         jEGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YSOVTN2L;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2QvXInlssmVYldeFvbcEAtqtolKFvLRSkggEPwAeTeU=;
        b=cuatCHY2jvga28VM33LK3WtkQElCxWadnm154/Ie1/QUit8d+voNeWiHCKmlsse9vD
         q1jLZxl4jsN6NiFkV84cTRbVAgRHWVLLyyOoEkCJFjKQObNSdnv9IkiWrd5mMEohe6yL
         axhfamsZVbPhJPy32NVet2RWlPzMZHu3WByeXqETSYKQ3fQl67zs9tnR5HGgwTOW5jye
         WFvmSP7sZXxl9apJu9gZVtwNz4KY5ZwidCmXG46i87zWXmTUcPGM/iYmr83ArpFxG/gg
         YDQqtCt3dX43kq+xQOZjiPnsjSkRbnR4RaFxa2Nj78upQ+LKMnubjc2JTCgxCI30l9DX
         0hzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2QvXInlssmVYldeFvbcEAtqtolKFvLRSkggEPwAeTeU=;
        b=gaAF2Lz+QWT87L8iVNJZzzIJtbpi5Fo7AtfxWXKf+T/F6vjug2gQ6tOT7nWYzV9Ovc
         6KkjOuztvmSDOBWmvOE3ALIjghCVbG8EjZVPaks8iOHI4TpfO9CATQWhggw0KCZG5skV
         ORRtJRhP6ZIa5xxCFqWsCCxv2qOreG7geC4lHCdQ87DHy9uT+6GwWGLIMpJERHqy2RYz
         qZjUhiqHI17qjGL+uRO2bJ9hs9i9724GF2W7EmtKBdc2QtT3kZywrPqZiy120z6/1RZj
         YoVO/8fPZb0UnLzrL/yx8kvhTvnoqE0H3kp5u53fTgk7rNIGWj+oPrTh27ele6lJU2eg
         WPOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Ov+8npQqcA+JuF/aM/GwOOd5a0TXJE4uboGAjMaQKf90Z6mNJ
	XbsHSwJxV0ypPKRzpFoibbk=
X-Google-Smtp-Source: ABdhPJwbyUvSgF4rBgzmfeLvFcGJam6JgEwaCQ+QrOAIyPRhaVjhHZc9jZ11OCucOcgMwDkbhREE/Q==
X-Received: by 2002:a4a:2f87:: with SMTP id p129mr5573337oop.41.1624558753676;
        Thu, 24 Jun 2021 11:19:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6242:: with SMTP id i2ls2426342otk.2.gmail; Thu, 24 Jun
 2021 11:19:13 -0700 (PDT)
X-Received: by 2002:a9d:6287:: with SMTP id x7mr5854019otk.339.1624558753297;
        Thu, 24 Jun 2021 11:19:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624558753; cv=none;
        d=google.com; s=arc-20160816;
        b=Aew0o7zmNSCz4oMDoiu1tnq27xF37VMR0YtTCFJ5Axz05j3ZGti9d1sV/gW+habmXM
         KZZSR2xbliGW+YwuAUC0ohLm2RWTTdMJCmyH51KsKHFuf6QbLuX5if9fvjSft+vNVt0r
         Y0uekHH8N7eaVdDs716SPOgoGdIkfI3GytcbOJbGAYK0VSDjxQwpMEtbtZw6FoTn8E8C
         sebd4P6ZVU6GcRESd8mQMb4M7tfC7C+7dRyW5qU1zapCY8pifPKeoxoN7mLXgHGS5eyn
         3imlfgOSPHuyq55lVYrZabrEQFdVe4bquiMAQVUOjrupOAobznQwteWPhGPZgc4C3SjO
         bMQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=+mLRtPh/DGZyKVO5FTJhJkvkgkgWJ+9NI6bwQPnDpek=;
        b=Ftk64yvoGXg0UL1p7dhIGQd4uX+eH+YoxHVjdWaC3I/GpNKKS8XWJhIVqagGZMxAXx
         cYj+R4KXNXFQzreA6/PAMIhB9W8RVoirXDwY32BpCQ6wHAdgyVceqiAy9FiXazM0+hV6
         QibJgzD1pdiRMzjWuHkMf241m2Tp9qDPa2i1noLvnEN9OuddKgG/qaDulbSOF5XmxVSp
         o91yBz1SAepcRZRaEQCdFpeEubixTNVCVlQi+FekHT7L3aapqqDDdZ4aHKiLW7k7wUpN
         xENvfOVOZxIdP/Wc+nK/KJi6Y/l7MSJwZGZ3EQVloUbtVKCGUwt7luul10SSZg7OX1+B
         fPhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YSOVTN2L;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id i10si407512oie.3.2021.06.24.11.19.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Jun 2021 11:19:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-142-jXL8cTdmO1OgrluZwFUGDg-1; Thu, 24 Jun 2021 14:19:11 -0400
X-MC-Unique: jXL8cTdmO1OgrluZwFUGDg-1
Received: by mail-ed1-f72.google.com with SMTP id dy23-20020a05640231f7b0290394996f1452so3827051edb.18
        for <clang-built-linux@googlegroups.com>; Thu, 24 Jun 2021 11:19:11 -0700 (PDT)
X-Received: by 2002:a17:906:cc9b:: with SMTP id oq27mr6567062ejb.301.1624558750029;
        Thu, 24 Jun 2021 11:19:10 -0700 (PDT)
X-Received: by 2002:a17:906:cc9b:: with SMTP id oq27mr6567050ejb.301.1624558749840;
        Thu, 24 Jun 2021 11:19:09 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c8dd:75d4:99ab:290a? ([2001:b07:6468:f312:c8dd:75d4:99ab:290a])
        by smtp.gmail.com with ESMTPSA id s18sm1554573ejh.12.2021.06.24.11.19.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jun 2021 11:19:09 -0700 (PDT)
Subject: Re: [PATCH] KVM: x86: Fix uninitialized return value bug in
 EXIT_HYPERCALL enabling
To: Sean Christopherson <seanjc@google.com>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Vitaly Kuznetsov <vkuznets@redhat.com>, Wanpeng Li
 <wanpengli@tencent.com>, Jim Mattson <jmattson@google.com>,
 Joerg Roedel <joro@8bytes.org>, kvm@vger.kernel.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
References: <20210624180625.159495-1-seanjc@google.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <6146d62f-3c96-1def-a537-1eace63368f3@redhat.com>
Date: Thu, 24 Jun 2021 20:19:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210624180625.159495-1-seanjc@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: pbonzini@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=YSOVTN2L;
       spf=pass (google.com: domain of pbonzini@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
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

On 24/06/21 20:06, Sean Christopherson wrote:
> Zero out 'r' on success in the KVM_CAP_EXIT_HYPERCALL case.  As noted by
> clang, the happy path will return an uninitialized value:
> 
>    arch/x86/kvm/x86.c:5649:7: error: variable 'r' is used uninitialized
>     whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
>                    if (cap->args[0] & ~KVM_EXIT_HYPERCALL_VALID_MASK) {
>                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/x86/kvm/x86.c:5663:9: note: uninitialized use occurs here
>            return r;
>                 ^
>    arch/x86/kvm/x86.c:5649:3: note: remove the 'if' if its condition is always true
>                    if (cap->args[0] & ~KVM_EXIT_HYPERCALL_VALID_MASK) {
>                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/x86/kvm/x86.c:5540:7: note: initialize the variable 'r' to silence this warning
>            int r;
>                 ^
>                  = 0
> 
> Opportunistically move the "r = -EINVAL;" above the check to match the
> pattern used in almost all other cases.
> 
> Fixes: 0dbb11230437 ("KVM: X86: Introduce KVM_HC_MAP_GPA_RANGE hypercall")
> Signed-off-by: Sean Christopherson <seanjc@google.com>

Actually it was not that patch, but rather a botched conflict resolution 
when applying (too late at night) Aaron's emulation failure patch:

@@ -5647,6 +5648,9 @@ int kvm_vm_ioctl_enable_cap(struct kvm *kvm,
                         break;
                 }
                 kvm->arch.hypercall_exit_enabled = cap->args[0];
+               break;
+       case KVM_CAP_EXIT_ON_EMULATION_FAILURE:
+               kvm->arch.exit_on_emulation_error = cap->args[0];
                 r = 0;
                 break;
         default:

I have already fixed this locally, though I haven't pushed it to kvm.git 
yet; my tests should finish running in about an hour, and then I'll push 
everything to kvm/next, except for the C bit fixes.

Paolo

> ---
>   arch/x86/kvm/x86.c | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
> index e4cea00c49a3..647922ba97df 100644
> --- a/arch/x86/kvm/x86.c
> +++ b/arch/x86/kvm/x86.c
> @@ -5646,11 +5646,12 @@ int kvm_vm_ioctl_enable_cap(struct kvm *kvm,
>   			r = kvm_x86_ops.vm_copy_enc_context_from(kvm, cap->args[0]);
>   		return r;
>   	case KVM_CAP_EXIT_HYPERCALL:
> -		if (cap->args[0] & ~KVM_EXIT_HYPERCALL_VALID_MASK) {
> -			r = -EINVAL;
> +		r = -EINVAL;
> +		if (cap->args[0] & ~KVM_EXIT_HYPERCALL_VALID_MASK)
>   			break;
> -		}
> +
>   		kvm->arch.hypercall_exit_enabled = cap->args[0];
> +		r = 0;
>   		break;
>   	case KVM_CAP_EXIT_ON_EMULATION_FAILURE:
>   		kvm->arch.exit_on_emulation_error = cap->args[0];
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6146d62f-3c96-1def-a537-1eace63368f3%40redhat.com.
