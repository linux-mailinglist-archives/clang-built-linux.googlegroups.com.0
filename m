Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVWFWSEQMGQE3JAQJKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3C23FBC64
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 20:26:31 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id n64-20020ab044c60000b02902ab5cf38d51sf1876229uan.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 11:26:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630347990; cv=pass;
        d=google.com; s=arc-20160816;
        b=dIk6lfHc6YXDGl5KrPHnIxGURieoQJqqQCsVpo/9hTGGf6Igd69L8MjcP3SWA5GkZN
         sYbQiCqNwFnVtM1IffSQxLnwk63hWVSddE1Ux+d+kySe5vTLIItRbdlwUXTZam4ifL07
         illKtoav6+mFyGXkvsjsvSXmTMVf/ZmC1t1nrTAoqDqDUrOIP7rDmdm6hHkoriJNBRkX
         qACFQMW4LhNHWWkwjXy7FkYMuRPgl8sD693GBZijWZHTYX2LTZeL2h21vHTEbH3nmIMv
         J6Vsbx+jhoL5nWFtkihihiqoxLvPCMXNNtTvhBRzLTIc06lO5cTrehfRdDQfthm7o41j
         UmhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=4sGZDVZuHyR+BdSbeh69Ell1PHek6W2SrFaG0ArIVZ8=;
        b=KvaxSLPUgCq5/38Tn+uHpA6uwWEHkt39kEG9L2w/NHXtDoab7+GB/sWILaMsg5BzLC
         lLaABsO7eCm928f+wb9fNb5bdK72m2a8nLHpI38VvMilasw29VDLrf9vYCS9w+FvXt5v
         3CqLxMXONvEUTDNkGyLDefGRSRfR40yrpR5Cu8e60JZBtYHxApNdECBrJxyTP+/f0N61
         ttnop38I8pAgDxTSdIS2S8qwA0hyU5BsZzLBeEJiNOyzdqf5dWEDzT/BrF5AUcYh4GaB
         fliMNQElevU8XAWyBLSMwdxNeK/UZX4GV2NZxY/pPrVSO0dsBKlDPCNDfxcIUJhZ3HRi
         hznQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=L63RZRBn;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4sGZDVZuHyR+BdSbeh69Ell1PHek6W2SrFaG0ArIVZ8=;
        b=AGq6iyYrpfQucPAY8RtjVIzQPNCad/lBkN/VquOV1CHG/gYMefZ64X7xKEEniMUNWB
         3ASdMTggyrShkBpEHLYTBIMs6Zn2xyqV4kxoRp4V4RrqlYIXGlTVJwrfH1EfaiUpPP0F
         rJzwEZx/BZoYo9X90m3tKua+fpzhRXMSNMSlhNwZ6YyOGi6QnDiFh1eq/BxyYx6mqm6M
         F7GxKhuxTbHEMO5e58rcVHx86v04hc9pxyFfIR2OHStjeNlBSXOAjMHZRU79P4r4sXhe
         CiWAh25zCMS3xxmbcn36RQrGbqW73ezB+lHRoMikscdGv0FQpVy3f6OWUaYyXfLaplaU
         ydnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4sGZDVZuHyR+BdSbeh69Ell1PHek6W2SrFaG0ArIVZ8=;
        b=dVKw+oKN+qChUTEFlhNZLX3e2mamN8q4gsHPZrXq1GnvcRGgtax8UGdHispslnCwql
         RjT+xdrrEdcVr8iv02CrBif1B3W0qlc9PeoHxd6azDGPM5CMshLcwbeVQ5LtnOqI7e/s
         xrKo1+KxfWoyQu7t8XChSjkk/TLwZ08m1jxOBoAVBqKTN3mEM9I7Gi1QetjrNUGHat6D
         A6QYfggN8pqitJLky9WrDMlr/agr+dkVKie5zG3Opzbn/E6AlCA3NKVvrh79j0imvv22
         eBAfUYeCMdNlopZDu0ZRqItOqx4yoZaHEsX3JTqFhYb+l44FEax43mdQAWB41qsbj/bh
         ZgVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/+XJ1A+yIHUmZ+UpG4khepi2B+8tZ89ZNj64/eNiOiKSsbilS
	1flyeC2cPwm9B1Cz6Phn3O4=
X-Google-Smtp-Source: ABdhPJzdtpKx3dtM87dT68/l4tp/TmuEQCHL8SFalW1z1yZbDK4rzN/MBi6Bx+lMIlZcxF/u16ie1Q==
X-Received: by 2002:a1f:2715:: with SMTP id n21mr14793034vkn.17.1630347990358;
        Mon, 30 Aug 2021 11:26:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f294:: with SMTP id m20ls1262739vsk.3.gmail; Mon, 30 Aug
 2021 11:26:29 -0700 (PDT)
X-Received: by 2002:a05:6102:94e:: with SMTP id a14mr3692531vsi.1.1630347989729;
        Mon, 30 Aug 2021 11:26:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630347989; cv=none;
        d=google.com; s=arc-20160816;
        b=OAeYAX6WLnYg/J+XgEbPAJaF3nFhhA3g3EdFwkaRT67U5BJXSzNgdtTTa1j19TD1MM
         +kZj7MkDH5QUEZer6bs/ZxLcs8oRM2G7aYrUB/FYBNBmXTTALet26nd+mTs2qQFjHXBz
         Pkp2jzTKW3iHdyu1tYrElscb+F2cN0nNd6Ntbm1p6F50542GiCkVXEWlV4Wr9io2H3t5
         jX2dMhn6b3zEpCAeDGvCftFTuZBm4RkRZNerP38WDxxmBf4NHdsYqXkDf8KVE9Q4I2iB
         lL0bI2DtzxCREvljmOK2JU15Zo8S/gXtkFeWK0sVY9kVsjzXK4SIebfLu+LX/5X7CGab
         N8Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=2PM7eeCbvJVngIlyv1P2yBo1Varkio/kTI34LuhUCyY=;
        b=IYswH7g1Q6WJ8GlgOwiOui+hTh/VKIoViaG6qKaCigaY8Ae/Ik+l2XD2Kce03rOpGo
         7Rod75SvFgecK5rY/TrSLiTE3fALIx+gQ/k19ADggaFbg2cjPLrWwBhIwqPSD7WtJIVy
         p3m5qQOyKSUpEF55WWbIc15xfH5XmJLTjJ66kRxcnIDCbseazgiwrnRRtn2keZs4j5Fl
         2n0fBCeJ4EiNDpobn5kiNEEPLW/EVgNZKOelfdl9lyu56JYcc/ebPlj+KzPtplaZpz9f
         NjWCI9vebxOVlcbwyZyX68TpdszogpqMQM6Yd+0duYdwljimx0eA+GR4ytQSLpBYUT41
         gwIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=L63RZRBn;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w131si775791vkw.3.2021.08.30.11.26.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Aug 2021 11:26:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7C39060E98;
	Mon, 30 Aug 2021 18:26:28 +0000 (UTC)
Subject: Re: Clang-Built Linux Meeting Notes - Aug 25, 2021
To: Nick Desaulniers <ndesaulniers@google.com>,
 Dmitry Vyukov <dvyukov@google.com>
Cc: clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com,
 kernel-dynamic-tools <kernel-dynamic-tools@google.com>
References: <000000000000790a6a05ca675029@google.com>
 <CACT4Y+abiC4sn1eYZhb-QdqB6NZ-oQesvRb8VH08Kmr+YdokTg@mail.gmail.com>
 <CAKwvOdkFf4NdheGTL4wCJXrMaRK9oyU7teoodEYSJWUvb=-TKg@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <4f0cf089-7a87-b604-4cd2-e7600a4dc96e@kernel.org>
Date: Mon, 30 Aug 2021 11:26:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkFf4NdheGTL4wCJXrMaRK9oyU7teoodEYSJWUvb=-TKg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=L63RZRBn;       spf=pass
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

On 8/30/2021 11:06 AM, Nick Desaulniers wrote:
> On Sun, Aug 29, 2021 at 11:17 PM Dmitry Vyukov <dvyukov@google.com> wrote:
>> Does the CI run any tests or just boots kernels?
> 
> Just boot tests for now. I refuse to do further runtime testing until
> we can get headcount to address failures from runtime testing;
> otherwise we'll just be turning tests off constantly and running to
> the next fire.

Technically, we are running the KUnit tests for both KASAN and KCSAN, 
which run automatically at boot; however, we are not doing any 
validation of the actual results so unless the kernel panics, we won't 
notice a test failure unless we are manually looking for it in the boot 
logs. Probably something that we can add fairly easily later down the 
road since parsing the results format is easy but like Nick said, we do 
not really have the head count at the moment to triage failures so we 
don't bother.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4f0cf089-7a87-b604-4cd2-e7600a4dc96e%40kernel.org.
