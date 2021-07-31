Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAOXSWEAMGQELSXOSQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id EFEF33DC69F
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 17:25:54 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id p71-20020a25424a0000b029056092741626sf13928955yba.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 08:25:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627745154; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZMrZ1fk7d9RJIrGGq8Iux3KG38dPHFRnsGtHTg4roK28rakFtuH+cWBmHLXfzxkdaN
         lfeXRs80n1YivtvvUuHZ1sqXOb+mjG4oN27sgizAPoJ5cJ590PWa1yvCvif07uD9jL5C
         VpsS4bbF9Sx8Y+Ttxgaq2NEyPFn5tk3n9iMGKpUAIjjvHwE0L2aOhThdDiJpVkHl9Wst
         B2Q3avtkxXrQGf9G7ovrROKXfNMS5aOu1eQV/PgfFFy/G1QmfCj4W29eTYiJUFly1Auz
         SPaKA4B3qmxCvbNW963NWVqnJfGIIaXQUo4E8zIud4KnQ9I8+IGS1cWyeCgeCFFVUoie
         x2FA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender
         :dkim-signature;
        bh=iXHDnMZbMBaOXMnYAVIvtXYty5zRoar6M4M8VJVPF1I=;
        b=uQnkEWEiTobaFA0gmpzAf1e4s+gvDRfdswxdZ+LTaxJrjZAiYF5PhyAFlYSPJvj2pR
         RxXDLonoLr/NuhN+kZzRcbsvs0ZnakJ3GHz0GFADIHN45t7wkTb5+xqWaf8BPEHIWM1w
         fBRCToGiDrqcqurSBlFl+IkB/ARzgvQ3ZeJ85A09e4NMqEuYAUnxqVTeqV52bqUgnhGb
         J0dDFbNfO1euhhiE96+n8vIyezOeyn/HGpY0sfvQk05Cr6GrqATIzkM+SFyijI4MWTGo
         9e8Ei27EYFyTszqRVeT90sabhOJQAK2FrI44QUlVZxYtrJm8xwFjvIehXYXyGtRAnWka
         rWTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=E0SoYgUe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iXHDnMZbMBaOXMnYAVIvtXYty5zRoar6M4M8VJVPF1I=;
        b=fOpYeu1fQ/FhMPPtelxo9cuUfLxgL1QGvsg5Z9YtPAAem7eEdOtPsrtJ9WRqD39Oxo
         97orXGUracHrDieJwHMUauF9T2/bBqik9tcmeTouF1DoUMSDwR5hBKnmpEJ7zFjjy6E1
         i420wvFMSNpawLPyWprLPbeWFcWrvIZgXYTLwxdiUnyxXvgGdXowhNz5mrmk83Mt4rfv
         S6FqWrExCA3JpO0hfw5B0A30NuWaJkP9nH62CzLWuLZZ8jO8UCuoCyaA0z7HSvgfnmoP
         +8q8r9+c4xIXU5RZzuwvfOYrj0Sy/MGDSdJfEYAvRhbGUrj2FZoM+4FHX/uRZX0TgWXq
         8mxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iXHDnMZbMBaOXMnYAVIvtXYty5zRoar6M4M8VJVPF1I=;
        b=SnXd1xdU4eetgbfBrTZ6ETSaOlKZOFJD4nhw34JrWYXihioOQ28ZTiXOjzSbjzb4lR
         Z0Oo8XKymO7Ujv7dzMr1pNZpIm+JuL699855ZUY3JYaj46M3HDU7HeAxHpwWxBcMZUQh
         jEMDHzfvw5TET8lpXZxyBy2dP62C4qWdBt5TwD6kFF7/gfYzlhc/0idhVflNQ+mJEI2B
         cbj8+IRwH9n+DGC0vnuttJS/TBUKSI43fGJFgJSAQKaBQGtvPDOiqqcaD3qf0ZHdVTVb
         CZhk1J8zHbyGrHhIuaHly7QE9sF79AdNwFpVfYwAxdkpnO8NftOCtPtxFXFUx20cbG31
         M98w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53353gni9J9yee784HvqfzJI733mq/IhweJBIEsX19qEBZ2zG8P1
	gx7tmKdzfZA4DLOBZ/AcDQM=
X-Google-Smtp-Source: ABdhPJzhHOdFTXPnMvg+B/ZivND87GiJTeCDMRWHHRG0W3y9KPiEiS6UIBiNY7PCG18FiIgKaV2a7w==
X-Received: by 2002:a25:bc01:: with SMTP id i1mr9684994ybh.225.1627745153927;
        Sat, 31 Jul 2021 08:25:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9a02:: with SMTP id x2ls2247879ybn.0.gmail; Sat, 31 Jul
 2021 08:25:53 -0700 (PDT)
X-Received: by 2002:a25:7384:: with SMTP id o126mr9704512ybc.417.1627745153427;
        Sat, 31 Jul 2021 08:25:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627745153; cv=none;
        d=google.com; s=arc-20160816;
        b=mBP30CeJPcFi0LPPkQgHn8gNo4bwfBeKrKCn8lH4GuFpv1a5Z7JKJ6lNtNktvZPwt9
         5ml/Td+XY2+IyjO1XhW7amAYxOLRNW4v8FoDUacF5MzJSEhJ5TKvAiTfghRgn0BdxGyP
         5fTUnZ/7NBSNLeCemxEORYr/6yE4O+1E1/DGJw7bQRJ2QkbQJv19mME6WqLDCU4Kf+CO
         FiS3PadtHkzY9EA9xvXLmf8KnuYOPKf4qICLvwLYR252ZzYObtahEM7auzo2fZlI/S0p
         Gz8JduhzLWPpUixu4Q5sStAZrGWUV4V+XCKYpHar4bjEXYo48sLqkaBBalUE9wltr72h
         aSKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:dkim-signature;
        bh=rMM6+nPYXY2uiSyyu4uBWYISUK/txh/pCdnfftmwE5I=;
        b=MnnedKtkgAWY5PPoh/as6t8XT7qj8ix1F8vOysaV3rMu1VrNOOHLKBmvlT81OKcBOk
         bpuSTzcMg0goyki+sCU1yVmDxzThHYYn6KM7aKPVQEr4SLII8tWenTpdeuGwnABmOt/K
         8GNmYvJ0b4WBAwYMi4m/BIdFOOxcvtDEVKdl0srRBLSqhhaVCYC0k5JeQzqN2I+zmGiy
         SrJPuET3rggVeRLJvDa9cRjt1uL0nX87EFfq5j85O4t6fAEZnFmoGMsgPBSFO3JVSmob
         6RF9BFXKTR/1zhWAhf432NgdTQTvqqNEj0h0zMm7QRI15zK+Ebqb/9euKKMwveiaetuK
         Q1rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=E0SoYgUe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id n10si350399ybj.2.2021.07.31.08.25.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jul 2021 08:25:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id e21so14632394pla.5
        for <clang-built-linux@googlegroups.com>; Sat, 31 Jul 2021 08:25:53 -0700 (PDT)
X-Received: by 2002:a63:8948:: with SMTP id v69mr1184969pgd.132.1627745153109;
        Sat, 31 Jul 2021 08:25:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m18sm5745081pjq.32.2021.07.31.08.25.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jul 2021 08:25:52 -0700 (PDT)
Date: Sat, 31 Jul 2021 08:25:51 -0700
From: Kees Cook <keescook@chromium.org>
To: dsterba@suse.cz, linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 47/64] btrfs: Use memset_after() to clear end of struct
Message-ID: <202107310822.31BEB6E543@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-48-keescook@chromium.org>
 <20210728094215.GX5047@twin.jikos.cz>
 <202107281455.2A0753F5@keescook>
 <20210729103337.GS5047@suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210729103337.GS5047@suse.cz>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=E0SoYgUe;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b
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

On Thu, Jul 29, 2021 at 12:33:37PM +0200, David Sterba wrote:
> On Wed, Jul 28, 2021 at 02:56:31PM -0700, Kees Cook wrote:
> > On Wed, Jul 28, 2021 at 11:42:15AM +0200, David Sterba wrote:
> > > On Tue, Jul 27, 2021 at 01:58:38PM -0700, Kees Cook wrote:
> > > > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > > > field bounds checking for memset(), avoid intentionally writing across
> > > > neighboring fields.
> > > > 
> > > > Use memset_after() so memset() doesn't get confused about writing
> > > > beyond the destination member that is intended to be the starting point
> > > > of zeroing through the end of the struct.
> > > > 
> > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > > ---
> > > >  fs/btrfs/root-tree.c | 5 +----
> > > >  1 file changed, 1 insertion(+), 4 deletions(-)
> > > > 
> > > > diff --git a/fs/btrfs/root-tree.c b/fs/btrfs/root-tree.c
> > > > index 702dc5441f03..ec9e78f65fca 100644
> > > > --- a/fs/btrfs/root-tree.c
> > > > +++ b/fs/btrfs/root-tree.c
> > > > @@ -39,10 +39,7 @@ static void btrfs_read_root_item(struct extent_buffer *eb, int slot,
> > > >  		need_reset = 1;
> > > >  	}
> > > >  	if (need_reset) {
> > > > -		memset(&item->generation_v2, 0,
> > > > -			sizeof(*item) - offsetof(struct btrfs_root_item,
> > > > -					generation_v2));
> > > > -
> > > 
> > > Please add
> > > 		/* Clear all members from generation_v2 onwards */
> > > 
> > > > +		memset_after(item, 0, level);
> > 
> > Perhaps there should be another helper memset_starting()? That would
> > make these cases a bit more self-documenting.
> 
> That would be better, yes.
> 
> > +		memset_starting(item, 0, generation_v2);
> 
> memset_from?

For v2, I bikeshed this to "memset_startat" since "from" is semantically
close to "source" which I thought might be confusing. (I, too, did not
like "starting".) :)

Can I make "bikeshed" a verb? :P

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107310822.31BEB6E543%40keescook.
