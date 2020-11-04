Return-Path: <clang-built-linux+bncBDRZHGH43YJRBFHWRD6QKGQEGLJHIPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id C50542A5DB6
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 06:24:37 +0100 (CET)
Received: by mail-oo1-xc38.google.com with SMTP id c2sf6863488ooo.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 21:24:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604467476; cv=pass;
        d=google.com; s=arc-20160816;
        b=xtA2F6zoKlTsnEGMRE+mAQo4pWJNpSwz/dHN9UNQjXWwCqoPesu+eC+sbODvyIVoAy
         fbltZ8kKrk2ErBX6WPuhzfEfdrrWpULmwJdr7WAb46JgrpV1kP72+d5o9CerZJC2HTwy
         H4mLtxoVX2O2Fp8vbhqvu+8+WR642QUC294TAIjqNv1y71JNy0LJhf/9oVrVL4k7RlJq
         8El+ridtiC5IhVbQ8uikE++sBYwSMSr1OUxHlMyMtvPXZQd/ObIVAyOiNGif+WpLJSZb
         866W1blIF5ofyOmxrD5VW0G/VgcNFZIJQgQM/h8JuxyQu+q8g5E7YjmEqJCIo4QFCGzV
         /cyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=kEC+0bglaUhkiveI+htr8lhPjqyY6BVfTCkXePOMoiw=;
        b=HjDraz4khx9N9JPkalIp4ANDhHWwj2A41DI/jarp7BIwmGLqK3kyd7uXVUInSe1fMo
         +t7PxyDn6/rUy+IEtgukwD8EwbCILJF1lP5vhnl5YWsej+r5qPvgpJjJwwUSyn8KqNcb
         RXgVMNgjCPgtmwNACP9R5/MHH/7tknuG7CoTc5uEsFgDn5b4m5Rdf4kONYp/PrLoCiU4
         ylSSW95Sm28j603fs0Z5VNaPR4FMQw2spZEbCgIt32nmMsnNYj1VCRfFLa7FokjTMzWP
         /requW4P3k8e1OeMyhUkvPx6BZvIBsC9PTYCdbdu5Yl6S74gQ5AT4DOV7hTN/6ocDPZ0
         L+tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vGQK7djc;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kEC+0bglaUhkiveI+htr8lhPjqyY6BVfTCkXePOMoiw=;
        b=VBKoOReCpI2+HU087FPRcvFmIG92tEwG81yE13TW95ktYusXGiZtix0C/pgpH87ga8
         vOVWXEf7kN39nKSOgFf9zBUwCcygi0HhB8MtD6LOXdhHdAhbPBJ/BmgfBbDWbaGpk3Sj
         Y2lrLoqOGP20a3aoJ5tplL9MphiESOdavkog7ocS5pOiuV3mlSR74I/9+U6K++hmDCf9
         ZQbUCJtmo95Dx+5jsFfYAxBcW82TaV1FIx1Ao69NXWaWdND7YPVIMsAUzw7MAQIq0fbF
         YQ71fw7QDUQNucCqCsqNM8qHCXNeKmqFl7HzjWIT5ofkOaZ6nBCG9s/XQUvp4Yne+Zsw
         rKmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kEC+0bglaUhkiveI+htr8lhPjqyY6BVfTCkXePOMoiw=;
        b=FZr400z/o8anTLQewnFRjuZcoXdmY3/F97Buo6JMfhdy1pXRbh8+K/ZaVBryZTYt5S
         ZmLCsLPCfbBi/LSqZ6nG3OxG3vlYlPk0O0NXSJXTP47bRsKKpn2hMYZQUj9EfX0a7+3U
         SP57KANmQWhZvb9YRI1JP1+bupaoqmEUaA957IfEs6pbsPfn3j3LvVwb07wm0nv3eJj+
         iqj7Oug2J9+ToR6YWphusQ4z/quGsYirWXUX4+mNhnSn3PT8DpnO1dT6DFX3fCB2wK0k
         S/GbFQFLQcVJ4qwNOcjNsLf7llKJR9rL0uHSz9CwVkuXgZWQ62TDlHtf5L3gFsOkv1zc
         JKKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kEC+0bglaUhkiveI+htr8lhPjqyY6BVfTCkXePOMoiw=;
        b=fb08JPOrLUwtLEL5BC56Grnhsz7hyyF6zXmf1BQpFe+kliQuMKiS6sPVurqXkvhXp2
         yaP90H0D8LxyvMhpGSqtOlLti7m9IEtRUPBIdUFMJT4AYZ8aOouAV7vAa6DkypIcFPox
         Q5gQQgl+7r4n/AflBA5EU13HMiw+kDMEZIKggTy5hUmD0wOJfamslTonFPjeQoHYSRVH
         IjwGtp3CSzl3MlD5aExQM3yT7JwuBdWXUsSBttvx1FsMlqgttNJblZn06sHn56hXAva4
         c3F1OQjhv4aqiTYE1EL9+e6gREueRmGrV9W8GPJaP/suXR+I6MqJ1p9defmK7u5c0bP0
         9Idg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333/A6EqbptdjGRLFOE4ur57JG2YLHKVs0/bcWJPN6bxFbfPKrM
	YWpqQl3xuFxC3SeEzm5izQ0=
X-Google-Smtp-Source: ABdhPJzpL51GxO9ST8C/xnqHFHjJkfz7mM0OTi57P4YbD/PuEASsVULtb1UXgiDJRMRNePnfx3HXfw==
X-Received: by 2002:aca:db05:: with SMTP id s5mr1658289oig.133.1604467476708;
        Tue, 03 Nov 2020 21:24:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d108:: with SMTP id k8ls57567oor.0.gmail; Tue, 03 Nov
 2020 21:24:36 -0800 (PST)
X-Received: by 2002:a4a:ac4f:: with SMTP id q15mr17804785oon.68.1604467476386;
        Tue, 03 Nov 2020 21:24:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604467476; cv=none;
        d=google.com; s=arc-20160816;
        b=Hmc8329tlVNMooCY+sjTBS/7OomVu6ZCDgxD1xa/EWpmgCBZNUfbD5JC8R08aI6/oo
         /XkI0TwlD6K4CMFLgG3ziL2ir0zOxk/hTQfF3neqYQstcMWafxPH9RmF+OAS0h0mPk7+
         lXvyx6iigU+S2LYPuQxdisguRtKfJ1TW9k2zS9YfhusxaVC7745OLsYky7ESWdFx2N0h
         JO/xUyis8relRaFyS5AOUOZllCS/jVutn+ndMtoSeRuC+6tNgELpLs/e7IZXwlktwiet
         ByKqOwgwydWwytOvZ/6V9x5uuqyC3sPtfAqmeKvitSAFXRbw8DR3s6J08LQQ+/jJGLs0
         gyWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=buN3yjcDVw2EqJ25Tq35AKInemBS4RdgzKO0/bnuCV0=;
        b=nz288rodd7vY9Z5bKNVLJMfaeXy636cfZpOCsmKkkgRYBkWu7q3td6LPu9PzjwTP03
         TIh9a2Lzk25Bb6MEpMk87TawZDWG+3dxCYE7O8SL2jldSq7FxkHnBn3LkliTVP/Glx/r
         y2HNfDGIqR9vBk//G6S/dXJOt+wG9m73H6sh79yf7aK/XiiDS1kyx7K0SMi8HA7Fxkan
         nNKEf3SQve7YyzmBNRTCGQDY4gMX3gjU9fdV60rYFWPogAd/Qggh3O6cur7HsIxL3uKm
         /ZGbeGYMkQ3Q4iNxob96JJk34mvMgj6HqS8LY1pcqYuy5aGDjOOXNiPWpRXyDvI3YOCc
         r46A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vGQK7djc;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com. [2607:f8b0:4864:20::b42])
        by gmr-mx.google.com with ESMTPS id r6si142042oth.4.2020.11.03.21.24.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 21:24:36 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b42 as permitted sender) client-ip=2607:f8b0:4864:20::b42;
Received: by mail-yb1-xb42.google.com with SMTP id c129so16971735yba.8
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 21:24:36 -0800 (PST)
X-Received: by 2002:a25:338b:: with SMTP id z133mr36026198ybz.33.1604467476017;
 Tue, 03 Nov 2020 21:24:36 -0800 (PST)
MIME-Version: 1.0
References: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com>
 <CANiq72=r6oieZ-Nj-e6e+HriW8kADB75z2pj6W-gg7Cff3nqGw@mail.gmail.com>
 <f474396f8f47c303e3a3ac90a582c116e38e50e4.camel@perches.com>
 <CANiq72nnpdPSngjoOf=imLxZ2g0A7ZXe5nRjF0qf5AG1UCfXyw@mail.gmail.com>
 <8d02497f4565c3154d3f7bcf2968b56ccd945ab4.camel@perches.com>
 <CANiq72k11+VO-igyHRakJEGuSmsDJyQCpYDVeNxZwRt62yCFXQ@mail.gmail.com> <1de8953aba13bcd4c9643bae61af2081e33f071f.camel@perches.com>
In-Reply-To: <1de8953aba13bcd4c9643bae61af2081e33f071f.camel@perches.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 4 Nov 2020 06:24:25 +0100
Message-ID: <CANiq72nsOOdRxVYNo7KetNKOD+8xZEsn3v8d1iOydvVRoTqOHA@mail.gmail.com>
Subject: Re: [RFC PATCH] .clang-format: Remove conditional comments
To: Joe Perches <joe@perches.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vGQK7djc;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b42 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

Hi Joe,

First of all, thanks for taking the time to write your reasoning.

On Wed, Nov 4, 2020 at 5:17 AM Joe Perches <joe@perches.com> wrote:
>
> The current kernel is v5.10 which requires clang 10.0 or higher.

For building, yes.

> This patch is not to be applied or backported to old kernels so no
> person is going to use this patch on any old or backported kernel.

Agreed (see my answer to Nick).

> If a person is going to use clang-format on the current kernel sources
> unless they are developing for the current kernel.
>
> They are going to have to be using clang 10.0 or higher and therefore
> also will have and be using clang-format 10.0 or higher.

No, they might be using GCC as usual and installed clang-format from
their distro. In fact, I'd expect most developers accustomed to GCC to
try it out that way, and also most of them to install compilers from
their distro, not from the webpage, unless they need a newer version
for some reason (e.g. new warnings, new debugging features in the
kernel, etc.).

In principle, clang-format (as a tool) is not related to building the
kernel. We may call it "x-format" and think about it as a statically
linked binary. What I am saying is that aligning clang-format to LLVM
(now that LLVM has a minimum supported version) is not a necessity.

We can still do it, of course, since there are new features for
everyone and anybody that complains can install a newer version from
the webpage. But there is nothing that forces us to require it. It is
a decision that we balance w.r.t. new features. To put it concretely:
if there were 0 new features or big fixes in clang-format 10 compared
to 4, there would be no reason whatsoever to require users to download
a new version.

On the other side of the spectrum, some projects require a concrete
version (not just a minimum), because they automatically format their
entire codebase and want to avoid differences in output between
clang-format versions. But we are far from automatically formatting
the entire codebase.

> Take it or not, apply it or not.  I don't use clang-format and unless
> there are improvements to it, I imagine I'll continue to use emacs
> indent-region and a few other reformatting tools instead.

Again, I am not opposed to the change. In fact, I am eager to improve
the output of clang-format so that more people get engaged with it. I
was just surprised you asserted so strongly that nobody is using
clang-format from their distro.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nsOOdRxVYNo7KetNKOD%2B8xZEsn3v8d1iOydvVRoTqOHA%40mail.gmail.com.
