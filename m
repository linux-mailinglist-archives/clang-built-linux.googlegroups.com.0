Return-Path: <clang-built-linux+bncBCIJL6NQQ4CRBMOFQSEAMGQEEJGDHNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DBD3D8A85
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 11:26:10 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id d6-20020a50f6860000b02903bc068b7717sf954889edn.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 02:26:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627464370; cv=pass;
        d=google.com; s=arc-20160816;
        b=QdZSutHgksF7iRrxoDmPm9NAEN8fXlFaKTXL3o4mUf3es4l8PmKTLdpGdQEkjN+am2
         DScg3ugMWmp36PYLOoA+FQbFoBJpeRAPOxlg8CycCzoFbdmgG/D3aae2C5ei/C/nhdNq
         IJjKHEGv9+HMSqEk8Qb4aae0kmWJoEFbybI+fm2FSC3Jr6RD47uo15ZaBRy7iekXaOaW
         dpeJ++FHXNHV+bhXqUZefQpFgCaLIQfDImOVHHVcZPw7X4y5L/wxpeKpAiJ7qrv6mPDu
         OtNtvziMJpaBGAKgzk8HWf3j4NiODb5JDVlP10z0HkWADYbiZ434UHOG2dqdlY+67Fch
         rYsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=sWVw0rln91i9BeowmYCPhxm+/NkObHi/3p3bzn83e9c=;
        b=yHtsDm0qcRpBSVhSUQyHll0DHGwwNA40Bnopx7peTt1Yd9XR3C3SaRJVbfQogRmUB4
         2i/fFzNXIn8D/fHVbtTIgnRSaqOuuzZaM5eyn+K0VumPElTuUUClh3R0jDPsRPwyJX0z
         mp8fnK+d2LqQNMrzQ7SMiYIYUpe+IxsO0l1jxPUR8/RvFz8bju+hLs9OlDdnrxur2Lc9
         rh6j+EZqk2gQsI7akolOnmrZwJPj/BKx3DzHhA6jBJeaV3hyFgtYO4qB44zGJIGGw9SL
         wr1hNIy/W51e/0NyuVsAfrh6A5yt1kYTT04IwfEcHJICeCyh789S49Gi8sZtyzVrUjm7
         tFmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=s2tZ7LKm;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=dsterba@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sWVw0rln91i9BeowmYCPhxm+/NkObHi/3p3bzn83e9c=;
        b=phrgo4tD8zvw8SqftjmQf6immj17W+0nguIwOFgqiT1GJVOIuvY+nJROu+PCJX4N25
         6D5gGvRewTWKxpRtK3e4AGQdc9wmCr5VGAqM4MdNcLx58kt4Sb0/HXBVktchRXQw0gsu
         HMHuy+V12VokTkX/M0tWMnlt+EewY3VCSHcjz4+lVTU/UDzkjGKsUSNwCjhLAHStHXz0
         8p80E/GIoxqYX/x5huTXR2YIMyXAWf8pz0v74ukPvD+qlBjjE7oetOBSKyvh6G9wIFkZ
         ZvJGUzvAvl+Wh4nXrBuDRwNn9HBetP7C8uyACLu5gbvxcPO4D4CDrUYVnx7RBTJPNnyY
         RwBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:mail-followup-to:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sWVw0rln91i9BeowmYCPhxm+/NkObHi/3p3bzn83e9c=;
        b=pH1Pd8dliD1vfts0McrxcnwxY0He3DER0xwjv4bhrQNd7ZxvDESHxHvtEsq0GoL6Y0
         uoWcXiq2nHiV0x6vmcBT2S6TuCUvfbY1uwfk7UGFl/2RgwlbcNZxgHSkgR0cPZhSsdDp
         PPcKiMkRDbs9qtmxU6ZlFMz96/hvsO+AZ6bVNG6NGvHKihKjpolVdt5u3E+GU9zQKhzh
         3CEaJKM3ldLcnPAh+GCo0TN+wVsKHP+TY0wqUKkPbD+PIm4ch+EYR7CLP7gieLuk6rGH
         YmWjuZKC6OWEU+vslJJCm1x3Om5gKrl84y6oO7Zbup5n9Lm+vhq/VX/Ppf2AKMle4L+N
         r7eQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LmcYHoBMTGK9eQ9wCuTp9as2Rd1ISOyt/Lr6fKa7iC9OK3+66
	orlWQCx3awW1lLwaggXEvuA=
X-Google-Smtp-Source: ABdhPJxXP20UQjnM8S+u5zJjO96u99LIByaRzU3yW0rJXSW0R9+XbrK4wBAoKUqVwNUGBv2tZosU3g==
X-Received: by 2002:a17:907:2bd0:: with SMTP id gv16mr11412364ejc.49.1627464369921;
        Wed, 28 Jul 2021 02:26:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:e3c7:: with SMTP id c7ls2094058edm.1.gmail; Wed, 28 Jul
 2021 02:26:09 -0700 (PDT)
X-Received: by 2002:a50:9b06:: with SMTP id o6mr33492212edi.284.1627464369001;
        Wed, 28 Jul 2021 02:26:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627464368; cv=none;
        d=google.com; s=arc-20160816;
        b=FLWXKtBIAfUEIGSTh4kDl+n1SteTg56amW3DE7sZ1jyegwRgFRnjHNEQmNOA1uSjav
         Fcx2ZwEQDlkkw5H/6gxXbqP5XQ8vsWRcqU+SOPENgYY1A6ICIqWPFR+hZ3T1Ed6y1rls
         kKso0yDc1DfdDIssDn0zJr1XvrMLRKOcDDNcRayb9XSZcETPAlGwnJ6EZTIESFQXighy
         8rX/qYjKkmdbOFX3xdKeEe63ir17emawMSORMpgTdr11Z3W9I+XDIW2vR5E8tyeVV7Vj
         oFYSxu3xAGqszaBBssD6VOTqhjz08y0I4D6hkEA3fcko9HSf8X/Y9hw6x6N3Pw+nhW2K
         DJcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:reply-to:message-id:subject:cc:to:from:date
         :dkim-signature:dkim-signature;
        bh=5viwOi0Ex8EMpcyt5fZAmdaE8zZE3JenBgOEfHjTO8U=;
        b=Atno2ueu2oU/QMH8oX2u+LPc5AcAb6ObFmpS1hG+De2yWGN8bw8fVjnd3tsfE1jhYG
         NnIaWO9AVIH1XkKOE+TOvIivnuJ25L4cjOO1XVq1hAXI/63mdj6eDbhyPdksSXORndpm
         7dVh4t51KpGM4sVVpy7MMRLva+v/2jVDYjggX4gCYbqIe7TN9SSH5r9h+aefQoeu3W5R
         4U4BC0DCSAyfQTk9at5HbBUKI/7vMBGK8RvopBH+fKPjkG+d37GINnFFuv6ms8JTQWdS
         ew225EVqCXbEGA/Cu1d3GhmsACdaODjB2mpJUXSiRcwlh1pLxJ2SeSHBgdeMkoptGDvM
         GLEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=s2tZ7LKm;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=dsterba@suse.cz
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id d26si349309edr.3.2021.07.28.02.26.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 02:26:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id 9CE3A222EA;
	Wed, 28 Jul 2021 09:26:08 +0000 (UTC)
Received: from ds.suse.cz (ds.suse.cz [10.100.12.205])
	by relay2.suse.de (Postfix) with ESMTP id 8903AA3B8C;
	Wed, 28 Jul 2021 09:26:08 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
	id C207DDA8CC; Wed, 28 Jul 2021 11:23:23 +0200 (CEST)
Date: Wed, 28 Jul 2021 11:23:23 +0200
From: David Sterba <dsterba@suse.cz>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 02/64] mac80211: Use flex-array for radiotap header bitmap
Message-ID: <20210728092323.GW5047@twin.jikos.cz>
Reply-To: dsterba@suse.cz
Mail-Followup-To: dsterba@suse.cz, Dan Carpenter <dan.carpenter@oracle.com>,
	Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org,
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
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210728073556.GP1931@kadam>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Original-Sender: dsterba@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.cz header.s=susede2_rsa header.b=s2tZ7LKm;       dkim=neutral
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

On Wed, Jul 28, 2021 at 10:35:56AM +0300, Dan Carpenter wrote:
> @@ -372,7 +372,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
>  			ieee80211_calculate_rx_timestamp(local, status,
>  							 mpdulen, 0),
>  			pos);
> -		rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_TSFT);
> +		rthdr->data.it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_TSFT);

A drive-by comment, not related to the patchset, but rather the
ieee80211 driver itself.

Shift expressions with (1 << NUMBER) can be subtly broken once the
NUMBER is 31 and the value gets silently cast to a 64bit type. It will
become 0xfffffffff80000000.

I've checked the IEEE80211_RADIOTAP_* defintions if this is even remotely
possible and yes, IEEE80211_RADIOTAP_EXT == 31. Fortunatelly it seems to
be used with used with a 32bit types (eg. _bitmap_shifter) so there are
no surprises.

The recommended practice is to always use unsigned types for shifts, so
"1U << ..." at least.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210728092323.GW5047%40twin.jikos.cz.
