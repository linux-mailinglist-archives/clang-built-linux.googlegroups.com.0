Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSWQ72CQMGQEZK477WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 064AB39FD95
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 19:26:36 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id c9-20020a0562140049b02902246fb9601esf2754324qvr.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 10:26:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623173195; cv=pass;
        d=google.com; s=arc-20160816;
        b=ayMZpvoIeJp5UVhjvT0DTV6BGX8dcy7kCdpQwuFfZyzHCrXqWASQ3ZRqIKLuCkUNwa
         BIixUDZFcWqfV9zuiGG05GJ7+SXG18kRLg0HXbsIltJSXXToWiO2Q1K1e/IAbtzE4eKx
         8Qmz6xC/jPXRxqDOURQK/32bmOkRMttIN6lGK6yiCCWx4Rw7hezEf30DbM/gpXL3QM7p
         4WxZZsyiZ65XBvRVoA2K3kaFSqx6G82xWBxf/PCdwj5VgUQ1y8YAOJH4/UPrXmirM29p
         iG2Tnfm44OYtLOYMswdKj4ka7FpfOY06Hbo6h0+gkaHJYU5ASr7XIjGP5Q9F5XOT+kq5
         k0+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=wo1x0dcAOFlLOz3Y6q6ZKBL5g6ftQWWh4OqwEYrI8rM=;
        b=qVVbMPifZ6PGiPuzrVBRqElRtZ9rHHkKntLtA2y5G5jKG25Afwy0ZE7euhEDGGY/Nw
         TwrGIIWP2EBWRZKSzhiLQnskvGdSOBDJWQedl8tfqR01IkbKK6xVvLCMkN2jpkT1sxnM
         ayBHiiaVgTbUmYxokslxNPyaQhbn9xDfZatOYg2EPbFlAX8XmSkCKNC/ZwQQWWu+Wml6
         2zbDYdUMxZNUogPqQx5iGkt2MDEBd6CEqPm8M/wmk1wK8iJWHMYuE7kBXknup0dLxZCE
         2JEdWnIpFw2Osp26vXDiSfXajW5lcDzywQPBU6SRheQM+jPcCkYC/iHeMlXxV31D9uxZ
         9qgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BzsBwSng;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wo1x0dcAOFlLOz3Y6q6ZKBL5g6ftQWWh4OqwEYrI8rM=;
        b=nNowqnRAxT7VOrT2awial8FYs8gQVpyjTX3SQovOlpeTwvXsfO49LP1ABd1Fj5z062
         fGkyLOAHNhFfk+nADL5hlKxjpVeCpa+6pLRvKClBlzVskAaArhLlyQgsGXIanPVtN30N
         g+1pgw/HwmBaTVA1Jhp9zT4H4Y+4yomlYk1InboDSpzGvhAVCmtPik2j2oUlzytWfQUR
         fB0DOUe0VgiZozCpI5flYWhlK/26HC+tn4XLYg6ojE+Waq2tmN1rW+1ge0piORK/JIPE
         J3PHq2urBprSDewN83RWW3e/Fntcd31ZUeEW/dHbQ8nKQifUhB/FOs+6aXGIhkVeNJH8
         TnFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wo1x0dcAOFlLOz3Y6q6ZKBL5g6ftQWWh4OqwEYrI8rM=;
        b=OfBSy78MQzP1RSnyc1T8NeHPDt/HSVV4nUne8nTH/HLjjH8YnHBEcfLCHpKEHi166n
         hFHsDSWjjopV9RJLxk8TtNeYmDyJXsXrSynt3g+83a6wKGk/onEGWnMXjOZooIFyimmy
         rCR2aUkVTya3zw/UP4N/bAVInxEXhusUkgueuohudJODbBWbrqj+wsr3aYSA+hjzYBs8
         KjhdV+u6x2sfC9mgXJ7z7QqOROsxOmlq3YR2o1C/e03tUVdpbOsDblafYYGZktP46Asv
         WiuZNiAasF4+oAXE+qZDAO2GZX8quZI/bekZ0OGEx2iLdtBbVgtzNeNd+rDM/9pVWlzz
         tmNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531iZe2beLDS8DJFZhJYtY25nO+y8BezJnaW1jCyikqNGZIQbyOX
	otM8fuZMOAZp3IppObCV+z4=
X-Google-Smtp-Source: ABdhPJycD2E4/q0dCqlpM7l1pkXzzTdFp1EMopuy2LInwp6EFj+7L+Z5vyNaVc6lojSiKeJgf32UWg==
X-Received: by 2002:aed:3022:: with SMTP id 31mr22720430qte.62.1623173194903;
        Tue, 08 Jun 2021 10:26:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3d51:: with SMTP id u17ls8250117qtf.10.gmail; Tue, 08
 Jun 2021 10:26:34 -0700 (PDT)
X-Received: by 2002:a05:622a:150:: with SMTP id v16mr21800775qtw.285.1623173194248;
        Tue, 08 Jun 2021 10:26:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623173194; cv=none;
        d=google.com; s=arc-20160816;
        b=doSPQBLkmE1kPgpqiq6anEJqb0VmUag3qfeEzrPuSaq12fZO+tIAzczG+muH8cIEr6
         wGmIEN9mY5PsMm6dMyb2ZVStkzzK6yHE82AyYzgq0bgeoef33G/Ga2AM15Q3gETGU4ZN
         0S1tmOuPd4hx1I5gK4VxIPebCBiRaGdp22NRTPvxGGp5SBiqk+Pr5ef2eZW2d5cS3TRy
         9BIn0V9Bk9LR33Rg8k7704l0Mwi8CWX64NbL0GMT6gTODe3RA01HBt7Xml8pVUx4Nhzr
         tbO3Xmbg1WA5Kybg9s5zsdepvvdMv8q1x42AQ2g37xwKaGbOsKwxP0eRwDosXhPQAQbv
         f0Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=X8PdAnx06Q5ehxCqLWdmAN/nGd4D3NI5xu53+ycbS5w=;
        b=w1/akv6hOasUbY0OPTzJJ7vCmZdLuTa7qWgOXsECswMelbOvALdjWwFqSbfWcgPuTU
         9C43IQLLlgvTNgKC36/AWO1WdLwaPk3ndtxmawhAv04FCfpwgc3lH3BwuVsk94xl36d5
         42zH1i84KKCQ4UcdwPKlAA0aQ3HcpXgJAXHln3fjiRjIBcySD0xAXSgM0N2Wn6rrOHs3
         oyCoIZEUNuCifx0CI7+hnR4y0CeHA0GFO2YONiDltOpXyWAmhnAL/Qgu5MJsYh4ZMl2V
         inHafEl+4QBM6m/8GXRayUee6zW+r+2EHlr6oRuzclH1SR+aznEaHG1cWb1TZGgICv94
         dNrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BzsBwSng;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d10si936918qtg.3.2021.06.08.10.26.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Jun 2021 10:26:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 752536136D;
	Tue,  8 Jun 2021 17:26:31 +0000 (UTC)
Subject: Re: [PATCH RFC] x86: remove toolchain check for X32 ABI capability
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: X86 ML <x86@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
 Peter Zijlstra <peterz@infradead.org>, Fangrui Song <maskray@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 "H . J . Lu" <hjl.tools@gmail.com>, Andy Lutomirski <luto@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Brian Gerst <brgerst@gmail.com>,
 "Chang S. Bae" <chang.seok.bae@intel.com>, Chao Yu <chao@kernel.org>,
 "Darrick J. Wong" <djwong@kernel.org>, Dmitry Safonov
 <0x7f454c46@gmail.com>, Dominik Brodowski <linux@dominikbrodowski.net>,
 Gabriel Krisman Bertazi <krisman@collabora.com>,
 Ingo Molnar <mingo@redhat.com>, Jaroslav Kysela <perex@perex.cz>,
 Jason Gunthorpe <jgg@ziepe.ca>, Jethro Beekman <jethro@fortanix.com>,
 Kees Cook <keescook@chromium.org>, Miklos Szeredi <miklos@szeredi.hu>,
 Nick Desaulniers <ndesaulniers@google.com>, Sasha Levin <sashal@kernel.org>,
 Sean Christopherson <seanjc@google.com>, Takashi Iwai <tiwai@suse.com>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-xfs <linux-xfs@vger.kernel.org>
References: <20210227183910.221873-1-masahiroy@kernel.org>
 <CAK7LNASL_X43_nMTz1CZQB+jiLCRAJbh-wQdc23QV0pWceL_Lw@mail.gmail.com>
 <20210228064936.zixrhxlthyy6fmid@24bbad8f3778>
 <CAK7LNASY_+_38XEMLZAf7txr4EdukkcFL8pnGGe2XyhQ9F4oDQ@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <1992c9cf-739e-d98f-85c0-bbcf7df123ea@kernel.org>
Date: Tue, 8 Jun 2021 10:26:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAK7LNASY_+_38XEMLZAf7txr4EdukkcFL8pnGGe2XyhQ9F4oDQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BzsBwSng;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Masahiro,

On 6/7/2021 12:39 AM, Masahiro Yamada wrote:
> On Sun, Feb 28, 2021 at 3:49 PM Nathan Chancellor <nathan@kernel.org> wrote:
>>
>> On Sun, Feb 28, 2021 at 12:15:16PM +0900, Masahiro Yamada wrote:
>>> On Sun, Feb 28, 2021 at 3:41 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>>>>
>>>> This commit reverts 0bf6276392e9 ("x32: Warn and disable rather than
>>>> error if binutils too old").
>>>>
>>>> The help text in arch/x86/Kconfig says enabling the X32 ABI support
>>>> needs binutils 2.22 or later. This is met because the minimal binutils
>>>> version is 2.23 according to Documentation/process/changes.rst.
>>>>
>>>> I would not say I am not familiar with toolchain configuration, but
>>>
>>> I mean:
>>> I would not say I am familiar ...
>>> That is why I added RFC.
>>>
>>> I appreciate comments from people who are familiar
>>> with toolchains (binutils, llvm).
>>>
>>> If this change is not safe,
>>> we can move this check to Kconfig at least.
>>
>> Hi Masahiro,
>>
>> As Fangrui pointed out, there are two outstanding issues with x32 with
>> LLVM=1, both seemingly related to LLVM=1.
> 
> Is this still a problem for Clang built Linux?
> 
> 
> 
>> https://github.com/ClangBuiltLinux/linux/issues/514
> 
> I am not tracking the status.
> What was the conclusion?

This appears to no longer be reproducible so I closed it.

>> https://github.com/ClangBuiltLinux/linux/issues/1141
> 
> 
> This got marked "unreproducible"

I just had a look at this and it is still reproducible (see the bug for 
details).

>> Additionally, there appears to be one from Arnd as well but that one has
>> received no triage yet.
>>
>> https://github.com/ClangBuiltLinux/linux/issues/1205
> 
> Same as well.

Yeah, I cannot reproduce this.

It seems like a Kconfig test would still be best for the issue above, if 
it is not too much to maintain.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1992c9cf-739e-d98f-85c0-bbcf7df123ea%40kernel.org.
