Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJX57CAAMGQE4U5HPXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FEB311BCC
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 08:00:56 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id u8sf6751488qvm.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 23:00:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612594855; cv=pass;
        d=google.com; s=arc-20160816;
        b=h15/HafJzZ8/qnQ5OP7fQGYv9agNs++RpZTurNTH5SmYFv7WxjwrOEgToFGphuJA50
         wA6vjE9MouC0ExIsUTtA/Mq+FJucJFqxqB8y1MN/QjaIjyi6Nru12DL6HBeUK4uwThFs
         aKDS85R8gbnzS7kqCRltHAePFi5oHEcJulpL+FzlvulK5OumHEQ9rRZR63K3j4lGr497
         +eStWN+9mVVy8ojkGQIcQZgZwtUy9GUkGwpX11Ykaz6hvvMfPUi9oxtpkdBgDSIjPft9
         YXfnlvk/zCpLN/VD9MK1CZpZVUVNHzBjVtMIiLm589V6pzItltibGOzwlCmKdfsWCj5G
         Fhlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=JSanUNgIB7JUvP/om0M4LJkhGjxdt5r25IivM5+5kIQ=;
        b=MUnyzL8dxOmzbmgAzvMs0ttUEElmBcYk7M2S0aWRonvj1S/iiiFgCvKHHWFn7xM2GU
         euCoAN2J7v1eN4WOMLyvCU9imuFnryQqwiuxj/YSqDCwndxmqaA20cOmGMAwbVghN+XG
         6rzeRCxrsusbpTNbdQHpY19cXmaLICFG5olSAhW0haLlQ4PyaeEZZG2e/ntlZ8rg7spw
         VyBr0GnsQBiu/Pgo+3g0tvMwkOlBvTpPXAuabD2/3TThOZ3sf7x0m4u6TEbA+YkYfRo/
         gga4fZpEXciB3skdMrXIbcFqF2MmJVYLrlF08XXHv7V7rDv1R7gOxgMHkIwv7YAT1hGB
         bcLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OKm+7jAp;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JSanUNgIB7JUvP/om0M4LJkhGjxdt5r25IivM5+5kIQ=;
        b=LV56Ya8KeOnMoEj3zu5B4NVmEQ4P5nAXl+NRr5ZavUFaaQLUoYuHmcu4yhpauRyUik
         QI+UNqiS91zZw9sc0WlGmoj6Go6zyUZfqDktdmna+jWhXvF0yhRmV+hpBwrXE8Wf+kVB
         8MfzOriCg+GQn6xCTqAQUu44JO5FPlzf2mO9ORFOvg+2Om72ukfivX5mchhjZ3H0DVlz
         KkNVi/4cvPUeIQx0Vgv/M9iovYlr7LKkq9aV/AS3ytqFPcixnuLsW5pNuVWyI600ksAa
         SggjeWoPXnF26FbaGO8DdnUeUYk+DsQ7sXF/vsIA+9SXzl91Qt3F0YOZIGxzGiZC1zyJ
         KxUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JSanUNgIB7JUvP/om0M4LJkhGjxdt5r25IivM5+5kIQ=;
        b=tI+LCy7JNUfasK7RZo4niQpvcFg666NMfanAhEhTpJpuUsEEFixeVI3BkeD3TnnYhQ
         o3S/wMcoQVO8hygVBhumovUtTp99XTZSxvZkGNpaXVCP2pXg+5MewFVFX8aBdX2MYHUo
         GaUvrvh8MCMP2pSHrLm/4MB3a4P/1GMWX7grYnzGmZoM4TC3FxtmnKoy65OXmEXntPBa
         2iDkXdOYTYqM09y/faFNaFvSUrqBwygV02+9n6Kxd467B/9y3OywwYazG1P2TG+W8DTT
         r9H5DTUFew592fT0UJ0DdYZQtHrUJ0huIEoo/P0bISZcq6TvlTzhE1+atTVX0D9GPJju
         yl4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JSanUNgIB7JUvP/om0M4LJkhGjxdt5r25IivM5+5kIQ=;
        b=RYAOEtWWi0QtiLKZwuEfJuSEA4o3G9t+VE2LONcCVs+S5X0mqdCB8lKs5WMBhC9z2I
         sS5eVkT1poCsAUUgxca0v3OPZ/Ap1SffWqjJ0lbyrdCtzwN798wUzMg07JML9/pceApM
         3VhSuPVb1Ni6C4pJ1AqsPkyj9imS3uvzXZunqyZPPdfxz59pkWlZRfF6VHx/cUEDBIlC
         VuM+OVvINoSoHqowLX8aW3I2lpS9cVx7D4JsrhK2G9+2rCgf28zEn5y/AzeQvX3AyEd+
         AAxMoPDFjRRkhuayk32jiTf0+WwuZ77Z48nnCjzwmazB5XzNdMFTM/TgVwO966OOKfBe
         40sQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533tUqIQL0Xz8iz5jc4K6JbVUFL2LBm7nbxvM5u0SRD2C0lKeBxQ
	rYDcImSCitQ6Tt8TgSRL8AE=
X-Google-Smtp-Source: ABdhPJywZk/F3x0N400nC4jYWxo0tUCi+TB39zx79P6xl3DuRsNQWkyc5ZMyVTMPuZ+XgUuGq14efQ==
X-Received: by 2002:ac8:4e55:: with SMTP id e21mr7502145qtw.159.1612594855008;
        Fri, 05 Feb 2021 23:00:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5e13:: with SMTP id h19ls4361123qtx.7.gmail; Fri, 05 Feb
 2021 23:00:54 -0800 (PST)
X-Received: by 2002:ac8:661a:: with SMTP id c26mr2254205qtp.126.1612594854638;
        Fri, 05 Feb 2021 23:00:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612594854; cv=none;
        d=google.com; s=arc-20160816;
        b=e2E9mdecXdO+bd9qFJmeg4ZNDsHffUidzyVZoavuAY4x4wxiHpaYCYRh0iHmDSGi6p
         xyH51TiXr1Ms+kz516UQ9PLRmLTTc3PDhAP2pYn5afBa/f4gUw3ryx57TYRbywbhTz3r
         Rv94K8ugjRnJu0IGwE+l+83Ru9fseebkGKLpWbB42dNRcyg4qdu4ybnYC8vOEPBiDgc1
         kL08/QDDbEhTyfxUhnkfFpZkqSVO4r+3jvYI588qIT+Jf082b+/iw/iGJ78QVLVubnEe
         f/CFCY1PCXyHQswrUtWqZwuycUn2JfL0lJTRIn/cKTcGoYbbUbx160nyVAYR55pTSf25
         Lk9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=94W66yNfADcpCIz3XFhMS2SehD6LivjDGMv4rmfjvf0=;
        b=yOiLwEFD4gItK0sbmNfzHoVGNg/uNTdss/A+RY/PdAfhl/UKXc4d6PpGQZrk/Qq7Za
         pFjdWdz/ukgKAOqStalY0PitR5F6nDMBNHVXxwR4WaY1KjHsB3TNbKLF2VIzz7DSrVP6
         sFJkR6Ky5wfiGaYSCN1tKGLCfJkPZ/R5rKLzVHyCuqvx23KnDe1cZVarSwjlLPW1x/Bm
         Rsmqb4IVrqK+bEtalXWiW5HuXgZIaqA9WXCUWZ7CcTddixRIDQFxMZ6MSMujGamSfCwo
         jT0UNLHyG664anomhqw93QHGkb3elEI5jqPNyBVWKOK+7CKuokeOtsG4W4uXYb36shRa
         mt2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OKm+7jAp;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com. [2607:f8b0:4864:20::d34])
        by gmr-mx.google.com with ESMTPS id z14si833342qtv.0.2021.02.05.23.00.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 23:00:54 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) client-ip=2607:f8b0:4864:20::d34;
Received: by mail-io1-xd34.google.com with SMTP id u8so9529634ior.13
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 23:00:54 -0800 (PST)
X-Received: by 2002:a05:6602:1541:: with SMTP id h1mr7108026iow.171.1612594854157;
 Fri, 05 Feb 2021 23:00:54 -0800 (PST)
MIME-Version: 1.0
References: <20210126212730.2097108-1-nathan@kernel.org> <CAKXUXMwErhv-vt1LC6a79yJ2oukDkPa1BnijDXpdwYu1RK3z=A@mail.gmail.com>
 <CA+icZUXeVYFJx_McagTz433GjgnvuLKOdtx1Nkit9huWevP-Rw@mail.gmail.com>
In-Reply-To: <CA+icZUXeVYFJx_McagTz433GjgnvuLKOdtx1Nkit9huWevP-Rw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 6 Feb 2021 08:00:43 +0100
Message-ID: <CA+icZUVVuB+YMSV6xyBUFBMJyLs5WALRJ14o5idFA1wtg1SwZQ@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS/.mailmap: Use my @kernel.org address
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OKm+7jAp;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jan 27, 2021 at 7:48 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Jan 27, 2021 at 6:07 AM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
> >
> > On Tue, Jan 26, 2021 at 10:27 PM Nathan Chancellor <nathan@kernel.org> wrote:
> > >
> > > Use my @kernel.org for all points of contact so that I am always
> > > accessible.
> > >
> > > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> >
> > Congrats, Nathan. You deserve it for all the warning fixes, reports,
> > maintenance, CI, reviews and much more stuff you are doing.
> >
>
> +1
>
> Congrats Nathan.
>

ministerial: https://git.kernel.org/linus/654eb3f2a009af1fc64b10442e559e0d1e50904a

- sed@ -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVVuB%2BYMSV6xyBUFBMJyLs5WALRJ14o5idFA1wtg1SwZQ%40mail.gmail.com.
