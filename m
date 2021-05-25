Return-Path: <clang-built-linux+bncBDP5H7E7XQHRBOFEWOCQMGQEYHIVFLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id C705B38FF3B
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 12:32:24 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id a23-20020a05651c2117b02900e9751e7410sf13211640ljq.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 03:32:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621938744; cv=pass;
        d=google.com; s=arc-20160816;
        b=marbVHtccGPj53lv+IxSwckJwEnkNAGLJv8wjUUCryx/E+2AyOeeUWPoaF4UFig6qb
         r8CN/RZniOKqK9y3u8O6uGnQpXZtbV3i1iFZ9qzKpGy1AKO8I6RcUSB6iIMOEOg4PUPn
         snr8Jh+zV1x1RRrOeWzDmOYIppUtzTYMv1UYgWB7MehqiQNsfEGVk+WH0utsHkotOJWA
         3rC5xD087QoG3N1Rk/Iwu7DW4AmMTlopKWfiRiXskHdyEhNcnr3T3nzSOCun2UHOTklm
         AJLMzcxYjDZ4zlgpNp7Stk83v/C4x+sTAdQLkcTQzXOfw+zSBaXlv/s9Z6ghSpl5LLzY
         zGOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=e4iUU7QbtvvH8nwbnjWYP6quqF8JuS1kWb1HzVJqsRw=;
        b=WgCQWPD5oo4Y9a20TP/ZuThbfO4TUeuG4pQ85dw/L0EfynBuvQb+FvPFfkE0nXPGog
         70wwprCmu4WvvyX8BowBiGEghYgkA25u9OFlx6hx5l5dRp9YzVe9SrL2+swcnbMvd+Tz
         26WBdPA2AEWc4h8hxABcOPM3/ZzY1uVZ70dMEnpj6pY6TmoZW9pZljVGzN/TszgXoLii
         sGVBMtkmYwyYt59uA06fPz+CUcVCD9E+Ey96P60ojtsYECl4vCvE8vW5e575ykW3KVWR
         iauHQaroCbe5MI3/cBSLclAv82qAGO6smWiqFvjLL8HzMRE1STkxvDrQrBwzn8ocnG1k
         Np4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PQQPtpHY;
       spf=pass (google.com: domain of spbnick@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=spbnick@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e4iUU7QbtvvH8nwbnjWYP6quqF8JuS1kWb1HzVJqsRw=;
        b=dptxYWFQcTNCegIsDXsF9JhntOg83XsMLWg2MqZer8coK94UmGTK44iUnR2MZ0WF/8
         dFEHBCs5CmNv9vQEeQMPPu/4egsB20GCBGPF5ZhlhVzioqGudQ5OBO2PSqwH1Avw5CIM
         ytT/zxz2gfLyqCwlbe/05DK/Pybc/P5PUJCY2LqrcItkGj4E8koCtT7tHtjNMFhlUEG9
         32vM6u/pStsYtkFPJT3T2TdbybSY9+Mlq1Uy8IFLeuiJ8/TJ72sc8MuLbr/FsMbCBwji
         hWHclmoYUK4ZIT251eMxq4j2ybhv4e9BWtA2l6bLGxc7yQ15P90ifqw37B7kLH20FRLa
         I/EA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e4iUU7QbtvvH8nwbnjWYP6quqF8JuS1kWb1HzVJqsRw=;
        b=fIkGjfzT05G7xwqSAu4EsWPHZFxKXGg3LhHzVl1tM+pLkGeK5/gkY6BFS58DzhY06f
         s9HrelXNOmhk5S8VHxoKBqx4/64HpUbnR1O1zzVAydv2Y92vZ2R7YkYmJpwuAjX3kZmc
         ZsR3tuAJvUt5ryPwRXiKwSlPcoRwuaLkcO5lLWcPab67MADzTd08HdcU0qd8uJTdTUAg
         m5AbTTXx/IzIvyjip+OLy4X40DFFqCDSWVvrDIZD+vg48QH2++8MNUaG30V9rRR0BpDF
         lIUv1BLrbXpuvI3qlwQEhCE9JQOpenzRuOjko2LwgAZ1dN6Dudl0JzkoIRxvQiynVFOD
         LFzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e4iUU7QbtvvH8nwbnjWYP6quqF8JuS1kWb1HzVJqsRw=;
        b=YdDABI7UpaBPvq09RVHikxcbHfEgdyhWy+O9a18dxlRsTq3IUYRFWkj/RT/rMEHmcV
         8RyX8WjXmiHja3WygeWWoICOkXMQ0VhaK0oh9VZmadPHD216baH882XUseD+TjQAwH3M
         Vfevz+J6yYJHqNAKilZBHmjDX/oEZ3zDXB4WUKZlBxFxClIJ4dcTuSm/Sh+jSpSVRvw3
         YpwvKbjlLvp0eDX83skP96lqhLi0MUTJZAPVnE3U+rZlufy/1Ie2A2JnKa0iUOpSTEAh
         xJWGwM4ZBBFtIkaoUCnnC63VenYnd1oqMT/amBdZ1+9YZg+T05YrmZHLREa+wW1BCI07
         V9UQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530n0QRLXy4GCHB/9gjLn74C5Y8IG29LSxA8Ytb6rLaNfmGZgWMI
	gKJ43FjBqSDyjk3G07NvCXc=
X-Google-Smtp-Source: ABdhPJzIf0T84KfCaxfbwoP247yAd6u1wVbaAkT4xNtL6cZWNTgyK0v/qIfGRxmlwyF8e6xjhcAIOg==
X-Received: by 2002:a19:8083:: with SMTP id b125mr13105333lfd.204.1621938744325;
        Tue, 25 May 2021 03:32:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1025:: with SMTP id w5ls3008460ljm.0.gmail; Tue, 25
 May 2021 03:32:23 -0700 (PDT)
X-Received: by 2002:a2e:8e26:: with SMTP id r6mr21174128ljk.472.1621938743261;
        Tue, 25 May 2021 03:32:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621938743; cv=none;
        d=google.com; s=arc-20160816;
        b=ip8WCx+08DZlNUM6X/clc6/sJXinhHk9i5cPTBHB8m2iQlJat5nhn6ZRYn6Ymyr49u
         EDK1ZZhpVB+rO4BveJqMBjQcMUbxB9by4hBQSXwJ2PKGviQf86jZaGgsdb6zRna1XkqX
         iJ+PnwfZgyBo9RL8yUevaY/Gu8+jBwAaWPgO12eyRHV26YTKXWSjDsyNc/OIECGNS/mH
         QqdZGEsM6fQDXF9HZZLnQhwizWqirD8xDJi3rCrk76IKql5KMcp6k0ANI3fKB9Z+qAq7
         9dg1sqm2Lrrg+h+1zlp9DlmE0xd0oNp2LlxQ+Dtw8WZZbe43CMRvNrbwtEtyUtdpTRYI
         jlgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=eS6QF289AQURM8lyJT8vpMIoSIdbUYPu6ynZ6pObRd8=;
        b=ZtVL8S4PUEMNbHufz3S0zem3zxPQTuRxYdyG1DSfbELDACX65rMUtBvjMnFGcNlIOj
         qdsZnYGtQ3Jf+gHONoOimXPjtWvTo1B0bMhh3jGRSufph7i/xy2rEnY4qcm8qPrMGufJ
         wHtALN7l6kfmA9DayqDzV1Z+2e5m7xqMmqRFRMo+rCIPU9MSxurOhkWwiQ1u3L8bY0Hi
         7eVis1oyoRnfnIim7vVkRSAF87LjgHlfAnlJKzGq7rVGxZmvlsABKy9ep5azfm4q1vqe
         NLPzdy4N68/g3WpuVO9XM5bvxxb2GpFhdhqq8aOM24SdcpLeqtNWek23UvrdstmffBJP
         Ys2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PQQPtpHY;
       spf=pass (google.com: domain of spbnick@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=spbnick@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com. [2a00:1450:4864:20::433])
        by gmr-mx.google.com with ESMTPS id o11si728075lfk.12.2021.05.25.03.32.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 03:32:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of spbnick@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) client-ip=2a00:1450:4864:20::433;
Received: by mail-wr1-x433.google.com with SMTP id z17so31631997wrq.7
        for <clang-built-linux@googlegroups.com>; Tue, 25 May 2021 03:32:23 -0700 (PDT)
X-Received: by 2002:a5d:508e:: with SMTP id a14mr26496710wrt.88.1621938742942;
        Tue, 25 May 2021 03:32:22 -0700 (PDT)
Received: from [192.168.0.118] (88-113-28-221.elisa-laajakaista.fi. [88.113.28.221])
        by smtp.gmail.com with ESMTPSA id d15sm15776706wrv.84.2021.05.25.03.32.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 03:32:22 -0700 (PDT)
Subject: Re: #KCIDB engagement report
To: kernelci@groups.io, ndesaulniers@google.com,
 Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>
Cc: "automated-testing@yoctoproject.org"
 <automated-testing@yoctoproject.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Vishal Bhoj <vishal.bhoj@linaro.org>,
 Antonio Terceiro <antonio.terceiro@linaro.org>,
 Remi Duraffort <remi.duraffort@linaro.org>
References: <5a9bf050-0671-3273-cc4f-1b131445c1fe@redhat.com>
 <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com>
From: Nikolai Kondrashov <spbnick@gmail.com>
Message-ID: <d4c587c2-7eca-043f-06b3-7e1cfa125b38@gmail.com>
Date: Tue, 25 May 2021 13:32:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: spbnick@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PQQPtpHY;       spf=pass
 (google.com: domain of spbnick@gmail.com designates 2a00:1450:4864:20::433 as
 permitted sender) smtp.mailfrom=spbnick@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 5/24/21 8:38 PM, Nick Desaulniers via groups.io wrote:
 > Hi Nikolai,
 > It's nice to see our results getting collected; it looks for a given
 > tree I can even see the build results of different compilers.
 >
 > For example, here's a recent run of mainline:
 > 
https://kcidb.kernelci.org/d/revision/revision?orgId=1&var-dataset=kernelci04&var-id=c4681547bcce777daf576925a966ffa824edd09d
 >
 > One thing we need to be able to quickly triage when we see a build
 > failure with one toolchain is "is this toolchain specific or not?"  I
 > figure KCIDB has the data; is there a way to surface the results of
 > such a query quickly?  If not, that would really help us.

We don't have a ready-made UI for this, but I think I can add a Grafana
panel/dashboard for that rather quickly. What would be most helpful?

How about having a list of "Compilers" below the "Builds" on the page
you link? Each line in that list could correspond to a unique value of
the "Compiler" field, and give an aggregated summary of various
parameters, including build/test results. We can also have a summary per
architecture, or per "Configuration".

Or maybe something else would help you better?

Nick

On 5/24/21 8:38 PM, Nick Desaulniers via groups.io wrote:
> On Mon, May 24, 2021 at 12:50 AM Nikolai Kondrashov
> <Nikolai.Kondrashov@redhat.com> wrote:
>>
>> Hi everyone,
>>
>> Below is the monthly report on KCIDB* engagement. It lists various CI systems
>> and their status of engagement with KCIDB, and once we get to that, will list
>> developer engagement.
>>
>> Lines with updates are marked with "!".
>>
>> Not much news this time, as I had to tend to CKI matters, and had a couple
>> weeks of vacation. I still have to tie some loose CKI ends before I return to
>> working on a new KCIDB release and reaching developers with e-mail
>> notifications.
>>
>> However, I did try to contact Huawei's Compass CI with an invitation for
>> cooperation, but got no response so far.
>>
>>       KernelCI native
>>           Sending (a lot of) production build and test results.
>>           https://staging.kernelci.org:3000/?var-origin=kernelci
>>
>>       Red Hat CKI
>>           Sending production results.
>>           https://staging.kernelci.org:3000/?var-origin=redhat
>>
>>       Google Syzbot
>>           Sending a subset of production results (failures only).
>>           https://staging.kernelci.org:3000/?var-origin=syzbot
>>
>>       ARM
>>           Sending production results.
>>           Full commit hashes are currently not available, are spoofed, and don't
>>           match the ones reported by others. To be fixed soon.
>>           https://staging.kernelci.org:3000/?var-origin=arm
>>
>>       Sony Fuego
>>           Internal design in progress.
>>
>>       Gentoo GKernelCI
>>           Sending production results.
>>           Only builds (a few architectures), no configs, no logs, and no tests
>>           for now, but working on growing contributions.
>>           https://staging.kernelci.org:3000/?var-origin=gkernelci
>>
>>       Intel 0day
>>           Initial conversation concluded, general interest expressed,
>>           no contact since.
>>
>>       Linaro
>>           Sending (a lot of) Tuxsuite build results to "production" KCIDB.
>>           https://staging.kernelci.org:3000/?var-origin=tuxsuite
> 
> Hi Nikolai,
> It's nice to see our results getting collected; it looks for a given
> tree I can even see the build results of different compilers.
> 
> For example, here's a recent run of mainline:
> https://kcidb.kernelci.org/d/revision/revision?orgId=1&var-dataset=kernelci04&var-id=c4681547bcce777daf576925a966ffa824edd09d
> 
> One thing we need to be able to quickly triage when we see a build
> failure with one toolchain is "is this toolchain specific or not?"  I
> figure KCIDB has the data; is there a way to surface the results of
> such a query quickly?  If not, that would really help us.
> 
>>
>>       TuxML
>>           Initial contact in response to a report.
>>           There's a plan to approach us and start work in the coming months.
>>
>>       Yocto Project
>>           Initial contact in response to a report.
>>           Would like to start sending build and test results, particularly for
>>           older kernels. Would like to separate upstream commits from project
>>           patches first: https://bugzilla.yoctoproject.org/show_bug.cgi?id=14196
>>
>> !   Huawei Compass CI
>> !       Sent a message to Fengguang Wu, who was presenting it at LVC 2021.
>> !       No response so far.
>>
>> Please respond with corrections or suggestions of other CI systems to contact.
>>
>> Nick
>>
>> *KCIDB is an effort to unify Linux Kernel CI reporting, maintained by Linux
>>    Foundation's KernelCI project:
>>    https://foundation.kernelci.org/blog/2020/08/21/introducing-common-reporting/
>>
>>
>>
>>
>>
>>
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d4c587c2-7eca-043f-06b3-7e1cfa125b38%40gmail.com.
