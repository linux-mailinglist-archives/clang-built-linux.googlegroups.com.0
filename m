Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBI7Q4X3AKGQEWBWBWNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id F02CE1EEDD0
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 00:39:32 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id t13sf5692442plo.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 15:39:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591310371; cv=pass;
        d=google.com; s=arc-20160816;
        b=deMxo+SE8dT9ICjXF5n27fPVelYxekNkauVEYKvN3cVb2eSumcjb4pfjQGMCAishAu
         cHH2Tp9vaBr6PAn+MTB1EluN16DJep7HnfNHTt9LrMPs1sXyDdbd2/rQ8sc//xwqMZTJ
         RSkJ09veHKGnfrfGmUx1HihvY9JC7o3+CvN+sf/mFt5Q76mbLeFo5tJpkBZ43YEi1tpJ
         GrhZd5Sxr1rSOqiQjrK1evP4swFvPdBUtfo9GBnshYJJVwMsWNDn7A3eVlfZJ1j7NKBY
         a+Dm3wXLqmBGFH42fsbee6wqJu4YDT2HMpJ5K6EbbnSm96zQQbTkKP0CLSmC3vG9iQMe
         RI9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fH+iCmbEo5CaccZiSF9OSAuJasMr5K6+I1wX48xAK0c=;
        b=mc/07yDQymhnJRw+do2A7yvQAcMbS8vSETBQ/u8UqIFHBWF/6GTsKAG1fsFss3WGhR
         yzOZ7ffCUPgKGJjzuFSW7NOtm2hlqUZqHzVUBArF1YN2jU8rOh0cRn5I0SxFlup0HmX+
         oDpNRfM7PE1SLqlkGTSkRZ/c12QlYaSzXgW6ze9tysupmgABWylzqD8hhNPEE9mpmBqm
         jpAcy6tCY6bnq9S6HA4uWKb15DtSt4BxTrMLeQxs1kPiOhwBOg3dZ2OS7047QNgEqBhJ
         BAvq8B8j5uFv741Yl6nyhAc/3BbUjjsxgaFS+SvMn6QvjlW6T8mnX359E7GLO8+CfuXW
         QmCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=STEhsSBG;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fH+iCmbEo5CaccZiSF9OSAuJasMr5K6+I1wX48xAK0c=;
        b=CRWupM9n/kek2KeSj21dZioZN5em2bDT0bwxGC5LMLyLZ4k8/3Jnu0CvcVz8+IHHwp
         OvwLuItqSNGyLVZ5W1YnYai0CsHjiqAc3mdbPDxSdS0eEPU6gWzpGuZWvIgrQGz4CL+Y
         IfpUWkRL0Vwn2XR7T8vFaVruTkHKDzf27GqVK1jKRW9Ti8dH3E3iaduTIHYxrge8S3tO
         63W2ISZcaOdEuHn6UhdSs/3EiWkJnmLhUo/8i8jffTT4neW3lEmwwB9IVFRML0a539oc
         m3l7cIkfc5ABUXfe8Ttf1Io3hdM1guq19jx7dGgKcKn/DFNpSiCpKND9Rjx267NicLd+
         ZEvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fH+iCmbEo5CaccZiSF9OSAuJasMr5K6+I1wX48xAK0c=;
        b=oISPCr2eM1KZUF+HdoFzl2Y7JHmMdbPR/Iw+8FAektL4ZA/6ii2X74dwNDecuTlL2Y
         Zk3ZS328ixEUnylhI/eL6n/1+vwQgB7BuaOv8YYKQNBTCuKNh8AD72lI7ybY0h2dlx3R
         UMJZYPvKYTrGloaYLIC8iQ5nha9cw/OgCyBdXDvyd4X/Jq78FP/nYZ8nrT8K3Zmj+iOG
         4xl053R/4S+fHNEcHelotO2i6wH2V+hmfjC1dp9omVPkMYIjPBSQewK/+XBiieIlDiH1
         RF1KSK/n2/Ot4ExVEECTX1u5FIkGHbIh7dd1ifBo1f09VAM+sfG6mljmiW11iIHW8DEg
         pnKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YrcgUFuUM7PG5vya2AUbHPGdexEfG3l1yIkIzXP68uxN9HiR+
	hWY7EqsiL676oJGq/PS0leI=
X-Google-Smtp-Source: ABdhPJyGxTJMW9NQq4+zp5spDObJmupJcOJjf/GsqoOR6TWDr8KYfPUyUoU/dc4a2ecsWq0PVzKORQ==
X-Received: by 2002:a17:902:7847:: with SMTP id e7mr6902038pln.157.1591310371312;
        Thu, 04 Jun 2020 15:39:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96a7:: with SMTP id g7ls2231760pfk.11.gmail; Thu, 04 Jun
 2020 15:39:30 -0700 (PDT)
X-Received: by 2002:a63:565b:: with SMTP id g27mr6609265pgm.166.1591310370853;
        Thu, 04 Jun 2020 15:39:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591310370; cv=none;
        d=google.com; s=arc-20160816;
        b=j2S0VFsctFzdbhp9az1I/khKBR5eSQxpRY/7u2YUX3mD+V3SWfoVXr8RGbV43mtNkD
         0tJ5ji3n//5SAMpStz80tvorWMmGQ30t/ak4JNGBZNcY9MAmsOXVt5fV9Y379IFrzjn9
         yOnugr7aH6y9tAHmI8O6kv+uuGEg4dhZUbx0Smksis2R3DbTxb8G3IkD6IRIhQSqsLbt
         rAZFIx09MHl5ZYXB4bHvPpNJi3Avz4GfLGd/+RJMfa2JaePy6xmTrQ1qRg7U73mcnqpf
         IkSd/rHdl+sKeVbF2HpqXv3FUdLnYPhH7I8K8bknxkmg3LII6K+cB/Z/XiQTWngYt1XC
         ZanQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zP55TDVJhIIf3D70exLW80PJ5Fxq6s8zGifToJ/Z0dc=;
        b=eg59ihi/CVmTLsytKoKP0Hq/tGQqIa1N6jn8tvb1DsdbZ6/x3gHkUEVcHPbl6rygMN
         sm9qz3fM2R0EOZ3I41msBBuXlsRvE46yaOqHfSTe5+EnB44hRkqx386Im4RpMgOiU/CJ
         9py62xC8GHfOPIT3G705HrQMzur8cSElZvisSDHRSqhKOSWq/zq2yDoYXnS37JIYO5P5
         BekRqXET6HPUHw0VpRF6cLy8UhxxuO4LJbK9Pdm5v/q4OhSyz4KFqZ1rXpq8Df75EO1V
         fx33ZTJP8wHb4DUBZ4TkVn/MBNRW+7ex1tnEmPgKO+55iKh9zygM1HnVUGPZYsOMS33h
         K7Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=STEhsSBG;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id t72si464574pfc.5.2020.06.04.15.39.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 15:39:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id q24so1846619pjd.1
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 15:39:30 -0700 (PDT)
X-Received: by 2002:a17:90a:c293:: with SMTP id f19mr8170642pjt.91.1591310370635;
        Thu, 04 Jun 2020 15:39:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id nl8sm7407988pjb.13.2020.06.04.15.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2020 15:39:29 -0700 (PDT)
Date: Thu, 4 Jun 2020 15:39:28 -0700
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: linux-kernel@vger.kernel.org,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, b43-dev@lists.infradead.org,
	netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-spi@vger.kernel.org, linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 01/10] x86/mm/numa: Remove uninitialized_var() usage
Message-ID: <202006041539.B8C0C768@keescook>
References: <20200603233203.1695403-2-keescook@chromium.org>
 <874krr8dps.fsf@nanos.tec.linutronix.de>
 <202006040728.8797FAA4@keescook>
 <87zh9i7bpi.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87zh9i7bpi.fsf@nanos.tec.linutronix.de>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=STEhsSBG;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
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

On Thu, Jun 04, 2020 at 11:39:05PM +0200, Thomas Gleixner wrote:
> Kees Cook <keescook@chromium.org> writes:
> >> > -#define NODE_NOT_IN_PAGE_FLAGS
> >> > +#define NODE_NOT_IN_PAGE_FLAGS 1
> >> 
> >> but if we ever lose the 1 then the above will silently compile the code
> >> within the IS_ENABLED() section out.
> >
> > That's true, yes. I considered two other ways to do this:
> >
> > 1) smallest patch, but more #ifdef:
> > 2) medium size, weird style:
> >
> > and 3 is what I sent: biggest, but removes #ifdef
> >
> > Any preference?
> 
> From a readbility POV I surely prefer #3. i"m just wary. Add a big fat
> comment to the define might mitigate that, hmm?

Sure! I'll add it.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006041539.B8C0C768%40keescook.
