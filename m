Return-Path: <clang-built-linux+bncBC4LN7MPQ4HRB6FO2HWAKGQET45ENSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id D77CBC48D9
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 09:53:28 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id b6sf2067431wrw.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 00:53:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570002808; cv=pass;
        d=google.com; s=arc-20160816;
        b=cuXkfv2+RIVomJHBijhJPhrGNMrDSiCSGVx0twZAEEVvh1indu5KLeIdaG7HoMUkkG
         moe8DoSpJQ2RM2WDZUVfx0lO3QxSnmNKCOkT83capcjcclWm8NamqTO98b8QAa3Q8Z+D
         3/lRo8I156+xoxEX+sHAZZzOYedGBrZI5XHK2Urt7SAgzigUX2l3UJhiQ7kizfJnt3Fk
         tWK46HbjwO1HcY1lqCzqG9yvx1NJYLu7R6MHKeFXzkvBZPB/LwxxpwzMJt9taOi3xhga
         SxThHB57xR2rM2UiMTfmaFjMWx/qZWS0OYhVXt96I5qCTRj0r0yHo5WwrNWd++rr5O/0
         tjSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Ksz4cFg5Q3obHqd+mR4OAGRiMmVcrMguuZmm+96v4l4=;
        b=ymvZ0TxgaWyf9T11/ueS57DaueRWwGkt1UygiIDOqQiJbO1f7I1VVxYI5F/waAH8ZS
         z01fKvbDERsQ91VakIAgQ20b5BV+ep9u7aQUTDvBPMcvhy91sHqG7Dzjl7a8HpI34J4z
         5LoXOVTxG4trAzREQaQj7F/XmMZ0s5n5FxjVdb7DRhzOzrcN+jsU6P+waVCILqBze3/C
         0ido2JEvwyVLfMLp4AJjTubGTJNvGCi5OWto0cRKj0pzsOBm0BdVhxZ8gSShviIcBpgN
         h4+6qpBGVoH7zLj4r0dKoB3o6f/Oo1esSO34bht2HHbWi4rqobaNBXhZflTOgrKkzSQk
         mSWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning mhocko@kernel.org does not designate 195.135.220.15 as permitted sender) smtp.mailfrom=mhocko@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ksz4cFg5Q3obHqd+mR4OAGRiMmVcrMguuZmm+96v4l4=;
        b=hVxlNiJMirXARztPKzX1F+rvFJ8CuVzxI5N6YjUaTvguqXiuVany4dU3ZgKq8SKTPe
         TT7pGC2AK0qkxjFMmS0XU6G1XUeH9LnavBBAJtcvoB9EHeMLTQWyw75xR+tvjTV1+2wg
         zi7BJb0/DIj0d3oYN/Yk6ZKGx84sj7GvByTRwTchxiuhjGGiFeLb/5QGh9jgQx33Bg0V
         WyRxuHdkZTLigFg8/ZgZpdtKi4FkDm90SwyaMnukaK74Wp7O3h3kh6KTLrQnrwGEZz21
         aHCgj1tWiEyjjrBq9pacCK+U0VNkvkSRCQrawx75D7B0G0bFJIyRNzfwGCI5l53VKbxt
         ObxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ksz4cFg5Q3obHqd+mR4OAGRiMmVcrMguuZmm+96v4l4=;
        b=DGEBLoad9scpIQyH8x+Fh5QcnBs0F3vMDsYgYhOHkRF+d8URIp4u+p+VF56yv7NGQ4
         o09MXW6gh+rr+MEQrhsI7uQETqheeTxL3FcaMi3XmdAAP0KF5I6ojslaD5ILAuKZ0FtD
         RhT/q7qPJnC+gWDwVrogZsfcOUEC5eip7ua/TFIHoXmMe1izKb81SeCOL1tdJre25OyQ
         0no4kmoEOTnskIw3rsoS38tcMGzOHvj4GWaE3XOcfQzf5kPGlUL0FIHxV2pAXGevwFVR
         goafWftx1X73osXR4H6rq6wzTgj77uRbvRe1Gc8OmmRznkztbktcfRGSHk/+KOiNZ83q
         cUUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWAdJ9V8mrZmV3tPaTI2peAuFgd3CK3UWtt4+LZBrxN5fwegyuw
	PGY2rwJkoBnt+pgf4jOnXYc=
X-Google-Smtp-Source: APXvYqydmzIsFNYxQiqhZg1/6zq6Thgz0JdwmP4yQinYIB85Ftm/AoHSKDeTfR8Di8HmdnhJwePsHQ==
X-Received: by 2002:adf:bb0a:: with SMTP id r10mr1597456wrg.13.1570002808587;
        Wed, 02 Oct 2019 00:53:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dccc:: with SMTP id x12ls387106wrm.3.gmail; Wed, 02 Oct
 2019 00:53:28 -0700 (PDT)
X-Received: by 2002:a5d:6b49:: with SMTP id x9mr1675994wrw.80.1570002808172;
        Wed, 02 Oct 2019 00:53:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570002808; cv=none;
        d=google.com; s=arc-20160816;
        b=yAtSToA8emMo/MmA01fco4jNo3fZ7HWsMZLqcgaHiqiC8nMD/d5xyGlfVyGPdhbdMH
         bjq9URlhO9fvS/IP0LukiPta5Pj4UANR68bo5dvyoCXyIboj+Mc038KIb8YsLFZTEvXN
         9TIlQjIm3qWtZJfm63MPDX+cwJKalCg1e9KWXMX9HSaqh2Uuy2BVBR41ZIgbDQ0pzXTe
         1kif9746F2QXn/63pRpRLrIVf7AN0ekA5oe63/aoPOuJppAv0cj1HI8/C6k2Edd/XVro
         mJd6FsQab1uFr2B0oD1rpjAY+uV5QHMwe76RB7ffwWhttYewMi7r9dypOCdvC+l528+K
         r5+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=utjjegXWAl7os1inTAQUj7TsNF1dMfyKVD4T9fPAKpk=;
        b=eYgPZZ280D2wmTnpc8J/IHSKd67Wr/RKtmfWYOVkhrmo/Uu8g8Q4URL9MwN/mRauz1
         q+k1AitdG1vSluNQV8AcX9f7fHcdJ7hdjsTSq/m2W0KfAtKlbHoH0BwwsaX0o3Fb/l5I
         iAPqY7Sjhc3iPeUvICTsSZK09U0lf80xHc060v52aomKmTScg7vZWZDtK9CKwehNmuWI
         gzVY1hragD6nRrmfhzL+JF6wTwWe0d+UQVR0+1TC0ub02h+5H2W0RA+mrQC7DNw7jKvB
         oVAzxEMoU0vqrvEc2vvQ5liplOH2o067NJkFk62ZrkwNJDcfARGX1yUsNvFLiNxhBu/o
         DCZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning mhocko@kernel.org does not designate 195.135.220.15 as permitted sender) smtp.mailfrom=mhocko@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mx1.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id p12si323318wmg.0.2019.10.02.00.53.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Oct 2019 00:53:28 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning mhocko@kernel.org does not designate 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 45BBEAD73;
	Wed,  2 Oct 2019 07:53:27 +0000 (UTC)
Date: Wed, 2 Oct 2019 09:53:26 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Qian Cai <cai@lca.pw>
Cc: Arnd Bergmann <arnd@arndb.de>, Johannes Weiner <hannes@cmpxchg.org>,
	Vladimir Davydov <vdavydov.dev@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Roman Gushchin <guro@fb.com>, Shakeel Butt <shakeelb@google.com>,
	Chris Down <chris@chrisdown.name>, Tejun Heo <tj@kernel.org>,
	cgroups@vger.kernel.org, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mm/memcontrol.c: fix another unused function warning
Message-ID: <20191002075326.GF15624@dhcp22.suse.cz>
References: <20191001142227.1227176-1-arnd@arndb.de>
 <1569940805.5576.257.camel@lca.pw>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1569940805.5576.257.camel@lca.pw>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: mhocko@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=softfail
 (google.com: domain of transitioning mhocko@kernel.org does not designate
 195.135.220.15 as permitted sender) smtp.mailfrom=mhocko@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue 01-10-19 10:40:05, Qian Cai wrote:
> On Tue, 2019-10-01 at 16:22 +0200, Arnd Bergmann wrote:
> > Removing the mem_cgroup_id_get() stub function introduced a new warning
> > of the same kind when CONFIG_MMU is disabled:
> 
> Shouldn't CONFIG_MEMCG depends on CONFIG_MMU instead?

I wanted to do that in the past but there was a clear disagreement from
Johannes.
-- 
Michal Hocko
SUSE Labs

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191002075326.GF15624%40dhcp22.suse.cz.
