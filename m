Return-Path: <clang-built-linux+bncBDC2RCVE24NRBIHQU6FQMGQE4XNZYCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B9F42FDAB
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Oct 2021 23:52:33 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id c140-20020a624e92000000b0044d3de98438sf5949916pfb.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Oct 2021 14:52:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634334752; cv=pass;
        d=google.com; s=arc-20160816;
        b=oGT6xbANM1/4xpqQxIV2VbuPWrKUlddqmeJSm4R5F8JyLvI9kSCn4FOFeYAlhb9heL
         QqJKfC2EylwxY3/kunHEYqcC7NJVUZfNwse3MxcXxcgwBOiaFsGm7X9qps0ahDYO5TYz
         5HbT8nEda70bik6dpzXKjCCvo4/RySoQGkTFoMhwZ4A/u1WnfDVJ08NxvQMmChOgVtRl
         SFi3y/CxR2ZLLGse3Y04MWMen6/WtPIVcb3BwFbPkX35H25RjM1lDnIiqWhNmAoz/ASS
         x8P7ZzcvevtNArqfnoW+HfnDRI3E+HdLd8VZcUWeLRSVGofie8jEfVebG8+3weHDdYaT
         XAoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=me+7PD6uNL2jjIKNWS3UZSrYxNFdIbKs8sb1Rc2HBPU=;
        b=oPmbKD/ztYw3XDPXawV7emWcFpjV7NtfHsDvFHBgCI8Wn0K/9oOfRKoHbJqVAvPPbf
         NzwqpG59XNYiImD3lkYF9aIrPyuACfdo8rqICYhKeQfGJ33nauAI+rmHKDGuJY1WwtO1
         D7kmu3zNmryi8e8/kGiOUkHGz4WcuLg709gBXwe9vQUd/UyC70niU5480rX9QwQ6gWFn
         CIxo+d53camdWYch7sEXC2eThfeZ3z+otL9wnvuN2bu2AAkXaUqjV26wtfr4XuaTUFc+
         S991x1Az2pmhe7VbMYWw/2DgrNDRgRv21S9fRb3K0f0IqKa8lYYp3S+8SFo1QKa2JhxL
         ecyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=me+7PD6uNL2jjIKNWS3UZSrYxNFdIbKs8sb1Rc2HBPU=;
        b=UCguWATMMsvHfOfB8O1wqmqo2S+weyA4mxx448DuSDwYDBZQAH+0ooU7TrMUA6CcqF
         faTlsvhQetGG0VzcDIJ0IUzf3i3hpfEY/8hFa0qdUjOMxcnF5+NIB5YMSDWg1PgkJaiq
         jW16UnHjeqcjx19bGCbgIF4ptHNL4G3a91doVHz/feZqTDxvmuDQkxmB0TSJlX9TW7Hn
         /5eT/chgg20CFUNuFm4Ds/PVS0+ene1SpoiCA7vYH0IwGKNupT8ufuYweoFv/dg1OWUq
         UUrLyCbImoc8jScp0q1f9D6JbPHznV4RrajIIB9M3N+EBG1aIduiMr761kUMgGrftUiv
         eH7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=me+7PD6uNL2jjIKNWS3UZSrYxNFdIbKs8sb1Rc2HBPU=;
        b=u8rw6ciW6LuYJxhFS1pcWalcRittYYmSzATCMhSnUHp5Y9jptQZh18EA0dGXgqvGfC
         q/c7GV23Q/bkfZJ6SfEnxJ7A6EM047VOgsr/iFYzlabaNJvFj43CONO0BJay8jjqexRb
         z0lAVYsXU/NO25z1MQwF4E3Qx3PxZCsW5IvIBccO5JlBrSCrSDxLELnY8UlpipJnWLPd
         b6MB3Ji6d7ADchXAoJktgYSEVa9k2IA8n54CORlu//PH8YU4sqD7wMkP6BHWY0DcqOcs
         iosSzmOy8YxS8IMLIiOM0Vf/5R3hRfyOETSocwb7DG5ryF28yuI0o7ovoUfxFKuf/fz7
         IWDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UiE4P3BQy8VV7R/hdNTSNHPtkM7/cKX3OWu2sbgkZTHYU3d5K
	IiTgCFDxzBFc0uFDhFBTKFg=
X-Google-Smtp-Source: ABdhPJwRZt1MOTpnTHcoC36L8U4CCFPSy8QZC25wOLVhxB58tPTMORcQhxgR1fAYgQPrWKrF5obzFQ==
X-Received: by 2002:a17:902:bf07:b0:138:e32d:9f2e with SMTP id bi7-20020a170902bf0700b00138e32d9f2emr12987394plb.59.1634334752145;
        Fri, 15 Oct 2021 14:52:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d2c2:: with SMTP id n2ls5316261plc.7.gmail; Fri, 15
 Oct 2021 14:52:31 -0700 (PDT)
X-Received: by 2002:a17:903:2341:b0:13e:ae30:412 with SMTP id c1-20020a170903234100b0013eae300412mr13215556plh.15.1634334751595;
        Fri, 15 Oct 2021 14:52:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634334751; cv=none;
        d=google.com; s=arc-20160816;
        b=mJ2/J9FefhMiHl86Ut3gIJ3n0DVWDeHpJQFxwoHDQnocSOgd0YNyZ5UALEbiI0Jbft
         Mh9YRPJlqYQEqi9wkdafnzHoLeqJCOeZW2Dx7KregpTDRzmlo02RIe9zwUL9mZcm5id0
         4gZNp/1O5nxTbBM4SjeNWeQ9XK08Nm1NDYEEqsX02vyBjTcWAL7PcO6upWrbacWsDaUz
         kqtMkDjqc07g0KHdygVZtcspTzvi+C3Bc8yTVT3OQryvcsmf4MZgJym2xWTUbgTp6J5s
         rW9wJ+vbBaXj/VCcLg2s4zKIHEPjLVOVUeCzz52+IpYcMm/flByC7pkQFM0CA1KSJ9BK
         OZCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=7NPVmhIdHeITzzx11iC6Jr7f+CjnNuOv+gW0FQmNnXc=;
        b=aysqi81dVJI/OrlR4wQEramaKYjkwvvX/E36G3ZSHTkTowkLL56Aq4prMs7eYVanXr
         DmVN0T5a8mPzaW2dPf3ZcdZUjkgvQ7lrqnN+lHigiU2S9D6gPRAL+o2sM7IYH3tPLaPQ
         DFf/pdHPSiiJ8kdKfnlIhXJ3uaUU2N6WR2NPQY/eAYn0KF4rgwai5pmdJazYTuYB43IT
         Cdz6wftG6t7eLetxRSzmpcg6WzWXpURc5IFwHUzM7jNYDrOZukRTAAmyWU07s0rNvWic
         XJztjUirPjiYaWx6Ehp+s9Chmhs5UWlMFv+60Ax/NXSwxi2nTqO1lrU393kD49mIMttz
         MiIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id r7si2250043pjp.0.2021.10.15.14.52.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 14:52:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ashimida@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R201e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04395;MF=ashimida@linux.alibaba.com;NM=1;PH=DS;RN=28;SR=0;TI=SMTPD_---0UsFO8L2_1634334723;
Received: from ashimida.local(mailfrom:ashimida@linux.alibaba.com fp:SMTPD_---0UsFO8L2_1634334723)
          by smtp.aliyun-inc.com(127.0.0.1);
          Sat, 16 Oct 2021 05:52:05 +0800
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
 <722d9662-e27c-2efb-e8cf-d505b6950475@linux.alibaba.com>
 <CAKwvOdnMvBP-1=YbXTpYOgWqCBy44tUvWdtMXp8p485bYnPYNQ@mail.gmail.com>
From: Dan Li <ashimida@linux.alibaba.com>
Message-ID: <d1873b11-2aa2-d08c-921c-0a28c4edd33f@linux.alibaba.com>
Date: Sat, 16 Oct 2021 05:52:03 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnMvBP-1=YbXTpYOgWqCBy44tUvWdtMXp8p485bYnPYNQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ashimida@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ashimida@linux.alibaba.com designates 47.88.44.36 as
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



On 10/16/21 3:13 AM, Nick Desaulniers wrote:
> On Fri, Oct 15, 2021 at 11:29 AM Dan Li <ashimida@linux.alibaba.com> wrot=
e:
>>
>>
>>
>> On 10/15/21 2:44 AM, Nick Desaulniers wrote:
>>>    On Wed, Oct 13, 2021 at 4:28 PM Dan Li <ashimida@linux.alibaba.com> =
wrote:
>>>> --- a/include/linux/compiler-gcc.h
>>>> +++ b/include/linux/compiler-gcc.h
>>>> @@ -50,6 +50,10 @@
>>>>    #define __latent_entropy __attribute__((latent_entropy))
>>>>    #endif
>>>>
>>>> +#if defined(SHADOW_CALL_STACK_PLUGIN) && !defined(__CHECKER__)
>>>> +#define __noscs __attribute__((no_shadow_call_stack))
>>>> +#endif
>>>
>>> Cool this is a nice addition, and something I don't think that clang
>>> has.  For any new feature, having a function attribute to disable it
>>> at the function granularity is nice, and plays better with LTO than -f
>>> group flags.  Though that begs the question: what happens if a __noscs
>>> callee is inlined into a non-__noscs caller, or vice versa?
>> Thanks Nick,
>>
>> According to my understanding, all inline optimizations in gcc should
>> happen before inserting scs insns (scs and paciasp/autiasp use the
>> same insertion point). Therefore, the check for the __noscs attribute
>> will also occur after all inlining is completed.
>>
>> As in the following example:
>> - Since __noscs attribute is specified, scs_test1 does not insert scs in=
sns
>> - Since normal functions scs_test2/3 uses x30, it needs to insert scs in=
sns
>> - Since __noscs attribute is specified, scs_test4 after inlining does no=
t
>> need to insert scs insns
>>
>> __always_inline __noscs void scs_test1(void)
>> {
>>       asm volatile("mov x1, x1\n\t":::"x30");
>> }
>>
>> //scs insns inserted after function inline
>> void scs_test2(void)
>> {
>>       scs_test1();
>> }
>=20
> That may be surprising to developers.  Perhaps __always_inline on
> scs_test1 is distracting this test case, but I suspect it may not make
> a difference.  This particular issue comes up time and again with
> stack protectors; ie. the callee is marked no stack protector, then
> gets inlined into a caller and suddenly gets a stack protector.
>
Yes.

I haven=E2=80=99t noticed this issue. I just took a quick look at the stack
canary code, and found that the instructions are generated in the
RTL stage like scs/pac (AST =3D> GIMPLE =3D> RTL =3D> asm output), and
the inlining should have been completed before this.

Generally, instructions that are sensitive to assembly order can
only be inserted during RTL, otherwise their order is difficult to
guarantee. I think this may be the reason why the similar problem
always appears.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/d1873b11-2aa2-d08c-921c-0a28c4edd33f%40linux.alibaba.com.
