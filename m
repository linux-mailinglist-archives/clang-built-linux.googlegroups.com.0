Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3GF72EQMGQECXD5FYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 85153409CBB
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 21:13:49 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id i7-20020a9d6507000000b0051c10643794sf8224985otl.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 12:13:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631560428; cv=pass;
        d=google.com; s=arc-20160816;
        b=LiYm8V6DJTss7xZNX1Mhj6CamrtiSaj/XHk+WzLgnGuifQ4pwU4bQat/6IcZK9uBs5
         z9VrFi1dmsV0aDOHgRzq0HvhcSHJ02YyCSP3h8QARFNQ+2Co+7b4AGLYth51LPOmi6bM
         b8i39oNez8zItU2SYmkVeq0GAH89js5NzWGXGFqwDF/pqJyGcZLufaAzi2hNZ2t/xfLW
         o9nwnFw0wze/+TZ9bwGkEoSx5rrFLPOd5jy0Qdek73pnjaMvIcfN5/ygnPA+Y+9A/XEw
         67fRbdRbpO9an9Guhs4d8nny27vtEIVIgCLgFsmczeCJMZTZzD1/liSW1WLRmoIlHxEw
         JpIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=mJSuvJzNQs0YPO2NG9Ep2W8pRpLlmLLMsB7VV/uLJzk=;
        b=tRcbwrzKi5Dz7RGaqSAcr8d4yo9/nmGS7zXdr76YsDOUJcZt68RM7WDlqzasV4ULF8
         Ktt140xrdWqDTQMfzWAITp0OazTs+pxas+pR/xX+PKWyCohUW487LtuohLuxfZLD0Aej
         gP1mHarRN7BxUL6PRuQf4dXmutKbEDTXRc1WL8aSS+SpuzTDU1xvc5w8IWmAVh69k6kA
         3F5P2AZlYQIo8tnicOIqnQyqE/WccpoLuJnGjl8E/3wy67rJBLGyShAvEUdMsEejH/eG
         3qu3VgvfILR7qcvoHZMbvdkf9DOV6rxu1K7FyoakzukN3AFX5b7qqZyawzBP5kwu8dzu
         bSKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mIkxzX47;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mJSuvJzNQs0YPO2NG9Ep2W8pRpLlmLLMsB7VV/uLJzk=;
        b=BOxGPkoZd0El5mYFNXNAbtUwi4j9zIiVwX31nPKZeLxFKIjnHFkyg5MfjwZiQlnRj/
         XACi0CMhnzXkymOVLXGAvsJ4DUrUc9CgP3jJXETsqnlAPCx8hkjA9keqa2A0+xtBOP0T
         uEQ1Ou20Kj8EQUsPgH8dj/GeUuQF++sA9zxwZqDgiMlaKddHt9oyKQZTu7b3omG+Hckg
         u+pDkowLhiTOPfKpJIl/F6BDXVLlLd3dTV3EwzArrLLW66AT31x10DW7W2rF5c8+T4n4
         pB+tgDCP2qGVdjZF+JiA2CebvUx2gRVgRu4H3eQF0K4kB6tHTZJNtal5ZtAoXk7wNBKo
         rs2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mJSuvJzNQs0YPO2NG9Ep2W8pRpLlmLLMsB7VV/uLJzk=;
        b=WCpn0jl9s33znKIpNVnvh/8U9YnBbMggJ2BTa0ND8E6vC6upD/gFtYzKHWA4xtK+2+
         /Po4bsdVwu8GVNsHLlhXM4DExM64/mrhRv2FhW1ms5VWSnAYuVpKBMQM1WpRZXX7k0E0
         KkHg9tCSqersWDqbNNlL59E4mveshF9VuG6aQAcdiGWd3NbQCDknHaxQ4CPLNqVSAxe6
         +kSbCFJ00LEfkqNhojG/GiY8qIHEqKrRtWX+CVlYa9dAkkwlwArIkZt8MykIkv15Rn6h
         bNy0fBecsqJLCHRcMJAmqmwpCkHJvUsqPaV532g5rHbYKPmvrn35NqzYsbkrL+UZWleU
         wSLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Czr+QES3KVgmbtCFGYQdL3qbvhwl6s6mOFyyCcoxGtorcWYQd
	7fms2hFzv/rYmbKby+xiiaU=
X-Google-Smtp-Source: ABdhPJxSmojTgvbTYTbVlUh50OfIxogpENqvhQFtVZE8BVjqZtdJN0SeI/NFH7/KsChcIg0SoLYScA==
X-Received: by 2002:aca:606:: with SMTP id 6mr9296404oig.82.1631560428553;
        Mon, 13 Sep 2021 12:13:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:62c9:: with SMTP id z9ls2200586otk.6.gmail; Mon, 13 Sep
 2021 12:13:48 -0700 (PDT)
X-Received: by 2002:a05:6830:24b8:: with SMTP id v24mr11255529ots.100.1631560428216;
        Mon, 13 Sep 2021 12:13:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631560428; cv=none;
        d=google.com; s=arc-20160816;
        b=bO14Tqn0NjX9B4OqjTneFldRZ1NkSA16qr2L8Ne7H3ghGd3A7ivfKrdEVPj9gg5QQc
         OWSaixnRigPJZN72vTn7ei/bXVQrXYDg70GRQvlcVfe829RJf+3H17wB21TCnWd2qTS2
         mtmrHP8DGocr9+1hftkx+4FrF1yGQ+PLUYgNvfPikRjkKlEbD+67r43Kt6/212g8+kqJ
         3ZUvWlkVEzKsny25EQUf+NMYHjQ+mUKvQfEn3CBIMRV5LLvYDQneZThdYbr/CmUKe4wv
         e3pshyoNE7ZNJftlkaOZia6CVEQ0gN2xSvG11zFRFSOz/H4wnHn2uXsgF1N/uGpdRLws
         52bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Ab1WFZJmYikJoccQlR3NxFKWDUFBnjkVqWNG5aDGudM=;
        b=oJWkVzSj7S/t1plcIbWdVcBRVdJ+nmwH4xgG5umBV3A3cO8ah9BnUv3+j1OIfApO91
         eAvnG0ZjRm6OZDqCKmsJkpbdG9L8rxpx2eqL5is/Q7PAnPhwL5HFjG+LtO0DW9lN5Fn3
         uEXHfNkUNfsqj91yoEAmnNeZA1ftY6GAEesCiJR9sl5t2Jqodj99NW6+8X0wygr8Y9ZA
         4YxSY3XbJ+IyGcpTX28xUhfSLqaVmyyFYDpDaN1tweIS+sJQpSMHy+AiYp0r7rj/KYKL
         X6iRT4jWcCETsG9YQXBnNsu+JabFMg1GV3lHfYKfYX6YPrfqoSBnwe3XzIFVdSc+XuHl
         sjOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mIkxzX47;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b1si956278ooe.0.2021.09.13.12.13.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Sep 2021 12:13:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id ED6E3610D2;
	Mon, 13 Sep 2021 19:13:46 +0000 (UTC)
Subject: Re: drivers/infiniband/hw/qib/qib_sysfs.c:413:1: error: static_assert
 expression is not an integral constant expression
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 kernel test robot <lkp@intel.com>, llvm@lists.linux.dev,
 kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <202109112002.NZceUwiC-lkp@intel.com>
 <20210913165317.GX2505917@nvidia.com>
 <CAKwvOdnGaVb1XGwYpNK_3zAEyZ0JC1SDjC1UzzFEH=d_Mdi7Fw@mail.gmail.com>
 <20210913183813.GY2505917@nvidia.com> <YT+eJY4JoobVsKWu@archlinux-ax161>
 <20210913190246.GA4065468@nvidia.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <0158604c-8777-51c8-2cb5-b7f016335786@kernel.org>
Date: Mon, 13 Sep 2021 12:13:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210913190246.GA4065468@nvidia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mIkxzX47;       spf=pass
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

On 9/13/2021 12:02 PM, Jason Gunthorpe wrote:
> On Mon, Sep 13, 2021 at 11:53:25AM -0700, Nathan Chancellor wrote:
>> On Mon, Sep 13, 2021 at 03:38:13PM -0300, Jason Gunthorpe wrote:
>>> On Mon, Sep 13, 2021 at 10:00:02AM -0700, Nick Desaulniers wrote:
>>>
>>>>> This macro would like to know that the passed in member name has a u64
>>>>> type, all the things I've come up with fail on clang - but many work
>>>>> fine on gcc. Frankly I think this case is a clang bug myself..
>>>>
>>>> Perhaps, though this assertion looks a bit like offsetof() to me. I
>>>> wonder if that can help here?
>>>
>>> The assertion would logically like to be this:
>>>
>>>           static_assert(typecheck(((struct qib_port *)0)->N, u64))
>>
>> This works for me with both GCC and clang, if that is acceptable to you?
>> It fails if you change one of the variables to 'u32'.
> 
> Yes, thanks. Can't say I've even heard of __same_type before :\ would
> be nice if this was in typecheck.h along with the other variations of
> the same idea. Presumably it is a little bit different from those
> somehow?

Good question... commit d2c123c27db8 ("module_param: add __same_type 
convenience wrapper for __builtin_types_compatible_p") introduced it so 
that it could be used in commit fddd52012295 ("module_param: allow 
'bool' module_params to be bool, not just int."); I am guessing that 
typecheck() could not be used in those cases. Perhaps all instances of 
typecheck() could be converted to __same_type()?

Do you want me to send a formal patch for that diff?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0158604c-8777-51c8-2cb5-b7f016335786%40kernel.org.
