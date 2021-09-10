Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBVU75WEQMGQE3QQHB7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id C2647406B6B
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Sep 2021 14:30:14 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id y6-20020a05651c154600b001c30dac7e87sf825029ljp.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Sep 2021 05:30:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631277014; cv=pass;
        d=google.com; s=arc-20160816;
        b=XX1zPdGs3qlpzUJwLEI9GgsKcUO8JgU7Tdoa/jZa4jutOwPJ5NZO2c9QyrAwyLAbVm
         KPOzXw9DtcNy8Yi8rlQXiVirkVGfoOQY57EUCYCsvcfUrGe18TAsBe0uy86wjGR9Hlzf
         S5z3olPj8okgdcItiWpA3VKM885H/YHm/3aZgyGeMidslt6fjIgSa6Dm8Vv5PxHeAc4Z
         Y2qmSSvQ7Dqak9Mg52g5mmquWvAzIjAqcA/3zhYrK95j1cPikd7YVUf4+/m3th/ur+Js
         86nqJjbr76ghbx6pcHzWqtEjs1ri3zEYNRga5i3g3OrgziJUpvQfkMDau31CS8F3Zb28
         qcGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PfmnS6JpaDKuhQWCTSv37n/yvZtUURukH7dreTctY2I=;
        b=r4j0TCaXPTsdDrTXODsAfoISz6pkU5USeJvBP5RB3lYeimGTsy7dyjHoVpZLUbL2X1
         WkvEdDaHmcgvd2lfDAsIOjsr02/LXxlaqZY8RVOIwYCipJaTi2OvwazX/BoUi2SPC7nG
         NHbeNNAR+bR0C9+gKlPg5KYdEKvJLxIwZEVp5JXl7lTvNcHw6KAtlfayX0LXXzG6qktp
         cMClQPS204HHWaIIYnopR0IuP+OiEHalhQPZvW8gTy9IQyBlXBUU6bsGUKAX2UdFLMqF
         6VEjKqcZTCBW2/+yHflPD5I8mYvB8urVUktmkWHyhZujHsV+Qs0CzLEqMPrykRQxCrmi
         iO7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PfmnS6JpaDKuhQWCTSv37n/yvZtUURukH7dreTctY2I=;
        b=sz9+5O4hkiP5c8T4thN1VT6GtpHuGDYjxRDzMf2Piiot+W2uPvBw3QqlvxQjuFzUn/
         /yJgOSFl2OXM+2deJtNcowJ8waS7QRCwyQDumYlzfClkck54zf3WJuU7ClzGC7B3Dne5
         be+9al+Oe3nz/7AMipvuTMPqRvzJUBEEqyZ0aXnFUu3QyS1ruF9pvWqIlUVWU4/u5pPY
         Zq5IS+kELU+17gNuUv4+K4wOJSwpL8Fnmtj4ZJz2a3rYURh6a+AFVlh/qcJh4qK8qR0D
         1rm3uhMM2wh6CCFb7YIRvXTGvBBCD67Dzii9ltaMBXO41urnXgyNxmYzv5I3fZLnBOH6
         RK1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PfmnS6JpaDKuhQWCTSv37n/yvZtUURukH7dreTctY2I=;
        b=SxgbUWd+o56KNsnXTJ02UyIE0vcibd/lJe9KR4oQkZuSx61gGoz1XcDV6gYNOBRMq7
         eZZqNGQHVd4SfMgw2/Wsi/2+2/2KNjWcXOv2QQ7MWpqy/Y6F2ZWBkQnvaPnQeu8joq9s
         dQwswMwV6sivbrwOdKaShQ4R/6cprOnvwkMq8JVeSu0LZ5dE7wQP1LqCG8lz0DzoXGnV
         SfZUC1wIKGujZb88gF9TiiY/UPZYStmhvHpjMNDK5+eP2jxwjsOL+13deqZmpjENQtrh
         n0xvUhWr4ng2WRj3NpcFbfWtZHfQhOm9lLiM/z49SETyfbDzz2LSItdtE1ePjL+hDdfj
         Kjvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cfp/U9kCPUAHw3UhTb93S9DmZgzSZ0UfqWMsDYGNDbKKpES2a
	kLodywqoD0RAKT442ghmcXU=
X-Google-Smtp-Source: ABdhPJyiXV2E/ZJwy4o3C5jF7c8kphKyCraxBOdKBzuEVvYWXIbzt5JU0opvJeLaUcC+a2vPb9jmfA==
X-Received: by 2002:a05:6512:6d6:: with SMTP id u22mr3670627lff.363.1631277014336;
        Fri, 10 Sep 2021 05:30:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b88:: with SMTP id g8ls2585370lfv.1.gmail; Fri, 10
 Sep 2021 05:30:13 -0700 (PDT)
X-Received: by 2002:a05:6512:239e:: with SMTP id c30mr3759484lfv.485.1631277013342;
        Fri, 10 Sep 2021 05:30:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631277013; cv=none;
        d=google.com; s=arc-20160816;
        b=mSkozaKzk4wgvbfK2jf3UR+qo0xQhPPqKWszBViugvrTDcYj368s6NQybpX78JX2ha
         nZrsOeu0per+REG6IBBQaL4YgNafYzdmJhlLweUuyx/tUv8DcfOb65tbPXiTJgAvgN+/
         V7Dz/IAoe3nn36UCHtq6VQEXhW2v4OwfErO7i/z0I4PGC8hcR+tayehE9PAvJ0jN2ZV0
         XE2H+lsqFWtYWJD7ODIqvwUTqesbFCv3pmxOuyfnUOSupWBPQtwbaOBGN0cncurkZ1rJ
         DNpe4k1bTykcOBRPUGjxFsOW7En5seorFw2QkjHTNu66AOxjTjKejiueDzQNpZAF/w7b
         BCOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=5g54/pfM/rT/DxuEba4UXbBNIbB8DlP/m7V2vc+bMTo=;
        b=ltlfEeKBhfJ9mHwDOjFghl17MSDr1wkHfvdof+0tiuD2Goo/lyuFIHp6wmtiDk9qDq
         DnETowCeCxiR43zyhs/rSs2z/a59sMYEjjcOPm9+6ViQKyv3NeZeORWEaq5ViyQ4nBfR
         kX1Y1JoRJ+KqprUlHIcfCheYx+9D0ggSICFmUUWlXfxosuLb+NAurCiVtlOoUwq0tiD5
         aOHc4v59Tx3ubq+K0XrPKfLYo8WQUDtFtAbIly1cPgrSVvH8117Wf4qhOYZiXQYtM3u5
         Uk9wbZX617n0j1REfa++kK5OKZrZT/NplmwCX5kCl+AdENwrkmqSTqyHmVqQwb+yLpub
         OPTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id u22si346947lfs.12.2021.09.10.05.30.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Sep 2021 05:30:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="219205328"
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; 
   d="scan'208";a="219205328"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Sep 2021 05:30:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; 
   d="scan'208";a="431539785"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga006.jf.intel.com with ESMTP; 10 Sep 2021 05:30:05 -0700
Received: from alobakin-mobl.ger.corp.intel.com (alobakin-mobl.ger.corp.intel.com [10.237.140.50])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 18ACU3af025901;
	Fri, 10 Sep 2021 13:30:03 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Miroslav Benes <mbenes@suse.cz>
Cc: Alexander Lobakin <alexandr.lobakin@intel.com>,
        linux-hardening@vger.kernel.org,
        Kristen C Accardi <kristen.c.accardi@intel.com>,
        Kristen Carlson Accardi <kristen@linux.intel.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>, Jessica Yu <jeyu@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Marios Pomonis <pomonis@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Tony Luck <tony.luck@intel.com>, Ard Biesheuvel <ardb@kernel.org>,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        Lukasz Czapnik <lukasz.czapnik@intel.com>,
        Marta A Plantykow <marta.a.plantykow@intel.com>,
        Michal Kubiak <michal.kubiak@intel.com>,
        Michal Swiatkowski <michal.swiatkowski@intel.com>,
        linux-kbuild@vger.kernel.org, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
        live-patching@vger.kernel.org
Subject: Re: [PATCH v6 kspp-next 16/22] livepatch: only match unique symbols when using fgkaslr
Date: Fri, 10 Sep 2021 14:29:53 +0200
Message-Id: <20210910122953.400-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <alpine.LSU.2.21.2109091347400.20761@pobox.suse.cz>
References: <20210831144115.154-1-alexandr.lobakin@intel.com> <20210831144114.154-17-alexandr.lobakin@intel.com> <alpine.LSU.2.21.2109091347400.20761@pobox.suse.cz>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 192.55.52.120 as
 permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
Content-Type: text/plain; charset="UTF-8"
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

From: Miroslav Benes <mbenes@suse.cz>
Date: Thu, 9 Sep 2021 13:53:35 +0200 (CEST)

> Hi,

Hi!

> On Tue, 31 Aug 2021, Alexander Lobakin wrote:
> 
> > From: Kristen Carlson Accardi <kristen@linux.intel.com>
> > 
> > If any type of function granular randomization is enabled, the sympos
> > algorithm will fail, as it will be impossible to resolve symbols when
> > there are duplicates using the previous symbol position.
> > 
> > Override the value of sympos to always be zero if fgkaslr is enabled for
> > either the core kernel or modules, forcing the algorithm
> > to require that only unique symbols are allowed to be patched.
> > 
> > Signed-off-by: Kristen Carlson Accardi <kristen@linux.intel.com>
> > Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> > ---
> >  kernel/livepatch/core.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/kernel/livepatch/core.c b/kernel/livepatch/core.c
> > index 335d988bd811..852bbfa9da7b 100644
> > --- a/kernel/livepatch/core.c
> > +++ b/kernel/livepatch/core.c
> > @@ -169,6 +169,17 @@ static int klp_find_object_symbol(const char *objname, const char *name,
> >  	else
> >  		kallsyms_on_each_symbol(klp_find_callback, &args);
> >  
> > +	/*
> > +	 * If any type of function granular randomization is enabled, it
> > +	 * will be impossible to resolve symbols when there are duplicates
> > +	 * using the previous symbol position (i.e. sympos != 0). Override
> > +	 * the value of sympos to always be zero in this case. This will
> > +	 * force the algorithm to require that only unique symbols are
> > +	 * allowed to be patched.
> > +	 */
> > +	if (IS_ENABLED(CONFIG_FG_KASLR))
> > +		sympos = 0;
> > +
> 
> I ran the live patching tests and no problem occurred, which is great. We 
> do not have a test for old_sympos, which makes the testing less telling, 
> but at least nothing blows up with the section randomization itself.

Great, thanks!

> However, I want to reiterate what I wrote for the same patch in v5 
> series.
> 
> The above hunk should work, but I wonder if we should make it more 
> explicit. With the change the user will get the error with "unresolvable 
> ambiguity for symbol..." if they specify sympos and the symbol is not 
> unique. It could confuse them.
> 
> So, how about it making it something like
> 
> if (IS_ENABLED(CONFIG_FG_KASLR) || IS_ENABLED(CONFIG_MODULE_FG_KASLR))
>         if (sympos) {
>                 pr_err("fgkaslr is enabled, specifying sympos for symbol '%s' in object '%s' does not work.\n",
>                         name, objname);
>                 *addr = 0;
>                 return -EINVAL;
>         }
> 
> ? (there could be goto to the error out at the end of the function to 
> save copy-pasting).
> 
> In that case, if sympos is not specified, the user will get the message 
> which matches the reality. If the user specifies it, they will get the 
> error in case of fgkaslr (no matter if the symbol is found or not).

Not familiar with livepatching unfortunately, hope Kristen and/or
Kees will comment on this. Looks fine for me anyways.

> What do you think?
> 
> Miroslav

Thanks,
Al

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210910122953.400-1-alexandr.lobakin%40intel.com.
