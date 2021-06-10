Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7WIRKDAMGQEPOOICKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 360823A3815
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 01:47:12 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id k125-20020a3788830000b02903a65618d46csf20342109qkd.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 16:47:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623368831; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q9krCw3CtqrxJ78DREDzyBOb6oMaKNbaUgsQlP/+sbl1+vnRS4wovUvGBpWMjtw8An
         RsKGn84Nv8bqX77WIxXuCAkYBBdQeczHvo4xNjHrkDVOoTD+tDDhtrmD+RfL+PUD/GlS
         XR8FypGFk9muj7eYxa+UuH7LoW11gQKdACU5amuG32E7PtthvQ5/bdbCbI7AhArijxmw
         T3p51rymzV1JEf0PvWaoUz6GK8ozdEwyv9HQgLby8gsJRGUVWxu/l3NkaOQ3olTZqhjM
         muTBGIbdDDP8XhDQGUxbJKnwyA9LzVnaL/CHLhCmLDfh+6RL1ssaUdUnnTKNfeI+poo6
         0VAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tKJLAT3l96NTDJEe6gwcLZxSQM7jrfqc/B5t9N3+MvU=;
        b=s6g4GOoOlGMSKkIQAOecEgzdYqclS9a2j3puxCPrWejCJRasED76+dv13+PRGX/GdX
         57LkkgMKFxB6JxD3eKmH54ZOlWS7hpfULZ8LcLKtcc0Dp3jGjZG77fOs+GU+vbVod1d+
         RPHcA5/zZxTY640CcwB4NoHCcCi9V+bNTKn8XxTaJN25wvST+syP8vFVvZXBTjwMuSsg
         IMgYw7LG9/Z2ogYXGRoMQQ9nIWyjMBu8mXIshXCGtMLfVxEuvEZGUDfpNEEORrksVSCF
         /aSDq8dVjiwifnHVpthAHyZ2uTbpEt9rW0BzhHw7ZLEMBZag7qu4KxC8dljG25b1aiFU
         jXaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LB9NbAJa;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tKJLAT3l96NTDJEe6gwcLZxSQM7jrfqc/B5t9N3+MvU=;
        b=isWEt5y6zHaACGTanRhmyBjcN0F3HRVlGyqK60L8b0pdMoiUVEUWBzFTqQaCMScVyL
         GEmvzEIMDaUSbf4Sk3jwe/Db01FiYi4dN/UmhETYZF+d7fypI4P1K2DgA5qvGGF+Utzu
         +43jYhF6v9UL5WcGxR5CiH6U35R+yRgg1phfI3rzdTuwPY6PZfRlwab/wbDykgeFKrzn
         +rPpnsapz7zzd4U1M7oKa3OXUwrPKcMZTXNv/6ejV/qP0R8fwSaKVnw2dmLPWj5LIYeZ
         veFd1eZ9nMfe4iJ6inm3RASW5lsK6BYr7MljD2RXeoPdBlOKAbcjnixTRvIjQXVJOtBQ
         QxpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tKJLAT3l96NTDJEe6gwcLZxSQM7jrfqc/B5t9N3+MvU=;
        b=krMLTTf8DSjmSuAaaeLZSYULK+K3n/v4AbycAB/LOKCpO97W+0wtvfldAlV7y6sfDT
         /7b9pavXoMpKdMbFF6QJA/Doqxk0/IvBFnTh8xScu6vMMEDsK0xg9OHQQzlWJsZ9lgSQ
         VumeWtX/MREi6qkUbPbMQTCQA5vS89l+uzEa8qk+HkAyDIRrrChaQXkUxdpUALlWl6q7
         rnF7gLzCcoJQyNMwe4olYC2GuieBdnUvtgPynkdsjhYM7XC+hhrg9u4lv+aD/hRqWS7W
         Ywd5QX+lzWDBtSk+ByfFP2sZI7RJSwMkrmqOuATpOmMwOEY2VFGqy/SxaUAFbWCOoh3n
         VTgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533WXhFzRKdhYc0hUsSyXFAOC3jGGk0yo4xfzBBWq2rrTdfRYcTR
	kz16xknO1VuHqkftoJApA4s=
X-Google-Smtp-Source: ABdhPJzay6EAntFChZHYh+vgVzg6JegaKvdXmmTEtXhSMThEVegYBGXlpcsg4x4rcO0NVCnowRLtnw==
X-Received: by 2002:ac8:4f03:: with SMTP id b3mr1386692qte.162.1623368831056;
        Thu, 10 Jun 2021 16:47:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e407:: with SMTP id q7ls4301179qkc.9.gmail; Thu, 10 Jun
 2021 16:47:10 -0700 (PDT)
X-Received: by 2002:a37:ac07:: with SMTP id e7mr1220973qkm.204.1623368830620;
        Thu, 10 Jun 2021 16:47:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623368830; cv=none;
        d=google.com; s=arc-20160816;
        b=o7NTQRtVTJgRJsITccx2aaKVLaHY38L9rGq3JCFm667iAovF/dwSZ0qPKvduTLJq9P
         5Yc5F+x0r00kqTPSPUmmIxqIdFIKrtrPjy+nGMAnYzhhMQDnweoS+IjuJCgG3UbomtZG
         eTgd2gHYHg3q3tUQ/Jm8OxKo8fg4vgeOPpQ+mZ3/B34p66eqhYJPvHVoVPdAUhozO8z9
         3mtbThtHPiWxZcEj1E0YWrLZwHonOdwJ1n/hn8nhw3eQVp0QfmuWqhKbu48RZGP65n31
         5bJWN8aBeHrqMPzb/uNzUU1yZmokuoG+xkf6//YC9yBUT8NwvY0KGJgeOHinZ53BbS9K
         9PgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ia+WgiNmBrNumpflq7GIz/CPCMUnXFCFOdywGiG0Z6g=;
        b=iCDamk723tO/5swrc6O2nITDl2GxtJwdSv+kPV7s5A5GC+Vb5NBLQrKTZNisY5VdQb
         EO4wB/79z+mY7+yp3Pvg4pN4Vqn2a/X0AzDFFn9yYnctJ7NXQxkuqxoxe/0yb/aQpsIl
         tPCPs5yrEzofx+CCnf2BL3VNGaDvbefDi9PUoZe5NJ2EbKGmv8BSbQdyqcE4xeQO/MbM
         5/+UklvVlRXDVzhZtvSi5Jq5v+/hE2WeVxytxQ93bKezulAtKRFqif3/nxr/MzzqHcXT
         Za0rPjPQNrWvpoKG/ACWg4I8zcj+1FKggSY4qxkFmnUb48FzkEzYM/RQ0QewaUeDHJyE
         c7EA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LB9NbAJa;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id e4si380957qtg.1.2021.06.10.16.47.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 16:47:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id mp5-20020a17090b1905b029016dd057935fso4728858pjb.5
        for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 16:47:10 -0700 (PDT)
X-Received: by 2002:a17:90a:4298:: with SMTP id p24mr5929509pjg.144.1623368829802;
        Thu, 10 Jun 2021 16:47:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id ev11sm8637545pjb.36.2021.06.10.16.47.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 16:47:09 -0700 (PDT)
Date: Thu, 10 Jun 2021 16:47:07 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"tglx@linutronix.de" <tglx@linutronix.de>,
	Tor Vic <torvic9@mailbox.org>,
	"mingo@redhat.com" <mingo@redhat.com>,
	"x86@kernel.org" <x86@kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2 1/1] x86/Makefile: make -stack-alignment conditional
 on LLD < 13.0.0
Message-ID: <202106101601.248F797@keescook>
References: <f2c018ee-5999-741e-58d4-e482d5246067@mailbox.org>
 <162336538453.1311648.12615336165738957417.b4-ty@chromium.org>
 <CAKwvOdmYVH-YpEVqdoBfvgNfcbzx71jU_27cuhuzTJ6_Emzi-g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmYVH-YpEVqdoBfvgNfcbzx71jU_27cuhuzTJ6_Emzi-g@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=LB9NbAJa;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036
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

On Thu, Jun 10, 2021 at 03:58:57PM -0700, Nick Desaulniers wrote:
> On Thu, Jun 10, 2021 at 3:50 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Thu, 10 Jun 2021 20:58:06 +0000, Tor Vic wrote:
> > > Since LLVM commit 3787ee4, the '-stack-alignment' flag has been dropped
> > > [1], leading to the following error message when building a LTO kernel
> > > with Clang-13 and LLD-13:
> > >
> > >     ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument
> > >     '-stack-alignment=8'.  Try 'ld.lld --help'
> > >     ld.lld: Did you mean '--stackrealign=8'?
> > >
> > > [...]
> >
> > Applied to for-next/clang/features, thanks!
> >
> > [1/1] x86/Makefile: make -stack-alignment conditional on LLD < 13.0.0
> >       https://git.kernel.org/kees/c/e6c00f0b33ad
> 
> Can we get this into 5.13?

What's the ETA on LLVM 13.0? I was going to put this in -next, marked
for stable, but we're about 3 weeks from 5.14 merge window.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106101601.248F797%40keescook.
