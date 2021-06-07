Return-Path: <clang-built-linux+bncBCS5F7M6QIOBB5H666CQMGQEZDFMZMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3438339DAE2
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 13:13:58 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id v19-20020a0ce1d30000b02902187ed4452esf12896531qvl.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 04:13:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623064437; cv=pass;
        d=google.com; s=arc-20160816;
        b=oBz6bmAxl9rXfc4FDyAL/iV3AuqZBYHk5a0S3Ktj0Pmz2IaVq1Mamc4oP7OQzcBt4X
         JpZzESVYE7ydHhteZrNAVvSOMnc8VasA6DxUweQRjo3LmZ7mcVKrVZKzL9/Gce6ZyNUY
         sg6r/gT/6F6jSShAxCd1VfDY1CbDm4M/EMEZH412X0jrbaMUPu9A+SvmoFEhnVj9EP/h
         eUkSW0O05tO6JS1phlM5gi5SE/eVgt+WD3ZUJ43h3n8qhJxGxfWT8MZJOPaoOTAP9syY
         K79nkz933ycNGgM71jGVUFmFX1EuRQ3q3j0up5xWaQcFP4xaiU3XB7zW3yFh8I8S4P/I
         nuJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=3qGLWQ6hGadLrytyLWL1Z75r+Syt/3+a2ijDbkKe9AA=;
        b=PxyjgrXfYVIdOt9AKB8PNUqd8m5rP0zUqxoUzzCLoUrkg4DJQSdQwBxRXu/VZpH657
         MJX0fLrv6j5/hLVmqIB81bthgB+RnmmY1125m08EpxIw/3tpKczWTYEMpRQHPhBortWn
         PYbFNSYe4e+e6H6D+5ix2W1+X9onb0yAOkhanOCdlfLkuwUVOa1tP1Zf5VEYapcPI7po
         LNi7ua8nbgTwV3ZEVGrkw8u7B3P4QrD1WdRLbgJYgx0dMkCptNfN5Vreqw5LCbjRsnhL
         VyAN2FeZG9cKCvhB7ZGwqIMf0yuO56DWQEIHMP/RSA/uehyULO0vCMqWFdGXP3POkjah
         lrXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FnhiWZFg;
       spf=pass (google.com: domain of nikolai.kondrashov@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=nikolai.kondrashov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3qGLWQ6hGadLrytyLWL1Z75r+Syt/3+a2ijDbkKe9AA=;
        b=Ns7S/fnHhzGWrisZVZ9MAbrLECTy0zcCwgkaaq9cO6kir7bckxMcOIMA8ayXl/jIz7
         IFv1ojHd/93SHLci9lg+dUiuHi3QTYfdl7udfYps6+AQxQqCP9nvux0D65iAYGF+eEQV
         cptFQDz+SKAlhHUw6bRsSSJupvDhE5TIuRdIpNMnKakZWX0qNnvi3xzr4lIQun9MaH4b
         yer3tAoWCjmQ2p3ogKyWz7MHWs3UGs6E5SEWFlG+/z8Zi/NktQsRgrH3s5A/gih298nr
         /VAGrTD0vhW2sAsqnXjBUE73ePf227AdXISWsQuLzy2mvC6ZFD6x66bSMXAFwPxjPycs
         VZww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3qGLWQ6hGadLrytyLWL1Z75r+Syt/3+a2ijDbkKe9AA=;
        b=aFNFGnyAT3p+ijTmj7xZvki0cmFFAqiENPjO3FN76YbxJ4X+aWBaZVd8EUA5SLO7yf
         kVUoVtcBwnvyq2FnM4Jz0Ipaef5t7TE0yjmkl4BYwW5TXQ26Ua8aByjd4JLGXVElaBeV
         49aCqq4k7saeL029090yuu2eOCzpRursnosE2Qa50SY5NEc6jcO+R9zpz9v2BcY1xkUI
         iqQ2Nhb9rSL3XktNK7J9PAxGCu9frwMQZW6l4bVDgZVSnAio4UgDMhZIJCfAgy+mX98v
         NkV1A/JOu61qH0dwBfgdumqc2KY7572MOlPgCWRSUxHvHkqpUhFkV12qq+j1IwTQRUuu
         vMJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bL26IZMzOR4UQd6J+iyUWQS/a0jg+zIjllrf6nWFVFXACKq9Z
	YpMzk+PHUzUd42U+PyN/1Ho=
X-Google-Smtp-Source: ABdhPJw4RNE94Q1PchynbwJeWEDsDPs6hHeo5EK5y7FvNKqQYYU/9yaxwzpyXHFuJ9584PvVMMGuNA==
X-Received: by 2002:a37:9003:: with SMTP id s3mr15751169qkd.86.1623064437051;
        Mon, 07 Jun 2021 04:13:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f017:: with SMTP id l23ls8335085qkg.2.gmail; Mon, 07 Jun
 2021 04:13:56 -0700 (PDT)
X-Received: by 2002:ae9:e806:: with SMTP id a6mr15891887qkg.431.1623064436610;
        Mon, 07 Jun 2021 04:13:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623064436; cv=none;
        d=google.com; s=arc-20160816;
        b=WPpbliRf36C08ZDE8ivnJxNEXsuczQGzdx5ThQAFttW5umF54UsIPP/N2WrzV9xHwG
         gK4YRwjTFeNGInPItslkTOf+pTbmeAbD1X7Ehg6YTBl+cGhz2kI5/F4m3IvqTwNfj2hK
         eQa+tA+QeDT3aSn9fbCLsZgvsFeTnaWzHi/uC97yS74Wg/nMNY1AhTtvVzmFxFZ53XIi
         Dfp8tiEgFrqGNNbjlbtB29eceacCmVCUObA5PX2Lntc3pzKw2MJeI/il1jDUifdQC8WC
         LYhDJ12tvY9zDD601VHOaxJexLDvuCFql/XOotCvCdwGxs9I2kN5LXgvLRttDegYOpDu
         UZ2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=bPHSwgrWO6ZPTmr+WHf07a7kOVoSYExXq61bzX02VyI=;
        b=Awbfp0H99fGy0h1UzQ03SmIiaBI/Q2XeSLh9QwIwCUTKyG0J9C1LVkGz6Cnsx+aJC2
         d3sZX0BXnawPAU7djHmflhH/ycWGMiM4m4Sq3pz1g1gQOdW339u2DZVBRnI3un/DHU9c
         kVLq4E7hKeuJ2Sjnj5JEHRZEN5dqvx1C8zEkRJ+gRwZpM3RBUwIwAXO7eEI0PJ8GkI3n
         fb59xTddw+hZ9qUCyEsJAQekO/WOM3j3MHxzuf0d6y6LCA3j83e1ru/ImV6HOdUXaOcr
         Vb0QAwwzgridLx003iQDA/GaANWJZN63X5l+ghdGk4jp3xlR0ptCJySIEI2bRkwphHb/
         T9ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FnhiWZFg;
       spf=pass (google.com: domain of nikolai.kondrashov@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=nikolai.kondrashov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id 85si1120321qkm.5.2021.06.07.04.13.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 04:13:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of nikolai.kondrashov@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-218-x6a531w3MVyRutC1mELXhw-1; Mon, 07 Jun 2021 07:13:53 -0400
X-MC-Unique: x6a531w3MVyRutC1mELXhw-1
Received: by mail-wm1-f69.google.com with SMTP id k5-20020a05600c1c85b02901ac8b854c50so1115718wms.5
        for <clang-built-linux@googlegroups.com>; Mon, 07 Jun 2021 04:13:53 -0700 (PDT)
X-Received: by 2002:adf:a193:: with SMTP id u19mr16795280wru.9.1623064432324;
        Mon, 07 Jun 2021 04:13:52 -0700 (PDT)
X-Received: by 2002:adf:a193:: with SMTP id u19mr16795262wru.9.1623064432140;
        Mon, 07 Jun 2021 04:13:52 -0700 (PDT)
Received: from [192.168.0.118] (88-113-28-221.elisa-laajakaista.fi. [88.113.28.221])
        by smtp.gmail.com with ESMTPSA id v18sm17085301wrb.10.2021.06.07.04.13.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 04:13:51 -0700 (PDT)
Subject: Re: #KCIDB engagement report
To: Nick Desaulniers <ndesaulniers@google.com>,
 Nikolai Kondrashov <spbnick@gmail.com>
Cc: kernelci@groups.io,
 "automated-testing@yoctoproject.org" <automated-testing@yoctoproject.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Vishal Bhoj <vishal.bhoj@linaro.org>,
 Antonio Terceiro <antonio.terceiro@linaro.org>,
 Remi Duraffort <remi.duraffort@linaro.org>
References: <5a9bf050-0671-3273-cc4f-1b131445c1fe@redhat.com>
 <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com>
 <d4c587c2-7eca-043f-06b3-7e1cfa125b38@gmail.com>
 <CAKwvOdkFqFoNUczEiTKY6o2E78bHLkMjeHjtQWKm=Qdg7-v26Q@mail.gmail.com>
From: Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>
Message-ID: <0e70beb7-49fe-efba-ef41-a35fa996bdcf@redhat.com>
Date: Mon, 7 Jun 2021 14:13:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkFqFoNUczEiTKY6o2E78bHLkMjeHjtQWKm=Qdg7-v26Q@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nikolai.kondrashov@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=FnhiWZFg;
       spf=pass (google.com: domain of nikolai.kondrashov@redhat.com
 designates 170.10.133.124 as permitted sender) smtp.mailfrom=nikolai.kondrashov@redhat.com;
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

Hi Nick,

 >> We don't have a ready-made UI for this, but I think I can add a Grafana
 >> panel/dashboard for that rather quickly. What would be most helpful?
 >
 > I think so.
 >
 > For a given tuple of (tree, branch, configuration), it would be neat
 > to be able to link to a deterministic URL to quickly check who else
 > may have built this recently, and what was the result.

I made a stab at it. I added "Repository" and "Branch" dashboards, showing 
revisions for a particular repository and branch respectively. They are 
accessible from the dropdown menu in the top left corner.

Repositories are also linked from the "Home" dashboard, branches - from 
"Repository" dashboard, and both are linked from "Revision" dashboard.

Additionally, "Home", "Repository", "Branch", and "Revision" dashboards now 
allow filtering builds by architecture and configuration name. Please be aware 
that neither are really standardized across submitters yet.

Finally, whoever is reading this, please be aware of the time range selector 
in the top right corner. It affects every dashboard.

 >> How about having a list of "Compilers" below the "Builds" on the page
 >> you link? Each line in that list could correspond to a unique value of
 >> the "Compiler" field, and give an aggregated summary of various
 >> parameters, including build/test results. We can also have a summary per
 >> architecture, or per "Configuration".
 >>
 >> Or maybe something else would help you better?
 >
 > Hard to imagine, but maybe we can iterate on something?

Sure, check it out and tell me what you'd like done differently :)

Nick

On 6/1/21 10:10 PM, Nick Desaulniers wrote:
> On Tue, May 25, 2021 at 3:32 AM Nikolai Kondrashov <spbnick@gmail.com> wrote:
>>
>> Hi Nick,
>>
>> On 5/24/21 8:38 PM, Nick Desaulniers via groups.io wrote:
>>   > Hi Nikolai,
>>   > It's nice to see our results getting collected; it looks for a given
>>   > tree I can even see the build results of different compilers.
>>   >
>>   > For example, here's a recent run of mainline:
>>   >
>> https://kcidb.kernelci.org/d/revision/revision?orgId=1&var-dataset=kernelci04&var-id=c4681547bcce777daf576925a966ffa824edd09d
>>   >
>>   > One thing we need to be able to quickly triage when we see a build
>>   > failure with one toolchain is "is this toolchain specific or not?"  I
>>   > figure KCIDB has the data; is there a way to surface the results of
>>   > such a query quickly?  If not, that would really help us.
>>
>> We don't have a ready-made UI for this, but I think I can add a Grafana
>> panel/dashboard for that rather quickly. What would be most helpful?
> 
> I think so.
> 
> For a given tuple of (tree, branch, configuration), it would be neat
> to be able to link to a deterministic URL to quickly check who else
> may have built this recently, and what was the result.
> 
>> How about having a list of "Compilers" below the "Builds" on the page
>> you link? Each line in that list could correspond to a unique value of
>> the "Compiler" field, and give an aggregated summary of various
>> parameters, including build/test results. We can also have a summary per
>> architecture, or per "Configuration".
>>
>> Or maybe something else would help you better?
> 
> Hard to imagine, but maybe we can iterate on something?
> 
>>
>> Nick
>>
>> On 5/24/21 8:38 PM, Nick Desaulniers via groups.io wrote:
>>> On Mon, May 24, 2021 at 12:50 AM Nikolai Kondrashov
>>> <Nikolai.Kondrashov@redhat.com> wrote:
>>>>
>>>> Hi everyone,
>>>>
>>>> Below is the monthly report on KCIDB* engagement. It lists various CI systems
>>>> and their status of engagement with KCIDB, and once we get to that, will list
>>>> developer engagement.
>>>>
>>>> Lines with updates are marked with "!".
>>>>
>>>> Not much news this time, as I had to tend to CKI matters, and had a couple
>>>> weeks of vacation. I still have to tie some loose CKI ends before I return to
>>>> working on a new KCIDB release and reaching developers with e-mail
>>>> notifications.
>>>>
>>>> However, I did try to contact Huawei's Compass CI with an invitation for
>>>> cooperation, but got no response so far.
>>>>
>>>>        KernelCI native
>>>>            Sending (a lot of) production build and test results.
>>>>            https://staging.kernelci.org:3000/?var-origin=kernelci
>>>>
>>>>        Red Hat CKI
>>>>            Sending production results.
>>>>            https://staging.kernelci.org:3000/?var-origin=redhat
>>>>
>>>>        Google Syzbot
>>>>            Sending a subset of production results (failures only).
>>>>            https://staging.kernelci.org:3000/?var-origin=syzbot
>>>>
>>>>        ARM
>>>>            Sending production results.
>>>>            Full commit hashes are currently not available, are spoofed, and don't
>>>>            match the ones reported by others. To be fixed soon.
>>>>            https://staging.kernelci.org:3000/?var-origin=arm
>>>>
>>>>        Sony Fuego
>>>>            Internal design in progress.
>>>>
>>>>        Gentoo GKernelCI
>>>>            Sending production results.
>>>>            Only builds (a few architectures), no configs, no logs, and no tests
>>>>            for now, but working on growing contributions.
>>>>            https://staging.kernelci.org:3000/?var-origin=gkernelci
>>>>
>>>>        Intel 0day
>>>>            Initial conversation concluded, general interest expressed,
>>>>            no contact since.
>>>>
>>>>        Linaro
>>>>            Sending (a lot of) Tuxsuite build results to "production" KCIDB.
>>>>            https://staging.kernelci.org:3000/?var-origin=tuxsuite
>>>
>>> Hi Nikolai,
>>> It's nice to see our results getting collected; it looks for a given
>>> tree I can even see the build results of different compilers.
>>>
>>> For example, here's a recent run of mainline:
>>> https://kcidb.kernelci.org/d/revision/revision?orgId=1&var-dataset=kernelci04&var-id=c4681547bcce777daf576925a966ffa824edd09d
>>>
>>> One thing we need to be able to quickly triage when we see a build
>>> failure with one toolchain is "is this toolchain specific or not?"  I
>>> figure KCIDB has the data; is there a way to surface the results of
>>> such a query quickly?  If not, that would really help us.
>>>
>>>>
>>>>        TuxML
>>>>            Initial contact in response to a report.
>>>>            There's a plan to approach us and start work in the coming months.
>>>>
>>>>        Yocto Project
>>>>            Initial contact in response to a report.
>>>>            Would like to start sending build and test results, particularly for
>>>>            older kernels. Would like to separate upstream commits from project
>>>>            patches first: https://bugzilla.yoctoproject.org/show_bug.cgi?id=14196
>>>>
>>>> !   Huawei Compass CI
>>>> !       Sent a message to Fengguang Wu, who was presenting it at LVC 2021.
>>>> !       No response so far.
>>>>
>>>> Please respond with corrections or suggestions of other CI systems to contact.
>>>>
>>>> Nick
>>>>
>>>> *KCIDB is an effort to unify Linux Kernel CI reporting, maintained by Linux
>>>>     Foundation's KernelCI project:
>>>>     https://foundation.kernelci.org/blog/2020/08/21/introducing-common-reporting/
>>>>
>>>>
>>>>
>>>>
>>>>
>>>>
>>>
>>>
>>
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0e70beb7-49fe-efba-ef41-a35fa996bdcf%40redhat.com.
