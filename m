Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRGHUSDAMGQESKN4XFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F5B3A8B8D
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 00:03:50 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id r15-20020a62e40f0000b02902ec871096d3sf324629pfh.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 15:03:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623794629; cv=pass;
        d=google.com; s=arc-20160816;
        b=uXfgoCfgT9OG9dg+rBp36TX3jzpuIu28a4Aaw1XoBFnVp3tXFIqhgrECriiGac1rjV
         d7oSaMHamhwzinPgCAONgh1TfU49ym4ellHyl3Erpr8QGseM/Xmf5uwR/gn89obPDzF8
         whpW94SrDUkO2xv7u3n1xZMVMtllGgxtL0B6t1KbD/8yx3kGLaAPtZKxyaxXR8zCk+62
         pY/6w+GndA5y3k5buN0isHjyuj6p2zAUtXMFQhHC477nGjApQKk7RMjVuLnloncEtja9
         NJ045p+ZZOw9eEKpD9YZjGCc967QWwfJNujCSou8elKo/lyEGcflNyO6sy505oJU7Eas
         j3oQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dUxsSJRPqfhKUclSH91uQxv0jMDtfvQlHP+LyJ+LW1Q=;
        b=0loTmoJZruZE/WqzRox4M4prX371aBf3mHQBHKZ0ERU2AsWMHnn6+sVmjis/dUzbIX
         Pyxt6Fs/sisT1NPnXVa8rwQjfxZsAMC/up3++Bf/EB0tV42blgL1EWGO6i0T4DWVsOW5
         vp8OfLmpVl/fZ9VBUaXl2yZjY8HM6BEK5BR2Mzvs3RS3HwJt5lAmdUXtUXXNkFNbGFwH
         bDzde4sNjt4y+kcdz+ca08QeFSK+7DhWdFdA76zwgjDwcYbBtgHHVnWV3cYSd/nC73AA
         4RXRMda2p9e7HGrlI53jOKAv6q9tK/b4loufi/op2v+D94NxtywAxApJbLdANsCy0S8u
         URng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JMGZl9C9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dUxsSJRPqfhKUclSH91uQxv0jMDtfvQlHP+LyJ+LW1Q=;
        b=oeR1G0cQCY+OEdS6IV9nB9WILoFYRO7kgPuqXwq3OZYZ7G4F6ADv2dmYnb8KQNqNN0
         MC9MsPdrk/UJKa+Y3ZoRB6qlOKxCgazDS6vHuDA2qosZrxlUtKRGD/3hZawJx/ylareO
         dIKZwi+xVKI9evcBkrFws0pVv0aNLLkq8CWlfPlN19euIWNGVid9MmJG8lHFTcedmqPp
         ia01LTyVAOButIcJqe7UFakMzrHVT1DXxoTx23C41jCf5IHBPhQFb0yDY9mKtTlKu7cd
         zkmJp94oRYt0m3UOvFXDciYpN27IvifMH/cqfO4D2kfR5jvdinVsUNIUryrVhPu3aL4s
         r5YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dUxsSJRPqfhKUclSH91uQxv0jMDtfvQlHP+LyJ+LW1Q=;
        b=NWJWJaYaytWpfERBl1CwXxK9336UKMOA00HqFCwt+IWn8nCmhdU7dUF7nS/rYx8X/L
         FZYqEeTK1ybTLrxfNOsPK9lDOAJfRPrwWGkvrIVzvq2fAd1t7J8iPwo1lvwxpUg0j0Wk
         unsEZECAZhepDS/PiK/00qKYMcAbdNqBQ9TIRDejHcps3n0VJ+xplHWF+1B+raUrDfWC
         vD9ysPDKEpb7MA3Vrgoa0n1KvQ4BJigynO+SBy+3+RnsSsWax6MCRDZgpMQP5HzXWY/+
         l3XpChhiayNQOFfVaCAGZdEXdcuVilJbqleXYBr9FKk+Qc8ZPXF+gqTVsr+C8XX/hHo5
         KLdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533AIoEfH9g7hk5is+7xP4HAlaIaAdzO3zCdd49R9ChQfI6FaPJs
	WbMWhlvMriHR5vPKfgQFZNM=
X-Google-Smtp-Source: ABdhPJz62zIjZRLxO6Hh5u2lf6EYBGvr9r3uZn6Jmkg47f4uBdScSHThcPrNqgHrxk0caclbZM2QQA==
X-Received: by 2002:a62:5e05:0:b029:2fb:2ee4:2b9c with SMTP id s5-20020a625e050000b02902fb2ee42b9cmr6560538pfb.0.1623794628986;
        Tue, 15 Jun 2021 15:03:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2848:: with SMTP id p8ls2762015pjf.0.canary-gmail;
 Tue, 15 Jun 2021 15:03:48 -0700 (PDT)
X-Received: by 2002:a17:90a:1382:: with SMTP id i2mr412110pja.221.1623794628403;
        Tue, 15 Jun 2021 15:03:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623794628; cv=none;
        d=google.com; s=arc-20160816;
        b=KUIXsSrLcNnuIR6E6tpJ5fTk1u8LGHrgqvVEb1zjmwGkjBmhD3Fv1vmu8aSSsq1Kzj
         RGKZV4j4I1LV3aLDk2jEu3xtRc7M4Lr+RcLWdvpfTvPTH5acTJiZa4ROSKRvFR7Hwp0f
         VMkPmPgEQ/NMp0m1Rf61dDjOCSD2SgyzmAsbFUKBiP/Y/DSmb4/Vb0XQf2vWcyuzFEcm
         i1zrXTwRGWeLZny1oh/TE7eMyoeEpphw2uVXeTKrV530VCNHHdxagE7fhm7F5oVc8TqH
         FLym0OHlUQCbCqw2x/XY45Uv2BTfcKt0hI57DAD4JU0bgypNPFm6GKkIF21znGEk5Dq6
         ZE0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6gzZX/+55cCNFnFLLj4+LvCcoZEgFO9qXX0L7YZf/74=;
        b=WFgzE/pvRGDexqX6YIa/52o5oeTNNUiZ3Y6Nt2t5RecCKEQP69x/OguBZfSKmRHLDM
         KukRTmJNQehEKZTUcerhVNOcI08Xj9qCwlBdYceYQ2MmJ4ds0bENdKmcTe5Nz7vcIdtq
         3CS6CdG4bwGkLHMGDFmKgZNMa2+6bxxy1LtvIIDwopiOjSczOpnHN74MLy4CNqVY0K2h
         qPyzdV0qa4RxcdqWYtsrXd2iFp6EDwuAS+eFihCh/+wLE5vexnvmAH6qk150GWcsSTC+
         kUw/E5z4qTQIk9jZazSPa6cBY/ZW3OiDg7WVfE3GD5ftOY0W4JEM38uX0tT4GDUa382u
         0U0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JMGZl9C9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id o20si24779pgv.1.2021.06.15.15.03.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 15:03:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id u18so89199plc.0
        for <clang-built-linux@googlegroups.com>; Tue, 15 Jun 2021 15:03:48 -0700 (PDT)
X-Received: by 2002:a17:90a:dac1:: with SMTP id g1mr7145143pjx.199.1623794628073;
        Tue, 15 Jun 2021 15:03:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id ip7sm108901pjb.39.2021.06.15.15.03.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 15:03:47 -0700 (PDT)
Date: Tue, 15 Jun 2021 15:03:46 -0700
From: Kees Cook <keescook@chromium.org>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: kernelci@groups.io, Nick Desaulniers <ndesaulniers@google.com>,
	Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>,
	"automated-testing@yoctoproject.org" <automated-testing@yoctoproject.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Vishal Bhoj <vishal.bhoj@linaro.org>,
	Antonio Terceiro <antonio.terceiro@linaro.org>,
	Remi Duraffort <remi.duraffort@linaro.org>
Subject: Re: #KCIDB engagement report
Message-ID: <202106151501.235746C5@keescook>
References: <5a9bf050-0671-3273-cc4f-1b131445c1fe@redhat.com>
 <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com>
 <202106011315.432A65D6@keescook>
 <774899c5-c20a-3d7e-3289-ee257b86e06e@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <774899c5-c20a-3d7e-3289-ee257b86e06e@collabora.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=JMGZl9C9;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b
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

On Fri, Jun 11, 2021 at 05:11:59PM +0100, Guillaume Tucker wrote:
> Hi Kees,
> 
> On 01/06/2021 21:26, Kees Cook wrote:
> > On Mon, May 24, 2021 at 10:38:22AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> >> On Mon, May 24, 2021 at 12:50 AM Nikolai Kondrashov
> >> <Nikolai.Kondrashov@redhat.com> wrote:
> >>> [...]
> >>>      KernelCI native
> >>>          Sending (a lot of) production build and test results.
> >>>          https://staging.kernelci.org:3000/?var-origin=kernelci
> >>> [...]
> > 
> > Apologies for the thread hijack, but does anyone know what's happening
> > with kselftest? It seems missing from the listed[1] build artifacts, but
> > it is actually present[2] (and I see the logs for generating the tarball
> > there too), but I can't find any builds that actually run the tests?
> > 
> > (Or how do I see a top-level list of all tests and search it?)
> 
> The kselftest results are all there on the KernelCI native
> dashboard, for example the futex tests:
> 
>   https://linux.kernelci.org/test/job/mainline/branch/master/kernel/v5.13-rc5-74-g06af8679449d/plan/kselftest-futex/

Thanks for looking at this for me! :)

How do I find the other kselftest stuff? I just see "kselftest-futex"
and "kselftest-filesystem". I was expecting _all_ of the kselftests, but
I can't find them.

(Specifically, I can't find a top-level "list of all test plans")

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106151501.235746C5%40keescook.
