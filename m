Return-Path: <clang-built-linux+bncBCIJL6NQQ4CRB3NG6OEAMGQEYPZ32ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id D8CFB3F007D
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 11:31:25 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id l1-20020adff481000000b00156e670a09dsf401979wro.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 02:31:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629279085; cv=pass;
        d=google.com; s=arc-20160816;
        b=WK8Y0aXo9pKB/i+VuHg8EDsPD56x5+iVv8D8ZpjUyes3OI9cjKLLylc6rVhLJQijPO
         2KxpUAyj7ToivjCFroRfdepfdrEosNlP5/q5Pgi/nLSm3JgE+88S9ZiJ7CyvHqTvmBfm
         1g6aT2PhsaFH252u1HlygZYhk1Zs56cCE3266QRCvjWAhJwl6bGBN8zE7F4l27DmCyIU
         gHxd3cKvGPW5lTL+TBf8Krqd1zXQRMN999SbfYeC1RdYiyY7MgbzKBAcFf6S8uWeriKl
         SutbETsA8ZCHnRMMrRhqXUK/RNihm7JHXWjJ4kLWq+lDyEknaV/NSVYRer3dTZvNnyX/
         BPGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=vrmyMnmHxbSJNVBC5VAPJpCwg0FxB2oKKXRt9KRa604=;
        b=K7iW/rrfMbhVDiwOLYiPL+TJsHCDun65LprU7qRjgHrtcOPAB8Dh3Nl4DxOo3MT69s
         Q7O6Bc9rRgxG8LTFR2cpTx3rxxtyn07gjit/vH/MzEhGQDw4PYb3XIHnlDFUR6rSA63/
         xbqeJEJLeo9v7J6KaX85h0tzG7Q513MuHmOAp2667Dk6zXo4zWLKIi+/ofqmwTM7mtON
         MZuMf8JnDs6BCkYgTwrS+1JbeziQE58WAmybm6aeKrNd2d8Vi2zljopzQ4UAnnPt3fGM
         E8VMSrInxUizNDC1czz0BJ8VC41QMfKY3GTOtFYxGPvswbZrzY0ei05RKDyMfyhZZ3uL
         7uRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=Vce+IAwm;
       dkim=neutral (no key) header.i=@suse.cz header.s=susede2_ed25519;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=dsterba@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vrmyMnmHxbSJNVBC5VAPJpCwg0FxB2oKKXRt9KRa604=;
        b=GlvsEsMibaS6pgbbTGmNc8Wg4SeYy6Tk6S8+/f+juYCK4T23Nx8gBfyo0iojp88cUE
         efo7EXn+G+Fu8LYwLidayV7IP2OYomQnnEpsle21ktF63b6l0rLOJDFt3lU9i5Ofrvna
         ziqLfDB8GLYmZOTO/HWlkdEvxQTTj/TSNQJQiJrlQ/eO3I1R0Riq+urE4KDXPgmC6OiR
         wch07EeoA7XNaY8hjxiJcIvSY+K5gsWXcs0zg9sdbTYa8ktWvdFkLy8aeWEVpPVzptWj
         XrgBN+x5uxg34WDExXaABqoPwTf8R8XHX6NWIok8Zjvg/Bwx/Kr/RL4uF/r4f8KKfM92
         cOHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:mail-followup-to:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vrmyMnmHxbSJNVBC5VAPJpCwg0FxB2oKKXRt9KRa604=;
        b=J9/rYfVW+gouRU4bTxASoroFfb0AaGKRfl3PIzZQz/4V5x6BEpKGOg9/SLuFCEhRxm
         G3b49rp0Fd0CIypPfXOJiWHps93mV98eoTYFOd6EfUNSe3lnkK8SEAQGi9a5Tgxm4dMG
         Fd1tq7A+LjtAYq7+MRc+aT2156XEK2xG4ZoT6sq+FQw6U0tUMnOxpPwXn4+zkwYYpNkG
         sWpk8h2Nk6oziwedoVu4aCPY+6PEdpjuMQvDPfcc+kGxYmZtqSdVLtgEbR5ss/yZYAg+
         aG1bsTrVFyF11/TLqRaEdTZ4i6Kl0mfZCPI92GGxYB7v3CO4+j+eMsM6PEgBgydyrYf0
         jVlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zGoLHeYlvwOzF1TC794ScrEE1fitrC2qCgh+BUGLLz9RaWmXH
	ZnOSlOb6mXfe+0PplgfD6kQ=
X-Google-Smtp-Source: ABdhPJxpnv5nyJMR5vJILcH4uZOc5wZ+eFyCxXU6T+k2CwWl7smBhKYhTXphvBFZ4cUpPEmEAd6kdA==
X-Received: by 2002:adf:f704:: with SMTP id r4mr9639313wrp.389.1629279085658;
        Wed, 18 Aug 2021 02:31:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e5c5:: with SMTP id a5ls22519wrn.0.gmail; Wed, 18 Aug
 2021 02:31:24 -0700 (PDT)
X-Received: by 2002:adf:f352:: with SMTP id e18mr1757682wrp.236.1629279084779;
        Wed, 18 Aug 2021 02:31:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629279084; cv=none;
        d=google.com; s=arc-20160816;
        b=b711tEj9jbyOODR3hfDej92MNMskZcfgeN8IzAMKw5P9ZtbEw/GXY43RK1BH/FJsr1
         6Fm3srTmgqQ3kRv/OrvwgIIxTYUT8NI/7wsUJ8RsmwuW/ZOPFbwkLvoKXrjlKUo2qYcX
         63cNm/E6UG10PzonIMhCXxB6QhheMMPACfZDNCPiyw5gaMHv5EY5xXs9U2zyJulrVzj5
         i8PUk29rUmhvfSj05a00YiS1XJIgTUUvpvehSa3MjrbdvxbIGe+DKRCWdhwM90A5Q+Hy
         VOq8EE8RIzBJICPG2zAxE/zUVSQq+fuIcNdDG9IvzVoFesJWSFIOhMU6QTOhfLzh0OAS
         QpEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:reply-to:message-id:subject:cc:to:from:date
         :dkim-signature:dkim-signature;
        bh=MjEVLCKBlTSswofPN1pNmxlP19qpFPg2jUD4se0XdyA=;
        b=tM/hUBASUg4ATTzTwu7e+g+wBdefCFPswME8LerqrqI8x31weyjHijVCcigJOCDcwP
         33uD9T2g//dhfGKyH1czR8rVZkkSuDKAVXjVNZaGchVEV6Q8bovlaX1KFMofhqQwUMAb
         1JKBpDHtqE2ndZHJ1Rd8hZzPWy9LBSIf/T5RubvQOfWn8rzYiXymGQdHbu2pjQYUsE4m
         Y6bZ5WO+j9F4MUGtjMC6/eCEuUA2pQM/BXEaLq8at/7KFMetYIknXp2wHzohcKFKebps
         P/zeC36kw8KoXPg2wukqEJkEWszrkNieHPfQiINWgAoG9GvroSHdB02f70neZOf6aOia
         CtZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=Vce+IAwm;
       dkim=neutral (no key) header.i=@suse.cz header.s=susede2_ed25519;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=dsterba@suse.cz
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id z16si247448wru.4.2021.08.18.02.31.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 02:31:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id 6BDC422065;
	Wed, 18 Aug 2021 09:31:24 +0000 (UTC)
Received: from ds.suse.cz (ds.suse.cz [10.100.12.205])
	by relay2.suse.de (Postfix) with ESMTP id 4E36EA3B94;
	Wed, 18 Aug 2021 09:31:24 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
	id B0437DA72C; Wed, 18 Aug 2021 11:28:27 +0200 (CEST)
Date: Wed, 18 Aug 2021 11:28:27 +0200
From: David Sterba <dsterba@suse.cz>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Chris Mason <clm@fb.com>,
	Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>,
	linux-btrfs@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 49/63] btrfs: Use memset_startat() to clear end of
 struct
Message-ID: <20210818092827.GO5047@twin.jikos.cz>
Reply-To: dsterba@suse.cz
Mail-Followup-To: dsterba@suse.cz, Kees Cook <keescook@chromium.org>,
	linux-kernel@vger.kernel.org, Chris Mason <clm@fb.com>,
	Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>,
	linux-btrfs@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-50-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210818060533.3569517-50-keescook@chromium.org>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Original-Sender: dsterba@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.cz header.s=susede2_rsa header.b=Vce+IAwm;       dkim=neutral
 (no key) header.i=@suse.cz header.s=susede2_ed25519;       spf=pass
 (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted
 sender) smtp.mailfrom=dsterba@suse.cz
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

On Tue, Aug 17, 2021 at 11:05:19PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
> 
> Use memset_startat() so memset() doesn't get confused about writing
> beyond the destination member that is intended to be the starting point
> of zeroing through the end of the struct.
> 
> Cc: Chris Mason <clm@fb.com>
> Cc: Josef Bacik <josef@toxicpanda.com>
> Cc: David Sterba <dsterba@suse.com>
> Cc: linux-btrfs@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>

Acked-by: David Sterba <dsterba@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818092827.GO5047%40twin.jikos.cz.
