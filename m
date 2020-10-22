Return-Path: <clang-built-linux+bncBCN5HJ6RQMJBBIHJY36AKGQE6G73F7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 504FA2962B3
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 18:34:41 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id z7sf779190wme.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 09:34:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603384481; cv=pass;
        d=google.com; s=arc-20160816;
        b=GoYtHo0/aUgdeeu2ny+mWqMACHFsDck/v8YXRdlFJoLxlsZWh/mmT3iHiJcUvrkbVL
         bvDxCJlXWWX/BdXZNxmoympsScLPPqdR/QPzZzdd9xYauJWXHPFAlSRG1EPAqQOgfnf4
         5zYwwgn4kwVqQs6PIgrozxIWOw5wbEuMfnLoJWNQMn4DxTcU8IKsf0PV6y2WHSVBwaJJ
         XnzoLMnYDu6fm5sA+0q9V8P2m58XDcqI2KXHP/N8wYHEZ5nEAM+Wvi2nb5l0GtVz+8mx
         SbVBdgz2xRAnyrmRUfyd2vlMAQxtzfZjyO/Ojo4uSJJoFiLTXz+ZS3tcRPSAsXKdBogo
         o1WQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=VgnOgv0AaG4gbs7dUPtvwy+MfJew739SMobyO3CMCEo=;
        b=wSguDliwzUYXyUBVJanStW/W6SltMJwUeCvuqrYvGZ1S5HVR+3V4TInKxzhdW+oVaq
         3WhM1uuWNiZ8vz8WTH2nJkk3zU4Yox4Wfvuo5SdTQh5fYN2HI/n0NfQRZNkmbZeP2Lnp
         +SFS3vq0FDMXkfHYzcpqUUw6oCnVh40c9BMuMm7PlQjnGhYzaJxrAQOjnW7HSyANKdlA
         ypftz4Cx30kaqgTK7JbdMDM2oItgcZ+lFg81QjEwj/bRoAEZop4WJ2pXZpcaClYH6AHl
         EuSdRLWzC+I3mt9cY1QBocXdfDd38PKDEulE0knkk5i+WTEDcbAtlqQ3SbsB3kJqdWt9
         6tUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qm7k0npE;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VgnOgv0AaG4gbs7dUPtvwy+MfJew739SMobyO3CMCEo=;
        b=QV3Yba35pq3qwsjLOChL4v7hjk1TBTLGlg0luH1DbyuzSKEQz6k5STnw61YVN5zB0B
         JyQU4sYk6IeyUhZXvqVoUrOEu9HcipnjpfeWncUMWn4dn4Ls0FM3zrXvyCWuQz6Bu4yk
         1nzkAcq3QPpAXcj5Yn8BHDdPXeM/J++dfRV/MWr6+WzVHChWqBQGzT84lub5SALlKqYa
         J+1NUFCYqNuTFHvmLlsFGi4xdqSWC41PtP6A0yOD175/WIO/oGp1e3pX2jJ586TGxAm3
         H2YT3E9XrXCPCuQs2Yt2cnJvIuW5uw3nmjUfQ57eBd2pJ/9f0TJ8SywrdQWHuqo5IADU
         Sl7g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VgnOgv0AaG4gbs7dUPtvwy+MfJew739SMobyO3CMCEo=;
        b=gpXM5hlgQTyPE/1bsXbog/TUOk/IIFhUe7OMSu8YLKMS7h3JTdc0h8xZ7OpDFfOzXu
         62FkaOZ1aBAdsC2yPrqbnWq/U5PM/SQJ84phhc+v9Vpvqx7OI987gHtdqM5Yuq3FVVj9
         sovNrNdHNQ3VfsNkzrqTOc1PrfhyfZmMrT/4N2B8N1jdemwiMdCSgeNiKUDVJA2FF40N
         l9Zo8mt1a+gSpXLdyVODr98J6Uzag4S/9eJ+fOpTpZ0q+wO8HE5cokgFsWcVqokrcgS/
         e6+N3KXLgVIN6KSMqrEV3eTZAOkD2HhO0NZJZbZsBqWAVyvK125YrTO5aP34gLGngJGE
         CmRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VgnOgv0AaG4gbs7dUPtvwy+MfJew739SMobyO3CMCEo=;
        b=QknwKKeWsmZQeldWyCb3fMAItbNK2OpjvteTJFIHeMcKDr/0xx3oUnsWJwEr5Us6Nu
         qW+zAXPm6FeeuNZd8CIdw6REvG9OPGiq/LHy3Y51hJpwPFa514J0TLJmCnS9fBYzqDam
         U9SV0egi4YutoXGYyWOmV9i6gprmgaQHI/UY/yy21z6O6m9LVeOHPBAHA227kniu/LCm
         Vx9V0IFl/BG9Zmt4FzY1nR31cY6+3zVI8Dj3LFneHbDgcsiTx976SAGvPZAVrDey2dcK
         M5WRXw36+5/r/pcNHy8BEt7FLmoVLYzPH6euYJxBJUAtIONaN6mF09uCECEXC+OtbiLZ
         S/jg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53048RnQ/Ql2YdXEt3424jWDJx1YAlnWFbRDi9Wp9s7pKe8oV5ym
	3i/MglTHX3U+zJ+cvMBYEIA=
X-Google-Smtp-Source: ABdhPJwmzE8W2nKCF60Wr3n9jS/r05dwYQPFdeuuzJEjtU7d5zN5a2qevydgN0RL2zMsPcrOXGw2Yg==
X-Received: by 2002:adf:ed52:: with SMTP id u18mr3830812wro.357.1603384481072;
        Thu, 22 Oct 2020 09:34:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82ab:: with SMTP id 40ls220180wrc.1.gmail; Thu, 22 Oct
 2020 09:34:40 -0700 (PDT)
X-Received: by 2002:adf:f3cb:: with SMTP id g11mr3904398wrp.210.1603384480236;
        Thu, 22 Oct 2020 09:34:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603384480; cv=none;
        d=google.com; s=arc-20160816;
        b=md1EDkSQcPzqCvNE3RB4Jl+WT8aI0bvmoheKXstv3H7XvG/NTOwNfJbxzAooSpaElX
         Jv9J/fCdgM+gJbrINb6kh+Asv9Ax7MhDMaidSNu35fMY1Oph9g9ghJ1tUJsnNkA+9rAe
         slTuHUvoZTfAK9K8rXfKBcT7+Vq561voHVvHg8EiZIgJO+ii+A+QcpXClMw8WgRTyaWB
         lQrvnq/YftgTd+kzMDj+IzLw2jZh4/MsrxS3iNSr4/WV/FkCOq/qWrnFtRCd/2qwCNRI
         843ApziGZMXyKhzdRqFJAAhhrC/jV8ms20dXtf7i5KjPxBzvJmGGQ1M7vWcbg4fxNHJr
         CmXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=40vMF3ziPu0bTT+J0yUW2LzbplLLn0NsSahmoH7oJZs=;
        b=DmhVS7vyRozOh7RKi3XXpUA3asjBuUAcMi+LLRNnu/P4onb2qvruqNMut/nXagQsle
         LWmPdHFvXoG5Sn6MeuaXnwFGV2g811jJnYejO7XP+DosVw8t5QigldbXxI3Sez0eMjtB
         1krhUe/6cj55GUznxkNbXnNQbFLvxSGJg3zNZRwizQXOp3I7x0fXyriGRq9KvisOC1mD
         6DeM68UJLbngvzRWXI3pZlQdjgC0RJ+tCV/KE/3EiJAFSlLqd9Ho5ucgb+O8O8xP6Tr5
         K/I7km14eIiH97J4m9ytP4HWR0s084sSuDLYK1V6sIvVokq/zvcollfw815C/p2k9G32
         9MoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qm7k0npE;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id j5si73039wro.2.2020.10.22.09.34.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 09:34:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id m16so2621991ljo.6
        for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 09:34:40 -0700 (PDT)
X-Received: by 2002:a05:651c:20d:: with SMTP id y13mr1328273ljn.425.1603384479618;
        Thu, 22 Oct 2020 09:34:39 -0700 (PDT)
Received: from [192.168.2.145] (109-252-193-186.dynamic.spd-mgts.ru. [109.252.193.186])
        by smtp.googlemail.com with ESMTPSA id g22sm331505lfh.31.2020.10.22.09.34.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 09:34:39 -0700 (PDT)
Subject: Re: [PATCH v1] ARM: vfp: Use long jump to fix THUMB2 kernel
 compilation error
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ingo Molnar <mingo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <20201021225737.739-1-digetx@gmail.com>
 <202010211637.7CFD8435@keescook>
 <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
 <202010212028.32E8A5EF9B@keescook>
 <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com>
 <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
 <20201022161118.GP1551@shell.armlinux.org.uk>
 <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
 <20201022162334.GQ1551@shell.armlinux.org.uk>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <53e78602-6370-aeb1-398b-5c065dd562f8@gmail.com>
Date: Thu, 22 Oct 2020 19:34:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201022162334.GQ1551@shell.armlinux.org.uk>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: digetx@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Qm7k0npE;       spf=pass
 (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::244 as
 permitted sender) smtp.mailfrom=digetx@gmail.com;       dmarc=pass (p=NONE
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

22.10.2020 19:23, Russell King - ARM Linux admin =D0=BF=D0=B8=D1=88=D0=B5=
=D1=82:
> On Thu, Oct 22, 2020 at 06:20:40PM +0200, Ard Biesheuvel wrote:
>> On Thu, 22 Oct 2020 at 18:11, Russell King - ARM Linux admin
>> <linux@armlinux.org.uk> wrote:
>>>
>>> On Thu, Oct 22, 2020 at 06:06:32PM +0200, Ard Biesheuvel wrote:
>>>> On Thu, 22 Oct 2020 at 17:57, Dmitry Osipenko <digetx@gmail.com> wrote=
:
>>>>>
>>>>> 22.10.2020 10:06, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
>>>>>> On Thu, 22 Oct 2020 at 05:30, Kees Cook <keescook@chromium.org> wrot=
e:
>>>>>>>
>>>>>>> On Thu, Oct 22, 2020 at 03:00:06AM +0300, Dmitry Osipenko wrote:
>>>>>>>> 22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
>>>>>>>>> On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osipenko wrote:
>>>>>>>>>> The vfp_kmode_exception() function now is unreachable using rela=
tive
>>>>>>>>>> branching in THUMB2 kernel configuration, resulting in a "reloca=
tion
>>>>>>>>>> truncated to fit: R_ARM_THM_JUMP19 against symbol `vfp_kmode_exc=
eption'"
>>>>>>>>>> linker error. Let's use long jump in order to fix the issue.
>>>>>>>>>
>>>>>>>>> Eek. Is this with gcc or clang?
>>>>>>>>
>>>>>>>> GCC 9.3.0
>>>>>>>>
>>>>>>>>>> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input s=
ections")
>>>>>>>>>
>>>>>>>>> Are you sure it wasn't 512dd2eebe55 ("arm/build: Add missing sect=
ions") ?
>>>>>>>>> That commit may have implicitly moved the location of .vfp11_vene=
er,
>>>>>>>>> though I thought I had chosen the correct position.
>>>>>>>>
>>>>>>>> I re-checked that the fixes tag is correct.
>>>>>>>>
>>>>>>>>>> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
>>>>>>>>>> ---
>>>>>>>>>>  arch/arm/vfp/vfphw.S | 3 ++-
>>>>>>>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>>>>>>>>>
>>>>>>>>>> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
>>>>>>>>>> index 4fcff9f59947..6e2b29f0c48d 100644
>>>>>>>>>> --- a/arch/arm/vfp/vfphw.S
>>>>>>>>>> +++ b/arch/arm/vfp/vfphw.S
>>>>>>>>>> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
>>>>>>>>>>    ldr     r3, [sp, #S_PSR]        @ Neither lazy restore nor FP=
 exceptions
>>>>>>>>>>    and     r3, r3, #MODE_MASK      @ are supported in kernel mod=
e
>>>>>>>>>>    teq     r3, #USR_MODE
>>>>>>>>>> -  bne     vfp_kmode_exception     @ Returns through lr
>>>>>>>>>> +  ldr     r1, =3Dvfp_kmode_exception
>>>>>>>>>> +  bxne    r1                      @ Returns through lr
>>>>>>>>>>
>>>>>>>>>>    VFPFMRX r1, FPEXC               @ Is the VFP enabled?
>>>>>>>>>>    DBGSTR1 "fpexc %08x", r1
>>>>>>>>>
>>>>>>>>> This seems like a workaround though? I suspect the vfp11_veneer n=
eeds
>>>>>>>>> moving?
>>>>>>>>>
>>>>>>>>
>>>>>>>> I don't know where it needs to be moved. Please feel free to make =
a
>>>>>>>> patch if you have a better idea, I'll be glad to test it.
>>>>>>>
>>>>>>> I might have just been distracted by the common "vfp" prefix. It's
>>>>>>> possible that the text section shuffling just ended up being very l=
arge,
>>>>>>> so probably this patch is right then!
>>>>>>>
>>>>>>
>>>>>> I already sent a fix for this issue:
>>>>>>
>>>>>> https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=3D901=
8/1
>>>>>>
>>>>>
>>>>> The offending commit contains stable tag, so I assume that fixes tag =
is
>>>>> mandatory. Yours patch misses the fixes tag.
>>>>
>>>> Russell, mind adding that? Or would you like me to update the patch in
>>>> the patch system?
>>>
>>> Rather than adding the IT, I'm suggesting that we solve it a different
>>> way - ensuring that the two bits of code are co-located. There's no
>>> reason for them to be separated, and the assembly code entry point is
>>> already called indirectly.
>>>
>>> The problem is the assembly ends up in the .text section which ends up
>>> at the start of the binary, but depending on the compiler, functions
>>> in .c files end up in their own sections. It would be good if, as
>>> Dmitry has shown that it is indeed possible, to have them co-located.
>>
>> Why is that better? I provided a minimal fix which has zero impact on
>> ARM builds, and minimal impact on Thumb2 builds, given that it retains
>> the exact same semantics as before, but using a different opcode.
>=20
> I think you just described the reason there. Why should we force
> everything to use a different opcode when a short jump _should_
> suffice?
>=20
> Your patch may be a single line, but it has a slightly greater
> impact than the alternative two line solution.
>=20

But the two line change isn't portable to stable kernels as-is, isn't it?

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/53e78602-6370-aeb1-398b-5c065dd562f8%40gmail.com.
