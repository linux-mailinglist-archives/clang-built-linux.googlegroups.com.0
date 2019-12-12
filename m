Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7HYZHXQKGQEF3JUEHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1C411D45A
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Dec 2019 18:44:30 +0100 (CET)
Received: by mail-yw1-xc40.google.com with SMTP id s128sf2771634ywf.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Dec 2019 09:44:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576172669; cv=pass;
        d=google.com; s=arc-20160816;
        b=vhWcvws6VZJ2OVbp2Kb6RzwuzcRIOVNXKWmQSOlii/EmgZXV/t3v7XjLgpmzYpa/dC
         P6mGBun3yhnMSfOSjQQKoFtZ6qAyCrW4O68eWTyuh9XEeY6RREPMT1OkkRQI2S0vhStS
         Yx6kjEQVvh5F7xFFOpJ9mRfY4iPpjmgjIPp9TQzFmo417gut2koZfZR38uM3Wy6LgNPe
         K9u0zWtfA2rZ1yY96CTPJxmcO4I0FAiYp52XCCLhCsYxrnZmx/oSAcmDzUMsYEQHb4hw
         BZJAYEkDnNSrGPbplHNjuMXL/Ur8JAcbB41ixAVYQooGpaiSSb7mJoFY9juLNNAL4qhT
         7c3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cJTlgjS923odkFC1hICCVf0bmzxvyMi82WrPFxiUb6A=;
        b=vm/XHEd4Cx679L8xAYwKT4/0wgNBDvo9h1hH0HodX4xiedR7186172u4L8F7m5NEpH
         QZ0dagbZ9TNJTwmWPyOoYiEDQIg6nZt1hSOlKeZIsqsJQg68cX8XGgdxZ2hILGI63lDq
         /B70Acp5nDypXJZ6UgyjvaGAVYkJmZfmxuRd5ytSzccF+tcAEEjJK0EkAreWLDa5loxY
         EYddQ25UnrHvSt2Q1rG3TvFHm46i1wroVteuq8NV0EAak2dwUbldPpJV/hQnsnaMZOZK
         nin4z3ybntS80fuhJSkb2Q2j4KrhwIe2U1bGwR1ppV3yr79TEUdY3GSsDxOoWdJlicZc
         7DvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XtKdqd1u;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cJTlgjS923odkFC1hICCVf0bmzxvyMi82WrPFxiUb6A=;
        b=GhB2A4nobtKeibAcbCmZzdaPfbV/OeSSxbN6oPkBrxNKsPnF4UijLgleWyTcuVDI6v
         n3oJ1LoLHPwCWojtRwjkcBtbUrDcJZ8o2k86tmw/en9/+Mw4tVNW1D8UYEIFHSxJ6fD8
         Gu/EuTFQ231pd/eBbTnjNJ9TmsnDBsrFTj3iM1+gc4OsCHuP8eroAkzG9+uteJ0IITEj
         Z66JYVmk+P7h40A775powkaIw7XISIDjfq5NfzItgEdpvsP7b6PYEw0G5gHjSE9pbqJK
         DPvePb3pyfQl6bx+ey6rWdge7g307CyYNbRzogrjPu6hQ8Dx+GZ7U3I8DwYSzdrzTfFt
         TAiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cJTlgjS923odkFC1hICCVf0bmzxvyMi82WrPFxiUb6A=;
        b=J8Yxyt3d/lTFVpqHjGq5W6AUsGiP8DUOLgi6aufjNX1MZPTfkoLsWjXsUmQ6tkpWxl
         a6E6bgLpOEC9ci7UiQpIdK5rtA9WaEQE97F3b06GQyN5Zsbwo2/O4ODE+u/yofuBgw2v
         dtwOPeHl6KnuYz8mOx30l3diVVBe263NiBv2aYFbulmRm6+Tua47RGj3jq/f8lAcN87K
         90cbzNvfHqkQsD+MUwjR0v6ImP5dk4tQHmW3utlMpkjWMbVBjmzITsrym3Kc5yijjYxQ
         ipZ5l7OlGog+0vm63ixY9YeZsjJlFQZqmdPieiVbn7Kgd7E9M4/rLID7cjaxEZ+CyJmq
         mNvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVEVoAw391LPgfU38OFwQiyqymo1dhGJCFbgswC3UAQrux3llnR
	QfsEFLVf+7Dj/sX77eohlXI=
X-Google-Smtp-Source: APXvYqz60GIHCkISvyyVOdn1yYxAplJEXykDuSphlntZvd5XRA5juCFfay8Yx18nabIpAyQYRS69uA==
X-Received: by 2002:a0d:fac5:: with SMTP id k188mr5118375ywf.102.1576172669008;
        Thu, 12 Dec 2019 09:44:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9c42:: with SMTP id x2ls1006399ybo.8.gmail; Thu, 12 Dec
 2019 09:44:28 -0800 (PST)
X-Received: by 2002:a25:33c2:: with SMTP id z185mr5350849ybz.477.1576172668507;
        Thu, 12 Dec 2019 09:44:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576172668; cv=none;
        d=google.com; s=arc-20160816;
        b=PxymHyca0bcBU4Nv9EI5ZndWEz3kgFhTyHmaofcI225txxS9EQJgznNhKlrHTYXJU4
         Z1up+SIPCfX0Xj3cT1xvgAdDkE4du/eczZGVUYlaiaTGgX3tty+7rQ8xIppTa0Oc6jLu
         TW6P+rGas98h4lhSlVIqOlAFxJJ3unogBIKY/foL1taFVh1LQUVmqFF4RqmspOW08PpR
         mUYL37xj+9S/iXgkK4KJAbO1RnAnZNL/lCGdoQh9QQxbIZIHdnfHo8MvRPdz6c9sAimW
         6nDY0soUO7VHX4sVklKaRZgYdy8E0/uxLRFGSKUm1VA/nA5GGjMkSh9XrUtJLTEavgl1
         kBdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vAybGGxacChJwAejcpVjaSkmOSjuyOa7Vm0vQDf0ytg=;
        b=oP+bmLHiIa1pW1pxQUvZeHF5i1Y2oHFODt0ZLaKf55b0s6kxF4WG9/LNHn5zMvok+t
         PlZSynVLFJEbPbFtrazhhDLr1aNtm2oZXckVtKAiCZO9cWBLUIyzKtOgo5toglv54yYD
         4f/TkieCJSBxB8OEUPRt8dHIbTAjSKOdir4eY39CX9tJ3Wh9Lg9QBPW+mUcqHMYwdPJ+
         HLMl5AaWSTP7F1POlOdDIiFSF01aNo6E1VMS2MWKyDwkh9iEHIObzRH6BbOATDRUuS0A
         t8JeBRRmkVox184s8o6mE7j/XlboDyN0VCCcGz85hf5lCKZq2A5X14+LT5Kij8vh5Yrr
         xehA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XtKdqd1u;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id a8si9528ybp.2.2019.12.12.09.44.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2019 09:44:28 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id z124so1489258pgb.13
        for <clang-built-linux@googlegroups.com>; Thu, 12 Dec 2019 09:44:28 -0800 (PST)
X-Received: by 2002:aa7:9d0d:: with SMTP id k13mr11590528pfp.254.1576172668230;
        Thu, 12 Dec 2019 09:44:28 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o17sm6423863pjq.1.2019.12.12.09.44.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2019 09:44:27 -0800 (PST)
Date: Thu, 12 Dec 2019 09:44:26 -0800
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Emese Revfy <re.emese@gmail.com>, Ard Biesheuvel <ardb@kernel.org>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH] gcc-plugins: make it possible to disable
 CONFIG_GCC_PLUGINS again
Message-ID: <201912120943.486E507@keescook>
References: <20191211133951.401933-1-arnd@arndb.de>
 <CAK7LNASeyPxgQczSvEN4S3Ae7fRtYyynhU9kJ=96VX34S4TECA@mail.gmail.com>
 <CAK8P3a1dH+msCgxU-=w4gp30Bw+x3=6Cj473DuFzxun+3dfOcA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a1dH+msCgxU-=w4gp30Bw+x3=6Cj473DuFzxun+3dfOcA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=XtKdqd1u;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
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

On Thu, Dec 12, 2019 at 10:59:40AM +0100, Arnd Bergmann wrote:
> On Thu, Dec 12, 2019 at 5:52 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Wed, Dec 11, 2019 at 10:40 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > >
> > > I noticed that randconfig builds with gcc no longer produce a lot of
> > > ccache hits, unlike with clang, and traced this back to plugins
> > > now being enabled unconditionally if they are supported.
> > >
> > > I am now working around this by adding
> > >
> > >    export CCACHE_COMPILERCHECK=/usr/bin/size -A %compiler%
> > >
> > > to my top-level Makefile. This changes the heuristic that ccache uses
> > > to determine whether the plugins are the same after a 'make clean'.
> > >
> > > However, it also seems that being able to just turn off the plugins is
> > > generally useful, at least for build testing it adds noticeable overhead
> > > but does not find a lot of bugs additional bugs, and may be easier for
> > > ccache users than my workaround.
> > >
> > > Fixes: 9f671e58159a ("security: Create "kernel hardening" config area")
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> >
> > Reviewed-by: Masahiro Yamada <masahiroy@kernel.org>
> 
> On Wed, Dec 11, 2019 at 2:59 PM Ard Biesheuvel
> <ard.biesheuvel@linaro.org> wrote:
> >Acked-by: Ard Biesheuvel <ardb@kernel.org>
> 
> Thanks! Who would be the best person to pick up the patch?
> Should I send it to Andrew?

Acked-by: Kees Cook <keescook@chromium.org>

I can take it in my tree, or I'm happy to have Masahiro take it.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201912120943.486E507%40keescook.
