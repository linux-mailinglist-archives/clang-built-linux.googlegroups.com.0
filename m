Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBR42TOEQMGQET423BSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CF43F7EE1
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 01:07:53 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id g12-20020a1709026b4cb029012c0d2e483csf160811plt.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 16:07:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629932872; cv=pass;
        d=google.com; s=arc-20160816;
        b=FesdkTKk8Y7WpFKuyj5FldHFFDcFtCunBh4Bl8utO6cRrKs3cryCIMXuFklrabEWSn
         3FrkYm9PvaVkd+DRZ805yC960O4X93TxBkriAWDyF/xFo2CNZquN4WwFGRXjzcx/HG8Y
         yuXd8RpGF/ukkKBkf3A4K1AneRCKu0ggVpjg24JQvsz0XPuiiwnBgFn3+FtaAA35hoGn
         0zhjGXg7meryEnRod95UCY0XtH97HeX37kBCZTgWSOh6WBTu4emyibEgQV8xrZluvzZx
         W9IzTee7nj9tes3QAQpeKGXbbPLUXieFJHJwgJSZe98oWDL9at7IRXSk5udURRBTyEzd
         eU1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=jWzSKyY+FVBIirUpFjU5kX3FKeEBFj2f6vQFSbRDW2I=;
        b=rSTE+0N76Zvz1AQVxixahDIgnxymhr00KArP6uVgYN8rwVRJKhj56WVx3aV2DD+hCu
         JWHguOIKdWsNCqU8ZHzC97i4rWO8N9fuJrWGHRb6rohY9wmFvF4127kMpn0ouzGLA5Jy
         5+/xBHuLLIhM6JZIf6FvtNvj6UioOJFFH6qaDfj89pBwKvlxOmq5D+an2TB45bTyYQO9
         G/k4poeGGf0NnGWPjXu7RxDe/OYy8v9eEjq7RbfQpSNgBO7OLe9kdbavotVSBtqr7kn2
         qo2XHFf4KwvBsdHqW869f3wb+6/GYHmEqUSqYR8tnwOTeLA+BV2IirO95vFcGBcSvGtN
         4hkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JpYeWiCC;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jWzSKyY+FVBIirUpFjU5kX3FKeEBFj2f6vQFSbRDW2I=;
        b=jqpAbF6ViVc1u1EjRsESn98cLQ7YwlL4K8u1ngaKoXk/5g2aMlIYMdatAmgSnKojTW
         WED9a3u6zw1n+SlqjtnCI+0NEGc7i+3CI4odfmQQ1dd5AajBminLJG+zpvEYKRj/8zs/
         h1OaG575fHfSCNzIeWItW3+MIPoYe4i8jdyyvw6dFezkwV15QZYAkGlSMuIHWklyBUsC
         wLp6VIvIt9jLGwf++uIcvI/5J75R1qpsqZdyGoXIUTM4B/3vXL6isNZNpA+F2L4BfKp4
         MsuKZMMdXE3+pmNwZ095RbDXAbA7++aKv8Ztn1Pf6NQ2FQ+D40KiIGUptBZTsbWbPv5r
         HrJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jWzSKyY+FVBIirUpFjU5kX3FKeEBFj2f6vQFSbRDW2I=;
        b=FzNlGOPU4MSIBLobd1ZnC6sr3g1s/tTj7oJro/h9FBykGkj0ObHSTLcGpdyzUHZMrm
         xSn0QIIACQlV2QRpeLck0us0hZUDT+sOOyh4kJubuHy1kru1P1IYPdlQTcwAVDiz6CA6
         r4CnCVTlI0hBGx1zN2jbrSfc14SxoulOfEweIHmbvGWAC8Zrko1ZgT8Pqht8o7gn9tMj
         U1pgQcQPHFRLpfx2qYiH15wF+8y9iFz9+rhZ5Ru/xDhTOyq2eFJ2PbBno1QJvMyr+Pkg
         vxVO90VpMKj884Rnz1gpDOqhbwqBVnnb4CVotlL0LFbPp5Y3QlzPA5AbQTubiezbSw75
         N9bg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SmfFy7SZvyTUdWAInCAkS18ooYIWObMj3TcyV7Ue/9KmOUxC7
	Ve5oneZcq7KyX40Rq1vHiRA=
X-Google-Smtp-Source: ABdhPJxfykjXz45/2UQCVxaXflyhIKf5QS8Q4XcwdUDNphAgrieYi2Ms2xA9RlTHapJ1YUwDfuF80A==
X-Received: by 2002:aa7:8484:0:b029:3e0:805e:9f67 with SMTP id u4-20020aa784840000b02903e0805e9f67mr735382pfn.73.1629932871906;
        Wed, 25 Aug 2021 16:07:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:9c5:: with SMTP id 188ls1547374pgj.4.gmail; Wed, 25 Aug
 2021 16:07:51 -0700 (PDT)
X-Received: by 2002:a63:5f8f:: with SMTP id t137mr181371pgb.420.1629932871329;
        Wed, 25 Aug 2021 16:07:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629932871; cv=none;
        d=google.com; s=arc-20160816;
        b=jb3zENC6qeuQFxRyAD1dIRkyhG1ZLfsO8Be1LqZaVGiRJpMCMw2iVXae/avvKk8V2W
         DQ9RaSwS6aFcjbg4rhNJi3Mdzsz0UtBHOxE2qgJ0ZDNme/V8/n6hVNqBPMPIYnBBQVTN
         qzj+7LO5MYw5dpTM1fzjXLgW6nZOclnnQRalNUKdmSBOCS93ohS5f+Ids14XvmDthgGU
         OCY2ri03nKZZKacgM+W25tb8TDGhE0He2bUyfJy6s6MKW1mEPhNqZWWlr+OSkTFtQoB2
         HmCSBJID5jgtrbpotu3DPQbznQhFhE4d2AOcIsUWfo7Y22rea4M5+Bsn/IXnKEsqBBxJ
         teVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=3ObmmBcpszREbrXynG73ZgqvDQ+c+5VX6C24h3tb0zY=;
        b=d3nPKqAe7BrQzRfhh/b56gUGADCuaR6TpiqavpDa4GSrA0HUaNMhr0mU9nwQ6ni+dK
         CwBf/nK9D294itmqLrnMFeUgoSP5BVetWBE4hoApWF5fMSy6TrY1ZHJ282UJ95pnV1nd
         SRD09XDsIQa/K6E1J39g800M8HYTYNj6wd3YNncwQh9BnBuAcsBPUlLbk34IPcqFLumq
         J4dTmxuhjjOfU2eDDRu/XxYMBhUqSab0rKAnRMYcmJHYJujJEE4757iKba486nBdP7H1
         Ix6fcK5SDnngUZw71EEgjdiiFJ8J9biPlTJcPVejnk7gX1Wz/gZX0FxgMVu2XHDYHxWO
         iHDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JpYeWiCC;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o2si633184pjj.1.2021.08.25.16.07.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Aug 2021 16:07:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2C7EC610C7;
	Wed, 25 Aug 2021 23:07:50 +0000 (UTC)
Subject: Re: [PATCH] drm/i915: Clean up disabled warnings
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, llvm@lists.linux.dev
References: <20210824232237.2085342-1-nathan@kernel.org>
 <CAKwvOdk2mLem4w05o5cdr0Mz62M2CWeW+5LFnKE5L+pMPqa7WA@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <b8ff7ced-3e5e-603f-6e59-915c97a8f88d@kernel.org>
Date: Wed, 25 Aug 2021 16:07:48 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdk2mLem4w05o5cdr0Mz62M2CWeW+5LFnKE5L+pMPqa7WA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=JpYeWiCC;       spf=pass
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

On 8/25/2021 4:03 PM, Nick Desaulniers wrote:
> On Tue, Aug 24, 2021 at 4:23 PM Nathan Chancellor <nathan@kernel.org> wrote:
>>
>> i915 enables a wider set of warnings with '-Wall -Wextra' then disables
>> several with cc-disable-warning. If an unknown flag gets added to
>> KBUILD_CFLAGS when building with clang, all subsequent calls to
>> cc-{disable-warning,option} will fail, meaning that all of these
>> warnings do not get disabled [1].
>>
>> A separate series will address the root cause of the issue by not adding
>> these flags when building with clang [2]; however, the symptom of these
>> extra warnings appearing can be addressed separately by just removing
>> the calls to cc-disable-warning, which makes the build ever so slightly
>> faster because the compiler does not need to be called as much before
>> building.
>>
>> The following warnings are supported by GCC 4.9 and clang 10.0.1, which
>> are the minimum supported versions of these compilers so the call to
>> cc-disable-warning is not necessary. Masahiro cleaned this up for the
>> reset of the kernel in commit 4c8dd95a723d ("kbuild: add some extra
>> warning flags unconditionally").
>>
>> * -Wmissing-field-initializers
>> * -Wsign-compare
>> * -Wtype-limits
>> * -Wunused-parameter
>>
>> -Wunused-but-set-variable was implemented in clang 13.0.0 and
>> -Wframe-address was implemented in clang 12.0.0 so the
>> cc-disable-warning calls are kept for these two warnings.
>>
>> Lastly, -Winitializer-overrides is clang's version of -Woverride-init,
>> which is disabled for the specific files that are problematic. clang
>> added a compatibility alias in clang 8.0.0 so -Winitializer-overrides
>> can be removed.
>>
>> [1]: https://lore.kernel.org/r/202108210311.CBtcgoUL-lkp@intel.com/
>> [2]: https://lore.kernel.org/r/20210824022640.2170859-1-nathan@kernel.org/
>>
>> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> 
> Thanks for the patch! Do you need to re-ping, rebase, or resend that
> other series?
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

I assume you mean the series below rather than above? I sent this patch 
right after that series and it has one set of reviews so I am hoping the 
i915 maintainers will pick them up soon so this one can be applied 
afterwards or resent.

Thank you for the review!

Cheers,
Nathan

>> ---
>>
>> NOTE: This is based on my series to enable -Wsometimes-initialized here:
>>
>> https://lore.kernel.org/r/20210824225427.2065517-1-nathan@kernel.org/
>>
>> I sent it separately as this can go into whatever release but I would
>> like for that series to go into 5.15.
>>
>>   drivers/gpu/drm/i915/Makefile | 10 ++++------
>>   1 file changed, 4 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>> index 335ba9f43d8f..6b38547543b1 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -13,13 +13,11 @@
>>   # will most likely get a sudden build breakage... Hopefully we will fix
>>   # new warnings before CI updates!
>>   subdir-ccflags-y := -Wall -Wextra
>> -subdir-ccflags-y += $(call cc-disable-warning, unused-parameter)
>> -subdir-ccflags-y += $(call cc-disable-warning, type-limits)
>> -subdir-ccflags-y += $(call cc-disable-warning, missing-field-initializers)
>> +subdir-ccflags-y += -Wno-unused-parameter
>> +subdir-ccflags-y += -Wno-type-limits
>> +subdir-ccflags-y += -Wno-missing-field-initializers
>> +subdir-ccflags-y += -Wno-sign-compare
>>   subdir-ccflags-y += $(call cc-disable-warning, unused-but-set-variable)
>> -# clang warnings
>> -subdir-ccflags-y += $(call cc-disable-warning, sign-compare)
>> -subdir-ccflags-y += $(call cc-disable-warning, initializer-overrides)
>>   subdir-ccflags-y += $(call cc-disable-warning, frame-address)
>>   subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
>>
>>
>> base-commit: fb43ebc83e069625cfeeb2490efc3ffa0013bfa4
>> prerequisite-patch-id: 31c28450ed7e8785dce967a16db6d52eff3d7d6d
>> prerequisite-patch-id: 372dfa0e07249f207acc1942ab0e39b13ff229b2
>> prerequisite-patch-id: 1a585fa6cda50c32ad1e3ac8235d3cff1b599978
>> --
>> 2.33.0
>>
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b8ff7ced-3e5e-603f-6e59-915c97a8f88d%40kernel.org.
