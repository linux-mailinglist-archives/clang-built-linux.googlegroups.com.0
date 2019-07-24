Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBGV54HUQKGQE73FS4UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5402D72FFB
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 15:35:23 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id r200sf39396136qke.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 06:35:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563975322; cv=pass;
        d=google.com; s=arc-20160816;
        b=BY93rtQuAvjTRawr+GCpAsyaxgX4slDiIQOtJkqyF4+A2EqcvV2/0wfdNpOP1WZUVc
         yWYAaePvNFJjuejg5yvuBTvt8HvLgrWqlmxZvej1f1cEGU6gpsKd/WhkoT2LxymZ9XLn
         5dhcWMiUNanvIXFKxPGG458xA3Y9C8JePWvXhp1D7jd9qNPQzWylY5f0weTydw2CnJvX
         6PAXCx2sRN5v89v7bblclMPTTVuu1aT+hSzCAiL1A1hhjcw2mXXU6S3tfnazZjTOfaSV
         jhPfpfiuW9CjFXkJDmrZXU0KSx2M87wr//qgrrF3x1SPQad7+d/obcSO3Q0wmNa3HmYF
         oJ6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=VT45ZlwgfZ88DmekxEzEMmDKBPRwf91tphCsE1+QH78=;
        b=Bhh8pM7uVdG+SlLKSpseO8eKs/jjPlorOp+YZSjvyyPJDr8QCVmH+kepv1gb68eLjF
         NyPJ8eAYSOvIizR2ny6+jaTedT12uFOOBPCoJClLDBiEzgkVLimsy8eHQjSklerutNyl
         ixpBEF1qDn0wkrbwlUD/VKV9c+KBoeyw6ufStbrIRGkm91I6uCaSQcNW2dDZsNIcjAcS
         e47NX/sUNRjqgzzN9Ud2wv7SEX3M9auUBsJkQQEm8Hk5lNG9DvLhGuY3Rj7tLiNSST/P
         e4Mux+DDcpGCxRsT2m9w0qPSmpCPVsHO9pqqL8PmLc6Rsaa+CmKVcnI0KUzFEfMAL567
         pc6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b="j7/8XbEo";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VT45ZlwgfZ88DmekxEzEMmDKBPRwf91tphCsE1+QH78=;
        b=UaOSnnOd9r9FRpS7KYd10Cx5whbaQpTDF2OvIK2529lh6ITtd13CXGRu36FNXQCCF1
         euvaWW25Vk/ad2jg1XpOZsg0I6Kz+2A+f28Y8ryn+s0p0NqiCezuqDyhVbV5QJp0Wmlr
         pJJumdrwhk3km+8YodYNUxm0NRlmv0VcvrzEnMw1JhdF56BPNiwL8Dc2WZG75JHUSy6e
         Vrbya+yi0WCOZf7oegUudbsj1qGDAHct6cw9sh8UVclT4mUO94bUnf7CedemOq8wDSpl
         Ig7/Ei/p7QT+1ZVlg/RxsuaXqF7YMZxoBnm+AXyeP8lRUiB3H17Gc9eSapeWNm5VIN3k
         uhSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VT45ZlwgfZ88DmekxEzEMmDKBPRwf91tphCsE1+QH78=;
        b=nKHgiYZ3yCA4ZmosIawhxdlzXQR/E/1GDPuMDh7NmrDGUgS6sMUdWaBoHrs4y9joya
         c4oqchcBYE+OmGQ2PNZyPzSBq8ZkA1QPdten+cS8VdDEgzBWAHPPBFKX+XIchCKn7uhg
         Lu918+Zwr+86d/vREruvJpPLcqBySRjRbvQpaHOEwZofIV11ReEwwtDl7/XPhb33HeiP
         BE2glf7bpPRrx7no4OWw4MHy3GwLeywsoQAE8v/xzYNX9JUMCGBbD5WDKDf5EatQjYJn
         wy1BeC1evV6tT+uZLOxjOTheex/oJJ8iCHGWleQPiCqSmjC4kOYcrwYdR9mBZM7qMAv+
         xcqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVfEjEknaxKV28npO2GfL2sJL4E71CWksxXPAIiUgFMqrTSo4zL
	iLwpvy88fv8JMG+dGpA/CZo=
X-Google-Smtp-Source: APXvYqy83f2oZFrX1ViUpLzdSLargvhpe8eYFlocBJx60H9JW1cUrruQFlOcQKTUgUIzFY6ljoPpTw==
X-Received: by 2002:ac8:5141:: with SMTP id h1mr58367161qtn.15.1563975322141;
        Wed, 24 Jul 2019 06:35:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:d1c1:: with SMTP id k1ls7546374qvh.5.gmail; Wed, 24 Jul
 2019 06:35:21 -0700 (PDT)
X-Received: by 2002:a0c:d7cc:: with SMTP id g12mr25916397qvj.220.1563975321906;
        Wed, 24 Jul 2019 06:35:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563975321; cv=none;
        d=google.com; s=arc-20160816;
        b=aqWETr6WEwtSum0WkHyTrOVxcD7zP5ZDSHiByUSaDYL5GIEfclT8nqNkpUrTsENOvc
         Ffmxy85nvfT2/szADWMrribvdfp2thr6bEgQJz2DjdPZP41k7f5amDJhllWoNwtlsQ8a
         L/z9I1ltY/GiEO8NvtRSnky1yazhTlErhghZS0hADBsjn+Zp2hSU2s78GJIAqiySwsyf
         ziAtc+VTQo6Mekt+cTFWzaswVDLCipvAoqXthDXcJxFOmTgM80bGko6fwUvkWQpwINJD
         up3vQJnjnxXpSpAMm3qMr+otN2EMhtoLvIIZibOTkSyc+Q61wVDsWPIcDluwEb51180K
         PMDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=slBRE6xegEwsnRr7hLrBTpxlIkFUsYAFCFURQrd73wc=;
        b=nJCkjgftiRgIYtElbdkYSehqIT/hjCQrcsaelcJLHLiAm6d+CbgiFR9o02ly4Sssmx
         ETJzvGaNazz5qGSX5ccKZtE6CAfQJD5vd0l7UAv4w2tSYAi/MK0xWKfhLcuvCl+aMb7f
         ASiPr2j2/k6d9O+OU2b+lvcFA34JGW44ZcVahyHAVp8u+BOY7dWly2jRUi/S/sNgjBoM
         u92FGQJgiN/sGT8D4X7oD4fgQX/V3plm/BzWxyhHp55dJ2P3rz0SeJyprSLsN3OaQeTA
         IjS37+N/iGwTpa5txDqDIX+0EGFWL4slFHiMM/bzclOWAfWdRCgSARCnwmqAE/xOiwwH
         Hw+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b="j7/8XbEo";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id u204si1899552qka.6.2019.07.24.06.35.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 24 Jul 2019 06:35:21 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=hirez.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHQM-0000ZD-Nt; Wed, 24 Jul 2019 13:35:18 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 92E9C2026E809; Wed, 24 Jul 2019 15:35:16 +0200 (CEST)
Date: Wed, 24 Jul 2019 15:35:16 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	LKML <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	x86@kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: x86 - clang / objtool status
Message-ID: <20190724133516.GB31381@hirez.programming.kicks-ass.net>
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
 <20190724023946.yxsz5im22fz4zxrn@treble>
 <20190724074732.GJ3402@hirez.programming.kicks-ass.net>
 <20190724125525.kgybu3nnpvwlcz2c@treble>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190724125525.kgybu3nnpvwlcz2c@treble>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b="j7/8XbEo";
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Jul 24, 2019 at 07:55:25AM -0500, Josh Poimboeuf wrote:
> On Wed, Jul 24, 2019 at 09:47:32AM +0200, Peter Zijlstra wrote:
> > On Tue, Jul 23, 2019 at 09:43:24PM -0500, Josh Poimboeuf wrote:
> > > On Thu, Jul 18, 2019 at 10:40:09PM +0200, Thomas Gleixner wrote:
> > > 
> > > >   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x86: redundant UACCESS disable
> > > 
> > > Looking at this one, I think I agree with objtool.
> > > 
> > > PeterZ, Linus, I know y'all discussed this code a few months ago.
> > > 
> > > __copy_from_user() already does a CLAC in its error path.  So isn't the
> > > user_access_end() redundant for the __copy_from_user() error path?
> > 
> > Hmm, is this a result of your c705cecc8431 ("objtool: Track original function across branches") ?
> > 
> > I'm thinking it might've 'overlooked' the CLAC in the error path before
> > (because it didn't have a related function) and now it sees it and
> > worries about it.
> > 
> > Then again, I'm not seeing this warning on my GCC builds; so what's
> > happening?
> 
> According to the github issue[1] my patch doesn't fix the warning with
> Clang.  So questions remain:

I was thinking your patch resulted in the warning due to the exception
code gaining a ->func. But then that doesn't make sense either, because
all that lives in copy_user_64.S which is a completely different
translation unit.

> a) what is objtool actually warning about?

CLAC with AC already clear. Either we do double CLAC at the end, or we
do CLAC without having done STAC first.

The issue isn't BAD(tm), as AC clear is the safe state, but it typically
indicates confused code flow.

> b) why doesn't objtool detect the case I found?

With GCC you mean? Yes, that is really really weird.

Let me go stare at objdump output for this file (which doesn't build
with:

   make O=defconfig-build/ drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o
)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724133516.GB31381%40hirez.programming.kicks-ass.net.
