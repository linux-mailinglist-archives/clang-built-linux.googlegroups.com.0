Return-Path: <clang-built-linux+bncBCIJL6NQQ4CRBK5AYSEAMGQEQ324WHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8D43E4499
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Aug 2021 13:23:23 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id a18-20020a05600c2252b02902531dcdc68fsf6706197wmm.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Aug 2021 04:23:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628508203; cv=pass;
        d=google.com; s=arc-20160816;
        b=s6R/3KfuUUhTHIw2ytat9lbXbvFCGizpmucc4iLT6tllgoB5RiRmtbY6Nkm7ZgokcB
         qIAedaZCj4OwjrupwGc2MEABYLjKuaLu4ezmlkXUc+1abVFQ4qml2vtzS0MftXtizoia
         c4jOgAHsH4l59l6GsaQjwlzdfx0Q0U+Lwpx38e6YGcuS8BE5GvrFlBtLyTSoHj1Ef1Ps
         dwa6pf+Tv9BNa1GZ7UIHAMTkJ4YEDX2sd/p199HsJZw4/JqIMpAA26wFnXe27NJZ69Eo
         3VdVAny9+Qz4YrQSzfI8gPiQ08K6Qg0L4aeB2gGhH07EgrM8X8ViOpJkqICS8Bp0HWDa
         tosA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=EuDoABOokIm0eQJ7w8CgkE5+7DkmXchyxWEPJJOuJ4A=;
        b=SOfeb6MEZqOCS1RhAFQz0DkwTIBfLJluv/frUXH8kVAWLtM6PMN4wm3ynWUT6uNUy/
         C9QdUniKFKzEcoqoSoX27ZrzyjUqWqVcVRrICTQKjvKKGURgNkzx5uOTXUfdsjGsNMlS
         keKP/TbaQmb4o1RRn/SitEGmf8AJpizWag/IQVW7ELKn1fMA2EihxOzeOo1T9l2LveKF
         V7TKH1U5+p1P8GVxHenexBTKCzqJ2sKyQomhdpcz0E3ib8mx32PzH4topLqiFItjSEr0
         0WiVXKA+8tHVTOSQXF+kk5/hmI3qslaklxgmCEHma07GEH6mB8oP5h54mDPBeSzUEEmu
         QBXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=FUJg+QaU;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=dsterba@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EuDoABOokIm0eQJ7w8CgkE5+7DkmXchyxWEPJJOuJ4A=;
        b=DAVgtC/kuSUPu470Q3kXcIooGzfXvEj6ifNyDt+Id53lnven+V5bfVSqbeATfFyWT1
         W2Owxqm9bUI6vcvYpJnUnKrbyLJQBW8KXI3KOXfwqX/YwlEdEqgEVuwj27wwWwFO0G+S
         0m3hbZffNUcKZi3e7RaXf5i74kVnKX/Yt8BrrRwhryDmpK6uIbMmhNQvBrRVYKs09p0G
         SQ/LKz7VbTW26zVtoZHZJpR0qA3JjXvmGBVTLY1UPK4E5a4j2s/oKNFM2hKHbnF9uPWM
         Glgk+qA54LNv1iYF3wUfUr7W5GW392eUpbSIjYOYJfOSHQjw7SuVThO4+IotOqkYKMd8
         jesw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:mail-followup-to:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EuDoABOokIm0eQJ7w8CgkE5+7DkmXchyxWEPJJOuJ4A=;
        b=QCqq8NO8bTaBxb0GzvcZ7NFrBjFsPGba3TAPWPQoC3CV529jxnnHJpYjPkb7l1wjwL
         CUlDVlZnmG5QTCwtJskCD6E9dUtJTWezR1/UJ+ayBHNZ13NidznyBZs189TPD7HO/oVA
         L7Igwyxa9a3d1IAPxTHJILKSEfgrV0DcmhGkOg8oVMpYGtPa2xOLnOALOYAaqoIMTi9J
         Chv7ddjO0sP0V0wYVjS4mvSJQQdozpanG33u6KbMmxMmT+ReLEABa6COua2wwQe9fd1l
         0+A/+lKgqDgn36xB6tkCtROVWLvSsD6fszCKinNFCXkFknHY4KNn2Yp7+toi8FQN82E+
         TXqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+GOWTQA6bhXQSVx7GYuRvPs5O1uhMgI+uc2WNo9wfqlJQEISU
	MJu8/BVfFm5wKV7mK7YwC7M=
X-Google-Smtp-Source: ABdhPJwRxZvTcygeVQlM5xE+figeBFUWLrBUeXDTYdFauu3eClAWdAkS3mzFlBxKNYXKfobmuqZSmQ==
X-Received: by 2002:adf:e107:: with SMTP id t7mr24626839wrz.165.1628508203622;
        Mon, 09 Aug 2021 04:23:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cb09:: with SMTP id u9ls7884220wmj.1.gmail; Mon, 09 Aug
 2021 04:23:22 -0700 (PDT)
X-Received: by 2002:a1c:9d4a:: with SMTP id g71mr16143393wme.116.1628508202759;
        Mon, 09 Aug 2021 04:23:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628508202; cv=none;
        d=google.com; s=arc-20160816;
        b=EeW95Dqch18m3qvBUXGM76DLYKgorScbqnUz08hLlz3K+mfPY+Wpjqu9p8sdLv3nTH
         jnM1N8T01upfSk+mbHxOcocDztGXYwPVCHJVaSjkyP8ETJKudbo0hvRZiJy9CTQGvHe5
         3tPAOGvVxsOkH11qA/C1W3H8XK8LaNFFofN+jpMabwQAUKOYWmDerJSeaIHQQ60gNlFR
         a+x516BjbQVWK/qVvbMP9cm88yLYZOxOGbc8Lv+yW+B7MGAzGTzeVv/TfjWamga7LyId
         RuHjU3FT/VTvogsrPmClXLdrq0nxZgcwMOh0u4I7/22TSeeXPeyexebQ0a5M18MRZ/fZ
         C5SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:reply-to:message-id:subject:cc:to:from:date
         :dkim-signature:dkim-signature;
        bh=XEHaigBd+p4Kdq3FOyfyiQahnEWWgwrbyI9p3sYy9Jg=;
        b=KjuC249lPRAo6+BeYmsHWuiFoyvw1Jz/YGo7den1t/GNBC7e+9/JcvwtqIdOaqVq5l
         9EBSN3b3aZfkvZmG7LgnCRy2O1iRslN5Fr/GpqBWv6N/YGyeRWv+9+3qX8PATJfAyzoe
         IYvG8kfaPZDWcfWuDr4v3LkA4xAJgfMGUaLpgaOlMRymkOsIxiNMXIxBIxfXwADjJNha
         U+ixYIye5sdn1TLvTabRfYqSVM5/QoDrLwrHdCQDCf9ipOmAcEtX1W0s3YJ5RFAt+OdF
         I/Oxd0Z5N7+O34bcqRz2/go2LjV0/Hw76vlOltyq4ML/EBiHJKDTkvVOgjeWY8MJJBaC
         LsIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=FUJg+QaU;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=dsterba@suse.cz
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id s12si198532wmh.3.2021.08.09.04.23.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Aug 2021 04:23:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id 6D8F421ED4;
	Mon,  9 Aug 2021 11:23:22 +0000 (UTC)
Received: from ds.suse.cz (ds.suse.cz [10.100.12.205])
	by relay2.suse.de (Postfix) with ESMTP id 53C44A3B8E;
	Mon,  9 Aug 2021 11:23:22 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
	id BAE5EDA880; Mon,  9 Aug 2021 13:20:30 +0200 (CEST)
Date: Mon, 9 Aug 2021 13:20:30 +0200
From: David Sterba <dsterba@suse.cz>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 47/64] btrfs: Use memset_after() to clear end of struct
Message-ID: <20210809112030.GM5047@suse.cz>
Reply-To: dsterba@suse.cz
Mail-Followup-To: dsterba@suse.cz, Kees Cook <keescook@chromium.org>,
	linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-48-keescook@chromium.org>
 <20210728094215.GX5047@twin.jikos.cz>
 <202107281455.2A0753F5@keescook>
 <20210729103337.GS5047@suse.cz>
 <202107310822.31BEB6E543@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202107310822.31BEB6E543@keescook>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Original-Sender: dsterba@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.cz header.s=susede2_rsa header.b=FUJg+QaU;       dkim=neutral
 (no key) header.i=@suse.cz;       spf=pass (google.com: domain of
 dsterba@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=dsterba@suse.cz
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

On Sat, Jul 31, 2021 at 08:25:51AM -0700, Kees Cook wrote:
> On Thu, Jul 29, 2021 at 12:33:37PM +0200, David Sterba wrote:
> > On Wed, Jul 28, 2021 at 02:56:31PM -0700, Kees Cook wrote:
> > > On Wed, Jul 28, 2021 at 11:42:15AM +0200, David Sterba wrote:
> > > > On Tue, Jul 27, 2021 at 01:58:38PM -0700, Kees Cook wrote:
> > > > >  	}
> > > > >  	if (need_reset) {
> > > > > -		memset(&item->generation_v2, 0,
> > > > > -			sizeof(*item) - offsetof(struct btrfs_root_item,
> > > > > -					generation_v2));
> > > > > -
> > > > 
> > > > Please add
> > > > 		/* Clear all members from generation_v2 onwards */
> > > > 
> > > > > +		memset_after(item, 0, level);
> > > 
> > > Perhaps there should be another helper memset_starting()? That would
> > > make these cases a bit more self-documenting.
> > 
> > That would be better, yes.
> > 
> > > +		memset_starting(item, 0, generation_v2);
> > 
> > memset_from?
> 
> For v2, I bikeshed this to "memset_startat" since "from" is semantically
> close to "source" which I thought might be confusing. (I, too, did not
> like "starting".) :)

memset_startat works for me, thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210809112030.GM5047%40suse.cz.
