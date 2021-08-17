Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAMK6GEAMGQEYR54EYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B913EF614
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 01:23:46 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id a91-20020a9d26640000b02904f073e6bc1dsf150744otb.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 16:23:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629242625; cv=pass;
        d=google.com; s=arc-20160816;
        b=LOhMuhf+rnlivjvnkWp0lrPaAOKeBDddvRvsMQAzcH+VZtOZ2lwXDFJUusvB9Mmjd5
         Uufv4TYaEnNKDADgDEYHNRFzUjNiVsTXc3qejPbd/3UttoXyJOyvRnQsjKxo3VVxpov/
         b30MrzrcgOv7L4aXiXqjgTJ1reYhQDZ+H5YXl01qG/qMFjRzbo55Dq2ShU5hgV2nlBgR
         15YaFXV4iiBE7wjamvHxnjgTaZ66l/+Ky4l1lLryXkoZAlGrIw+uXCxw/vxRCtKmbcnJ
         4j2SQ4cjV23GFLXPstDupgxpFyicp7ssbjA9JOgks+fOUai0IX3PU4UhWI4PgAvrWScw
         5vlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=UUCSCa5wJ03LRevsNV/xwS12Vp4JxaXa8kI9MpNsLxo=;
        b=gyNR4d6AQwGZOHJMOkZLSgSKbd62dZLO8odeDBPUGR8mMmW5cxm3x00jhxdPxhDl7C
         z2Dwv1rkxbsdZ3YupN5D1h0pNZ59KQ0k3nxqIXvKgyaouS3ahMJ2VjHLOlJ5JPiMrl0S
         ohUMyJlhNJYYHqcL5KVwpOc/IAF/1IlD1O284A3I/zd+Fd7OHb7ImndC6tcL1dkBKyU0
         xdRjns5WuNTrY0FYv+MN0XsHf7nS4GBeEBQ8VB1AA4rKFtgmbc09iH+PG4uVkMaMGj06
         h7+LQ5nWh5etvxCRDZnztPZo9xC89p+wHKKVzrI+TVZLiNkk7SxT8bCWR+WgIoX/7XLa
         QVtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=trSh2BL9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UUCSCa5wJ03LRevsNV/xwS12Vp4JxaXa8kI9MpNsLxo=;
        b=d47IYj7825LOFdPkoUhAXLi0+5wATNOmcs5hGt7J8OzVIrdKoAwy7q/7jhCWrILbtO
         N0sC792SN5bU/Usceqys2dKnAM8qzfe/V1sL03edf6tLVZffKPHIBMTqGdq2WPRpH0B5
         tguGl4xpD7NeaaRndGwTqWAmDF/rIGP9CTv2/q2X7G8ZrU2KOZm/lXxTRY9xtVEEB8MC
         oKECrrKK0Vp3xDQ7I1S2JhHMU6cdgQZ0xHMFCwdYqWlrngs6rIJ1E7VbQN2TRhkkFx+a
         Np5w5QyjZTNca3sbVH4/Gtl7dUsGRNYjFHKzKrMzvaMdBoXwZNSYW+Kx1JScu+9edOuz
         /dCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UUCSCa5wJ03LRevsNV/xwS12Vp4JxaXa8kI9MpNsLxo=;
        b=Dybdca/rqB9G5yFg0OtAfOh3cUJFZyNqF6FDzYn13Iml8C2zKpQQPI1S8CLjjcqQnl
         GhEbJUxz2xlL5NKQnPcAudBfcC1ldguw8INmqzbfwQ749t8XuIXFOuYoV21UB64Lym99
         udVzSi4jR4gLSsdLi2iYoeEhg/CC0IL5G40OG63Es3tte9mfp0sHBw4UZy540l49MtAT
         LwOQFRc7FkXKfT/VaoIgtW0ikqqUTQZ8LCy5lLckJGIwKegrADchLaWNWV8wvuwHDJ/Q
         QwlBwWF7KtSpLCFnToXa5BupwVY8kvwIofMj8sgtdgBn6NOAquDUaATEc3ZQxjraYnTy
         sXVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RdxfKCUFTHCky4LNBEPyDYOTuI/vSkRJNdeEujCV+MwAmsfyU
	2qdPwo/bU2mtjopc5xQYSD8=
X-Google-Smtp-Source: ABdhPJy5ZG5/blYdiZxjfyP9L44YMPas352q4Dpt7rg0lMkJm5Chbh2QKbVBBhPxbS/RPEnxpL80Bw==
X-Received: by 2002:a9d:8ed:: with SMTP id 100mr4451510otf.232.1629242625477;
        Tue, 17 Aug 2021 16:23:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:188:: with SMTP id q8ls87760ota.7.gmail; Tue, 17
 Aug 2021 16:23:45 -0700 (PDT)
X-Received: by 2002:a9d:6959:: with SMTP id p25mr4536862oto.81.1629242625138;
        Tue, 17 Aug 2021 16:23:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629242625; cv=none;
        d=google.com; s=arc-20160816;
        b=VHmdTvl27Yeni0+FUdxmCiiDfjsOm07Kz3XQ+jdF6Qt1n/rTUJ/TjAdDSticof0wYk
         Woz813FtQeKkGrzxBR2X86sQdiCkZjx2oGle0c0NrWw8bD/+IXI1xNzRZNPF1Qsnw0q8
         BRY73WenEoiQRSsp+9gNW383SL1DNWv9BPXc9g6VGyFGGCVdz49BXwIVLRKLVBgF+MLg
         wKY6RqUDV1QzIfyCdmH2jWJcldUoBjI/XOAaMA+s5y0qYn5knl6q5HrlUBZouh5SSZK+
         /b5QDKRqrRymRmAhwnfhzjVMh/Lpjcqc8WldkvuFU7/Gago3lORfyzUsXXqvdaM0hrOf
         4hyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=0ZzwzwCNXPVW1andDIJXJyAS/Ka1EySnPaEoHcO0PMA=;
        b=jaYGOXlzydHYveq8yBUDdsHNijqjn+Gdc5NFE66CCoDMuFJNMw1Wv88uxc095Y/0KH
         vCOExFa4IVh8KEEb1JQjd5dlWiWXczo0HeCmq7UHfRjy6bWPXAPAFni3fMU0f7rZI80U
         CheS23whm6ixK2XzrpWonfAGhrrD3xNPmhTTrkPxlAspfY0g1iU5Dw06agLNA0Z6CpoV
         zNCSt/uG8qryGfxSv/HV6wJ8oR8gTFDAdNjh2WzGlcRVUWoE6K3xEQzYZrDWo/MN6gJP
         BfvH/A2GqSklhGoN42dezSouFB+8OZQFQG5wRa4vl6CdvmvLhzFMuVKPumOeEzP+HBkN
         hu3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=trSh2BL9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d16si252404otu.4.2021.08.17.16.23.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 16:23:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 66EE760FD7;
	Tue, 17 Aug 2021 23:23:43 +0000 (UTC)
Subject: Re: [PATCH] kbuild: Enable -Wimplicit-fallthrough for clang 14.0.0+
To: Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Philip Li <philip.li@intel.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-hardening@vger.kernel.org
References: <20210817005624.1455428-1-nathan@kernel.org>
 <80fa539a-b767-76ed-dafa-4d8d1a6b063e@kernel.org>
 <CAHk-=wgFXOf9OUh3+vmWjhp1PC47RVsUkL0NszBxSWhbGzx4tw@mail.gmail.com>
 <5c856f36-69a7-e274-f72a-c3aef195adeb@kernel.org>
 <202108171056.EDCE562@keescook>
 <3f28b45e-e725-8b75-042a-d34d90c56361@kernel.org>
 <CAK7LNAQFgYgavTP2ZG9Y16XBVdPuJ98J_Ty1OrQy1GXHq6JjQQ@mail.gmail.com>
 <71d76c41-7f9b-6d60-ba4f-0cd84596b457@embeddedor.com>
 <202108171602.159EB2C7EA@keescook>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <72ae69b4-6069-ade5-a12b-8ee0435f803a@kernel.org>
Date: Tue, 17 Aug 2021 16:23:41 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <202108171602.159EB2C7EA@keescook>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=trSh2BL9;       spf=pass
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

On 8/17/2021 4:06 PM, Kees Cook wrote:
> On Tue, Aug 17, 2021 at 04:33:25PM -0500, Gustavo A. R. Silva wrote:
>>
>>
>> On 8/17/21 16:17, Masahiro Yamada wrote:
>>> On Wed, Aug 18, 2021 at 3:25 AM Nathan Chancellor <nathan@kernel.org> wrote:
>>>>
>>>> On 8/17/2021 11:03 AM, Kees Cook wrote:
>>>>> On Mon, Aug 16, 2021 at 09:55:28PM -0700, Nathan Chancellor wrote:
>>>>>> If you/Gustavo would prefer, I can upgrade that check to
>>>>>>
>>>>>> ifneq ($(call cc-option, -Wunreachable-code-fallthrough),)
>>>>>>
>>>>>> I was just trying to save a call to the compiler, as that is more expensive
>>>>>> than a shell test call.
>>>>>
>>>>> I prefer the option test -- this means no changes are needed on the
>>>>> kernel build side if it ever finds itself backported to earlier versions
>>>>> (and it handles the current case of "14" not meaning "absolute latest").
>>>>>
>>>>> More specifically, I think you want this (untested):
>>>>
>>>> That should work but since -Wunreachable-code-fallthrough is off by
>>>> default, I did not really see a reason to include it in KBUILD_CFLAGS. I
>>>> do not have a strong opinion though, your version is smaller than mine
>>>> is so we can just go with that. I'll defer to Gustavo on it since he has
>>>> put in all of the work cleaning up the warnings.
>>>
>>>
>>>
>>> https://github.com/llvm/llvm-project/commit/9ed4a94d6451046a51ef393cd62f00710820a7e8
>>>
>>>     did two things:
>>>
>>>   (1) Change the -Wimplicit-fallthrough behavior so that it fits
>>>        to our use in the kernel
>>>
>>>   (2) Add a new option -Wunreachable-code-fallthrough
>>>        that works like the previous -Wimplicit-fallthrough of
>>>        Clang <= 13.0.0
>>>
>>>
>>> They are separate things.
>>>
>>> Checking the presence of -Wunreachable-code-fallthrough
>>> does not make sense since we are only interested in (1) here.
>>>
>>> So, checking the Clang version is sensible and matches
>>> the explanation in the comment block.
> 
> I thought one of the problems (which is quickly draining away) that
> needed to be solved here is that some Clang trunk builds (that report
> as version 14) don't yet have support for -Wunreachable-code-fallthrough
> since they aren't new enough.

Philip, how often is the kernel test robot's clang version rebuilt? 
Would it be possible to bump it to latest ToT or at least 
9ed4a94d6451046a51ef393cd62f00710820a7e8 so that we do not get bit by 
this warning when we go to enable this flag?

I do not know of any other CI aside from ours that is testing with tip 
of tree clang and ours should already have a clang that includes my 
patch since it comes from apt.llvm.org.

>>> # Warn about unmarked fall-throughs in switch statement.
>>> # Clang prior to 14.0.0 warned on unreachable fallthroughs with
>>> # -Wimplicit-fallthrough, which is unacceptable due to IS_ENABLED().
>>> # https://bugs.llvm.org/show_bug.cgi?id=51094
>>> ifeq ($(firstword $(sort $(CONFIG_CLANG_VERSION) 140000)),140000)
>>> KBUILD_CFLAGS += -Wimplicit-fallthrough
>>> endif

Very clever and nifty trick! I have verified that it works for clang 13 
and 14 along with a theoretical clang 15. Gustavo, feel free to stick a

Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>

if you so desire.

>>>
>>> The $(sort ...) is alphabetical sort, not numeric sort.
>>> It works for us because the minimum Clang version is 10.0.1
>>> (that is CONFIG_CLANG_VERSION is always 6-digit)
>>>
>>> It will break when Clang version 100.0.0 is released.
>>>
>>> But, before that, we will raise the minimum supported clang version,
>>> and this conditional will go away.
> 
> If a version test is preferred, cool; this is a nice trick. :)
> 
>> I like this. :)
>>
>> I'm going to make the 0-day robot test it in my tree, first.
> 
> Sounds good to me!
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/72ae69b4-6069-ade5-a12b-8ee0435f803a%40kernel.org.
