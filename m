Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBENS3KEAMGQECPLVGTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EEB3EB9C7
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 18:08:51 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id o5-20020a0568080bc5b029025cbda427bbsf4606872oik.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 09:08:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628870930; cv=pass;
        d=google.com; s=arc-20160816;
        b=lT3yynXDg/ot0o7Amc7W8YFKB0j1uYm60UYv7MH9dAzF9gA8RGveqRoyTxlDhw/oa4
         rdsr/4kFt8VQZJLTaXRe4LdTPL9HTK74ljXjDAPo6Lb3XGHstoCwVrVHnhz6e9H4iwKb
         2nXr2VMmV2DZ590Ph1pRIn2IIidJJlHts10V/FPM1OnrcvHWIXcBTPiC2YyMiypbW/1C
         Ek9rhhEFrMUPo1JLXAg8ZkLWpJxVX8au9h1LLcQLcNKiaadstuCcw9BMKLWvQhJy8JZP
         zDAfBAv7EkXikoauCbFUH6cZSPDbRaXm+BFRsFxdq59MiThs+h/6d2xC3CrY85zIYGG1
         u5JA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0HweKzD5kqq6INkVpeimslo3y+Qg533SLaNCmmn/PGw=;
        b=q72vSYvJcqeMb+tUSLJUBKoxx5XcTH03lo/CCoy/Q6fnoi6AsKdfq0g80E2mxKskVt
         Esqf4PwuzBZMf/2NVKa1BRBI1hEy2l63f5/x/bcxiqJph/2ZWDy31twV+976jsWe1CDe
         1VZEZLGKE4TKqE1YP5HkQ7B7/MShF+UVw2OHBF6bn5ovOEp9AYgJBxZpAVuXzjnhZeur
         KO1UXLXIKwXRjWcTMxBuJk0cCIaZcjbsjkYtsHJIChNHIeq46K9Vy6Qk89KajmELRnYf
         I0G1dudsmocjk/nMBV27SgbkyolQ3Le1fUh9qN7G6hS2vS2+pARMIyDmdLNXcZNZEW10
         wPgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bt0deawY;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0HweKzD5kqq6INkVpeimslo3y+Qg533SLaNCmmn/PGw=;
        b=Kmm5BPB4KPm1A61USyOk9yYx0AcJFwQrF4T+MQ4Ita5RXuFI8qTxsq9tE5ibYqppiE
         b/c11rNJifQ/euZeh+XDQ5ujB1tVsFEejdtYXvKeNblDyShmqoWRZsdJBGpubn5saiuf
         uqCQnx4Efe3mWRbPbChYIknIKbQplZdKEZLBmxGKEipGY6CbhLCwhFGFooJYdPR3Of7F
         Meppp//MlCusX8x8LzvCDMtqENad/7xz5PiI6EidLzbmzdEC+uyeQgIkvr3flGZKFHDw
         uQV7jdSNrQvtFFgKNt6tpj2BtlhHkXsADQUQ5v9PzV43l7RC8XBC+CV0cJ3Bovq0Gnh7
         WSfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0HweKzD5kqq6INkVpeimslo3y+Qg533SLaNCmmn/PGw=;
        b=V/kQYl0I2uHenxnKe+CfCx8mgKhMpj0JOg21FASkejoD32Nckig5gm3F0AMYEO8E/y
         SQryV4/iaFwW/DLW1hoHcEBYiLMl1eVmG/7m9h0x7Kg7Gr9ohyvQYwvxagK+LVJICeDc
         lYAt4tg821HvN/xZC9eEIKRxOZjGM7ZiaBj3cGXQFHV8FQEVhR/Dzvp6PnjRoLU5NMWr
         l0i4zb844ypEeeKg9xuBBR46NRyEpeNBVNzX+Wm9/xXZAWqRhtfvHo2uSIJ5mipMWmfh
         mRoBr6dvYReEOI6CDYo3Rw0A3mbR8ls+V2PDtx41Rcjbp8H4OGYSPTUFYtxFpmOuJWj3
         Vh/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532WGEE+OT04gFI+IV1YQ2KFidozPxmAJK/GGixOTJ9BVZGIXDq3
	wvQ5MyUt3NzkeIj1p9x5HTg=
X-Google-Smtp-Source: ABdhPJzP60CfyJ6efXtQwAyqKycPIwHxgB4TeV2f5bcXlg/g4WfqhJJZDI/7SkXgxSMoCRF4I9k7TA==
X-Received: by 2002:a9d:6388:: with SMTP id w8mr2724013otk.229.1628870929792;
        Fri, 13 Aug 2021 09:08:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:24b5:: with SMTP id v21ls508196ots.4.gmail; Fri, 13
 Aug 2021 09:08:49 -0700 (PDT)
X-Received: by 2002:a9d:4105:: with SMTP id o5mr2665587ote.20.1628870929429;
        Fri, 13 Aug 2021 09:08:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628870929; cv=none;
        d=google.com; s=arc-20160816;
        b=T4ildm+bUpjyz5RN1n36ASZTjRGJZBldovgfhZCfBU9XGF4yCkOFI7MhwPifn12Xb+
         KowKIp3vBjGJmQxNOI4c7eX4cVgeIBYNo2jVlIZ+MxI3Jlvrdv3YFv7+sxWb7cTeIyZT
         YQ9hlGEv6tX0takUsBqmnBnmq4hrglzL0N6//QUhuQtMvJdIqJxdnbFEnGQeVTx+XENF
         HxbhpZw1V+o+m8BGn6n8qsiW2JiYguG56ePQ2JLKwVDbgoUeSVyhRCa4jB3LScXG4egH
         9LRApIzWBG2BaLTN73ikw8M9gxxMVpq1O1sBwpProl2Xd/rAeFt8B1saZ7NjCo+R6LYv
         eadg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Zb6hESOPAPpsYQTxj6uunL70me57Ohn5RtlRGa2hRIU=;
        b=I9/5edYUgQ8CfvE30MgybJc9hOEF1oHIWjKXymRqpSRpumPD65p60hnmYb5uOgnFW8
         lSjrqD62ayyjkPARZfwRv6OnbKf1D4Cg/ZkV1B4HoKAFARqBjMntqQ38ru3XK/KaLDM7
         DxGlpE7sNp5Alvk9ZpLN/2Ia/orxMnwiqo4pH0QYNWb23vRU4gBZg2b0OclWPD3RHrBn
         W7tUUMTAa0P0e3S8QOkU4W6o884tBS/754oI4IbOvzayf9ZwHpa2yGy4MSTNAQ9NIu7g
         CCkGj280bBXl2jl7IFiERNfzoIp/7d0+pU0714D2spaTbmUekYfsCP6BfjudWOwmN9tT
         LKuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bt0deawY;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id 72si166124otu.2.2021.08.13.09.08.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Aug 2021 09:08:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id e15so12557612plh.8
        for <clang-built-linux@googlegroups.com>; Fri, 13 Aug 2021 09:08:49 -0700 (PDT)
X-Received: by 2002:a05:6a00:1803:b029:3cd:d5c1:f718 with SMTP id y3-20020a056a001803b02903cdd5c1f718mr3121899pfa.22.1628870928766;
        Fri, 13 Aug 2021 09:08:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y64sm3224461pgy.32.2021.08.13.09.08.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 09:08:48 -0700 (PDT)
Date: Fri, 13 Aug 2021 09:08:47 -0700
From: Kees Cook <keescook@chromium.org>
To: Johannes Berg <johannes@sipsolutions.net>
Cc: "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH 39/64] mac80211: Use memset_after() to clear tx status
Message-ID: <202108130907.FD09C6B@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-40-keescook@chromium.org>
 <202107310852.551B66EE32@keescook>
 <bb01e784dddf6a297025981a2a000a4d3fdaf2ba.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <bb01e784dddf6a297025981a2a000a4d3fdaf2ba.camel@sipsolutions.net>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=bt0deawY;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636
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

On Fri, Aug 13, 2021 at 09:40:07AM +0200, Johannes Berg wrote:
> On Sat, 2021-07-31 at 08:55 -0700, Kees Cook wrote:
> > On Tue, Jul 27, 2021 at 01:58:30PM -0700, Kees Cook wrote:
> > > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > > field bounds checking for memset(), avoid intentionally writing across
> > > neighboring fields.
> > > 
> > > Use memset_after() so memset() doesn't get confused about writing
> > > beyond the destination member that is intended to be the starting point
> > > of zeroing through the end of the struct.
> > > 
> > > Note that the common helper, ieee80211_tx_info_clear_status(), does NOT
> > > clear ack_signal, but the open-coded versions do. All three perform
> > > checks that the ack_signal position hasn't changed, though.
> > 
> > Quick ping on this question: there is a mismatch between the common
> > helper and the other places that do this. Is there a bug here?
> 
> Yes.
> 
> The common helper should also clear ack_signal, but that was broken by
> commit e3e1a0bcb3f1 ("mac80211: reduce IEEE80211_TX_MAX_RATES"), because
> that commit changed the order of the fields and updated carl9170 and p54
> properly but not the common helper...

It looks like p54 actually uses the rates, which is why it does this
manually. I can't see why carl9170 does this manually, though.

> It doesn't actually matter much because ack_signal is normally filled in
> afterwards, and even if it isn't, it's just for statistics.
> 
> The correct thing to do here would be to
> 
> 	memset_after(&info->status, 0, rates);

Sounds good; I will adjust these (and drop the BULID_BUG_ONs, as you
suggest in the next email).

Thanks!

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108130907.FD09C6B%40keescook.
