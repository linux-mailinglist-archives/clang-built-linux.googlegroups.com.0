Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBI4676EAMGQEKR2VGVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA793F301B
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 17:49:56 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id r5-20020a92d985000000b002246fb2807csf5616302iln.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 08:49:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629474595; cv=pass;
        d=google.com; s=arc-20160816;
        b=lf7AB0zsBbfwWmAcHAcNgc5S0RjB92flhlecN897GLZ0irlui2bp3VN0mMAjwc1MwA
         rAPVATAFf3HP5lRdzUhBTeOmYkOB6uxq354GREZ5t+9B9Jc6Yyc1p7f5XZ5umtT/sl/I
         E0JVAigJT8v9cZbPIgML9rH/fQNFUbh2aBhjD4wRh6sRwcZYfTke41853CDxa7l+lHIR
         ETWNVQiXxbO53zJ9nVvxWc0w4NRUJlrUBs44TTq+j5puSm1aIbTR3tdMzPlssYUouyNC
         1MSDjSHNH0Riwf9f6kOkjRo3wcEP6lkFauZzqTZaIuxMrL8c40wT6tNq/nbnnRHfQRQu
         K7BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=AMCzVMTMnQljvzK6PPhdcvYSwJn6S9VzrlWZAO+PTb4=;
        b=HTzENlt8GE82ofOvHLSsLhdm2tGSh0aLojGCpE/rdPbn7Rk33ifDJYrNI8D7QhAxTe
         QUoOd4QyWqxNrJPUcqjD48N4oEOMUPrtWUkvpWD5VoAJmshscPVjmJdUpUeqWdJuYWHK
         PQ0YpsSjQ2/9gf8QOpq6V709fg+SJRIXvt1QIrIcXtD0HUnSzTBC+anHV3wf7Vyg7PdY
         7XvOmjcB/9XA2WLvhTLtoik6YWF6VoGhKvhEwVePb8v+oGi6uu90S/Km/AG9pWJ/Fh+a
         ENDiRBKmL4YL1SRxferKYadoOt0bU+UrttCHgExFiLZJgWLPGSMBD2tUe40SL5nK4USn
         4HOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=k4UQQteJ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AMCzVMTMnQljvzK6PPhdcvYSwJn6S9VzrlWZAO+PTb4=;
        b=sI0a5NGF9MXP/6uiYDflJXX0sZkhxacccAdT0UDeazYLJvTuJ1Ut0zsgSPMErTbGeM
         DQNeMMkmgfA/cmVovHI9utIbVJGceRgRNvPKHlT88ahAjhAJxLHl+w5Dlt3Ifxqu9+bu
         2o17bbaimC2GyWV6hoQYdI7g61CruFRVHrfXyqZu84ii+A14MOGRg6mzLpe7bUY2z2KO
         AfZBVoOHf32+sWyAbm/0Gp+Vl0b6QbyXDHriomwlfMEAphX7gixTSYF42xqapQCCLfNE
         4Rk9eHnWkAK/HUscRgEzTtvqU4FdNyfZGsYqRrSTClX9TMqCb3yZF4k16dKCl9eyUZCs
         JhaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AMCzVMTMnQljvzK6PPhdcvYSwJn6S9VzrlWZAO+PTb4=;
        b=WeLbpZp63dipgUTb39w6aALmJlQaBJGjsjqvfYMBt4+kyYZuuRyOjh0kQIUNEB0/Oo
         Hm1la5X//4BAwqUMmXLv214nQj2RNbxYuJlmVp2Cg1jxTIyU+CcWAmIFRfyE0S4hVOrj
         CxuRt+OrETLnpFtLqE+FLNmnXr58uDzqxZMKbAbqIb+hnmK5GEGfjFlHFuxPFkKD7ymt
         2j99+qJTFdQ3CXUl2DyVM6BjJfv2gXj2WsVbLBQM7+uIJVs8v8Q3ggWm2N0Xn8EBMgOx
         BdQHyXPp/tPkHI/DNB9jLluvEHkeRBec0AqTXWMKbc7b7r9q1wscmzM8AEIAAdInr5Fl
         2k5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532p+NmRIQujToJmpa6FlsnN9jRtbThQlrQEHnRPbxDx6nbzzOhj
	tPL39mwBnRRzZzBUJMna/QQ=
X-Google-Smtp-Source: ABdhPJznKsJkoB09zgelbUA66PG64WIrdZ7xMAwb1dfxmB4+95wsivZYmfXiZAUsJjwwBlrLjPG+dQ==
X-Received: by 2002:a92:de46:: with SMTP id e6mr14449978ilr.273.1629474595432;
        Fri, 20 Aug 2021 08:49:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:20ef:: with SMTP id q15ls1941806ilv.2.gmail; Fri,
 20 Aug 2021 08:49:55 -0700 (PDT)
X-Received: by 2002:a05:6e02:1aa8:: with SMTP id l8mr13508665ilv.226.1629474595081;
        Fri, 20 Aug 2021 08:49:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629474595; cv=none;
        d=google.com; s=arc-20160816;
        b=0JeaU6MxsAebb2zS4ZAPVWSOMmGffNBeep6sqhOtf1S05q/3krUqiBg02qhYcB6f4o
         GJ+mMDIF7ITMnYQIfo1A6JKr3lZm0y6rbNn+365TmjkQro+Buj4xKAQQDB3o/S+9IUmq
         ewK9q39n5W0rLKc6a+9o73SBNv0+bSGUDIMc9u0MIfGeoFlxC/yvgmWIDx89sHKmEfwd
         Flf/kC7o2d5cgu/qf4uBVknzo6DfYQ35Byxil/wz7Cu714WglaxqDhJV9uVoTBdD56h7
         v3owHstw0PcCJHJlabt9XjfPbfd0yYW/2W/C0PU8JJO0J1sn56n4qcDIsBG661pyMPsX
         +DYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JP8WFZmb9rgUa+mH2LJuzuE/iABY2L7RW9PxVxSWy1g=;
        b=Y31MzC6p3Id0jr6PAsNoA+SUhMNh8ozahoHlK/zVkFZg6F3dZVs2FYowIgziYeaL/6
         OLrKa3wzACQAqRCH9vi8/a6GjGO1qQvFuSe5QP6+a00myGO9aiOcFdh5Cks8L8c0cGI0
         5H1Kt8Ri/QqtEcjgJbETCs3eZyhhBNLqok3zVFYYT/TdW3BEANR1XC5ZE26dEKhFMIxz
         QyH93moVJzkounJA9WnepCX7cqNswROn4gl0VmQw+XZ4g1plIXEabASg+Nnu6DiSZcS4
         2wRdI8LZ2pZXuVIuXbBlqUsnk3BOIDNR9YF4iN9IQArGCr/pulOkO5LCy/topAqsiOQn
         +Qdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=k4UQQteJ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id e12si404454ile.4.2021.08.20.08.49.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Aug 2021 08:49:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id fa24-20020a17090af0d8b0290178bfa69d97so7611098pjb.0
        for <clang-built-linux@googlegroups.com>; Fri, 20 Aug 2021 08:49:55 -0700 (PDT)
X-Received: by 2002:a17:902:7c98:b0:131:21fd:3717 with SMTP id y24-20020a1709027c9800b0013121fd3717mr2602853pll.53.1629474594147;
        Fri, 20 Aug 2021 08:49:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q18sm7564913pfj.178.2021.08.20.08.49.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 08:49:53 -0700 (PDT)
Date: Fri, 20 Aug 2021 08:49:52 -0700
From: Kees Cook <keescook@chromium.org>
To: Jiri Kosina <jikos@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Stefan Achatz <erazor_de@users.sourceforge.net>,
	Benjamin Tissoires <benjamin.tissoires@redhat.com>,
	linux-input <linux-input@vger.kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless <linux-wireless@vger.kernel.org>,
	Network Development <netdev@vger.kernel.org>,
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
	linux-staging@lists.linux.dev,
	linux-block <linux-block@vger.kernel.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 55/63] HID: roccat: Use struct_group() to zero
 kone_mouse_event
Message-ID: <202108200849.9EBF036376@keescook>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-56-keescook@chromium.org>
 <nycvar.YFH.7.76.2108201501510.15313@cbobk.fhfr.pm>
 <CAJr-aD=6-g7VRw2Hw0dhs+RrtA=Tago5r6Dukfw_gGPB0YYKOQ@mail.gmail.com>
 <nycvar.YFH.7.76.2108201725360.15313@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.2108201725360.15313@cbobk.fhfr.pm>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=k4UQQteJ;       spf=pass
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

On Fri, Aug 20, 2021 at 05:27:35PM +0200, Jiri Kosina wrote:
> On Fri, 20 Aug 2021, Kees Cook wrote:
> 
> > > > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > > > field bounds checking for memset(), avoid intentionally writing across
> > > > neighboring fields.
> > > >
> > > > Add struct_group() to mark region of struct kone_mouse_event that should
> > > > be initialized to zero.
> > > >
> > > > Cc: Stefan Achatz <erazor_de@users.sourceforge.net>
> > > > Cc: Jiri Kosina <jikos@kernel.org>
> > > > Cc: Benjamin Tissoires <benjamin.tissoires@redhat.com>
> > > > Cc: linux-input@vger.kernel.org
> > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > >
> > > Applied, thank you Kees.
> > >
> > 
> > Eek! No, this will break the build: struct_group() is not yet in the tree.
> > I can carry this with an Ack, etc.
> 
> I was pretty sure I saw struct_group() already in linux-next, but that was 
> apparently a vacation-induced brainfart, sorry. Dropping.

Cool, no worries. Sorry for the confusion!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108200849.9EBF036376%40keescook.
