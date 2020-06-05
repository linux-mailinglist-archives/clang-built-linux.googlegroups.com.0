Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHGG5L3AKGQE7KCQ2TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 926D41F009C
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 21:55:09 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id e143sf8309508pfh.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 12:55:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591386908; cv=pass;
        d=google.com; s=arc-20160816;
        b=aB4q7q2F9+9Q5pdNMbsP0Ee39iO33YLM7AB2hI/6Jo4E6Wk55S9jN5huvMVUM64vGe
         PezPf1li/JUdGjjlVJdCcOeIfVVCW/q5lq7VCsSMnazboqs8kRxyIHShoWwSgBAcJTAI
         gHWqCy4OZg4oS7OQesrd4+Xz1dQmCkGtsVvQmS2fnh2lpSIlPkcUV2Y/gh+TUerRfj/+
         yxvmFW6hQ9+oT5uMPTWmGIXC2h+RSfzL15Y/oPur8iA4y41oITjkc2NU1vW0YPV+5bZY
         gZTEWDrRdyPPIozlaH+Afyew0mcWJ/Ahe7pplMiguFJUt5nGWjlO7NslM3Mh3ovxfHwv
         PHBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Vgh6QctCfyCbbevhXNOKv1VuQ031xQavhLlKyjbIWrM=;
        b=Pa+kjldTBI5X3p7DVqBKVTWdaTBhkaUYljfUU+9afntHwt6n7uoYldoJIz4jbVsTug
         QAIo0jZaLoUjyOWxeF3tn9rIKfSknO8pSHs3dVVFUeLowekiyuxFDZyi4Nu2XF9HQjLj
         Blfp6MSSQMxWiqY3A0+KmBd2hnFsihuB/jnRdCg4aldFRBebTpuN5owxO01RTHhEFQmm
         mz8C+ZGmeRyqHq20usw1QxqRjOxr+VBae875hxdirX3kCYY2Is3mT1P5i/W6QjbrFH6X
         42OltGNUo/7OZe2KAK9hWSn9zN5uJ1DSgKuxdfd0yUl4c3vu2JKrb07c1yCG05wLJsqz
         6qxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c1YD9g9m;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vgh6QctCfyCbbevhXNOKv1VuQ031xQavhLlKyjbIWrM=;
        b=pvlDedsyhTxEbXrel0N3rL/QfKf0NMYhE//1fiU1oyWNyPI9MWkpEmoX5l5AUCfERr
         LPPCZay4e8oHumXXYzEl9epjfnTorAiijoKG8MFjtEQ5Emj0Xgo6BQ8pEKnel3+66SX7
         i9dmTHesLKdtHIyOCnLYXkMgSHvUJzYiY9HMifmZJ1gFdRZ2b0ITYma5Qfig1+4Om0eh
         Xz6OSQe4n6RBUkHrTuseHpuAczBZjFOs3ErgX+dEyRXOqTNrCd38x8MPZMb5TzxjoLYJ
         QFVok0Ao1csuxFXR56pzWXtr6kn+j09rfhtbF4Snzh0lifvP2r3hHPJcgsRVBxlzZ3uA
         5e3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vgh6QctCfyCbbevhXNOKv1VuQ031xQavhLlKyjbIWrM=;
        b=FU+Uy5DvBZzVmh88QQ4bfYx6f93sdlR/VrCnVZIW3yUEdJ3hZlwivx+A987bq7y4x8
         tT3Y8c9IDz4l+SkrqLnt6h4zgo2uNbtaTtvZdZOLc6dB/EEbF/f0YPYa9J4M0rdcdhXN
         wn7pPB68XUPft2Uxe2DM0sVXC/AmYYDhGSf9e5oEkJyeiM6wTn5vWm3RqRuxkw7cYwLH
         p7zCEJOmzr0e11nCGjd2Ld51Lk30kTljV9XXVv+krheslTaq+DJu3JioFiERFsaPEP95
         HxFYcfGeiLDVamH/wucKgML5ki8JJpj/qmmVUFthxSX6JYCmMxCNuTCJfzF+/ewRlB0d
         ap3A==
X-Gm-Message-State: AOAM533r7W78Q3FCdHH12x5dTYlXQJSdfj78GMhJDx1bCGcvj51Whxd/
	4HSx+gvQjeHcEwjQj2vALKI=
X-Google-Smtp-Source: ABdhPJwZqcWA9TcWaFpjgDYdRCwJIRy+62tbrxqTIcKof8XGPkVZEmzjzI33Z/rKCLwwSbGxh4SMPg==
X-Received: by 2002:a05:6a00:14d4:: with SMTP id w20mr11452732pfu.279.1591386908251;
        Fri, 05 Jun 2020 12:55:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8d8b:: with SMTP id i11ls1515315pfr.0.gmail; Fri, 05 Jun
 2020 12:55:07 -0700 (PDT)
X-Received: by 2002:a63:d40c:: with SMTP id a12mr10913968pgh.124.1591386907827;
        Fri, 05 Jun 2020 12:55:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591386907; cv=none;
        d=google.com; s=arc-20160816;
        b=xzEKi+pG05fPmJZxzVrB0mx8tWoHRL8/lzcs7BuxomGCG8y6EmMVCulV+DKd7u+dFQ
         eEJsGhwFPt2m5Uz3GTjcRubWGsw2RIU2SlVLCeKzVUXbFwgKEK225FMB88UjK1Cn163z
         zyo5i7OFnAcXQNMATH+BcASr4aQ3Oq0XfkTvwLIAG6+77ExIbxbVTHwzYlwZJ5FwVip4
         hekH6rH+y0RdI5S4l1dYe37iCJxYdIqk7+zLsL9w8ldq2pvOw4HagWLTreUauWcn/ekh
         /IEXzvrEWheLAlz5zSNefYW4bVFSmYdG+8AJ+aSXV8MxC+R0HUGWB4ggeWKx3djhBLcJ
         TJAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q74R9/IW9UymqG+a6KxCc2U0opxyg7nd9/bJJ41gZAU=;
        b=juUauAnD0Jdn+En6mTYknxu58r6dD2ri1miq+Zzo1oXscumw+QKya14uNztFhVri+Y
         vj4lMn0Nu0cCv2qGdsYVauDOMpVSGEPKvIvTkFz1A1A1t2gJf51/yX8UCFQq7vx2uLEb
         moQikPh1yK/KX3sc9I/muOGBvqgnVWRrjO5g5wltcQw/COgx9NufYWwTYv4QMBFmFbFB
         9CWiefVFkp/+HXq+YuQtH1Ctwr0N7+ZTFZyKPz7DrBObBN0DKMztPA7slKWHSWiUIj0+
         8bx7iLS8yoQTh1U5Bcr1QhsBSDbdzQFilqHQvJ4IDQY6jc0PLtA5unvhzJPNi4FqpsDi
         6wMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c1YD9g9m;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id x70si33474pfc.6.2020.06.05.12.55.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2020 12:55:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id g12so4120589pll.10
        for <clang-built-linux@googlegroups.com>; Fri, 05 Jun 2020 12:55:07 -0700 (PDT)
X-Received: by 2002:a17:90a:e2c4:: with SMTP id fr4mr4845657pjb.32.1591386907263;
 Fri, 05 Jun 2020 12:55:07 -0700 (PDT)
MIME-Version: 1.0
References: <202006060103.jSCpnV1g%lkp@intel.com> <CANpmjNPBxkBBnD-y9Hpvsne3o6JA0KYgyxZhbCN+kZv4CD4yWQ@mail.gmail.com>
 <CAKwvOdk5MCxi7c-ANKYRggo1rVrpxbhR_-hWo5j9F4VSaLj18w@mail.gmail.com> <CANpmjNPw55fDqXn0V=jAUaV4RGnPTN3pCHvkUzWvP_QDeF7VOA@mail.gmail.com>
In-Reply-To: <CANpmjNPw55fDqXn0V=jAUaV4RGnPTN3pCHvkUzWvP_QDeF7VOA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Jun 2020 12:54:56 -0700
Message-ID: <CAKwvOdn8g=R0qWnuF06Tx7BmKQ_7FeKzNQbyNMr_3ZYOcp+YUg@mail.gmail.com>
Subject: Re: [linux-next:master 10774/15793] kernel/kcsan/core.c:829:1:
 warning: no previous prototype for function '__tsan_volatile_read1'
To: Marco Elver <elver@google.com>
Cc: Philip Li <philip.li@intel.com>, kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@suse.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=c1YD9g9m;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Jun 5, 2020 at 12:44 PM Marco Elver <elver@google.com> wrote:
>
> Let me rephrase my question: what is the idiomatic way to deal with
> the warnings for the sanitizers, where the functions are runtime
> functions only emitted by the compiler due to instrumentation? We can
> add forward declarations 1 line above where they are defined, just for
> the sake of shutting up the warning specifically for these functions.
> I can send a patch if that's what we want.

I don't know that's there's an idiomatic way for the specific case of
compiler emitted calls, but your suggestion sounds fine.  You can test
it with `make W=1` or manually setting `-Wmissing-prototypes` for
KBUILD_CFLAGS. (I think you can even set that variable to that string
in a make command line arg, ie. `make
KBUILD_CFLAGS="-Wmissing-prototypes` (untested).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn8g%3DR0qWnuF06Tx7BmKQ_7FeKzNQbyNMr_3ZYOcp%2BYUg%40mail.gmail.com.
