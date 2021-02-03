Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7UC5SAAMGQECNOH4UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCE430E3BA
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 21:03:12 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id dj13sf332812qvb.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 12:03:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612382591; cv=pass;
        d=google.com; s=arc-20160816;
        b=LdfuTS6dawgG4qRvfsCWrpCVNW+EOuP1nhZdAf4Nzp7ry3xgEVMM7NCuSZbUawC3sU
         M26IwIvP3G6PXIeIMgFN7fC8anBr7rA14PaErkMwuPdI+jkoM5Rxy4doqcBxlG76mNsE
         9EdxLWJBwDaUhzZzeIuwyDE1c7UWp/LTW7MASp8JOZkj8yelknX5D0djIGXrScHid32g
         0M+Ld0htlFE10+FiqHcT2YBlAXZu5AX87kMAuZlaUeXBRMf+5a6rMhA+JSPLBUTIJAZj
         8YKBz/ZydNvQBGCcu61BTJgy85kwlN4eDu9vAvXxKMn98O1jJmxq4ViLF7wjdK0/sUJD
         /vSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/Er8CXCoeMDpEXtaQRj2IZ8HfDkntFJiaOwL60uvfMo=;
        b=DDsRmKGgWvVMWWFKDH27NTtj/V2stzAduakrVWAI+cwK6EQfDDFrVohYIydr0y1fq8
         KaO3uAXcS8e0T/beV3YhENNSUqQum0quewHzhhz/H91GnJW6naHbJsMMAdXTqmADc3g/
         sNnbCB2wZEvWy42sCF/cA3PFQaEJBlBvqseG2LjU8ldE5tmBJK9QFrqOqfVL/ym520La
         mRz2kZdIahaWRygdRejXtwyH9emSjGw2fGCC0ZjFrqIxQnEqH3E3KACIP6KU0y1J2jUE
         QCskwhwTEOtHk1I1Ze065xZHOnLpN2w+lGNjRi1bF2xn5X+I/APGOancPDgmEXoJ/5ua
         Mxpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IJAT+V9j;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/Er8CXCoeMDpEXtaQRj2IZ8HfDkntFJiaOwL60uvfMo=;
        b=U5uvK5WzGs7i7PDiFPp1LjYeEr9yJUPkaO0jIPW4H0H/J/ZSsuEHwRotbdUujtFUDH
         Ls61t5BPkqzELDJgWBMLugU8ibYq3U5iX01VUNq6+ItcylHOWYAUqHZoC7woha5cFoHt
         uDYl7S5t3zHbpbd85OmEwHkiFSlEw6Vk0+AKy8aZJnYmnLJWMpH2qHUXB1uL6tOWbSFD
         igLT1gvLxwrkd0G2Qblk5K+NEylyPuQAxNntljfBSGqQOf6pjrdAsdOT0NXFgNttDPvi
         RIj/8JI5K8qcIpIqMXdSeKeOilI6frdQc2I5xoSnB5M9qJRcF7JpnbcicOB7PIiGMIbs
         8yrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/Er8CXCoeMDpEXtaQRj2IZ8HfDkntFJiaOwL60uvfMo=;
        b=nIi85UKZpv0DAKg/k5bxBLrwYgCaYacKD+835R/dPcPSpQv6uNwN2U315F+g51u6Us
         PLJuctt3rHeTV1oNacJzn7T1h+/RpyJt84jQQ/FX4ulBO7Af4Bs4HcLAN31LyPiALYxv
         vKnmC8S95GnrETgb0W1ck5brtnLTKJmDoZ1/QZWFCu/7Q8v1O7TNOyspgo6RKbyYZAaR
         b2cQmTWfvKnzyy1CMx1gAcxG/RkY06SCMve7kCushdmYIIbGV5sw6Io1riVlkWjC7zxW
         gRqaFBt71G4okN+cUcH/AMEssTRje+Uw92qldikQAABa4jKq3S2LYHXqOa+q01atyg6R
         9lDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bMmfhaTgfSkQxu7zL20mbbcjwBlW4fqC8Jks58H5bZIRIMzua
	VRLvL7FqV86nBXkgyglL3zo=
X-Google-Smtp-Source: ABdhPJwUAgkdrB0bqij5YZuEQSVbLYDatl0O7h/vBe0noKYG7ZlGIN+DgcERaezZIU3xU4vUQjL7xA==
X-Received: by 2002:a37:7ac3:: with SMTP id v186mr4160984qkc.211.1612382590875;
        Wed, 03 Feb 2021 12:03:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a404:: with SMTP id n4ls1790417qke.7.gmail; Wed, 03 Feb
 2021 12:03:10 -0800 (PST)
X-Received: by 2002:a05:620a:2211:: with SMTP id m17mr4279573qkh.9.1612382590428;
        Wed, 03 Feb 2021 12:03:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612382590; cv=none;
        d=google.com; s=arc-20160816;
        b=R9xZTxBjCw1QdY+3aqYi8EuHR5oKImb8LZcwEyx/jvDVMykOb2nXfflCdwQXl+Q8LA
         EWOpcB5OLy+z+QaiIKeLxldbrPpxTvoyKEn6P7Ehq6969USvWpi1GzEwXgF9dbOZWQ6q
         T8oTzIDmWX4UecQLZOgy+I/6/iF7EL6jIhcMtva4nuFX386BFmHUXXxPDLGI5ePbYaRD
         D0hwkcK4IgoGrLEBN6Ty+VOja2JXeRdARu2PFw85X5LEGxDP4K4pcnuLEdSNlr6Xmiq4
         K1QcFpB4aShV1iVaPj1zCJ/oPGlORZ7yn7c2iwnl0Ewst6fiSmkRmx2015lMx+10gUUl
         yoOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SnxhWz1pN2kdt7xfbO4NRF8c0j2EbnQ4AfDU/TQ6pI0=;
        b=t7ETcMuBDn7RMM5SSB8kdooV5ztDtChDdnFNTiZTAaTD6P/mKPHgwC94PVEDk1OGjD
         Vl+GnA5807MySGjxWVdqxvykg0SahbITsjvEpen3v+WerkqCOCa1S3vdorQDcgaEFC2C
         d90JcO6gUj0hRAKAERsz77CGT6hAUh7cvY3JzKlQ3EJB5meATqFcIIaHF9rJTb6xi/dv
         xYBwigrPtFX7LxU4Xu7VAH3hjE6rNg5PHti3niajmteXLmONQqBm6W20fvdErG1EShSr
         Oq/lknsGvk1n8YKFzOqArgH6P0/b8LdACPrjRTjBujF4A6eBmrorfIg0QlcnH1SG4FOn
         dRtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=IJAT+V9j;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id j40si310477qtk.2.2021.02.03.12.03.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 12:03:10 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id l18so338478pji.3
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 12:03:10 -0800 (PST)
X-Received: by 2002:a17:90b:3886:: with SMTP id mu6mr4570866pjb.153.1612382590066;
        Wed, 03 Feb 2021 12:03:10 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j9sm3682830pgb.47.2021.02.03.12.03.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Feb 2021 12:03:08 -0800 (PST)
Date: Wed, 3 Feb 2021 12:03:07 -0800
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Arnd Bergmann <arnd@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Wei Yang <richard.weiyang@linux.alibaba.com>,
	Arnd Bergmann <arnd@arndb.de>, Vlastimil Babka <vbabka@suse.cz>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Brian Geffon <bgeffon@google.com>, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mm/mremap: fix BUILD_BUG_ON() error in get_extent
Message-ID: <202102031202.F0AEC4A7@keescook>
References: <20201230154104.522605-1-arnd@kernel.org>
 <20210112191634.GA1587546@ubuntu-m3-large-x86>
 <20210203184840.GA1711681@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210203184840.GA1711681@localhost>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=IJAT+V9j;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a
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

On Wed, Feb 03, 2021 at 11:48:40AM -0700, Nathan Chancellor wrote:
> On Tue, Jan 12, 2021 at 12:16:34PM -0700, Nathan Chancellor wrote:
> > On Wed, Dec 30, 2020 at 04:40:40PM +0100, Arnd Bergmann wrote:
> > > From: Arnd Bergmann <arnd@arndb.de>
> > > 
> > > clang cannt evaluate this function argument at compile time
> > > when the function is not inlined, which leads to a link
> > > time failure:
> > > 
> > > ld.lld: error: undefined symbol: __compiletime_assert_414
> > > >>> referenced by mremap.c
> > > >>>               mremap.o:(get_extent) in archive mm/built-in.a
> > > 
> > > Mark the function as __always_inline to avoid it.
> > > 
> > > Fixes: 9ad9718bfa41 ("mm/mremap: calculate extent in one place")
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > 
> > I would like to see some movement on getting this fixed in 5.11. As it
> > stands, this is one of three __compiletime_assert references with
> > CONFIG_UBSAN_UNSIGNED_OVERFLOW. If we want to keep the BUILD_BUG()
> > around, I think this is fine. Alternatively, turning it into a runtime
> > check would be fine too.
> > 
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Ping? It is pretty late into the 5.11 cycle and this is still broken.

I think we should just do the __always_inline. Who can take this?

-Kees

> 
> Cheers,
> Nathan
> 
> > > ---
> > >  mm/mremap.c | 5 +++--
> > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/mm/mremap.c b/mm/mremap.c
> > > index c5590afe7165..1cb464a07184 100644
> > > --- a/mm/mremap.c
> > > +++ b/mm/mremap.c
> > > @@ -336,8 +336,9 @@ enum pgt_entry {
> > >   * valid. Else returns a smaller extent bounded by the end of the source and
> > >   * destination pgt_entry.
> > >   */
> > > -static unsigned long get_extent(enum pgt_entry entry, unsigned long old_addr,
> > > -			unsigned long old_end, unsigned long new_addr)
> > > +static __always_inline unsigned long get_extent(enum pgt_entry entry,
> > > +			unsigned long old_addr, unsigned long old_end,
> > > +			unsigned long new_addr)
> > >  {
> > >  	unsigned long next, extent, mask, size;
> > >  
> > > -- 
> > > 2.29.2
> >  

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102031202.F0AEC4A7%40keescook.
