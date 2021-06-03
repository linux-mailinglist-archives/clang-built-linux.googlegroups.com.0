Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHMC4WCQMGQEQUSQQNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BE639AC13
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 22:52:47 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id a7-20020a05622a02c7b02901fbef073c99sf3833439qtx.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 13:52:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622753566; cv=pass;
        d=google.com; s=arc-20160816;
        b=CBt0GA9nnh0NCn/pqpgwlzES8zdIxw9VF6vMIc9i9A48gHaECH0XGDFX9wruXyc1et
         1O/nEcuWkRACIuFLAjxVBhJh88+o2sfGZ3IRgB9PIY8Cx7hgtOBVwSkaieSBBeLmFhZq
         aJvd46BDeD+aR+riYE9ikcIJgLlYEgNmetkPTgXNhocYaYgE24a2G9544HlKrew1uaKX
         smE8eRt7D5Q1sil70vnleSKC7QRYsJLGjc4dWyaziDbTtioNNbercFPCosKmATEU/GN0
         iSwqMMj3MSXD28spkntw4DYy00r2RyoloT6SzFSbY/zn7llwli7vFDHxkpuj3W0+LqYy
         5xXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=9wQw2Cz2qoaReWX9Tqfdg2VcWN0P0Hw1ZkIP3bSs6Sk=;
        b=SM94Goh2CnFlwoCUDyNEUXRt32YJLvbrqzKLZDEe6zaAxtjUQBV+XGfukaRpp3fnlG
         N5AFMrsyi5rR9G6Ri9Fws+UL8JQqeOnW3F0BBjRnv+GEkEHx4l3KRy08rhGPwHqvtnvI
         8uBPX1tj0ugJiXyjWftlDGYEMXAqTOJu51yBJvt4FgKErofnZ71YOm/7hR13IE2luxr/
         0WLIjfafoHy6/4Yr4kcq1ON8K/NodAcBBut9o1BclKH5kzSrxyqAXWJVbptZeQG9JJ1D
         KGP2aX1U0vdG8Fpxi5oQp5c+I3Me5XpzpPSmeXEztSa1NAtXROb2n5LfFovuHRsios2L
         3KYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="RF/U5abL";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9wQw2Cz2qoaReWX9Tqfdg2VcWN0P0Hw1ZkIP3bSs6Sk=;
        b=Pj0d9qBUtZfBzMeJiWtqga95fKisFKryLQ1fAfaQqZbkpJL1h60+fONunyN5l2i1Wl
         qhW4L4gfxvw/13OtUa/v134eafqs7A8BCF7CDdsTFTmCsq7pbO+1P95M4T/e1/Vy885c
         FTDKogSe8YHwlpX38UUA++hAhlzW2NABWSgndbfzcXE4pr9+RrwLmKSgPOR/CQ1zxTI6
         hIlBGPIAPW/QKtFqSemvD700C311Gavx4c0UaH5cXpOnIF68nyE9f+xWikDIGUsKNnuU
         Igj9cVcM+0f6usJXx5tHZzT3A9fl364C2Xy7rX6xVJslcohmtAyZLDvHQb4BhsuqNO7j
         LjiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9wQw2Cz2qoaReWX9Tqfdg2VcWN0P0Hw1ZkIP3bSs6Sk=;
        b=OnKQv1xtRan9zkYttQ1g03i1mNdPf2HEQVsjIPcj7zixrqLdvxglUlF+mcxmfFc3EY
         oZ6piWX1TTr6/pgNvCs7NHGKItbQuLcl6R8fZZoM+Umn/4sJuXbuAtFzNY/HyrmTSMcq
         7uThnvl8B8oS8+jtRUSkGtBXXpbpNMmZaLCMrMyhVsu1X9ddX42RBUDI9S/+LOexNBQv
         otT05SPICvvZREX5OYpWoqxlma4KP1GpjmDYUsQUENUlZq2dBKTXgjkJDOnbQ+q53yac
         HK3AXzDhUVgVqHed9jjgCCq1glE6fAeF2/vEavIybg9+i1W3xJfU9ouso8/c6nY8twpc
         EemA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320HwYNFaLUu0vpYOKC8ppxnGdG4ytGFLpAVxZtzTVcsOWNrWVT
	GCv8olhQ++tGsel+HrKTpKQ=
X-Google-Smtp-Source: ABdhPJyE8io18KKEXGAv71kquAxvn1SNfVsqoaqdel/Qy3mZudsszonCJ6onOLXcKj8OSAJIXjOYGA==
X-Received: by 2002:a05:620a:2486:: with SMTP id i6mr1136106qkn.207.1622753565894;
        Thu, 03 Jun 2021 13:52:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5a45:: with SMTP id o5ls1965812qta.8.gmail; Thu, 03 Jun
 2021 13:52:45 -0700 (PDT)
X-Received: by 2002:ac8:4d1d:: with SMTP id w29mr1389627qtv.288.1622753565463;
        Thu, 03 Jun 2021 13:52:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622753565; cv=none;
        d=google.com; s=arc-20160816;
        b=r/zHejORnOTpl5Xqkid2G1bXiFIZuWGZdZiOufiVjMIC8fjq1rZfJg4ydspzQ9HAzJ
         MD8VgK/0l3Pkfhrpa/whZaVTBybR3k/iX7w5PyyPccCny696wsjnazxknSa+hxI3Bhax
         3vl4mRJwgtgaWVCW6OgKvhW+mVdJep9HttQ3f7w8VQmLyf65TIXJn7FFW7zNHiMmNjBb
         Io5P+BK68P9ZAhEC2oss1pEjDhahZ3cDc7IUd4FwFYHcOlGbSEhLNAOo+1KEuHB/57If
         8vmNjEy4ikkKgbEOSMaVKeF32shprF3fI9xqXFvsP7YxJMVXwcnfOOG1dlSMAnmaIIIG
         nZtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=K7pNdTh6dpxThM0HgIDk0Z8UzA5Z66fq1gce0ivlq5g=;
        b=mL0tlwjjibwTHJ6FSvUlqqrNbbv+0LSfB9H8VzgQFwA1uTb5n2+6grZEyyquTYO/al
         VgPBYPCicI5GQLKrytxnV7y+RDCj0aoekvwe/AQLXCO0lluEKuqhbBkQmxq4wyD+zyns
         6oAiGefOu1ypa8BEnEaIiluhtEbgeuUCJoHIiXQs4qdw5vgyFez/KmMoIScSm7MBMC1D
         UEqOnu0/9Qr+L+idwI1FTGGjp2O7Cp11s+OrRbM8uk6jvSJxISPva0a5E1hwzQeGjjpU
         ipGZ1HLOFYE943HWy1YIfSYXAVXA9AJYMy5BP5H3ETxZNXnnJmtq8h5rWAc1QniiadPt
         yLtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="RF/U5abL";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y19si449583qto.1.2021.06.03.13.52.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Jun 2021 13:52:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AEF77613E4;
	Thu,  3 Jun 2021 20:52:43 +0000 (UTC)
Subject: Re: [PATCH v2 1/1] pgo: Fix allocate_node() v2
To: Nick Desaulniers <ndesaulniers@google.com>,
 Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>,
 Kees Cook <keescook@chromium.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, Bill Wendling <morbo@google.com>
References: <20210603133853.5383-1-jarmo.tiitto@gmail.com>
 <CAKwvOd=ygrySyMkJuGwyG7OPCOrTagcFn02RfEKANvhhuZJdOA@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <f06200fd-4ce5-e976-20ec-d2ea9d734b3c@kernel.org>
Date: Thu, 3 Jun 2021 13:52:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=ygrySyMkJuGwyG7OPCOrTagcFn02RfEKANvhhuZJdOA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="RF/U5abL";       spf=pass
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

On 6/3/2021 1:50 PM, Nick Desaulniers wrote:
> On Thu, Jun 3, 2021 at 6:41 AM Jarmo Tiitto <jarmo.tiitto@gmail.com> wrote:
>>
>> Based on Kees and others feedback here is v2 patch
>> that clarifies why the current checks in allocate_node()
>> are flawed. I did fair amount of KGDB time on it.
> 
> Kees can probably cut it when merging, but the above paragraph might
> be better "below the fold" below next time (doesn't necessitate a v3).
> 
>>
>> When clang instrumentation eventually calls allocate_node()
>> the struct llvm_prf_data *p argument tells us from what section
>> we should reserve the vnode: It either points into vmlinux's
>> core __llvm_prf_data section or some loaded module's
>> __llvm_prf_data section.
>>
>> But since we don't have access to corresponding
>> __llvm_prf_vnds section(s) for any module, the function
>> should return just NULL and ignore any profiling attempts
>> from modules for now.
>>
>> Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
>> ---
> 
> ^ ie. here. If you put text between the `---` and the diffstat, git
> just discards it when applying. It's a good way to hide commentary
> just meant for reviewers when sending a patch.
> 
> 
>>   kernel/pgo/instrument.c | 21 ++++++++++++---------
>>   1 file changed, 12 insertions(+), 9 deletions(-)
>>
>> diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
>> index 0e07ee1b17d9..afe9982b07a3 100644
>> --- a/kernel/pgo/instrument.c
>> +++ b/kernel/pgo/instrument.c
>> @@ -23,6 +23,7 @@
>>   #include <linux/export.h>
>>   #include <linux/spinlock.h>
>>   #include <linux/types.h>
>> +#include <asm-generic/sections.h>
>>   #include "pgo.h"
>>
>>   /*
>> @@ -55,17 +56,19 @@ void prf_unlock(unsigned long flags)
>>   static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
>>                                                   u32 index, u64 value)
>>   {
>> -       if (&__llvm_prf_vnds_start[current_node + 1] >= __llvm_prf_vnds_end)
>> -               return NULL; /* Out of nodes */
>> -
>> -       current_node++;
>> -
>> -       /* Make sure the node is entirely within the section */
>> -       if (&__llvm_prf_vnds_start[current_node] >= __llvm_prf_vnds_end ||
>> -           &__llvm_prf_vnds_start[current_node + 1] > __llvm_prf_vnds_end)
>> +       const int max_vnds = prf_vnds_count();
> 
> Sorry, where was prf_vnds_count() defined? I don't see it in
> linux-next, but I'm also not sure which tree has
> 5d0cda65918279ada060417c5fecb7e86ccb3def.

It is generated via the __DEFINE_PRF_SIZE macro in kernel/pgo/pgo.h.

>> +       /* Check that p is within vmlinux __llvm_prf_data section.
>> +        * If not, don't allocate since we can't handle modules yet.
>> +        */
>> +       if (!memory_contains(__llvm_prf_data_start,
>> +               __llvm_prf_data_end, p, sizeof(*p)))
>>                  return NULL;
>>
>> -       return &__llvm_prf_vnds_start[current_node];
>> +       if (WARN_ON_ONCE(current_node >= max_vnds))
>> +               return NULL; /* Out of nodes */
>> +
>> +       /* reserve vnode for vmlinux */
>> +       return &__llvm_prf_vnds_start[current_node++];
>>   }
>>
>>   /*
>>
>> base-commit: 5d0cda65918279ada060417c5fecb7e86ccb3def
>> --
>> 2.31.1
>>
> 
> 
> --
> Thanks,
> ~Nick Desaulniers
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f06200fd-4ce5-e976-20ec-d2ea9d734b3c%40kernel.org.
