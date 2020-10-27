Return-Path: <clang-built-linux+bncBC27X66SWQMBBEMZ4L6AKGQE6ZIBI6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id E63F829CAFC
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 22:09:38 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id t77sf1009729vkt.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 14:09:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603832978; cv=pass;
        d=google.com; s=arc-20160816;
        b=pq0+vuVahmjtFWI31n72ZpQRpQCP6wXGxHafN0CA7OfyMGIVBiWUyaBfEfijWS/79e
         o2n4KWwXeP6o2ET+xMfZgg9qeC8rWDXwW3pSYx21S9OOr9sajSxO401/9XrepfI4JYnF
         88eJBm6PCgHXfh5XKhDAwsLjzTD3xMiu08YSrSUPQW72X9USUscrTXm+BcX1MudwI27r
         9xxNUrkHzo/MdgW/+gKebdiq3QpdyGgb/Xc5+rzuk9/1lHN1iWGBOMXzGhYG5nC1JVUG
         mvDk6PH3MZRYP/hCnSUo1rfzkH+DL+1cjPXHnQX42bE28uiGw/iOGMfiKOg2q2mS5wZl
         jkSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=h6vy0iZT2OGlOu/vRZ6mng1TeEO1x9s9OX1u/QoScT0=;
        b=cnNXo3SZAHgophNlcQVhKjx5SjkyyMsLel/DDoNA/TJ3rPJkNYnN0/7RqyKOgRBpUy
         ewoLruUs88yEPI5CLDp8eQOcpzYa549tjkiHSfKG6mxUwODbe8VaFY04bmwfacbiWQ7A
         Xs88f3TuheCDfB0WsMCh9RZxFUNKcNVNhUWKlfWEMAjjlVJOJ3UrPYABVJj9XeteaDKg
         J3CSFcuGc1k6hMDJh9QX7XP/mQsi4U1/gH8NFuAj+KTgSlfUEgkBxoWnfqUClZGV9BBy
         nqj8OA7J5FiMhPagnocRuwy9DoBZYGsIJX+nH/bQN+W210UuhRixOcqVa7QZpK8aaFGq
         asig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=G3Jcho8Q;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h6vy0iZT2OGlOu/vRZ6mng1TeEO1x9s9OX1u/QoScT0=;
        b=DeIu0h/NamPCFFckRs3T6+tgFykcrp1urVbA92CqiEt1uPiilazDZw1rLzlJG8CQw4
         xkex+8vKzhg1fIF0XU+WoG6J98anT57rKNTNzykGKYuoKkH0RmQTwNrzDvV3A0I1Ixae
         94xo+aHH4tsRZNadVOvn+nJ9K9Gzju0kdoSWiuFfPfaU0OF48tKWnFwAE9Gw5fsgG89a
         RFqyd+W2/5RBXvAMJNqvi5yPwUvRfQFpRlCKxUMw0VUtTDiNm4aiLXr8/3rk0BxmPTBR
         3okxDromkBHVuAjpzzIU+Rm6n0fOw9jPjguMBQreZlyjjAVIv6SZWOwgeQ9jH3xrmdYS
         2nIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h6vy0iZT2OGlOu/vRZ6mng1TeEO1x9s9OX1u/QoScT0=;
        b=k992hDWrBYdAQLkrYm+vwgQedajtpTvtST/q8ajqT152NDER1DSWg+lCUQvCYcWrQA
         Uh74NwO96QxZ4rQrmMYp5vqXeUkBQVv4R6pX7+yeKiRNMEN1Mgy3RLxMxhbrAOGkme1x
         6EI8N9CcRRh1iwYGrueq2BrfuBAqv/nU7ZY7R0jUvZhWMosDB1OD7Qv0FByazvHRsKRT
         6yTGM9VA7md7YyeBSvfhwRU9mMaJUO22IeNzEX8nZEKSliylkEm7HujWgD6rf4AbgjHH
         /Lr54bucsOvcM4AZm7XF3hEXgfM72+aavWDoee+RnUWQHxYenPT8v841o1ZnyFqOEU14
         GQTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530puKWX2Wrn+Hc+Js0BegP1aLdLqpLf8OkguvoMEocnFRY+jwx+
	+20VyZEr1Eez1g1QGQfk/y0=
X-Google-Smtp-Source: ABdhPJymFg1HgzeSEhPIiHIZ8nM70sfpzl6oLlKL6Ia6RdIcvtH4gbU6vkvvk2LFscKp02NBUc5zGw==
X-Received: by 2002:a67:fbc4:: with SMTP id o4mr3118892vsr.34.1603832978026;
        Tue, 27 Oct 2020 14:09:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:cf85:: with SMTP id f127ls165930vkg.9.gmail; Tue, 27 Oct
 2020 14:09:37 -0700 (PDT)
X-Received: by 2002:a1f:2817:: with SMTP id o23mr3390465vko.2.1603832977549;
        Tue, 27 Oct 2020 14:09:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603832977; cv=none;
        d=google.com; s=arc-20160816;
        b=H25SJQRJJTdzdi0Q9mKhjNJC7K6F3Mvb0/xp9uKCFnahDlVZ0H/oQJcgfmSMmrC937
         fZeCyg3bPd3gXSmor3wcitrEcqg+jOyKs2ZJ3NH977kmcMVFudRXP9cN8HDx/gh3nssP
         6IQ/GimRHE5oCfjcHLQ5VRJrtFOuLVsGZClIYVr4wjsARZp82XuVEEBoHQWYMCS9hEez
         Al1IBRbN1uw/bY6vs2gVUk3hbaHC99bfUVtSX7ZbDRP783m+/UG99W7qZ4tRFOSdDg1M
         4cXwkwfHNvYBv5vKpTREuIRTTdBzr5Xc6XfCh0QrH6qS2KqLIQ1JS/XMSnCqytrPMRfX
         0Jkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=qVwaS8BTcuMOMUfHEzFFtE2wVD4D7uQ2zVsYJoC6aXQ=;
        b=z97T9OJcYR4zpho5Yr1kF3iL6cJK8Hu+L7ZSxTRhNoHVeW6o4PdUp6U01R9Gkwwh87
         1/W3YfPlKXkaFK+omJMvACcr0M7GIuu91PqTktLnSwHuDgqWSDREgeMm525+dk/SIrEW
         ql9urjnbXPkjG83pjnYM8uWi7SFJbN81x8NQ5nXZ3oqjDDNOC9f6m0gjDPxCfbanaIYT
         ph7ZM/vqmD+DwKQHtzyXU7YJcQfS0TTXIZImWmxz16v3GgUHwf49gfqkvwGTeeuYEGG4
         HEPZOfffBeQKWtYSwxv/lUIBRW7qmsVmHqz7uyJ0owRkdfo40dhSS+MMsZjiQ50otNOe
         7joQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=G3Jcho8Q;
       spf=pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id v18si132820uat.1.2020.10.27.14.09.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 14:09:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com
 [209.85.161.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-454-BAiS7IrnPbSkPRzsm3aZcA-1; Tue, 27 Oct 2020 17:09:35 -0400
X-MC-Unique: BAiS7IrnPbSkPRzsm3aZcA-1
Received: by mail-oo1-f70.google.com with SMTP id d1so1366393ooo.5
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 14:09:35 -0700 (PDT)
X-Received: by 2002:a4a:7c85:: with SMTP id v127mr3275894ooc.29.1603832974722;
        Tue, 27 Oct 2020 14:09:34 -0700 (PDT)
X-Received: by 2002:a4a:7c85:: with SMTP id v127mr3275883ooc.29.1603832974485;
        Tue, 27 Oct 2020 14:09:34 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id l11sm1553497oon.35.2020.10.27.14.09.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 14:09:33 -0700 (PDT)
Subject: Re: Subject: [RFC] clang tooling cleanups
To: Joe Perches <joe@perches.com>, Nick Desaulniers
 <ndesaulniers@google.com>, Stephen Rothwell <sfr@canb.auug.org.au>
Cc: LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-toolchains@vger.kernel.org, Julia.Lawall@lip6.fr,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nathan Huckleberry <nhuck15@gmail.com>
References: <20201027164255.1573301-1-trix@redhat.com>
 <CAKwvOd=83v0Sv-NhQ5xgqdNSRm2b=pOJDziX8axZ9t2YyYwz-A@mail.gmail.com>
 <8abd1e5a-511a-e4f6-6f2c-a045d33fa2aa@redhat.com>
 <a4c58c21f0361f844588f5479f6fee33dc1a1dae.camel@perches.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <cfad533d-1a9e-cf01-cefe-47c23de27a33@redhat.com>
Date: Tue, 27 Oct 2020 14:09:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <a4c58c21f0361f844588f5479f6fee33dc1a1dae.camel@perches.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=G3Jcho8Q;
       spf=pass (google.com: domain of trix@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
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


On 10/27/20 12:51 PM, Joe Perches wrote:
> (Adding Stephen Rothwell)
>
> On Tue, 2020-10-27 at 12:33 -0700, Tom Rix wrote:
>> On 10/27/20 11:42 AM, Nick Desaulniers wrote:
>>> (cutting down the CC list to something more intimate)
> []
>
>> I am interested in treewide fixes.
> As am I, but here the definition of fixes is undefined though.
> Whitespace / style changes and other bits that don't change generated
> object code aren't considered fixes by many maintainers.
>
>> Cleaning them up (maybe me not doing all the patches) and keeping them clean.
>>
>> The clang -Wextra-semi-stmt -fixit will fix all 10,000 problems
> I rather doubt there are 10K extra semicolons in the kernel source tree.
> Is there a proposed diff/patch posted somewhere?

Not as-such, the number comes from adding -Wextra-semi-stmt to a clang allyesconfig.

grepping and sorting unique warnings.

I did a similar over view for no newlines at end of file and unneeded breaks which

turned up 2 and ~250 problems.

>
>> This clang tidy fixer will fix only the 100 problems that are 'switch() {};'
>>
>> When doing a treewide cleanup, batching a bunch of fixes that are the same problem and fix 
>> is much easier on everyone to review and more likely to be accepted.
> That depends on the definition of batching.
>
> If individual patches are sent to multiple maintainers, the
> acceptance / apply rate seems always < 50% and some are rejected
> outright by various maintainers as "unnecessary churn".
>
> Single treewide patches are generally not applied unless by Linus.
> The trivial tree isn't widely used for this.
>
> Perhaps a 'scripted' git tree could be established that is integrated
> into -next that would allow these automated patches to be better
> vetted and increase the acceptance rate of these automated patches.
>
>> Long term, a c/i system would keep the tree clean by running the switch-semi checker/fixer. 
>> And we can all move onto the next problem.
> Good idea...
> I hope a scripted patches mechanism will be established.

I would be interested in this as well.

I already have a repo tracking next.

I can code up a script to do the commits.

Then we can poke at it with sticks and see if hooking it into next is worthwhile.

Tom

>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cfad533d-1a9e-cf01-cefe-47c23de27a33%40redhat.com.
