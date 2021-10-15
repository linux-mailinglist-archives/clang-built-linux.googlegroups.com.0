Return-Path: <clang-built-linux+bncBDC2RCVE24NRB4UQU6FQMGQENJU3AII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB2E42FAFC
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Oct 2021 20:29:07 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id t16-20020a5d8850000000b005dc56fcd7e5sf5220913ios.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Oct 2021 11:29:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634322546; cv=pass;
        d=google.com; s=arc-20160816;
        b=B2dzrpFM9PcWF7ZhqGMHW1b78oUPjAeFYaZxN/zNWYSBiI51fA/keuy+OGhlf2T9B6
         1wJu8oen1GGJRfQk+WNG7xX+BJxt67LajfWeTKd2eu+8nJiWfebe/ltYPLMmq/7jfswz
         DKDkrHcB0SZdsGkZaLtNCthGrdoVM2Y3oYAo2V1zNtQmOvS4FlNqDAhmLP/1mGLmJ/gV
         ac2CLCDdDdUo3FcVDedUXa37TlB10pwvuxYyhaFPQINKv4qgzhBiRVK11jJaqQ8fKHZ2
         VKHxmAQv+hV5zOiDWkH1xjPEqfS7QMzX1zsprv0giYoCXiMmvbOlcuBVUTzOTI1BLb/I
         02qA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=YYgvs644uRe2jzqKTa2GyccwKq+adpYAuoRnlvQ/3o0=;
        b=pcjC5pECyljl7z4Vq0XinxXGnr9c5fJcApcnFbn9T3/z2z2D5QYfbpSdi79Ex8yTUI
         bwzym8fcApBM5HKtfBTws6ZFNKxm/LZK/U7tJZzM2g51DO32LeAWjttG5AvRTz/cFV8j
         7JoPl3fjwHfkJthOB/W+/40++W1sbgnNm8VpOPRsMT8p9BG3bcahRQLq5op1SFtpbh7i
         hNNpO2lQPtz4w8dBI4TNV1QXfjXKJQK+KL5c0hXBLN3IwiXIji9lR6JZN7vryfPbneVB
         ChynzmZvj5zPi98ksqMuK9ZxGW4vvw4AOo6CInYVQg6R3LRQAi6ovnptz1L/3WdPRLUc
         JxVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.132 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YYgvs644uRe2jzqKTa2GyccwKq+adpYAuoRnlvQ/3o0=;
        b=G8IIG9ZmaLEITDkp+BlQ5DcmGrO/vZ7Nag1/hwv75kEPeOmwSUNMgTConRJT9r8383
         Q/urSsXG2qVwYRpvC9yzwrCcIUiJOL6nMvvK3BhWExzhFV8QBr5UVUV4HWMd2brYG0Ef
         3UxQbSBw2SxhG3KiyLI8KOqG3N4QT8mhT1zCmn+REQCZ6r9GBVmAsVhb+J9AbGypRLx1
         alsFSOzYLDOhHsYTLBhIRFQPIaurA5o60xkvvViJPDsz0TBV6vSUzHc7uxdEI+Pk3/Wu
         1X0u5SM0wyFq/APcYZ3B3lq2k1Q+kleH0AHQPctMMNi/++kXJ4hHMTPLWTUtjoFA/QMQ
         z2rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YYgvs644uRe2jzqKTa2GyccwKq+adpYAuoRnlvQ/3o0=;
        b=cUi6CxnZt5oHS7sJMcQIDAlj0N0sc+sEkpDhbHN7H6wvxZ2WjMMc4fL504o4skg8Yz
         pNb8OpGeggtDssbs2VrY/cFGOKSKqhbeUxQCdA52uRjaUUggyo/3lcfJYqJoksbdcBQb
         zGavoBGFBdwTCO9w//df+gX+4KX0Awtoc6zYJX0a2Rvvtbi1DE50WS5jKzWHMrzmShqJ
         rPh8sMBWHtADoio6yBZq5mE0TNV3C0jdfze+fTYqmRj7YuZnrc9Bsw8c3cYELd2s8sOP
         ryL1fY6q8L1vCFVBVgXQa07OwSiFJSd7eCm2QHMUOc781KWaoeW8+pig+G1U/erC7KFu
         4kMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533BesmLi47ryZKC2VsfTCtxDd74mip/v/f8oQgogE9GphGJmqqX
	Ou2iBbYLFwwYm3fNldkELpQ=
X-Google-Smtp-Source: ABdhPJyC6av3rrQRU67PwaKAJFQIbElwNrNGHjb7Mcc4u0FZmhp2JVyB0XVA1iTiqAlS/dYSvFYEZg==
X-Received: by 2002:a05:6e02:188c:: with SMTP id o12mr4649915ilu.321.1634322546552;
        Fri, 15 Oct 2021 11:29:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c646:: with SMTP id k6ls1341667jan.7.gmail; Fri, 15 Oct
 2021 11:29:06 -0700 (PDT)
X-Received: by 2002:a05:6638:3796:: with SMTP id w22mr3502417jal.25.1634322546188;
        Fri, 15 Oct 2021 11:29:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634322546; cv=none;
        d=google.com; s=arc-20160816;
        b=EFVENfHBCPF2R/Qun0JozSdBivGSe17vJqN4aG3sXu/QQ3VxuUa472f4bVFgRx92wt
         BsgmNKJAALDAiQE03MSl+BXTIBUTMcuqmRqRBNF6Hp7WOsb05/mw3d/QELjj1zMTw5tW
         ttJqHAcPE2/oV3rllD0J7X52YMfLCTxOJRQ+QUJlAV6xk5h4qrs2ed49mAK1Cfu52zTS
         x66AT/KhLq9QE33Q+/eaitBnEnhSE40CPc/exdqBcqgRISrS9JDMbVsYbQC2X+l3auNp
         QSiznzN8Efsu7iTUBlsC2j5hMR3eSXaQRmiBLXa8TTpOvAkYNyNH3pSVQqW9QQd2Keb1
         XqcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=A+WwOGlAXKrtflhghhhqzmJGPvR04WTMqtrd68zk228=;
        b=bPsYXnUkvWDYhtL7EKpnBCd0KKoLkwWHY3buiqrGLBIyzoogPnYJrWyz7xS7hNPCbV
         9na3vVAUEZ2xUMPbDgaLwF5e9a6k2GHTrViaOWDmNEUyNY1+lgN3x72BP+xU3xVKRq8T
         hgqRM7r9ISVSdspyL5oNqUmhKmYs+K6KZJCfiJbI2u2gHFXX5bGrPLDP9qfU7XgLfPAd
         BFWT732V4d9PuxjG+gDQclg9S1RK80i/G/ciWxjFcsldShwZJBPic3T5PseZfbDn/jko
         npRbiIKeUVpI+aFCYaBN8ONnD8npBEbNH6g/5mpYLrmkCY3bderASSnGIVWBY936yWk1
         vXdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.132 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-132.freemail.mail.aliyun.com (out30-132.freemail.mail.aliyun.com. [115.124.30.132])
        by gmr-mx.google.com with ESMTPS id j18si547829ilc.4.2021.10.15.11.29.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 11:29:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.132 as permitted sender) client-ip=115.124.30.132;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R131e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04426;MF=ashimida@linux.alibaba.com;NM=1;PH=DS;RN=28;SR=0;TI=SMTPD_---0UsDzA4._1634322537;
Received: from ashimida.local(mailfrom:ashimida@linux.alibaba.com fp:SMTPD_---0UsDzA4._1634322537)
          by smtp.aliyun-inc.com(127.0.0.1);
          Sat, 16 Oct 2021 02:29:01 +0800
Subject: Re: [PATCH] [PATCH V4]ARM64: SCS: Add gcc plugin to support Shadow
 Call Stack
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: masahiroy@kernel.org, michal.lkml@markovi.net, catalin.marinas@arm.com,
 will@kernel.org, keescook@chromium.org, nathan@kernel.org,
 tglx@linutronix.de, akpm@linux-foundation.org, samitolvanen@google.com,
 frederic@kernel.org, rppt@kernel.org, mark.rutland@arm.com,
 yifeifz2@illinois.edu, rostedt@goodmis.org, viresh.kumar@linaro.org,
 andreyknvl@gmail.com, colin.king@canonical.com, ojeda@kernel.org,
 luc.vanoostenryck@gmail.com, elver@google.com, nivedita@alum.mit.edu,
 ardb@kernel.org, linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-hardening@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <1634167668-60198-1-git-send-email-ashimida@linux.alibaba.com>
 <CAKwvOdkv70XDdK-k3n4ycFQsz+h7V-sTiH8RuxxaLofp-okweQ@mail.gmail.com>
From: Dan Li <ashimida@linux.alibaba.com>
Message-ID: <722d9662-e27c-2efb-e8cf-d505b6950475@linux.alibaba.com>
Date: Sat, 16 Oct 2021 02:28:56 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkv70XDdK-k3n4ycFQsz+h7V-sTiH8RuxxaLofp-okweQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: ashimida@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.132
 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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



On 10/15/21 2:44 AM, Nick Desaulniers wrote:
>   On Wed, Oct 13, 2021 at 4:28 PM Dan Li <ashimida@linux.alibaba.com> wrote:
>> --- a/include/linux/compiler-gcc.h
>> +++ b/include/linux/compiler-gcc.h
>> @@ -50,6 +50,10 @@
>>   #define __latent_entropy __attribute__((latent_entropy))
>>   #endif
>>
>> +#if defined(SHADOW_CALL_STACK_PLUGIN) && !defined(__CHECKER__)
>> +#define __noscs __attribute__((no_shadow_call_stack))
>> +#endif
> 
> Cool this is a nice addition, and something I don't think that clang
> has.  For any new feature, having a function attribute to disable it
> at the function granularity is nice, and plays better with LTO than -f
> group flags.  Though that begs the question: what happens if a __noscs
> callee is inlined into a non-__noscs caller, or vice versa?
Thanks Nick,

According to my understanding, all inline optimizations in gcc should
happen before inserting scs insns (scs and paciasp/autiasp use the
same insertion point). Therefore, the check for the __noscs attribute
will also occur after all inlining is completed.

As in the following example:
- Since __noscs attribute is specified, scs_test1 does not insert scs insns
- Since normal functions scs_test2/3 uses x30, it needs to insert scs insns
- Since __noscs attribute is specified, scs_test4 after inlining does not
need to insert scs insns

__always_inline __noscs void scs_test1(void)
{
     asm volatile("mov x1, x1\n\t":::"x30");
}

//scs insns inserted after function inline
void scs_test2(void)
{
     scs_test1();
}

__always_inline void scs_test3(void)
{
     asm volatile("mov x3, x3\n\t":::"x30");
}

//no scs insns inserted
__noscs void scs_test4(void)
{
     scs_test3();
}

ffff800010012900 <scs_test1>:
ffff800010012900:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
ffff800010012904:       910003fd        mov     x29, sp
ffff800010012908:       aa0103e1        mov     x1, x1
ffff80001001290c:       a8c17bfd        ldp     x29, x30, [sp], #16
ffff800010012910:       d65f03c0        ret

ffff800010012914 <scs_test2>:
ffff800010012914:       f800865e        str     x30, [x18], #8
ffff800010012918:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
ffff80001001291c:       910003fd        mov     x29, sp
ffff800010012920:       aa0103e1        mov     x1, x1
ffff800010012924:       a8c17bfd        ldp     x29, x30, [sp], #16
ffff800010012928:       f85f8e5e        ldr     x30, [x18, #-8]!
ffff80001001292c:       d65f03c0        ret

ffff800010012930 <scs_test3>:
ffff800010012930:       f800865e        str     x30, [x18], #8
ffff800010012934:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
ffff800010012938:       910003fd        mov     x29, sp
ffff80001001293c:       aa0303e3        mov     x3, x3
ffff800010012940:       a8c17bfd        ldp     x29, x30, [sp], #16
ffff800010012944:       f85f8e5e        ldr     x30, [x18, #-8]!
ffff800010012948:       d65f03c0        ret
ffff80001001294c:       d503201f        nop

ffff800010012950 <scs_test4>:
ffff800010012950:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
ffff800010012954:       910003fd        mov     x29, sp
ffff800010012958:       aa0303e3        mov     x3, x3
ffff80001001295c:       a8c17bfd        ldp     x29, x30, [sp], #16
ffff800010012960:       d65f03c0        ret
> I noticed that __noscs isn't actually applied anywhere in the kernel,
> yet, at least in this series.  Were there any places necessary that
> you've found thus far?
At present, I have not found a function that must use the __noscs
attribute in the kernel. I have only used this attribute in test cases.

> Overall, I'm happy with the patch and am ready to ack it, but I would
> like to see a link to to the upstream GCC feature request for SCS (and
> one created if it doesn't exist) cited explicitly in the commit
> message.  I think that would be a good demonstration that this can or
> will be upstreamed into the compiler proper for the compiler vendors
> to maintain, rather than the kernel folks.  The compiler vendors may
> have further feedback on the approach, such as my question above
> pertaining to inlining.
>
I have submitted a feature request to the gcc community, and waiting
for a follow-up response.

Is it fine to add the following description in [PATCH V5]?

A similar feature request has also been sent to gcc.
link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=102768

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/722d9662-e27c-2efb-e8cf-d505b6950475%40linux.alibaba.com.
