Return-Path: <clang-built-linux+bncBCFYN6ELYIORBGN7QSCAMGQE43DRU3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A980367A79
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 09:02:51 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id u5-20020a17090a3fc5b029014e545d9a6esf505261pjm.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 00:02:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619074970; cv=pass;
        d=google.com; s=arc-20160816;
        b=nPBR6LX9e3bR4t/xGk3rMI9uLe5k8EBGzTqX6cI9Jho9D33GrmMvny0SQZjxdDzp3y
         hZamnc+eCpfSUshRUQU1YMmEOJv3+lhToqL+UaWVmUzg0VIFbE1v3FvmmheVzUGdQd36
         +Vp3WB2MThE3R5jksBBS4h8RNF0/9X3OK5vx+6Mg413stw9ML4VSzfhLOu+V7ydxLAVH
         cA4mGbFzDlpEjFx/pnhXisr2ZPmBNM5VUVTHRQCIzoKCGF6lxm/qqgqdj1Eto/4EC/Vm
         SwMIHUmscHU6gSNRPCPyFrGgv5/nZIFn91I0/L2BXVdgCzk34+RalcAPKpbnYOW2SSAm
         qKTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=yR+K5F8238DpHh4i/a+Yaidz20rQIS49ROGhfTpgkDo=;
        b=P/sTWGM1UVRcuNZYQumAU6mYSnBwdex+051yuUWZk7HlvPH0xPOkhUA5s7fxd+pFEY
         G7X7mSgzaGk4FTDlwPib+UV0UKvYSgaNbUnfJMVg7uWAPXi2Qxvse0s+Q00NSpvzby4I
         qZTrIUwmfFu2BJ0aUW3p96mPcBdUWwcUphZA+B57fG7eItnD19Wi75VSjANcwMIBFiPl
         HfHg3CN4BED+UqYQ6qNehovZsKNsxXnv058YMDHUpTzRqIzhHIlQQ1k8557OZUbo7C9O
         IsMQ3BKLmfxgPDjTgx6IrtgND92t2WFxB010X1gvMcrcnVs/WIXjgn6+Iv4Ht0r8R5FA
         iIiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UXCZOAXa;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yR+K5F8238DpHh4i/a+Yaidz20rQIS49ROGhfTpgkDo=;
        b=SNQU5YxcIhFbPYLvcpEBetWl1e4aKjEtX2o/r+R/CrQ/bYuesZhkkB+C4qz67u8no7
         jE2zsHGqjI8+raRunGUwxxrhl4hV9dFf78z1cco6m56nqdueXo+vuj//8FGwJzH9L7pd
         l/EqE/Uu3HL1/2fhtqNm1K1ii+eE8LY3ocwdhDtWRewULQgMpmGmo/zwF0OHHXToRWFt
         nkLuY7pO2+465wB0etxoOfdcpsqM/PSTtdNVvz/WE6+1D/s1lLKLqEWn7BoIdbS0Sww/
         GlsjIfOZGF/DmEoXQQsKo9i8DGVpOmNi0Byj5KwFqlO6meVw76Hc+3f2ybK7kIBKvCGr
         M+ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yR+K5F8238DpHh4i/a+Yaidz20rQIS49ROGhfTpgkDo=;
        b=nAO1SwaWqoSiPByzGtaJtqrVekWbjaFOKhP+bCMpanjXrRM1s7wCmhC67Ul39sf891
         SoQKYTsb8Tr4QnoqXbJMzFyEOoGlPnDr9QbjzAsyQ+oU+3MtQfNI+I35v4qGJjUazw9q
         WILs71Sex9RfBnC2Aqy9c9TvLVgZcM9Z8ipNvUZEe8VucQ/TMhwUG6Nm4FTZxh+CW+cF
         kgg2FmOXkgwOFAjKYdLScwNgRvYH/0uuzR/W8/nzSREyFKtOnizEoK3ftN1/2xfppLzi
         a/DcLj+2M02IdOIqpXW5Xe4TqzmgoY2MeYPE5V85Bk9FgSoG0ij6avGWygXO4MUxUek2
         +0NA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531k3jx1BqezS4hEmH9OAfRwOwys60LobuBmE0J2753miuVkrSil
	IFS8vqq2N3nYGcpmOTDULZw=
X-Google-Smtp-Source: ABdhPJyyFOTlI4Q0wVI/gfo2NQKsdSFO33O+AwuErQ0qkiHsGhwpiKIEM6pA+avWx3K208UW5azrkg==
X-Received: by 2002:a63:788f:: with SMTP id t137mr2122291pgc.323.1619074969750;
        Thu, 22 Apr 2021 00:02:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8184:: with SMTP id g4ls1838041pfi.4.gmail; Thu, 22 Apr
 2021 00:02:49 -0700 (PDT)
X-Received: by 2002:a63:510f:: with SMTP id f15mr2125728pgb.390.1619074969172;
        Thu, 22 Apr 2021 00:02:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619074969; cv=none;
        d=google.com; s=arc-20160816;
        b=xOuaT11ipFhxV0PVv5yScreQiQB4WfWTGf93uMHI2OzXcSIqPn9CqDg8XS6O69UAsq
         +u6sWmLOnzlusQD73gWThVklI0JTUdZ+UWUAuwT2iXO0c8OYhRGVtMwBmjz5fVejH7DZ
         esphClmWP7iLbcZVaOSHmQwzh0D7GnbfhvxLDaaZL+9a++9lLGr3WGbFrWuk7e/ajpQT
         DnYAbJSaiSnyOYO2NwfPChPBwwMz1B2lVJAtmXOjJmbu0slaoObrNLHP/+PV30aj8XE8
         f1DteJIFbDfkJ8OY65RqUjeyFJUqmGM/r006GOPVHya6QcoIhSjrjg1Djt/u9N0BlWE+
         b5pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=U1sBIWc97pwUoI/Y/7htamKNpDUssIIcTnKBNjle2Og=;
        b=gLORBQ4y40XXecZunhYxYHfgitwsUZDIK9wKNj3jrMTzxpOhrBagtUi3TpkHXaMrKF
         FLCZGZuuzNMA3sLUU1zaxw8gHJ2Id6VfHnUrZAsezPUrEb14wfmI1uPzXq+Zb7OncvLe
         HXhgKfKf1SrUORHbR5g1DURD//MJ8f8E38HthNtaQmfyZENQ0ICRCadTYp84m5tB0WSL
         6vpDxdg2CNBHnE5DWOpDxsp2ORWcklRYN8XfLkbIxpn0izOd3v+kikC9zsbmTaNoLWcQ
         yzFbVoYnFJSkb+G2FlwzIVfylZ/T1Q5bGoYoo1UwV1bJ0WKKL364BATriMdEwH6h9/BR
         r1HQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UXCZOAXa;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id x3si1237374pjo.3.2021.04.22.00.02.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Apr 2021 00:02:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-6-pXVoF4U_Phudj9asJLa5Sg-1; Thu, 22 Apr 2021 03:02:13 -0400
X-MC-Unique: pXVoF4U_Phudj9asJLa5Sg-1
Received: by mail-ed1-f72.google.com with SMTP id w14-20020aa7da4e0000b02903834aeed684so14455740eds.13
        for <clang-built-linux@googlegroups.com>; Thu, 22 Apr 2021 00:02:13 -0700 (PDT)
X-Received: by 2002:a05:6402:54f:: with SMTP id i15mr1922208edx.365.1619074932235;
        Thu, 22 Apr 2021 00:02:12 -0700 (PDT)
X-Received: by 2002:a05:6402:54f:: with SMTP id i15mr1922156edx.365.1619074931964;
        Thu, 22 Apr 2021 00:02:11 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c8dd:75d4:99ab:290a? ([2001:b07:6468:f312:c8dd:75d4:99ab:290a])
        by smtp.gmail.com with ESMTPSA id n13sm1196993ejx.27.2021.04.22.00.02.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 00:02:11 -0700 (PDT)
Subject: Re: [PATCH 0/5] KVM: x86: Use kernel x86 cpuid utilities in KVM
 selftests
To: Ricardo Koller <ricarkol@google.com>
Cc: kvm@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Sean Christopherson <seanjc@google.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210422005626.564163-1-ricarkol@google.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <c4524e4a-55c7-66f9-25d6-d397f11d25a8@redhat.com>
Date: Thu, 22 Apr 2021 09:02:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210422005626.564163-1-ricarkol@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: pbonzini@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=UXCZOAXa;
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

On 22/04/21 02:56, Ricardo Koller wrote:
> The kernel has a set of utilities and definitions to deal with x86 cpu
> features.  The x86 KVM selftests don't use them, and instead have
> evolved to use differing and ad-hoc methods for checking features. The
> advantage of the kernel feature definitions is that they use a format
> that embeds the info needed to extract them from cpuid (function, index,
> and register to use).
> 
> The first 3 patches massage the related cpuid header files in the kernel
> side, then copy them into tools/ so they can be included by selftests.
> The last 2 patches replace the tests checking for cpu features to use
> the definitions and utilities introduced from the kernel.

I queued the first, but I am not sure about the rest.

An alternative is to copy over the code from kvm-unit-tests which 
encodes the leaf/subleaf/register/bit values into the X86_FEATURE_* 
value.  Sharing code with kvm-unit-tests is probably simpler than adding 
#ifdef __KERNEL__ and keeping the headers in sync.

Paolo

> Thanks,
> Ricardo
> 
> Ricardo Koller (5):
>    KVM: x86: Move reverse CPUID helpers to separate header file
>    x86/cpu: Expose CPUID regs, leaf and index definitions to tools
>    tools headers x86: Copy cpuid helpers from the kernel
>    KVM: selftests: Introduce utilities for checking x86 features
>    KVM: selftests: Use kernel x86 cpuid features format
> 
>   arch/x86/events/intel/pt.c                    |   1 +
>   arch/x86/include/asm/cpufeature.h             |  23 +-
>   arch/x86/include/asm/processor.h              |  11 -
>   arch/x86/kernel/cpu/scattered.c               |   2 +-
>   arch/x86/kernel/cpuid.c                       |   2 +-
>   arch/x86/kvm/cpuid.h                          | 177 +-----------
>   arch/x86/kvm/reverse_cpuid.h                  | 185 +++++++++++++
>   tools/arch/x86/include/asm/cpufeature.h       | 257 ++++++++++++++++++
>   tools/arch/x86/include/asm/cpufeatures.h      |   3 +
>   .../selftests/kvm/include/x86_64/cpuid.h      |  61 +++++
>   .../selftests/kvm/include/x86_64/processor.h  |  16 --
>   .../kvm/include/x86_64/reverse_cpuid.h        | 185 +++++++++++++
>   .../selftests/kvm/include/x86_64/svm_util.h   |  11 +-
>   tools/testing/selftests/kvm/lib/x86_64/svm.c  |   6 +-
>   tools/testing/selftests/kvm/lib/x86_64/vmx.c  |   5 +-
>   tools/testing/selftests/kvm/steal_time.c      |   5 +-
>   .../kvm/x86_64/cr4_cpuid_sync_test.c          |  23 +-
>   .../selftests/kvm/x86_64/set_sregs_test.c     |  25 +-
>   .../selftests/kvm/x86_64/vmx_pmu_msrs_test.c  |   8 +-
>   .../kvm/x86_64/vmx_set_nested_state_test.c    |   5 +-
>   .../selftests/kvm/x86_64/xss_msr_test.c       |  10 +-
>   21 files changed, 749 insertions(+), 272 deletions(-)
>   create mode 100644 arch/x86/kvm/reverse_cpuid.h
>   create mode 100644 tools/arch/x86/include/asm/cpufeature.h
>   create mode 100644 tools/testing/selftests/kvm/include/x86_64/cpuid.h
>   create mode 100644 tools/testing/selftests/kvm/include/x86_64/reverse_cpuid.h
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c4524e4a-55c7-66f9-25d6-d397f11d25a8%40redhat.com.
