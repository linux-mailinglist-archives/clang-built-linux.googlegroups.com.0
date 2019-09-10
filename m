Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBO337VQKGQEJTT4RSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D4BC8AF124
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 20:37:57 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id d10sf225392wmb.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 11:37:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568140677; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wjc8mHMwdq4tkCsGnIK1PqMYeoIUlRxdcqDdVDDLrLtq04IvRNcBaQRKCPjqlLoyCt
         YeSFtj2AOm9CFPUV3yJT7IWTTQUU7Zxydmxe0DXuaQnSAf29vhosJcgHv1ofpRwAA1Cc
         PUJRuxDzW2f+wuXKqDnIhzcdv2HXT3BZ4ojHZhZ4mcGL7h9RRtDnO4sjHTT/eBufjfCl
         uHd9Us1J0uQKLBX44lRZzU66/+4NdvOCV6KFD403bihDh2j/IKDoaa0TsR47jZiWbJXr
         UOsDp779vUN95msQXcN0ufZwFgjoaYuehQyWBhUD0xJj40CVOUQUtHbXh+vl+bhHXpYe
         uN4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=JSQOVw6DBwlSF5TTM0Bcu4mXcNkt8X3R+4ut7QVuszA=;
        b=xeCnLFHQKgpWIzV1B8AuGYGz59yxNSMfLh6QVe5OkuuGWz2d2gzxWNRSR1NQzv8WGv
         40RGxfCYxm5k8KBpKpkYraRBLHe2YlZy3sO0lzj477AWkF1/L9fjr7MQCz3HT0f6kxMJ
         F9MA/ay8qBCwIXYU7q033fbCSdN+VFiL4XaJd5JzXb2Nxck5Wjv9Z3WhAyeAjl6qFNU/
         3As3/SB1J1wvme3CviupjdFrzUdfw4KM+ZqqORuBxIyyrMhboNiEGaIsCk+uGR/2gzp/
         noh2tLt9yilhHOhUlkFcVmCKBGUGNoGloG9zdtHsJdRL6rDmD02AUZlYDwMtyKHYrsWI
         UDZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EqsljV6R;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JSQOVw6DBwlSF5TTM0Bcu4mXcNkt8X3R+4ut7QVuszA=;
        b=LSyawSByj+mT1jEaqrnQA7D2WxTZeymNDb9AQqjVxXo9vqadO7vuiFHJvJhwwYk5k1
         Ps6anPzrHSzPHoKCrciSzRNoPFiljeI+SG5xHDQBZN/6VON7cRogM2cWP+PmL6afX8Ye
         rN3P3nHxO7C5WRbFtx4CuxygPd9JoWpUZ4YdvOLRMKhc9S9MOrbjbxNgaelooe9oANAG
         xbrIaKJ5kBC8lN9uQGc8hXwHFJlMFLcn458SAFFtIxW2g+0MytgJQcce3OdJEuCH5ZIa
         H5RUbGZ7KVPL8A/eZCMVoi7PgeegdtKkoPbtZJP+Rh4sIZ/xcbazKh/KTJDDTigyBRh2
         ac5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JSQOVw6DBwlSF5TTM0Bcu4mXcNkt8X3R+4ut7QVuszA=;
        b=AeFa+Ebad/vn4g6B4pOrm8AOWja1GHK0pCHWCmB5ihBh8u3wbrG8aOZoH1Fk17ElDg
         3S2eSa3qUFOexw/TY/1kjUDArK8nEsprfdEPH8JN9uBEpjCauzSohdRw/HojT/e6x+fK
         NZ0K7P3s6+ZJHnwKF5xGA+G8SiA48nZvPTwVCSbcNdQ7uiZb+D0qID0SO7AuD0ZEiH/r
         LdGzqJiyA1kLQJ1UVI1wxGFM1Xl9E+cbIW0f5lh530BmjN91XYBxrATv18gjoEKbhhlz
         JnUuIxkfhZ0pg3bEuJ7KWOcZkaFxAqbRxbTzw9rw/uW6WWbRWK+pPjReUg27XekqljsT
         ElsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JSQOVw6DBwlSF5TTM0Bcu4mXcNkt8X3R+4ut7QVuszA=;
        b=a6ThCtUePqbLVDlcQPPXPfv6x1BztiJ4C+nTGQk3fZ1P/1zy7Z9b7i6K66GWC2fcEo
         qEmotScOzj3GP+j+wRmUfYPaFqNC1tFyONl/wR0hztycwaW2woE5bchhXW9BjVA6VK5B
         YUxu4nf5cixA+vsJov4yxYRg0eJhAGrtb0X9nQ+ezxq4DNcVnT0Jsh6qodf8ayrWwHVq
         JOr37wvUvtqK4wkDgtxBW5AlC+6pn+gq23eK2BgF6p2gJkJAEKe5eql9c3+XezwD0QUR
         R9n/9p0pnz6DWR+bW5PNSTPULdwcIcvnGww1PA0C9GX9aM5QCEJRigTtsrKyIG+1Mkty
         nLJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUHV+kfVxewt61iE9mCgH9klBmB3Ns39EjN50Ut0Z+5QBC2COm6
	K2TCFXtClWHHMn+9Z9R8dxA=
X-Google-Smtp-Source: APXvYqxfqFE1YhjHNPvL4n7Gb9NfaJBrmK7ibOWjlconYHZXzIAuZ7PfKxgeQD5/9DPbALvQirWJTQ==
X-Received: by 2002:a1c:ca02:: with SMTP id a2mr742290wmg.127.1568140677528;
        Tue, 10 Sep 2019 11:37:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:c143:: with SMTP id r64ls217594wmf.0.canary-gmail; Tue,
 10 Sep 2019 11:37:57 -0700 (PDT)
X-Received: by 2002:a7b:c549:: with SMTP id j9mr731270wmk.143.1568140677097;
        Tue, 10 Sep 2019 11:37:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568140677; cv=none;
        d=google.com; s=arc-20160816;
        b=Tz+4XdQo3qtJ4I5aAUaTHvmfE+9Lbns6o6pswEophTDF+eXB3LvLpgWk0zK1K8de0Y
         CtJeKQ/mZzpIXThK4SyW3wXzoBRFEi50g1b3P5uIOzZCwtik/HE4HwS17qqbvQR1lEFA
         0ur4WojeXmUjZ62KuKOchJbcwcaN7S9z7Na7BZtEkiLyGmRay1bGmMjl5VlErk/695jT
         3yrLf8uFfcvFbetyVrfatt0Gfvu5+88sQRkgcvUKZcHPZ1gDh81i1MZsBzu+5IfXFeck
         hnKEyJ92qswdJxZtEHjVx7xkzy0AWo6TrdsS98Db4RUcee7Rlt++0C5MfSfKWvuxJlIC
         Y8Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Jpk6aWfDsr+wjLXvq2B45mZ3x2l5amVRwHa9kiI1c0I=;
        b=Vy12SbM8zTl5hN9gCferU1fvaJErWeMVtr48JoWyfrbZqa8MphdmcStOCHVbBXa4Vo
         K36adwKqXryEpcPCGsNJsf5k9jx1HpptoZqjzE8UOv66d0B3NMhYg0EpOp/SX/gg60pN
         q27LvVjAv5rCbsMjzTRKvKuGYifeFm2IGyxRAGLUt0MVTdYO95EQs5Iz4dbQuab7/AHj
         zEZXi7ZTTUIJyfi5uRMKq6ILVjcTjIf+HUvfZgUUGMT3daZZ2r7+8ATe5sVFL6OxP+yi
         z27mhNOr+Gn6nyMhoGvtH+4Vt4iITjI5dAOxDCReYrcyCyI9jBKrw9kNsqfsCVw6SaiK
         2HxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EqsljV6R;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id m18si19250wmi.1.2019.09.10.11.37.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 11:37:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id g207so654696wmg.5
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 11:37:57 -0700 (PDT)
X-Received: by 2002:a1c:a014:: with SMTP id j20mr165157wme.69.1568140676561;
        Tue, 10 Sep 2019 11:37:56 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id y15sm278829wmj.32.2019.09.10.11.37.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2019 11:37:55 -0700 (PDT)
Date: Tue, 10 Sep 2019 11:37:54 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Segher Boessenkool <segher@kernel.crashing.org>,
	David Laight <David.Laight@aculab.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	LKML <linux-kernel@vger.kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Paul Mackerras <paulus@samba.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
Message-ID: <20190910183754.GA42190@archlinux-threadripper>
References: <CAKwvOdmXbYrR6n-cxKt3XxkE4Lmj0sSoZBUtHVb0V2LTUFHmug@mail.gmail.com>
 <20190828184529.GC127646@archlinux-threadripper>
 <6801a83ed6d54d95b87a41c57ef6e6b0@AcuMS.aculab.com>
 <20190903055553.GC60296@archlinux-threadripper>
 <20190903193128.GC9749@gate.crashing.org>
 <20190904002401.GA70635@archlinux-threadripper>
 <1bcd7086f3d24dfa82eec03980f30fbc@AcuMS.aculab.com>
 <20190904130135.GN9749@gate.crashing.org>
 <20190904231554.GA42450@archlinux-threadripper>
 <87mufcypf5.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87mufcypf5.fsf@mpe.ellerman.id.au>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EqsljV6R;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Sep 11, 2019 at 04:30:38AM +1000, Michael Ellerman wrote:
> Nathan Chancellor <natechancellor@gmail.com> writes:
> > On Wed, Sep 04, 2019 at 08:01:35AM -0500, Segher Boessenkool wrote:
> >> On Wed, Sep 04, 2019 at 08:16:45AM +0000, David Laight wrote:
> >> > From: Nathan Chancellor [mailto:natechancellor@gmail.com]
> >> > > Fair enough so I guess we are back to just outright disabling the
> >> > > warning.
> >> > 
> >> > Just disabling the warning won't stop the compiler generating code
> >> > that breaks a 'user' implementation of setjmp().
> >> 
> >> Yeah.  I have a patch (will send in an hour or so) that enables the
> >> "returns_twice" attribute for setjmp (in <asm/setjmp.h>).  In testing
> >> (with GCC trunk) it showed no difference in code generation, but
> >> better save than sorry.
> >> 
> >> It also sets "noreturn" on longjmp, and that *does* help, it saves a
> >> hundred insns or so (all in xmon, no surprise there).
> >> 
> >> I don't think this will make LLVM shut up about this though.  And
> >> technically it is right: the C standard does say that in hosted mode
> >> setjmp is a reserved name and you need to include <setjmp.h> to access
> >> it (not <asm/setjmp.h>).
> >
> > It does not fix the warning, I tested your patch.
> >
> >> So why is the kernel compiled as hosted?  Does adding -ffreestanding
> >> hurt anything?  Is that actually supported on LLVM, on all relevant
> >> versions of it?  Does it shut up the warning there (if not, that would
> >> be an LLVM bug)?
> >
> > It does fix this warning because -ffreestanding implies -fno-builtin,
> > which also solves the warning. LLVM has supported -ffreestanding since
> > at least 3.0.0. There are some parts of the kernel that are compiled
> > with this and it probably should be used in more places but it sounds
> > like there might be some good codegen improvements that are disabled
> > with it:
> >
> > https://lore.kernel.org/lkml/CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com/
> 
> For xmon.c and crash.c I think using -ffreestanding would be fine.
> They're both crash/debug code, so we don't care about minor optimisation
> differences. If anything we don't want the compiler being too clever
> when generating that code.
> 
> cheers

I will send a v2 later today along with another patch to fix this
warning and another build error.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910183754.GA42190%40archlinux-threadripper.
