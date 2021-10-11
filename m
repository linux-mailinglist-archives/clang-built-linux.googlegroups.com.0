Return-Path: <clang-built-linux+bncBDC2RCVE24NRB7MWSKFQMGQEHNIR4KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 276E542974A
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Oct 2021 21:07:43 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id c5-20020ab06945000000b002ca67b00decsf3847165uas.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Oct 2021 12:07:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633979262; cv=pass;
        d=google.com; s=arc-20160816;
        b=TYnw/ErmOFSdoXJf0YyrvRJlNWEJmq0GDp/MBVLIlaY38nmF9dkotHEl8E9N689q0i
         dhvQAVcOKLpUP3lWK7XFp9j00Zpj0fhM887mhlnx+TJxykw3o9ZwmbyoOkSt4lJJ0zDe
         ncsMDJVZKQNI3+jRftVwXT+xTPGagxjC59XOKDDM8FGfotjizqLK5o3bWuGRIMfTVc6F
         eFLdOghy8GoX1Cw55IvuF2Bnj9Fjlc5u3MRZZooKypZiovO5PblVIRy9Xb0j2ETxxLi6
         Dljh2cudBtB0vdKztxcUV/Ud8gCyDkeBbQD0/f/NPYfTh1QQKbzku2yUNlk+N0mH8f9y
         TrMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=59UoAEvexoRe6xjWNOj3HZm2tQEvQPG9+tbjRKAmqHI=;
        b=MJ3DvAr41YA1z/ghzKmFuVAjLt5FaNTZJxr9sNtp1RXiLf2ZVyBjRi8DRNLpvkirMR
         8yfU/siy0cSPIndpGfWmM2wXhXM1uODXMtynTk3PG8VAZS1pY+q6reaHxqBKWV+zcuBQ
         D7y4oHdaEI+ZG3Oetv/SVEeiyfZOoxYA6U9HmCcyOr1xt4co7/PDJbICi8IHdEZTzwaV
         g46vthlTJUmZSd+WCzPF/3ZNRTFT8uSV5QJGYoE8lhYxVFyCLKKaIIbuM0du8XfFzZSr
         vIjtJ6sfvhso197LCz6ouhFkFnlyVEy7qPaaFVnLxIeRUXDPjVtI9WoU76uLOTdyarJL
         QpXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.42 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=59UoAEvexoRe6xjWNOj3HZm2tQEvQPG9+tbjRKAmqHI=;
        b=eLLowvgKyEKgmYGSpnmYZmNO1wB9XCjHvE1hOLa7Eva7K5KtOxXmK4xG9jdxcii1r4
         Pyk7q0Q7t3JlS+qmVr/QfQV1ZgDqu3O6cNj53W/StdS8/VaHZAM1yDwPBJeUBvmAGyDg
         a52YPl/fim00qxz7wd6gB+LnDExICEU0dzqXjruYC9KNwc6pcv9xNOCmHvf4YT/QRjP/
         EaW9E0ib+MltFmFSm925hBanR9v6k6C5kUPSxkVwos7D63hP4PlG7IMbQe3fkYTxgxuh
         73Pe6R6/nAt9dUBJr6puNkwkyLtBZI8xiWgLzETqwJ4C/Lbi1/8X4TwVg9Q4VHmu3wL2
         QvHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=59UoAEvexoRe6xjWNOj3HZm2tQEvQPG9+tbjRKAmqHI=;
        b=QC0R6JDzWou08yxQI2yHXSTyrc5Y/AsPpqJbpWJbbI02OXUQRqecjiLKJsbiysJmjU
         MWcxiE574DGb+lE14ye7bmL/H/VrR0WiDYgbKd3/BIpsBsD3a2yLdLOq9i3TPQ3VLU3w
         ktveSijl+uYxM+heVJXXSfWfJoju90uTELwdK3n1yoO8usR4HawhdImmdaUWAsr2sJ1+
         i9eS41Bz33WQMA8N3kyu9/UnnIeUVPuir9hfaE7hRldo3hm2zhvFwTsClw7uG9qZehju
         jj1BrHLmn7qcK/DWVlJIUsCX8yoHQ/X20XqQ+FxPc35usPTQpAXF+6lMjNZUVwwHN5hL
         FuTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dgtftsp31L7oJCccUGkjeB+7IjC/JCnsmxA1ELpY3R8jhBnv8
	n/85cZ8j1Q2626X5E7i0eDM=
X-Google-Smtp-Source: ABdhPJwqVMWYAyJrYEceQc90IMyhcXqtoLlE7xEU4IMG07QmFNZKFqJzZJaixr3+Tfa7BDuhELJjPQ==
X-Received: by 2002:a05:6130:426:: with SMTP id ba38mr17753842uab.108.1633979261883;
        Mon, 11 Oct 2021 12:07:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2dd4:: with SMTP id t203ls1052864vkt.11.gmail; Mon, 11
 Oct 2021 12:07:41 -0700 (PDT)
X-Received: by 2002:a1f:6d81:: with SMTP id i123mr21932354vkc.18.1633979261428;
        Mon, 11 Oct 2021 12:07:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633979261; cv=none;
        d=google.com; s=arc-20160816;
        b=CmvGy8LWjkClQSAplZ9pBj5Rq0sS46yn0F2NrFx35UiY04JjDfvs2Y/asgISbdD5yX
         U8lCDqaG656TxZTB7CwDjU3Sbep0YtH73Jo4b8TnQRsA5px2upALL8EDiesC/CJi29Xe
         31VpxEpcmcejcjDkUpWIt5TcgGkyk0DMLcB9tVD79cMfs0iY/N0VjLZrkCBTke21ucWb
         7vc2MCX3NucCNT3hjyol5sf98VblpbRl9W2FE4NBbssIIg9Mje1NrsD233GmC4LPv64a
         usSR+tCQA46ZliSyVvEotiUwvzv38pi7c5quhPn9PWkBizoOxCp/cvwCqHwpi2a8T4uB
         WHzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=i9fEFXnLSOXJoaL/wmaO9WqK92hFmTWGhoax4Y87MSE=;
        b=UuXEXi/YjpQOhhf6hLD/8F+ucxLOejVmuUqaFa8IkqzaFN1VFEHzWoUvKpWdQZ4J2l
         UJGPTa4S+ZeemJLb15nDhSxkmJemMqTohH639pSpuNkHUPs+B32U1DV9ljN4OMQWn05Z
         yoSlDx9pRcm+phqdd5nVe4M44kiEKWKbqOB/lGNEZrDVvjARW+tHJHAWLEQDGPbqnT68
         ZzPxDTmmeTNwxROwmJ+yBUmSxWIjxy2Zvr/sFoMYMiqUMsFywbDIaFCgaMqVjtmMn4wP
         p5yrj7a5yBrCf0ojJIxpX/OS5srS/fae3Nqu4qyISINl+dmVRCXu5G9lhuvS9EyInutN
         04bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.42 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-42.freemail.mail.aliyun.com (out30-42.freemail.mail.aliyun.com. [115.124.30.42])
        by gmr-mx.google.com with ESMTPS id c19si139168uad.1.2021.10.11.12.07.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 12:07:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.42 as permitted sender) client-ip=115.124.30.42;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R171e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04400;MF=ashimida@linux.alibaba.com;NM=1;PH=DS;RN=29;SR=0;TI=SMTPD_---0UrVMcls_1633979251;
Received: from ashimida.local(mailfrom:ashimida@linux.alibaba.com fp:SMTPD_---0UrVMcls_1633979251)
          by smtp.aliyun-inc.com(127.0.0.1);
          Tue, 12 Oct 2021 03:07:35 +0800
Subject: Re: [PATCH] [PATCH V2]ARM64: SCS: Add gcc plugin to support Shadow
 Call Stack
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Kees Cook <keescook@chromium.org>, Nathan Chancellor <nathan@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 Sami Tolvanen <samitolvanen@google.com>, frederic@kernel.org,
 Mike Rapoport <rppt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 yifeifz2@illinois.edu, Steven Rostedt <rostedt@goodmis.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, andreyknvl@gmail.com,
 Colin King <colin.king@canonical.com>, Miguel Ojeda <ojeda@kernel.org>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Marco Elver <elver@google.com>, Arvind Sankar <nivedita@alum.mit.edu>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-hardening@vger.kernel.org,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <1633878992-32884-1-git-send-email-ashimida@linux.alibaba.com>
 <CANiq72nBqiyrcaW47ZW-6i7zJ6HrmjZWSOr==HkEuBR5rXmpdQ@mail.gmail.com>
 <a25b9286-fc1f-d398-150c-ce073eadc6c1@linux.alibaba.com>
 <CAKwvOd=D=UvGfHjEyeYPk3c=ksg9mF8nUX-9jyJhkX8QbugMSQ@mail.gmail.com>
From: Dan Li <ashimida@linux.alibaba.com>
Message-ID: <fefdacd0-787b-d03e-2ead-ac10641b4eb2@linux.alibaba.com>
Date: Tue, 12 Oct 2021 03:07:31 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=D=UvGfHjEyeYPk3c=ksg9mF8nUX-9jyJhkX8QbugMSQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: ashimida@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.42 as
 permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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



On 10/12/21 1:23 AM, Nick Desaulniers wrote:
> On Mon, Oct 11, 2021 at 8:42 AM Dan Li <ashimida@linux.alibaba.com> wrote:
>>
>>
>>
>> On 10/10/21 11:43 PM, Miguel Ojeda wrote:
>>> On Sun, Oct 10, 2021 at 5:16 PM Dan Li <ashimida@linux.alibaba.com> wrote:
>>>>
>>>> -         This option enables Clang's Shadow Call Stack, which uses a
>>>> -         shadow stack to protect function return addresses from being
>>>> -         overwritten by an attacker. More information can be found in
>>>> -         Clang's documentation:
>>>> +         This option enables Clang/GCC plugin's Shadow Call Stack, which
>>>> +         uses a shadow stack to protect function return addresses from
>>>> +         being overwritten by an attacker. More information can be found
>>>> +         in Clang's documentation:
>>>
>>> Perhaps it could be worded in a better way? It sounds like it is a
>>> custom plugin for Clang as well, e.g.:
>>>
>>>       This option enables Shadow Call Stack (in the case of GCC, as a plugin),
>>>
>>> Cheers,
>>> Miguel
>>>
>>
>> Thanks Miguel.
>>
>> How about writing like this:
>> This option enables Shadow Call Stack (supported as a compiler option in
>> the case of clang, supported as a plugin in the case of gcc), which uses
>> a shadow stack to ...
> 
> That sounds reasonable.
> 
> One question I have Dan, what is your sense for getting this feature
> landed upstream in GCC proper?  It's neat to be able to use plugins to
> support older versions of a compiler than when the feature initially
> lands; I was curious if you're working to submit this into GCC as
> well?  I didn't see anything in GCC's bug tracker for "shadow call
> stack," but maybe there's a different feature bug tracking this?
>

Thanks Nick.

The original intention of this plugin is to provide the customer's (bsp)
kernel with the ability to enable SCS protection under gcc. It's not
always feasible to recompile gcc or convince customers to switch to a
higher version, so I implemented this feature through a plugin. For bsp,
this method could reduce its use cost.

Because my main area of concern is kernel security, I first submitted
this plugin to the community.

I think [PATCH V2] can also be submitted to the gcc mainline. This is
my next plan, and I still need some time to reorganize it into the gcc
source code.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fefdacd0-787b-d03e-2ead-ac10641b4eb2%40linux.alibaba.com.
