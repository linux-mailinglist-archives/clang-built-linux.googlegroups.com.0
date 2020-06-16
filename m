Return-Path: <clang-built-linux+bncBCH6BRHDXYLRBCEWUT3QKGQERJEAOII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4DE1FBD99
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 20:10:17 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id p18sf16149243qvy.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 11:10:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592331016; cv=pass;
        d=google.com; s=arc-20160816;
        b=INa9OlLlDF2AaikFJQpB+B9vdZJ6SdXr5eglZb9YuNU7adcy0VAT3kWOdkp8XS4tN/
         mM7eUvAOQMRTRvpsQQ+RntewIIN1dZSIMZYH5wz5aHMFxapDKMTFAVk9K1CkVw2dblLO
         dW0parApjKTtXTnEK4H/tfa5BqXBLhcVhybFAb67D7dZPANxLbH8TSVEiYoY+xKXdDQO
         w1SHqiyvkpxgEz89WtYDM2XROmNOrNByyHKYAJxLPRFDn6AgsD2Dts07+FX4LDz0nZbd
         /14N7LFWJcOJcT+mm2mbolt360+oA+IfvEFCzLmtiL+INcBg+JJ8mmLOElI9Pd4JKBSp
         EtmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:reply-to:sender:dkim-signature;
        bh=JWge06gXu8XFW+pXzZTjSPHaZgpFRfjex95PS0Lmz/A=;
        b=GxtEU/T3iXEkicAp2xwvhcNhsH/J+QsSEy+0m7OMF7yp4+h4iIdfbApIXAbKxIwjwD
         43NZ/8w/KkGUnhjhEfA7tV6Fizkr788RZDkbk23MksiMXpgOIiDAsmaF3cYTOZ6IewGb
         GDKWI0TTEe03A4C+PhtsoQTkpp00FxzmIzCQAeuyscbmVd/yJYny9LuUUPyDRb+rGOr8
         v5nRV/dWD04v/wG89X2bKnMOJSdekdm0ZlenxbDSOV6Z5dBe7UonkDK78r6QbbN15NSL
         2Ub/YHL7zAvo7lITUwhtgtv8m76hsfwq0o34FTd1IsSz7d1HtfIRjL7Ox+TUM+BoG+f1
         BagQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=iDoi3OM+;
       spf=pass (google.com: domain of tstellar@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:reply-to:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JWge06gXu8XFW+pXzZTjSPHaZgpFRfjex95PS0Lmz/A=;
        b=mV7U/t++VJYkfHPpC9RJEu6Xu3FIZ78d2IwugrNKKj3l4PKcRczaGKt5l9Y4M7ZrrS
         vx7vJOaZCCjmh7fC9VCyb3h3rrtuGvHfiB/IhqknbuowmbpZPWXQww5JwyNTvQBIM+E3
         SpqMqcgn10pJ6KFsZWtx079s8PBRwEffn++cxrm7iyOGW5dmBz36ljicL+cynesON+P+
         hb+kIboMnwb4w4dUXzcbvkL57KpNCNpXQKqNq7Hq/vJJuGe398K6dRziB+Z67lOOlV+i
         QqHilmbijqkc4yza47bxTmJm6HQhW0VLVVtqog90/48T0+VPJ1YFjzuT6hH0wZuyEidv
         v4YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:reply-to:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JWge06gXu8XFW+pXzZTjSPHaZgpFRfjex95PS0Lmz/A=;
        b=BJlIiHSYmxZlpns/+nGQLiyMvenIX6u+O/NLcQj6tkOBU5+szIEzt4gHe158/RDXJK
         G2LHg8/6jQsNaXRjELQ57IrEAyPxqzZysBT7UG1GvQaAwq4cGZ9W+z8ChVlT8/+6gXG1
         f4i7Hko4YRc9iLAspc2wWLgyr4FlkBL/ulQJh4QvoTr+m5QzMylgHtUFn8B1SCyAi2hl
         xNmbFWAGksBAdojddpvIU/lsQ27reWNR7C2VswKFy78MaPorHKMUTKnvVBqPaIFbn13F
         cqV1wmCfotHSYl+hNoM0qvsnZ2kh9R49ziEzEgryh1V2UKg5Gt38rfAqSPG+CeBkFq/C
         cAPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531nnH6HKX1iI9losyG/AcO8IDVA3OaN86KIQB7xITHKo3gfqiMf
	bLMO8LLQAOPl8iDvGEIh+D0=
X-Google-Smtp-Source: ABdhPJyRK8cV6+oWkwkewq9pPW1i3ZzK5ZA1dAaSlH41Ad8Ou7dV0U+vZ1apXKNo00CahgyRj1pMvw==
X-Received: by 2002:a05:6214:a72:: with SMTP id ef18mr3677271qvb.239.1592331016698;
        Tue, 16 Jun 2020 11:10:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3f02:: with SMTP id p2ls7093664qtf.8.gmail; Tue, 16 Jun
 2020 11:10:16 -0700 (PDT)
X-Received: by 2002:ac8:34d0:: with SMTP id x16mr22860571qtb.300.1592331016301;
        Tue, 16 Jun 2020 11:10:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592331016; cv=none;
        d=google.com; s=arc-20160816;
        b=m4TzMskz2vQk1/p3XrO+14qnVNegBlywla0LADBBt4T9Nie1D+M2gD2mnhAhOdFx+E
         /sQfGfd51ffV37CkZnX3HhBoOiSThlXE2aGmnz7hoX56mglmiTTdT8KHty9wOi8HWlOW
         9orHKM1KaoH+gHy4+bMEryUJDlzEygag16Mn8KP3By5bQZI3u1Ll8K+OXeWatdzXoCEV
         WvKaGrpAZVlcM9VabZrvHPssR+x/7Mjfgb4SChCqy+4U16Ryn8gMP6D8S9PWhySPBMHo
         xkPKx9ScOnPy0nRnOmQrBiKYpUlUcXm5Nb4JmSqzIhHleD4BG+OkGsezlCR+fD9nI6jq
         miEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:reply-to:dkim-signature;
        bh=oqaQTeVHl80IMLUCBReUNYaEacSD+Olo81M0TlaOSA4=;
        b=keORNIYdcgDq0UScHQz8w2VwEh1hXPwShKQF9oLuUfrv8bOLGPhnhYCN4TI0p1wT+Q
         Xh/ddo8NTiarPwUHm7Q7qf3Zl7h6J196ADdmGigvi61QiJN7YKKo+VuvAP2+iWXq10dY
         uu4OLw6Xcmf4Ocur0IIrx6ExdJeV3CCMHi0+hNXG10XeA5hkpPlFj3aq4FHu1q1DBVhN
         D0UtpXXnFNgOHrWeYZEPlQRtWCBY4J1NPq8Sa/yY9d33WlaAbM72w9CBmc6rPcjAJXL4
         3mtyfz3MwJfAIse3sR3N9ZBduvKPQUT5hODamEoKGdfhpjsK4ychEMEZCSx2gXDa2qMc
         Pl5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=iDoi3OM+;
       spf=pass (google.com: domain of tstellar@redhat.com designates 205.139.110.120 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by gmr-mx.google.com with ESMTPS id y21si1370090qka.2.2020.06.16.11.10.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jun 2020 11:10:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of tstellar@redhat.com designates 205.139.110.120 as permitted sender) client-ip=205.139.110.120;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-44-3YH0IQ8OP3G-bpJpOeov-Q-1; Tue, 16 Jun 2020 14:10:02 -0400
X-MC-Unique: 3YH0IQ8OP3G-bpJpOeov-Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 399B980F5DA;
	Tue, 16 Jun 2020 18:10:00 +0000 (UTC)
Received: from tstellar.remote.csb (ovpn-114-27.phx2.redhat.com [10.3.114.27])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4596119C71;
	Tue, 16 Jun 2020 18:09:59 +0000 (UTC)
Reply-To: tstellar@redhat.com
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
To: Nathan Chancellor <natechancellor@gmail.com>,
 Will Deacon <will@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, ndesaulniers@google.com,
 clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org,
 mark.rutland@arm.com, catalin.marinas@arm.com, android-kvm@google.com,
 daniel.kiss@arm.com
References: <20200615105524.GA2694@willie-the-truck>
 <20200615115337.GG4447@sirena.org.uk>
 <20200615120223.GC2694@willie-the-truck>
 <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
 <20200616173728.GC2129@willie-the-truck>
 <20200616174904.GA3403100@ubuntu-n2-xlarge-x86>
From: Tom Stellard <tstellar@redhat.com>
Organization: Red Hat
Message-ID: <892a98da-2119-a6f5-629c-a93a3f993aba@redhat.com>
Date: Tue, 16 Jun 2020 11:09:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <20200616174904.GA3403100@ubuntu-n2-xlarge-x86>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tstellar@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=iDoi3OM+;
       spf=pass (google.com: domain of tstellar@redhat.com designates
 205.139.110.120 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
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

On 06/16/2020 10:49 AM, Nathan Chancellor wrote:
> On Tue, Jun 16, 2020 at 06:37:28PM +0100, Will Deacon wrote:
>> On Mon, Jun 15, 2020 at 07:31:05AM -0700, Nathan Chancellor wrote:
>>> [+ Tom, the clang 10 release manager]
>>>
>>> On Mon, Jun 15, 2020 at 01:02:23PM +0100, Will Deacon wrote:
>>>> On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
>>>>> On Mon, Jun 15, 2020 at 11:55:24AM +0100, Will Deacon wrote:
>>>>>
>>>>>> Here, the switch statement has been replaced by a jump table which we *tail
>>>>>> call* into. The register dump shows we're going to 0xffffd68929392e14:
>>>>>
>>>>>> ffff800010032e14:       d503233f        paciasp
>>>>>> ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
>>>>>> ffff800010032e1c:       910003fd        mov     x29, sp
>>>>>> ffff800010032e20:       aa0803e0        mov     x0, x8
>>>>>> ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
>>>>>> ffff800010032e28:       93407c00        sxtw    x0, w0
>>>>>> ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
>>>>>> ffff800010032e30:       d50323bf        autiasp
>>>>>> ffff800010032e34:       d65f03c0        ret
>>>>>
>>>>>> The problem is that the paciasp instruction is not BTYPE-compatible with BR;
>>>>>> it expects to be called with a branch-and-link, and so we panic. I think you
>>>>>> need to emit a 'bti j' here prior to the paciasp.
>>>>>
>>>>> I checked with our internal teams and they actually ran into this
>>>>> recently with some other code, the patch:
>>>>>
>>>>>    https://reviews.llvm.org/D81746
>>>>>
>>>>> ([AArch64] Fix BTI instruction emission) should fix this, it's been
>>>>> reviewed so should be merged shortly.
>>>>
>>>> Cheers, that's good to hear. Shall we have a guess at the clang release
>>>> that will get the fix, or just disable in-kernel BTI with clang for now?
>>>>
>>>> Will
>>>>
>>>
>>> This will be in clang 11 for sure. Tom, would it be too late to get this
>>> in to clang 10.0.1? If it is not, I can open a PR.
>>
>> Any update on this, please? I'd like to get the kernel fixed this week.
>>
>> Cheers,
>>
>> Will
> 
> The AArch64 backend owner said it should be okay to add to 10.0.1:
> https://llvm.org/pr46327
> 
> Tom just needs to pick it, I see no reason to believe that won't happen
> this week.
> 

I have this in the list of fixes I'm working through.  I'm trying to
get everything done by Thursday.

-Tom

> Cheers,
> Nathan
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/892a98da-2119-a6f5-629c-a93a3f993aba%40redhat.com.
