Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBD5AR2FAMGQED27ID5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6FC40EA1E
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Sep 2021 20:42:25 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id h12-20020a67f88c000000b002d4e1b91df0sf4790883vso.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Sep 2021 11:42:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631817744; cv=pass;
        d=google.com; s=arc-20160816;
        b=odN7eRt+g0f7JQhYPUzWD3xuWeFqrMZeBc6vuakbcHdpeqY6xlZ8Z/n3U+MfJoFhGj
         CR4p2M5Bw9Sd/6tWbrxzk17e/Og88nrM6+/C+Yw3AbhdM4YDPRIuaZ/s8xzGcJSuv/6L
         aDEnputLt+WfwouiRVMgWJW6sJHXFR4pDu8xvsyQXSjjZIVBBXkA9yR12u7ItW6HC8Ie
         acj2VA3ox6SIRfO2meXlmx4xax6/OM+cvRd5IhJbCS/jVvQOlwz4Jdn+nXJRfRCcfN34
         p05aErw25VBx8mrGYkbwD2BMqvPLZeaj5wPdK3Q4fUaFV0xmmJ4asQQVyGoqikXrJu+x
         NJ/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=4GVcLN917V0iyf7hi+Uzcdozk6KMeTREPr2Lfn/GfpE=;
        b=plU15QTu9XJ3Eqr/Jjja/axKL6KzUbZ6pkyILwH+tBD3TTEYoecMhu84iltzaJV7vC
         iK0vrYO1zrx6GWtqG21WbNrCEaxPuDlwgz5QpGOpcg37Qp1WWEX1QVtQSV+G7C4xV/Ge
         bUbu6jQHVeVoa3AFKMNh0jIszALR71iFOhLCDQseC+7PMSz6WRrJg7rO34e2TJ0TZFee
         WOrd5J1uVqSm1WtCocUNlKCVXP7ZQYdZOLbbBERNDWl2wqE6QfmcsBTMQvtAvUPuy+4F
         n+7BxSTl5nomH05v9WQvx+N5qF3yQJFFjKLRWvqZWEo0y0zGmkFHDQiHNclvoBT7WUCa
         Gf+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=naUyEq4E;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4GVcLN917V0iyf7hi+Uzcdozk6KMeTREPr2Lfn/GfpE=;
        b=ACMa4SmrVNX4mTC6zUjnE1K1Gg4hutazPypmfF1brVdldci6Gdg0UZLyj6rXkKTtJz
         nmoILzbZBi685RHVXeRg0L0UAtkrsKIDg/cp8vWGzHV2Q4ZlcLadlPJ2YLm6GwwQZ0UN
         5vMvglbLZvaxQntQZVEWFq+4bkdnEUfpyAxZMgQ95i7tF3oObaE5zIu9ZDHE10Pj87Tc
         4ALVt8jbNk/j9NBBMkfr3bJ4ukEKSHkNW/DmLieP+wcNJEiXTozDKoW3dSvLDw5IGH89
         aEHwMwYY1S7kRTtXb9T/EIGaLynHjiuN37AfqAC2MFG71YfWo6l/KBY5+2JVU5Xu64eN
         gXKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4GVcLN917V0iyf7hi+Uzcdozk6KMeTREPr2Lfn/GfpE=;
        b=6t3nsPO4+OoLN4PFj0gqY7HJ54qvjmjzYLQovoK6P4msSk7WAZyyoMjInjI2FJzNLh
         hwEmrL9+yRvKvpbWhDR9i+lFZ4uHtmUunrQ2m9G9pXvcIE9yXn3FdYIztmrzZX8bfI1Y
         zo/mllcM/ZPxbzdJsBWJHMZdQnoej1eEn3s0vJtk3yhbqYxeoesKmpP/M/+lDWLOnMMf
         871bP6+BBgL18wnRBi5sYKfyh09uTf0MTdilUx6i8W5pWTFD6wqKOASiwzDLSqKe9cD8
         FRGIj0BrD4w1In19lpdra3T+ILm77jXsH+XNGRAiGSlj6DOoANoKpE4ukq6yElhnYjtI
         L5Mw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Oy6itPSMeQDgVIMh2T5gMh2TzlKo/wM/DAG10X7C61MRxCte8
	jdDRDppMlsPLMFAElG01Rh4=
X-Google-Smtp-Source: ABdhPJxzT6Rc//7mIFCqJqDYHtaLxYK9nxve8ckjr1yT/M+cmeuFHEkNKXMX0wOdjQBfTd30kRr42w==
X-Received: by 2002:a67:eb43:: with SMTP id x3mr5955253vso.29.1631817744038;
        Thu, 16 Sep 2021 11:42:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:d294:: with SMTP id z20ls138530vsi.8.gmail; Thu, 16 Sep
 2021 11:42:23 -0700 (PDT)
X-Received: by 2002:a05:6102:3112:: with SMTP id e18mr5442144vsh.50.1631817743501;
        Thu, 16 Sep 2021 11:42:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631817743; cv=none;
        d=google.com; s=arc-20160816;
        b=JtAb0lR6SDRGbX6W6RHkaU4WsWzuvP5QxKY/6yi5Tw8BQhxYDvA+KdZNcwtfbmnsFB
         6R5aHKIfnnNeFFndxLJZEqSDRYcyQwAoVwyWzZJBEB5jKQcbHLcRy+n77aMVFfX6lvW4
         hjmcoaF1nEMdqngIOQ79NdczIErBzg3QjRDtRSfibzibjXm15y8xBjWQRKfGvZp4bt4k
         Iaxj0XrmyMaPuQTNKDHlol4AJTwaihSJwFLJtvK7F75YnTB2Z2PI3gEesylHU/z378Ec
         V29GGQZeLx0haTsso8S1Ir5YSqfvM29vU+GZ9FGRKRjngqMFqeDTe7sSdsQM0+hwd7eC
         Plow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Z0OLSBv0L+LTNlkYjToYN1toAmeMYGDPf72YF0M48hc=;
        b=BsrJcDhJGN2UxQxw8buHJ7jmnpatmO0nPLD19fJSmWpS8K3K1nojQoJAzwsOvlccus
         HKBl6yyafyDQbKzXOtltHPVduQ75HjDrOO7SkRQYz9K9Y7lT9NmK5NvD3K4p62xZokH9
         mfl4cfsMedolcffZ6wxe8I5eHQMqWNRTA4bAzk/o7UNqpGVjYqSMnGEm618ltL/LXNXs
         O0Z/2hi7BeROqFgH7N31QmLcjNHGDyLVlCItvniiTy7ZsL90oXUIICrFRnPr+AAg++nX
         8RQY0xb0ztqIlWY8G998Git3BGL6aCCN1FeGYKOaJ84wss/WzG7HeS3MRzY4cs370KlS
         HmPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=naUyEq4E;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u23si557836vsn.2.2021.09.16.11.42.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Sep 2021 11:42:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9E065610A6;
	Thu, 16 Sep 2021 18:42:21 +0000 (UTC)
Subject: Re: [PATCH 1/2] x86: Do not add -falign flags unconditionally for
 clang
To: Borislav Petkov <bp@alien8.de>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 x86@kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Nick Desaulniers
 <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
 llvm@lists.linux.dev, kernel test robot <lkp@intel.com>
References: <20210824022640.2170859-1-nathan@kernel.org>
 <20210824022640.2170859-2-nathan@kernel.org> <YUN8coiEx3JZQytc@zn.tnic>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <4d88e0ed-422d-447a-ea8f-36e54b38fac1@kernel.org>
Date: Thu, 16 Sep 2021 11:42:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YUN8coiEx3JZQytc@zn.tnic>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=naUyEq4E;       spf=pass
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

On 9/16/2021 10:18 AM, Borislav Petkov wrote:
> On Mon, Aug 23, 2021 at 07:26:39PM -0700, Nathan Chancellor wrote:
> 
> A couple of nitpicks:
> 
>> Subject: [PATCH 1/2] x86: Do not add -falign flags unconditionally for clang
> 
> Make that prefix into "x86/build: "

Done, I'll be sure to keep that prefix in mind for future flag-based 
changes.

>> clang does not support -falign-jumps and only recently gained support
>> for -falign-loops. When one of the configuration options that adds these
>> flags is enabled, clang warns and all cc-{disable-warning,option} that
>> follow fail because -Werror gets added to test for the presence of this
>> warning:
>>
>> clang-14: warning: optimization flag '-falign-jumps=0' is not supported
>> [-Wignored-optimization-argument]
>>
>> To resolve this, add a couple of cc-option calls when building with
>> clang; gcc has supported these options since 3.2 so there is no point in
>> testing for their support. -falign-functions was implemented in clang-7,
>> -falign-loops was implemented in clang-14, and -falign-jumps has not
>> been implemented yet.
>>
>> Link: https://lore.kernel.org/r/YSQE2f5teuvKLkON@Ryzen-9-3900X.localdomain/
> 
> Also, there should be a second Link: tag which points to this mail
> thread so that we can find it later, when we dig for the "why we did
> that" question :)
> 
> I.e.,
> 
> Link: 20210824022640.2170859-2-nathan@kernel.org

Sure thing, kind of hard to do that on the initial submission but I will 
do it for the v2 shortly :)

>> Reported-by: kernel test robot <lkp@intel.com>
>> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>> ---
>>   arch/x86/Makefile_32.cpu | 12 +++++++++---
>>   1 file changed, 9 insertions(+), 3 deletions(-)
> 
> with that:
> 
> Acked-by: Borislav Petkov <bp@suse.de>

Thank you for the ack. The conflicting changes that I mentioned in the 
cover letter have been merged in 5.15-rc1 so if you guys want to take 
these changes via -tip, just holler for an ack from Masahiro on the 
second patch on v2 (but I am going with the assumption this will be 
merged via the kbuild tree).

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4d88e0ed-422d-447a-ea8f-36e54b38fac1%40kernel.org.
