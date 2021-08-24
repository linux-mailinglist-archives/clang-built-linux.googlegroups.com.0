Return-Path: <clang-built-linux+bncBCH6BRHDXYLRBQOXSSEQMGQE7OPHWLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C923F66BF
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 19:26:26 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id u8-20020a0cec880000b029035825559ec4sf15340608qvo.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 10:26:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629825985; cv=pass;
        d=google.com; s=arc-20160816;
        b=s7VHJzRAexXd0I+4r2PJBC/6/Lyozb9h/6RIDtxLv3b0H5yGWhlt11VQFnYTiMjfNm
         IbtYqlWtUtC0/H1rixXeaaGWJ9LU0vEIh70RnDXACkLOEW+gDXyJuiiOGJi0DeTUYqu2
         XlbeJmEoVIvucuBh0KwHgtCH/nEr8lc5LPcdzH5Q1TrBSTwqEaq1ucuy0aDWSl7t9HLb
         IxL7IHBHpPEkrW/TWZ8RuoUGaZz99H7sopF/YfoWKhTEpkzfS11IB/LMxz0ljhJQU4qs
         UsBRmZXvgbNyd7lD4FNZw+o3TORS4v/sQqrFUczi9V22qOgLhDZ0vxUQVt44LOyfGqlY
         bwaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=pbJ2rLSJrRQkYzLprqcxAzkLuuSQdrAeeTZF0UwqAEQ=;
        b=c5O2RA/32tAzdXr4STUq97yExTA0jFHhbzyfHCt6hlQoIwXAd4swtivkP7LRW5hFMC
         8n0PsNrX8GbgUCMcoszjjEbuw0uqfJrU1Vtq5+ETB/JOWRJYnpk/Kn31sLaVRCyK9P4I
         GiGI7dxXdWuflSlkCjwgjHEV74gH20qZwUrhCC7DGBA76Vyez2UTQEKqUoRPGGYZYhvF
         KopLyaUz2+ByYISWDsGb5njKaR5/FpWLXVf9C9BrOSkRJX01yWlHAP9T9Ra9VGjpbx1e
         ZEsh59pMsGuTheumeRUlEzkTp9LHUoMqM4ZbgQ2kZifR4NnXezH4vwsuAIkZZ+KmIbBb
         FVLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=X78eYDuB;
       spf=pass (google.com: domain of tstellar@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pbJ2rLSJrRQkYzLprqcxAzkLuuSQdrAeeTZF0UwqAEQ=;
        b=oteZC73QrenG9rlk26kkXzusB558hqMq3l9kxQseFpN2YpQD9HW+RDQmUbvRIQnO4l
         s3n0vTEpVZpYxURF5vzckYiIdVU20SIEF22nDHcJyYkT1xe/i0iHjsui6ISWDlu4BxR5
         EfoenSBloMl6iIjAaaXp8x+mDPDpZjWMMD9euyj0Kp00tZt9BRDG9xtlOSkY9Up80b4/
         6whqdeHJ6OgFamwdYZDDXPXYN+xPAC8fK9aXZPchq1qwKEWqDV+1xQp4E6J54n1Lijt1
         eMxrfoRPSA5Koe7uEQM9tTLkm50alkgX4gyXbdNJHS2NXEsoNWZei+RqTXk+e3rCehDX
         nUTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pbJ2rLSJrRQkYzLprqcxAzkLuuSQdrAeeTZF0UwqAEQ=;
        b=lhF4mFfJnmhATxNaXY0KFyoITIonr5/ULUWX4jJbvmq1eQCEqeafrLwUCKmX7xvFzo
         Oh562+JKnxm4k41dXFlEnqOKnphcbC9+ba4caSBRfLlcGrwS4GGWxDxoAWPUDnlo/nNt
         qvhR8QgrxK5LdFwzNndzn/7nm3Rsjas6tIOj+G0ICBwXcIftDotg2GUosiJ6yZHPIqcV
         u4g5/q5GFFtCSLEpJmDMXsl8ykHVysCtNGogyywvRSVlFQUkf8O9K0TP6VZ9aTiZtZzz
         lQ2FJJGY29PlBle5kXTjbte6vMP7RSwphzfAiWhvLr7yTaEWlvzuZWqGh9SOFedW23y0
         PNdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533h9lUq1/SHqxlCPgH5oZnaKOQRoXb8MHnaTfqhjsgrXgbsT/xE
	mnc3nyJgbHTgDw2FEOdGtfE=
X-Google-Smtp-Source: ABdhPJziH5hcNpI72X37hQxO9RIaXlrq2piMLqSFFX9OxgUaxQlTo8wDBXwaYvVtAhhSUcdkdkXs2w==
X-Received: by 2002:ac8:58cf:: with SMTP id u15mr7738940qta.142.1629825985383;
        Tue, 24 Aug 2021 10:26:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:628c:: with SMTP id w134ls10254293qkb.7.gmail; Tue, 24
 Aug 2021 10:26:24 -0700 (PDT)
X-Received: by 2002:a37:a405:: with SMTP id n5mr27990461qke.218.1629825984916;
        Tue, 24 Aug 2021 10:26:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629825984; cv=none;
        d=google.com; s=arc-20160816;
        b=ShwG0bO92DgizlkYvw5yqUdDTkG+7x4jdLPvwBt4BDBc+CpwmF/Aj0TADnePWUwxNN
         KaTF+KjyJvfDv/C+tFjwfelFFrp42hvoJyfNpQbXnPRREWNcaS8JVQ4vN4p8f9rfs1O+
         wQk/VAtc8w7PcLdH+lvhbQkecey2JCSCw5mpK1GyX7W2+dr1/49cfFRXRDSkd5liICK6
         Q6nDOegTr6O+wH6BJIx2XPuVYPOiifcrugZ/2uNUz9f4DYu+uKekqFDhgNzsO5pxKFnq
         ch7TgTZCNCOb58Fd+fikbBiKvA5Z5TWMzvSoGAvP4m634CKPGPHDmWMgwy3iGsbKBqd3
         cY0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=wH/laxt92cAPsS5DORg7moxidJ+sFb/ugbwwhp2S/dk=;
        b=j5wBVMask9eJS3Yjs/HolZLiuK8Ni733/r/i1YicA6Jak/fQ3SFXZiRnSBqil2yRz9
         D7JU2+GhXLM0xYTKS99V7MYsDT/S/tNh0tIeA9FGoTByZpyfEJSVNTbpivhY0XYMLMHV
         CkdZUsqvPbAgScyQDxifRqsFUZlorTA7CY7b48Ak1pcQLXzJOoDMbk57Y+9+nz9QIaR8
         H2RUVVp97tO6rAL7GG+lmj8yyZU7sN9HDw8g1o4vNoMJC0pj3igRufjGbLIBjfFPSJbB
         +qYNMPkfb3VoIhgbVRK0Chr68Y0IO5NReulymbSa8MrBx4EAmIUQT5luR0NL3YjNokrV
         nJbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=X78eYDuB;
       spf=pass (google.com: domain of tstellar@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id t12si1047436qtn.4.2021.08.24.10.26.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 10:26:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of tstellar@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-593-13Cko9PHO0yaaKk_XtpC-g-1; Tue, 24 Aug 2021 13:26:20 -0400
X-MC-Unique: 13Cko9PHO0yaaKk_XtpC-g-1
Received: by mail-qk1-f197.google.com with SMTP id 21-20020a370815000000b003d5a81a4d12so9612218qki.3
        for <clang-built-linux@googlegroups.com>; Tue, 24 Aug 2021 10:26:20 -0700 (PDT)
X-Received: by 2002:a37:4141:: with SMTP id o62mr6348375qka.380.1629825979620;
        Tue, 24 Aug 2021 10:26:19 -0700 (PDT)
X-Received: by 2002:a37:4141:: with SMTP id o62mr6348347qka.380.1629825979334;
        Tue, 24 Aug 2021 10:26:19 -0700 (PDT)
Received: from tstellar.remote.csb (97-120-182-34.ptld.qwest.net. [97.120.182.34])
        by smtp.gmail.com with ESMTPSA id t66sm11093328qkc.3.2021.08.24.10.26.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 10:26:18 -0700 (PDT)
Subject: Re: [PATCH v2 00/14] x86: Add support for Clang CFI
To: Sami Tolvanen <samitolvanen@google.com>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210823171318.2801096-1-samitolvanen@google.com>
 <1706ee8e-c21c-f867-c0be-24814a92b853@redhat.com>
 <CABCJKufrpx9arM-hfX_bR-efO+13VBMFNBTe4ff036VEZi1LZQ@mail.gmail.com>
From: Tom Stellard <tstellar@redhat.com>
Message-ID: <9349a92d-f2a7-9ee4-64db-98d30eadc505@redhat.com>
Date: Tue, 24 Aug 2021 10:26:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <CABCJKufrpx9arM-hfX_bR-efO+13VBMFNBTe4ff036VEZi1LZQ@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: tstellar@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=X78eYDuB;
       spf=pass (google.com: domain of tstellar@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
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

On 8/23/21 10:20 AM, Sami Tolvanen wrote:
> On Mon, Aug 23, 2021 at 10:16 AM Tom Stellard <tstellar@redhat.com> wrote:
>>
>> On 8/23/21 10:13 AM, 'Sami Tolvanen' via Clang Built Linux wrote:
>>> This series adds support for Clang's Control-Flow Integrity (CFI)
>>> checking to x86_64. With CFI, the compiler injects a runtime
>>> check before each indirect function call to ensure the target is
>>> a valid function with the correct static type. This restricts
>>> possible call targets and makes it more difficult for an attacker
>>> to exploit bugs that allow the modification of stored function
>>> pointers. For more details, see:
>>>
>>>     https://clang.llvm.org/docs/ControlFlowIntegrity.html
>>>
>>> Version 2 depends on Clang >=14, where we fixed the issue with
>>> referencing static functions from inline assembly. Based on the
>>> feedback for v1, this version also changes the declaration of
>>> functions that are not callable from C to use an opaque type,
>>> which stops the compiler from replacing references to them. This
>>> avoids the need to sprinkle function_nocfi() macros in the kernel
>>> code.
>>
>> How invasive are the changes in clang 14 necessary to make CFI work?
>> Would it be possible to backport them to LLVM 13?
> 
> I'm not sure what the LLVM backport policy is, but this specific fix
> was quite simple:
> 
> https://reviews.llvm.org/rG7ce1c4da7726
> 

That looks like something we could backport, I filed a bug to track
the backport: https://bugs.llvm.org/show_bug.cgi?id=51588.

Do you have any concerns about backporting it or do you think it's pretty
safe?

-Tom


> Sami
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9349a92d-f2a7-9ee4-64db-98d30eadc505%40redhat.com.
