Return-Path: <clang-built-linux+bncBD2NJ5WGSUOBBZWD3CEAMGQEMI26NVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 531893EB1AE
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 09:40:23 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id j6-20020ac253a60000b02903b68cc7d130sf2485616lfh.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 00:40:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628840422; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pdj2fIHINzPHUEOZG1nrrGzFR88VT7q+qaO8ltOt6mY1MGOOoZ3cjdrHgLjE+sWXTA
         NXgGKHJ6FAYI8SkTtBQFifZwX/ESSax0IDHyKmqOmnQi6AJKKewrhnEplDtiKgOMQ7Tq
         PZ9G9JQngaIT2YQaDxkvyK5tVzc2GsFWHDDhxQWM2vo3lgXFoSiV5Yhd8JLW8ujyKQJg
         8lhCLqVi2d7ecqvmIRAbDOrCEqBBU2FbHabLxrSaZBcuHNodjY2R3scWchR2rLpGxER1
         ZkAF/CS7sXmZaiA+gl0fWUmnEF8Fc/gDEmkqF/rkfSmWjhiwujJDqW7pM2TPzLLVI0Hv
         eM1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=zJ5y5wqAWTAx6mH+qrxAw4AAmTm7b2MtKPZ80L7dcxA=;
        b=rFf+kHoXxhA/wD4fhNdTkG4uXDSCixNbofs+/xI3xAeSvX23eJvH84WMAfiQSTEae/
         sw8y9vUw5mWiPIsj1hDFGTzI34nPXJAM3Ky7QMtvap+7dPimw7PRvp2PdZl5Yz3V/ZGE
         WzwLKyJE6NQzClvkuxxyrcKg6i6ZCvtNxbJZUyTOjkQoSfstD0IjDssuh0B5nw77Vt1w
         XTYG9/6iU+s0XlZrIRw0RnKuw7SN0C6EuAQz/ZfWhCR4fRO8ZH6cZXRyl1qN9FoUMuwt
         iiPh4YN4VIRoL/+sSj4TfP0VqAMb0WfJ9jRkIJxadvKse8WIEcfgx64Kta15vwEy58hb
         0PpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sipsolutions.net header.s=mail header.b=aWV4rGNr;
       spf=pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zJ5y5wqAWTAx6mH+qrxAw4AAmTm7b2MtKPZ80L7dcxA=;
        b=NciWvv52RpvDqQbYAid7T2usl4ja8Gm9AoWI8KdhrRr25Fq6WR5WZyYzRdXI0v1vZ4
         2gl+FcmpsmDCQI39CJL68S55mB8Pty7FvjiO/1j0ryAmVCe5ek1thwYF4HI2bOGuVtph
         SuMPJh/kmb5kEnuHEf9pdiAZPi/G0LzZzDqcHJ65a6z2H097qhc256PQfuPl7LsCVB5t
         ZsZDu6tKkGSza0zUtWmE2i4phLzs/cjLSR1lt5WNiJ438qtijz0LHs6QgvvHKXRhPZlD
         gU1VQcgqo08asmP+wG9uPqxrBoKRRCW9XS/d+NnnDRCK0+CdCqxQi8CDSOMVpyTvUf9R
         m5kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zJ5y5wqAWTAx6mH+qrxAw4AAmTm7b2MtKPZ80L7dcxA=;
        b=P411+LgiUy8Re23nM1niW1lVrdZ3jhBlwaQ2mv2KHtnzQJ+ErCQiHuUDhhl4aG7t8B
         axSyKFwhRn8GYkxmAB0qsNH5+/BNO36Y6KRELNmtawdIHgRboVuYhEmukR3RZIk5HT+h
         lYErJGBI2L4J/QkPePvu+qIbqMQHLHHJWrqdPCXnYoqtuKXVek20DjUZPn/Rfg66ulAQ
         l0CySlGMjlezshy/sFQ6+egMaHmd+7DaXsUyYGwUzHQ1FzzlUknsbOmuJSjgoV1YdP4d
         KElllpKKy9RSXCgJq8LnmwBkeWvUAmpQJztTnswrxa9U2n2V/L5SeqmlnheaPAQ0d1PG
         k/zQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329cM3Ti+uRSAr3nso5FfeAXk6ccMsWJPEmj+f5aTOCp4ZwUArO
	aIz0zPyY291FKKNw4Pblpvg=
X-Google-Smtp-Source: ABdhPJxIwZLxPn16awOKewMbtXxdX01eUK3mzcmT0KE/UXoktmVeiIdjCOByb5IydVXmel03WfrIWw==
X-Received: by 2002:a19:e214:: with SMTP id z20mr796732lfg.37.1628840422851;
        Fri, 13 Aug 2021 00:40:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls97300ljf.7.gmail; Fri, 13 Aug
 2021 00:40:21 -0700 (PDT)
X-Received: by 2002:a2e:958e:: with SMTP id w14mr895859ljh.370.1628840421811;
        Fri, 13 Aug 2021 00:40:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628840421; cv=none;
        d=google.com; s=arc-20160816;
        b=zXvyjcb2F330QK6ACEQtegteKFBsb+GNWPDnUWloYbbA4mabKnvnHRWIJJSILg3GcF
         DbvgGps/ptePMkLfVNkVlvf/DTvCesXN1Lq4b5K6WHLv0pasDh8LIbUUMs2gj81Md81N
         k8pYmRiQxtG62KZ0yIirsNJMJwTbx3roJsTnK4V0GKOFmyGK2+Auz719bwIbvTIQDg5u
         7Om1eToPZurHV2pyxNTtWta/UL8oBJwM0xDaPdtrzt+YSkMumpxFskyBTrnLdW+DmZaX
         xIUSH6hHP77mcARQg3PS6PAr639S6XbUqALVgXJx/tZjt7uAbphDFQNctq8Ix8vBQQ+O
         BMcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=sJrRyJAk0s7nMFwbcLX8dMSTh66Xp6VqgCIIZV7nbU4=;
        b=ufAcMmU+ANo0sIWO3MbPci4jkPzalp4a9J2Glz4WcVe5rcBctfvwwoSjoy+Q7ar7+2
         ybkfgwDl4BwaM7XQaHQAP7MvLjX5d2LHPO7IzkV0Oys0KxX1FZIbC3bbDA0DciEti0Oy
         hwmPv3+nRcrLZjjW/PFZ5F3OirLaXt4CYN+iKaFjH2/ylLXui6oENErgeBVeE1+U7jDW
         sourRyeLDw1Veq4J+H0IlLAbpVggvXt051ki1E7CPc9vgtLr2NCuq6+0u4nKqJFZkJ6D
         Di+qMv0oPgJb2UIGEp6aW5Lj65Ag9t7laG90PrBAKyz1YTj2huF76fAfm6BKU4xN0SUc
         +5Ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sipsolutions.net header.s=mail header.b=aWV4rGNr;
       spf=pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
Received: from sipsolutions.net (s3.sipsolutions.net. [2a01:4f8:191:4433::2])
        by gmr-mx.google.com with ESMTPS id k40si39144lfv.0.2021.08.13.00.40.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 00:40:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) client-ip=2a01:4f8:191:4433::2;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94.2)
	(envelope-from <johannes@sipsolutions.net>)
	id 1mERnV-00A8zH-4r; Fri, 13 Aug 2021 09:40:09 +0200
Message-ID: <bb01e784dddf6a297025981a2a000a4d3fdaf2ba.camel@sipsolutions.net>
Subject: Re: [PATCH 39/64] mac80211: Use memset_after() to clear tx status
From: Johannes Berg <johannes@sipsolutions.net>
To: Kees Cook <keescook@chromium.org>, "David S. Miller"
 <davem@davemloft.net>,  Jakub Kicinski <kuba@kernel.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>, Keith Packard
 <keithpac@amazon.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org,  netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org,  linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org,  linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com,  linux-hardening@vger.kernel.org
Date: Fri, 13 Aug 2021 09:40:07 +0200
In-Reply-To: <202107310852.551B66EE32@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
	 <20210727205855.411487-40-keescook@chromium.org>
	 <202107310852.551B66EE32@keescook>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-Original-Sender: johannes@sipsolutions.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sipsolutions.net header.s=mail header.b=aWV4rGNr;       spf=pass
 (google.com: domain of johannes@sipsolutions.net designates
 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
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

On Sat, 2021-07-31 at 08:55 -0700, Kees Cook wrote:
> On Tue, Jul 27, 2021 at 01:58:30PM -0700, Kees Cook wrote:
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memset(), avoid intentionally writing across
> > neighboring fields.
> > 
> > Use memset_after() so memset() doesn't get confused about writing
> > beyond the destination member that is intended to be the starting point
> > of zeroing through the end of the struct.
> > 
> > Note that the common helper, ieee80211_tx_info_clear_status(), does NOT
> > clear ack_signal, but the open-coded versions do. All three perform
> > checks that the ack_signal position hasn't changed, though.
> 
> Quick ping on this question: there is a mismatch between the common
> helper and the other places that do this. Is there a bug here?

Yes.

The common helper should also clear ack_signal, but that was broken by
commit e3e1a0bcb3f1 ("mac80211: reduce IEEE80211_TX_MAX_RATES"), because
that commit changed the order of the fields and updated carl9170 and p54
properly but not the common helper...

It doesn't actually matter much because ack_signal is normally filled in
afterwards, and even if it isn't, it's just for statistics.

The correct thing to do here would be to

	memset_after(&info->status, 0, rates);

johannes

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bb01e784dddf6a297025981a2a000a4d3fdaf2ba.camel%40sipsolutions.net.
