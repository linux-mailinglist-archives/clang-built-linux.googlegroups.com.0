Return-Path: <clang-built-linux+bncBC27X66SWQMBBDEQWX5AKGQEXEJVPSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 8195125816B
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 20:57:17 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id s1sf1396960uaq.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 11:57:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598900236; cv=pass;
        d=google.com; s=arc-20160816;
        b=o2a3i9qIA6UFi85WTsmnYjWXZPcFlQBa3CUqBiPQx/juDJUkOTkKzBZw9NE3URIcEd
         G5HzL/IJ7Hf3Yiz6O+qkqXutR1J2cZmFedEZrwnAdm6aq2lwRnamIL+ZVpDoUJidVP/s
         RRXrlJu++cnod/Uzkz02SFS1e6/szRSIIgje2rjm8KiuKYYPEvweQPlpDjgKHj3agPMT
         8paS0AaoEXLtYSUYcHO4iViL2zadV1xI6CQ9kCrK8M0Ykeovpzm4gcCDGMlRun+ABrui
         TTEl9b6IvhcfgvKuEJuKJR1ALjNsgnlSnCvnoTfB1bTJFnLJ67m6//MCA9RpfitD2S9Q
         6wSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=2F4TQ7INBPhQaE0xFKerVUEXZdmbXIe5ALODg8P1OxA=;
        b=L1vmfu9vYsikMkZozcvCOnMM9SkZMONXtHk3vwd+v8UEEuxuOE5hOIWWw0SBfxHObO
         4eKtCP90EVqht+uP2wBu947gWXfLQ2wYiEAtMLodLrJE5pSdcoFDxlZE0xX6kPereNw4
         2UM/91kfsLA+7zjNzmmhgJe7X7IgQvKuShiiw11oGDKUFoc6a+xpCEQNLPGmi+io1g6b
         WYAKaPYF5SCXqnBJdNjgJ8zvh7OAZhB4GROvsfaB6IbA7oHHSoWGraGGkQSGFVE0xBEv
         NKMPMdxjJ+DRgXDx9TG3e1pMebXg6+d+HABAmaYGG0BQMoK1ak4bbna6YJB7uyDKRypt
         G1gA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Bz2GaGLX;
       spf=pass (google.com: domain of trix@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2F4TQ7INBPhQaE0xFKerVUEXZdmbXIe5ALODg8P1OxA=;
        b=JDDbMllQg0mCuxfkZo4ESiWDkaKeSwYTuBHDRv27kphbyZLchqMVDxiF/u2czBSCAf
         0Fyz/DXmjUP91eeCGezNepAo5KauXeUEKxo9C/aJ++BocF8Paal+O7z/hnZoTPBiF90h
         B61AXCa+5GVqbXRqbEyUan83gbDEAr/+Dw4wJzzr70TkVFf6clfbudzn3oFKPitjiSaK
         9SS6swaPZfRH+R7m37IardaZ+v7/roRLAOEDr4mHeROLxXGf3E5F8yd1qhNun1dZ06fD
         v2Y8XSN0749Oy1ITf+RwpWyvglSWhtTOnImK7tDkIr5U32SBudaH8eDdT4cdxIYf9IbF
         YYfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2F4TQ7INBPhQaE0xFKerVUEXZdmbXIe5ALODg8P1OxA=;
        b=gLKZrJULxb9xnj090xijnmFHvVNSrqOxSNDPqS5ESXl27t0tjreKDTicdUjyofuwYH
         chkakHnKMAsGclDnPElBlo7Yd7PaMvx+BzUCB7267QQ8eMaqDyft9OOhGmivVDF2048T
         rfpsWadIgoGTUBaXgAvCyB2HfwiIZD7V6SvDXJKxT9MaGr64IWoDXBs9EZTFRO3rCUQN
         NiV0gEpj103YOSqmLjp9tB1CP/RJj137zJjxzODwg2Worux3jXLQa822Ubdfy5L4jbhH
         SsEaSZ7R4id4MfjINThgL/s5NsyDXWnrmaf587u8t7/NB38/QdwULYxN4W8f7bTDacOy
         r5QQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fARtckGRJ5p3kLy7r325empcxThofu8qpnV3+8iW4DlET2FQs
	bzVhJcN90ZnDqkshebJlYoU=
X-Google-Smtp-Source: ABdhPJxTVCKOwbg1bp5PM+BaB0qfhq+6W5SyZETzTjGh4aPG+eyzXFmS9V73xSj3S3saDtuoh5WV8Q==
X-Received: by 2002:a67:e315:: with SMTP id j21mr2400935vsf.140.1598900236584;
        Mon, 31 Aug 2020 11:57:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:5e47:: with SMTP id s68ls874455vsb.1.gmail; Mon, 31 Aug
 2020 11:57:16 -0700 (PDT)
X-Received: by 2002:a67:b408:: with SMTP id x8mr2387901vsl.47.1598900236160;
        Mon, 31 Aug 2020 11:57:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598900236; cv=none;
        d=google.com; s=arc-20160816;
        b=Cv/u2s01gO7NT2cpaTYn11Fn/zWq3Fc1O98AVfcMSQCKxf87weQptb6H2iisYO/n1U
         loVVzCOIDA2+EnYuOR/jZ5U6AIWT8HkM/XUt9asoea+Nlzc20HGx0AWvIgsKXqGgVVzJ
         fGEEg/2H+cyokrTrE8A4ZgQcgbUBGOuRxLLvVjO9WyMMAhQd/2ZiGk75uAZAkPHFn9YB
         ymvMsAaRv7SMiKLdg/Bxg2XgMZukrSUna6KHI5Z09nFULtF5PjwHWhwCJt7RIorg7G5o
         ymYUKXpvDktL61U06kcmVYgceiyOEEuRo+ywIALdZ065Q+fa77+Y/q2+oEDixvR8Kg1k
         XZ6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=b9PG3irLIE6N/QMI1mVLnwUslXXwXq1frH2lpMwMGik=;
        b=HEFDqGIDn0pcaSrid0Z/QTMJawuZaZbVEuvOG6+tQwHizRa8avuiF4KkCuOM0VDYbZ
         2igAFohtEk3w85x5FoowW3vqbgM7zV3ET3b4h0VBtaVI2TijOrgmnW8stA8lJtrW45sS
         Mdy2Nqa1sBngb2K7i7Xo8agFDHa+WOJkSADd8AQz4qrgFs1sFxrVaTbrHxeBj1eeZJcQ
         1uxW1XhpbKauow+/GZfAJSsQOTa0bmWHFyJXcbQDZhymIEYYKp0nlDRVghw2mP7iW8ub
         wt7xM7GZ8giJRVOD3b0pL9+6pWXJOnoufX35Ok8tgs7XN9vRXcDr8UMXlZz8LSIJswYd
         2XHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Bz2GaGLX;
       spf=pass (google.com: domain of trix@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id u19si201504vsl.0.2020.08.31.11.57.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Aug 2020 11:57:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-334-cVCrAwhVOzKFP6J4-XV80g-1; Mon, 31 Aug 2020 14:57:11 -0400
X-MC-Unique: cVCrAwhVOzKFP6J4-XV80g-1
Received: by mail-il1-f197.google.com with SMTP id q19so5842263ilt.13
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 11:57:11 -0700 (PDT)
X-Received: by 2002:a92:c9ca:: with SMTP id k10mr2660994ilq.81.1598900229614;
        Mon, 31 Aug 2020 11:57:09 -0700 (PDT)
X-Received: by 2002:a92:c9ca:: with SMTP id k10mr2660958ilq.81.1598900229155;
        Mon, 31 Aug 2020 11:57:09 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id i144sm4320996ioa.55.2020.08.31.11.57.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 11:57:08 -0700 (PDT)
Subject: Re: [PATCH] soundwire: fix error handling
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Vinod Koul <vkoul@kernel.org>, yung-chuan.liao@linux.intel.com,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Sanyog Kale <sanyog.r.kale@intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>, shreyas.nc@intel.com,
 alsa-devel@alsa-project.org, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20200829153515.3840-1-trix@redhat.com>
 <CAKwvOd=+X2AakX3kTYCvyug-MK_Y+atDbkDSRxA0pUfOatQ3mA@mail.gmail.com>
 <CAKwvOdnn6eMqJsL=aJ8n5dWWoHjXUL0LBSyVwZPGCKpkBSLHXA@mail.gmail.com>
 <5f9c8819-cd0f-6fb9-1b0f-b34f390ae65e@redhat.com>
 <CAKwvOd=D=LWeSGYekOc9qs_aVOD_jpM2DVZO7=n_2L75Ad3Nxg@mail.gmail.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <5075093a-0853-8030-1cbd-42a051ca3651@redhat.com>
Date: Mon, 31 Aug 2020 11:57:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=D=LWeSGYekOc9qs_aVOD_jpM2DVZO7=n_2L75Ad3Nxg@mail.gmail.com>
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Bz2GaGLX;
       spf=pass (google.com: domain of trix@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
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


On 8/31/20 11:39 AM, Nick Desaulniers wrote:
> On Mon, Aug 31, 2020 at 11:20 AM Tom Rix <trix@redhat.com> wrote:
>>
>> On 8/31/20 10:48 AM, Nick Desaulniers wrote:
>>> On Mon, Aug 31, 2020 at 10:47 AM Nick Desaulniers
>>> <ndesaulniers@google.com> wrote:
>>>> On Sat, Aug 29, 2020 at 8:35 AM <trix@redhat.com> wrote:
>>>>> From: Tom Rix <trix@redhat.com>
>>>>>
>>>>> clang static analysis flags this problem
>>> Also, Tom, please use ./scripts/get_maintainer.pl on your patches to
>>> CC our mailing list; clang-built-linux@googlegroups.com.
>> gcc is still doing the building, so it this appropriate ?
>>
>> Asking because i have been sed-ing clang-build-linux out.
> ah, right, you can use `--use-cc=clang` for analyses of builds with
> clang.  It doesn't hurt to include our mailing list, since we'd like
> to know if issues get reported with the analyzer itself.

Ok, i'll include it.

The only real issue so far has been https://reviews.llvm.org/D83984

which fixes reporting on a couple of files.

Tom

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5075093a-0853-8030-1cbd-42a051ca3651%40redhat.com.
