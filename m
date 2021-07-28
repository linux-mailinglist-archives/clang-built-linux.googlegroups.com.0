Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBLVEQ6EAMGQEQUBTPGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 133323D97DB
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 23:54:56 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id z17-20020a17090ad791b029017763b6fe71sf212563pju.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 14:54:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627509294; cv=pass;
        d=google.com; s=arc-20160816;
        b=TXJTm75qnyMxXDB1y6CaU6e6uAEU/k9LfUZoNiejR4Ra0VXy1hlmG2YXGkRFAFNwoI
         0h/17guOm2q+2mmx3QIrqkeIuExMxjKdKYXIkT/ewRdYoiJ3TF++r0lR3rCYupGr8gQj
         RBr0z3nPr4q5zq+9TlPpJuwmBEo6gitZ4OTMvKRC/RbM5hUqftmMQfZH10yeBJhBuGSz
         pv/VYbSHFsP2+rK4f72jr7Q76v3WHkFmfnP5nIzLX0BsGaianJMFeXEYo1oTJgLDVxAO
         F+mTes4PS2ioNwMyXvWNSihkaB+Bdk5HIQsGa4Lk0roHxrQFoB8HFcJgwLrNQhSpdgYK
         JYPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender
         :dkim-signature;
        bh=402bP3JwkIp8pd96YPob0IglaKAZC6FU7lZFKTwdGVw=;
        b=w41t5nxrJHawPrk1EaLJf6RFSusTL+0CY90MUfEl9SMa5dHDvA15snwO9bg/bAX5ZF
         CS543mUZ0t/H8zxwM+UFUUHp4Q+DJGwE2zfB22qgeICDVSpGTryKGwEh4QZzTv09U4J9
         1iUmNOJ8tYlLwjVvRNQocsZg5vioqdJz8NG5W5Re1ybMouvdXLEMeiwXGlDcJ9UfeXZ6
         5mUZXgdaKM4e9ApyvtUUsp1ILa8W8QHICQ58gWIFAVe5glp0DTBDqANwrLhBmAyxf7xy
         NGdTT5/JYmJCiKioSmcXBLx+T5v+bFpTUcaShxYvJf725zzePKPtDQSYQJSlngJwyo5w
         oTgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Ssr+bNcE;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=402bP3JwkIp8pd96YPob0IglaKAZC6FU7lZFKTwdGVw=;
        b=Q3YOwxaZuJPuabDTLjw/0nb/6KZf+4VThhuGE6r75gAX3MpME/VFwBizOaGNib1z0N
         jLBqLAcvQEQCU2FpQPAw/N3CB41uhM3Gfy9KzC7Ziv3FrPYoiBUtjqv50xSVRE6bqzCz
         40vgFN5BG/6HvQGPrCUpBaib65BzqjcKeW7Pt9YzD8UVVCeFpjU2SlTcb58zaNxIu+Uw
         +F+X2s/GKaGII/DIcsAhY2E1iKCbNg7UsuwUH7BGw7pGkEueEgC5od5uvBkk8WTlwIyr
         xBxiq9fSQiIb5WHRMzs/vOyxnuNN1y1fTCRwdTFdT/VsNqfJxGLTysVjIdWnFc7fInDA
         d/2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=402bP3JwkIp8pd96YPob0IglaKAZC6FU7lZFKTwdGVw=;
        b=mQPIpwtiE2mQvafY1Sqgxji7O1m4tqyQvi6U/X4ghgnlWJFk1VHFxAD9NlATKKuIz+
         EwSdsGCq6wnto7po34W4go7K6ErOmLvNp3MF01bY3paJv49W5e8EULn2Q7CtsyD0pmtv
         LgY7cUsfVv6l9WUXyaDwFm1hqofkjMzzBfnbWrlIF7kikOTMAqBFiME8WtqK5W2ERVDc
         YylJ0GnUhpKNfce6kzeGorXNe8MoOIaC/3hM6ZLPTeUqEcbkcT3AMOaQqid8GIZ3bKkx
         hYxYcrExWF4JvQe2tl1TZY5YTwX/zLkgDK1YtH4OVVOUBPElUY7VGoZXCP4XJCRjg8o/
         Ctew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZQH7tbIgrfrO5BEUXHWYN777REQB841ZFN0g9ewRxisCOnG6B
	GCdfphcWvt/SY+t5hdLhxwI=
X-Google-Smtp-Source: ABdhPJyuvS2mxNb9g9vpJ/PfdFk6hFcFbCGgc77C8wqzKqzyd56ignTaFMgpuGJ3j4VpJGbEO7XHyQ==
X-Received: by 2002:a17:90a:9308:: with SMTP id p8mr1843599pjo.119.1627509294715;
        Wed, 28 Jul 2021 14:54:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5256:: with SMTP id s22ls1964123pgl.11.gmail; Wed, 28
 Jul 2021 14:54:54 -0700 (PDT)
X-Received: by 2002:aa7:9ac9:0:b029:377:8e8d:910e with SMTP id x9-20020aa79ac90000b02903778e8d910emr1712641pfp.28.1627509294163;
        Wed, 28 Jul 2021 14:54:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627509294; cv=none;
        d=google.com; s=arc-20160816;
        b=jPLrKm81nk6UzM6Rn/rUMGfa3LMaktG6zg6fjUwYSOBLAVJ8+TCS7ZGEFDGzIWVZ7D
         m1rv32v9cQAe7fy5ROFK5qnPxiWNZCRn/ynB4QxSu2V6+o7lR5uZghjxp/1ohQ4xhcsV
         OFgLL++V9ddOy6/ABO6KWR8kjBdZbRA+BxY2pvrnbLvo4TF0XinAm6Hcg9+38QZZRoc3
         gfuFW7cBQ5EqFZjYN4Zi4plLM5iU23ChQeYAU1P6u7+XyIpYlRhgFefnIfD7yI62NkgB
         lpNJP/d87hlzxFc+JBLSVrjOCSfLjpi2v2u21R0LpBiGkgCJcxtWQo+A+hPBsZBoYkkT
         MjUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:dkim-signature;
        bh=PvxV9gHhGKtdfFaQjqk5AbqIjKjaiVpsJxDp652BEFc=;
        b=0flc4qy6JIVom3vL6Yf++fUp8p93GkfGkXz6LahrTwpyHb6pL4T7DfL99r0ho6hy/S
         pTKx25PHPIJNoQz4W1dQ6ND+JHnD9s+dvkpV3/YheyuLdvbWBvjyHUWobTp0IagKABcg
         LHQ4553XvK3Z1Go1fdoD13aC2PXPJFKvngebrgwNE0uYdlt12G+xM3ItyD5yb26DIcNB
         mYg+gx8a+oWHnVoxprE0+pKfmWOzDkyER6ygpUIig288U9v01HNkp+QUlzEWJtm4tH8b
         7fgr2OZ1ovxP60R5gmk9kFa7tu5ehWo/eiL3X8h/9YHUQDZ/R8PCOVs0FYwQWiXRYRNg
         QlcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Ssr+bNcE;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id 136si65759pfz.2.2021.07.28.14.54.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 14:54:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id ds11-20020a17090b08cbb0290172f971883bso12329452pjb.1
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 14:54:54 -0700 (PDT)
X-Received: by 2002:a17:90a:1109:: with SMTP id d9mr1816360pja.183.1627509293927;
        Wed, 28 Jul 2021 14:54:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n22sm1014921pff.57.2021.07.28.14.54.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 14:54:53 -0700 (PDT)
Date: Wed, 28 Jul 2021 14:54:52 -0700
From: Kees Cook <keescook@chromium.org>
To: dsterba@suse.cz, Dan Carpenter <dan.carpenter@oracle.com>,
	linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 02/64] mac80211: Use flex-array for radiotap header bitmap
Message-ID: <202107281454.F96505E15@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-3-keescook@chromium.org>
 <20210728073556.GP1931@kadam>
 <20210728092323.GW5047@twin.jikos.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210728092323.GW5047@twin.jikos.cz>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Ssr+bNcE;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c
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

On Wed, Jul 28, 2021 at 11:23:23AM +0200, David Sterba wrote:
> On Wed, Jul 28, 2021 at 10:35:56AM +0300, Dan Carpenter wrote:
> > @@ -372,7 +372,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
> >  			ieee80211_calculate_rx_timestamp(local, status,
> >  							 mpdulen, 0),
> >  			pos);
> > -		rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_TSFT);
> > +		rthdr->data.it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_TSFT);
> 
> A drive-by comment, not related to the patchset, but rather the
> ieee80211 driver itself.
> 
> Shift expressions with (1 << NUMBER) can be subtly broken once the
> NUMBER is 31 and the value gets silently cast to a 64bit type. It will
> become 0xfffffffff80000000.
> 
> I've checked the IEEE80211_RADIOTAP_* defintions if this is even remotely
> possible and yes, IEEE80211_RADIOTAP_EXT == 31. Fortunatelly it seems to
> be used with used with a 32bit types (eg. _bitmap_shifter) so there are
> no surprises.
> 
> The recommended practice is to always use unsigned types for shifts, so
> "1U << ..." at least.

Ah, good catch! I think just using BIT() is the right replacement here,
yes? I suppose that should be a separate patch.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107281454.F96505E15%40keescook.
