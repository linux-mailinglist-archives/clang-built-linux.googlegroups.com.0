Return-Path: <clang-built-linux+bncBCS7XUWOUULBBIEQ53ZQKGQEPFCXPKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 7153D192E4B
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 17:34:41 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id 60sf2049262otp.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 09:34:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585154080; cv=pass;
        d=google.com; s=arc-20160816;
        b=BRGmL39EjF9PGftGuC5U3WwWj1+asdhGxVRlhcENfv01p309ZaPIngTn7eM+gNHzhe
         RUr0WoO5pKaJhCtfJiYMq248UIfvDJJ28UBhuPkWgpojCN9isv1Fra/CpHv2VjPFbUTi
         0Wd8m9c7pjj1J7klR4uNYbxzKJiUUeEplKNkHyQQnZ3+VwsYwQIS73EDxxAdBJE2FFq/
         vxZd6o6YtiOdM4N4zjTadGTLa8q+qG3XHJsG5240qC0P5pFchGFX4KAhfCpt+95+Kfz6
         XZCPXaNtOOyq1EUA85cFQYFZwRZMrjsPaatFzx2Lg4YlB2a7el3dL9wjA5euAXTAYwS0
         w/Iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=CUYizQbNgx2vgfDcCb9g34U1YfeuqB9NeGNf3Pux1mI=;
        b=zeKCISj0sfvdrthXbiXw8rFG/WxWPK+AL8t9G6x1uabJZo/1YxXu1a4ycNVyK6L62e
         Bq7Sm0QSE2S47Yhej9RLe86e2yBziQA1EvbRJpy+uFsZIqrIlgT+kKLwVb+A4eaj4/Rh
         asGhhva+TuRALTqYTBVacjlvoh+Q2MEzV/49LOQQWjLDSuTdyX+iu9gAfspUnYVBdOM0
         PW6R+hzcGXCIBF8aZRP8USW/Jicc1akjxWBYuAFK2cuG67aqD4+PwbMfLounh8UC8aVi
         Mz2CdANYOG52kyvjT85Fj3BzAAtAS6zllLDPIGmk0zL9Mz6e1RbO+hPkQn7BiK4/6r4b
         i9WA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ln7nrqHL;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=CUYizQbNgx2vgfDcCb9g34U1YfeuqB9NeGNf3Pux1mI=;
        b=hhOimhXANBRjcIrzQJwoZIF2eX4MGIq7Lr4q927F6z5/AZ3Yb80CmeHS66NNI8s24y
         iBBeu9Y/m+Mt8OOsSVfz2eEtXRf4ksXPoU2apf/McVGX67ecOlwMM5LeF6wuoSklxfbM
         1WSmX/lEPPKlq1qjIgSA8k19FSY47Sv0j0EiGQ4m44rhej3VqM2HVLvijQcHFZTUAe5V
         0OJCMLtKbVm6k/mnQukLgoTBowW5ixjh84vXvAL6OSDZwvtHtb/TuJNdrGPDDgMmC9+H
         IqBZ886tRHIttFZEId3BLCSLE96noRJ375FvDobCX6LBIrb95iQskH9nPY2H7ZSdW+uZ
         vB6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CUYizQbNgx2vgfDcCb9g34U1YfeuqB9NeGNf3Pux1mI=;
        b=hzn5zrU1FLk2vqqwE0nrU3AWA3ejQaRwQMCZ+cuTg8xYEiFKXXBydzbCC4Q6FAbJgN
         wH7uSEVJ3cI0RYWhHcmtaY5sfoi9zYlahANMtS+WEiSUTJMiPe68qBn2C2Klo8D5Bfi0
         f217A9xzytwmhWMoQFOuMbumYGBkOP8aMscU44T9ZS1bggXSS0E8kIu6DkXyBiY8MGms
         6t8ujYOLMm+Q25Y0hqXqEZV2rxAQUVUqMzXPXQdjZd6rt1GW93rf5BCWASRW/hTwXp2y
         iBVMOF/usUPhEHN2E6AMJc2APBCtkcW3YameT3WdIbpcjQM44lxRKQUU5y1WDHQwMdJK
         afiQ==
X-Gm-Message-State: ANhLgQ2tVdsN5GFEqkW0NZLEXcEu3GX7aCBd/PpMwPK0b6q9WwXAPhuS
	Qh/Hg3fE6KIk5Aa/8NPqPsc=
X-Google-Smtp-Source: ADFU+vtVTtRHNQzyLdarCEx/1hyVKZFQeaPrASP4emf5mVcjttnlW7EM5CaEW2IEuDApXOUUS7UPPg==
X-Received: by 2002:a05:6830:148d:: with SMTP id s13mr2745054otq.342.1585154080311;
        Wed, 25 Mar 2020 09:34:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cd45:: with SMTP id d66ls716746oig.7.gmail; Wed, 25 Mar
 2020 09:34:40 -0700 (PDT)
X-Received: by 2002:aca:db56:: with SMTP id s83mr3149837oig.171.1585154079908;
        Wed, 25 Mar 2020 09:34:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585154079; cv=none;
        d=google.com; s=arc-20160816;
        b=FVuEEd/xba/PBfPV0qPtyw2WlAD4fp7FfX8Ak+nsOESnzGiCscEPH2DJ2f1IV9xeru
         ktvn+zQT1w40oTbeQ1p4BzejLUtm5V3dC/+oNq2e2Oto8OOV6C2hMiXX5XUzyLbQPp7/
         lvZak9Qks4111Emtvu/GMoyIdgahfzB0eCyF5P0bXKgNBhwnijfRmFlGRz99yjSoVGiu
         k+JNnSOSg4elV7BUo87eREHqpiUoXPOjtgUFwIA060IyBF4rupqKBvukS9yrQt9MA5GL
         UbxymcpH0RC1MEo5jROF1M1RnMel24W7R20WJIKwzvT1vdqIJ6f2K2Jy3i778s0zGX9G
         Pcuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=53I1ZUmEkX7E7kUoNR7ym1JpMnqNwdwGnZNoPknk3Xw=;
        b=DBYWc+09WuotBSryEwquMrKB6g9Q+uAC4kyci75XyPwrqukfSbXnBeradKdFzkesgK
         7edQs4ULhgPgGd0Lygn3ScRM3j4nBHtujeO1blS5Pp1qE5P5ymRicZvcZw39VXJs61YC
         mXWdv1rRxOmn8dwX0dWyacqFcGYUP5qVEtFL6RSHg1vEOGhKQrvtGJUKAx9Vr/h+urMS
         SmLRo57TU0JeYy/qAufM3ZQjwIbahOTvwqtM0GVMCwwoH6VGwsaRchY1twoKl+8fUInX
         h5yZnUMizP4aDm79MhigKHE8I8ZhPUQ+vvWZ5WwNV+q9l62KqTOsD3j4t8n5vUXpN/aT
         vC4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ln7nrqHL;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id p29si129190oof.2.2020.03.25.09.34.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 09:34:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id j1so1310824pfe.0
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 09:34:39 -0700 (PDT)
X-Received: by 2002:aa7:96c8:: with SMTP id h8mr4181269pfq.49.1585154078900;
        Wed, 25 Mar 2020 09:34:38 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id g14sm18477470pfb.131.2020.03.25.09.34.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 09:34:38 -0700 (PDT)
Date: Wed, 25 Mar 2020 09:34:34 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Alan Modra <amodra@gmail.com>
Cc: Joel Stanley <joel@jms.id.au>, linuxppc-dev@lists.ozlabs.org,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] powerpc/boot: Delete unneeded .globl _zimage_start
Message-ID: <20200325163434.qvm3h57slivq52eu@google.com>
References: <20200325051820.163253-1-maskray@google.com>
 <CACPK8Xf70Yq2szW110G_2f2Q3J6inVqQY4Y-y0tggkVmT7tmfw@mail.gmail.com>
 <20200325083702.GE4583@bubble.grove.modra.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200325083702.GE4583@bubble.grove.modra.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ln7nrqHL;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-03-25, Alan Modra wrote:
>On Wed, Mar 25, 2020 at 05:22:31AM +0000, Joel Stanley wrote:
>> On Wed, 25 Mar 2020 at 05:19, Fangrui Song <maskray@google.com> wrote:
>> >
>> > .globl sets the symbol binding to STB_GLOBAL while .weak sets the
>> > binding to STB_WEAK. They should not be used together. It is accidetal
>> > rather then intentional that GNU as let .weak override .globl while
>> > clang integrated assembler let the last win.
>
>No, it isn't accidental.  gas deliberately lets .weak override .globl.
>Since 1996-07-26, git commit 5ca547dc239

Fair. I am sadded by this commit.

% sed -n 'N;/.globl.*\n.*.weak/p;D' binutils-gdb/gas/testsuite/**/*(.)

I checked all occurrences and none is a real test excercising the behavior (.weak override .globl).
All seem accidental.


It is unclear that clang integrated assembler should copy this
behavior, though. For the record, I asked on binutils@sourceware.org
whether the assembler should error when .weak/.local can override a
previous binding directive. It was rejected
https://sourceware.org/pipermail/binutils/2020-March/110376.html

On the clang integrated assembler side, we may try building things with
an error or leave the overriding behavior as is.

>I'm fine with the patch so far as it is true that there is no need for
>both .globl and .weak (and it looks silly to have both), but the
>explanation isn't true.  The patch is needed because the clang
>assembler is incompatible with gas in this detail.

Since using one of .weak|.globl is nearly well-known, I'll send PATCH v2 with
the description updated.

On 2020-03-25, Segher Boessenkool wrote:
>Nothing is "overridden".
>
>The as manual says (.weak):
>
>  This directive sets the weak attribute on the comma separated list of
>  symbol 'names'.  If the symbols do not already exist, they will be
>  created.
>
>so this behaviour is obviously as intended (or was later documented in
>any case), so LLVM has a bug to fix (whether you like this (much saner)
>behaviour or not).

I will probably not call this a bug. I have recently discovered other
discrepancy for which I think copying gas behaviors can just clutter up the
code. We may need our own assembler documentation at some point.

>> > Fixes: cd197ffcf10b "[POWERPC] zImage: Cleanup and improve zImage entry point"
>> > Fixes: ee9d21b3b358 "powerpc/boot: Ensure _zimage_start is a weak symbol"
>> > Link: https://github.com/ClangBuiltLinux/linux/issues/937
>> > Signed-off-by: Fangrui Song <maskray@google.com>
>> > Cc: Joel Stanley <joel@jms.id.au>
>> > Cc: Michael Ellerman <mpe@ellerman.id.au>
>> > Cc: Nick Desaulniers <ndesaulniers@google.com>
>> > Cc: clang-built-linux@googlegroups.com
>> > ---
>> >  arch/powerpc/boot/crt0.S | 3 ---
>> >  1 file changed, 3 deletions(-)
>> >
>> > diff --git a/arch/powerpc/boot/crt0.S b/arch/powerpc/boot/crt0.S
>> > index 92608f34d312..1d83966f5ef6 100644
>> > --- a/arch/powerpc/boot/crt0.S
>> > +++ b/arch/powerpc/boot/crt0.S
>> > @@ -44,9 +44,6 @@ p_end:                .long   _end
>> >  p_pstack:      .long   _platform_stack_top
>> >  #endif
>> >
>> > -       .globl  _zimage_start
>> > -       /* Clang appears to require the .weak directive to be after the symbol
>> > -        * is defined. See https://bugs.llvm.org/show_bug.cgi?id=38921  */
>> >         .weak   _zimage_start
>> >  _zimage_start:
>>
>> Your explanation makes sense to me. I've added Alan to cc for his review.
>>
>> Reviewed-by: Joel Stanley <joel@jms.id.au>
>>
>> Thanks for the patch.
>>
>> Cheers,
>>
>> Joel
>>
>> >         .globl  _zimage_start_lib
>> > --
>> > 2.25.1.696.g5e7596f4ac-goog
>
>-- 
>Alan Modra
>Australia Development Lab, IBM

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200325163434.qvm3h57slivq52eu%40google.com.
