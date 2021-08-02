Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7VXUCEAMGQEG2WSZUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0343DDD86
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Aug 2021 18:23:28 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id p6-20020a056e021446b0290205af2e2342sf8599845ilo.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Aug 2021 09:23:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627921407; cv=pass;
        d=google.com; s=arc-20160816;
        b=HTpnlqcywmWk0FjdLJaYhJj810JG925/6Wz6j2Pr7w7iw3ftl21m4It/IpEH8beTz9
         u/pZoWggU1ARZtaZnYlLVBox/Mue9ynXuMFTGtrdswCoyi9Bk/SSgUe4oMvXpwZCzuzf
         IAUp1lUhtJWmuVhBkgCqbIP17E+ag1cVH3Qbjf3XJLx83sYklEiJ9Dph9Mn+eO+PUT/e
         3wIvLuQGUmXYnZYRXwxf34LPWUy8/g8jCrfmGEZUsHGWYOlUJ99pyj+wBz+lhYRyagLC
         0Z47dImxuxGISG4jMgqTC6JWPn+bnTXz4oh8jkgMHyMR6HYZLqBlrZmBaCWjrutdLcAu
         vqlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4uCM/rZNZqlxejacHmsyFBfvl2ZnY1qho8/43nwhd+0=;
        b=dd0QvFWX/A9YLY0Q+Lswufl+N9Wm0QtSnDGHvRbvIpFqiLkVs0LkmNfbsYb4FRbjw7
         mq18iPNQKJfZusmPlbZL3vVVvYZa1jo9PEhWhwznjpmcKdiZfB3+JqcWV33da90eWJZZ
         Ry8GCWdsgS5wXN2vQMHvRmi1ROkOsXIVHLkjMjTdNqyDKA1aNw3yTpS7aSMZQinSfbcN
         iA9mOhZwM4FZ5erT0imCnYbPXNl4QNSvFluaFHMYGKbyWOBhAIy+U5pR9mw2PXKJ83cw
         owMEcjoVH1+B5lZ8wZSxVzfig4UU0ueBByiXkKG1B0+trUmMO81jqfRCo1GEhW/ksjZ7
         zwdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=aw1kgIMm;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4uCM/rZNZqlxejacHmsyFBfvl2ZnY1qho8/43nwhd+0=;
        b=F4H+6FlM0/GT8ivkwx3Z2iXbykc4nBYHc12n/wE4G6r/qCFH5ksf5lzDHyt02VqGlt
         oKJ5FR9SMnvv/m5lIkA+l/3ssfmosuxjLccvGO0CIEoz8IlyrY76CztbTi65LrKNtN6N
         f22pzOb1kgPK9Begga4I5yF1eJWfm1Ha1yr7e9BM9VQGtdqBeLf912I9owtlLnKrL6DP
         izKxpmgfWp4TemYV1T2mWmxqWHlY/KkDTQyk9tXdDUf/gKTDKPiO8yynEV0JoHa4r6KI
         8KPRr4JsyuOxsc7/fq8FjAL+KtsICAI/7k3EMZoy7DbfF0ozaecOcT5kGWC4RLgSeWu7
         6l7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4uCM/rZNZqlxejacHmsyFBfvl2ZnY1qho8/43nwhd+0=;
        b=bvk4rnShNRYcPcWgKHAzdxEdwagmcafLzpOf9qHRcR9UZxDd+C8w9Ggh3UnCpnIZFI
         FSHBoQOHGL4YIZcchEuyC4o8f3lrBG0ytgLHySZRaq1t+tGLUv5hlmHAmL54VXAZejhQ
         zu+aPLqa0XzIWwVqq2dbio8Qi7v7UX4xI3conwHua5F/oDjnDNe4DOcNoMF//GcyE02l
         ejjW62VLayvxJ8aQ6tgJV/e8DnL3et6mi3iOVR3Fq8zoNkjsxcAcSfpswZ3b/DmaFlbR
         6rXI7cBWFPSdW+WHjMzpmZUikWuQPfk8stpmmHxIvvkIcAoVQVE7uw69Cx045A7BKs4q
         qEiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328qD138w7328Wm7Xdl1dkieaBZ/bq9hLXPvajc/SPEVcwmbRn/
	WehRB+xvxa70atTrGPXPLt4=
X-Google-Smtp-Source: ABdhPJwzCnZdiANw6xjrMt7jq8aXUVdYRYeAM92YEaPZBdafNtQFlJcdWTx1R5ThY91apFRgJz5L3g==
X-Received: by 2002:a02:cd02:: with SMTP id g2mr8589793jaq.42.1627921407007;
        Mon, 02 Aug 2021 09:23:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:39c7:: with SMTP id o7ls2073305jav.0.gmail; Mon, 02
 Aug 2021 09:23:26 -0700 (PDT)
X-Received: by 2002:a02:5bc5:: with SMTP id g188mr12506334jab.136.1627921406712;
        Mon, 02 Aug 2021 09:23:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627921406; cv=none;
        d=google.com; s=arc-20160816;
        b=H+wex5LVgj8OeQ4a2Pn+rzjR41Clxgrs+U/U6ORXmiX8jpI1Cbm1KCWEfad6hQiaKu
         YvpEDBp2wTpNVA3QOsnL0Gj3MoFkcBzNap0dNHvvJKHUXShI8EstDWObOUbKqU6dTsCA
         rLMW+tfIFcW182kOhWBX7ceFY6EmNS2NsR7wLaaARpNtvMAfPpE5sD8fUF82XcavOhCp
         sNoAaAaeZpp77vHpBASVduVOh/xDn39i1wYHmnE8ajFKyOX4dNAIYxp2MM2fc2oTV/4I
         8FXdgd7zfuazigHMIboeHHc8SVC+GTS/N5WWvii80GLKYdsc9PK2foMtwqVtjqh9eqqx
         MVXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JaILGVZ5ZfAh5yd44e+vxSRLCop37r4sy9cxjRO/kVU=;
        b=kQKjMw1HmfWiy+Eg0RPQJiinpXE+qwIj2Z6HPmViwOte+ODFS+lZ+gjqsXpnbXKyxO
         BbhDekChq2+hAiAhupJ46sgOvnSEITN8TbpBb6dTS6hCiwe777A8fiFaIn4e0OOPzk3x
         sSNqgkVcHjjU6jpNh2yX7cVHaj91d5Wp7PhhNjcM7MgeCt6z6OgruBSODNDoHtk0a0In
         DQaqHDxtH6jOlb6k5UrJbtNX62Y3/Gio+9GvyCIma0Sxs9VZM9kwYGalV/lB2iD/bESD
         S3cyLnkpfhHcGKL1stTvmv90VnHJ3K1l1F7Twgo8nVySWApqGz4B/+yPkWa37l+kfiFe
         vLjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=aw1kgIMm;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id 8si513670ilx.2.2021.08.02.09.23.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 09:23:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id m10-20020a17090a34cab0290176b52c60ddso710373pjf.4
        for <clang-built-linux@googlegroups.com>; Mon, 02 Aug 2021 09:23:26 -0700 (PDT)
X-Received: by 2002:a63:4a49:: with SMTP id j9mr2250552pgl.20.1627921406097;
        Mon, 02 Aug 2021 09:23:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s193sm13206950pfc.183.2021.08.02.09.23.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Aug 2021 09:23:25 -0700 (PDT)
Date: Mon, 2 Aug 2021 09:23:24 -0700
From: Kees Cook <keescook@chromium.org>
To: Shai Malin <smalin@marvell.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-staging@lists.linux.dev" <linux-staging@lists.linux.dev>,
	"linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
	"linux-kbuild@vger.kernel.org" <linux-kbuild@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
	GR-everest-linux-l2 <GR-everest-linux-l2@marvell.com>,
	Ariel Elior <aelior@marvell.com>
Subject: Re: [PATCH 42/64] net: qede: Use memset_after() for counters
Message-ID: <202108020922.FE8A35C854@keescook>
References: <SJ0PR18MB3882DC88DB04C9DE68678CEDCCEF9@SJ0PR18MB3882.namprd18.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <SJ0PR18MB3882DC88DB04C9DE68678CEDCCEF9@SJ0PR18MB3882.namprd18.prod.outlook.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=aw1kgIMm;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034
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

On Mon, Aug 02, 2021 at 02:29:28PM +0000, Shai Malin wrote:
> 
> On Tue, Jul 31, 2021 at 07:07:00PM -0300, Kees Cook wrote:
> > On Tue, Jul 27, 2021 at 01:58:33PM -0700, Kees Cook wrote:
> > > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > > field bounds checking for memset(), avoid intentionally writing across
> > > neighboring fields.
> > >
> > > Use memset_after() so memset() doesn't get confused about writing
> > > beyond the destination member that is intended to be the starting point
> > > of zeroing through the end of the struct.
> > >
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > ---
> > > The old code seems to be doing the wrong thing: starting from not the
> > > first member, but sized for the whole struct. Which is correct?
> > 
> > Quick ping on this question.
> > 
> > The old code seems to be doing the wrong thing: it starts from the second
> > member and writes beyond int_info, clobbering qede_lock:
> 
> Thanks for highlighting the problem, but actually, the memset is redundant.
> We will remove it so the change will not be needed.
> 
> > 
> > struct qede_dev {
> >         ...
> >         struct qed_int_info             int_info;
> > 
> >         /* Smaller private variant of the RTNL lock */
> >         struct mutex                    qede_lock;
> >         ...
> > 
> > 
> > struct qed_int_info {
> >         struct msix_entry       *msix;
> >         u8                      msix_cnt;
> > 
> >         /* This should be updated by the protocol driver */
> >         u8                      used_cnt;
> > };
> > 
> > Should this also clear the "msix" member, or should this not write
> > beyond int_info? This patch does the latter.
> 
> It should clear only the msix_cnt, no need to clear the entire 
> qed_int_info structure.

Should used_cnt be cleared too? It is currently. Better yet, what patch
do you suggest I replace this proposed one with? :)

Thanks for looking at this!

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108020922.FE8A35C854%40keescook.
