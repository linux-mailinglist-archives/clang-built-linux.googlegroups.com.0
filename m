Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3WIRWEAMGQEU2RZSQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4D73DB122
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 04:31:12 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id c1-20020a170902aa41b02901298fdd4067sf3774298plr.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 19:31:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627612271; cv=pass;
        d=google.com; s=arc-20160816;
        b=cES2c5ddh62j7tvUo8djkmuG2w/z+I+ROSfrGG9DYm/2p5FzmP8xCsEWZfUjNNh0Vy
         Z2Vsegdng2avOJZovwDojhwEuzu1HRwhonFefWZPYKmpZYD34n2+5Z2QVkxvL+yo5DML
         cYAPYb4RNMhBug736XsygdaTut4lR4Uip9SlZBlisNR/ZPeygUdZDg8OL7S4AHmMZxVZ
         af17nqOkZFRVFf3AkOX7BMljvQfeTI8qaDlr/5HAe7sibEzH9/nCRz862IfDNxBpxeU7
         URHuR8ZYqFAuSyrRIFOUrX42o2JhyfTUEjuWlD3nX3kuiQwuB50RxxzZP0tlhOmniZaU
         o8kQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ykbvsta+j2Hz6zmrFdWjp9InLg16iKETddPdoYJV+uw=;
        b=rOjBXnbrw3vMEN3LqfsUFVZSsLT47nGXBc52+pohbjlJ4Ktx+07WQ6jimFv0Q3VzON
         ATawAbXZMErok04ieFxk8KiG+0106beLXRrouMjevutK6vXiB1g9gYgW69lqsApefxaA
         SD+zdXk6K31PXltUr9qLjAFWIK/VF+ijddnmWNcSIUVlBaICgXNEt3chmik2iPOlx8xI
         CZdNlXHGibvYoYrck2FUK7UAjXdfXSJquMw3vcVkBW7DMd1sdz8jSmgEug074gB68dPi
         Wl4Witu+S5kzVwFawPCrV8P9CoveIdUlB5fkoHcWO+5Nf0JWUHC0wvVR7eya+luDbLx5
         7VjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=etYre1Aj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ykbvsta+j2Hz6zmrFdWjp9InLg16iKETddPdoYJV+uw=;
        b=R5eAPdpflCSZUmHoJ5wVbio+aPg3qCo/YtYzXTB0EBp33crjcjjetEiq6h5Fi5N1vu
         +I+416vBr6jJQ/oj+JRp79+EyjaeZb0iAZ6AHsMzoazn8qaJt9tuK0Jx3hYSQnI191Dd
         RUl1R4wyNHj2FdLKOfDYQdH22eBY/sIsfwgMzrchON9mn1rQPeHW4G3oXklpS9OSW2Du
         d2urEKz00pj9sKHDsrGoxRbBmrrzpKQABe2mZmMoByAxbjZOQEtioV+u2/7R161VXzrM
         iXU0IVRezZhQln5gVeOcms0r58EU3b3VpGHqnaBKoQIH9DZLauODz6v500AN97hWxLVQ
         fi4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ykbvsta+j2Hz6zmrFdWjp9InLg16iKETddPdoYJV+uw=;
        b=kmCDZp0izOt7Gzz2VoBySYDINV1Cwox2ANB0etmdZKJ69z6CYyvMLWNlkGleNLyFRC
         JT/hfd/CGcOgMEs9287GkLy4yYcOVodOYrQG1KjvsMo64KdR6dDAHU6tkKCHl8nDLcu8
         xvjku5XgLYg0mxbBEKSTnIIUCDBs+mqJ6uJN6H6CrrGsgB5sIhwkbP4gGJBsPgnpM9ri
         N4WuwGxsXLOMGSZ3kMv7K4AB8kSwwZUJHDesaCLeRaCeh1A4GVLOTpRzAjZckZhjJpqX
         c+533Cb4MnCNwZK60YVU0WGazD8hFtI/DUnrftJ2lZK/Wqj6+S5wKvdxcsVA2PQth3mW
         ZkMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532760xswXT9Z0tbI99+QcrxpbUXaT1PZAgxiYwMqkrbYanqAlth
	7w7RGM3EcSrHNM5CEwvWGEk=
X-Google-Smtp-Source: ABdhPJxT/JMJHxIV2Y3LqIRIUGrRGwprA2LuQdrqLUqKKbhvSfAh4grBaIMhNlYwEBsqgbFhgoSxQQ==
X-Received: by 2002:a17:90a:86:: with SMTP id a6mr571277pja.133.1627612270996;
        Thu, 29 Jul 2021 19:31:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e5c1:: with SMTP id u1ls97878plf.11.gmail; Thu, 29
 Jul 2021 19:31:10 -0700 (PDT)
X-Received: by 2002:a17:90b:4c85:: with SMTP id my5mr619306pjb.196.1627612270423;
        Thu, 29 Jul 2021 19:31:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627612270; cv=none;
        d=google.com; s=arc-20160816;
        b=Af/tO0RBZb8YExAUfTkHvUMhjdv3/YLFXvU9y7jfOiFGULeu0omUXfMpYg0GbS0qef
         7pYjHmxOY/3gjrGCo2Eyir/PS8pqpHqPsom63v7xdf+unQPveXR5y3soDqIXp5HSANfM
         cTEcbUH45Bl2xu3BnIWgWLNunccCTClIY45wVjz++B3JMVfXdz3dAleQ4SMEIbzdpk3n
         ECRY0L8ah5araHu9JHmJsMh6PE/hSEOX9xToEEy5HM//Yjm5vUgy6F3z1C8SHG2wd5dm
         dUVb7jdzvT5gWfJ+CudhxU0MAbXTdAdRjaC4DL6i0opu9XfiZnVKYop+YnTEFtZ2EryN
         FHeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fUqZ0NLVZxg4yvCXyE1lEs/e7e2cakQ+3GgW8pZJCvA=;
        b=NmjAvLgubpdpn/PQkwAHjDCqvEEjP0lw8JOubj6Rhdw9ysYHef3JdWKUq13xBKMmgR
         jcn2+ztfmCVO24hGLD64z6Dns6JZ7tSPyrdUy4I3mZBS+ldA6/OAno19o8ykV4SRO1+p
         lwr9LY0eY/J/obgPVhdtdFxYDSadf7xAh8XesQ3kNgyKOuNDmfF1+5wdmKhOLQWnO+WZ
         kNKVz2ckPG1VfCVJFDDXcA7y1BGrKOAYb0/PD6YZBSkonKZYCLDBSqZqxO1kttA/9hDX
         Y5HIzfi61pU8CttOd/OsU0Nw8G4L3rhBsGqTUjZWAEibBpqKNZlF/ZgOR6jCeM34Iclk
         TzeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=etYre1Aj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id r7si22573pjp.0.2021.07.29.19.31.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 19:31:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Received: by mail-pl1-x635.google.com with SMTP id u16so741931ple.2
        for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 19:31:10 -0700 (PDT)
X-Received: by 2002:a05:6a00:168a:b029:2fb:6bb0:aba with SMTP id k10-20020a056a00168ab02902fb6bb00abamr526959pfc.32.1627612270101;
        Thu, 29 Jul 2021 19:31:10 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q13sm218718pjq.10.2021.07.29.19.31.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 19:31:09 -0700 (PDT)
Date: Thu, 29 Jul 2021 19:31:08 -0700
From: Kees Cook <keescook@chromium.org>
To: Bart Van Assche <bvanassche@acm.org>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 48/64] drbd: Use struct_group() to zero algs
Message-ID: <202107291845.1E1528D@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-49-keescook@chromium.org>
 <1cc74e5e-8d28-6da4-244e-861eac075ca2@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1cc74e5e-8d28-6da4-244e-861eac075ca2@acm.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=etYre1Aj;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::635
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

On Wed, Jul 28, 2021 at 02:45:55PM -0700, Bart Van Assche wrote:
> On 7/27/21 1:58 PM, Kees Cook wrote:
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memset(), avoid intentionally writing across
> > neighboring fields.
> > 
> > Add a struct_group() for the algs so that memset() can correctly reason
> > about the size.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >   drivers/block/drbd/drbd_main.c     | 3 ++-
> >   drivers/block/drbd/drbd_protocol.h | 6 ++++--
> >   drivers/block/drbd/drbd_receiver.c | 3 ++-
> >   3 files changed, 8 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/block/drbd/drbd_main.c b/drivers/block/drbd/drbd_main.c
> > index 55234a558e98..b824679cfcb2 100644
> > --- a/drivers/block/drbd/drbd_main.c
> > +++ b/drivers/block/drbd/drbd_main.c
> > @@ -729,7 +729,8 @@ int drbd_send_sync_param(struct drbd_peer_device *peer_device)
> >   	cmd = apv >= 89 ? P_SYNC_PARAM89 : P_SYNC_PARAM;
> >   	/* initialize verify_alg and csums_alg */
> > -	memset(p->verify_alg, 0, 2 * SHARED_SECRET_MAX);
> > +	BUILD_BUG_ON(sizeof(p->algs) != 2 * SHARED_SECRET_MAX);
> > +	memset(&p->algs, 0, sizeof(p->algs));
> >   	if (get_ldev(peer_device->device)) {
> >   		dc = rcu_dereference(peer_device->device->ldev->disk_conf);
> > diff --git a/drivers/block/drbd/drbd_protocol.h b/drivers/block/drbd/drbd_protocol.h
> > index dea59c92ecc1..a882b65ab5d2 100644
> > --- a/drivers/block/drbd/drbd_protocol.h
> > +++ b/drivers/block/drbd/drbd_protocol.h
> > @@ -283,8 +283,10 @@ struct p_rs_param_89 {
> >   struct p_rs_param_95 {
> >   	u32 resync_rate;
> > -	char verify_alg[SHARED_SECRET_MAX];
> > -	char csums_alg[SHARED_SECRET_MAX];
> > +	struct_group(algs,
> > +		char verify_alg[SHARED_SECRET_MAX];
> > +		char csums_alg[SHARED_SECRET_MAX];
> > +	);
> >   	u32 c_plan_ahead;
> >   	u32 c_delay_target;
> >   	u32 c_fill_target;
> > diff --git a/drivers/block/drbd/drbd_receiver.c b/drivers/block/drbd/drbd_receiver.c
> > index 1f740e42e457..6df2539e215b 100644
> > --- a/drivers/block/drbd/drbd_receiver.c
> > +++ b/drivers/block/drbd/drbd_receiver.c
> > @@ -3921,7 +3921,8 @@ static int receive_SyncParam(struct drbd_connection *connection, struct packet_i
> >   	/* initialize verify_alg and csums_alg */
> >   	p = pi->data;
> > -	memset(p->verify_alg, 0, 2 * SHARED_SECRET_MAX);
> > +	BUILD_BUG_ON(sizeof(p->algs) != 2 * SHARED_SECRET_MAX);
> > +	memset(&p->algs, 0, sizeof(p->algs));
> 
> Using struct_group() introduces complexity. Has it been considered not to
> modify struct p_rs_param_95 and instead to use two memset() calls instead of
> one (one memset() call per member)?

I went this direction because using two memset()s (or memcpy()s in other
patches) changes the machine code. It's not much of a change, but it
seems easier to justify "no binary changes" via the use of struct_group().

If splitting the memset() is preferred, I can totally do that instead.
:)

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107291845.1E1528D%40keescook.
