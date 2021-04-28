Return-Path: <clang-built-linux+bncBCI27E5CQECRBDXXU2CAMGQEEANNG3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9A136DFDA
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 21:46:23 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id b2-20020a6567c20000b02901fda3676f83sf21978083pgs.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 12:46:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619639182; cv=pass;
        d=google.com; s=arc-20160816;
        b=dSvce16/0BnljUOyqtVW7gZyOukbSbg2S8tDn61YvTcEf9EDHRj1N1CpdkXQKlGKGu
         k+zXQ0v8xDGJl/Zh98dqlgspFOZoxTMNPt5AnXZPkEPJ4U3RTYFH9VeO/SY4maw6b3ls
         LFCJ3pVT++0HUsLYlups5kb3rpRILoelyqnMw4aC653SCbp+qhRhb1g081mx2BmGsgaX
         CGJcxL4r2+odyumozPQOESkBMPFASPgri80jgHryvB19Vqo1V89Gtl8EFsF0y7H2wF/M
         b0iuJKq3KpR53slHHcZTny7IBMQjPgIz56Jjj0Kpk96WCBC2CxSDwNdLob0gpSw9ei7e
         P1fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=UjmHBC/1bhEB9A3uM/I+NcfSeX6NXRIW+bYUhXnBI+w=;
        b=nnlR6KHhPky0xUYDdCHroY2YizmiJNMy72waa9tm315enG3P85fTcA2VgOM+DJavID
         wwlT/wROXXO3gbRlkyeNDjxFmXs653ngX5NI4gk1GRIVmigCcq+Bp0Bct+wSFrjQW54I
         1bLw9AoopPjVUctl+5Cgu0LR4GyN8MC9VpsSHysk9Mtmc7HvnoP936UDzssacQV2POnN
         xY05EbVaZdP3nC3zb58xmGgjBC2isneCDut6qAnsbcsjyqCk/Z0xN2PwM5E2G2F61T3e
         PPgUXZ3qFNt+Cg0ICh4NHd/Ozql5gv07UfMOqzOlMfEVbundclsiAePBv+Kn0oALyhVE
         oZRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pvARdwGF;
       spf=pass (google.com: domain of ricarkol@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ricarkol@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=UjmHBC/1bhEB9A3uM/I+NcfSeX6NXRIW+bYUhXnBI+w=;
        b=TDmjUZDdrtXrajLHN+PGY7ndcnVy3iZ8ZtIka2AC3XTbZ1+CsThe2055jCeNGu6Hxx
         6A45RFZcybFoX+BEI4kTNg8w/rru+LozZi31idVxQIb2+iRtXHR+KFKK/Saw3sQeFswI
         oH8FOPaQsVVz1OSFGxbMv8+5SwB5XeJcQ5sne6Rg+MbgvlUbJcXlAqmtf9uyeDyq7wpc
         cDkCWlPHa+lTbnoEsQY/HDEUuRo4wR39/A1VUdgfUKyPZ6vurw7qQkf1/04l4OjJLxhx
         eXUdHo2N6xmP0jZ5w6rlBSS4lN/+BfRWdbodBKzxB8hpxzdCZuEs22OZM+7MTyzCnONn
         0LEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UjmHBC/1bhEB9A3uM/I+NcfSeX6NXRIW+bYUhXnBI+w=;
        b=l8WWjUt9+BpbIcZZFXTMnsvvUwsKWq7LLpxj943QB3SelICAqiZjxHWnDEOkDqm39e
         YORC9BOhKUlOMe18IrY2fLrX5FaFf0pUDakaDCA8QVjbBkAjDvuAkNNgDbFUMZ9hZN74
         UxLuQ33MA3ue2pcub7AJkKrLuVGifJ9esdvv6uObk8p1SJx6KHjsYRAndk3NoLpBrugA
         2c40rNKn/wthk9arlvlfb2aXVGU/jCVhLRNZ2mT0quWGwANIPSi5BbW+/0M4eTYbV5I2
         xNAhVe8aN5cpk8/bprImLCqENVx19z1uaEQ6WBPevNFT8Z1sxLk5GUaU5PjMPOmA26/J
         N+Eg==
X-Gm-Message-State: AOAM531zPV80r4hZR5jBAqCQE0zf4M+vE2a/S5UJuL3mF8DtR8pY8VnO
	XjcAlOYs+Rer9S7M/IBhp68=
X-Google-Smtp-Source: ABdhPJw/mlWJ22Fwsd+Xo6z+/jggA8JT/QyF7lYo0l25MCbrKWZ89W2agjlmpcm7vZcySu2Ft7scGg==
X-Received: by 2002:a17:902:b095:b029:ed:46af:e33f with SMTP id p21-20020a170902b095b02900ed46afe33fmr13810047plr.23.1619639182141;
        Wed, 28 Apr 2021 12:46:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:da81:: with SMTP id j1ls414214plx.2.gmail; Wed, 28
 Apr 2021 12:46:21 -0700 (PDT)
X-Received: by 2002:a17:90a:cf8f:: with SMTP id i15mr5511275pju.188.1619639181636;
        Wed, 28 Apr 2021 12:46:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619639181; cv=none;
        d=google.com; s=arc-20160816;
        b=ax2av5Ei0EeAUYl6JD1Mrlyf0R+I4P2DeB7UYNjQqFmGuZhFIqvcsiT3RSf6ccvVNP
         cfjSlnV6U7/m6GFxqMsbZjG+ctVL1iDyjAzUXAaOvNePiM4HV1tsFldaFEU0vclbF3lx
         5qmE7CYi+Y5zPr6ZrOqWWG1BepePSNRkjq+DEZ6247ouTMO0Bfqgj4AwkMUrX/rFqXQd
         8h5PPIOwsg2SE1ovuDQg9u+z34lvgkbTWxcTr2is3vb22lQEWKxulkHjU65HVNa5OUJf
         765JHTNcu8fA8vHfDdceRfNk0G2V1kMqRkliCKMqIK6mhQ+teX4GYVtUznyNnAPMzjdA
         QhRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tnFbK/m34T+YczbPV3B35Ijs+zqtM3fwowY1mDhKJFc=;
        b=mGBxcVTv80kt4sXjxhy/f8nHGHxElmaPjXvw7FN+E/QRmaDqfraalr4IeHAQn7RA7I
         4fKuxACxFE2sBgUIxLUCYuYJVmIY8sAgk9XENZpty1syHvsSv7rT1xSP+XC9/6+YWzCA
         WY+UKt7X/C0MKfgvhSzQdZAC1nt3xvtm8FoyunHvv9LLvOcdmxNADUyu39WBT1SOdsvc
         pR0+Vnq/f8bBgWtaRXsrPCVmDMpw9D0m8ZWp2JF/n8Pv7EYwqAY32VPuzC2iiJlMtYdy
         OYAk/hQjTuaWYWmwD8pti6fjlqPJA4twsjmN9S/pRS67rwoy0/IwjfNNgU1jvzkPSXby
         nrOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pvARdwGF;
       spf=pass (google.com: domain of ricarkol@google.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=ricarkol@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id q62si125517pga.0.2021.04.28.12.46.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 12:46:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ricarkol@google.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Received: by mail-pf1-x433.google.com with SMTP id c3so25704837pfo.3
        for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 12:46:21 -0700 (PDT)
X-Received: by 2002:a65:4082:: with SMTP id t2mr28910055pgp.396.1619639181194;
        Wed, 28 Apr 2021 12:46:21 -0700 (PDT)
Received: from google.com (150.12.83.34.bc.googleusercontent.com. [34.83.12.150])
        by smtp.gmail.com with ESMTPSA id l62sm436394pfl.88.2021.04.28.12.46.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Apr 2021 12:46:20 -0700 (PDT)
Date: Wed, 28 Apr 2021 12:46:17 -0700
From: "'Ricardo Koller' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Cc: kvm@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Sean Christopherson <seanjc@google.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 0/5] KVM: x86: Use kernel x86 cpuid utilities in KVM
 selftests
Message-ID: <YIm7iWxggvoN9riz@google.com>
References: <20210422005626.564163-1-ricarkol@google.com>
 <c4524e4a-55c7-66f9-25d6-d397f11d25a8@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c4524e4a-55c7-66f9-25d6-d397f11d25a8@redhat.com>
X-Original-Sender: ricarkol@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pvARdwGF;       spf=pass
 (google.com: domain of ricarkol@google.com designates 2607:f8b0:4864:20::433
 as permitted sender) smtp.mailfrom=ricarkol@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ricardo Koller <ricarkol@google.com>
Reply-To: Ricardo Koller <ricarkol@google.com>
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

On Thu, Apr 22, 2021 at 09:02:09AM +0200, Paolo Bonzini wrote:
> On 22/04/21 02:56, Ricardo Koller wrote:
> > The kernel has a set of utilities and definitions to deal with x86 cpu
> > features.  The x86 KVM selftests don't use them, and instead have
> > evolved to use differing and ad-hoc methods for checking features. The
> > advantage of the kernel feature definitions is that they use a format
> > that embeds the info needed to extract them from cpuid (function, index,
> > and register to use).
> > 
> > The first 3 patches massage the related cpuid header files in the kernel
> > side, then copy them into tools/ so they can be included by selftests.
> > The last 2 patches replace the tests checking for cpu features to use
> > the definitions and utilities introduced from the kernel.
> 
> I queued the first, but I am not sure about the rest.
> 
> An alternative is to copy over the code from kvm-unit-tests which encodes
> the leaf/subleaf/register/bit values into the X86_FEATURE_* value.  Sharing
> code with kvm-unit-tests is probably simpler than adding #ifdef __KERNEL__
> and keeping the headers in sync.
> 
> Paolo
> 

Thanks. I was thinking about kvm-unit-tests, but the issue is that it
would also be a copy. And just like with kernel headers, it would be
ideal to keep them in-sync. The advantage of the kernel headers is that
it's much easier to check and fix diffs with them. On the other hand, as
you say, there would not be any #ifdef stuff with kvm=unit-tests. Please
let me know what you think. 

Thanks,
Ricardo

> > Thanks,
> > Ricardo
> > 
> > Ricardo Koller (5):
> >    KVM: x86: Move reverse CPUID helpers to separate header file
> >    x86/cpu: Expose CPUID regs, leaf and index definitions to tools
> >    tools headers x86: Copy cpuid helpers from the kernel
> >    KVM: selftests: Introduce utilities for checking x86 features
> >    KVM: selftests: Use kernel x86 cpuid features format
> > 
> >   arch/x86/events/intel/pt.c                    |   1 +
> >   arch/x86/include/asm/cpufeature.h             |  23 +-
> >   arch/x86/include/asm/processor.h              |  11 -
> >   arch/x86/kernel/cpu/scattered.c               |   2 +-
> >   arch/x86/kernel/cpuid.c                       |   2 +-
> >   arch/x86/kvm/cpuid.h                          | 177 +-----------
> >   arch/x86/kvm/reverse_cpuid.h                  | 185 +++++++++++++
> >   tools/arch/x86/include/asm/cpufeature.h       | 257 ++++++++++++++++++
> >   tools/arch/x86/include/asm/cpufeatures.h      |   3 +
> >   .../selftests/kvm/include/x86_64/cpuid.h      |  61 +++++
> >   .../selftests/kvm/include/x86_64/processor.h  |  16 --
> >   .../kvm/include/x86_64/reverse_cpuid.h        | 185 +++++++++++++
> >   .../selftests/kvm/include/x86_64/svm_util.h   |  11 +-
> >   tools/testing/selftests/kvm/lib/x86_64/svm.c  |   6 +-
> >   tools/testing/selftests/kvm/lib/x86_64/vmx.c  |   5 +-
> >   tools/testing/selftests/kvm/steal_time.c      |   5 +-
> >   .../kvm/x86_64/cr4_cpuid_sync_test.c          |  23 +-
> >   .../selftests/kvm/x86_64/set_sregs_test.c     |  25 +-
> >   .../selftests/kvm/x86_64/vmx_pmu_msrs_test.c  |   8 +-
> >   .../kvm/x86_64/vmx_set_nested_state_test.c    |   5 +-
> >   .../selftests/kvm/x86_64/xss_msr_test.c       |  10 +-
> >   21 files changed, 749 insertions(+), 272 deletions(-)
> >   create mode 100644 arch/x86/kvm/reverse_cpuid.h
> >   create mode 100644 tools/arch/x86/include/asm/cpufeature.h
> >   create mode 100644 tools/testing/selftests/kvm/include/x86_64/cpuid.h
> >   create mode 100644 tools/testing/selftests/kvm/include/x86_64/reverse_cpuid.h
> > 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YIm7iWxggvoN9riz%40google.com.
