Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBRWMTWBQMGQE2LQ45CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C121352F5E
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 20:45:27 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id t18sf5339393qtw.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Apr 2021 11:45:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617389126; cv=pass;
        d=google.com; s=arc-20160816;
        b=aTfJ6LHzb86lyyyzqVHhO14qfw60ZcPteYPpCXpaVR+Ub+7y2NC+8l071LaJgpXtKM
         W8XyFQwQc6UI3o5kea1VblRrDdaUwpRhypgt4msljkirSKK/4l5o7B1dzpVNHHn0pWrB
         LCEKotpyXwtLIYa3wmPqx3i8w/DGgpFqzoxu7cvMUkCsEc9yukV2nSSTh6aSfdHN55aw
         Vbw5PmekYY8c10IkUSNz6n6T5ahp94SxE9XmKDe+ePEmC4hHFHExKNsNwWGo5O/qnxzp
         nUEQdhs8gTh484fNbUGFgf9bf8Ds9puRBear1NpEpwwmXIBUv7rLOYy+AQgkl8LvVaEw
         ZOFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=gO2bWx6MbZfBBfl/U1UslSzOixHGu2iFjWh5M7kGnOI=;
        b=najYQXY06jFUGaEjbl2ygT3hqFb4irgZaLL3p1ykL3mY7nBe2NzXRIHUUhIRgST9b1
         3ghC1tGuHV53sTFxPwfQ11u9FENmVXoF5EKXEYU4Z/bfCOAsluwGF70wUQOfJLL64olT
         GiURzxyfgOfmT+Ic6ssYczSKA/Ns+ZTe05GNioXhQY0y+wtzfc6nFZmJWb30z2fQNa2v
         1hhjaFlTlIwCyAMKiXE2/l0y2u5FP3DKmqbAkY8KJfAmOM15811FZeFMHzpfCSMttV3G
         mGbHYaEr7WAurcWD/ENhc/oCGGuTflETWdeK5TbDg2Oyz4tn3l0V99/1SoqOdjjGIZck
         ACMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=spoXp4ym;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gO2bWx6MbZfBBfl/U1UslSzOixHGu2iFjWh5M7kGnOI=;
        b=ePbmdHkD4RCDSK2muh1HanP5nWp+wBuhxi5cw/DKe2upYaLVcIVRxJsJB/mrceNfOe
         CmFVmf7h2rLo9qGSwN0Vn9h83qmLVbwsri1o8dycUd9pb+gsvHf5B9kA8Q8VpnItuxpA
         pOG4TlsCZ6+VrmPGTus/iAoyLPtAmfYJQMbn7K5hovo0zKZQxOYs5aqGkYQhogqSorZ+
         qDZOXbLhUiQd7jAiF4aCXbzEJ/AclWDhhPjucarl+1+v/R62ceHcpFoTMp2V3RJeyxcw
         3kXwqkhjW3zAV30I7IDIfP1f5tW4L6iTk1PugQovfgK3SKFJO4HMfkdgYAEyr/bwgtGY
         +cMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gO2bWx6MbZfBBfl/U1UslSzOixHGu2iFjWh5M7kGnOI=;
        b=RSrKRS+HgwIBvr+29URfBop9l2DMJsXgcZVt6bEpJJCVQVSfxlzyxu9f+abkZNru1L
         oLYG3ONMW6ulBZuMr0w+DVfVfghYNYEyW2iD8uHF38VPfbSym7decVITqcLoYox7xFcD
         cli32IO98XFvwqIEYq/kEb2V0Ozf95O9W/on7nhyAz5ihik8RGHuzJk6k0tIqFK/MOx5
         o1AhIqC4MGo0YtK//R28TdAwBU6xdLdEIoB2Q0oPRoTwodvZ6UNbbkwwfrLJAsdj8nIn
         krbzBdRDZ5cTeZqgWH5zTKyYeK8oFzrE43seGSG0LXuUp7RGN0FOloufUXKF4+lTHuj9
         yYzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gO2bWx6MbZfBBfl/U1UslSzOixHGu2iFjWh5M7kGnOI=;
        b=BHCSHPxrJ3XaVWcCA/RuQQL97frbX9xeVwcCIJYh3IaaBewO23XmJZD/2SZI2NJjRY
         X39mndh77mjxWFnII8A++Zn3XZiibinfbAE8LZ/tTHeNuhMD03g6aQY0auDIJvh5l2Oj
         vEJtF2K3v8YMgxfFrZ0/oHy69+Iugu5dl7MAkxaaWQAB8AxIbRE3sf8MoXJdNlC/05Eh
         m5Pu4EDncsOBIAnbbhUvrj4TQwzmIoYwZYIZ1vV9NOJxMcfjlREThI52MFvthZ+X4nmb
         q3UUeB0nVGPBwKHjU82FZgiQs1XRE1S+EYA+/KWYZtO1wmMQ+fRREz/1XtBsuMlgKV/e
         sw7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533CCFGSn6qU4diUdtsRS2zf9wVMjL3L+geyoNt/DyCBC7KpP+77
	ubLMRJ6T+etyH8zhL7d5HuA=
X-Google-Smtp-Source: ABdhPJwsAbyti0/L7DZS/sqSOUjsFhFK8Sb2zGVSgqTcQpqYd6hB8NoR9rQrk8v5MNZyWXAGko5MWg==
X-Received: by 2002:ac8:a4c:: with SMTP id f12mr13013944qti.329.1617389126165;
        Fri, 02 Apr 2021 11:45:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2091:: with SMTP id 17ls3822124qtb.10.gmail; Fri, 02 Apr
 2021 11:45:25 -0700 (PDT)
X-Received: by 2002:ac8:7fcc:: with SMTP id b12mr12517414qtk.343.1617389125744;
        Fri, 02 Apr 2021 11:45:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617389125; cv=none;
        d=google.com; s=arc-20160816;
        b=bBEWra852CESePmQ30b8v9PyCFg9m7RvUFaBO+hO9rcq7RcANOe/4R2qYO7ENj/1vf
         VMR1PX2m+sGNnjqRkmsUmZo+W97m0KnWsXcJJ7k4Bfu2AE2Y4H8jxnIMiGu7LvCs7THY
         qFS8e2HBanAIo3lx5g7nXpo7VPXKkALtaAoa8MOPMafKNhCI794aHhRuTOZ+TTRbkaGZ
         8XjBqjRUnft/0VQKD7r8A1+OQLZFMEDygwWiownH9IDGx/o47AZjOyri28u8vNEULb+8
         9tzdW4jLQrQJuqFo16n6TksZ5/U77R97mDDn3Yq7LdM5pIboTwxxY3SVsNrY2OCrvxJv
         BIkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/OThl2TJ86i+d/Z9onNMKzzml/86evlKk1D8sXUWm3s=;
        b=UlAlY+4i4OzPOfPhSgED579gcwIxkZSgBtsm3l8inCNbGn8c22dlhM1LgSCwVfzK0x
         pmUamyXAknw9NHWM8UPGMH85EhOsaAIvW4HjbxjeOEYdSf8MWj+xe5ok1GNvwy7+CAEA
         eFAFHy20MAzZmA9J5VzVurJvfnC89RieI6WWpx3vOFEi5JzyQcAdpOkJUldCNAX1cl88
         bGuSFwbD2j6IeJFmJy3f9zvmCS0NnAlPPDgBNro9qDUBIhoUcCiqmKt24lMFYUcLRyex
         q7otrtqFV9Zkt7XkSWSQ9Jp3StTdJt2ZOqZWvzdmRzDO7LYcjMN0m8XCNaikZ/XIpek/
         EvFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=spoXp4ym;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com. [2607:f8b0:4864:20::d2b])
        by gmr-mx.google.com with ESMTPS id a15si1603053qtn.4.2021.04.02.11.45.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Apr 2021 11:45:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) client-ip=2607:f8b0:4864:20::d2b;
Received: by mail-io1-xd2b.google.com with SMTP id e8so6190605iok.5
        for <clang-built-linux@googlegroups.com>; Fri, 02 Apr 2021 11:45:25 -0700 (PDT)
X-Received: by 2002:a5d:9d13:: with SMTP id j19mr12186378ioj.110.1617389125411;
 Fri, 02 Apr 2021 11:45:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210211194258.4137998-1-nathan@kernel.org> <161428829728.2305454.15456455443457551559.b4-ty@chromium.org>
 <CA+icZUWdeWSy52bU4cjHau1hn5NiFAozaHgDb=geaaCYOET9+w@mail.gmail.com>
 <202104021125.53164550A@keescook> <20210402183110.zmnuoc74mzil3tml@archlinux-ax161>
In-Reply-To: <20210402183110.zmnuoc74mzil3tml@archlinux-ax161>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 2 Apr 2021 20:44:49 +0200
Message-ID: <CA+icZUXvqF79a=zSOxrshSK3gZHFpPQa=U=MqrK6cnu7Cvmq0A@mail.gmail.com>
Subject: Re: [PATCH] qemu_fw_cfg: Make fw_cfg_rev_attr a proper kobj_attribute
To: Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Gabriel Somlo <somlo@cmu.edu>, 
	"Michael S. Tsirkin" <mst@redhat.com>, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>, qemu-devel@nongnu.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=spoXp4ym;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b
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

On Fri, Apr 2, 2021 at 8:31 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Fri, Apr 02, 2021 at 11:25:42AM -0700, Kees Cook wrote:
> > On Fri, Apr 02, 2021 at 08:42:07AM +0200, Sedat Dilek wrote:
> > > On Thu, Feb 25, 2021 at 10:25 PM Kees Cook <keescook@chromium.org> wrote:
> > > >
> > > > On Thu, 11 Feb 2021 12:42:58 -0700, Nathan Chancellor wrote:
> > > > > fw_cfg_showrev() is called by an indirect call in kobj_attr_show(),
> > > > > which violates clang's CFI checking because fw_cfg_showrev()'s second
> > > > > parameter is 'struct attribute', whereas the ->show() member of 'struct
> > > > > kobj_structure' expects the second parameter to be of type 'struct
> > > > > kobj_attribute'.
> > > > >
> > > > > $ cat /sys/firmware/qemu_fw_cfg/rev
> > > > > 3
> > > > >
> > > > > [...]
> > > >
> > > > Applied to kspp/cfi/cleanups, thanks!
> > > >
> > > > [1/1] qemu_fw_cfg: Make fw_cfg_rev_attr a proper kobj_attribute
> > > >       https://git.kernel.org/kees/c/f5c4679d6c49
> > > >
> > >
> > > I have queued this up in my custom patchset
> > > (for-5.12/kspp-cfi-cleanups-20210225).
> > >
> > > What is the plan to get this upstream?
> >
> > I haven't sent it to Linus yet -- I was expecting to batch more of these
> > and send them for v5.13. (But if the kvm folks snag it, that's good
> > too.)
>
> I am going to be putting the CFI series through its paces on both arm64
> and x86_64 over the next week or so on several different machines (in
> fact, I am writing up a report right now) so I will probably have some
> more of these as I find them.
>

This was just a friendly ping.

Sami has sent some patches which I reported in the early stage of
clang-cfi (x86-64) through subtree maintainers.
It's up to you Nathan or kvm folks.

Upstreamed patches means to me a RDC-ed custom patchset.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXvqF79a%3DzSOxrshSK3gZHFpPQa%3DU%3DMqrK6cnu7Cvmq0A%40mail.gmail.com.
