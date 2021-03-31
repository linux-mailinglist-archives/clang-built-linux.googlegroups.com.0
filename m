Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWPESOBQMGQEK7QXECI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3D13509EE
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 00:06:18 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id 3sf1329017ljf.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 15:06:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617228377; cv=pass;
        d=google.com; s=arc-20160816;
        b=G+DGBK8vyohUtXaTF58vgsewY1Xbxvo0b5+kh46ANEigCOaWqMM5OS5j1bcaKuqEvk
         Zmr5OAO+/LicI2sdXVGOIfNtRoMHDo8VEUyKmIED6EtFO8/TLtzO7cb6gzIgh5IYJvP5
         EY/TqKgn/R91xSg32rfCNhK5p7f9qN83MAg5hXOmr8gf0izEmti9rf+9jvItPVvYyy3i
         mlRbm7dM2n9vwy8HRVyyfe/L26oThh1JYfnFrCnw66Kj2pgf8jTXbt08OcbqHKBv8nKa
         JN9QYKm6ktg6XUn5kEl+BhXp5lbBozH/jpnQNvZQIPj0IpXfGeiczknftMedoiz/SCDx
         isHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GsyA1k9aHl/Bps65X2IDdLRZwwGlZHpRzmwgoAdy5Mk=;
        b=ahEgFnv1g0XkY2sds+LQE6AIcLfze0Z7Q5+akFq8Q9RSmgq8rq6VLdzTw8y0hwdhaZ
         qTSpDpIucGBsFIVCjya8BLXRjaToNmP5qjOoO/7mP+oCXwu8GmKaWgaRyyOH3E1MKUbn
         Pkwffzg1Je9VASiDpiMZ8By60SK7lzjRDHMZnhf/j3mkXfdhdqfyK7T7+lwamUcAcMZZ
         CqhwGNZPsRgWZbwvTp3Ir2yc1qtlkv/iTe5/fPSVAxk4OQwlJZinX5ZAdzPT51/n1u/8
         2jTDKB+MVoH2OyWpKu1rSwQs1NgAnPDBvPZzO5Ajw4RZy5eFiNiS9R9Zb0MouKPF3zZ1
         kROg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ADTGFd4l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GsyA1k9aHl/Bps65X2IDdLRZwwGlZHpRzmwgoAdy5Mk=;
        b=Zx22qGKd2jfkr4qlxqBi6z0bkfm3KINX51u6e49JStvuqbQ4KrQSXxZBMuce3yl6jM
         G6UCjjlGwZQa6sTc8bskF8fullBjJMkLl1AcezxRwxfeB4LX1Hpjz4padFmB4Hot22UW
         sQpHUg9Xd0ISa3IQD2fdJLFQbHa8Ivu1mD/qAA5GZ04w4buWmO9kGqsPISErPglhoT0s
         ZlBYiD53MP71fmLigAe/wqLnwAwZi31RJKtd8ogRVTDuQBz7Sp2g0HArXOyWzSwZqW8G
         NPilrpaZJYml8G/dgf+WXEZVV7uI1lekV+XB02DE8JYzGVv/Wjms6VapkrclCIYhI6oB
         k7eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GsyA1k9aHl/Bps65X2IDdLRZwwGlZHpRzmwgoAdy5Mk=;
        b=dLIMYem8AObWaXr2PAh34jxyVfzZynmYMEtC+lwA36z74Q4HqgsOcQteYOJp1Msvy0
         9cWMOWyZSMfoCBzX5ncwjPAK3CLVL8l+KKZIUYyvw1eMfLChXA+m9WkADkFF6z3Z5reE
         d5ckpCO5o/zDLaK+9xuSygERTOierNCWd6Es8A8OrDsrsb8SEwGGLbhKncr0goGx+X4S
         l9TF9Og760HVD6G79POIUy+sRaoGb9GWw1bnf7yJDrvVT8xAsbWtajPSOfy0MNcdPtla
         LhsrtsjUxr00v1hgmqvcPX9Z34MfoyIbogwtd8n33gUiadwyyKeoJkgslrMV/KFVHi/X
         EMrA==
X-Gm-Message-State: AOAM533EVwzDEoG4cc6rdGLS35gSVMeUqTQgDCiXkzIWnqrFx9OhLHFI
	lV2NBC1VDZLRcVDjgnE2La8=
X-Google-Smtp-Source: ABdhPJzhRIWvuJTMsAe+aCGq7KPQeYTWNk7k+xutww5wIoIsgQ5TkWBXtHz2MdxIYSuJ97EmZjIIGg==
X-Received: by 2002:a19:5219:: with SMTP id m25mr3264788lfb.416.1617228377546;
        Wed, 31 Mar 2021 15:06:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:e86:: with SMTP id 128ls3188846lfo.0.gmail; Wed, 31 Mar
 2021 15:06:16 -0700 (PDT)
X-Received: by 2002:a19:6b10:: with SMTP id d16mr3594114lfa.540.1617228376487;
        Wed, 31 Mar 2021 15:06:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617228376; cv=none;
        d=google.com; s=arc-20160816;
        b=uBiWRfQuq331Wyv2lA7JroQm2fxjPLn6tGx25nS4lkHe2tlvzgzxiJGXe+Yi3XrKzs
         /yyDbsvA5bjG1dQV6IEwPaVKOQx3nMJ3T56L4uZo4d+qdYrMOh9LGx6Geq1xUu9zKlGN
         FUzfYpYlfC8KEIxMkBBY7vayIq+IIEorjN59rD4F8h8/+iqWlcYl+4VJF1+u+84rnqw8
         J3/itQBuaI2EaccGfC2EQ4VEV/fW6zp2uStKH+4VFeXlOj9FHOk8M/6BXWeH62idC4IV
         /ztlBftB24Nfo3g1Y8GYLvkhsosrs1kBmBFCfQiEUaJRiysg22ykBCt4WSJg/+LGlQ3T
         NmkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6QLAC5kN/WTgkwkL/JFTyfACTaPGT2EBf3L5262ee+4=;
        b=h8GP7/A3cbWKM4LBwHLQhWgvYwxiv2L/X/Re+85zfkEAuF+9vOYEhquneXcxDW/1pZ
         119I+ANYl0aJ2osBW/tGanYGMCoTA1AD5D1xOv70AjDtnE/yTPCHF2JTadDWPBB0IQIh
         4txwVu1BBHX8IwLx+StquszUjw0r51HCFrqyd5CQEBsw6QROEMgtAXbVC2YRmnNb2fFq
         ecrJtiqqazoPmCqXdP3ew0jnYCJa0mTfGjXfHzzCPMS8G1pel+97ILk+FxVW1Mv2d/os
         IOexvJAdZhgK0NURaei5mYpnSyrawxgTdBd1xgRWaxsom8/Yq1ZfVTXDyPUklVwu6Hdk
         H7mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ADTGFd4l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id c17si379752ljn.7.2021.03.31.15.06.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 15:06:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Received: by mail-lj1-x234.google.com with SMTP id z8so25617440ljm.12
        for <clang-built-linux@googlegroups.com>; Wed, 31 Mar 2021 15:06:16 -0700 (PDT)
X-Received: by 2002:a2e:3603:: with SMTP id d3mr3354196lja.495.1617228376110;
 Wed, 31 Mar 2021 15:06:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210330230249.709221-1-jiancai@google.com> <20210330232946.m5p7426macyjduzm@archlinux-ax161>
 <114a5697-9b5c-daf1-f0fc-dc190d4db74d@roeck-us.net> <CA+SOCLKbrOS9HJHLqRrdeq2ene_Rjs42ak9UzA=jtYb0hqWY1g@mail.gmail.com>
 <CA+SOCLLBgKtTz732O5zcrNs_F=iS6C2bE4HBmJfoPTum3Yu1oQ@mail.gmail.com> <20210331215802.r4rp6wynjqutdoup@archlinux-ax161>
In-Reply-To: <20210331215802.r4rp6wynjqutdoup@archlinux-ax161>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 31 Mar 2021 15:06:05 -0700
Message-ID: <CAKwvOdmoud9=Uf2xN7q1c1gP06ZNU4K2-Q5PDD-LTynHC+qOMA@mail.gmail.com>
Subject: Re: [PATCH] blk-mq: fix alignment mismatch.
To: Nathan Chancellor <nathan@kernel.org>, Jens Axboe <axboe@kernel.dk>
Cc: Jian Cai <jiancai@google.com>, Guenter Roeck <linux@roeck-us.net>, 
	Christopher Di Bella <cjdb@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-block@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ADTGFd4l;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::234
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Mar 31, 2021 at 2:58 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Wed, Mar 31, 2021 at 02:27:03PM -0700, Jian Cai wrote:
> >
> > I just realized you already proposed solutions for skipping the check
> > in https://lore.kernel.org/linux-block/20210310225240.4epj2mdmzt4vurr3@archlinux-ax161/#t.
> > Do you have any plans to send them for review?
>
> I was hoping to gather some feedback on which option would be preferred
> by Jens and the other ClangBuiltLinux folks before I sent them along. I
> can send the first just to see what kind of feedback I can gather.

Either approach is fine by me. The smaller might be easier to get
accepted into stable. The larger approach will probably become more
useful in the future (having the diag infra work properly with clang).
I think the ball is kind of in Jens' court to decide.  Would doing
both be appropriate, Jens? Have the smaller patch tagged for stable
disabling it for the whole file, then another commit on top not tagged
for stable that adds the diag infra, and a third on top replacing the
file level warning disablement with local diags to isolate this down
to one case?  It's a fair but small amount of churn IMO; but if Jens
is not opposed it seems fine?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmoud9%3DUf2xN7q1c1gP06ZNU4K2-Q5PDD-LTynHC%2BqOMA%40mail.gmail.com.
