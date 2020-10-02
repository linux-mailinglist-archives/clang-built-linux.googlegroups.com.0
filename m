Return-Path: <clang-built-linux+bncBDV2D5O34IDRB5OK3X5QKGQEGBV6U7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F2E281965
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Oct 2020 19:37:59 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id h191sf1586428qke.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 10:37:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601660278; cv=pass;
        d=google.com; s=arc-20160816;
        b=oWV8bAJ4l4TFC6IXQ0oFW8OZ0T+LY66AIOTDRE5uMWOR1Qy2Vp64doFoZMWBZn8jho
         3TdqmICO8sHtA1HIiaMIEHXrEk8uSnhDhbOWgfuc6+Fz64PWfYk2C7LLbmsuvId20DBr
         Z7RBixDVqDY3o4tnFWMTvcznQ+7fMGb2rFJ0ZRc+Cr/lUjK4MRkjQMiADH5BAuE3HjyG
         aX+pHUxrYSyi2ul9D+8wn9Cx0YhevcrWdKbB5AdXXdyjjAk4pqC7P614fIVHJMvgNPLM
         dRt8sNOIoZfmXSNUFw1rQ7n+aw+9q+2tBdBuMFbiFnvAuFTMWIWhiKWs7DOFqb53NtVT
         LJKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=wFsVSfEKgadvNOXESTETJPKKP11vvHfN83tCq//mgyU=;
        b=vZHfbNzX0XSSkkK5XnTd18XrZuCi4QN85fpU9mIOXlUN90dA0grkt9H+rloz/c2CV5
         r6vn+N2RSHiLuBW8clNqgn31EeuzQe2re6YAwpvuxXNARDwxtqLqlYhLf+X8utut+L1T
         rt1VT1wNBB02V89OMUYehxqsvL3lkrjfUTXVA5MyarMoZFSwdvg2FwaGBJbDTsr6IxHN
         3jiAlPXMDVRf9v5iuaNWNiagCISbphhysuIfHe4u/ntnEZgBMG3utTYb4IiSf9km/2Ff
         9iKQ0XcQJCQp/qxCgt1yytYcNJfJu5bL1UwZfYoBG3Pl5jT0uWLrq3cbH2J4elV/xJMy
         zJKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=0v7YjrRv;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wFsVSfEKgadvNOXESTETJPKKP11vvHfN83tCq//mgyU=;
        b=tOjrnDrez8WVxtsXaolshqK5uunM5VMaLoOpOVZkD8C6V5O5D/vZkr6olCvDdKV4wN
         m9N5ulfmdGJlT4Ua8+/GF29HAEepAnOK83sSwSn8cDflNfE72bUgGe18+mwWg7Owba4/
         MsrEEnnnvcLNqjMlDe67zPrUyzDx9rBqzEwDxmxPMsAQ3y+Hq8VqFyPaGC7ZSj33BeVz
         pXRB8HdblMAYkTMlRwAEW/+SIMqmeXrViSZWKliuAzurjWHIIa8Mj0DqA1xu2t5dCYWa
         ZRnBPNwxlDkmrTCqeLPFqeWjUiN5QpVAHJ7nRLRNCS1pROleHLhTTcbMz9q0cVLIPPlY
         EOdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wFsVSfEKgadvNOXESTETJPKKP11vvHfN83tCq//mgyU=;
        b=ITHfSPEVPjxcRjLJ4hH1zE2+SRzW/henTq2T//U9SIZ4622TUoVGsjc5SMs6g/U0NG
         NpDZcGlXOi4dG7sHzsEXIIcIc643kArlmt4ohSgEmMMYXuuZxIx0H34zbvpHMe2jWdbT
         duxriKH+r5x585oEeIquf8CApxCZTbEGyEFNVNuNYn98Fryr7rzJ44nsDjZrbmM+rbiw
         Ly+0uP9NdW1zzye01V3oHrZ2nSbTeUr7FSnYG5ZWIM0AjujxN+dmRN6M2t19WEt2ImHE
         Pkwq+OwRv5ViHBWf3R8c2DQvbWpSU/MEXrEljt/pk+y7X9DM9wAthhOJgueNP0OCm9tx
         t5hQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533McU1joCRtW8flprpQTP/KZxLBGwFNdsyWf2JoQRUdIy9nwTm5
	fSYyIG6TKZY7U4vIeWjjWR0=
X-Google-Smtp-Source: ABdhPJypRSG5V1FEA1/cy5GI5b+ujqYM/UWrFn6t4AdUc2zi+TVPsr1bvPPHIlA2VI3UeOqvgK7VXQ==
X-Received: by 2002:a05:6214:1784:: with SMTP id ct4mr3224791qvb.10.1601660278053;
        Fri, 02 Oct 2020 10:37:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:136e:: with SMTP id c14ls550345qvw.10.gmail; Fri,
 02 Oct 2020 10:37:57 -0700 (PDT)
X-Received: by 2002:a0c:f651:: with SMTP id s17mr3200441qvm.36.1601660277607;
        Fri, 02 Oct 2020 10:37:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601660277; cv=none;
        d=google.com; s=arc-20160816;
        b=yX6cf885+NeiRLRePYYxr8Sm2C6NaRnySF9Rk02Bmw8fY1Lg4RBh/LzhI7l5vru812
         1+cglYIl4ZycQ76ym45yN6/B4cP6UqqAyEETOIcUI0NMblpWu1AcWnFn4+vvBklzo50J
         KmegbaR+7NFFg8ObVaPxT3wMCIt3nGHQaKbF90VFpzNv65IaKcIgIiTRs+dF3+EzqwBz
         6g5saG1447X9PzCPVf0rOgPVgeWdqxRLwlSCT8h47awCo7mvfXk+gnytKvZ/MwcnF/Kj
         /vPdplvJuGwUe2/423L2yrGEbcy0b5Jt7fLk0Lju9L1sCLjgMFwQeQJQZX4SpW3YE5oB
         BmCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=to+vK9pP2dLguamTHaczaBybq3kiyFTh/VeqEu6seGE=;
        b=xxYti3YttP6EvRkPHaqJdJzV0iPSORPpPMfrp6KdjmMZXmb/ZIkGW0hfb/R/HrQSWv
         77Xb/0whlTG3J9z6oy9NKEVr0WIRT/XbWFmPbem+k+KIrFoT9deAZLT8lvEhLrAgSzXC
         GkdkZi3TiCfg2N9iNbuLUdRu1GzsfPlLMCO1KY0+525ijY78LICwrafxTHy9/eptAhgm
         dR25DO3PZhLJsuZ++tVE8FH9n85bGy4oafresEsUDBoGdZxxrt+hPf5eE5r8eT6ozFch
         pYCzWYGqMq8m0cTu4seLdvljIKv3AP+sANtGukZaDsVJkF60/LPUBezeEailSjdVkeo0
         8yYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=0v7YjrRv;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id z6si106910qkj.6.2020.10.02.10.37.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 10:37:57 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0::2c9a]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kOP0A-0005nF-Pl; Fri, 02 Oct 2020 17:37:51 +0000
Subject: Re: linux tooling mailing list
To: Segher Boessenkool <segher@kernel.crashing.org>,
 Sedat Dilek <sedat.dilek@gmail.com>
Cc: David Miller <davem@davemloft.net>,
 Nick Desaulniers <ndesaulniers@google.com>, nickc@redhat.com,
 maskray@google.com, linux@rasmusvillemoes.dk,
 Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
 linux-kernel@vger.kernel.org, postmaster@vger.kernel.org,
 peterz@infradead.org, behanw@converseincode.com
References: <CAKwvOdmFm9-FPrqt42NsusWRbDzNx6NF1GeSJhz_9kaAGV8eOA@mail.gmail.com>
 <20200930173719.GE2628@hirez.programming.kicks-ass.net>
 <CAKwvOdk+Rp0QGJmX07XxD8L7WVgco98LHFTu-R_2R22+UMVerQ@mail.gmail.com>
 <20200930.152652.1530458864962753844.davem@davemloft.net>
 <CA+icZUXjYTJO4cC1EAhbdqnd19HjAwyFM+iSTW37xJM5dFHQuA@mail.gmail.com>
 <20201002172238.GT28786@gate.crashing.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <4cf8e2ba-3120-7f25-a9a2-1707d3f88276@infradead.org>
Date: Fri, 2 Oct 2020 10:37:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201002172238.GT28786@gate.crashing.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=0v7YjrRv;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 10/2/20 10:22 AM, Segher Boessenkool wrote:
> On Fri, Oct 02, 2020 at 02:01:13PM +0200, Sedat Dilek wrote:
>> On Thu, Oct 1, 2020 at 12:26 AM David Miller <davem@davemloft.net> wrote:
>>> From: Nick Desaulniers <ndesaulniers@google.com>
>>> Date: Wed, 30 Sep 2020 12:29:38 -0700
>>>> linux-toolchains@vger.kernel.org
>>>
>>> Created.
>>
>> I am subscribed, too.
>>
>> Will there be a(n)...?
>>
>> * archive (for example marc.info)
> 
> A lore archive would be good?

That has already been requested.

> 
>> * patchwork url
> 
> We do not have any repositories associated with this list, and there
> won't be many patches anyway, so patchwork will only be useful as a kind
> of mail archive.  I can ask to set one up though, if people want that?
> 
> 
> Segher
> 


-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4cf8e2ba-3120-7f25-a9a2-1707d3f88276%40infradead.org.
