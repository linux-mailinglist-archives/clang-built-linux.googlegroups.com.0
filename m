Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7VP3KCQMGQEIDTSZNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D63397B3A
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 22:26:39 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id s123-20020a3777810000b02902e9adec2313sf78736qkc.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 13:26:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622579198; cv=pass;
        d=google.com; s=arc-20160816;
        b=XWkXSn6YRzxfjY7V3ov+kRIU9RtbS2CVbsBu9L3Hs4LfJr+WC+9RaM/T9BtFdkw6Ed
         Fx/Fc0qG3m0Fsk8FrRicsdya24xWK50vCFgFzFFEoMf/A/AdIBApz8EwS22MfMPERtIA
         hC8dmaXDvVYTGJWLprDRbJnOQ7Vk/xPw/XEFaHZWeWB6xZvvhUINMf9Zz1Qacy8HqjTt
         vJtVb1toESzaOxQE6nZrGIQpR8zjNTbwfCKr34n5ODWp3TaowO2Y+8qmdeqAaHHrZ4EA
         /TrYQJU6BJZZxIfOJcGpdsLses5jP34qRGFTfDNIrIs4S1IPY6NV2R7O0nrFwLxUpJDi
         o7eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4fbvDFuFBhMRmehmoPr4YozHsecDBb208lE0Co82zCg=;
        b=oBjXeKXh3vhiudfHK5EEb6CgLoHuEAjbNBrt+a5mb+lDXol91Rn/vlI3IqEEHQlG+V
         UBPNYxAs+4QBHKDXW6HfQR+Qkc6vL94WKD3/hOKC2j9ZQJ5WuLHtDN9gjBNvTHsEBCt8
         hYQrofTsfSX4ZzdTuuysukh3x0IigrEbdMCSxeDF9GLGapCS6zr71E2d8d4sZMGHSqW0
         rZMk32jn3d1wlk2UfNUrQA9+ma1b+ijvqr1nVpQo8F3dxHhODuRM/3V5+AFU5yN+MhrV
         LV3UUeYxjJRNeGFr+lf6zEMRzuqQ1d0pqNTnPAEdJOwbqyEsZ4wprCtFyXJ/dfN+zXQY
         /ZIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AIfOBAz8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4fbvDFuFBhMRmehmoPr4YozHsecDBb208lE0Co82zCg=;
        b=mxcqjeR9i9/5rR4GfKpMuXdwQmu5mmeX1DFmpzOeJ9UBPRHnigTOCK3upPFs3L/oAw
         soGy4TjB+/Nx9tlqqVckz7ZN/wUY3mb/Z99R438U7MSXk3SgtH+QjnY97UGmrnuqNVAP
         WG5fkRdCv37IosLVP15bJszjU4E03UC/GEyr8XG+cJSTU7rseCn4z7UxGGir6ERCMNCq
         SRT6jwPGy3J/HjHKe2ylvB8xS/bI0chFFL94LzE3ubdctNsyRDdQ4fiarBS6U31nx4TL
         tO8mSqF7OVkB8kUgG8Ib7mczHqea1UMSHMWhq9l5lrI0a7zPAAApfnjMnFVu1+c0gWpv
         hT9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4fbvDFuFBhMRmehmoPr4YozHsecDBb208lE0Co82zCg=;
        b=mjY0w56gawgPscmcBIfjtIDXgTaS7+5SPt3p6SBRZvtpU91fTIMxysP0UEL/cBRGGM
         4FIYO+juh77FsLABg4uBD874/OqU1m21tKuoN12DgvpgQ3/pw1DUUiu8zruqS2PVbOvA
         TxzAepH4kyUXCJHdP5kqSQGhRDBiEZ65w+sLysz3vPAA0p+VEOzO031omedBkgerYYry
         KYUAVu0/h0gUaHzHTm516GX0/Au5B883dfJHvMEjS9zRBZ99c4TB+eYpCpnLFVfrXjg2
         vSwratWEgiW1dEOWuPTE5Bq8PXwYUoMpmD0ioyBdKPLdS16x+/WIRmf2rJYjQhz2QPRl
         6R0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IUf3AX2eUGPQiEQw4RDZv9/RrjUr5FPDLSqd8seYiyhex+v0b
	lqtIuj9cSl21Uq4zxCH+tRI=
X-Google-Smtp-Source: ABdhPJzqiXQ551HuxdOj7a3XK3cDhesSwlHF4cAOywwEKkzrHrL0uDhlIVF/SMZqH9mjxynAkqcfaQ==
X-Received: by 2002:a05:622a:183:: with SMTP id s3mr21153079qtw.115.1622579198709;
        Tue, 01 Jun 2021 13:26:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5f44:: with SMTP id t65ls11594669qkb.0.gmail; Tue, 01
 Jun 2021 13:26:38 -0700 (PDT)
X-Received: by 2002:a05:620a:13a8:: with SMTP id m8mr22730875qki.213.1622579198290;
        Tue, 01 Jun 2021 13:26:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622579198; cv=none;
        d=google.com; s=arc-20160816;
        b=RLaxhFwwhi7EO+a57kQpzNVlbt3bfV1MF6m3IwT1h/G2Fza5bjTLmL0srPjRESBxA7
         xU1NB+ExcXNUstR3uopUjbKN5zWdPDmQL/RT/VVcyas3R09ohv80PanKreQf35Ykvz4a
         GBV95U7MVwqxKwWID87CQgGhC0PX7Jc0Ei40ixqFXY36FCvxKEh+MdjAAOu6LiI7050a
         S++s3zOzEOLinAnu/6SiLgM8A9R/L578IRWxdm6O9MCfGu8CU8JOOTkaalQNWn6Jt3ta
         Ry8H3mdE9aGSyGgCF4x6LK//7GiCF74XweRwAKsaXoLhikJUckyYr/GrY7J9d6hbgonc
         bwBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Q/i2UKztTiXKeDTn1ods8pw0VEoBOgBeX4yROrVWfus=;
        b=PUESkrAoVGcvLI/JZOFPCQBZ1jpJPUB59xYBou5lhrR+QVY0BKnZX8OpfjxCH90xU3
         sEj6SmZHsbepp7srjKLDgBsmm35xvVpz/ZnIKZe+0yR+jS3XFK9enB3vg6/0UfGtiKKr
         UIIvK4EK2ahnWSkggsB8XY+92vnSXu2iWtT1a0dFl+ZjLL/Ig8EoYyaduE0jmC6xmkue
         6cmSjCZLygXYTyniBEtx3nejpYaqEp3gWlJ1qMwCmIfz/PXn+UHv9APbc/LzwGB+/2Iw
         hN0gEG/ACbkfbFFAp3Bot4TH8VqNSavuXiShwOukKQm5dXk7ShUnT+dxiwjHk8nrWHqd
         JoAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AIfOBAz8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id d8si731520qtb.3.2021.06.01.13.26.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 13:26:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id ei4so356341pjb.3
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 13:26:38 -0700 (PDT)
X-Received: by 2002:a17:90a:5406:: with SMTP id z6mr26097196pjh.130.1622579197535;
        Tue, 01 Jun 2021 13:26:37 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g6sm4921477pfq.110.2021.06.01.13.26.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 13:26:36 -0700 (PDT)
Date: Tue, 1 Jun 2021 13:26:35 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>,
	"automated-testing@yoctoproject.org" <automated-testing@yoctoproject.org>,
	kernelci@groups.io,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Vishal Bhoj <vishal.bhoj@linaro.org>,
	Antonio Terceiro <antonio.terceiro@linaro.org>,
	Remi Duraffort <remi.duraffort@linaro.org>
Subject: Re: #KCIDB engagement report
Message-ID: <202106011315.432A65D6@keescook>
References: <5a9bf050-0671-3273-cc4f-1b131445c1fe@redhat.com>
 <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=AIfOBAz8;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1031
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

On Mon, May 24, 2021 at 10:38:22AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Mon, May 24, 2021 at 12:50 AM Nikolai Kondrashov
> <Nikolai.Kondrashov@redhat.com> wrote:
> > [...]
> >      KernelCI native
> >          Sending (a lot of) production build and test results.
> >          https://staging.kernelci.org:3000/?var-origin=kernelci
> > [...]

Apologies for the thread hijack, but does anyone know what's happening
with kselftest? It seems missing from the listed[1] build artifacts, but
it is actually present[2] (and I see the logs for generating the tarball
there too), but I can't find any builds that actually run the tests?

(Or how do I see a top-level list of all tests and search it?)

Thanks!

-Kees

[1] https://kcidb.kernelci.org/d/build/build?orgId=1&var-dataset=kernelci04&var-id=kernelci:kernelci.org:60b654321456eb7654b3afa6&fullscreen&panelId=17
[2] https://storage.kernelci.org//mainline/master/v5.13-rc4-11-gc2131f7e73c9/x86_64/x86_64_defconfig+x86-chromebook+kselftest/gcc-8/

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106011315.432A65D6%40keescook.
