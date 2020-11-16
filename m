Return-Path: <clang-built-linux+bncBCT6537ZTEKRBSPVZL6QKGQEEURZ67A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id E2B2F2B4DD8
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 18:45:45 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id h2sf30930wmm.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 09:45:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605548745; cv=pass;
        d=google.com; s=arc-20160816;
        b=IxcpBlNsAqoh2Jy0SAt3/ULSSxL55PwRGFFp0LYsEuDauZncnRUNkrkNXDW44jKNl2
         7W7S7DgyzutqEjqu/MqzGIXJkxWDgZlLuQvc1M65kkfhP7WwWVRCLjRL8wbhsWvYrcN2
         4VKR/1QoOwKGaXXMlpIDAnldRRa6xJeXW1/IPT5yjSbAsJo6uCYp9Bl8VSsZAHEa/YqE
         K2oYNE+IwIoA5DjeE1qEUOWrevLsnTSta0l2NQh1ZEEX5cUA3ENgeZ7f28/sRizkJndS
         AK2evta0/GpMOHuVC63i32vRfmu5iePpQeijHsjkv6bRYQJFstb8gfwRmij8YgOmpoga
         XKuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=gfeAjIWiFrJuIi3FU8wpHN3C6amaBTE7CLHtCx1SvsE=;
        b=RR483fdqlNVd7GoiSJZfY+nXK91Y8MYqy7RFCG7LgIJySYNEDS+nIS53qZt0m0nL2/
         FHitJR7iMg+IqwLvKNJpPqQh9vmKaqyqJgvYNlj6+u7QMVYQDXHWcqULzl9mhAO187n8
         F0mpeRQh9nQ8/zrE+RsyQNIFJToSALpo9X5vu/5ddX4yducCajCVqTznaNyhmfjwepc7
         IVzakFaK2gPgbvTvTdJ8BJWO1mFltudU6pPvJLEglUe7kSFtLBwcc0AxYmnH5TShANse
         JisNu8jb5mJMM6MOkFrrxAwL8yHEvfJ5jA+2AKgUG6DeEMlUuvfB0+sFTnfPsweNI27K
         837w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ThfNdT7T;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gfeAjIWiFrJuIi3FU8wpHN3C6amaBTE7CLHtCx1SvsE=;
        b=tTcEVtKpYJO38wRfZzvj/Te4V1MYy6zY5kJtk1y5gS1AIacaRfwXIP9vH4yO7uzpy5
         8Kvy8oW8OCXzFarm52AFfRPICE7zLr48A0wPABq/EsSKDtbuBaA6g5f0GhZvypBvyny5
         6kx5c1oi941eyBSxdXo6H5XYGyxgkyNZSWv1Bxa2lW8cAPjGFA3Agw8aabM3KgmvLgri
         crUv5dxL+TYD9FPuKnshESbYMb7xCjE7oDXjwAst2oNRV2yn7+Y/IFkIphBSGSiIUK2G
         7jmw2QrtjLPZl4GPasrRrxdwHkch3PCTc8Bga/C9iw8PzrRgIAYdwRLIcWXj9y64LTSI
         n8rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gfeAjIWiFrJuIi3FU8wpHN3C6amaBTE7CLHtCx1SvsE=;
        b=gJdrURoxuB0Odp/DUuN/SEzNp7iBgCC/tsHyMU93atJyXu3aXgiZAC2OgtOAnq8w4p
         hrqCVVTt66IRKZREsZZ/TCxZKmp93QSxFQathg4UcSYf2V8VXxUr++euYyimP5p5sGMR
         H61ExrgreSNEissPO3vC+bSFmhaGfQmhPAAYy8dOa5xFTvfDqxD4KMeeQiUjGOmuD8ja
         cr0uyMSNJk1iBHxkHOzYjxrschHqQDV7HcW3qQ/NvAavwJjkdjWAwVB3gajdfMXIQvCA
         /SPxHIqniTuzrn6h4iGihI8jrb3qkRoKVWP9cfwHIZ4q9R4MLp6AwnpMJL7jcXF5Jxvn
         wArg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lJepyxPFOLgGT43o2kw1wFdHnHwYzKcqYwGe3pVmBPLNxt1AD
	bCCqzCw1Usezn8IIpoKM2WQ=
X-Google-Smtp-Source: ABdhPJx2t/bXjYOTn7SW9M635vJhTNkJP/uQ603RxmRCFXZjR1Wh1xm5BSMgltExp60P8jiC7MRRtA==
X-Received: by 2002:a7b:c932:: with SMTP id h18mr51454wml.82.1605548745716;
        Mon, 16 Nov 2020 09:45:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f70d:: with SMTP id r13ls16411456wrp.1.gmail; Mon, 16
 Nov 2020 09:45:44 -0800 (PST)
X-Received: by 2002:adf:9d44:: with SMTP id o4mr21864018wre.229.1605548744824;
        Mon, 16 Nov 2020 09:45:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605548744; cv=none;
        d=google.com; s=arc-20160816;
        b=TWiQwbxVfdaQHzqg3YFPptyNdM9GGAswAMqiaiW6wYzUstxX2O3KBDnQH1PpzlaF1L
         R3D+Nne4TSsQqYML3sOa5RmTeIx+IbQN8MtEDWgbzJdO7Iglw9YnY4LtZgk9pQy8orEx
         rM3hJEzj0NrtiKeBQ1lM2DrbuVouKQjrEOqLdSSrrkzuhjzUlOkZRSUXZ16+Ovhcvl9A
         3aRTcU3pfysTL03LyjKGiJzd+jB2MGfLg7nT+J5XKTejaOp0GfgNgqwkea/PWHxLiVHq
         JdlX9diGLYyt/OFmM8k6bAUBd3F8UgZGKPP9CHuhMckk3wPe7BpGKPcCCyZqR+Ny1KN7
         X+tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iOfLPf6q82LQ4o2dX74EOP8Qleq0jBpSdGnIbHUCkxQ=;
        b=zOFLZE0afxSALmaoULSReeqj9yLQTNBpwS5jN7vBKWN2X9PpUtBmrXm9gKs+czsrvy
         8yBXwoOvvgTtRaMy4s/gy87PQzhzK2VBn1FgfvUy4J9cSBsNEDGF2zO5zQwrN/eMR8/t
         z1uHcPtOavtawDQSAOtrjIL54EN8S6OKuDcEJzpyGf4b5fTf6xui2ubnuBHr48wkW5xG
         uiGUSXpyeuLuxpuHyqmYX0HeKVmXqetLOOvryUi2ujov6sVpqpIYV6OTUyM2Jjgzm0ne
         aZC6fWtznMTWzyxuekP822pQhdmSdEKed5QcEZEo7GeVbtLNYzshozr15/W9jBYC6lrB
         45xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ThfNdT7T;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com. [2a00:1450:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id j199si16522wmj.0.2020.11.16.09.45.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 09:45:44 -0800 (PST)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::62a as permitted sender) client-ip=2a00:1450:4864:20::62a;
Received: by mail-ej1-x62a.google.com with SMTP id o21so25638323ejb.3
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 09:45:44 -0800 (PST)
X-Received: by 2002:a17:906:5fd0:: with SMTP id k16mr16102516ejv.133.1605548744401;
 Mon, 16 Nov 2020 09:45:44 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYssjT9+BBwGrjgVOwqVM923GmEtShQV8pVFnsu3X09-ZQ@mail.gmail.com>
 <CAK8P3a3DAVK2Vy-Hb7AbbFwfRnMCkwtmw1L5EivSRdoZ17hJ9A@mail.gmail.com>
In-Reply-To: <CAK8P3a3DAVK2Vy-Hb7AbbFwfRnMCkwtmw1L5EivSRdoZ17hJ9A@mail.gmail.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Mon, 16 Nov 2020 23:15:33 +0530
Message-ID: <CA+G9fYushaXDdg7CEU-CTmqpdGFNS_sMGPXXgiHj1RuUwxyK2w@mail.gmail.com>
Subject: Re: [stable rc 5.4] arch/x86/events/amd/../perf_event.h:838:21:
 error: invalid output size for constraint '=q'
To: Arnd Bergmann <arnd@kernel.org>
Cc: Anders Roxell <anders.roxell@linaro.org>, =?UTF-8?B?RGFuaWVsIETDrWF6?= <daniel.diaz@linaro.org>, 
	Arnd Bergmann <arnd@arndb.de>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Brian Gerst <brgerst@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ThfNdT7T;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Hi Arnd,

> Adding the clangbuiltlinux list, Brian and Nick.
>
> It looks like the problem is that Brian's cleanup series is only
> applied on mainline kernels (5.9+) but not the stable ones.
>
> Is this the only problem that prevents us from using clang for
> i386 5.4 kernels?
>
> If you apply these patches, do you run into other problems as
> well?

No.
The below listed patches are cherry-picked into my local stable rc 5.4 branch
and i386 clang-10 build is successful.

Build tested i386 + clang-10 - PASS
Build tested x86_64 + clang-10 - PASS

>
> c94055fe93c8 x86/percpu: Clean up percpu_stable_op()
> ebcd580bed4a x86/percpu: Clean up percpu_cmpxchg_op()
> 73ca542fbabb x86/percpu: Clean up percpu_xchg_op()
> bbff583b84a1 x86/percpu: Clean up percpu_add_return_op()
> e4d16defbbde x86/percpu: Remove "e" constraint from XADD
> 33e5614a435f x86/percpu: Clean up percpu_add_op()
> bb631e300284 x86/percpu: Clean up percpu_from_op()
> c175acc14719 x86/percpu: Clean up percpu_to_op()
> 6865dc3ae93b x86/percpu: Introduce size abstraction macros
>
> It may be a stretch to have these applied to v5.4.y, but maybe
> there is some other way.

We need to find a way to apply these patches into stable 5.4 branch.

- Naresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYushaXDdg7CEU-CTmqpdGFNS_sMGPXXgiHj1RuUwxyK2w%40mail.gmail.com.
