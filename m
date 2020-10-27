Return-Path: <clang-built-linux+bncBC27X66SWQMBBRM64L6AKGQE6Y5PMCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id E23B329CB1B
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 22:21:10 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id v18sf1373262oou.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 14:21:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603833670; cv=pass;
        d=google.com; s=arc-20160816;
        b=gNkva1lvarLENmUu3MNrpXiu8pTsbBWpUqN/hyfmWkpZ0VXUqPocNx92AWrDw5ocjP
         +Rqbo+UxV8QgkQK4KSUpcrhh9fGD1T1TQJDJCSOSkll6R4DhSTgoaMOd4cN0DoS9IWoW
         HDLDe5nklJNbxcrgFXcg891XpcwDy/x3pqqLwB6mLwn2WYPqC16i8u6jUed8egdaBIKy
         7jkPDsldl5enOFEaCrNsQl3HLBBjLGLU++wgwY929De/kF91W7DmktgtwD+mccquPjW0
         XcJ/hp1n9E4NXZTHMgETsuDjWKC4TafAI7/x1ur+OPDvnNZrjYkU39cbPOXwQ4q7nvYc
         C95w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Dxs5uoWmS3iOgaLuDFn5HxpR+lsOlT1ltt7I4Byd6Kc=;
        b=o3mb6MDcIi8DvvCoN8txUyj+bJr6ZQBt7zb7ZG2Msx3u4z6rnHRAD79x6DBPmC9XC4
         XaMiKmXkcM7w3rJ5hU8SbhIIxxWVSRnTETLay1C5e4AY4Ur0Lw9T/C9H3zb8vz4SLMxK
         DQLeEn8xjKTtrHTJCNt3wr0eGGkVxJ4vcPKqTdf+HOuW/2RE4IBiujYceLRLVGlVuUx7
         FZxyhbx/rd3wtcnq+PITnYQ8FH1s13vJsM2ucAAUOh1p0+77tYbz1B9IhYky674j8UsR
         f3GRNW6wLlw46CUxCVm831QP0kwO4b34K2fxIFFTZGvAq4cFxK5hg/AuOHFqW2j+esVf
         m17g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZyP6AeJy;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Dxs5uoWmS3iOgaLuDFn5HxpR+lsOlT1ltt7I4Byd6Kc=;
        b=su028B/wBvV7Be1gEqWHZjPl3dZkSSvUcpossSXgtnLFtT5I3PW9nYRx8y3baYKpUF
         6XYuPD61PUQp8EG6dxAGe+4ulIfriFvbbz8qSKBrZdmcVzfRnpABMhSo0LEi0JUiOWBQ
         UkTt25p3E67Y6pSnGXJ96QYzmnJw4tq3iqwW9t3t+mOo/V/WkkHlhjCiLeiVrYdZ94Kd
         Bo5ivBmTREHNWyUnGesDNnpzShuIdxnf7+/DAWcXkkB0f9VnIe+2mTK856NKLFeYJXDC
         wmGqTlxvI7Rhq+hexkzMtOV3LUR7znN8F3TAyNrRpCxrFBusw6WT5Hskzlgsr2tWZpnz
         XQwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Dxs5uoWmS3iOgaLuDFn5HxpR+lsOlT1ltt7I4Byd6Kc=;
        b=GMJu3SN0F3AGxtWuSXZKPfenGieSA7nk6c2u0wQ2Ct84viEhISgLTnKE3zEu511qjb
         pHWExZOIEKMwm3vrECJQ15RxPz0rUsVstPLbNqqfz5WNBsm9jTtFb1QpGAjhTjmCO/zi
         lD98fYvRmiFVdkJaYe6uVfN9pNmL0eODbuUrl1LF0jTDqWVLN9qNDCFayNg+ccf7m8FP
         nshPnP5hnukGKnzWBED9c+mkwoNHmMO0sawvYzXMPFXq+QZiZKhPKTJwXDA4jwZgePeV
         6TXbSQzM8qHRHN1VB9jR2H4E5J/K4XvQGL9caqySty45MSUnn18bmbUOyefHB0l4lu4H
         DQsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530alzCXGjwvBP53yB3QuCRzioXeF0v4VyJP2qZTUWOQNUzyrned
	+deI8s214mC3WB69txHnE5s=
X-Google-Smtp-Source: ABdhPJx/o7OLAfYWUmKxU5tcczgzTddi7J5zkUfOPkM3czyurJ0E+uHtDS48OP8Sf/7T3oNOFjpx+A==
X-Received: by 2002:a9d:4904:: with SMTP id e4mr3119923otf.28.1603833669823;
        Tue, 27 Oct 2020 14:21:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:2c82:: with SMTP id o124ls218252ooo.1.gmail; Tue, 27 Oct
 2020 14:21:09 -0700 (PDT)
X-Received: by 2002:a4a:9806:: with SMTP id y6mr3359701ooi.45.1603833669442;
        Tue, 27 Oct 2020 14:21:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603833669; cv=none;
        d=google.com; s=arc-20160816;
        b=V0b3ZbV9eVLmhfcXn45Mapt0eDT0GqX0hwB7L60wkjPDloBx7GPD6r5L9+2l7hixZz
         DfTpnNN0gZY+2jQl+5UCADmir1gxmXUbziuHcDDE5ReaxnmfKJcjQ6PbXDCcUq/HCctr
         gxLzFj2ThYl1BfaV/Myr3bDDruc/EQC8zxw3EHCDApcoJ8vux9/XfPienAOrDMHN5vG4
         HmKW0xDgCIVwh0v9nHKBTmqZK2OX7outq6rwU8ODoNy0Z6H2pfrwxNrVwMRNVt4HsXF4
         /PBlbzKUtXIgizwKqKI4pEalZRPP+5Tl992t+1JEUMb42C1kfiBT3ZZKsdYrW0C1JAEs
         2nZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=J50aX1Edk3DFLyS24ty0stdo5ZU9u9zVLScpcoiA/8E=;
        b=qORK+d4WbKg01fusCtGi4RCTaiUb+1eDMEuFOPi3UTHq8DKI0ilnYdT3W993Se1Gt9
         ITZ7AmIkil5zHjmUl5kpS69Y/vMNQ3jEiUFz+IcLN0kqMTHWxUeReGqKQ/JxJWwenznp
         NSqILaAtI+zB6Dx9i4zwFFkYiJxtMQEBnYprlH+HyBsvrJQ26+TVn3THSeVejuqFbdAU
         la0jlDd6Ux8JCZbljvox443tVf5cgVAxwiiiwzBM5nN4OG4dPeGzZ8ow+KcqtANnqplV
         xa2XD8XrbKvs9jE3Jo1Wf+74KKsUQTk1zqp/ZSUtKad2y1rir+AW+k3FJsnsXZTdHn+3
         NEjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZyP6AeJy;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id r6si445337oth.4.2020.10.27.14.21.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2020 14:21:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com
 [209.85.210.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-121-aO9YpoFTNtqnKl-e9hbpWg-1; Tue, 27 Oct 2020 17:21:06 -0400
X-MC-Unique: aO9YpoFTNtqnKl-e9hbpWg-1
Received: by mail-ot1-f69.google.com with SMTP id q8so904449otk.6
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 14:21:06 -0700 (PDT)
X-Received: by 2002:a4a:e40b:: with SMTP id t11mr3343268oov.43.1603833666031;
        Tue, 27 Oct 2020 14:21:06 -0700 (PDT)
X-Received: by 2002:a4a:e40b:: with SMTP id t11mr3343243oov.43.1603833665754;
        Tue, 27 Oct 2020 14:21:05 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id f142sm2092468oib.10.2020.10.27.14.21.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 14:21:05 -0700 (PDT)
Subject: Re: Subject: [RFC] clang tooling cleanups
To: Nick Desaulniers <ndesaulniers@google.com>, Joe Perches <joe@perches.com>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-toolchains@vger.kernel.org, Julia.Lawall@lip6.fr,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nathan Huckleberry <nhuck15@gmail.com>
References: <20201027164255.1573301-1-trix@redhat.com>
 <CAKwvOd=83v0Sv-NhQ5xgqdNSRm2b=pOJDziX8axZ9t2YyYwz-A@mail.gmail.com>
 <8abd1e5a-511a-e4f6-6f2c-a045d33fa2aa@redhat.com>
 <a4c58c21f0361f844588f5479f6fee33dc1a1dae.camel@perches.com>
 <CAKwvOd=NiUEv51BCXVUDERwbs9qCX1SbMarrof5H0RoCdxP0NA@mail.gmail.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <1e05fa22-491c-75fa-8ece-7c87a8b34b0e@redhat.com>
Date: Tue, 27 Oct 2020 14:21:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=NiUEv51BCXVUDERwbs9qCX1SbMarrof5H0RoCdxP0NA@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ZyP6AeJy;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
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


On 10/27/20 1:50 PM, Nick Desaulniers wrote:
> On Tue, Oct 27, 2020 at 12:52 PM Joe Perches <joe@perches.com> wrote:
>> (Adding Stephen Rothwell)
>>
>> On Tue, 2020-10-27 at 12:33 -0700, Tom Rix wrote:
>>> On 10/27/20 11:42 AM, Nick Desaulniers wrote:
>>>> (cutting down the CC list to something more intimate)
>> []
>>
>>> I am interested in treewide fixes.
>> As am I, but here the definition of fixes is undefined though.
>> Whitespace / style changes and other bits that don't change generated
>> object code aren't considered fixes by many maintainers.
>>
>>> Cleaning them up (maybe me not doing all the patches) and keeping them clean.
>>>
>>> The clang -Wextra-semi-stmt -fixit will fix all 10,000 problems
>> I rather doubt there are 10K extra semicolons in the kernel source tree.
>> Is there a proposed diff/patch posted somewhere?
> Ah, I think I see where I (and Joe) may be misinterpreting.  Tom, do
> you mean to say that `clang -fixit` will attempt to fix EVERY warning
> in tree (including but regardless of -Wextra-semi-stmt, where
> -Wextra-semi-stmt is a red herring), so the clang-tidy check is
> specific to applying fixits just for -Wextra-semi-stmt?  (If so, I
> wonder if we could improve clang to accept more fine grain control
> over *which* fixits we want applied.  Not at all of them for all of
> the different distinct warnings, for example).

Using clang and -fixit with -Wextra-semi-stmt will fix all of this warning AND all of the other warnings.

(At least thats what i think it will do)

My opinion, clang doing the fixes is a neat but the purpose of the compiler is to compile.

Fixing should be left to all the other clang-tools.

Tom

>>> This clang tidy fixer will fix only the 100 problems that are 'switch() {};'
>>>
>>> When doing a treewide cleanup, batching a bunch of fixes that are the same problem and fix
>>> is much easier on everyone to review and more likely to be accepted.
>> That depends on the definition of batching.
>>
>> If individual patches are sent to multiple maintainers, the
>> acceptance / apply rate seems always < 50% and some are rejected
>> outright by various maintainers as "unnecessary churn".
>>
>> Single treewide patches are generally not applied unless by Linus.
>> The trivial tree isn't widely used for this.
>>
>> Perhaps a 'scripted' git tree could be established that is integrated
>> into -next that would allow these automated patches to be better
>> vetted and increase the acceptance rate of these automated patches.
>>
>>> Long term, a c/i system would keep the tree clean by running the switch-semi checker/fixer.
>>> And we can all move onto the next problem.
>> Good idea...
>> I hope a scripted patches mechanism will be established.
> Yes, if I can automate myself out of job, then I can hang out of the
> roof and drink margaritas all day.  That is the plan of record, but
> this !##$'ing compiler is constantly broken!!!!1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1e05fa22-491c-75fa-8ece-7c87a8b34b0e%40redhat.com.
