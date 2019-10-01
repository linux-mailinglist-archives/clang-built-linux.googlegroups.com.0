Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRB5MEZ3WAKGQESHHECFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 948CBC3B5A
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 18:44:38 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id f2sf10683096pfk.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 09:44:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569948277; cv=pass;
        d=google.com; s=arc-20160816;
        b=nXywSqftOG6SS1SDGB/lPgPzBRULZlfGa+6Zr4x/UPLvtw6FvsSHT0QsMTEdC9uOVY
         YB8l+wUx5M1ocHFbdsanHNO0ZHxWIXYY85OyBP+eVdZ5NNucrdAM+bkATXS9ITReM4s+
         CUBZgo76exgTg9U7clb1LyBr0u0KeGmjLQF8F8xgqceBb4VhBZ4KHDyiJvyWUOr5ecdl
         lT3kVNwTxNEaRlF3yddInBQpKACDY4jHPqkvz9wvNrBoqtS2JDuujK5d+2a1omny/ktq
         J8LHSNRNWH/3l8Z5gjkyxKtSh/fETfk8DNcl/Mwq8H6ebZR6x/2CiQC4XHhNjYMpeOhc
         DBQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=TTmmbB5swz5tTKEA3ZQhoT3mK5PI8OZTIYn93HITP2M=;
        b=OuIUj8pzYBkAbd5JyEarzHr97WdrHKkqAp8snCFhtPL0fFePj6s0LIKa7KlvEOSxL4
         EJUy7WEvr0UoNivKjXMhMEaOxmBI3qRk9wdCEyZdITenJleOqTMpCCphvGw0923leoFC
         4bzYZUxyx88fake5gcTOlfJ8ihtNh7Ityiqsz+uBmgH8Ar3lZDG8GWXVCN7Ogmwv2df7
         hjbXA1hto71J4PweoKwu3zRCrI89xv7Fre8VFLnh4M2/aWFozw+3H235u4kwQkFgE2/U
         k8X0ThhbwfYXDwQ+YANwmlYhqeyHulvK7gRxr+CUhSD8v/DE85lPxgJGUC0YHKE4AwiG
         iMjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=UI4eNsI0;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TTmmbB5swz5tTKEA3ZQhoT3mK5PI8OZTIYn93HITP2M=;
        b=O/WWmWjToi3L2pFtXf1gDiLRa1RQeRqB4YvBNr9YKC/rfS2irD1MqJcTMc2i89fR26
         HqjAykXhdFK7nP8p5o17jTDGNUW3t41XP9S2dd/AzMY5S6yazYbCM0LwWE1M8FjbOL6R
         h9PVKfJgoD2hxyaR9YYxbHYVBhLpth+vqaGFPiMPbNTigFLTqQDeUcpbU6w56rfSYh1J
         I5bs7RAgD8wXPNCNUgHxYWsEb2RRyU49BvYxpPGMsU1l+pESQe1baqb7ix0ZZ7UObEyO
         bIl/E81ZvImuP1fs9rrO6hbi5gRn56r+H3sNb7yrINqvfHVa8wNyxxDZ7IsgGTwij6o6
         TIoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TTmmbB5swz5tTKEA3ZQhoT3mK5PI8OZTIYn93HITP2M=;
        b=hWHn6YaRRVUWjyABRob0mBlKDKWbtFd/f6VWnXPfqLUpAzEcajVoax/Hfy7OSv60kd
         ZMh4F8Z8heFRwP/lLgXQSmauTvjAmHhp413kmkL9+16zZP2X5ENnGG0FQyB+/7sE1Iwc
         yvJCR3GMi5cZEGgl7tlfQ7+stSAx5WpDzCQ/fx4fE7+auMvkgcFoaMRowy8fZOxppKpG
         N2jG7xI5YZZ61U0FoZbFURSbOsIBe9PoqT6QXFIw/nLIiuBTDogLtqW5/dyDOJ1jsRUH
         CBxqZND53Y6iWBdn1FLosEL2QqlYeTNvJ81+dwORIDBQVA5W241IAIH1Unb9Bk32ginE
         iIgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWgsH4D0o7cttA2X833wgE6o9uoEyxC05Bf8WtWsr2l0mF+wivR
	SS7FuFpg9eedmxUoYIkNd0Q=
X-Google-Smtp-Source: APXvYqxT9mR+DFt815eVd8zFtFQ2L1vjtneQ5Fwpd0ESE2tNv7D5h3UOlFVxzVpOogTeCecbKlN9wg==
X-Received: by 2002:a17:90a:3546:: with SMTP id q64mr6456293pjb.13.1569948277211;
        Tue, 01 Oct 2019 09:44:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1b46:: with SMTP id b67ls3916881pfb.8.gmail; Tue, 01 Oct
 2019 09:44:36 -0700 (PDT)
X-Received: by 2002:a65:4686:: with SMTP id h6mr31570787pgr.212.1569948276765;
        Tue, 01 Oct 2019 09:44:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569948276; cv=none;
        d=google.com; s=arc-20160816;
        b=KhjzYL3r/FuGH1wdihCCv3267jQ+fRrIb2iFn5EiPwzpUz0FW7EyiNoQCXi3M2wm3Q
         SsE+SucA6KMSZqABOgzlH++KiTQql5UPdQIdZINnzp3gcQQuFRbXwYKSfAqVUPlD5hTJ
         1qpv6eTWchK3HhT9PJvCi7YzRUeVrAnotOH/povbaRPEuqK80lDjIVDnmxrvsY2l086F
         nh3a4Bi9seeWqVAr05AU8jBH24lIpj7wMy46TZ1qCAAGaAayDWI3Maqyk/YaOvYb31mZ
         vL6aQ1rZTqPdaCCHDoXYyB/mRJpCEuE4w/nQoeoD96zfaaTtBIazfAC8VM8Px0ec9OBp
         a6cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=7GPDFQWuJXwzJuqgdtkv8cWj1/rryU2amRMgaS7klwk=;
        b=aTUjI0D+kW1ICc2Sl5dmPOyWlHXFi5o/d23jv6OCDH9dt6HEL/tNuL+UzPpprj10Fw
         n7nph1IMM2lYV5LJ/FVEZ4crjAGviVnjUhIUCHUa/LY15CxCx6eWYkm+xoeBJSzzS3l2
         dBxehqIiPl28ef8Y38oiWmaZBMYdbD1bc68tX/4ycYoM+Xqryxrkdqi5PSygipM8KZd3
         Dc2U/equZ2rAhKDwRNlGitMgPpqanK68WhUbmXRrRP/BMMslNgtYA39BKwYpkQk5Rmgn
         I6iT7E8R2FGXJQVTyotUlfjlGJ+fcd1TS8N3SZGXK4xxcS2nOGnR51RJ6f5Oto7Gjse1
         C+MA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=UI4eNsI0;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id p185si970534pgp.5.2019.10.01.09.44.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2019 09:44:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id j31so22452738qta.5
        for <clang-built-linux@googlegroups.com>; Tue, 01 Oct 2019 09:44:36 -0700 (PDT)
X-Received: by 2002:ac8:1207:: with SMTP id x7mr22977563qti.247.1569948275773;
        Tue, 01 Oct 2019 09:44:35 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id a11sm7923492qkc.123.2019.10.01.09.44.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Oct 2019 09:44:35 -0700 (PDT)
Message-ID: <1569948272.5576.259.camel@lca.pw>
Subject: Re: [PATCH] mm/memcontrol.c: fix another unused function warning
From: Qian Cai <cai@lca.pw>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Johannes Weiner <hannes@cmpxchg.org>, Michal Hocko <mhocko@kernel.org>, 
 Vladimir Davydov <vdavydov.dev@gmail.com>, Michal Hocko <mhocko@suse.com>,
 Andrew Morton <akpm@linux-foundation.org>,  Roman Gushchin <guro@fb.com>,
 Shakeel Butt <shakeelb@google.com>, Chris Down <chris@chrisdown.name>,
 Tejun Heo <tj@kernel.org>, cgroups@vger.kernel.org,  Linux-MM
 <linux-mm@kvack.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>,  clang-built-linux
 <clang-built-linux@googlegroups.com>
Date: Tue, 01 Oct 2019 12:44:32 -0400
In-Reply-To: <CAK8P3a04nMwy3VpdtD6x_tdPC14LPPbt3JKrGN48qRo_sDVk-Q@mail.gmail.com>
References: <20191001142227.1227176-1-arnd@arndb.de>
	 <1569940805.5576.257.camel@lca.pw>
	 <CAK8P3a04nMwy3VpdtD6x_tdPC14LPPbt3JKrGN48qRo_sDVk-Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7)
Mime-Version: 1.0
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=UI4eNsI0;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::842 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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

On Tue, 2019-10-01 at 18:00 +0200, Arnd Bergmann wrote:
> On Tue, Oct 1, 2019 at 4:40 PM Qian Cai <cai@lca.pw> wrote:
> > 
> > On Tue, 2019-10-01 at 16:22 +0200, Arnd Bergmann wrote:
> > > Removing the mem_cgroup_id_get() stub function introduced a new warning
> > > of the same kind when CONFIG_MMU is disabled:
> > 
> > Shouldn't CONFIG_MEMCG depends on CONFIG_MMU instead?
> 
> Maybe. Generally we allow building a lot of stuff without CONFIG_MMU that
> may not make sense, so I just followed the same idea here.

Those blindly mark __maybe_unused might just mask important warnings off in the
future, and they are ugly. Let's fix it properly.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1569948272.5576.259.camel%40lca.pw.
