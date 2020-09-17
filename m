Return-Path: <clang-built-linux+bncBD63HSEZTUIBBVH2RP5QKGQEGEGNJAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9A726D36A
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 08:08:22 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id ic18sf496902pjb.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 23:08:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600322901; cv=pass;
        d=google.com; s=arc-20160816;
        b=IFIbcBPpKk6boGH8KX8zmMCSXfU7SvWo8Wj/yTY8dd467hP1Z72bZPhF2nJ/Ppr24s
         RyGqX3n0D3dCsFYagwMBGjTFnOBtEiLIpRMTYz+n31ehYmDD1PBvkUs4Z90bmKV6crWJ
         cwvN4T1nI/+mCQliW1CsqsBh9D1vi2dcClHwkBvoOA88sX9gYXkUoxhpcz42dE7pPEnZ
         dmo0Tad8KeLxxQxSq9BugbRvRY7i1Sj9JliUtv2biZ+oceMDrXqMeLgujzXrvns/gMEk
         3UrJQrlZGQNej9WWzSPfpNKX0A5ZXqcLpbtUy4t74JqarNYypIfcnIgEScfIl/VyPfz/
         ZY8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=IoJ6L9uk1gsLT2iqB997Pi5oCzfD2oR2AGEyIeH0Vmg=;
        b=VEDUluRrUNK9VfN4er04U981eTghNGU3+UwDAkuhu0nPzIaiv63D9uR80bkiDN7tht
         ceeoYP7nN/zaNsZ83AWrDLkTE2cxURT7aY6J4/GpPkz7FrckihgBVp+DwdDNoTR49lRd
         jjOCxlPYELrCNHHzDS5cGNO7sjPWDqq0KMmqr3ooYrvpPlILSFxUvx1VI9Gc/MMUDKah
         lrD9VPIef6G4dG5hj56MgqyuHgsv3Y4Qqz0uNCeRgO0FYhIkhoxIuD33Zb7fWthO2yDA
         TmwlGYEad0aeNipMGbrU/JEoKJ8loc/b48Mo+xX5sBhNIuVUUGhkrbG2Ndb/iYP8f82I
         6lPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Wr7Imjh2;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IoJ6L9uk1gsLT2iqB997Pi5oCzfD2oR2AGEyIeH0Vmg=;
        b=mElF9lSacN2HBilW95y16Lcv3Rmsu4NkhtHp9gyj6LEEaid9+3Nj3UzqmKRkaeVkWM
         +CRiOAC7Xusepaz/Lw/VUdoe8hdIj5X268JoyN64Tz833mozbLk8HJco3Mi/EzkpX77F
         JD+nu1d/8GUj1mprWRy7susbhHeQ0ttR34SrAqbn8dknz3MrUxFLE853S4eZ8pu8l0VP
         dHFFctwGwjchgjyBItEBr+sBU5M0ICvBrYBUF82y8xyoZjhGdWct2WWNux++b4HQBIFS
         FKXOjbb2k2oQPqBaS8M/qsZv+XkgA2s08zae/8bq+94+Y8MI3hMu13qmNq0adz/otQwu
         TQSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IoJ6L9uk1gsLT2iqB997Pi5oCzfD2oR2AGEyIeH0Vmg=;
        b=XMDJHzDGOwg6iIFq8sjgy74QujNSRFEB/euIljsIjVoVOpWnoaoA++AwVJx5yUTKNa
         gSTCD7po94WTto38od+xy3rIu5xSu0AstEHWEp8GXCkf5Z5s04v5U9t3T/SyPfSIAUEC
         T4G4Qtd0y/uEAm62ib0bzxvtxeVfstcpPKUIjtyBZHJv+C/o2KoHjgyfjKwMvwo18C0X
         D8qe6J4BRUNKF18wKZSSIoGbq9gGekablvTGC3/B2MMJzqY4a3sZGRMHbFEXYULlwmo/
         S1kPsALLaBusbEdLJUKHGSiiiPbXh4qhjHQlJkCjdzPzm847CC/0nebS97j0wBP5FgI2
         UPgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533uBVuNKUc+SQOeK2D0GPn6fJvaMF5IoQF/v6xfWcZrH5sR/l4Z
	pfwAOpHTybj4f3ec/GduD8Q=
X-Google-Smtp-Source: ABdhPJx0/KyULf6nQ0Jer0cXuDmwJCqHqM24Nbmwy8KhLLfj+nKSqm2NsrMNtR3eJk4/P/ixMb9p/A==
X-Received: by 2002:a17:90a:1548:: with SMTP id y8mr7022578pja.113.1600322900950;
        Wed, 16 Sep 2020 23:08:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8d89:: with SMTP id v9ls593665plo.4.gmail; Wed, 16
 Sep 2020 23:08:20 -0700 (PDT)
X-Received: by 2002:a17:90a:e391:: with SMTP id b17mr7128268pjz.127.1600322900401;
        Wed, 16 Sep 2020 23:08:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600322900; cv=none;
        d=google.com; s=arc-20160816;
        b=rqptHHnZI5sxRckDcLj5cZynF1ViOlxx5zmskfhzstWX6pHlO5qq30TA5r9HtTURQO
         bcRgLRwB9sEtiY24xe1ss9YN330qqLwfrziIjQpc85a/V47J6TXiAk4VzNj13MbzrmjC
         YUIqLuGuKpkpGM/Iva/5yQnKBGaQsLNXQveSWvo6VFQm6hXUuhojR40Nm0gl/H1XtQ3T
         BXPVd72kjxarlIdh9w12bt4LUoBiNs2bCpakXjyWjcqlxxH1m7T1H+nJIQwSWLACt0Gr
         oV2ZodYFuXjtMMJM2sC46024JAghvacqL13RFcHPIhdlbe3XWwN2Jy2IZTtUrLmvSNHX
         ErFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cHgoL5u3UCHC+juKGwOhc8Vi//NX21VTTlB5y12Xo2M=;
        b=OUOZ/RgoawY7NONFmS87CsG4CFDSDNwOLvynrmUt4iS2NqQy4nIc73xIidjEyRWRGJ
         Mw694OprnJaZAlMzQPcYnLJHcttjR8cg3eueowGTY54gnxkPyDx2Qy/wW6KgDRFg9U+o
         40xE/xsj0p2FCf94RXZcykDiuWhYFRCDhFeAezsy23Ha9QvsoW4erkkk2xoKgl/8pQjh
         BoMufC1mktviOCa9jvUvm0PDzeCTNKuQ8QiKcgc4l5b9MrajYgCD1nEvU57EZN9gm6Cu
         SC7R4b19tcoinzi1ycw//cwyOjs6OzL9Yx8AZBklk/UGJAmOM2sHBeg5abm/oCVlAH3x
         ZI0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Wr7Imjh2;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g11si1214783plp.3.2020.09.16.23.08.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 23:08:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F118A21D41
	for <clang-built-linux@googlegroups.com>; Thu, 17 Sep 2020 06:08:19 +0000 (UTC)
Received: by mail-ot1-f50.google.com with SMTP id q21so850269ota.8
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 23:08:19 -0700 (PDT)
X-Received: by 2002:a9d:6193:: with SMTP id g19mr18250382otk.108.1600322899254;
 Wed, 16 Sep 2020 23:08:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200916061418.9197-1-ardb@kernel.org> <CAKwvOdmqFoVxQz9Z_9sM_m3qykVbavnUnkCvy_G2S2aPEofTog@mail.gmail.com>
In-Reply-To: <CAKwvOdmqFoVxQz9Z_9sM_m3qykVbavnUnkCvy_G2S2aPEofTog@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 17 Sep 2020 09:08:08 +0300
X-Gmail-Original-Message-ID: <CAMj1kXE-WJoT0GhCzGGqF4uzVNCqdd1O0SZ9xbHP25eQMCUsqw@mail.gmail.com>
Message-ID: <CAMj1kXE-WJoT0GhCzGGqF4uzVNCqdd1O0SZ9xbHP25eQMCUsqw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] crypto: arm/sha-neon - avoid ADRL instructions
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Stefan Agner <stefan@agner.ch>, Peter Smith <Peter.Smith@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Wr7Imjh2;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 17 Sep 2020 at 03:53, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Tue, Sep 15, 2020 at 11:14 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > Remove some occurrences of ADRL in the SHA NEON code adopted from the
> > OpenSSL project.
> >
> > I will leave it to the Clang folks to decide whether this needs to be
> > backported and how far, but a Cc stable seems reasonable here.
> >
> > Cc: Nick Desaulniers <ndesaulniers@google.com>
> > Cc: Stefan Agner <stefan@agner.ch>
> > Cc: Peter Smith <Peter.Smith@arm.com>
>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>

Thanks!

> Thanks Ard:
> compile+boot tested each combination of:
>
> [gcc, clang]x[defconfig, defconfig+CONFIG_THUMB2_KERNEL=y].
>
> Now, if I additionally apply:
> 1. this series
> 2. the adr_l series:
> https://lore.kernel.org/linux-arm-kernel/20200914095706.3985-1-ardb@kernel.org/
> 3. unrelated fix for -next #1:
> https://lore.kernel.org/lkml/20200916200255.1382086-1-ndesaulniers@google.com/
> 4. unrelated fix for -next #2:
> https://lore.kernel.org/linux-mm/20200917001934.2793370-1-ndesaulniers@google.com/
> 5. small fixup to 01/12 from #2:
> https://lore.kernel.org/linux-arm-kernel/CAMj1kXFmF_24d-7W8AWTJR-PCcja7bUdHhYKptGQmsV4vNp=sA@mail.gmail.com/
> 6. vfp fixup for thumb+gcc:
> https://lore.kernel.org/linux-arm-kernel/CAMj1kXHEpPc0MSoMrCxEkyb44AkLM2NJJGtOXLpr6kxBHS0vfA@mail.gmail.com/
> 7. disable CONFIG_IWMMXT https://github.com/ClangBuiltLinux/linux/issues/975
>
> Then build with Clang's integrated assembler:
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 LLVM_IAS=1 -j71
>
> I see a bunch of warnings
> (https://github.com/ClangBuiltLinux/linux/issues/858) which we will
> fix, but I am able to build and boot.  (CONFIG_THUMB2_KERNEL=y has
> many more issues, so I didn't pursue that further).
>
> Either way, these two adrl patches go a long way towards getting Clang
> to assemble an ARCH=arm kernel; thank you for all of the work that
> went into them.
>

My pleasure :-)

> One thing I noticed was that if I grep for `adrl` with all of the
> above applied within arch/arm, I do still see two more instances:
>
> crypto/sha256-armv4.pl
> 609:    adrl    $Ktbl,K256
>
> crypto/sha256-core.S_shipped
> 2679:   adrl    r3,K256
>
> Maybe those can be fixed up in patch 01/02 of this series for a v2?  I
> guess in this cover letter, you did specify *some occurrences of
> ADRL*.  It looks like those are guarded by
> 605 # ifdef __thumb2__
> ...
> 608 # else
> 609   adrl  $Ktbl,K256
>
> So are these always built as thumb2?
>

No need. The code in question is never assembled when built as part of
the kernel, only when building OpenSSL for user space. It appears
upstream has removed this already, but they have also been playing
weird games with the license blocks, so I'd prefer fixing the code
here rather than pulling the latest version.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXE-WJoT0GhCzGGqF4uzVNCqdd1O0SZ9xbHP25eQMCUsqw%40mail.gmail.com.
