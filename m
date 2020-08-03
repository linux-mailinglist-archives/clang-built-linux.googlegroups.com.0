Return-Path: <clang-built-linux+bncBCR5PSMFZYORB5XAT74QKGQECNF7RGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BE723A31E
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Aug 2020 13:09:43 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id r9sf13007602oie.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Aug 2020 04:09:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596452982; cv=pass;
        d=google.com; s=arc-20160816;
        b=JuAZTCDl/kJEoUo8BEp7gtqhrwWVevpXfnB5Xg7+22ZzLpEjLfaXx744oqHGaCcit/
         GV1HhbgQXE1XQgxLldo1OU6O2nrFuZEdmr3eFmBYd1QMSw35HXdrTThnZy7wotMs1wCy
         1X9qEIDIzzpGlwCnpxUTbeJW0lYbxAkZIoliCJMgstY4cXtI+4PMxrZ5Ju8yl3NkonSy
         on1HJJxUiFbukEqMU0u/Fm2swSuhdU3giWTqak1LV2XfsvEGITx/lNI6pNPqeIz+0iaE
         mxcdSBEfQtY2+PFAeh70UFbd/zIWIrw5+kF6Qq1hxQrbNPz9PLibeM4cF/SiComBshw1
         SOWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=mk8cy7uoBOf4PRlpgn9TzHfu2GvBRU2jgVtgl1H+HmE=;
        b=Uajmrp8vtoK1k2MA84lvskalQybYngzejl5hs3FfQ3a2Mgz8rjUxfVPGVrt3pezxQE
         7E5fYGK/k9A/408W72iBbSHyvU1C3JfE29cMqsfqevB9GdnXAtK8wyceoO5jRCvkT+vr
         bsUovDXyDUE9AmLSyuiiCEbpZkE1MCGoNKJlB88gKec40+7E7qVqJukS8VlPx/7b+lRe
         /XaxpZooyTbNilFIxZ69W9t3VXjvduaFMZh0uSWUNnHOSucjjABHBCqKsrCD5Fm3jyuJ
         EMAg4rY89iGVO5lCLH6KKBzEaOEkQp84M4+4Zdc0ugMDVljUj0yBVmdNQFrNgMisodyK
         ZCLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=ecphZuxZ;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mk8cy7uoBOf4PRlpgn9TzHfu2GvBRU2jgVtgl1H+HmE=;
        b=XmlTcYJVCInRWHCHjYw/dw88MnwzvSflOqVYaQ4TAb4B9BIDrpBWLqmw/cuCzU9Fl6
         27tvb0cceS0LLiFw7Pgzjvjdb5/ML4cBBOI4jiq7HwbYmMGA5KegVEImWHSlMB1wsdYp
         h/Vv8hOSgm36iexXNU4R5muzjaOM7Sv3ausiZqaFdiz5q2Dd1qxd4nqzuTX+u6eMSMVj
         Ap+UUhX2TebUdYuaaIs3C0PUfETZVX0eBQooV+5imvIQQXsXXByTTSASO9sAKc62MAT8
         FbZZeRyWP9Awg5W8LG/H7jfAy+k+bdY0qr19tRAMQdWkVpz27SIST12wKlKJA8O9YSCX
         mgvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mk8cy7uoBOf4PRlpgn9TzHfu2GvBRU2jgVtgl1H+HmE=;
        b=CmzvRXmvQQiXCN0x/3H3Kh1NTrO2ejr7sAh0FI80u7Pc7VvmiiuR56N3OIA0eWLEOX
         HIAiNJ8PtzqM7HKFEKvUT6+D5MhxOg4ZGpnizLvurXY18ww4bLKlUofBBdwtgSBdKbup
         4YQIrmrMG3oy8mhpq+nerPhF61UWPT0QvD1NeYmSVCRJ4m7ex3w81isSEY2QHF+bpAry
         D2GxVjqxUPyqLIxoiFw9nwBiO7pasLoS3RmPGpO+gcMOwxdk5JZslJEHArhDHVeIs2D8
         Dyo3AqgR88KpOr27qLfIls0lVMFSUxbyXZ+i/YZR6iRusDW55W9qr9E1WRgmQE2T0dZ/
         mltg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ac6zaL+S7lr5yzlYKN83q/uOIHTmaPaBPgrQxvKlOmwQN0VB6
	CsPWRYvcBhdiHCl+rcIlrhg=
X-Google-Smtp-Source: ABdhPJwl+0s36gKmR8ZgJMLrTPWb5d2dYVViDMqWlFDBux5OMmZTKbYdq/oD2j0KJXmlY+/pungqCA==
X-Received: by 2002:a9d:5e18:: with SMTP id d24mr12605513oti.88.1596452982336;
        Mon, 03 Aug 2020 04:09:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c38e:: with SMTP id t136ls3090158oif.10.gmail; Mon, 03
 Aug 2020 04:09:42 -0700 (PDT)
X-Received: by 2002:a05:6808:204:: with SMTP id l4mr11140515oie.16.1596452982084;
        Mon, 03 Aug 2020 04:09:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596452982; cv=none;
        d=google.com; s=arc-20160816;
        b=lIQMuNpKjCUm435lHZ+RaES4FYS4lD3xJFWMpCvEwvSVOdsA9jhQXEpqGCqbntOCSe
         TYSpOHiy/HP5q0atCA30ssFTgRaLe633AGS0K7cEOfbaEenYxHBH7+jCyh0GzNUCA8Fr
         TuosUPyoI0byyfS08HMSuCcu7kzTnCJmbZ4HGIlDcEw/UwZsL92iSg24FOlJtqKcSnc0
         jx5sQzAyGXBqyty8Wb5mnC9o8jSt0yAXjiixQbeJB+yxCSPCqhXiNrk1MZWkX0LSr6Co
         HWfETrmGg+vbdiahz7eU8fG48Y2hAiq3xbPYiVB3WKg7MEcdcUWZJC3520czU8HcwG9I
         seMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=xPRqWhmiTOnIG39R/K1Z1cwGIqNyiPow0RTWLH+/BBQ=;
        b=pUFN6CPc/xnBsMt2uv20pnlV/J2b4fGyCWI+YqZTodtkDiixxBnWF77TK0jANq1mI4
         SzAthPGAF470QxuOGKe0S4poLlH6aahre0w4kR53u+sLPMY2c/s/yNSU4qQVkkXUfv7Y
         FJLNarALj4xQ7iUta7Z0DXdputqihovPuTRHIcZmXMC6QduqPtsWRMqnbDTB42F5O/7m
         5YSU/lBKxxYss4rD07Lmy9Gr7LChf6Ozhc36yJbiZfBCyvE/bTym7pRk2nSywG4xkTmx
         XfS9HS2u8GwsJ65kqECrJF+ko6Jy6a83ayxE7eLKz7W6i6LvhOyDqrIUKNuMFZiSfV5A
         80yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=ecphZuxZ;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id r64si719703oor.2.2020.08.03.04.09.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2020 04:09:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4BKwBn2Nw4z9s1x;
	Mon,  3 Aug 2020 21:09:37 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Geert Uytterhoeven <geert@linux-m68k.org>, Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, Geoff Levand <geoff@infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, Paul Mackerras <paulus@samba.org>, Joel Stanley <joel@jms.id.au>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: [PATCH] powerpc/boot: Use address-of operator on section symbols
In-Reply-To: <CAMuHMdUmHE-KVQuo=b2rn9EPgmnqSDi4i16NPbL5rXLLSCoyKg@mail.gmail.com>
References: <20200624035920.835571-1-natechancellor@gmail.com> <CAMuHMdU_KfQ-RT_nev5LgN=Vj_P97Fn=nwRoC6ZREFLa3Ysj7w@mail.gmail.com> <20200720210252.GO30544@gate.crashing.org> <CAMuHMdUmHE-KVQuo=b2rn9EPgmnqSDi4i16NPbL5rXLLSCoyKg@mail.gmail.com>
Date: Mon, 03 Aug 2020 21:09:36 +1000
Message-ID: <87zh7cyoi7.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=ecphZuxZ;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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

Geert Uytterhoeven <geert@linux-m68k.org> writes:
> On Mon, Jul 20, 2020 at 11:03 PM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
>> On Sat, Jul 18, 2020 at 09:50:50AM +0200, Geert Uytterhoeven wrote:
>> > On Wed, Jun 24, 2020 at 6:02 AM Nathan Chancellor
>> > <natechancellor@gmail.com> wrote:
>> > >         /* If we have an image attached to us, it overrides anything
>> > >          * supplied by the loader. */
>> > > -       if (_initrd_end > _initrd_start) {
>> > > +       if (&_initrd_end > &_initrd_start) {
>> >
>> > Are you sure that fix is correct?
>> >
>> >     extern char _initrd_start[];
>> >     extern char _initrd_end[];
>> >     extern char _esm_blob_start[];
>> >     extern char _esm_blob_end[];
>> >
>> > Of course the result of their comparison is a constant, as the addresses
>> > are constant.  If clangs warns about it, perhaps that warning should be moved
>> > to W=1?
>> >
>> > But adding "&" is not correct, according to C.
>>
>> Why not?
>>
>> 6.5.3.2/3
>> The unary & operator yields the address of its operand.  [...]
>> Otherwise, the result is a pointer to the object or function designated
>> by its operand.
>>
>> This is the same as using the name of an array without anything else,
>> yes.  It is a bit clearer if it would not be declared as array, perhaps,
>> but it is correct just fine like this.
>
> Thanks, I stand corrected.
>
> Regardless, the comparison is still a comparison between two constant
> addresses, so my fear is that the compiler will start generating
> warnings for that in the near or distant future, making this change
> futile.

They're not constant at compile time though. So I don't think the
compiler could (sensibly) warn about that? (surely!)

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87zh7cyoi7.fsf%40mpe.ellerman.id.au.
