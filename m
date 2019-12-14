Return-Path: <clang-built-linux+bncBAABB6OH2LXQKGQEEJB4K4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A8F11F10B
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Dec 2019 09:57:30 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id s9sf1664085ilk.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Dec 2019 00:57:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576313849; cv=pass;
        d=google.com; s=arc-20160816;
        b=NG7uDyHvvkF68eKj4o8RXjWMCS+rKHXSkbR6Ym5cBf/zLTT/9ttee7nIzq1qqivF3d
         G58JvFzBpyvbLQ0PC3CsHCDY0vnOEahRXqKLi5V7lVilOWH86A0Vf3Ee0hmfVXX8fJ7s
         Gbwk9NjsUquSg7L1SPY8syQf/wx6fqYBZUsYLKvXKycxwKPARYU5ozw1o2RXOSVc/GF4
         GgqoEkwwyB8HOZhrS/hDg/MOekEmkN0sSjH1sbCAyTUsqOs44Gga5RTvcTj1ElfPwiBY
         +aD+jIxzf74WjMzPWu+ewEyd+1sd88P0HtLJAUzlKfWSFCIdAA0DSolK0xb5E1EMhalu
         1wPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=dNMD2VHbEkBabPV+hBsTSFOqDSO5hlhgxdJiRmEHkNo=;
        b=YRxPSNAFirGrLgc0nnLCQTbxGhmOqP2w+8kMtlF+fSZWACBFjLqemmx4ojwdUJ8lb+
         6FUOl90pMyGOLZ/MIh9gcfZZvLcXdZDfv0vOyLiycY6l60ymikjpk+VG0F23+Wh5UfOZ
         KS73fWq5ZbPAeu94QBHeMf9pcZxsr8C3zZYSU8NI2bdtWOSAsXBOSRr5SbDPfpwhKPc7
         NSR6+tSZhI8kMAoVM9ZsboZeeVET10HJVeGWC7tqg803r3gILy/jrjV0m8wQxgoR7T5E
         9WR1atevFbtvQliN65wFAQb6qdQ/aDl2/bhhZSPFKN6q3M95OJSitt1zPO7FfNrgX3/J
         YCbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=mTlnWukx;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dNMD2VHbEkBabPV+hBsTSFOqDSO5hlhgxdJiRmEHkNo=;
        b=c4jkVpk6YofgQ01gI+t1LNgHELej8E6gakKd/G5kPkegEuwL5VecZQe+VJH9tL/6xa
         usZWjb6RkaXjhnNVC8Xfhu28AzjEHxkVvdwf5jjjzN0hk108yTVxz529pF/E/ebXq7W7
         CvmscICYGpGqVWJCe+z3MrdSP0shq9llofSBozd5f9INwArGuRXOL110lhVkoYEZ7Ye5
         10F/wXaZpvwWapuX1dhN4iEN1B9ZqYUwCA9sEx7MTDh58QB+OLI8RyUJplVxyUXKVLxZ
         B+jJp9CbO4FPQq6TJ7Jn+UndS9sIOxTawYaJnpPUJzZm7v2QySn91ZMdvRK5ync/M0bu
         yl4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dNMD2VHbEkBabPV+hBsTSFOqDSO5hlhgxdJiRmEHkNo=;
        b=jVnIygTiskpahqKb0nqWXe5ReoFdnIOHu8EFsrnnBTBgnZoUUCNcI70FnjA6O2bakI
         AUNPNTuw7GWpeCo0xJgx+3u4w6M9yFaP67Thmt40hio5N28/cWoHmjB0Je5UVTagU+ib
         oWx2lx4+B06q0gB2Ax2BFi1p1aXcE+obJ1LTXhJLrdbmF47jEETyfe+DHo+syXSTorvr
         jxYosBQ6RJiPahEkgVBPpt81DiBSAZaSR3J/zQHqkEjyEtz8WDn5Y69loSOu3K2qB3tQ
         yW7r55f5ltVkAm15SarBK+JXEzh3wTcu0zw4u/OCYUlDOA/ScllDeqTQ9dtSty3ZmpSZ
         Oqsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXEaPGar3HYoqfZVzWi4BZXSc3L8LT34HodJMo6Fr9GKRIbg/sI
	ZrbV7JXIIg2prrOgYkDdsaM=
X-Google-Smtp-Source: APXvYqwhpPnjUO6zJ5Deq6ILl588xyqjAuaVjjKXmiU0Zo/oy5ib3KPUCcmhiHa82fbmgbKqkNTrrw==
X-Received: by 2002:a92:89c2:: with SMTP id w63mr3347250ilk.252.1576313849137;
        Sat, 14 Dec 2019 00:57:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7518:: with SMTP id l24ls433577ioh.0.gmail; Sat, 14 Dec
 2019 00:57:28 -0800 (PST)
X-Received: by 2002:a6b:fa08:: with SMTP id p8mr11153933ioh.1.1576313848738;
        Sat, 14 Dec 2019 00:57:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576313848; cv=none;
        d=google.com; s=arc-20160816;
        b=IM00tvbwZo4bVV12gxNNW8w9UqibVSW66nRQqMrmKWGWw8arixNVkJ6d9rrOiWqYkX
         1o2ClYxxhzOT7W9TYKBUyvBbMRyJGt8QMqexofD3b4CbznfYq4R+wqY+Ke8kcUGon8ON
         CNWmVWa+5hFxUQhqI/fUZS3JWoCj2x2gpVdPE6ZdSgBNJMH3fpeuLfXXJcdspVHjXJzi
         JvdZrSrpI5xDOGsJhkkOwemNHsn7s5VnSSODMihKHnH9HYl2HAZk5kVH0MZttzNb2i/C
         9R7YzLvJ7XfSkGlQTymDMFrjdLq4fKeKWcwG1bnx4sMWKd8nnl9tY67UpEootKQYNhRa
         g96w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=tOG6kTlp8s2Wa7TA90vKI50NyHvG0cGEmJq+pmXM+IE=;
        b=PdmbWgVd4boqQ/ARlz/WwixmvsX8xpuEiDPj2tU7yLujRXEwpI76iiXfExkpZVp8Nb
         8Cx4BMXed+lkggPhcYOzLymWMs/Bm0MxEl+rW1c6vuV2JjnURmyAeEN8mpsZeIOurO/Q
         1zoL6nI7i9Z5wiMX/jQFMIxetRB5bGHXBsFI0lEhXVU7+0NRFXbKn/qvPK6uLJJMDNir
         QW+vmk7MpekaOqXjUz5k/Iqs5WCI8h9eEq3tX1brEMAWYuYQaf8dtU/qpeAjuq/F3HRY
         amfPyT0QCFo0uIhy97Y8Q9gIrqM6mq6RYKETNFcKGhHwXaa+p62g8rqSdBzPgh+7Irer
         R87w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=mTlnWukx;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id b74si530057ilb.1.2019.12.14.00.57.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Dec 2019 00:57:28 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id xBE8vBJf010562
	for <clang-built-linux@googlegroups.com>; Sat, 14 Dec 2019 17:57:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com xBE8vBJf010562
X-Nifty-SrcIP: [209.85.222.42]
Received: by mail-ua1-f42.google.com with SMTP id q22so475342uam.6
        for <clang-built-linux@googlegroups.com>; Sat, 14 Dec 2019 00:57:11 -0800 (PST)
X-Received: by 2002:ab0:2814:: with SMTP id w20mr15685601uap.95.1576313830670;
 Sat, 14 Dec 2019 00:57:10 -0800 (PST)
MIME-Version: 1.0
References: <20191211133951.401933-1-arnd@arndb.de> <CAK7LNASeyPxgQczSvEN4S3Ae7fRtYyynhU9kJ=96VX34S4TECA@mail.gmail.com>
 <CAK8P3a1dH+msCgxU-=w4gp30Bw+x3=6Cj473DuFzxun+3dfOcA@mail.gmail.com> <201912120943.486E507@keescook>
In-Reply-To: <201912120943.486E507@keescook>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 14 Dec 2019 17:56:34 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQKuyyC-bjSZ=8bhkd1PHjRa-LDEsZra_tFdYbL7X-Azw@mail.gmail.com>
Message-ID: <CAK7LNAQKuyyC-bjSZ=8bhkd1PHjRa-LDEsZra_tFdYbL7X-Azw@mail.gmail.com>
Subject: Re: [PATCH] gcc-plugins: make it possible to disable
 CONFIG_GCC_PLUGINS again
To: Kees Cook <keescook@chromium.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Emese Revfy <re.emese@gmail.com>,
        Ard Biesheuvel <ardb@kernel.org>,
        Andrey Ryabinin <aryabinin@virtuozzo.com>,
        Kernel Hardening <kernel-hardening@lists.openwall.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=mTlnWukx;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Fri, Dec 13, 2019 at 2:44 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Dec 12, 2019 at 10:59:40AM +0100, Arnd Bergmann wrote:
> > On Thu, Dec 12, 2019 at 5:52 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > On Wed, Dec 11, 2019 at 10:40 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > >
> > > > I noticed that randconfig builds with gcc no longer produce a lot of
> > > > ccache hits, unlike with clang, and traced this back to plugins
> > > > now being enabled unconditionally if they are supported.
> > > >
> > > > I am now working around this by adding
> > > >
> > > >    export CCACHE_COMPILERCHECK=/usr/bin/size -A %compiler%
> > > >
> > > > to my top-level Makefile. This changes the heuristic that ccache uses
> > > > to determine whether the plugins are the same after a 'make clean'.
> > > >
> > > > However, it also seems that being able to just turn off the plugins is
> > > > generally useful, at least for build testing it adds noticeable overhead
> > > > but does not find a lot of bugs additional bugs, and may be easier for
> > > > ccache users than my workaround.
> > > >
> > > > Fixes: 9f671e58159a ("security: Create "kernel hardening" config area")
> > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > >
> > > Reviewed-by: Masahiro Yamada <masahiroy@kernel.org>
> >
> > On Wed, Dec 11, 2019 at 2:59 PM Ard Biesheuvel
> > <ard.biesheuvel@linaro.org> wrote:
> > >Acked-by: Ard Biesheuvel <ardb@kernel.org>
> >
> > Thanks! Who would be the best person to pick up the patch?
> > Should I send it to Andrew?
>
> Acked-by: Kees Cook <keescook@chromium.org>
>
> I can take it in my tree, or I'm happy to have Masahiro take it.
>
> --
> Kees Cook

Kees,
Please apply it to your tree.

Thanks.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQKuyyC-bjSZ%3D8bhkd1PHjRa-LDEsZra_tFdYbL7X-Azw%40mail.gmail.com.
