Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7GJ6GEAMGQEPUFUE2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E1B3EF7A0
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 03:40:13 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id k18-20020a05620a1432b02903d293480ee4sf685374qkj.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 18:40:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629250812; cv=pass;
        d=google.com; s=arc-20160816;
        b=bYqpOuOv282K/Nbmzqn2hDLBO/SXojxBKvv2hulbxGDxvsh+JmM0ZCdRODXQjj0Ich
         K358AZEYZJM1uXIMXtzyWd0Txr8QNRtgBGysTpAJDiO9ZKyoz9yL48YbiyOsBG+8/S7V
         nDaJMHLfXe92UxL80w2CdBqkJx5ZmuTiLvvV/ZxXxQ69XSqfObuQh7ByKLXEfOL+6LUC
         Aw6zmVOVN1CIB1Rj4wUSSwqhWeKk+lFlSb1DQUB8AdloZolZqrmk4psbLwpBtO8MnyHT
         2dKEp3bNeOsy5QfZt+7aH9ZTObZnCtAVOnsq81i8g5ZCZfzp/wiQ25KTgODy3wDNsYhJ
         cJlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=MlP8gVWPN0NlxDddZ0+aOdQfEQtZD1arEnde9RBmQAk=;
        b=jZI17DREAOGv8/20MiPIOTOcVHh/993w4xTIRETjUgx4Vn/p/eOG1QOnlbTRSK8131
         YcVSz+aFLFol38cNvIiEIrXYdMBTZidekHtJqR8KNfJcdBXdlsxeTdV7MZ/bOqZbWlTn
         VYKcBrbuvxD12vk8K8ED7hTbnjw8W0u++9hCx1/SZ6x151/mw6D61Tobb2a/iDWLEP2k
         OAQgeYy8LMZ7RW0K8vr6K3yDqJ7zBz6XBEcnS1cdFOl6azB/rom1pMIMwxCVc7xVm5KH
         Abk9xZ9JdLQAop8HrFvoUHkaL+w0mZ7Msv5h9KXLL7Cs27JT9z3T38T2A0Fz+udgx9R9
         2spw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jBbiCeQh;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MlP8gVWPN0NlxDddZ0+aOdQfEQtZD1arEnde9RBmQAk=;
        b=j503qEd3HUcHUsC6E+FjmZ33pbBbxqdKU/Lf/K1ggcoIXgCMP7Ney1eFcDcZnWfUDu
         hY6BIIS8Z2v9B9VwwjWYzTg/y4laJf/L+5z1piXT1d7CWJE1nYLYRS1VyfMcTrmtb9dy
         xFhFBK3i5kx1+Rac3NYQ/z4HeHkMEcQsKy3hf37+GM0oBvk+E6gcpoZQ865L/uOnXyeX
         U5gPTGD3ifOsPZOk0kGH3XOHksPngp9mkgBWofO4R86ltspomhb0EW9XZKD7pUm0X5In
         o0ET9yofCVrZ63WA388xTsBqbqNn0ofMD3V/iIUKRcR6QX83IweS84/X2+mHb2N7IIbm
         82Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MlP8gVWPN0NlxDddZ0+aOdQfEQtZD1arEnde9RBmQAk=;
        b=UpETst6qcxJKFWkeP32E41PoXN/J+qIJyY6Wipvpn3z4jQnlhWoZt1i0RvXWxJcVb/
         /fQhdZ6Ei2bkt+4LvCRohdwxp66dHDXeMGJmb0GslWsnQAriUghJXFVfZF94UjjJ3f/7
         HH7lLd8vJ4As0BnDq7ne81Z2QApoUxhF3m/NXyLFrK+FFO9qc5s6tN94WZWhOYMy4D4s
         bkuhk/bdZD64rWIYalmIANSjsSCJUXCGFNChNkQQ8rGbPtTD0l8X0uS0rQ5uXDtdwWg7
         HLUOPpLbC5BdkKKqHL2bpGI8QUp6ux1+HwZUaJ7xMro0pnbnLl+AQLWBrtBDiLXpR4Z/
         sYCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wuRh80zt27MszcbQJkHFcliPKX1v8sTlB+jetwcBFPSdkXyOU
	1IDKd9nKwy6YR0jrEz/ObWc=
X-Google-Smtp-Source: ABdhPJzFeQgnwql2Jllx1iQ4Oscy4U2gA9Vb2pHFssmYEdF7LBezDF3aPKXTaI+4Fi9zVvjxJ62QJA==
X-Received: by 2002:a05:620a:7ef:: with SMTP id k15mr7088110qkk.464.1629250812641;
        Tue, 17 Aug 2021 18:40:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:20e5:: with SMTP id 5ls159712qvk.10.gmail; Tue, 17
 Aug 2021 18:40:12 -0700 (PDT)
X-Received: by 2002:ad4:5deb:: with SMTP id jn11mr6577203qvb.30.1629250812207;
        Tue, 17 Aug 2021 18:40:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629250812; cv=none;
        d=google.com; s=arc-20160816;
        b=Im6hjcEf3ceRqeY6G/VZb4gffVp5spjyLTTsu1+72i2qxBYvqGxE2MtHrJJOSsEbQw
         Ib6u/JysySz0ZfY3FFVz1MuFYIth7pznKVLao6lxf82JOnpPxIfZ7LGURPQ5/gwu5ST9
         JgUxHECJcpKyuwOfIbk+vUh6FohVNPne5lVXZf5NVxCwybC/XJgn18QkaNRE73msfMiW
         +H4JXtk/ILq1EOm0MugVQHqTXJsiEjz97w8yyGD0q4LXV6cuSOQRU/3enz9doCF7EPyp
         VNOhVf06gClycrsqUhkToK7YLwmISD/CrFlzicGyYWitFD08NAr1wSJA5gS/xmU01rM1
         q/zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=TLxv6qCmqOZCH/Mx259fMLG1HjMWvT9MWyVZJqSgCBA=;
        b=TzvmW2cKp0NovD1/VDCVII2l4s+evA2x/obIvCKk092WKXqDxi3IDeZNMW3jcPvGp4
         upPcbGCIimA47QiETk5lmfHx8g0QlUfhDqqN5wEeZ4tnoof/D+PyLS5m8FDmmV0GsjXq
         9BmicBacQaeuTzuWT1jXl27A64p5kCLznBpqwXV+Ow9p/SogPYR2ItOEl/P7rfpMx+YH
         QyObHH+XFVqBsvxizmmuo6ZRqUDJ3+udNZZRr8oxSii3dOH82K8tBB7xVoTxBVPY5ApF
         Nm5BFgcKFSbfUWr3PnnPa6ILUbJNN4bAgULdir2UuDheG/LBxP/cWrZQB01vlR2MDPzz
         Oq5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jBbiCeQh;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n78si222075qkn.1.2021.08.17.18.40.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 18:40:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 983DE61056;
	Wed, 18 Aug 2021 01:40:10 +0000 (UTC)
Subject: Re: [PATCH 4/7] arc: replace cc-option-yn uses with cc-option
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com, Vineet Gupta <vgupta@kernel.org>,
 linux-snps-arc@lists.infradead.org
References: <20210817002109.2736222-1-ndesaulniers@google.com>
 <20210817002109.2736222-5-ndesaulniers@google.com>
 <bc8cf0be-9e51-e769-0685-2594802eead0@kernel.org>
 <CAKwvOdkO3ax7gN-n5OJO7-320BVK+B-JDs0v=3vZs9fPezwjDg@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <8b9bf97a-8f6f-80b9-3bab-32bb525adf9e@kernel.org>
Date: Tue, 17 Aug 2021 18:40:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkO3ax7gN-n5OJO7-320BVK+B-JDs0v=3vZs9fPezwjDg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jBbiCeQh;       spf=pass
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



On 8/17/2021 11:07 AM, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Mon, Aug 16, 2021 at 7:05 PM Nathan Chancellor <nathan@kernel.org> wrote:
>>
>> On 8/16/2021 5:21 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
>>> cc-option-yn can be replaced with cc-option. ie.
>>> Checking for support:
>>> ifeq ($(call cc-option-yn,$(FLAG)),y)
>>> becomes:
>>> ifneq ($(call cc-option,$(FLAG)),)
>>>
>>> Checking for lack of support:
>>> ifeq ($(call cc-option-yn,$(FLAG)),n)
>>> becomes:
>>> ifeq ($(call cc-option,$(FLAG)),)
>>>
>>> This allows us to pursue removing cc-option-yn.
>>>
>>> Cc: Vineet Gupta <vgupta@kernel.org>
>>> Cc: linux-snps-arc@lists.infradead.org
>>> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>>> ---
>>>    arch/arc/Makefile | 3 +--
>>>    1 file changed, 1 insertion(+), 2 deletions(-)
>>>
>>> diff --git a/arch/arc/Makefile b/arch/arc/Makefile
>>> index c0d87ac2e221..8782a03f24a8 100644
>>> --- a/arch/arc/Makefile
>>> +++ b/arch/arc/Makefile
>>> @@ -18,8 +18,7 @@ ifeq ($(CONFIG_ARC_TUNE_MCPU),"")
>>>    cflags-y                            += $(tune-mcpu-def-y)
>>>    else
>>>    tune-mcpu                           := $(shell echo $(CONFIG_ARC_TUNE_MCPU))
>>> -tune-mcpu-ok                                 := $(call cc-option-yn, $(tune-mcpu))
>>> -ifeq ($(tune-mcpu-ok),y)
>>> +ifneq ($(call cc-option,$(tune-mcpu)),)
>>>    cflags-y                            += $(tune-mcpu)
>>
>> Any reason not to just turn this into
>>
>> cflags-y += $(call cc-option,$(tune-mcpu))
>>
>> ?
> 
> Yes, you'll need to pull up the source; the diff doesn't provide
> enough context. tune-mcpu is used in the body of the else branch
> hinted at by the diff. PTAL

Ah, fair enough. The warning is a little unconventional but oh well :)

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

>>
>> If $(tune-mcpu) is empty or invalid, nothing will be added to cflags-y.
>>
>>>    else
>>>    # The flag provided by 'CONFIG_ARC_TUNE_MCPU' option isn't known by this compiler
>>>
> 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8b9bf97a-8f6f-80b9-3bab-32bb525adf9e%40kernel.org.
