Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBEUGRGEAMGQEWFII3OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id D79B43D9D50
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 07:56:35 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id s29-20020a056808209db0290240ce72dd5esf2549305oiw.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 22:56:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627538194; cv=pass;
        d=google.com; s=arc-20160816;
        b=jSauEoTxn2PA8SMS2VUTKlghVpar/DfdMG6i2GGSGPJSqAhm7MLnYGnzWR5ItRRy0K
         UT7Sof8o3TpIqDfkoweXss60MYnJ4qgwePZJCfq+EUpD95esxdNBwyCb+O9wdT9Qx7d7
         FsfHFTg1zrnBYNLxe2aUmbj6ebZNyQGdikztC9QN19pdpNyXhoOxADItUYvTHtO4k+B7
         REl1Pc9YnRegSdTSFtTSm5X4jMHcFpOocCqbtXY2Il2iKRy7zUPYU/STiqwHI1sud007
         Xduuq4aurTFHInm1vRdqODmUw95bJmBPVeCEd3+q7zKHSqS+2vDYSbszdUJN2sbblqXh
         HoTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender
         :dkim-signature;
        bh=omQabUONa3aNENbdtTZ9QwLoldP0yFJJ6qaSU0gQ+2o=;
        b=T9iWm6/inqtKxs44MZAZu+YwEOE5kGaQ+vrUHx5kaNPq2RlQFdYBQij0uMKZ1hjUr0
         rHADIDSZyQQqvBt3oG2d2VvIvkxveFBPM63xgGUclvNUuRz6n4d2/zW5viS+M3vK2wh2
         R1jCBP94ON6YVXWIQ517rASDbUnJHAmOEr+gWwcR4TS1qEabPr2RhH3uwjwy7vQON4X+
         YGsp8IJMHX3nbtNgz9xuKt73WkSvnJ8MGr94taODpI1bCDYocg45BVA1wCdn/G4fLoU0
         o5nsgm+mLtjB5PRvRVTF3lFzKSFKH6Fds9vNyhH1nFfvO4xOnennWGkknZ9fkZQgnohG
         asFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=WQfdXRag;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=omQabUONa3aNENbdtTZ9QwLoldP0yFJJ6qaSU0gQ+2o=;
        b=sEKXbSNnLlZ9mQGw9U+DsNo+w2QHCRezytwNC2KFjvRr5hofP0z8NgSUutGqqBdQ/p
         pjjzVulrhGUMQo5IkKdP6MxlHf+oErEIuJSct2J/Pi0xvlgFvSFZxI1s3xmXKpjoH81Y
         Uv7khm1/fdULybBvZA/KeAZsn1pTqvhymLeP2k5JnI6mueY3wV/sevHfIYfgLH4aP59G
         dASx+L7Zu7qoeXmW5pdmkgMFDbxk2pY5GdgWR9V3FuycITSVxFnQUQBOaOHcHm4q96Zb
         h2lnwuU/7MvEUVsrVRlRBPJHv9c/w3be/o/mvbIH9FISaB4B2ozcJfsNG1GOmfGMQdMO
         +zQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=omQabUONa3aNENbdtTZ9QwLoldP0yFJJ6qaSU0gQ+2o=;
        b=rAC8ceOoK/Zn9Ula7Gx4KKMmV0zhgCXT3B+M30OIMgf33WzU+Bn4YDxU3NRkbW66cG
         1R7cpoDERKFS3HJG6GogQfgemwTsrfOE7t8FE1tOVJlUC4/+wPZUuJSJF9pcSE1h3Bif
         87xCknNk+2TZ3hO/8e03lBvjJhID9cnrl7Xru53/KOnyIS2UxL7770vXB248+TE+ql8u
         5p5SXcKX1XJco7NceLRt2v9xelYdvHWk+k1ETJxABNkgkyyeOgtadyk8Dsx8QPayohH/
         uEqDofrRCj90hfaDD6CP4uXj45ff9RXmzGoMkC1Oa788HiiHCglWG1h56PN7jS2Wm9/R
         ZrDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TTbeH/Q1BL20QRompJZyXzu3cshIJOEIK6uMrhTcqZDNYnE4K
	W3RStTFMkClLZ8riTcSpuqs=
X-Google-Smtp-Source: ABdhPJxa1in08h/Wz3R63BPBVPwL6gI3uvmXacNixiPDEZ00uvo0KGeLV8pmDLa7gqPxtwcC0RbkNg==
X-Received: by 2002:a05:6830:2385:: with SMTP id l5mr2364533ots.227.1627538194357;
        Wed, 28 Jul 2021 22:56:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1c12:: with SMTP id c18ls1284505oic.3.gmail; Wed, 28 Jul
 2021 22:56:33 -0700 (PDT)
X-Received: by 2002:aca:1215:: with SMTP id 21mr8831443ois.37.1627538193874;
        Wed, 28 Jul 2021 22:56:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627538193; cv=none;
        d=google.com; s=arc-20160816;
        b=wFucFrui7QhX0kgO/Nc70p+ScNWadCwIZYUPax1mMaLrMSRc8/Sv1yIfx/PFVeosZO
         +nVG3DqAAni2/b9ym7IldcKlTYYPEEO2ySk0sYuDC10Z2P1gimlPQkA4V7P1aIbNHjMg
         dJCpHkNMpSQtZR1YEh/6WGL1uOSaRD7s0ls7Vr0h+ytLPo9V8RDU3YtFN6bVRlu0UohD
         Ja/v3x5f/pcXqD/dC8orKVYgmxdooktqpCi5VZQzKjZY9n+SoFj4GybC6bG10z0cmzkx
         sWSRyyxXFW//Vy0qx5v+6mOhYBYA/cA9RWDeOfHMqO77D5KmYNswlTxXJ5YmdoyREmBR
         glFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:dkim-signature;
        bh=R4FG7V/qHkxL9POAi8AdvkbEu9QJNlQi42/HE3oCiRw=;
        b=U8Tn9Ksk+OdwQ2JSOrUzbSGoxtNSSH0PvzD0NsviTrbY8Ei7EBf5CSTLjWhbMcjcss
         rJahnlsJFmbcxysEls2nKOltTsMqo0q4ddSUv0gJPf/M7zkGA7+jt0jP/P4HeYmHaSN9
         +PHCC2dIJcXO5TSyo/rUH6+UA/gvir7iVJFXH2RPZ5C1xe5NZh+DgZnjpMgpts7SGO1P
         AUZSQRklClZqgdAn43rLDNJ8UNJZTlr8Dv11e23Z6a8eA7Ua4lJyQlkcZqQfEVaFM2SM
         R8E1H40d5pnN1QE3KHMbhhSeaODtvWlrdkG34GWD1ceYOCufZONO/xkcmdcXGXAEQfgM
         Nahg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=WQfdXRag;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c20si130428ots.0.2021.07.28.22.56.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Jul 2021 22:56:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 854FE61042;
	Thu, 29 Jul 2021 05:56:32 +0000 (UTC)
Date: Thu, 29 Jul 2021 07:56:27 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: dsterba@suse.cz, Bart Van Assche <bvanassche@acm.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	nborisov@suse.com
Subject: Re: [PATCH 01/64] media: omap3isp: Extract struct group for memcpy()
 region
Message-ID: <YQJDCw01gSp1d1/M@kroah.com>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-2-keescook@chromium.org>
 <20210728085921.GV5047@twin.jikos.cz>
 <20210728091434.GQ1931@kadam>
 <c52a52d9-a9e0-5020-80fe-4aada39035d3@acm.org>
 <20210728213730.GR5047@suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210728213730.GR5047@suse.cz>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=WQfdXRag;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Jul 28, 2021 at 11:37:30PM +0200, David Sterba wrote:
> On Wed, Jul 28, 2021 at 02:37:20PM -0700, Bart Van Assche wrote:
> > On 7/28/21 2:14 AM, Dan Carpenter wrote:
> > > On Wed, Jul 28, 2021 at 10:59:22AM +0200, David Sterba wrote:
> > >>>   drivers/media/platform/omap3isp/ispstat.c |  5 +--
> > >>>   include/uapi/linux/omap3isp.h             | 44 +++++++++++++++++------
> > >>>   2 files changed, 36 insertions(+), 13 deletions(-)
> > >>>
> > >>> diff --git a/drivers/media/platform/omap3isp/ispstat.c b/drivers/media/platform/omap3isp/ispstat.c
> > >>> index 5b9b57f4d9bf..ea8222fed38e 100644
> > >>> --- a/drivers/media/platform/omap3isp/ispstat.c
> > >>> +++ b/drivers/media/platform/omap3isp/ispstat.c
> > >>> @@ -512,7 +512,7 @@ int omap3isp_stat_request_statistics(struct ispstat *stat,
> > >>>   int omap3isp_stat_request_statistics_time32(struct ispstat *stat,
> > >>>   					struct omap3isp_stat_data_time32 *data)
> > >>>   {
> > >>> -	struct omap3isp_stat_data data64;
> > >>> +	struct omap3isp_stat_data data64 = { };
> > >>
> > >> Should this be { 0 } ?
> > >>
> > >> We've seen patches trying to switch from { 0 } to {  } but the answer
> > >> was that { 0 } is supposed to be used,
> > >> http://www.ex-parrot.com/~chris/random/initialise.html
> > >>
> > >> (from https://lore.kernel.org/lkml/fbddb15a-6e46-3f21-23ba-b18f66e3448a@suse.com/)
> > > 
> > > In the kernel we don't care about portability so much.  Use the = { }
> > > GCC extension.  If the first member of the struct is a pointer then
> > > Sparse will complain about = { 0 }.
> > 
> > +1 for { }.
> 
> Oh, I thought the tendency is is to use { 0 } because that can also
> intialize the compound members, by a "scalar 0" as it appears in the
> code.
> 

Holes in the structure might not be initialized to anything if you do
either one of these as well.

Or did we finally prove that is not the case?  I can not remember
anymore...

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQJDCw01gSp1d1/M%40kroah.com.
