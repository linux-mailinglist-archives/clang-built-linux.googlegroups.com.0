Return-Path: <clang-built-linux+bncBDOJPWND2AARBP5YVOEQMGQEKEMGDOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBB83FA818
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Aug 2021 03:00:49 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id b13-20020a92dccd0000b0290223ea53d878sf6496937ilr.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Aug 2021 18:00:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630198848; cv=pass;
        d=google.com; s=arc-20160816;
        b=z/sqsDvQwM7T+vhyq2DYXuYStqq8uOy7CTt+s/kXMgvD50GGPdH2j6jtH5qFyJmU5Z
         rq9fiNrcjinBjvlN15IaHq9gnAVuErCXX/ESo/qeNfcAkglxYNSNYQmMM52Nqune1f/h
         n3ap/XeN5t9seMVdxZR0BK6yddWFUHR4Ou3r9B+HjNXn9tf46fURcCcgwJdfemSFO1ft
         FilwaFQhtLsKYrcPcK31j0ivV7kRwBUBgrPfsdmIgtU82nRFTwQJz9mOh0RhMnxy0CrG
         tpA6sj7hv/EL6N1+3alN46TsMvW9SS5LV42kR1UB202c+/E6rtNTIkivN+i/caI2ZJEJ
         2LEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:to:cc:in-reply-to:date
         :subject:mime-version:message-id:from:sender:dkim-signature;
        bh=ThJDndqVGCpqUkU2oifWob60xP0rTKGzAfZ8bvadXpQ=;
        b=CjX5KiczvzFM3rU5oDGvA63HJqwq8invlB8wsW2at2yw2W8Q2v23YpOAumq6pRBbaj
         NBjchNU8eZatvf5f2e7PjyTqqoH3M68BN95rdiS+7RA21AptuCmnAG5GqWOd5o4z7gyT
         Jad1gpi/oRBDJT7digYT9AU7KnOV0UjIfbXRF1NhuCE1ZwEIWvvtgPdB9nxXcgBM5Z3L
         8eww1MMDxWKd7fd8zcUSkEWV2aVuklwXpuQZnTQaWNbpcdY7EpR/RxWJHZXhuUnib+GA
         JsM1HhbmXDCiTKNRuKY+jv9GGz2/QMbToMaNmoDpIQ5EEVovCYtzZM3mS9osc5X3eMU1
         gafA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sifive.com header.s=google header.b=CR12MBf8;
       spf=pass (google.com: domain of craig.topper@sifive.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=craig.topper@sifive.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ThJDndqVGCpqUkU2oifWob60xP0rTKGzAfZ8bvadXpQ=;
        b=CJiuCfDMj+U1FlrsyhlVYBcRA46/xSCj7FIViOf6BXbKLUTTokVfCp5Whd59WBL5P9
         QULEVpMu2tYGtMqLumCKjj4m1ZzIr1CdQFKipgPhwgovOsiASTzsX6O0dm+q8dz3jABA
         /TRUYPEqAwqg6QhcVpViOlRp8xSFFoYdabHl4C5pd8OayJNxORJRPO+hkRoeO8FHMp9k
         PO9O0IKcESkQwW74WF65P2c3EgtKDt2QoFvbAfJqdTmxsbfFNhZ5WWPV7+DS8wL5qk0q
         Yz/u0ezhv4FAK7c3IjxvKjWjQ2hECDhIXQJCJF1BXYjvQstkOMqpUjhPOHVo4Inv7rRr
         O8Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ThJDndqVGCpqUkU2oifWob60xP0rTKGzAfZ8bvadXpQ=;
        b=hS148fG4tkIkZMEzFOTUn2T96CH+CBJWYHe0p93Za7sdDT6NQq4w6+E5g50fiyQZgb
         eodKi7LYzh7YYIMOFCj+VGv8Bg1IdXa68GLZ0uaLDLzEzhtBi1hSCzVSYMI5WsaCiqE5
         OC1qLRewZO2IsUXum405j7ltdkMNNLBIC3/z1cbOCAbJ0IdQBMEf+9WSwucVo/7UFdk9
         i/WxQR0VJtRUkzDidr536xUIBSyCg5iyUCjnQLQQX5zjUbGwzvMnD2oUDafF+tfapd48
         dipN3NhYGpooTdnEq/t29FA5Cn+0Ir9frcg5yuPaRYjA9ZOGGr/U9oEfGEgITH/lxQC0
         4Yuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532vIztylUCnDMOtdN8SY7ms8JKmQScERnGN4YvXymedybuleBDA
	KkE3VXOYEtFs/sIJ0BTfsbQ=
X-Google-Smtp-Source: ABdhPJzPWRYpxL76Jmb6HeHA1kxqF/dJGZ3lBsKVUP3mwrg0PuFMajkBVf13s9v8xVJ8u4TsQm7QcA==
X-Received: by 2002:a02:90cb:: with SMTP id c11mr14618004jag.53.1630198847979;
        Sat, 28 Aug 2021 18:00:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9914:: with SMTP id x20ls77333iol.6.gmail; Sat, 28 Aug
 2021 18:00:47 -0700 (PDT)
X-Received: by 2002:a6b:b20c:: with SMTP id b12mr6598982iof.145.1630198847510;
        Sat, 28 Aug 2021 18:00:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630198847; cv=none;
        d=google.com; s=arc-20160816;
        b=y9QEeGiFYIMqdQ845vyDhsoKWAh589omJfguDKquyRFvR7S35Mp20aa4uXlTY+jq3q
         eny1uYnz6obO5ijIuamkZOTLGouUOpUu17sgX56sTF5WdQojkYQ1Xldk6ZZbeJxNqluU
         eVMVFVeQ+iVIoXEA6xmLMA/9KBSPrYH/gv6R2jmvPkWHcQQxhWbpckb6u9APGRaQA7xl
         NYaeeQgpzf3gNORTXsew5WIncpEyFzxhbLYYRNHdb+Hb7+z9HmoJEpmep418bon4ernu
         97jylrXeAkEgl12XPPdbsGfp/jo7wIkPuuXVTSazp5ou0R5ahhtUecLIuv66vyBuN0wW
         0gyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:dkim-signature;
        bh=xGRHQHtUtmH9FwmrYi2JfFHyGSWjmWofKyntHTMJIM4=;
        b=nzuR7T+XtNpGkVpwskqOK3ACjW8oxSn11d13QlC7k0DOCKKW85QUYZj7uEIIYTmW/J
         c49WKLqmQ16zjyDg2PstIiHYenfSFNFevou8uONXsdjmc0VNpYK6pO8xOTi+ZUMosZPu
         USNxxaBIlrOWkkXWOcVZfU4S2ANecqG2iMRbsCbuRDVFX9S2u5DuJS/7fs72Rjy/PEW2
         uXFmvrUgpZyS636of+RtY1WoSs1cF+jiJclHwv059P7m7BeIOPwMrmkIwfNU9Hgue2Yb
         fc5cmDfPb8ChGVoQ5Q+pspQtJXwzvy2cr2BSKsbIy3YrnQQLvhiScb1PTl/0DluGsV8k
         VIKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sifive.com header.s=google header.b=CR12MBf8;
       spf=pass (google.com: domain of craig.topper@sifive.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=craig.topper@sifive.com
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id v7si869354ilo.0.2021.08.28.18.00.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Aug 2021 18:00:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of craig.topper@sifive.com designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id j1so7124069pjv.3
        for <clang-built-linux@googlegroups.com>; Sat, 28 Aug 2021 18:00:47 -0700 (PDT)
X-Received: by 2002:a17:902:fe81:b0:133:851e:5923 with SMTP id x1-20020a170902fe8100b00133851e5923mr15297288plm.25.1630198846740;
        Sat, 28 Aug 2021 18:00:46 -0700 (PDT)
Received: from smtpclient.apple ([50.39.128.242])
        by smtp.gmail.com with ESMTPSA id d22sm10365463pjw.38.2021.08.28.18.00.45
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Aug 2021 18:00:46 -0700 (PDT)
From: Craig Topper <craig.topper@sifive.com>
Message-Id: <37453471-1498-4C1C-8022-93697D8C2DD4@sifive.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A17933E0-0D84-4A8B-9467-5B8EDF19E81D"
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Nasty clang loop unrolling..
Date: Sat, 28 Aug 2021 18:00:45 -0700
In-Reply-To: <CAKwvOdnbiLk4N6Qqdz=RT9nsjYQv41XnXK71azYte7h0JqoohQ@mail.gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 Nathan Chancellor <nathan@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 llvm@lists.linux.dev,
 Philip Reames <philip@switchbackcompilers.com>
To: Nick Desaulniers <ndesaulniers@google.com>
References: <CAHk-=wiNHx_GpjoWt9VMffKunZZy5MaTe3pM+cpBgE7OyyrX5Q@mail.gmail.com>
 <CAKwvOdnbiLk4N6Qqdz=RT9nsjYQv41XnXK71azYte7h0JqoohQ@mail.gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Original-Sender: craig.topper@sifive.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sifive.com header.s=google header.b=CR12MBf8;       spf=pass
 (google.com: domain of craig.topper@sifive.com designates 2607:f8b0:4864:20::1029
 as permitted sender) smtp.mailfrom=craig.topper@sifive.com
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


--Apple-Mail=_A17933E0-0D84-4A8B-9467-5B8EDF19E81D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

There is =E2=80=9C-mllvm -unroll-runtime=3Dfalse=E2=80=9D to disable unroll=
ing of loops with runtime trip count. There are a bunch of other knobs at t=
he top of llvm/lib/Transforms/Scalar/LoopUnrollPass.cpp. I=E2=80=99m not ve=
ry familiar with them myself.

> On Aug 28, 2021, at 1:29 PM, Nick Desaulniers <ndesaulniers@google.com> w=
rote:
>=20
> (We're moving from clang-built-linux@googlegroups.com to
> llvm@lists.linux.dev; sorry for the churn, but we think this will make
> for more accessible archival and access from lore.kernel.org)
>=20
> On Sat, Aug 28, 2021 at 11:29 AM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
>>=20
>> So it turns out that s390 had a bug due to its own private 'strncpy()'
>> being broken and not doing the insane thing that strncpy() is defined
>> to do.
>=20
> Like continuing to zero the rest of the buffer up to n?
>=20
>>=20
>> Which is fine - I understand exactly how that happens, and strncpy()
>> is one of my least favorite functions.
>>=20
>> Anyway, I suggested that s390 just use the generic function we have,
>> instead of implementing its own version, because nobody really cares,
>> and the generic function is small and simple and "good enough". See
>>=20
>>    https://lore.kernel.org/lkml/CAHk-=3DwjhKNB_1a6wjjPh2PvMrtjVs=3DDgGY5=
uM2jq3WBBaYMyGQ@mail.gmail.com/
>>=20
>> for details, although they don't really matter for this email.
>>=20
>> What matters for this email is that writing that thing made me go "ok,
>> just how good does that generic version look, compared to the old
>> legacy 32-bit historical version that uses the x86 string instructions
>> just because it literally goes all the way back to my learning the
>> i386 and learning gcc inline asm".
>>=20
>> Because yes, that routine *literally* exists in that exact form in
>> linux-0.01 - it's moved, and it has lost a "cld" instruction since we
>> now have the rule that DF is always clear in the kernel, but our old
>> 32-bit x86 'strncpy()" is horrible slow garbage, but also a historical
>> gem from 30 years ago.
>>=20
>> But x86-64 doesn't do that, so I just built lib/string,c with clang,
>> to see what it could do.
>>=20
>> Can clang do better than complete garbage written by a clueless person
>> from three decades ago?
>>=20
>> The end result is not good.
>>=20
>> Clang decides to unroll that loop four times, and in the process
>> making the code 4x the size it should be, for absolutely zero gain.
>>=20
>> This is the whole function with #pragma nounroll (ie "sane"):
>>=20
>>   strncpy:
>>           movq %rdi, %rax
>>           testq        %rdx, %rdx
>>           je   .LBB3_5
>>           xorl %ecx, %ecx
>>           jmp  .LBB3_2
>>           .p2align     4, 0x90
>>   .LBB3_4:
>>           addq $1, %rcx
>>           cmpq %rcx, %rdx
>>           je   .LBB3_5
>>   .LBB3_2:
>>           movzbl       (%rsi), %edi
>>           movb %dil, (%rax,%rcx)
>>           testb        %dil, %dil
>>           je   .LBB3_4
>>           addq $1, %rsi
>>           jmp  .LBB3_4
>>   .LBB3_5:
>>           retq
>>=20
>> and honestly, that's perfectly fine. It's very much what the code
>> does. It's 44 bytes, it fits in one cacheline, it's not horrible. It's
>> not what I would have done by hand, and clang seems a bit too eager to
>> move the loop end test to the top of the loop, but whatever. I see
>> nothing that makes me go "that's horrible".
>=20
> For the loop test, I know that clang will "rotate" loops in an attempt
> to have one canonical loop form. That way passes don't have to check
> for multiple different forms of loops if they're all in one form.
> This reduces compile time and complexity in the compiler.  Does it
> always produce the most optimal loops?  Is that what is going on here?
> I'm not sure.
>=20
>>=20
>> Now, admittedly it's not particularly *smart* either - you could turn
>> the conditional "branch over a single constant add" into a computed
>> add instead, so the
>>=20
>>           testb        %dil, %dil
>>           je   .LBB3_4
>>           addq $1, %rsi
>>           jmp  .LBB3_4
>>=20
>> could - for example - have been done as
>>=20
>>           addb $255,%dil
>>           adcq $0, %rsi
>>           jmp  .LBB3_4
>>=20
>> which could avoid some branch mispredicts.  And honestly then the code
>=20
> Perhaps a peephole optimization we can add? (Does the adcq - add with
> carry - rely on whether the previous addb overflowed, ie. %dil was
> non-zero, replacing the testb+je pair? Did I understand that
> correctly?)  Though we'd have to know that %dil wasn't used after
> taking the jump, since I think your transformed version modified %dil,
> so perhaps that can't be a peephole opt. Hmm.
>=20
>> that clang moved to the top should really have been at the bottom of
>> the loop, but I don't know if it would matter. The above might look a
>> bit more clever, but the data dependency might be worse if the branch
>> predicts well. The branch behavior is bimodal - the loop starts out
>> not taking that "je", and ends up taking it - so it has an almost
>> guaranteed mispredict in the middle of the loop, but whatever. You win
>> some, you lose some.
>>=20
>> ANYWAY.
>>=20
>> The above discussion is about *reasonable* code.
>>=20
>> What clang actually generates bears very little resemblance to either
>> the above simple and short, or the "clever and one conditional branch
>> shorter" version.
>>=20
>> What clang actually generates is this horror:
>>=20
>>   strncpy:
>>           movq %rdi, %rax
>>           testq        %rdx, %rdx
>>           je   .LBB3_19
>>           leaq -1(%rdx), %r8
>>           movq %rdx, %r9
>>           andq $3, %r9
>>           je   .LBB3_2
>>           xorl %edi, %edi
>>           jmp  .LBB3_4
>>           .p2align     4, 0x90
>>   .LBB3_6:
>>           addq $1, %rdi
>>           cmpq %rdi, %r9
>>           je   .LBB3_7
>>   .LBB3_4:
>>           movzbl       (%rsi), %ecx
>>           movb %cl, (%rax,%rdi)
>>           testb        %cl, %cl
>>           je   .LBB3_6
>>           addq $1, %rsi
>>           jmp  .LBB3_6
>>   .LBB3_7:
>>           leaq (%rax,%rdi), %r9
>>           subq %rdi, %rdx
>>           cmpq $3, %r8
>>           jb   .LBB3_19
>>           jmp  .LBB3_9
>>   .LBB3_2:
>>           movq %rax, %r9
>>           cmpq $3, %r8
>>           jae  .LBB3_9
>>   .LBB3_19:
>>           retq
>>   .LBB3_9:
>>           xorl %edi, %edi
>>           jmp  .LBB3_10
>>           .p2align     4, 0x90
>>   .LBB3_18:
>>           addq $4, %rdi
>>           cmpq %rdi, %rdx
>>           je   .LBB3_19
>>   .LBB3_10:
>>           movzbl       (%rsi), %ecx
>>           movb %cl, (%r9,%rdi)
>>           testb        %cl, %cl
>>           je   .LBB3_12
>>           addq $1, %rsi
>>   .LBB3_12:
>>           movzbl       (%rsi), %ecx
>>           movb %cl, 1(%r9,%rdi)
>>           testb        %cl, %cl
>>           je   .LBB3_14
>>           addq $1, %rsi
>>   .LBB3_14:
>>           movzbl       (%rsi), %ecx
>>           movb %cl, 2(%r9,%rdi)
>>           testb        %cl, %cl
>>           je   .LBB3_16
>>           addq $1, %rsi
>>   .LBB3_16:
>>           movzbl       (%rsi), %ecx
>>           movb %cl, 3(%r9,%rdi)
>>           testb        %cl, %cl
>>           je   .LBB3_18
>>           addq $1, %rsi
>>           jmp  .LBB3_18
>>=20
>> which is 170 bytes in size instead of the 44 bytes, so now it takes up
>> three cachelines.
>>=20
>> Now, I don't know how common this is. Maybe this is the only place in
>> the kernel where this unrolling case happens. But in general, loop
>> unrolling in the kernel is a big mistake unless it's a very obvious
>> case (ie small constant full unroll makes perfect sense: if you see
>>=20
>>        if (i =3D 0; i < 4; i++)
>>                *p++ =3D *q++;
>>=20
>> then you should most definitely unroll that to
>>=20
>>        *p++ =3D *q++;
>>        *p++ =3D *q++;
>>        *p++ =3D *q++;
>>        *p++ =3D *q++;
>>=20
>> because it's simply smaller and simpler to not have any conditionals
>> at all, and just do four iterations statically.
>>=20
>> But the 'strncpy()' kind of unrolling is a mistake when kernel loops
>> tend to have very low loop counts.
>>=20
>> As far as I know, gcc doesn't do any unrolling at -O2.
>=20
> For clang, we will do limited unrolling at -O2, and very aggressive
> unrolling at -O3; if a loop can be fully unrolled, we're likely to do
> so at -O3, with a much smaller or more conservative unroll at -O2.  I
> think I demonstrated that in this talk, if you have the time or are
> interested more in introspecting the compiler (yeah, yeah, ain't
> nobody got time for that): https://youtu.be/bUTXhcf_aNc?t=3D1415
>=20
> My hypothesis here is that LLVM may not be considering -mno-sse2 and
> friends (ie. no floating at all, please) that the kernel uses when
> doing its simpler unrolling.  If the monstrosity looks more compact
> with none of the -mno-sse2 and friends flags set, then that would lend
> itself to that hypothesis.  IIRC, the middle end does loop unrolling
> in a non-machine agnostic manner; it has to know what's the basic
> width of SIMD since we'd generally like to vectorize a loop after
> we've unrolled it, so the pass is aware of specifics of the target
> machine (this is exceptional to me; I understand why it's necessary,
> but generally the middle end optimizations are machine agnostic).
> Then later once we get to actual machine code generation for x86, we
> discover the constraints that we can't actually use any of the SSE
> registers and instead generate more verbose loop iterations using
> GPRs.  Likely, the middle end unroller needs to check that -sse2
> wasn't set BEFORE thinking it has the green light to unroll a loop x4.
> But it's just a hypothesis; I haven't validated it yet, and I could be
> wildly wrong.
>=20
>>=20
>> What is the magic to make clang not do stupid things like this? I
>> obviously know about that
>>=20
>>    #pragma nounroll
>>=20
>> but I don't want to mark various unimportant functions. I'd much
>> rather have the default be "don't do stupid things", and then if we
>> see a case where loop unrolling really matters, and it's important, we
>> can mark *that* specially.
>>=20
>> Hmm?
>>=20
>>                Linus
>=20
>=20
>=20
> --=20
> Thanks,
> ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/37453471-1498-4C1C-8022-93697D8C2DD4%40sifive.com.

--Apple-Mail=_A17933E0-0D84-4A8B-9467-5B8EDF19E81D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: s=
pace; line-break: after-white-space;" class=3D"">There is =E2=80=9C-mllvm -=
unroll-runtime=3Dfalse=E2=80=9D to disable unrolling of loops with runtime =
trip count. There are a bunch of other knobs at the top of&nbsp;<font color=
=3D"#000000" face=3D"Menlo" class=3D""><span style=3D"font-size: 11px;" cla=
ss=3D"">llvm/lib/Transforms/Scalar/LoopUnrollPass.cpp. I</span><span style=
=3D"caret-color: rgb(0, 0, 0); font-size: 11px;" class=3D"">=E2=80=99</span=
><span style=3D"font-size: 11px;" class=3D"">m not very familiar with them =
myself.</span></font><div><br class=3D""><blockquote type=3D"cite" class=3D=
""><div class=3D"">On Aug 28, 2021, at 1:29 PM, Nick Desaulniers &lt;<a hre=
f=3D"mailto:ndesaulniers@google.com" class=3D"">ndesaulniers@google.com</a>=
&gt; wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><d=
iv class=3D"">(We're moving from <a href=3D"mailto:clang-built-linux@google=
groups.com" class=3D"">clang-built-linux@googlegroups.com</a> to<br class=
=3D""><a href=3D"mailto:llvm@lists.linux.dev" class=3D"">llvm@lists.linux.d=
ev</a>; sorry for the churn, but we think this will make<br class=3D"">for =
more accessible archival and access from <a href=3D"http://lore.kernel.org"=
 class=3D"">lore.kernel.org</a>)<br class=3D""><br class=3D"">On Sat, Aug 2=
8, 2021 at 11:29 AM Linus Torvalds<br class=3D"">&lt;<a href=3D"mailto:torv=
alds@linux-foundation.org" class=3D"">torvalds@linux-foundation.org</a>&gt;=
 wrote:<br class=3D""><blockquote type=3D"cite" class=3D""><br class=3D"">S=
o it turns out that s390 had a bug due to its own private 'strncpy()'<br cl=
ass=3D"">being broken and not doing the insane thing that strncpy() is defi=
ned<br class=3D"">to do.<br class=3D""></blockquote><br class=3D"">Like con=
tinuing to zero the rest of the buffer up to n?<br class=3D""><br class=3D"=
"><blockquote type=3D"cite" class=3D""><br class=3D"">Which is fine - I und=
erstand exactly how that happens, and strncpy()<br class=3D"">is one of my =
least favorite functions.<br class=3D""><br class=3D"">Anyway, I suggested =
that s390 just use the generic function we have,<br class=3D"">instead of i=
mplementing its own version, because nobody really cares,<br class=3D"">and=
 the generic function is small and simple and "good enough". See<br class=
=3D""><br class=3D""> &nbsp;&nbsp;&nbsp;<a href=3D"https://lore.kernel.org/=
lkml/CAHk-=3DwjhKNB_1a6wjjPh2PvMrtjVs=3DDgGY5uM2jq3WBBaYMyGQ@mail.gmail.com=
/" class=3D"">https://lore.kernel.org/lkml/CAHk-=3DwjhKNB_1a6wjjPh2PvMrtjVs=
=3DDgGY5uM2jq3WBBaYMyGQ@mail.gmail.com/</a><br class=3D""><br class=3D"">fo=
r details, although they don't really matter for this email.<br class=3D"">=
<br class=3D"">What matters for this email is that writing that thing made =
me go "ok,<br class=3D"">just how good does that generic version look, comp=
ared to the old<br class=3D"">legacy 32-bit historical version that uses th=
e x86 string instructions<br class=3D"">just because it literally goes all =
the way back to my learning the<br class=3D"">i386 and learning gcc inline =
asm".<br class=3D""><br class=3D"">Because yes, that routine *literally* ex=
ists in that exact form in<br class=3D"">linux-0.01 - it's moved, and it ha=
s lost a "cld" instruction since we<br class=3D"">now have the rule that DF=
 is always clear in the kernel, but our old<br class=3D"">32-bit x86 'strnc=
py()" is horrible slow garbage, but also a historical<br class=3D"">gem fro=
m 30 years ago.<br class=3D""><br class=3D"">But x86-64 doesn't do that, so=
 I just built lib/string,c with clang,<br class=3D"">to see what it could d=
o.<br class=3D""><br class=3D"">Can clang do better than complete garbage w=
ritten by a clueless person<br class=3D"">from three decades ago?<br class=
=3D""><br class=3D"">The end result is not good.<br class=3D""><br class=3D=
"">Clang decides to unroll that loop four times, and in the process<br clas=
s=3D"">making the code 4x the size it should be, for absolutely zero gain.<=
br class=3D""><br class=3D"">This is the whole function with #pragma nounro=
ll (ie "sane"):<br class=3D""><br class=3D""> &nbsp;&nbsp;strncpy:<br class=
=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;movq %rd=
i, %rax<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;testq &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%rdx, %rdx<br class=
=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;je &nbsp=
;&nbsp;.LBB3_5<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;xorl %ecx, %ecx<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jmp &nbsp;.LBB3_2<br class=3D""> &nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.p2align &nbsp;&nbsp;&nbsp=
;&nbsp;4, 0x90<br class=3D""> &nbsp;&nbsp;.LBB3_4:<br class=3D""> &nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;addq $1, %rcx<br class=
=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cmpq %rc=
x, %rdx<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;je &nbsp;&nbsp;.LBB3_5<br class=3D""> &nbsp;&nbsp;.LBB3_2:<br class=
=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;movzbl &=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(%rsi), %edi<br class=3D""> &nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;movb %dil, (%rax,%rcx)<br c=
lass=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;test=
b &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%dil, %dil<br class=3D""> &nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;je &nbsp;&nbsp;.LBB3=
_4<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;addq $1, %rsi<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;jmp &nbsp;.LBB3_4<br class=3D""> &nbsp;&nbsp;.LBB3_5:<br c=
lass=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;retq=
<br class=3D""><br class=3D"">and honestly, that's perfectly fine. It's ver=
y much what the code<br class=3D"">does. It's 44 bytes, it fits in one cach=
eline, it's not horrible. It's<br class=3D"">not what I would have done by =
hand, and clang seems a bit too eager to<br class=3D"">move the loop end te=
st to the top of the loop, but whatever. I see<br class=3D"">nothing that m=
akes me go "that's horrible".<br class=3D""></blockquote><br class=3D"">For=
 the loop test, I know that clang will "rotate" loops in an attempt<br clas=
s=3D"">to have one canonical loop form. That way passes don't have to check=
<br class=3D"">for multiple different forms of loops if they're all in one =
form.<br class=3D"">This reduces compile time and complexity in the compile=
r. &nbsp;Does it<br class=3D"">always produce the most optimal loops? &nbsp=
;Is that what is going on here?<br class=3D"">I'm not sure.<br class=3D""><=
br class=3D""><blockquote type=3D"cite" class=3D""><br class=3D"">Now, admi=
ttedly it's not particularly *smart* either - you could turn<br class=3D"">=
the conditional "branch over a single constant add" into a computed<br clas=
s=3D"">add instead, so the<br class=3D""><br class=3D""> &nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;testb &nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;%dil, %dil<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;je &nbsp;&nbsp;.LBB3_4<br class=3D""> &nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;addq $1, %rsi<br class=3D"=
"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jmp &nbsp;.L=
BB3_4<br class=3D""><br class=3D"">could - for example - have been done as<=
br class=3D""><br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;addb $255,%dil<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;adcq $0, %rsi<br class=3D""> &nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jmp &nbsp;.LBB3_4<br class=3D""=
><br class=3D"">which could avoid some branch mispredicts. &nbsp;And honest=
ly then the code<br class=3D""></blockquote><br class=3D"">Perhaps a peepho=
le optimization we can add? (Does the adcq - add with<br class=3D"">carry -=
 rely on whether the previous addb overflowed, ie. %dil was<br class=3D"">n=
on-zero, replacing the testb+je pair? Did I understand that<br class=3D"">c=
orrectly?) &nbsp;Though we'd have to know that %dil wasn't used after<br cl=
ass=3D"">taking the jump, since I think your transformed version modified %=
dil,<br class=3D"">so perhaps that can't be a peephole opt. Hmm.<br class=
=3D""><br class=3D""><blockquote type=3D"cite" class=3D"">that clang moved =
to the top should really have been at the bottom of<br class=3D"">the loop,=
 but I don't know if it would matter. The above might look a<br class=3D"">=
bit more clever, but the data dependency might be worse if the branch<br cl=
ass=3D"">predicts well. The branch behavior is bimodal - the loop starts ou=
t<br class=3D"">not taking that "je", and ends up taking it - so it has an =
almost<br class=3D"">guaranteed mispredict in the middle of the loop, but w=
hatever. You win<br class=3D"">some, you lose some.<br class=3D""><br class=
=3D"">ANYWAY.<br class=3D""><br class=3D"">The above discussion is about *r=
easonable* code.<br class=3D""><br class=3D"">What clang actually generates=
 bears very little resemblance to either<br class=3D"">the above simple and=
 short, or the "clever and one conditional branch<br class=3D"">shorter" ve=
rsion.<br class=3D""><br class=3D"">What clang actually generates is this h=
orror:<br class=3D""><br class=3D""> &nbsp;&nbsp;strncpy:<br class=3D""> &n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;movq %rdi, %rax<b=
r class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;t=
estq &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%rdx, %rdx<br class=3D""> &n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;je &nbsp;&nbsp;.L=
BB3_19<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;leaq -1(%rdx), %r8<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;movq %rdx, %r9<br class=3D""> &nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;andq $3, %r9<br class=3D""> &nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;je &nbsp;&nbsp;.LBB3_=
2<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;xorl %edi, %edi<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;jmp &nbsp;.LBB3_4<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.p2align &nbsp;&nbsp;&nbsp;&nbsp;4, 0x9=
0<br class=3D""> &nbsp;&nbsp;.LBB3_6:<br class=3D""> &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;addq $1, %rdi<br class=3D""> &nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cmpq %rdi, %r9<br class=
=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;je &nbsp=
;&nbsp;.LBB3_7<br class=3D""> &nbsp;&nbsp;.LBB3_4:<br class=3D""> &nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;movzbl &nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;(%rsi), %ecx<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;movb %cl, (%rax,%rdi)<br class=3D""> &nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;testb &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;%cl, %cl<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;je &nbsp;&nbsp;.LBB3_6<br class=3D""> &=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;addq $1, %rsi<br=
 class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jm=
p &nbsp;.LBB3_6<br class=3D""> &nbsp;&nbsp;.LBB3_7:<br class=3D""> &nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;leaq (%rax,%rdi), %r9<b=
r class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;s=
ubq %rdi, %rdx<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;cmpq $3, %r8<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;jb &nbsp;&nbsp;.LBB3_19<br class=3D""> &nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jmp &nbsp;.LBB3_9<br cl=
ass=3D""> &nbsp;&nbsp;.LBB3_2:<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;movq %rax, %r9<br class=3D""> &nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cmpq $3, %r8<br class=3D""> &=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jae &nbsp;.LBB3_=
9<br class=3D""> &nbsp;&nbsp;.LBB3_19:<br class=3D""> &nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;retq<br class=3D""> &nbsp;&nbsp;.LBB=
3_9:<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;xorl %edi, %edi<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;jmp &nbsp;.LBB3_10<br class=3D""> &nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.p2align &nbsp;&nbsp;&nbsp;&nbsp;4,=
 0x90<br class=3D""> &nbsp;&nbsp;.LBB3_18:<br class=3D""> &nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;addq $4, %rdi<br class=3D""> &nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cmpq %rdi, %rdx<br=
 class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;je=
 &nbsp;&nbsp;.LBB3_19<br class=3D""> &nbsp;&nbsp;.LBB3_10:<br class=3D""> &=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;movzbl &nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;(%rsi), %ecx<br class=3D""> &nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;movb %cl, (%r9,%rdi)<br class=3D"">=
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;testb &nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%cl, %cl<br class=3D""> &nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;je &nbsp;&nbsp;.LBB3_12<br class=
=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;addq $1,=
 %rsi<br class=3D""> &nbsp;&nbsp;.LBB3_12:<br class=3D""> &nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;movzbl &nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;(%rsi), %ecx<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;movb %cl, 1(%r9,%rdi)<br class=3D""> &nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;testb &nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;%cl, %cl<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;je &nbsp;&nbsp;.LBB3_14<br class=3D""> &nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;addq $1, %rsi<br class=
=3D""> &nbsp;&nbsp;.LBB3_14:<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;movzbl &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(%r=
si), %ecx<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;movb %cl, 2(%r9,%rdi)<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;testb &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;%cl, %cl<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;je &nbsp;&nbsp;.LBB3_16<br class=3D""> &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;addq $1, %rsi<br class=3D""> &nbsp;&n=
bsp;.LBB3_16:<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;movzbl &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(%rsi), %ecx<br cl=
ass=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;movb =
%cl, 3(%r9,%rdi)<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;testb &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%cl, %cl<b=
r class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;j=
e &nbsp;&nbsp;.LBB3_18<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;addq $1, %rsi<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;jmp &nbsp;.LBB3_18<br class=3D""><br c=
lass=3D"">which is 170 bytes in size instead of the 44 bytes, so now it tak=
es up<br class=3D"">three cachelines.<br class=3D""><br class=3D"">Now, I d=
on't know how common this is. Maybe this is the only place in<br class=3D""=
>the kernel where this unrolling case happens. But in general, loop<br clas=
s=3D"">unrolling in the kernel is a big mistake unless it's a very obvious<=
br class=3D"">case (ie small constant full unroll makes perfect sense: if y=
ou see<br class=3D""><br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;if (i =3D 0; i &lt; 4; i++)<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*p++ =3D *q++=
;<br class=3D""><br class=3D"">then you should most definitely unroll that =
to<br class=3D""><br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
*p++ =3D *q++;<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*p+=
+ =3D *q++;<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*p++ =
=3D *q++;<br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*p++ =3D=
 *q++;<br class=3D""><br class=3D"">because it's simply smaller and simpler=
 to not have any conditionals<br class=3D"">at all, and just do four iterat=
ions statically.<br class=3D""><br class=3D"">But the 'strncpy()' kind of u=
nrolling is a mistake when kernel loops<br class=3D"">tend to have very low=
 loop counts.<br class=3D""><br class=3D"">As far as I know, gcc doesn't do=
 any unrolling at -O2.<br class=3D""></blockquote><br class=3D"">For clang,=
 we will do limited unrolling at -O2, and very aggressive<br class=3D"">unr=
olling at -O3; if a loop can be fully unrolled, we're likely to do<br class=
=3D"">so at -O3, with a much smaller or more conservative unroll at -O2. &n=
bsp;I<br class=3D"">think I demonstrated that in this talk, if you have the=
 time or are<br class=3D"">interested more in introspecting the compiler (y=
eah, yeah, ain't<br class=3D"">nobody got time for that): <a href=3D"https:=
//youtu.be/bUTXhcf_aNc?t=3D1415" class=3D"">https://youtu.be/bUTXhcf_aNc?t=
=3D1415</a><br class=3D""><br class=3D"">My hypothesis here is that LLVM ma=
y not be considering -mno-sse2 and<br class=3D"">friends (ie. no floating a=
t all, please) that the kernel uses when<br class=3D"">doing its simpler un=
rolling. &nbsp;If the monstrosity looks more compact<br class=3D"">with non=
e of the -mno-sse2 and friends flags set, then that would lend<br class=3D"=
">itself to that hypothesis. &nbsp;IIRC, the middle end does loop unrolling=
<br class=3D"">in a non-machine agnostic manner; it has to know what's the =
basic<br class=3D"">width of SIMD since we'd generally like to vectorize a =
loop after<br class=3D"">we've unrolled it, so the pass is aware of specifi=
cs of the target<br class=3D"">machine (this is exceptional to me; I unders=
tand why it's necessary,<br class=3D"">but generally the middle end optimiz=
ations are machine agnostic).<br class=3D"">Then later once we get to actua=
l machine code generation for x86, we<br class=3D"">discover the constraint=
s that we can't actually use any of the SSE<br class=3D"">registers and ins=
tead generate more verbose loop iterations using<br class=3D"">GPRs. &nbsp;=
Likely, the middle end unroller needs to check that -sse2<br class=3D"">was=
n't set BEFORE thinking it has the green light to unroll a loop x4.<br clas=
s=3D"">But it's just a hypothesis; I haven't validated it yet, and I could =
be<br class=3D"">wildly wrong.<br class=3D""><br class=3D""><blockquote typ=
e=3D"cite" class=3D""><br class=3D"">What is the magic to make clang not do=
 stupid things like this? I<br class=3D"">obviously know about that<br clas=
s=3D""><br class=3D""> &nbsp;&nbsp;&nbsp;#pragma nounroll<br class=3D""><br=
 class=3D"">but I don't want to mark various unimportant functions. I'd muc=
h<br class=3D"">rather have the default be "don't do stupid things", and th=
en if we<br class=3D"">see a case where loop unrolling really matters, and =
it's important, we<br class=3D"">can mark *that* specially.<br class=3D""><=
br class=3D"">Hmm?<br class=3D""><br class=3D""> &nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Linus<br cl=
ass=3D""></blockquote><br class=3D""><br class=3D""><br class=3D"">-- <br c=
lass=3D"">Thanks,<br class=3D"">~Nick Desaulniers<br class=3D""></div></div=
></blockquote></div><br class=3D""></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/37453471-1498-4C1C-8022-93697D8C2DD4%40sifive.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/clang-built-linux/37453471-1498-4C1C-8022-93697D8C2DD4%40sifive.com</a>.=
<br />

--Apple-Mail=_A17933E0-0D84-4A8B-9467-5B8EDF19E81D--
