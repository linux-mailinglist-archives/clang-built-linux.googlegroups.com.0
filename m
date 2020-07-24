Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZG35X4AKGQEIPBY2VQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E3622D226
	for <lists+clang-built-linux@lfdr.de>; Sat, 25 Jul 2020 01:25:25 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id p3sf4225516ota.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jul 2020 16:25:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595633124; cv=pass;
        d=google.com; s=arc-20160816;
        b=X2we/OqTWkPHHP0+/XgtDMb6bBkffwNPR2VTuhmVY7h1vVEguk6iIX/R9EjiAVriTa
         18zhjtGexc55AgtMN6aepGgiS1Pv8A3hr2QdRXAaqBG2iy3yBozT82RhU7mZWU7QTIf8
         JtB+wABDbA7MzjTNlF+ejdBPw/sjROjpFPyTKea3Qz3hl092Ih7Rf3Jhp26jx7cnLzQL
         q1xF0/ZryQrPnLYL9Miv3lBM+zeVgKVkMCfvpZ6FdkXKuZ1VYmG/5RxmVObxcWaFfXnD
         Yz9U4S17BYhUK2x8ZVAhzBssgnrYSnPTBlFeFpXYj0WKiivVMayAgj7aAYmNCTqfLMmv
         ZpfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=r7XTFzvVEwi6b1M9qx/v4yD4ggO5dO9EbuqtPr0Zx94=;
        b=hA9BrUu2Jc66T6Kxl59EkCyo7uZX9/adnSQSK3aK40UdV9lowD/rO7H0261l1duFj7
         e9m+ruuE1XnOe45mE9PrAD2IJlK3UUimiePsJ06Umdy0FJI82y5tjH4ii643/Rk/wQb0
         tvWifR2NFC3B1G3MBkXYJ+SQGAfoD5Vz41vHkrap4KegYHgGqg70RBRLrmC9fr4bn5tN
         q0BQ00CX8qxLjRu6kxx8XzvZsnLJHbujyQ99Fd1m3yvo9tmozhrgVOh/h10WnIxl62ea
         WAZv1XDRfgMHhkWkimcRuQNvM1aNOvRN/HR9QyjE7ZAJhG6/02JQ+FXCsQqsfdaOzjYO
         Qp5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JyEZsYF4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r7XTFzvVEwi6b1M9qx/v4yD4ggO5dO9EbuqtPr0Zx94=;
        b=iX/XZ5AIn6AgcFgzcQQWlM63fI3J0mwlWHKxfix9rHvHEvV6A7T73G3Zahz8mXS811
         zfZ5LCGz/lle7pFhhxQeIxuwlokghCXf4bfKXpIUEO5VOFvi6HDKr00aDilFC1+V+NHK
         EtAKRIY8picr85GW4a/96Agedut9lBHYNZGJlG0sWOyNa18hzYPGoSX21QOia4Mnby9m
         ky4OGaR2IoHuQuf1QG7YLwNnFsPN82EIg606U53yZosbcIdYpBO6rnfaaG6rE38bpgrV
         iorOSG0DEHzL7iSxU8brSs6ajuxbYvLNk8HY5BcDRUdSioPFzE1hFv4YhgpPEFNcAoi7
         iTWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=r7XTFzvVEwi6b1M9qx/v4yD4ggO5dO9EbuqtPr0Zx94=;
        b=D1OJgjlMv1FfZ78LtNVrQdyupOxglspowGtnSsDoXEfWEN8P0xgMUMHmt5bLNDJEHE
         3uI9Rqlx1nTMYMDZmbu0k4E/f4PzGBqmJKaFoj9DMNixDuivTml+8xLsPSHwYZO/Aev6
         Z+4S86YqTu0VPkajlRCCprGvOI7S11LSK2RC9ImU10iDfER7r6/iaRHG5Jmo3IvnzRVC
         HSIZRX7rfMxTRvV+Z+5KcMyVry1+21IwC0mlSGbW/xgTRxEfVez1YkHBAtZqJZ6hLQMU
         sgS9RRCC77PTLtVecdp2QGSQXTDjGDMEMO1DC2pvrjHYpbagWNqukPuYVItkKzX/nLiE
         eAgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ypGGcIpkiii8TA6UXVc/6iqbFWJFfkBWmxz7kwlme/18RKlyr
	wbSOtM736NglZfDvnmJevs4=
X-Google-Smtp-Source: ABdhPJx1IaPi1nKCZE0CpBX6NNONpAqUymDtezPTh1Rg0Lf449LZm5TZ5Lwer62pfwMRG+4u6F8pcA==
X-Received: by 2002:a9d:68d7:: with SMTP id i23mr11321780oto.309.1595633124597;
        Fri, 24 Jul 2020 16:25:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f5cb:: with SMTP id t194ls2097528oih.5.gmail; Fri, 24
 Jul 2020 16:25:24 -0700 (PDT)
X-Received: by 2002:aca:4fd3:: with SMTP id d202mr10284505oib.142.1595633124142;
        Fri, 24 Jul 2020 16:25:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595633124; cv=none;
        d=google.com; s=arc-20160816;
        b=pmmbvUNShU/MKkv+CJajswRxLgNoSY05+XNxKIgPDmFxhgzEVNXjpuT4aWXcHSlnEz
         zLCYrMySOwZLyWErKW7DyhcjQpAGew4mvHK8nMeTsY/ZRHv6woY/dJ4rdSiod1NUOLg3
         6b3XF4WWzLEnq3nFeHRL0HofgZ+ihnev38qeGqD3TcUeLoF331D1tRMPmtNrtT92T6Gr
         aaVaoxrDTD3sudW8MHcHRLfj//BidYZLZxGVnNeklAh9OfpRb/VM8zRcA3jRYTGF3yzc
         z6aywJSUtvmINr/+XM0uHJlz/kwUh1j9HBoqW3pdRAHywxgg4WTP0Q3uEmuNnv88BXuU
         r1qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=li+CahyCqWbTts12ZkfxMqZXwJr2YlzPWYeFNg4b+Nw=;
        b=MIxd/rS/ZD91X1/RyKSxuXhAcTYbs4bdrzg1B86TofFaAMT1456B1NaC4e+M0YeTtI
         EuzdD2jx5opJsdL/Ou6vssDqQoI8lPNdqWdY4ClL1m79J17mf8Xanu9p0WSi8dAqHV6P
         Zq/TnrKIUjp/hlleXJ4TvA+6WBIntv+vvsB521YPzIzSg5HIe4wpCnZIRhL0B5erUOkB
         ha1yEfe+mI3/jcOfNt6YgZRichfolxoriehbp9cwIJGecFdB4RpjftYbYCzXVQHVGo6W
         SJupqVh1u4/ytWi3aYIOaKvXr/hpb8e2mqOqUT7LtTjxRGS2DdbXjxAFKYIT3tYxqZ2T
         IGbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JyEZsYF4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id m23si448742ooe.0.2020.07.24.16.25.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jul 2020 16:25:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id k71so6234224pje.0
        for <clang-built-linux@googlegroups.com>; Fri, 24 Jul 2020 16:25:24 -0700 (PDT)
X-Received: by 2002:a17:902:eb49:: with SMTP id i9mr9617482pli.231.1595633123476;
        Fri, 24 Jul 2020 16:25:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r17sm7478205pfg.62.2020.07.24.16.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2020 16:25:22 -0700 (PDT)
Date: Fri, 24 Jul 2020 16:25:20 -0700
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ardb@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 0/7] x86/boot: Remove run-time relocations from
 compressed kernel
Message-ID: <202007241624.D59FB48@keescook>
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
 <20200715004133.1430068-1-nivedita@alum.mit.edu>
 <20200717134654.GA3187880@rani.riverdale.lan>
 <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
 <CAMj1kXGeSFXnuO7Y94pyBU9qfSgtsLvMoCZSfDk476BBs2ejcw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXGeSFXnuO7Y94pyBU9qfSgtsLvMoCZSfDk476BBs2ejcw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=JyEZsYF4;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
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

On Sat, Jul 18, 2020 at 08:44:50AM +0300, Ard Biesheuvel wrote:
> On Fri, 17 Jul 2020 at 21:17, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Fri, Jul 17, 2020 at 6:46 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > On Tue, Jul 14, 2020 at 08:41:26PM -0400, Arvind Sankar wrote:
> > > > The compressed kernel currently contains bogus run-time relocations in
> > > > the startup code in head_{32,64}.S, which are generated by the linker,
> > > > but must not actually be processed at run-time.
> > > >
> > > > This generates warnings when linking with the BFD linker, and errors
> > > > with LLD, which defaults to erroring on run-time relocations in read-only
> > > > sections. It also requires the -z noreloc-overflow hack for the 64-bit
> > > > kernel, which prevents us from linking it as -pie on an older BFD linker
> > > > (<= 2.26) or on LLD, because the locations that are to be apparently
> > > > relocated are only 32-bits in size and so cannot really have
> > > > R_X86_64_RELATIVE relocations.
> > > >
> > > > This series aims to get rid of these relocations. I've build- and
> > > > boot-tested with combinations of clang/gcc-10 with lld/bfd-2.34, and
> > > > gcc-4.9.0 with bfd-2.24, skipping clang on 32-bit because it currently
> > > > has other issues [0].
> > > >
> > >
> > > Hi Thomas, Ingo, Borislav, would you be able to take a look over this
> > > series in time for 5.9?
> >
> > Hi Arvind, thanks for the series; I'm behind on testing.  When I try
> > to apply this series on top of linux-next, I get a collision in
> > drivers/firmware/efi/libstub/Makefile:27 when applying "0002
> > x86/boot/compressed: Force hidden visibility for all symbol
> > references". Would you mind refreshing the series to avoid that
> > collision?
> 
> That is not the right way to deal with conflicts against -next.
> 
> This series targets the -tip tree, and applies fine against it. If you
> want to apply it on some other tree and test it, that is fine, and
> highly appreciated, but 'refreshing' the series against -next means it
> no longer applies to -tip, and may be based on unidentified conflict
> resolutions performed by Stephen that the maintainers will have to
> deal with.
> 
> Boris, Ingo, Thomas,
> 
> Mind taking v5 of this series? (With Nick's Tested-by) I think these
> patches have been simmering long enough. Do note there is a conflict
> against the kbuild tree, but the resolution should be straightforward.

I would love that; I need to rebase my orphan series on this too...

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007241624.D59FB48%40keescook.
