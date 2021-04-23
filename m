Return-Path: <clang-built-linux+bncBCFYN6ELYIORBYPERGCAMGQE6JRF5XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F0C368DA1
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 09:08:18 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id o187-20020a2528c40000b02904e567b4bf7esf23216829ybo.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 00:08:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619161697; cv=pass;
        d=google.com; s=arc-20160816;
        b=qdLNveLrgszQ4OM1vMwutjXvhazSxVGoWlTuvJr5ADTph/zo4dFuwdGeacPnh5pat/
         7TT5CBxFT5vy7FBHEQPuSzDYY+BiLJhDgoxaZ8NAroQPA0WIZfmKQWCdiqpsuV484BKT
         4x6eWzCvy43KIRKZEX+nrsiWj09ZIM5+ZIudvYct4X9ChowP7FtqYyW+tHLJ2U4ri6rI
         IbZ+6xqVeRLegYoluQjss9Z2urFNvbX5xoeY1L2MCD/n/mEmDmQORxKXPZ8/xDXSJKDG
         3CU3XQvWO0zN0D5tx3lOlUcIzt0KN87lPgj2KFoZb9h32dvrOy2I5wR1Io+7NL7Pyyhq
         jsjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=3Z0t+WE6nSOVjK4ZCYuqy1+EnbG0stp9TImNzTil+f8=;
        b=NN5cFmBApFiRitRzBSZEUTfbKWoUu6OYwoxmIxkwm8oUt35xSMaakxp7vwFUZcfhss
         tHZVeNrJ07Ny/KZHoMioU3GVtfUD7lpgR6xo9wZQAcjmD1jGK9SBDJVndC5nWsEXo9sf
         Bu/hJpT4frP0dECtGduMQvgXNJn+e4l7bb5fJLmA+x0bd/X5IGuhEDz7NQFrXk/gCLFQ
         5wcYsqcENPE74I/P+bZ8KlqkhocZP5CRWEw9Ja7MXvY2J0mvxhQQQOoGaByKCBFzfpmQ
         A6Y2QWgzzyqLKEWi4+F6Jv1vbSWinepxJ4Y0YlbkAAdNckcw1fdRtDZ3gSNnzdqea+yZ
         ezDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=F44oXdJX;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3Z0t+WE6nSOVjK4ZCYuqy1+EnbG0stp9TImNzTil+f8=;
        b=dKH/F0ba/XUJP/hkayGAZS3AQT3p1u2mrhUcQZv0VVM4mRWqmNinc6GmGKMgmyj/FC
         qwo0W5rdhMi5c5TuBqJ9xbdaOthdy6i0/S9wQ8z3vN54NN6wJMMfW6hBSREbARX7fPLO
         FnFe4L8E7TRHq6xyhiFe+LYvhgC+IGY0US3UWC24aAls/JVncWaes0PY+lnmPuPPVw9J
         0BA0Q9PiyZZvzAfVqQ5h7cwRy3eoTjdhyDMHMbDvWSy4dE1degX+qdZxbUTxXn70zigj
         be6f/HRTW78UZH/JqAZLAMUu8BLHNyMoZbLmeVWKOiON44AN6M86DmaDklVPCY1YPD8F
         fnHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3Z0t+WE6nSOVjK4ZCYuqy1+EnbG0stp9TImNzTil+f8=;
        b=OA/7FkCyCzbaPmsEcs1fHIa3mF8xBKaklEjtVWY3NwG7NJ3FpiyJW9ipLMXcY+C0ju
         WMsCvlJy3oOBsIMdke0/H9b8MAf6HPgPuqH3sZ4R+hZwPwVMpUPL9LztcxMXWfo24mUa
         IIbtaAIE1jb5eoI8CkkRR+Eq3tH58pICZoHgctY9KOS8Rn+xjZPaQG53fpHacd2J5UAd
         ZAT+AmPjnFkWsUqB+lTOjjA+yzla8gfEpfyDX0ypR0J+flzMIZYXoxIYPUY0Uy+6marw
         blVm1o7o8cy6RJVV/CBe/xSz/R5XRw0RW9ncOUzabbG5dFkEQU2c5NmBENXQyHBsT1O2
         ++/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fhJhFejIo+tbG3h/3g9QnDtA92FOr4HwDDV70rvvLUNK/OuS1
	Sn60fC+Fvu0fFmjtgoDdRjg=
X-Google-Smtp-Source: ABdhPJwbxn/LE02q2HwTZJi7xOC8wLfHUXglaVhTR5J0U6OVsCJdiI7gTd4R+3QhQwtggUsczVz77Q==
X-Received: by 2002:a25:fc0a:: with SMTP id v10mr3545014ybd.71.1619161697198;
        Fri, 23 Apr 2021 00:08:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7343:: with SMTP id o64ls64549ybc.3.gmail; Fri, 23 Apr
 2021 00:08:16 -0700 (PDT)
X-Received: by 2002:a25:3450:: with SMTP id b77mr3269593yba.211.1619161696706;
        Fri, 23 Apr 2021 00:08:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619161696; cv=none;
        d=google.com; s=arc-20160816;
        b=gQGZtr+/FTD3egZYkRCAfoT45Ev+dqDswiF/UR84vN6k4opFuRE9XnTRYEg4R/+lu6
         z0MDF4BPPPD+9rnq8n5FTksRUz4Q5l+ZI8t6OYC92OsEHBQ1HglhWt80ClQqGUxWbU0r
         Q/F5WilmGS5hbeXANSzfqtdaDZGihs2YqH+fx4lSbRbEBpI297TdSavaw8YvSSfT/Z3t
         CZ1/Cci8l5xudg+vLyFGZJjAfZNVcTfxE5KUDP7U+dVgOtsXXCnR4mrvfPbdzIHp5eWM
         h0GMyO/oz9K/sETBE9NCLbBEI0JN5EkjSA6POj0USt2jhWWZlIiuZT7XqP5w/06AAMKX
         x65g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=s6nTxmdqew/u6s+lOFo4xVX1inakg0kuwdWkPa9JRN4=;
        b=wUA9eikNxcafv702G8pYYQdQZosDZT6XRFfygy7ZP27cBm0wfXA4IsCpXN31W+Z7fn
         fEThZMLCiVjSJSxu7S9PQbR1vUE4b7bxOSm7ESt4QCBcPXushpHE0fbcI0Xw8A0xPRCZ
         WNFnnHAoI/yZzwKlajspibTfMckEmwhnB8p2hciIKmpeTMVi4tWoYL5pOEeByIC2QRbT
         06Anm2XC1fFUy62F+cxpRemZIpbtup3W2CIn88Z/cAq8ES6zF68a4uqMB2Qm79PtFs/v
         R/BHbZDwOuAUjhiTjuKZf/3KI9/LkZk+KFoK/dtNotHHLQrBKHfEH+r1IS7wR5qHUytt
         1DJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=F44oXdJX;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id h188si675288ybh.5.2021.04.23.00.08.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Apr 2021 00:08:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-466-D2AwExmdOa6BSG7q4JEUeQ-1; Fri, 23 Apr 2021 03:08:14 -0400
X-MC-Unique: D2AwExmdOa6BSG7q4JEUeQ-1
Received: by mail-ed1-f71.google.com with SMTP id l22-20020a0564021256b0290384ebfba68cso14277473edw.2
        for <clang-built-linux@googlegroups.com>; Fri, 23 Apr 2021 00:08:14 -0700 (PDT)
X-Received: by 2002:a17:906:36da:: with SMTP id b26mr2772504ejc.8.1619161693241;
        Fri, 23 Apr 2021 00:08:13 -0700 (PDT)
X-Received: by 2002:a17:906:36da:: with SMTP id b26mr2772488ejc.8.1619161693095;
        Fri, 23 Apr 2021 00:08:13 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c8dd:75d4:99ab:290a? ([2001:b07:6468:f312:c8dd:75d4:99ab:290a])
        by smtp.gmail.com with ESMTPSA id lr27sm3270158ejb.8.2021.04.23.00.08.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 00:08:12 -0700 (PDT)
Subject: Re: [PATCH] KVM: x86: Fix implicit enum conversion goof in scattered
 reverse CPUID code
To: Nathan Chancellor <nathan@kernel.org>,
 Sean Christopherson <seanjc@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
 kvm@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Kai Huang <kai.huang@intel.com>
References: <20210421010850.3009718-1-seanjc@google.com>
 <YIBcd+5NKJFnkTC1@archlinux-ax161>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <c469d222-a082-a984-eedd-f6111e03917c@redhat.com>
Date: Fri, 23 Apr 2021 09:08:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <YIBcd+5NKJFnkTC1@archlinux-ax161>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: pbonzini@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=F44oXdJX;
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

On 21/04/21 19:10, Nathan Chancellor wrote:
> arch/x86/kvm/cpuid.c:499:29: warning: implicit conversion from enumeration type 'enum kvm_only_cpuid_leafs' to different enumeration type 'enum cpuid_leafs' [-Wenum-conversion]
>          kvm_cpu_cap_init_scattered(CPUID_12_EAX,
>          ~~~~~~~~~~~~~~~~~~~~~~~~~~ ^~~~~~~~~~~~
> arch/x86/kvm/cpuid.c:837:31: warning: implicit conversion from enumeration type 'enum kvm_only_cpuid_leafs' to different enumeration type 'enum cpuid_leafs' [-Wenum-conversion]
>                  cpuid_entry_override(entry, CPUID_12_EAX);
>                  ~~~~~~~~~~~~~~~~~~~~        ^~~~~~~~~~~~
> 2 warnings generated.

Added this to the commit message, thanks!

Paolo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c469d222-a082-a984-eedd-f6111e03917c%40redhat.com.
