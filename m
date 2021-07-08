Return-Path: <clang-built-linux+bncBCFYN6ELYIORBC7ZTSDQMGQEGVV5N4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DA23C18BE
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 19:57:33 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id y1-20020a655b410000b02902235977d00csf5149182pgr.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 10:57:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625767052; cv=pass;
        d=google.com; s=arc-20160816;
        b=pN1lkGQrqUf5FwIHzfBbwnIkM4ccw9SLFIT5DK509iDAROsDXkYTs4b38k/rnxjt37
         IBACkIYYlBJUu6G/vsPQdmCLBNambYqMqEPCNI4RMziDKgYUD0jF3xvheEGqDF+ZpBPW
         LZjPNGTxzoyBRtENtJFSWoj38mbd3T++i5jpELW1676aPOyo0hEAVzjMTXXUpcc8rlAI
         T7zvl/xV7egMdQu+Z8nVI/+6yOVztkU04D2DeZum/o7n3YXQVgc87EZv+QeiOfVIeTGh
         x4ZvGrukectmL4jkvn4qwfZthQmNvt/Ndkbdxk3JzDHdOABUFhavUwXQ1GEc12SduBkG
         f2fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=8d+xvyO1NVC/npVsAil/yu/Wb5lHK/wrF99FZb5+ZEk=;
        b=UsU29rTR3qqQbK3sUVOXOS4gN0q3tdjuxGORY7LcITN6wsX+mFAXCjs8sWlDb/xJFB
         GPyngVlug4+xaRaodKMoK7U1lB4djAXHQpY/h9V/Fsp8vu9GaD3P3xa9orlSJlbEtnH0
         xegV5YgXS0x2sh8/zKi6oWpkoPtgEa+XLDcBoUOGMrzVMOnozMsCvDQOJj0Pyz9tmFhT
         /XhaH0lzGB6dbwl2yEBuq3EVbXEYhczMSwacLpgP8EtRN0NdGWcSgTjoESKEB7JnoBex
         zEZkoxXPDr6BSHwmHkM7dBDVt+GVJJa+KF4DeXlDXP8z/96rsLZpWNPwo2VV7VUdje2B
         xGnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="ED/79SQi";
       spf=pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8d+xvyO1NVC/npVsAil/yu/Wb5lHK/wrF99FZb5+ZEk=;
        b=It0P/QIew+bupR+QWAhwuHQxlcF5dGGamxkc7/rKmSGxKp74+A1lYpn3/7zSNEsQJ5
         MYcCXzwBs8GlccLtpRyHrVQtVfmncLvftyMAzvg5/1c9gHqq8xWD1+FWaopcUMh+5frZ
         Zo6Ebti3ASU6IeWtrpq/f69v2dq2O7Oa2A5OzrToen5ai2oJhWB1Q1eQMpXbFF5ozyLG
         DS15AA4uEyP3y9XoF9mKjlwGKvENnBZ81WvgcfRLGWOtv5LP7O7QlO+05JTtotxqmZlp
         yUJolGIVwfJq4w1iLqwAYFQ4ZO4PlkxJdEiKgLW2f4w5YWEghdolZ2vfVQTQYZKMF6HY
         6XWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8d+xvyO1NVC/npVsAil/yu/Wb5lHK/wrF99FZb5+ZEk=;
        b=eQDWOTl2KzW3ZeyqXYllsQYkKhJ7rsrtTZIhT8YRxbbnjofGHrtUfTfi4R3jTepdjB
         Bujok3lLS3iIJ8foqMqnRb1RiQJwPyc31hqcqIEDDUCSfzdFcdoh2wgtWk1RO7EnPMTu
         gfybXQIIQI5bMJMK5KrAM1s3gOUkEOlpKzebvSn4jPnct9cxhEOS3j72xltpjd7c4a8L
         eBRVBbMbqNFKCaVrVS7DFX0u6ejt0INzrSmnYTMketltST8Kszm9ltRpQtUkd0JQO4U1
         BSwviG4i2cgJ2CDzD2Ke56GFD1qSKacwU4NDjp0qVwopCUESMDUwZW64mW84PB3BhbFa
         OJgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/8jhuCXPrLZRtHttUBEYxnqHKinpw6UIorje9vQddB2TL/Kb7
	cKlsyeoekg9WQmioYvrsaSw=
X-Google-Smtp-Source: ABdhPJzvOEpoHbmqZ4vxgYsfefSsQWpUEASKQ/xagR6PA0d72UdUOzpa3d2TYHCxBr5MuxnajeKU5g==
X-Received: by 2002:a17:902:b613:b029:129:921e:5ff4 with SMTP id b19-20020a170902b613b0290129921e5ff4mr17902792pls.10.1625767052093;
        Thu, 08 Jul 2021 10:57:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8410:: with SMTP id j16ls6405152pjn.2.canary-gmail;
 Thu, 08 Jul 2021 10:57:31 -0700 (PDT)
X-Received: by 2002:a17:902:bd82:b029:129:2e87:9946 with SMTP id q2-20020a170902bd82b02901292e879946mr26835292pls.53.1625767051235;
        Thu, 08 Jul 2021 10:57:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625767051; cv=none;
        d=google.com; s=arc-20160816;
        b=NCEVpxfmNvxiUnPP45G8boO5sMO/Hei3ksF6Z4Ejf9p2sLx07qRi3HNcdc8xEntYs2
         ADn6Lt79bcMXV3OyPUZk+s5GlRxhP4ws+CDgqOPvdQRJMn8bC1uB4QrWdD4f9iv3FbwJ
         pbgqxsWZprqyePWuJxhGwQF1IkVX3ulvDYGzuSQ7Ii6PT5Cn4KmHSaLQj8Nz1fCmPKFC
         Q3FpTmnYdo9glsOIdFG9v7aNY6teP9X4RK/5bIzH/5QLna0HnMbXIaG3+Su8ud5YC1tL
         lK0dJvk3HYAhQjja7/pHsKiQWpp9FegDOQvxUBl6MgGgOl+CcwC0ZTyiyLFeBWUoi/P7
         p5JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=xjKPzQ8ubajcvMakFlYLidaZJUhpZpB7jXpO5LDMoFg=;
        b=xEIIghBwdz7oqlXKDEvE/1i9C/knJIUHcDRjk7jb389KaJdX6Hl7ss5vp/OvhtYgd9
         WhiGcpH6MXdONCqipQI8Q0UloD+qq2FPHViLnRHZoUOdu5bKa9VeCCZ5f1xkLJYL5ml5
         Y1gfDV/PXH/XPVAUEXbeTj3jO5M4JUHKiL4LzdAPbbZaHZZv7y/MUJ9S7s2KzJsKJunF
         rOgTt+IBIppDc8IIq1Rmp+3QFm0a9kINa48hW1v+KvuUld59xl/bdxvpnrFuI0h3y+6K
         NPFExN3jabk2oaA+1WxOBcR8FUmHGcaMWeW1Iq38uugEKWNg+l16eofsL2z+QTfavrB+
         Anbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="ED/79SQi";
       spf=pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id r7si354301pjp.0.2021.07.08.10.57.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Jul 2021 10:57:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-480-MQLAIM_BM4WtR_pWxpP65w-1; Thu, 08 Jul 2021 13:57:28 -0400
X-MC-Unique: MQLAIM_BM4WtR_pWxpP65w-1
Received: by mail-ej1-f70.google.com with SMTP id k1-20020a17090666c1b029041c273a883dso2177472ejp.3
        for <clang-built-linux@googlegroups.com>; Thu, 08 Jul 2021 10:57:28 -0700 (PDT)
X-Received: by 2002:a17:906:4e4f:: with SMTP id g15mr32574578ejw.217.1625767046899;
        Thu, 08 Jul 2021 10:57:26 -0700 (PDT)
X-Received: by 2002:a17:906:4e4f:: with SMTP id g15mr32574555ejw.217.1625767046707;
        Thu, 08 Jul 2021 10:57:26 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c8dd:75d4:99ab:290a? ([2001:b07:6468:f312:c8dd:75d4:99ab:290a])
        by smtp.gmail.com with ESMTPSA id ze15sm1297121ejb.79.2021.07.08.10.57.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 10:57:26 -0700 (PDT)
Subject: Re: [PATCH 0/5] KVM: x86: Use kernel x86 cpuid utilities in KVM
 selftests
To: Ricardo Koller <ricarkol@google.com>
Cc: Jim Mattson <jmattson@google.com>, kvm@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Sean Christopherson <seanjc@google.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 Joerg Roedel <joro@8bytes.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210422005626.564163-1-ricarkol@google.com>
 <c4524e4a-55c7-66f9-25d6-d397f11d25a8@redhat.com>
 <YIm7iWxggvoN9riz@google.com>
 <CALMp9eSfpdWF0OROsOqxohxMoFrrY=Gt7FYfB1_31D7no4JYLw@mail.gmail.com>
 <16823e91-5caf-f52e-e0dc-28ebb9a87b47@redhat.com>
 <YOc0BUrL6VMw78nF@google.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <8a4163ee-ac31-60fa-4b8b-f7677ec0fd46@redhat.com>
Date: Thu, 8 Jul 2021 19:57:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YOc0BUrL6VMw78nF@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: pbonzini@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="ED/79SQi";
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

On 08/07/21 19:21, Ricardo Koller wrote:
>> I also prefer the kvm-unit-tests implementation, for what it's worth...
>> Let's see what the code looks like?
> I'm not sure I understand the question. You mean: let's see how this
> looks using kvm-unit-tests headers? If that's the case I can work on a
> v3 using kvm-unit-tests.

Yes, exactly.  Thanks!

Paolo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8a4163ee-ac31-60fa-4b8b-f7677ec0fd46%40redhat.com.
