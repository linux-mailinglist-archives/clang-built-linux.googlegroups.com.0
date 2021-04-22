Return-Path: <clang-built-linux+bncBCFYN6ELYIORB3N5QSCAMGQEVUPV2CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id F00A2367A74
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 08:59:58 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id r197-20020acaa8ce0000b0290187411f6103sf4523312oie.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 23:59:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619074797; cv=pass;
        d=google.com; s=arc-20160816;
        b=lbFQdeqKMNxnnT3TEX58lVahnu5nOIZE4ZeSYfDtdKCP0CmrBSNnAK51v7PU4iIMe9
         ESxwxI3jfOJKxbaxFR5WVAO9vYquT1jWQgrdoduXULXTYYhJ71f0b2K1VtFGhd+xs0Uo
         y/nPghXaN0su5VeONHJ0zea6AD8psfxRTuKtHRHEPPny7IPNixzG9G7Fun88lzwP+9Qg
         TgZAQcYz8Z59coX5SOSiRh3vpnL8STiTdr7YKO21fxSpucSUu/omjuezMK8A+E0voQbX
         3BUegPe5NF05ecfcum6EOqXbgm+am/ieNARrzwE2FCjut1uTWKpPkdIiOnmPd2Te1hKn
         SyeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=q24B8NAzqL0c3NVhUKZVCjuwsMl2EotbN34VF9MYINA=;
        b=Xynt56bE1MO4FTmYSa61gDHzRNZ57xZpWLylrq6CmXMC5RIq4xgSfOM/1PawDXoZ3y
         ysDQDWtt5zdPgceH6VixwKM646N2BMTh6VtxDIBTQOnfccKWuOfHFg/3Lu/ZtrBTI2He
         7Y3v3dBWfaATkz7ZJEjDKv+8Qp3k8gwQCRWvt0rjbmJSV2ZjIvNpT3NY5Y8nzJ0T5bhw
         jVLi5xDLQ3r7dQcU3PZXIBNvYT5tSoBz1gDaA9YOBHV5YpRJEKIcmzYfSiEYODA65iLV
         yCBZrQeo6JbUlxoZUIcBszLRN9LeEs32DKH/GsZr4osJn5bwHcZ39F9EDeVil3WXP+Vd
         p9Tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=V1IQV2ng;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q24B8NAzqL0c3NVhUKZVCjuwsMl2EotbN34VF9MYINA=;
        b=GW5J8wp49WC+vUANs/bM/Q1/NePkK/j6uZQVPEfFPGQs80yakVt3TSnGszMcGIIg66
         QSilo38/brakpK5Q0PHV5I9yJ9cBVKCgHKobBmV6RSYk/szowiRYHAzncwYP/ooZpJxS
         jHKuZ9E7bQBzXyL8A4V2zfKxt0OGohn+5S+ETVsI8JhJtd+1TUjLcA13g6PQuvxj6u/8
         Zza4ngK1aG2QsAcfRwtwitU0gFaW7IS6kQhhBN7k9w+xtZ67nepHxhTnsA3FQr1GL8Qv
         xZFtnb8OEHA1b4g4iDUaog66puESiZDKSus1M+uza8E9aV8+JYl0TOEkZ8dHbxW3aAGz
         Ilkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q24B8NAzqL0c3NVhUKZVCjuwsMl2EotbN34VF9MYINA=;
        b=BnaVkeXGOF/Z7Nlc5O+K21I7i3vnW1iGAvdMqDtZzno/x3iHQe4muoW1mcfZ0eYMuJ
         XjKFbPd0BdeKhIBwM6Usxk+5dAX8IywTt59za9wD89o1yYKMf1nx7M1ofAyMe4l6GzQA
         wRrJyzwjOwHFNchJ5r/ql/x4Iz4DdlZw0jFe1GigaZmtm+DNn12Ub3AtYaNFtajNthl3
         WAIvGyElyqD1KNwHsDYsFC+2gsD/bGSKPhnBpFHll1spv8EShHOGTOvKGgGFt2/5HYUy
         jk9JL6W2x5E8ImENxI6X0UOyf2DaORr45TgTxiuXbZEG7wBR0ebqV30i0hObxZ6jNmAl
         pL9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301rAsTWDOwzLqlj+kMhZVZGohugIHMVEHDf6KIPC1gI6X4sTdT
	I38CdCB1BvS1CPRW3qDfgg4=
X-Google-Smtp-Source: ABdhPJyBwoC/rH8YUZTJPURhgeyKWX6Yu9P+JvG4iCgEv8sPAlGbdmGrK/TnPJ+uFgo4eVHc1Wyu6g==
X-Received: by 2002:a9d:1d6a:: with SMTP id m97mr1656563otm.288.1619074797620;
        Wed, 21 Apr 2021 23:59:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5c5:: with SMTP id 188ls1209383oif.6.gmail; Wed, 21 Apr
 2021 23:59:57 -0700 (PDT)
X-Received: by 2002:a05:6808:6ca:: with SMTP id m10mr1209477oih.166.1619074797293;
        Wed, 21 Apr 2021 23:59:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619074797; cv=none;
        d=google.com; s=arc-20160816;
        b=k4e4M8eixeo8YJGG/u0bMdqJOf471htU+gVRL+AO4S+MyWGq9F6IfZAx86KAyylpuW
         SYL7/KQSqSPoMcFFBBKjlIP17l2nG8blau5QACD0Mh3QACwm5EfciqZY11mX+b9RLge1
         kzzcWrDCbvHIUT7nY2dd7Hz3HrDfhv1i3pidfb2+iehhjHLaAeyIYyZckEsPdzBdzKhP
         NvIJZmwNHapoQJSlkrPcSSl+sDcCw2W/KYxQFtuAZKXdm1ACW0sb4wjGCtK2F0nDrGJI
         IOEZuXtG2llQeK9exa3vYnKYQYKFq4aqegvsWyiCFaiHB6G0o/GGij8ZmUYNEystkzua
         laXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=9HfKt+tj+kVv8EGTHRuWgwnmy43mLVyvrcb4OZJTQGQ=;
        b=AcoOZVexJ2+jK66kzdShspC5kULQIdlWzigyDhRQBYx58D7mlKMO17qIPXObGTiCNU
         Uso3RoMVq7N2ESloRKN0GqOpBKrH7l+zl5mCfgF2jOqSimlWF/9gpo8dUdeKeXqxQgAz
         tXMA0pujMa7iE0f8WJO8UgczkmKYkMDDF6QRAM7PxwasxqpnZ7K8dIBfJH4+P1LDcCD3
         +pZzQa3oPe96EDDWLZ2z/kE0MglbncFRVM36uORlNlPgI9KQ5QCKaXq0h7eXnrqE6sJ3
         7URl97tEGPMCnFyyw8xKOrw2U76HUXHfEdWAzAmSkZIdQPEQ68rZyG95X2dGcc69DGnI
         V+XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=V1IQV2ng;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id w8si420276oic.1.2021.04.21.23.59.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Apr 2021 23:59:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-589-klPN9X6rPumq3JCiJDqV5w-1; Thu, 22 Apr 2021 02:59:54 -0400
X-MC-Unique: klPN9X6rPumq3JCiJDqV5w-1
Received: by mail-ed1-f71.google.com with SMTP id cz7-20020a0564021ca7b02903853d41d8adso6926112edb.17
        for <clang-built-linux@googlegroups.com>; Wed, 21 Apr 2021 23:59:54 -0700 (PDT)
X-Received: by 2002:a17:907:294f:: with SMTP id et15mr1825503ejc.14.1619074793075;
        Wed, 21 Apr 2021 23:59:53 -0700 (PDT)
X-Received: by 2002:a17:907:294f:: with SMTP id et15mr1825473ejc.14.1619074792912;
        Wed, 21 Apr 2021 23:59:52 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c8dd:75d4:99ab:290a? ([2001:b07:6468:f312:c8dd:75d4:99ab:290a])
        by smtp.gmail.com with ESMTPSA id j9sm1236249eds.71.2021.04.21.23.59.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Apr 2021 23:59:51 -0700 (PDT)
Subject: Re: [PATCH 3/5] tools headers x86: Copy cpuid helpers from the kernel
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
 <20210422005626.564163-4-ricarkol@google.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <404e903a-5752-6ab2-9b46-aa40f7fb0fba@redhat.com>
Date: Thu, 22 Apr 2021 08:59:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210422005626.564163-4-ricarkol@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: pbonzini@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=V1IQV2ng;
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

On 22/04/21 02:56, Ricardo Koller wrote:
> Copy arch/x86/include/asm/acpufeature.h and arch/x86/kvm/reverse_cpuid.h
> from the kernel so that KVM selftests can use them in the next commits.
> Also update the tools copy of arch/x86/include/asm/acpufeatures.h.

Typo.

> These should be kept in sync, ideally with the help of some script like
> check-headers.sh used by tools/perf/.

Please provide such a script.

Also, without an automated way to keep them in sync I think it's better 
to copy all of them to tools/testing/selftests/kvm, so that we can be 
sure that a maintainer (me) runs the script and keeps them up to date. 
I am fairly sure that the x86 maintainers don't want to have anything to 
do with all of this business!

Paolo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/404e903a-5752-6ab2-9b46-aa40f7fb0fba%40redhat.com.
