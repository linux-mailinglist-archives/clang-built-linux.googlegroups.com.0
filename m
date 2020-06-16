Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBE4MUT3QKGQEYYAHDWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 651B41FBD4C
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 19:49:08 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id b30sf14113511ioc.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 10:49:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592329747; cv=pass;
        d=google.com; s=arc-20160816;
        b=bxFp170pI0O3xDqrRsrrMYw2HRNmOHTFR4o7jnx+lFFsgW7/8XnrIjOCIE9FfYGl5/
         WQQFi4O82M16xu4gbXB4WLkcCUKIFrwfaFhKZrGRDEzsFM4d058lesqRl/OkRSpmA9H+
         CVm0nZqqH6PW16vZOE5iDCz3iJ898GqwbYfxix0KQT7LE/hK9QwUEPUXGw8YF76UBEL9
         NONth72QZh3VXLKZWKibZJVu2W0xvtUTTLWCQh0eH2IYpXmoMVXToKcalETS0H2ojWxW
         YD5YCLd4lquQCXipQNp1V+bLjDZlnFxo0ZdqMGfEA4vANCeRHxr8xvegsHbSiOYlg24y
         wUgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Cr6tbvffXH+/c12RRk5dbiK49bHImKXE8PE5fpax5zg=;
        b=gBEnpFr1MWA98q4yyAkACgsoX3VziLosUw0TwWzM1UB14G2ACNeOWZm07opcAOmj/W
         fp2RXmIi19ibFhzDZbSJQS3SAtd/sACPTtXS8wKSXtlLwfSBim9jdmfICzU7cWgS4fg9
         hHQvt/Wi1ftZJk4g00ZhMUIjOQaniGgwJX5MD63e28JBw3q5gAgeSOdUh6EidXkjEiz5
         UenO+QCDVnqjK803JuWUURsUN3HMYpQdbmfp+MGkgpeuth/gBrTh2hbPchzGZ+VdmlgU
         5mypoW8hIMo3tvxzswrllHWLLlq05+QbwoBbUcN8d5aM4rCZAcsv58zsX8/0H1fshNly
         2+Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="RNh/0R6J";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Cr6tbvffXH+/c12RRk5dbiK49bHImKXE8PE5fpax5zg=;
        b=HjledxDHDUUXrGn3BQcM1pxHOopPHX4Cq8sz2cdjurbN3QHrYQ3HXOIiMQNZPyr0MU
         e1q9hNfPT/gVmnGFx+qzTymNCds5R4tyR1TBHyhjk2qB2f76Z5f/8B5mdM0sl1OMTpnw
         ppiMzxUZkmcrwZOjwD/3H2Vnsf4XN4lOZ+40S05+iNrkjWlFIPoQoWE274qUC2CWrfQA
         zvdGPuQl5UlGUjb9O/wXvBqUJyyW0nps9lRfnyOW791Z5G/ow2ebRSo1GEdMWlWEgZnn
         ZXF5f+jrnex0WrcvV537CNLc1H0VTTShf/9tYGI6v2aauMEh5k9/LiawtXfcah4M5x0t
         U6+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Cr6tbvffXH+/c12RRk5dbiK49bHImKXE8PE5fpax5zg=;
        b=STJzcJ1oUGZuvcFuve4AUzwy7mZvS/9i7OrW7slh8DeXwpOc9qxedkuEIXah53x1oM
         m7R4mdnt0SpkyDDcObAKecuKiqcRfTLeO+majvwtaSgKlZeg8l2Nhp2a4JK81VJHrdDi
         TmDXXur96yG9Yivw2TmVai2+ZA6v25lN66OEp2hCFxiO+BIEmM2yxZzWoXkep1SyrXXy
         9IIqiyA5rV2qhNRDFNpS9Dc5yqFczXSbieAe2ljf7oXo8pekGBs2b2uOJDBxzi44ddm2
         aY4CFB54T4kkkWKcKwTDYLOlGj4xuKKJtrVh2lfGkRhFCoPfUjot9MtNlid0vMP3UCTw
         Cs7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Cr6tbvffXH+/c12RRk5dbiK49bHImKXE8PE5fpax5zg=;
        b=KjTXVuturPaOWLXz9jjoPP6cLjaTl6/Rb3pc6ahov5DTGthDDj34tJUVTCuVg9vRum
         2Mcgp3HIyWugJpAdTL+jzHsd3GF0hLLi2bCWbef/7u1+fS7jkl9xJQLxO8Yo768dlCFS
         6KZPlqt0Gma1vRcZR2aRbgVtVEagte5cGhoghcE+x1Vt81WwKu/CxXaXqI+uuBXwSuOa
         5wub8ri25DDwehnMP3xhZ9c+Zhkgm+Xgx0LaqD6j/XkxvI4W6TGKPrEXKj+zMeR7ARm8
         qPCeCcryaT0LXlcCERxGgkeXlhwYhGVbLoDgnwyMn94X+VYnIlmUsDjuxMgx9zGP26DQ
         Jpzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322DGHbfCppR+No7j2r7n6a0gf/0QD7tZZoWu3CHZ0s7M201Tag
	VT1enMYIOewG2p6nuBtjB3Q=
X-Google-Smtp-Source: ABdhPJym/7Ds1Z/jcMIt4z5jvJSzLTKfGx88FFW8VhWvnVLc8txB8J3j8WNCTcs4ADGtjhvJmAAOOw==
X-Received: by 2002:a02:a805:: with SMTP id f5mr28244448jaj.130.1592329747305;
        Tue, 16 Jun 2020 10:49:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:e216:: with SMTP id z22ls3404964ioc.5.gmail; Tue, 16 Jun
 2020 10:49:07 -0700 (PDT)
X-Received: by 2002:a5e:c64a:: with SMTP id s10mr3888905ioo.1.1592329747063;
        Tue, 16 Jun 2020 10:49:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592329747; cv=none;
        d=google.com; s=arc-20160816;
        b=PckugHOhkqeWM+kbWbucItPtDTnYyd9MdqEtoFftvAoR0r5DKJg0qS1EJRwdJWD8M2
         3BEtuPgg5dvWuSifRIAStY+XCjEHTcsr7YLGnT1ATQAlopHNZ2rTt9uKejmevsdB7rWG
         zkAT6XGKGBJmg6GWvwuQaB53bk3Bf2tglm4ylqrLMG0nNlh7WFWX2rHYYUsunGqQrgB8
         W41pI1A9Kx11Sd/F40WDRk30VJzdrnUtTLNlI9mc+Ev0AYWuMJl9lRpwdnYsUOtNRpYn
         FsbmGCsuVwG6v9oaYlINjlOYEpZr23rGdoQ3ZBX+R+r0DtOF7QgWX4Eb0EIUiWhlIXNC
         uV+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ShWvJES21PY863zJ7xMRiENg3GSGe4vsDcPcHHAB/1s=;
        b=yxcNizMrDYpO6HwkWQILNdCe4LgUB6k1Z5ZzdXmcEWQaG93ZBDfFXlWObQDT0D0P4v
         tKAKY9hnRfMIDwqCHuNyuZNtUiPRn4kdKlarRkqnI64wMW42RHxl/8JQx7Y0zKB415nt
         QI65oNkXpdWXeC0c4y/elgYPUc9yglAaU+wzHQ+oNTNI17Ksgrx0s0QHhUoIat/pFtn/
         ljBuPM9nPNxAaBv+A0MKdxzqcH7QC3c9dx/qxf0V8/53nUT4yquyI/6RFW5OhUtTwPRr
         LqUsWEFxPAc0PeyHRS8JDhvd0EJytx1oLIvbZy8AX3JC/FYIhyzr1hm4D35fBtjwna0p
         djWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="RNh/0R6J";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id y22si1281056ioc.0.2020.06.16.10.49.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2020 10:49:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id 25so19989937oiy.13
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jun 2020 10:49:07 -0700 (PDT)
X-Received: by 2002:aca:57d8:: with SMTP id l207mr4208296oib.79.1592329746554;
        Tue, 16 Jun 2020 10:49:06 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id x4sm3853105ood.43.2020.06.16.10.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2020 10:49:05 -0700 (PDT)
Date: Tue, 16 Jun 2020 10:49:04 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Will Deacon <will@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, ndesaulniers@google.com,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com,
	catalin.marinas@arm.com, android-kvm@google.com,
	daniel.kiss@arm.com, tstellar@redhat.com
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Message-ID: <20200616174904.GA3403100@ubuntu-n2-xlarge-x86>
References: <20200615105524.GA2694@willie-the-truck>
 <20200615115337.GG4447@sirena.org.uk>
 <20200615120223.GC2694@willie-the-truck>
 <20200615143105.GA2283265@ubuntu-n2-xlarge-x86>
 <20200616173728.GC2129@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200616173728.GC2129@willie-the-truck>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="RNh/0R6J";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jun 16, 2020 at 06:37:28PM +0100, Will Deacon wrote:
> On Mon, Jun 15, 2020 at 07:31:05AM -0700, Nathan Chancellor wrote:
> > [+ Tom, the clang 10 release manager]
> > 
> > On Mon, Jun 15, 2020 at 01:02:23PM +0100, Will Deacon wrote:
> > > On Mon, Jun 15, 2020 at 12:53:37PM +0100, Mark Brown wrote:
> > > > On Mon, Jun 15, 2020 at 11:55:24AM +0100, Will Deacon wrote:
> > > > 
> > > > > Here, the switch statement has been replaced by a jump table which we *tail
> > > > > call* into. The register dump shows we're going to 0xffffd68929392e14:
> > > > 
> > > > > ffff800010032e14:       d503233f        paciasp
> > > > > ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> > > > > ffff800010032e1c:       910003fd        mov     x29, sp
> > > > > ffff800010032e20:       aa0803e0        mov     x0, x8
> > > > > ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
> > > > > ffff800010032e28:       93407c00        sxtw    x0, w0
> > > > > ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
> > > > > ffff800010032e30:       d50323bf        autiasp
> > > > > ffff800010032e34:       d65f03c0        ret
> > > > 
> > > > > The problem is that the paciasp instruction is not BTYPE-compatible with BR;
> > > > > it expects to be called with a branch-and-link, and so we panic. I think you
> > > > > need to emit a 'bti j' here prior to the paciasp.
> > > > 
> > > > I checked with our internal teams and they actually ran into this
> > > > recently with some other code, the patch:
> > > > 
> > > >    https://reviews.llvm.org/D81746
> > > > 
> > > > ([AArch64] Fix BTI instruction emission) should fix this, it's been
> > > > reviewed so should be merged shortly.
> > > 
> > > Cheers, that's good to hear. Shall we have a guess at the clang release
> > > that will get the fix, or just disable in-kernel BTI with clang for now?
> > > 
> > > Will
> > > 
> > 
> > This will be in clang 11 for sure. Tom, would it be too late to get this
> > in to clang 10.0.1? If it is not, I can open a PR.
> 
> Any update on this, please? I'd like to get the kernel fixed this week.
> 
> Cheers,
> 
> Will

The AArch64 backend owner said it should be okay to add to 10.0.1:
https://llvm.org/pr46327

Tom just needs to pick it, I see no reason to believe that won't happen
this week.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616174904.GA3403100%40ubuntu-n2-xlarge-x86.
