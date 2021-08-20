Return-Path: <clang-built-linux+bncBAABB3MT76EAMGQEF7SBMKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DC63F2F6E
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 17:27:42 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id y3-20020a17090a8b03b02901787416b139sf4732110pjn.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 08:27:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629473261; cv=pass;
        d=google.com; s=arc-20160816;
        b=sL7/x3i1Se3cqCfBkaGLemTpvszr7czQHIvjlL9LLgjBpgI6Q0Ue6Q8D8hr+xnC25T
         mAnfH/4YwUDJmYexer0Y8kp13B6EXEWPorE1KPtLJFS8V/nGPylVRTHXDl3PocSJggCv
         tKKER8OUdMLpycGGijOEeyfVd3lIZYSVYWsUFCNUZU3XSF4sgY829dMWSNk531q3lX/e
         q1yAQRaOXzc+aw+6JYWWFLDdivo34uBtAfKNaKo7B2jLUmJqSmj0vhCjJSrql2uCzwHA
         8I8M2pllid1CqI/zmmo9o0lueXi49NLRnKCLpzbBbwCacUvVD1WFnS+ZhxXurbvE54Tc
         buiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=rriNxUgoDIF1YXg4BEvmiURJM6KujxDbkc6v2Ko/Bnk=;
        b=V+L09DKIuA5esdLIqfFBgiphpdkLCDWEBZ+CjVAfYdXs4PopNpc2i3zrSmHXVIZmbk
         /Huec79jHexjooWW+tuTBecuXm/RAovsOFfikrHNKyuGM/8Ukp3ZgFilqZe/6D5qUkp+
         obN6NYHEL6nx5H4hX9l5tXywlZSrEk4yknhfICOHKiv2kSvnRCyZ34OjewxS1Kl/4+A9
         kGPA0HIiXhI2rQ7EiwnN50fZRwcnGGtmmyGYY5Dn8cRrjCBkec0VeuFWr15AOdzCuuie
         rAtFPZehoCwXnV08IV5kFfOJNIXVbhsFtD94VFYDVO0Jtl4rEBCuNUGPRHDE6NiNGcQ0
         asfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hD1bmNxq;
       spf=pass (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jikos@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rriNxUgoDIF1YXg4BEvmiURJM6KujxDbkc6v2Ko/Bnk=;
        b=hb0rkh3DgRAfVnnuJVMOeMOtK0i+nIDjstRizzGkp9y8Xlk014nwDo+YdYQrkK2Nmr
         jVqnFNVVQ4LYj27mkC1eQJi8N+dSosBYRAE2LHmynprmqNQQTizurRBV6/dvxFpD/0hr
         r0jylZgCjBvSSA+TBSHdakvsIxb88WmijUlAHU5r34rDGihzZOepd2TBmvGm+enV56HJ
         9mXFedu83sU1c4ize5qVPHyQ3tePbP1Q36ZyQSGWL9G0wx0YL4OjQGHUsYdJkc4va8XP
         KB5nMxHIXC49PIHZ+WokbwguV2gHprH0jT8HCpyv6N1ZOC/gX4XRr0157/av9qAWfqXD
         C8IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rriNxUgoDIF1YXg4BEvmiURJM6KujxDbkc6v2Ko/Bnk=;
        b=jVY3TJyTfuSJ4+tZvrqgit/xcpLDb0pq59vG40y/sri9Mo4VrsAhTQEizEr702EaWO
         rp/YJMj9HA0J445x7beGQRwUe9EUh/Gf1nNiRUBKC3ZdK2/SbFB5u+6m5tVfMkNmIBBu
         sKpeVwaDFflj6HUYoVG0desiWgg6SjI50GOkmPE3AA4sJdVLpubC1aUZJ8P4N/SqphoG
         S2R+tAJQelEwFncUOz074mHkpnqPwT1W5Ktzy62Ghowk5DVN88zKVdlEt1tgiSZVOKlg
         ElMfuwYS9eXHBnr7d9+yqhhmTRXy5AiNLdcUxVfHNyXwDfbksnAb/dkdJlQULmZVN2+w
         vMaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533yJcNvDeTlOTmYMvk07pqcdr/M6FHpABqXHvGO51oinyxSb0ss
	wJRO0q4mMHysAuLER96E1l8=
X-Google-Smtp-Source: ABdhPJxTAv1kYTzxScbaBS+Fsynn+HIv52MyR8WFq+/SWWJ9yXXQlcdQXFY+KdIg/YFt4ZV+tqrFzQ==
X-Received: by 2002:a17:90b:e18:: with SMTP id ge24mr5094132pjb.59.1629473261188;
        Fri, 20 Aug 2021 08:27:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4b12:: with SMTP id lx18ls4936051pjb.3.gmail; Fri,
 20 Aug 2021 08:27:40 -0700 (PDT)
X-Received: by 2002:a17:90b:2493:: with SMTP id nt19mr4391769pjb.106.1629473260758;
        Fri, 20 Aug 2021 08:27:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629473260; cv=none;
        d=google.com; s=arc-20160816;
        b=qBPwKrMi1O8DqFxKAJGSVD+mPouR7MpgpZ1KyoVNwBttVXeffeC7MCiOwWURL9kFTW
         6l8wN7vK0j1FHV1bA8KCqL6FOn9Dfr0xJehGJLnJEuB5doEoytSjCkzKZmzhXYRGbqRw
         noT38N6Y8K1nbVmRvyEiV+m1AwbqF49GQbVwopiC01mJxbzrtspW8U0GGuj3I0jOpMRf
         31znLCUHzM39Xow+uad0HqGndeiwhg4NJ3y5DKGec13UsLobff3zZzD0GxHfRSx0G/rK
         bK7Wd5qkfXFR1ZrHh80dLkrfPtTSHOfjR9c/ggeS3P13uB4y/kKbZOdO15yF/ccrFPCV
         ao1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature;
        bh=gkKDMktT3eVn0p9aEG+bkUvAjLeEeXeIQpdYpqlVHU8=;
        b=TmmMCaSqBaDsOPd9ZKY0sJcGtJvblN1toiWTks6RwdjJ//EHF64GnUHj7DflBQaYZw
         EHIiUkGT5i7mEyHbjDfbn3cUktXLN9j7HD92iPEnXI1nuZjC02OT2HxivcYHc6s6jlQS
         HHLUw1qoWwMBhnyI0ziWS7/PWsDHBLePY+LmpIBTRuZIjkQhC/TO5truoL+GGpboiHyb
         ziXjovXZD1lY1Ig+GPED7ruPLBPSXinwGC0yskd///gGEiBpoJzw/DJYOsuqPjaqoyji
         cqaUeND0xFj7zWsXSt7F2fbKfX3JATTANew0oOJ0id7+JSJYqoVnxAZrOydVPWffOGCM
         mZiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hD1bmNxq;
       spf=pass (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jikos@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k4si471314pjt.3.2021.08.20.08.27.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Aug 2021 08:27:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9331A60F44;
	Fri, 20 Aug 2021 15:27:37 +0000 (UTC)
Date: Fri, 20 Aug 2021 17:27:35 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Kees Cook <keescook@chromium.org>
cc: LKML <linux-kernel@vger.kernel.org>, 
    Stefan Achatz <erazor_de@users.sourceforge.net>, 
    Benjamin Tissoires <benjamin.tissoires@redhat.com>, 
    linux-input <linux-input@vger.kernel.org>, 
    "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Andrew Morton <akpm@linux-foundation.org>, 
    linux-wireless <linux-wireless@vger.kernel.org>, 
    Network Development <netdev@vger.kernel.org>, 
    Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
    linux-staging@lists.linux.dev, linux-block <linux-block@vger.kernel.org>, 
    linux-kbuild <linux-kbuild@vger.kernel.org>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
    linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 55/63] HID: roccat: Use struct_group() to zero
 kone_mouse_event
In-Reply-To: <CAJr-aD=6-g7VRw2Hw0dhs+RrtA=Tago5r6Dukfw_gGPB0YYKOQ@mail.gmail.com>
Message-ID: <nycvar.YFH.7.76.2108201725360.15313@cbobk.fhfr.pm>
References: <20210818060533.3569517-1-keescook@chromium.org> <20210818060533.3569517-56-keescook@chromium.org> <nycvar.YFH.7.76.2108201501510.15313@cbobk.fhfr.pm> <CAJr-aD=6-g7VRw2Hw0dhs+RrtA=Tago5r6Dukfw_gGPB0YYKOQ@mail.gmail.com>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jikos@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=hD1bmNxq;       spf=pass
 (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jikos@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, 20 Aug 2021, Kees Cook wrote:

> > > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > > field bounds checking for memset(), avoid intentionally writing across
> > > neighboring fields.
> > >
> > > Add struct_group() to mark region of struct kone_mouse_event that should
> > > be initialized to zero.
> > >
> > > Cc: Stefan Achatz <erazor_de@users.sourceforge.net>
> > > Cc: Jiri Kosina <jikos@kernel.org>
> > > Cc: Benjamin Tissoires <benjamin.tissoires@redhat.com>
> > > Cc: linux-input@vger.kernel.org
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> >
> > Applied, thank you Kees.
> >
> 
> Eek! No, this will break the build: struct_group() is not yet in the tree.
> I can carry this with an Ack, etc.

I was pretty sure I saw struct_group() already in linux-next, but that was 
apparently a vacation-induced brainfart, sorry. Dropping.

-- 
Jiri Kosina
SUSE Labs

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/nycvar.YFH.7.76.2108201725360.15313%40cbobk.fhfr.pm.
