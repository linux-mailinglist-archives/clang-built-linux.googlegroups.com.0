Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJFMR2DAMGQEJNTMJCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 004693A4732
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:58:14 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id b3-20020a4ab4830000b029020d5d68e38dsf1844210ooo.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:58:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623430693; cv=pass;
        d=google.com; s=arc-20160816;
        b=xlrREbSkHTzQW+JPtWWpzPMdXFLmf9PYYna1dm2WEQRT5DVlpewnaCB69uSNbJfobZ
         r1qVLSAGnWuRqNVvmSNqUhP1CTLroti+v/JMPr67I3RJ9gWIVr/apy2lzhnFs80qmfcI
         hUxFeLvMe1e8e0sNv3ZV/CPfDgH2mp8kGc6POnnnOpM3VLJzMCLvP2DAwD6jVQni0JXT
         3ysUFNqd7zslxH2ySh2ueA8hsB0xb8cuKldMxJE6Ws2PXLJA6wyGXOH7UsszktWFVL5t
         T6FwTUfMlijaWjaCfXXHVDf7k9Q5Yfr/pv2o9kQV7UJ8jGeqcQr2WDacgE+jv4ka61S7
         eflA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Q6g3jCmrK+3hx+5D7oNkeRMeNzKwa28OwdU2d/mQ+5o=;
        b=GBdlwzEQl03b0dVtKomCQ/bmRXDkLDK5p1jUTKGxthBGupv+JDNywrNAQFV4Fnazwa
         Vh0nJsutAziIP8mq9TV16rpV1bTqOERy9Za2eP6+BiIJtjO9m2+0OC+onx3v5dvXeDrq
         D6sWGaS/vj9KRYgePakof73XRyOiUHWYUd7/iI5ooBKG1cS1JV/e4l1+lalH0RXD03u4
         7okeYVuNkFFWXoAy2hL/Xs5fm5wZ91Go4srecwXF9Br0yHPeFnhqUX9MiH2QFmNw8EmY
         6pQJjCB1D/wL0yEXyxiX54somMtJxwwUDpOlWvFaDysOoTEqTfqRjCqcIDegm0q/KIg0
         4/9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=T0SkyKAM;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q6g3jCmrK+3hx+5D7oNkeRMeNzKwa28OwdU2d/mQ+5o=;
        b=rrWRvnY5ndoVpDSvqOer2k2MpucXRTlXh4wFhF/LeQngnf17py7k7sOqsg2/YbpTEJ
         8m4SYNt/Ql3xt3fo6XMP/w06o0/wOYaVMJBM9Q/ANI145Idy2qbTzHBZxfNwgDORefqQ
         41x9bWtRvld5MxWYieKti2QV9xvnw7w1zUboQGSQDcXCYPF++m2zeMw0Oc+j9vz96pYN
         qOCoQsiDsDGYVcMmJvOD7mENlkKeytABDMMqiwnaRtPzx4LuE6OkbBE1f/8DLxZw3AdU
         6Q4xR/EFBz75tVfnX41WaG/z/4p8on6sWOCxLn7tMDU80qcvxtTPEkjphNFEdnMeClvB
         cP5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q6g3jCmrK+3hx+5D7oNkeRMeNzKwa28OwdU2d/mQ+5o=;
        b=b6s4hvrQLPCEiq8HonS1q1iTg7Bef7exPD1SgM+VwblncCyzig2tymk7D0Y3mBiTyr
         GbBtwTATmPuR4tHKh3TWVoklkVAR2TQz81Zoykm4TmXo/GHjOtQCnKYHP6IH+cB56WIB
         lf6EYSOoy3NhGjlPMgNOc+PmdwhFRoJBa23+gZmja4E2NPeCaxZsdEzAJKOAvM3wOXnM
         gZyUM4D1hnQJ+8uVnuu6r09qPXahLKJerOChP+zdnLU2uDTIGd2/Oj6RI8PGZsx1WCDA
         WCyGnahEwXyqOAPYq89w9u8nk/2kUJGcaPG9EDkvFj3GDMjmcgPYpwPl2hFt+yS+T5pO
         xl+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531aYTHSdkyGqu/aJXU576sRk+LMZ8P4nZstFUVu0lOtxraHNw0n
	pT4K2Q+9w8vMWOVTYQkX1+Y=
X-Google-Smtp-Source: ABdhPJxmpZjVVavzQ9IFlaRt5RJZg+3F9Yyln20h9ldvw+jo/rbyaQPTvZTXk2eeAZhnZ5VMTyrayQ==
X-Received: by 2002:aca:eb55:: with SMTP id j82mr3025111oih.174.1623430692973;
        Fri, 11 Jun 2021 09:58:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f24:: with SMTP id e4ls3494599oth.4.gmail; Fri, 11
 Jun 2021 09:58:12 -0700 (PDT)
X-Received: by 2002:a05:6830:119a:: with SMTP id u26mr4004425otq.87.1623430692752;
        Fri, 11 Jun 2021 09:58:12 -0700 (PDT)
Received: by 2002:aca:cf55:0:b029:f8:4f65:42b with SMTP id 5614622812f47-1f7386d2cd4msb6e;
        Thu, 10 Jun 2021 13:40:09 -0700 (PDT)
X-Received: by 2002:a63:5118:: with SMTP id f24mr253960pgb.34.1623357608881;
        Thu, 10 Jun 2021 13:40:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623357608; cv=none;
        d=google.com; s=arc-20160816;
        b=g1bVhMb4D68ZgNq3Y5VlycPCnxRv4dhabsB2klha6DafVJ8ikQmwUvVezLZp/im/FC
         2aEeeSi/xBcedKZToIQ2QLVWDwBe81yL9XSWb5Mh6dAf0bfGjVRMuSzaJRW7bkw1xIWI
         csHR+k0ZkyuHpMPjsKciHmV3FvQJ+UoMJFiNkhWRgw/M81GaGg0ezBoObqKgVo9pq/41
         E8hidor90L9FoWKQRrJDTXJZZ4BRVETYlxu5NtUA4ez6tN4OJ1RNsJu6j3tIkU98tgWK
         zksy+NnUOTWcJot1X32VlHsVerwpeZgDkas4puMSn5K+Vs+pHrl4ID1e+t4hgeG6Xjj2
         h26w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=HBYg/vbSIQux9BrKZxnk8PJi+hdQi3UK1NlAmeoACPY=;
        b=nOdTaiXo0kaZw0Sdjw/7GI/7Qoefitw/ascOLoDlB/eVuZDmbiCJB2MnQg7PEhTQP6
         C4AphUd8T4t7ZkbQMlq+pCSyO7uMBam35I8XeNVOwRcPcur7Fosx5IRcB6gvU2RH7iAN
         krQhwTFoFz40WCsMmmMDsZep7tX+dA2prvC3AivbPIn0rBwWIZrDyqfLdrD10O/UsbXP
         By7RDuFrdXjCMzdtOY0p0D/CJvxrGVkUItRjtp6Ha68a3MfNtIJty5CaFCc+JCJ97VmY
         MlzSplDpwdpCRt3g1TFlMG6iX+UEv+81/4C5dx5B4L9AZwnK/ZB4TW/U5+TTwAGZfF0P
         yx4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=T0SkyKAM;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ob7si393697pjb.1.2021.06.10.13.40.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Jun 2021 13:40:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 21D3F61429;
	Thu, 10 Jun 2021 20:40:08 +0000 (UTC)
Subject: Re: [PATCH] x86/Makefile: make -stack-alignment conditional on LLD <
 13.0.0
To: Tor Vic <torvic9@mailbox.org>, Nick Desaulniers <ndesaulniers@google.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 "x86@kernel.org" <x86@kernel.org>
References: <214134496.67043.1623317284090@office.mailbox.org>
 <CAKwvOdmU9TUiZ6AatJja=ksneRKP5saNCkx0qodLMOi_BshSSg@mail.gmail.com>
 <156d8beb-2644-8c2b-789b-104cf9268c8a@mailbox.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <3e245a20-9e5b-9122-7add-11f6eed46ca1@kernel.org>
Date: Thu, 10 Jun 2021 13:40:07 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <156d8beb-2644-8c2b-789b-104cf9268c8a@mailbox.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=T0SkyKAM;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On 6/10/2021 1:16 PM, Tor Vic wrote:
> 
> 
> On 10.06.21 19:20, Nick Desaulniers wrote:
>> On Thu, Jun 10, 2021 at 2:28 AM <torvic9@mailbox.org> wrote:
>>>
>>> Since LLVM commit 3787ee4, the '-stack-alignment' flag has been dropped [1],
>>> leading to the following error message when building a LTO kernel with
>>> Clang-13 and LLD-13:
>>>
>>>      ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument
>>>      '-stack-alignment=8'.  Try 'ld.lld --help'
>>>      ld.lld: Did you mean '--stackrealign=8'?
>>>
>>> It also appears that the '-code-model' flag is not necessary anymore starting
>>> with LLVM-9 [2].
>>>
>>> Drop '-code-model' and make '-stack-alignment' conditional on LLD < 13.0.0.
>>
>> Please include this additional context in v2:
>> ```
>> These flags were necessary because these flags were not encoded in the
>> IR properly, so the link would restart optimizations without them. Now
>> there are properly encoded in the IR, and these flags exposing
>> implementation details are no longer necessary.
>> ```
>> That way it doesn't sound like we're not using an 8B stack alignment
>> on x86; we very much are so; AMDGPU GPFs without it!
>>
> 
> Will do so.
> Does this have to be a v2 (with a "changes from v1" info) or just a
> resend? It is based on mainline now and the line numbers have changed.

Yes, this should be a v2 because the commit message changed. It would be 
considered a resend if nothing changed and the patch just needed to be 
picked up rather than re-reviewed.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3e245a20-9e5b-9122-7add-11f6eed46ca1%40kernel.org.
