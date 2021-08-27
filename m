Return-Path: <clang-built-linux+bncBCR5PSMFZYORB5VTUKEQMGQEVSLRB4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E283F9592
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 09:53:37 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id n26-20020a05680803ba00b002695053b627sf2980049oie.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 00:53:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630050806; cv=pass;
        d=google.com; s=arc-20160816;
        b=LwgE/ze6oQI5TOmXsjHUdjRv/QBPZ7QTIscbfz4ORW7kum+TTFW8diSY5LjIPalpBX
         SiTSSiUc8nPWBw1Snz8mwqZW5CLJWEThHsJBIag4Or4szKVW0zI9T9fa8NxDORPHXSbc
         UNyb8ToDo5y/BdQEP/vWmVFnCjIX0v/K/ft3Q2OfOAaTYfAhzXlGCtRd5AUsbCYmOzld
         yP/G2tg0UkKj5xCSijaBmFz6FIJ9V4jgokAqewilItXU4pdqxaH1/8IkhI88Mfh1/Tuy
         l/fhAUOfLtqsAlHErUIYSXOqJIMBc9RwlIKUZOizEYN7/VdB7mJW+q5WHcPB8hwfNnxj
         ULjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=yMt5eeLKSeU/IvAZ/GI+2DqzsOm8WlczOHfRfKDyn/Q=;
        b=xKVZSwCmAswHVoGnd/Mgr7dkyJ7mQkpX4pCukZqin5TbmzuO18zpgGQnvkABlmYsNQ
         0y79VkpLk6jZaSHVg7zNgB5Qws/KfljVuRTx9Bub5Ne4rZFQ4+rcbigDqMUhSlj+LEi8
         l+xCejW4S2Rxb6ryNMfxvWKn4fu8tdop/H5e0VmyPQtUcGYejXRLG7Pje7ZSBbDy/bcq
         vxHDvYvUnrQ39Msx9CmdhMpfzqOld7+3SpKoTrldHPLnGa3xDbA1VZccEKeIHvdDHoN/
         +fR1mMzW8vp4cbvc1xkm+sAUiFBgqn2DiE+965nXL2s3JvpFYr4afiEP6dKROlI5O70G
         GHWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=NOAW2aqX;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yMt5eeLKSeU/IvAZ/GI+2DqzsOm8WlczOHfRfKDyn/Q=;
        b=POlQpRXYljMxtQT0RPHGAfKbpCDsJTqiszcEABqjxFqteYn4uIL24fvhRTk5Ro221l
         6Jd3213CVwHYMizZSN9g6khRHLXVUDch63aIDZCtaS+qEwzhMqPEbpP2vfYZOh1JGpQy
         l3B0zyekjNN9z+iciZ1NIPZ11iqrzB+b91SrAMuzg1HnNQc43kBgJRwKMoOjQN6q6SLk
         0uRPRqQecZV4CXVuDHzL53m62cmvqBgbtaVvGfxC4d3uY316mBOFgyeU20bgj9DCv92V
         7flU2Ng6M09g1p0iU6be6rbePCSU6GksoyiXq9uVIwX3smsNE+nqYJMXQOgulQ+1gtXK
         orOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yMt5eeLKSeU/IvAZ/GI+2DqzsOm8WlczOHfRfKDyn/Q=;
        b=Y1hJAc3luicWBGhb/rdGBfcuN/icyF3G5VWBtlKJT0xSAkfSojixbNijMa2xlfQoeE
         ZHPQ4Le324vFnRoWbNVwrog5x1v9+Uh/SwYtwcI4YPzLPgd/NblQL2JApzJQsno8GZte
         Kzv/MW+KvWL0oc6kgSS2gN4RIxNb+UiLGaQxnFqIrYkuIVCokt3kZlSz+c10DLKzlm3m
         C4GKRLihyyh5b3crrjb8qsaAXGuhsC/apx8ZJlc6/zwOwvui07qMT9rFjm1BKDLc+1XR
         mWTgGALctLC+gzZuq1O0AOQ2bb6aRGM/oO21Zt6Iy3uhPuSc3COMvkxOpJ/fDhxi2awo
         IImg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336qfZ/76kx2i82EnoRKkEq4sD8eZkpv/erLSFwnjORJcE+sFV5
	OeGX4Vo4IY/V2kfk4/3NPJ0=
X-Google-Smtp-Source: ABdhPJzjXR+naf0E+1FddBDb/beBINRZWlBF2vb9w3Ncy1bI+fVWGzmepwCA46PAGapCd+tNdiV/Hw==
X-Received: by 2002:a05:6830:1589:: with SMTP id i9mr6866740otr.196.1630050806315;
        Fri, 27 Aug 2021 00:53:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e24f:: with SMTP id c15ls572268oot.8.gmail; Fri, 27 Aug
 2021 00:53:25 -0700 (PDT)
X-Received: by 2002:a4a:2a09:: with SMTP id k9mr4589121oof.79.1630050805875;
        Fri, 27 Aug 2021 00:53:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630050805; cv=none;
        d=google.com; s=arc-20160816;
        b=qDmyr3gGuvwvkCvH1FgekWM7UmNXvvtbShFhChqnPqpKqT7CId8cZHey1jU9pPYjtB
         RjYihPuFeFdkR95+xeHkWnVQ019B2YDu9dELALc80K6qq9TlBuhWi8dOlqqYBJgoKwFm
         ayE95nJpI1r3/zrDv7xl3CE3iPH5YXutLoeabB+Q9YKF2EOM+I4hdbuQFGWCB+yZP+vv
         xj6q6Jk5CSS4yRfMW3GjUeo3qek2ShYuSO+vFmF7qTYjj9EfnCIlaT1b7xK74E+Ezj+/
         J2dYVxaj0HArrrLXe7AVeCf04YtfF/VmQxVfpdvd5o8iPsj4PF6FC8Kr1i3tTp2E9Pm4
         ZJpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=1qUPPOtl/jzP4e2/AHdvpaPrD2MZxD0xpD3UzdwgVjE=;
        b=RzlMCdJQk0jsj+xVrd4WVNS+pPaTBr8qX3wWuJOc0eTEAqUuGq+iMof3lcJ/uvk1hv
         20YZRHIohhJfathNtiaRQ9h3LKbC8BAEJOPowG7leRk6ApwwjkhvWmlUcS/kwf3v/geo
         TIqyEaPdJJaldIO55j+x/CGaww3L1//RAXzx2IKBmC7WacTmeYb96jYP4/vToFolBPoV
         VgeggTGV8zcxgfdWqlq+nclQEkdFcd/LLExseVvjun8ZOnDMA2tD6S4JpxnRZVjuz44I
         bU4X0PF/TN92vjah+iFj7S28si/obFzk1NkWorANGrTZ8XHvnONV4HDBO3+Db1H1KnKq
         tQbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=NOAW2aqX;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id s30si147946oiw.1.2021.08.27.00.53.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 00:53:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4GwsQk4qx4z9sPf;
	Fri, 27 Aug 2021 17:53:18 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nathan Chancellor <nathan@kernel.org>
Cc: llvm@lists.linux.dev, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Paul Mackerras <paulus@samba.org>,
 linuxppc-dev@lists.ozlabs.org, Christophe Leroy
 <christophe.leroy@csgroup.eu>, Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2 2/2] powerpc/bug: Provide better flexibility to
 WARN_ON/__WARN_FLAGS() with asm goto
In-Reply-To: <YSgp7HNGXbzrfvFq@Ryzen-9-3900X.localdomain>
References: <b286e07fb771a664b631cd07a40b09c06f26e64b.1618331881.git.christophe.leroy@csgroup.eu>
 <389962b1b702e3c78d169e59bcfac56282889173.1618331882.git.christophe.leroy@csgroup.eu>
 <YSa1O4fcX1nNKqN/@Ryzen-9-3900X.localdomain>
 <87h7fcc2m4.fsf@mpe.ellerman.id.au>
 <YSfjWfGbZbpYBn+w@Ryzen-9-3900X.localdomain>
 <YSgp7HNGXbzrfvFq@Ryzen-9-3900X.localdomain>
Date: Fri, 27 Aug 2021 17:53:12 +1000
Message-ID: <878s0nfhnb.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=NOAW2aqX;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nathan Chancellor <nathan@kernel.org> writes:
> On Thu, Aug 26, 2021 at 11:54:17AM -0700, Nathan Chancellor wrote:
>> On Thu, Aug 26, 2021 at 01:21:39PM +1000, Michael Ellerman wrote:
>> > Nathan Chancellor <nathan@kernel.org> writes:
>> > > On Tue, Apr 13, 2021 at 04:38:10PM +0000, Christophe Leroy wrote:
>> > >> Using asm goto in __WARN_FLAGS() and WARN_ON() allows more
>> > >> flexibility to GCC.
>> > ...
>> > >
>> > > This patch as commit 1e688dd2a3d6 ("powerpc/bug: Provide better
>> > > flexibility to WARN_ON/__WARN_FLAGS() with asm goto") cause a WARN_ON in
>> > > klist_add_tail to trigger over and over on boot when compiling with
>> > > clang:
>> > >
...
>> > 
>> > This patch seems to fix it. Not sure if that's just papering over it though.
>> > 
>> > diff --git a/arch/powerpc/include/asm/bug.h b/arch/powerpc/include/asm/bug.h
>> > index 1ee0f22313ee..75fcb4370d96 100644
>> > --- a/arch/powerpc/include/asm/bug.h
>> > +++ b/arch/powerpc/include/asm/bug.h
>> > @@ -119,7 +119,7 @@ __label_warn_on:						\
>> >  								\
>> >  			WARN_ENTRY(PPC_TLNEI " %4, 0",		\
>> >  				   BUGFLAG_WARNING | BUGFLAG_TAINT(TAINT_WARN),	\
>> > -				   __label_warn_on, "r" (x));	\
>> > +				   __label_warn_on, "r" (!!(x))); \
>> >  			break;					\
>> >  __label_warn_on:						\
>> >  			__ret_warn_on = true;			\
>> > 
>> 
>> Thank you for the in-depth explanation and triage! I have gone ahead and
>> created a standalone reproducer that shows this based on the
>> preprocessed file and opened https://bugs.llvm.org/show_bug.cgi?id=51634
>> so the LLVM developers can take a look.
>
> Based on Eli Friedman's comment in the bug, would something like this
> work and not regress GCC? I noticed that the BUG_ON macro does a cast as
> well. Nick pointed out to me privately that we have run into what seems
> like a similar issue before in commit 6c58f25e6938 ("riscv/atomic: Fix
> sign extension for RV64I").

Yes, I read that comment this morning, and then landed at the same fix
via digging through the history of our bug code.

We in fact fixed a similar bug 16 years ago :}

32818c2eb6b8 ("[PATCH] ppc64: Fix issue with gcc 4.0 compiled kernels")

Which is when we first started adding the cast to long.


> diff --git a/arch/powerpc/include/asm/bug.h b/arch/powerpc/include/asm/bug.h
> index 1ee0f22313ee..35022667f57d 100644
> --- a/arch/powerpc/include/asm/bug.h
> +++ b/arch/powerpc/include/asm/bug.h
> @@ -119,7 +119,7 @@ __label_warn_on:                                            \
>                                                                 \
>                         WARN_ENTRY(PPC_TLNEI " %4, 0",          \
>                                    BUGFLAG_WARNING | BUGFLAG_TAINT(TAINT_WARN), \
> -                                  __label_warn_on, "r" (x));   \
> +                                  __label_warn_on, "r" ((__force long)(x)));   \
>                         break;                                  \
>  __label_warn_on:                                               \
>                         __ret_warn_on = true;                   \


Yeah that fixes the clang build for me.

For GCC it seems to generate the same code in the simple cases:

void test_warn_on_ulong(unsigned long b)
{
        WARN_ON(b);
}

void test_warn_on_int(int b)
{
        WARN_ON(b);
}

I get:

0000000000000020 <.test_warn_on_ulong>:
  20:   0b 03 00 00     tdnei   r3,0
  24:   4e 80 00 20     blr
  28:   60 00 00 00     nop
  2c:   60 00 00 00     nop

0000000000000030 <.test_warn_on_int>:
  30:   0b 03 00 00     tdnei   r3,0
  34:   4e 80 00 20     blr

Both before and after the change. So that's good.

For:

void test_warn_on_int_addition(int b)
{
        WARN_ON(b+1);
}

Before I get:

0000000000000040 <.test_warn_on_int_addition>:
  40:   38 63 00 01     addi    r3,r3,1
  44:   0b 03 00 00     tdnei   r3,0
  48:   4e 80 00 20     blr

vs after:

0000000000000040 <.test_warn_on_int_addition>:
  40:   38 63 00 01     addi    r3,r3,1
  44:   7c 63 07 b4     extsw   r3,r3
  48:   0b 03 00 00     tdnei   r3,0
  4c:   4e 80 00 20     blr


So there's an extra sign extension we don't need, but I guess we can
probably live with that.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/878s0nfhnb.fsf%40mpe.ellerman.id.au.
