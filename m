Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBMFNXP5AKGQEWRK7DIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id D77D725A1D5
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 01:18:09 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id l29sf2118561qve.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 16:18:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599002289; cv=pass;
        d=google.com; s=arc-20160816;
        b=0AN89aAUeA+PIiZ7tcSBYrx2oBjGO1UFTyahBSpKttwfvvBCckvtFj5oScD8/BgbRx
         EsGhXcWwIBfxeYHewxojyYh5IuvPjEmb2cTaW+ibRC88quvA3VeN5u8TRp17qtJu+x8k
         gNgaO9yeiZYBVI81Wh7Z5bbOoop7u6QfaPegZvSLQx9RaBZw0zSoLGoCSchZTDlbFsQU
         DQBR3A83MWDm4yTYqsD7Jbz26hz8ZlQIm/hVhkzUYpWd5fYY3XdrAn4vFPQLgC2boKOI
         0lgwUQJJbzkUoW4dgPAlBYBBMDTfvfXp/jGrIDPD4g9ntZIWUJVxMbbIzJ3YeAVGWsqf
         +urA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sxceqaBz8Jf+ffTPJcSUKhZLRXr60DNrHbEOtuWBIkE=;
        b=UwVV6DjfYa48YmDKC5HfJRzcZsKwGvqvR1slqQzGOn1NREZU1bLsn2MXGYF0LZeOsj
         2Z9+r2hgbF1cLRN5Zdxihxz0SBtnsbw6xb+TkCmM3QDwYomJ9tWJMqCuhBy15uqN2Pnv
         1WBCqeft4Rk9mfmlzjlkybs9gVo9fBAAqjqOzmHKMIVskGs9h+fUF20eCO8HRXvDsWEm
         hsm0Xs5ceN6MaYqbrc7xC5c36pj5v/OFTCKzdxsaqnE/ZXTvncSp/kedRchIHtjljOZs
         dVYFrZl7aBPWiZsy9U5gP2jJjRnDxJz7Lzzxk+GKvAOqlRb218xNNN67+U6vEhIm/Hsy
         n+gA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=h1W3rhK1;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sxceqaBz8Jf+ffTPJcSUKhZLRXr60DNrHbEOtuWBIkE=;
        b=m0bG0byHhjmcXg4+wkTtExDAxEuD8y9adgtIjBTTlcKu03hbZh3CBV0g8+wwCM9MA7
         Ud7X1EpeB/ecZ/soP18BV5W8agEifTfUqyl2Xi+nHs/tWcv8u65EdqLQ2TSk9EaQBUmU
         +npp+CeQrCkDZzJzMWYzZq99Letu+MIEn/x4faf44/nqktkkqhyTt4+/xr4/FBJOuTgi
         w7ObouFL6KapCBLwaFIYRNvRTUacx+LfjbP5KlgcsCkhi9+uRiP8dVvlaFGlIr+Y0XoS
         KTR5w//k+344c59BmCjdUfabEAKIDB0ECPghN678Fgh+FWx0dA5MFUXnuftkuTi5ooY6
         XloQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sxceqaBz8Jf+ffTPJcSUKhZLRXr60DNrHbEOtuWBIkE=;
        b=Zc67hvqOR0Z4rRJA8szDIXDvYe0AW2R190QQ2B6qI1ng4pPoToHBEYsrJRRYPF3jA/
         3P/ts6z4STMDYYd49g7o+LdDUYOMCi0hsxHJExQHlVRQ7/UgiuIz8L7Aej5d2mgmzGJz
         7NfAT65OoVohgfSdV3i2LAsasQEcAiQsrIPx28anVdmmgzsRFHK44GnEewugOmMEn3GI
         q/4Fk6vlOfN1Exv4i2IahKit8CAIQKWd3+vhaotajTpRBLSs2SmX5UK8HozomhaW5LrG
         eTRbhO3d1AXC1lczRJb49k/iN3VncYgR54Hi3cseFpo6jiqel1/tZzRkv2fnc0osqEKD
         Lmog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OCzKaVx0CrvreK+/SJae3NwB/80v/TDJgFXcsbQf17CXb0cck
	yCbLh9TS2WTtdA2hVc/zR2k=
X-Google-Smtp-Source: ABdhPJzjcur9INxqGeaqxnlSJou7fzZEMSUoJ+Sgc6FBy5dJL6ldn711juMNzJ6ggwP1GXHaVtQ2JQ==
X-Received: by 2002:a37:7d86:: with SMTP id y128mr4535320qkc.11.1599002288937;
        Tue, 01 Sep 2020 16:18:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:346:: with SMTP id t6ls294884qkm.1.gmail; Tue, 01
 Sep 2020 16:18:08 -0700 (PDT)
X-Received: by 2002:a37:9b82:: with SMTP id d124mr4375289qke.8.1599002288598;
        Tue, 01 Sep 2020 16:18:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599002288; cv=none;
        d=google.com; s=arc-20160816;
        b=RCzQyKkIEy5jEeCWnwh6jaaw0ogJiXePaCWwHkYzrDRubsCoGZ8nhwu3dpF1gUMwF3
         3SzKkAjONV1WY2e/B8iSLw9OvP5nCD30qOz+O20/QyQjnOgV1GO6vh94YaNxddjInfpi
         G6nxsPH+buPWXA+kAL8V7rqEAzyeaAQX+fsh0nSoo01vQW6r9Xljwh3xGWFqC7OPeHmK
         5baE7Y9UJuc4Nyx+aS49JZWqj8vX8QeFtrm6d70r6ON9+4TlSwfxRukqTSnZahn8NP0g
         qII++oFYj8XLe16aNhLCFc0hTG3WtBSdqzTBQHCXfEn6qm2uGcCrAZgcDWZ/AqMs30fv
         zDjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4iyrZMhsm50EAs3g2KnI7xhSNv02uS5mIc/bNi5tMhA=;
        b=VcePiR4lM0ni9XoBsm2J+EnwgJSd+xJB7sNrUjsI3Gk6Y5NZj00Fj3/uChzluUkzli
         BtwCJnaXqBav9PFqaSIaNvYytzHKvOc80TxXMZeqgg9fCpRMO83HpCgxRcVqxz2kAMaZ
         JDkrH+iExzAgWb3bABrkzMwPyJAkW15qaMQk8O1QOoi1x4YjHlmJspK2ByEOHSV00ATk
         yiTC7bt5Ix9ksyb20+ZJ822wZGQzWND8Dd5tzItn4O2JZjllfPbmbokUMbFFyOepIQTf
         Reh4LZBAG6+mOQlXxnlM5cLQLM4o2p91AdtMmWYapfBPDFqU6HNsdNLljjSCChHD607J
         9Tog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=h1W3rhK1;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id k6si213905qkg.6.2020.09.01.16.18.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 16:18:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id q3so1327002pls.11
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 16:18:08 -0700 (PDT)
X-Received: by 2002:a17:902:7404:: with SMTP id g4mr2271545pll.176.1599002287789;
        Tue, 01 Sep 2020 16:18:07 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l22sm3506944pfc.27.2020.09.01.16.18.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2020 16:18:06 -0700 (PDT)
Date: Tue, 1 Sep 2020 16:18:05 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nicholas Piggin <npiggin@gmail.com>, Ingo Molnar <mingo@kernel.org>,
	Borislav Petkov <bp@suse.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v6 00/29] Warn on orphan section placement
Message-ID: <202009011616.E6DC7D54EF@keescook>
References: <20200821194310.3089815-1-keescook@chromium.org>
 <202008311240.9F94A39@keescook>
 <20200901071133.GA3577996@gmail.com>
 <20200901075937.GA3602433@gmail.com>
 <20200901081647.GB3602433@gmail.com>
 <202009010816.80F4692@keescook>
 <CAKwvOdnn3wxYdJomvnveyD_njwRku3fABWT_bS92duihhywLJQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnn3wxYdJomvnveyD_njwRku3fABWT_bS92duihhywLJQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=h1W3rhK1;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

On Tue, Sep 01, 2020 at 11:02:02AM -0700, Nick Desaulniers wrote:
> On Tue, Sep 1, 2020 at 8:17 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Tue, Sep 01, 2020 at 10:16:47AM +0200, Ingo Molnar wrote:
> > > > This is with:
> > > >
> > > >   GNU ld version 2.25-17.fc23
> >
> > (At best, this is from 2015 ... but yes, min binutils in 2.23.)
> 
> Ah, crap! Indeed arch/powerpc/Makefile wraps this in ld-option.

Yeah, I totally missed that too. :)

> Uh oh, the ppc vdso uses cc-ldoption which was removed! (I think by
> me; let me send patches)  How is that not an error?  Yes, guilty,
> officer.
> commit 055efab3120b ("kbuild: drop support for cc-ldoption").
> Did I not know how to use grep, or?  No, it is
> commit f2af201002a8 ("powerpc/build: vdso linker warning for orphan sections")
> that is wrong.

Eek, yeah, the vdso needs fixing; whoops. Lucky for my series, I only need
ld-option! ;)

(Doing test builds now...)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009011616.E6DC7D54EF%40keescook.
