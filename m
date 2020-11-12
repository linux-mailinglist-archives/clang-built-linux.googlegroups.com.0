Return-Path: <clang-built-linux+bncBCIO53XE7YHBBLO4W36QKGQEAEZU5KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id A95522B10A8
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 22:50:38 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id w79sf4926585pfc.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 13:50:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605217837; cv=pass;
        d=google.com; s=arc-20160816;
        b=dsmOyO/YslNI6Br7oh+9s09NGfpATPCH42iHnOC66+H0585Ij0/jd4gmrlvNm9F9qI
         kdevYKIz2YD2R0VI1wAX/ItS0HEiT6ks/42VmKfGXxJ1i45qaypZ8cg0fX8mUmPa4uw0
         a0ueLysAZj9lHLXDGpbDXYpv7UiIXevWYQJadJtKqW/rgrUio8HPRiuj3VplRUh72lra
         tXxCZtoc/zGNGpqGK5n2RKtvXTPz0StwAueLESC5cYbsF0jSbXWr38FJj9CGzh78Wkip
         evSvCjV0i/fxG8xY7Wk2YlGbZ41MolkNtgjUNupE1fXUXARpnvofOa0+v7QQzNBc1NBt
         zXbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=z7lHX6Wd0LxXkxh5hAifVfzL2CaZ5uBnc/6GhpOA3bE=;
        b=rm5H7Fsx/QRagNvLitrcdWfHF6O95AVw3MoS9yEuqDLkQWXLzwvL3tzFsvI5XNgug9
         MYwHXmg+G8B757Jos0OAAEKNyslIElNzVCSHszkt3lWC9aoc/iQ8CaO23DnaVztHzwhO
         27gCs4d3LqbV5GURL+h+Sb6oZpUsCw0w/ktVwFtccAXrh5ykAugvB5QS3DLLeyEEbloF
         fch7TBRX18OyvLhjtGst/C9+oPA469O0VtRKZguYgEpn0a9JBI+r/IGZE0kXgMDGXamP
         vSX9DyBX3sSjIUolwgx8+ktJyFBx+ZpUG/9Qml0jkEo/0QdPqk0UUr0k5NSw641E/gMM
         aWpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U390PW+S;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z7lHX6Wd0LxXkxh5hAifVfzL2CaZ5uBnc/6GhpOA3bE=;
        b=CHUDMto4hk39HGCE6zo2WxTkNCiGr58g/7y4EIjnHTrSYkqSP5JKkhrq2BUNLY8Jnn
         k0R73idARmun5Jq+f1uBXt5LUVXzuTEaYCq5UA+GwmkPpKTh1jt4lg3OvB5S0UFgki8M
         +t3lhT6+IjTH4T/Cml8SRqo915znLxb5XdxMHtvZFvSYYTOUPj4SmYqTn+VxvWH6qR9e
         VbV1BCvITYfJthezZNEXWc0Xg/GqK8Z9YdA30KuQCDcePNqmI4E6tz/Aor+pd5DyON2q
         JWZaU2K8cujx3Bjxazg0FqLe73/uWsybuUdnXXBQoZruSvP/p4PhUbmV+Ii5JvntKJmX
         TgSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z7lHX6Wd0LxXkxh5hAifVfzL2CaZ5uBnc/6GhpOA3bE=;
        b=niAYScrBN3/c0Y2xaHA/kVjSRvrQvTuHVz1JsVLvLjQm7TQ5pwHXL/Jjt2DW8msVv9
         su1bbATDqlQyrQr4t8kvbMBJ6goGZhN9TvCzm2ymBT+XhF36ry5+nueDatDc0YEbmAWD
         gMvTN8YxIl2OgtMokhq1hU9Ctd6MUhNF6cEiQhY3ta8biXDOhRf6SeHNI5vshbVI2y4e
         i4/CYBeta8ypJtEtEBi9u2Xks5o+sjMbSf7anFdXHNJ/aFggiiS/aNpXaSGlcEiu7g58
         SBly9x80jV4N7+MtDXc6HRBwEWt3rVp0BVFDYIDNpXOptutulDYhMvqiqU3aQqZ6iBPJ
         6RjA==
X-Gm-Message-State: AOAM532zC1O3NQDuoisxmSekx5zZlYM3sbT6YhdbwmMP5DAI+h5QjV89
	T+kwPKqcMAEo8JN/mL+Du4Q=
X-Google-Smtp-Source: ABdhPJwz3SpDwBud+Xt14V8VCgl+66pBH64SjV8bbDrQCVP0MypSZn776dixr3pl9NknzTjQuOCeuQ==
X-Received: by 2002:a17:90a:e2cb:: with SMTP id fr11mr1325833pjb.158.1605217837441;
        Thu, 12 Nov 2020 13:50:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8cc4:: with SMTP id m187ls1440222pfd.4.gmail; Thu, 12
 Nov 2020 13:50:36 -0800 (PST)
X-Received: by 2002:a63:4c5b:: with SMTP id m27mr1245050pgl.211.1605217836855;
        Thu, 12 Nov 2020 13:50:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605217836; cv=none;
        d=google.com; s=arc-20160816;
        b=MnMLRCVwObcae+AEqAx+MS3mEEmxRw319FaAKHf0oC3KQrL2epE/Kav3Hc83vixCwg
         hhvagAHsKp2WIj94+yBQIxBVq70+0xffzWboLnOfPSlw3qn7pKtRkk0ftGgZ1R3Q6Ca3
         BPuWQgIlpOqgaQIlwlWXwW0MbxdR9y2sDElt2s4JeGXOzJrg6wI6dBryvVyQhJm0f3Qx
         ESgLH9vkwdNBe+n92GCeB59QlnE7PuPtknUmDFeY1QtHiEH4ct8YyqLK0n5LLoX5zjv8
         U07IodC5UOrvdiEGQAvBWgOAZ5NeTEYnxKr2qoeRhAZIkipTMWz1BDnpoBXhyd/6zR5A
         e3Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=z3CD5S2CALksgVm8ns6TDId0Or2oDJ7UUxweYeXuETU=;
        b=zj9hGn9akZ7O2BoE891aBXFWfgrgxpGlg0y70q/vm9Smx5cCwxxTFZ9OwtLw13I2OE
         f9sEFHAQyj8nvH2L84zetug0RNSU5s6LcQo5rsQcA8tjKIL49kZIZ5bklRf/cRbpPiTn
         rSMnN2krt6oFFvn+tCnmBBhd4iRMWX1NCPDbxbbh+QbMRkhZiVEcdJz0swYhyteZqVC2
         ryelNEGBNJZSbyxLyv6aE3nJ4uoUE0o42yPZ6H0sCB3HUu9uCxTxsaXF7+vQsSEngZlf
         5NRxxZ2T9BBiy6wAN68GNhztX3LuP7sEmc2GezNjq5eviB5kWPeFYc6ZQNRPPXgG09pj
         ElbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U390PW+S;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id t130si396154pfc.2.2020.11.12.13.50.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 13:50:36 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id d28so6967633qka.11
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 13:50:36 -0800 (PST)
X-Received: by 2002:a37:8c43:: with SMTP id o64mr2049159qkd.176.1605217836431;
        Thu, 12 Nov 2020 13:50:36 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id c79sm5529081qke.69.2020.11.12.13.50.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 13:50:35 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Thu, 12 Nov 2020 16:50:33 -0500
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Russell King <linux@armlinux.org.uk>,
	LKML <linux-kernel@vger.kernel.org>,
	Collabora Kernel ML <kernel@collabora.com>,
	Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
Message-ID: <20201112215033.GA438824@rani.riverdale.lan>
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com>
 <20201106101419.GB3811063@ubuntu-m3-large-x86>
 <87wnyyvh56.fsf@collabora.com>
 <CAKwvOdkodob0M0r_AK_4nG3atLGMyNENMd6qVAHSPa92Zh7UZA@mail.gmail.com>
 <871rh2i9xg.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
 <CAKwvOdkm3u83TQDBB-fC0TwKZCFXGh5sAfahKXxA+mnzgDid_w@mail.gmail.com>
 <87sg9ghil5.fsf@collabora.com>
 <CAKwvOd=QrU6rCQ4_Ji=XsskPovOSXpk0NkjTqVjLijw1-CZ17Q@mail.gmail.com>
 <87lff8gesg.fsf@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87lff8gesg.fsf@collabora.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=U390PW+S;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Wed, Nov 11, 2020 at 04:15:59PM +0200, Adrian Ratiu wrote:
> On Tue, 10 Nov 2020, Nick Desaulniers <ndesaulniers@google.com> 
> wrote:
> > 
> > Yes, though additionally Arvind points out that this code is 
> > kind of curious if there was overlap; maybe the parameters 
> > should just be restrict-qualified. 
> >
> 
> For now I think I'll just re-send the GCC changes and leave the 
> Clang optimization as is, until we better understand what's 
> happening and what's the best way to enable it.
> 

Note that the __restrict__ keywords also help GCC -- it saves it from
having to emit the non-vectorized version and switch between the two at
runtime. If we can verify it's safe, it's a good thing to add all
around.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112215033.GA438824%40rani.riverdale.lan.
