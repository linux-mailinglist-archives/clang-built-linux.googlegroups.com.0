Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB2EZ6DZQKGQEBON4LWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DE619357D
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 03:01:13 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id o18sf3344533otl.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 19:01:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585188072; cv=pass;
        d=google.com; s=arc-20160816;
        b=n0U6klcVnm2VaPsBNVLzgR2nuBcvQpR59NhQtxAkzKH/0x9u+LIJQ2dXWtAlVcyVAf
         CWFcOS3cJ7gUZBHmPV3yaoW943XSsaFgZ8hhtZoT+J7TVcVskH+OQUf42ZZu/oQ+svRy
         qcdOtGO9cNoOlptaLBnvrzAcZ2fzLSzsScTpu2zrqbMB6kl475ZX54FqeEIbEHH8Xyr0
         1fnFco+7cl/piZADP0OjhlbjqOlRs75HKr1YUmsvIIzujRLfc3k/dE+cTgSq9Vloqhkm
         U/vb4Tx4w9n4bmzb8lwJ7mVZFvE6v0j1JszdAPY3iauyCBpNrL2JxVZEB5WqPsZxEuM4
         6N+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5dWmI/BjhZITrQ96ctw9RT6e3j7PXbq+aPutC/1xzFc=;
        b=EIy/9M89t087atZEYtWp/ChczFoCb0oOSvrJJDeXpqWM0hxzGkDNel6A/WMc8A2Wsk
         pVVcqcMg9mcXoAdxrUDNvuW8LaWtKDgoC7gFhbHA2dK0Gp+QZrRwUS98hFGb9zgDPbD3
         uqo2q3ieLkyfgtBSzfxCvgXbfkurzF3ipP+e7QSUlcQiC5+swPvU9uckAWB6o0Pr1Iky
         6+pyvMqF8WK2yr5MfGGh3NvtLqzbqzqdX/hezSnQi7sHxmKu2m1eVnDk38rxQJp6XqvX
         NwFnLtx65mRyDNiIJ75++HuTH/jG7ivTYoHkqls2obzHf5G+h5SJBy4JblAjDofHaovc
         mB0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="kmMvr/FK";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5dWmI/BjhZITrQ96ctw9RT6e3j7PXbq+aPutC/1xzFc=;
        b=HU9lrFu16UwMKYY+znEoA32alZxQdTKMnkZRxqS+AT+ctAyx1DvfIIGXUtA0GTylE3
         OKiF2fTYStTzNG5H4yKH2NvLbAHLR3/xp5+CileyeidJc62id8nBFhM6pV4l7PrdnyYc
         vPlKyxGYRQVmtqohLSq65Uxnk1Otr1fTaRBbxNww2oUtnA1tYJRhfmnInwbapClUGN5v
         LnDEuY9MxeJ/wbF14xDgUQzIp6BnAWy/gQ+s9RT9sKUi+0MAdSgCjhTUt83PASR0NDDQ
         3RLPIMbxMXVh9rz7UNZdPBatTWF0yJrmIabz8rLfJDUJudnTnBVuqeYYBcSzPPKjVocj
         4IYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5dWmI/BjhZITrQ96ctw9RT6e3j7PXbq+aPutC/1xzFc=;
        b=Ufm2Z6t2Jpb5JbJWx4XhUqRdVS1tvOL76Bn00YGKX8XcyuFUL4TXa5LhToHQoKhqlL
         /F29GnvMf/DICsAqre3OW23k7b4CnWUQ9AHtNsr7VXhrn95VEdDq5dlWjOuZ2tr+dKhv
         vFfYdxmNRn2fHyLizMGUUv2F2SvPDxZDWN9+4NeedkN/ZIqh4+tYj41Is3Ln4Vu2N0QD
         ihG2q9yY+m/VKzlWmrT1PeAEjt2gZHVgcvJK92v4mN9FftNWVe6zDxDi6kahsXVEudWY
         AY9j/fRF+03VcJBJosH669TK77MP6cHrB3CN7I67icMHYgt39rSxfMtB6wW9ve/4p2+X
         Untw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1Bc9eUdALglTa7cX+xGXwq0HlF41GjgbY1uOS2nmKq8w/rLDdd
	tZ2RXKG1ZUfym0q5YBxpvBM=
X-Google-Smtp-Source: ADFU+vsWro0jU6Xuh4slvZDZFegE3MMQuXvMWMsjayHwpSMGD8pTyOwzApHLZI1woLK67cHQKDOM2Q==
X-Received: by 2002:a9d:12a6:: with SMTP id g35mr4600169otg.333.1585188072612;
        Wed, 25 Mar 2020 19:01:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cd45:: with SMTP id d66ls1420720oig.7.gmail; Wed, 25 Mar
 2020 19:01:12 -0700 (PDT)
X-Received: by 2002:aca:df06:: with SMTP id w6mr358412oig.2.1585188072295;
        Wed, 25 Mar 2020 19:01:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585188072; cv=none;
        d=google.com; s=arc-20160816;
        b=YfhBKsEfhheAjsiuCZKAVroKM7rtaVVtsEshUje1ydpusGqkfV20u5cFLejMnN8Ep3
         TP7NibsET6q1YVwfRU1JPexMwCuE6ngAk68Zs6JsrkUp4jkyzHwTz1P3zU3KguSvmzPm
         nig7ypjo4QhsfNolecrwS1DmKPImRzAm0xKS5lms6t5I09gYeJznshTAFzqtd1KRNKLV
         rlI49zf1igZX+p+UYlQ0qUir67hVcqiHfQhGwZ3jSMoJ8vMC2FEhTu8fO7JA7kgf6ZBR
         W5T7zjjK+3swKq8ZtQ9bGIvmZEsK4g9OoWK/U4MAXx2xOe4k7ZPhETldukeqC5+1yOrR
         TcGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=x7bn2kvm5OPwvdQ8ch8Ox8fZ28sOLFchOcaV0SZhO2Y=;
        b=JBKK0fkCTKSqZfsv/zOFiXpoba7ntpsk8xAxsATe+DywJFAouvEGUFXfh+41P8cMVM
         BusbXkSqWW1W1GX5be2cVyU1j3q64wZS6FjTjNulfvAl/ah9kYMjS/lzthVYiGP4tqoS
         FhISGkdqvU+sAb30HgOY0fU7yvsSSCpq+2cISDzQB8CZiUJ47nAzSi/0ZTv/yxHoliCJ
         l3eNesbMW2VLuHXjAEDn3d4aqICA9BbxPUV/+xvqOSHjDiIYf+6WvrrO4iEZYBHkZB3+
         Cg2FJ7yMInmO5eKW+7+qbt/yN+gavNyJjiynr9LTJvbqcVPRsT66O4wd4t4O2UDhBCNR
         CHcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="kmMvr/FK";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id m132si76630oig.3.2020.03.25.19.01.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 19:01:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id u12so2083975pgb.10
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 19:01:12 -0700 (PDT)
X-Received: by 2002:a63:28c:: with SMTP id 134mr5857118pgc.165.1585188071231;
        Wed, 25 Mar 2020 19:01:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g2sm354940pfh.193.2020.03.25.19.01.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 19:01:10 -0700 (PDT)
Date: Wed, 25 Mar 2020 19:01:09 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Danny Lin <danny@kdrag0n.dev>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	android-llvm <android-llvm@googlegroups.com>
Subject: Re: LLVM Polly optimizations for Android
Message-ID: <202003251856.5D568590@keescook>
References: <M2AyAx0--3-2@kdrag0n.dev>
 <CAKwvOdnN6dEwUQCrdEoiDBnjZxPPHVfYcck0sRqcCujYeRHU3Q@mail.gmail.com>
 <202003121636.265F4852B@keescook>
 <CAKwvOd=R-p0bn7K3cp2X=_jk_MqspEynFtBZOX5YqRZkbNDW1A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=R-p0bn7K3cp2X=_jk_MqspEynFtBZOX5YqRZkbNDW1A@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="kmMvr/FK";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Mar 24, 2020 at 03:54:53PM -0700, Nick Desaulniers wrote:
> On Thu, Mar 12, 2020 at 4:43 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Thu, Mar 12, 2020 at 10:27:13AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> > > On Wed, Mar 11, 2020 at 4:40 PM Danny Lin <danny@kdrag0n.dev> wrote:
> > > > I have a kernel commit that exposes the ones I deemed useful through a Kconfig option: https://github.com/kdrag0n/proton_zf6/commit/00f711eead423
> > > > And a prebuilt toolchain with Polly support that can be used for preliminary testing and evaluation: https://github.com/kdrag0n/proton-clang
> > >
> > > So no new compiler warnings, boot issues, or otherwise noticeable
> > > runtime issues? That's impressive, and worth paying attention to.
> >
> > Neat! This should be very upstreamable into the kernel (though it
> > can be updated to actually test, from Kconfig, for the available
> > options). I'm sure someone will want to bikeshed the details, but it'd
> 
> Did someone say bikeshed? *ears perk up*

oH oh me me :)

> 
> > be nice to gain CONFIG_LLVM_POLLY in upstream.
> >
> > The Kconfig would look like this:
> >
> > config LLVM_POLLY
> >         bool "Enable LLVM's polyhedral loop optimizer (Polly)"
> >         depends on $(cc-option,-mllvm -polly)
> >         depends on $(cc-option,-mllvm -polly-run-dce)
> >         depends on $(cc-option,-mllvm -polly-run-inliner)
> >         depends on $(cc-option,-mllvm -polly-opt-fusion=max)
> >         depends on $(cc-option,-mllvm -polly-ast-use-context)
> >         depends on $(cc-option,-mllvm -polly-detect-keep-going)
> >         depends on $(cc-option,-mllvm -polly-vectorizer=stripmine)
> >         depends on $(cc-option,-mllvm -polly-invariant-load-hoisting)
> 
> Rather than shell out the compiler 8 times, why don't we do it once,
> with all 8 specified?  Let's support all or nothing, that way we don't
> have to chase compiler bugs for combinations of the above.

Sure, yeah.

> 
> >         help
> > ...
> >
> > And then the CONFIG won't even show up in the compiler doesn't support
> > it. (Which is the preferred way to doing things now; see
> > STACKPROTECTOR_STRONG for example.)
> >
> > I imagine a commit log would included details on an N=100 hackbench,
> > N=9 kernel builds, and probably a "size" output before/after of the
> > resulting defconfig-built kernel.
> >
> > I'm adding polly to my local LLVM builds right now. :)
> 
> How were the results?

Well, I have polly in my LLVM builds. ;) I didn't do benchmarks yet, but
since I'm preparing to do some LTO benchmarks, I'll try polly too.

> Do you plan on posting the above as a patch, or were you suggesting
> Danny dip their toes into upstream kernel development? ;) Maybe you
> could help mentor another padawan?  (Careful, Sith have this weird
> thing where the pupil becomes the master and...not suggesting anyone
> is Sith, but everytime it seems they've all been eliminated, it turns
> out they've just been hiding "in deep space," which is such a cliche.)

Heh, I'm happy to do whatever. Danny, do you want to send this upstream
after tweaking of the patch on this list, or do you want me to send
it? I'm happy to do either. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003251856.5D568590%40keescook.
