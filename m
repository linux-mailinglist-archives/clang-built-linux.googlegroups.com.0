Return-Path: <clang-built-linux+bncBCIJL6NQQ4CRBAUPRKEAMGQEAHFKHFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id E55A73DA179
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 12:48:34 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id 132-20020a1c018a0000b029025005348905sf1864656wmb.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 03:48:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627555714; cv=pass;
        d=google.com; s=arc-20160816;
        b=hpNmI76W41y+GPQEvXi96cRWOZORnSwbyxG3gV4NSOYMFIiO5PvDF9PxdZoZGg5c2D
         KyeWoFkrpHCY11yEqSNNPZmDfjWLyOYBy29RjCdbj4iBQt9TCd0VWznh0tNc3CZVEN1M
         zXmPfsi1p7eevwj/PAecRhP+LIQfH5eX9BS1aM48pA/4sFCR7tEIeslvjdu+i3uBdxeX
         5zn9hfm1lfC5tB0E6F+Msf3CNuqWbmVsiUPrjg/QZv8M6p7DqXtZvsEDvmYUeAWZOBUF
         MlT7Z8TG9NLZMoCP3Uii+PUg7h2KMV+HedDkog7GmnIkAUmsPukDSeX39iGxmXBXnQYq
         K3Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=gZBavJuu4bAaAD3aBoIs9Opc0iqOgvduRkERf3q3NfI=;
        b=rf9LhYt7gn5+SDLtO9dRn3V4q7Md3MWreLk6A0KeBYSf29S49uwutssPGRp9r5fbqw
         +TSKjEAD0edZYsqtRMPqyQzGdfKlh6kYgiF3OwA7gD5+nMySYTuW84nCGVXJu+Ux4inz
         S2fNHrOkS+ATT8SoA4urDboBhjsmEm/AtpyAkE7bkeo8L7MvxY7r2B4xPDkQsb7aFnzW
         K36+jRPDEc53WsZpcehhGwKukKRmkIdoBs6ZXgPXC8cABJ6qgPXpMpFbK6IiHv5/M7iF
         ESR2OPlq5gy/FiB4DGcVyTbJezhaewMj5sjvQQpmjI1nOGoiRwDaFo29Ebrb2dJiwnNf
         G9VQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=abeCZgaO;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=dsterba@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gZBavJuu4bAaAD3aBoIs9Opc0iqOgvduRkERf3q3NfI=;
        b=M1zLSDGXGlCL3g+oGmSAjDnvgXmyYuEZfFP3oGGbsRx8joEQ1rhO5ouvitoCanTHwt
         Y0ole1WuNH7oHRhWWrbBd0qmquHXn218xEZ3k7+6iT6F1Y4LKszEIUQbHOVSa2clj+cf
         UjsXHacqmK4WcwYp/PdE23KbYEwctDl3txg7vzPhYNSWQBM3RgvW5s4dV+B9W4sPBjlW
         pUck5te0Nymm9AA+49KPYPJ9VHrYbtQT1G7aDUMGj4j2ZJ+H119wt34Jz80GeFyrEood
         ++ASxPDf7vz6YsWrnXRnKHUiSOYCsnxVksVHju5aHs3O3tgManYHAjmutKDTFudoLBgw
         sqsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:mail-followup-to:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gZBavJuu4bAaAD3aBoIs9Opc0iqOgvduRkERf3q3NfI=;
        b=f6TqA5M0Xb91CHCLvvH79M9hlJ+kYB+RyAueG0c+qkUeOO3khZkVobFUhlUXeyhNQe
         JFamjXINijy10TEZRYzgNAABgUBBfuU+ftlrlC/N9kiWXGPtH5KspeGoCd6LWtFEqai8
         g5fP3z0ivsiwiErV6s2Kfb7prAGDxe4pJE8H69WSixHFWV2tude/0hJHhWgDOSubQ+Aw
         e7MRRZcrDUCEC8xnVQLWCG8WbUTvaKEGGhki5H+cZeTFWI5w6WDfURK2xMZncMQmHN/8
         i3OXYlQ4aPcG+2FB8sTQQ1Qeu2GteUnuDrE+h5NDQv7bdLyDQc4v/N2TMqi4GCU+CoRx
         8baQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EoDRYurkgSSfW9kejjc+3hl36rT2JlDx7jV7vs9HpnffPyMkG
	YrqYWTruV5Z+8VyVDtOxEkU=
X-Google-Smtp-Source: ABdhPJwHxKFy4t5QYTsDHHph7pYN88kDASG/RJ8NFbpyJajOV6we3BvBM6+1G+hY+zJjoCfCbNl8Eg==
X-Received: by 2002:a5d:4207:: with SMTP id n7mr4153667wrq.326.1627555714635;
        Thu, 29 Jul 2021 03:48:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cb09:: with SMTP id u9ls2745348wmj.1.gmail; Thu, 29 Jul
 2021 03:48:33 -0700 (PDT)
X-Received: by 2002:a05:600c:198a:: with SMTP id t10mr13728184wmq.32.1627555713762;
        Thu, 29 Jul 2021 03:48:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627555713; cv=none;
        d=google.com; s=arc-20160816;
        b=b6Jdpct4eOONUgEFTMGmroXUsLVniZ2MWzRbM7DWGZLpMu8mAcMZkYIwNFjGXTrZqv
         RdMITiJJj8+FpJvkYvPZMNCJ2ynRcpm25bmCft2gQpCGJ//smKHelLN9ep09hjgXyT2O
         47g+ooAAThb4KOvp1u6AVqBlZ9LfLp764Oh6Kl5+XlrIOw1lprRdydpEKjDs3r6LI7CW
         0gtryraMYNSvDDjPG8RUGqlQ8sYHgm621Iu8IWq91Ciff4aKsO3bOC8oIfOQ3rEqbwPE
         UCt+uPRHFbp2mdg4BcbZh0eL/mReAKG0TKMYICgHvlD9pP2Xx+zx2obNmj3AyEAyBIT4
         G5ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:reply-to:message-id:subject:cc:to:from:date
         :dkim-signature:dkim-signature;
        bh=Ao638iMTTjsA+VNcKLaQE/T5PYOWw6rLSmI4SdHNaOg=;
        b=ZtAqi6klOCA/FEiT0U0hWEQy9QvPCY6sHGxASB6EeFZko0lun1WAHM7Vv2eQ2b8+D6
         o/wE/pmlp20ChbHmX8k1IIUEdyUDaW4NHgrpSH2Df7VXBgmpoHkHfgIxTILKj+D5hCYx
         Yoce+JjOTCAOBj7DCHTCFcpTk3kUUT0DzrapoYBnfjYywbdZS+ibHgLGhbgHkXVR+pYf
         Zk9P/GRS4GsZ1ZXcwwkNBFer5LDOAclwF9UXw79OF5rDo6poc6p09eNrnUBvL1SfJkj3
         V06IM1N1mKX1gg1ogutNjPwa6WXNqHZoGhGbPKwMVH8UiWLR5vpgc7Xru/bEbTdNBeAs
         lGLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=abeCZgaO;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=dsterba@suse.cz
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id 189si373521wmb.2.2021.07.29.03.48.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jul 2021 03:48:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsterba@suse.cz designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id 6BCE0201ED;
	Thu, 29 Jul 2021 10:48:33 +0000 (UTC)
Received: from ds.suse.cz (ds.suse.cz [10.100.12.205])
	by relay2.suse.de (Postfix) with ESMTP id 53E3BA3B81;
	Thu, 29 Jul 2021 10:48:33 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
	id E0A69DA7AF; Thu, 29 Jul 2021 12:45:47 +0200 (CEST)
Date: Thu, 29 Jul 2021 12:45:47 +0200
From: David Sterba <dsterba@suse.cz>
To: Kees Cook <keescook@chromium.org>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
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
Message-ID: <20210729104547.GT5047@suse.cz>
Reply-To: dsterba@suse.cz
Mail-Followup-To: dsterba@suse.cz, Kees Cook <keescook@chromium.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
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
 <20210727205855.411487-3-keescook@chromium.org>
 <20210728073556.GP1931@kadam>
 <20210728092323.GW5047@twin.jikos.cz>
 <202107281454.F96505E15@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202107281454.F96505E15@keescook>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Original-Sender: dsterba@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.cz header.s=susede2_rsa header.b=abeCZgaO;       dkim=neutral
 (no key) header.i=@suse.cz;       spf=pass (google.com: domain of
 dsterba@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=dsterba@suse.cz
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

On Wed, Jul 28, 2021 at 02:54:52PM -0700, Kees Cook wrote:
> On Wed, Jul 28, 2021 at 11:23:23AM +0200, David Sterba wrote:
> > On Wed, Jul 28, 2021 at 10:35:56AM +0300, Dan Carpenter wrote:
> > > @@ -372,7 +372,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
> > >  			ieee80211_calculate_rx_timestamp(local, status,
> > >  							 mpdulen, 0),
> > >  			pos);
> > > -		rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_TSFT);
> > > +		rthdr->data.it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_TSFT);
> > 
> > A drive-by comment, not related to the patchset, but rather the
> > ieee80211 driver itself.
> > 
> > Shift expressions with (1 << NUMBER) can be subtly broken once the
> > NUMBER is 31 and the value gets silently cast to a 64bit type. It will
> > become 0xfffffffff80000000.
> > 
> > I've checked the IEEE80211_RADIOTAP_* defintions if this is even remotely
> > possible and yes, IEEE80211_RADIOTAP_EXT == 31. Fortunatelly it seems to
> > be used with used with a 32bit types (eg. _bitmap_shifter) so there are
> > no surprises.
> > 
> > The recommended practice is to always use unsigned types for shifts, so
> > "1U << ..." at least.
> 
> Ah, good catch! I think just using BIT() is the right replacement here,
> yes? I suppose that should be a separate patch.

I found definition of BIT in vdso/bits.h, that does not sound like a
standard header, besides that it shifts 1UL, that may not be necessary
everywhere. IIRC there were objections against using the macro at all.

Looking for all the definitions, there are a few that are wrong in the
sense they're using the singed type, eg.

https://elixir.bootlin.com/linux/v5.14-rc3/source/arch/arm/mach-davinci/sleep.S#L7

#define BIT(nr)			(1 << (nr))
...
#define DEEPSLEEP_SLEEPENABLE_BIT	BIT(31)

but that's an assembly file so the C integer promotions don't apply.

https://elixir.bootlin.com/linux/v5.14-rc3/source/drivers/staging/rtl8723bs/include/osdep_service.h#L18
https://elixir.bootlin.com/linux/v5.14-rc3/source/drivers/staging/rtl8723bs/include/wifi.h#L15
https://elixir.bootlin.com/linux/v5.14-rc3/source/tools/perf/util/intel-pt-decoder/intel-pt-pkt-decoder.c#L15

#define BIT(x)	(1 << (x))

Auditing and cleaning that up is for another series, yeah, I'm just
pointing it here if somebody feels like doing the work. It's IMO low
hanging fruit but can reveal real bugs.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210729104547.GT5047%40suse.cz.
