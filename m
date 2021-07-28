Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBKELQ6EAMGQEX5BNUSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1863D972E
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 23:01:32 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id z21-20020a5d84d50000b02904e00bb129f0sf2442069ior.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 14:01:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627506090; cv=pass;
        d=google.com; s=arc-20160816;
        b=EOKdCTpIVLq4yMpO4footFdK5xeVTciRXft7F9WfhCtmVPMkzjyZcfWDw83qd8HJrk
         4BXxzjd0uH0VnjGZpv32x6nCMUOrggubOCv0sp63suc2m+RBshBO4iPoQROBPFZAR+lS
         BmhUc3hkwAJBXCpOU4x/wbkzP2V2ObZqqK8JTIGRkwDDsCoJc5bieH7CVarXt6lKuBGn
         ayJIP+Al6pT4Mz1xuiOhxQOgoXuEUnAkVKn4lYNwmHTwvdF17XotrSAdVRofFSw3/LpR
         RXN1A5QSqKp+haTocwSEfhFZ2VYZMqXO+8A6+JKUGK25/Kn/6Ssgvc8gNvbk4nl/DnbR
         wxsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9FLjlcFeo+Vfq3P4TbyZ8WGsFQOQyz13Rcj+zYh0AUo=;
        b=Rmk+HSklVLfviifdDzTUobqH5wwCQK//GXo/lrus8Se2jgIJ9y50QAnR+Mmi7rTqo8
         OPcSH5sV8lzjo7naTpOVjrJWtkPG6K/yqp8vnfxHb2T68h/vi/Eb8c1gm2c3EkyrQXFH
         /XItdGOSKdMzlIPBtpwHAQi+BYV9lem4be5YXJiZjyTNhvx3OlpHNoSq6AyB5j7twrsn
         Tp1RRezhjv7v4KGJv4e5xfLIq3DakyCnT80Ua7TA5naFH3Zyg5LVtrcb7rFpcorOcJnL
         B5BDdHh7HY0ZgN2Gxv43/gf2TVv85GASvb7bP7zLqjIuDKi5bLC4xM4H3KnLSjn1vALV
         tP3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hg+gKirQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9FLjlcFeo+Vfq3P4TbyZ8WGsFQOQyz13Rcj+zYh0AUo=;
        b=QHqDvhn9fPN1zznNHpiIMz2tbyvSkBo/a2FxIIbd1orQhavBUkmLjfBiBUpRzCAiaD
         jlTF97p58atAlJ4YFtEjF5SMdOfuL3F9eziwtnfnAP7ZqbK00frjV6P2ul1j3qdz3Fat
         nM3StLUs5a5QjeUIY662qMQnOFEg3MI4FV0PGlifKqI41Fk4ctpblBOxrxgDC8dA4toc
         4PHj6Akh9QUFjW50QpWSdsVTzxQc1Xn0OT+MMs1SDzHXLakHu+V2pnCsI4+gVGgEobAf
         sRGX3NgRLSQ8bTua7VKnhWRhiOLtSq65XczNQIckPkjZzPCYwdsgbZvq443J0KfO1ak0
         2rtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9FLjlcFeo+Vfq3P4TbyZ8WGsFQOQyz13Rcj+zYh0AUo=;
        b=WS1OVvfEHD+ER0FToSc5IuBHKJ2GoS9qOIl06D7BnIYAYb4n8orvp/z3mLHQLCm0+E
         B2IySMRn1CTvAJTTN/cvHPh0edF7ekFXYWawzFRKWvJeeHAZFYQ6ed8ZmEQVGUZv1TrR
         PWOu0klelmoI66JAtQ+uI1Ws93C3701cbg/VxQY7PuhRy/e+ujg6QogamG5GO/h1HcsJ
         pgtBGiJ5Mt4hEdf53uIGC0LYAqSyttgK0WVoCKxkezPQn3HQNoNKPV+h8rrlERjPu35J
         kvj7v0RFW9UsABK1SiyVBPEf2AlsaCBvvQUn7VdmBWT6rk1MZkfrbN4oieqZncybd0j4
         0x9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Pfp4gqAcsnzua9sD/LzcKjIrH8pSmhYjM2ahaHW5ooTlv3KRF
	ysauwRZvdqd1NrwulQgOdEg=
X-Google-Smtp-Source: ABdhPJwsP1ZkTlJVTRjbyD7WqTsu8MIVYVZ2X3TmqyNyhbvecfI7W58bxUHQ4LUJRkasbyW6xb4bLw==
X-Received: by 2002:a02:a595:: with SMTP id b21mr1456810jam.122.1627506088597;
        Wed, 28 Jul 2021 14:01:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:240e:: with SMTP id z14ls521401jat.4.gmail; Wed, 28
 Jul 2021 14:01:26 -0700 (PDT)
X-Received: by 2002:a05:6638:1646:: with SMTP id a6mr1461755jat.1.1627506086824;
        Wed, 28 Jul 2021 14:01:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627506086; cv=none;
        d=google.com; s=arc-20160816;
        b=rXrpVoYUA0Eh4P9FWVcGn85SPOgx9FUZwUJ9bD5w0Yz28BYs+GK7UOFjLlwihYkbqc
         JPpWYBVKPPQS+6Bgu0L83b2pyaO4sdJJU6C3IBVbvXDFLM1ZTQD2DWzfriY41U/jdQ2I
         s0m4wsHEClP4rVAnCLSxRsZqlkX9QRB2mBMk9OJVYIV97CbM+FKdVEVfQpSMaSvSImIz
         97eBkZuxf3cWunqxBkCl/N4eHGur9d4c+j+rLZNYqdgwCOh//FsAm6/eJIikRuP1YZns
         4u13hiGz8uWl2MydLoVEFlHh8xncG7MA5W2J1ZYzg9aQfRfyDIt/CcBgPvR2T+oHnCZ4
         MTlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=v4TsexyUVtPmnWQp8z0vQybdqGDFJ+IKH3X3D8imsE4=;
        b=NvyEeBXqSgCCNx+IyDNbhKoDwog9WlUaivwhgTFWMMokl2aq9t4AcNGqQGf2+c5w/d
         FupxRa9+ZB79bbPY0Xq4b9RK1eTCJ4g24rFCElEVkBz6i9Ohnx2CVX5Z0vNSxSWUyw6R
         fX1yrnfg+Ny2QTUGBlPoYFsJgfon2a3ZYnwwZD/xdPXnNwDGGqWKDBlREf1+IwiCYmtE
         tPxoabXnz++7+s8Qb59mZ51Qz5WMx4C3ObgHXeI1bQM9U/gukRjeuBcttChp69jiElj8
         1BLZ2E+u1Reufr5JEHgCKBqJ+3MOUMyS10dgUUzweiT0/KDqK/oBTfYnhKugpP/jyg7/
         Nb2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hg+gKirQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id q12si58744iog.2.2021.07.28.14.01.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 14:01:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id q17-20020a17090a2e11b02901757deaf2c8so6125951pjd.0
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 14:01:26 -0700 (PDT)
X-Received: by 2002:a17:902:d717:b029:12c:1653:d611 with SMTP id w23-20020a170902d717b029012c1653d611mr1508273ply.51.1627506086388;
        Wed, 28 Jul 2021 14:01:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t3sm932392pfd.153.2021.07.28.14.01.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 14:01:25 -0700 (PDT)
Date: Wed, 28 Jul 2021 14:01:24 -0700
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 19/64] ip: Use struct_group() for memcpy() regions
Message-ID: <202107281358.8E12638@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-20-keescook@chromium.org>
 <YQDxaYrHu0PeBIuX@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YQDxaYrHu0PeBIuX@kroah.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=hg+gKirQ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1030
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

On Wed, Jul 28, 2021 at 07:55:53AM +0200, Greg Kroah-Hartman wrote:
> >  struct ethhdr {
> > -	unsigned char	h_dest[ETH_ALEN];	/* destination eth addr	*/
> > -	unsigned char	h_source[ETH_ALEN];	/* source ether addr	*/
> > +	union {
> > +		struct {
> > +			unsigned char h_dest[ETH_ALEN];	  /* destination eth addr */
> > +			unsigned char h_source[ETH_ALEN]; /* source ether addr	  */
> > +		};
> > +		struct {
> > +			unsigned char h_dest[ETH_ALEN];	  /* destination eth addr */
> > +			unsigned char h_source[ETH_ALEN]; /* source ether addr	  */
> > +		} addrs;
> 
> A union of the same fields in the same structure in the same way?
> 
> Ah, because struct_group() can not be used here?  Still feels odd to see
> in a userspace-visible header.

Yeah, there is some inconsistency here. I will clean this up for v2.

Is there a place we can put kernel-specific macros for use in UAPI
headers? (I need to figure out where things like __kernel_size_t get
defined...)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107281358.8E12638%40keescook.
