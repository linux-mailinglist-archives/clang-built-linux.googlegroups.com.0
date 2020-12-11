Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBKX2Z37AKGQEN4FBD6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1152D7E3B
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:40:44 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id q4sf7105152pgn.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:40:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607712043; cv=pass;
        d=google.com; s=arc-20160816;
        b=xf16Y0MOuSg6pcO0VWxFOfPIBP5zpZLBGawllgDO82Vn9ahmWDludxXMEZ7VtZaB0G
         uhfu0W58EWXddIU6hIG+j7BPE1rhGrJOukksbGobCfyiLGxnpoYsejvHMTPPFdELp4f+
         ulXMZTH7956DVpX3hZfX2XJAOen6iObHhbsEZIG4VyiZW4sAz+h/c0sOgsMrqLxZzf95
         /ZI8xxU7yl3LyrhK9M/XjTUCCNXqiLxDYTqsPojdrminMjtluAJRoi0gbPjjhnkapSf1
         jutgs52K8iXhrRCJkxGDIrXnxRNk4qmEeCB19v3gnVpZQC2LjJeu6EqC7zpAvN3x2D37
         nCBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Bv/JSWb6XJ4WtsqAJ2I37Hf0/VHmP4grVY0Ojh0Jy8E=;
        b=EQ/ri606Wl44v9SwkgfMkkUZ2GF+ykyKEtfQ74d4g2AngcL3i0gJ0ixOxMYYspSwJM
         5Uy4LAfQkeBsSx9UPRMR3ur/0UZW+w620osElldlVLcXxs5W8h3maVNpvKIxjKJdpUGK
         1S75A5Wh+dR1c6S2D2tFw+1fl1YvO18NPg3HXFh4y7bgorrcwPrzuoydsrbbxVxO/jFo
         fcUindQZjFFnNmEl8VEYt990GP7Vv8x0sAoKwMn0N/vlT1mA4VS+uG770td7h4Eo/xY6
         c7K+adEUmmSwQAMLuATHHAD9p1jkRXPJYyqReZadfiC7fJpU6qfjjbh+Hk6ju2DSKVWd
         MylQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ir5gHcc7;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bv/JSWb6XJ4WtsqAJ2I37Hf0/VHmP4grVY0Ojh0Jy8E=;
        b=r/DxfuXpfKW7qVN9xkYAr7eV0YudNrwqbIRN9HYMuc90e0AO//Gf9TK0G88Bg8pfKI
         68OM73LNjq5OdDjZU4gsn+lfxYEIG/DGdeyByhfgN9Z2u04gGizdqUVeOCq/vd+95p5M
         zWcKxFg6mfB6pWCFEIxDFcwyMzOnQidrF6Je8mrS+pNVFplHG4AhqfoCCrfRRCzaKvT8
         FO2qZibRd9BYhBY6Ob7N27V3dSJ8wbdR1IZTzyWR/ut1pm/VnL/1ME3jr/SnHu3wGrIC
         f8vzJBTI0Bc7jGXJPg9zM6llOf35I+uauKD5CJWYskUz3aMhdwCijqiRxM6i3SZLa9/5
         WajQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bv/JSWb6XJ4WtsqAJ2I37Hf0/VHmP4grVY0Ojh0Jy8E=;
        b=sHd+YmizYzLXg0B3La8IOTtwvN015BAb8IYDLoRQi6ZSIMLDW5MqOEvuQDk69m95h4
         9XUXPv74Tu02G5pdxSwgDG5fZhuSk9ZwinP7+cfakPJ6gCkjpCDGZOr87dkWiw0EoOrN
         tRk977Hg+lEWKG3N3S+EggBFN1uSwTJNEDTkO4eyTF2Y4pma3PT65Z5vKABycBs2Q/qQ
         mA7E2Mfze4xJXaO1xFF7sHNPAR3BaSFJNGe1MZRpE/3tOoMKxCk9C5IxVBHnK2fl9uSq
         zzaZEf1buPJ8nNZjdgfv5eCeVF2ZVx6end1WZ5oiq0ze5zyxh3eVUQYYZhvNBDi7OceJ
         7xSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bv/JSWb6XJ4WtsqAJ2I37Hf0/VHmP4grVY0Ojh0Jy8E=;
        b=dOwk5RlsWYKN8uCn+Q05Fd5bynB8rq1yW9U3wQbnh+MOygCBNiG4jRdPEUdgpxdaqy
         l1aZTW7IZWpn0NymogtgedrgM0E7MNK86jTD+I6+uLq2TZ3PxIaUQHpFJF2wdj5zEm0K
         fw5aXgqFzFB3h9Y0u71PuOqo4T09tkjn+JHfdg7vMak6JGwDsIijWF+0OYFW5VP8m3iv
         Q7BJejU9+V/YXVw8AvLdlHh0gHxHJKMNPX0yR9AVMstBkyiVuLlwMiKz3VTTVz4n4+5Q
         sZDmAkWPCfOOeU7MV5euJJLapmzzICbWpvMy1RfSkAzVPvT64ByiM45DGfUp0vB02lYz
         jmmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ltagUNLJ74PtTf/TALwtQiSrG74IZfcrIGfUBo0V6aSNhP80n
	jaM8KuI039CxmvJSbqBH04M=
X-Google-Smtp-Source: ABdhPJwWycqsY0QfjnflBl3zEgNLHOfCmscW0wrklv6f1HA8NoB9Kw3/O3sNgusCgjcMjMjnn2unpw==
X-Received: by 2002:a63:ec57:: with SMTP id r23mr12733617pgj.315.1607712043073;
        Fri, 11 Dec 2020 10:40:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96b7:: with SMTP id g23ls3688443pfk.9.gmail; Fri, 11 Dec
 2020 10:40:42 -0800 (PST)
X-Received: by 2002:a62:fc86:0:b029:19d:9943:c843 with SMTP id e128-20020a62fc860000b029019d9943c843mr4689567pfh.71.1607712042361;
        Fri, 11 Dec 2020 10:40:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607712042; cv=none;
        d=google.com; s=arc-20160816;
        b=UKF79kFeB9ctCe/SSiDMiw9FWJ01zxt8UyzMMeuITXwaDXIn9NKjMur6IqyoItU2Qq
         UUkW4p0yuAxBJEofA9tUE5cvga8cVqjZtgA/xTJcrHLWy8gd5l385vBHrRvqchPa5Pio
         NhyUqijve/1Zat8VUN3Up9w8MxG1HRVDQOafR1kjs3BadnjJqkdJRjiyBCnJDBq/M2UN
         3T1bVFQFOEQfrG8EhonrqunAJ41/Sy3WfJBthDbSVLxB0uSl440vxAEkc7ofWoB5Ousy
         p6TecP6XNDZ9ZY6CBZ0flj9sHa8rlJuC66XOPG2j/noWJtjtJbkJ79NtVaQSYDlBlT8v
         OPdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MRVPUYlxS/fdaO/lelSMT47zpvZj2vTgUngdVgjDGwA=;
        b=c55ZQPP1LaavTsWX8vd9YHVk8tW6lpsr5NiAJFBcfmfLy1eXcgnsit6wG7OINm42Kj
         b56K/471njNuI+B+H1vweZstdKV9q+jtyNJ4+GRqxDBlvslzUS7iR782F8wl8MXwk9EY
         T6HeLkZ+p5x5DgqLwbjYj+zHvW03fCOWBlpNYTW7cRK+j7tppw28osMALXKbPpPiZr6W
         +4HqVwQrwXSQo3dPhNIxuXGMsCT6aZVr8nKy7kWvzVG3ryojfphheDNe2E/tyLVZ+f0o
         09fwrBCL99c+6iojfIL9z1miA+XeTh0GEfh1ebF/LDAssavuHAA/Wl7W9iM6+RceolKj
         nUuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ir5gHcc7;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id a8si669282plp.4.2020.12.11.10.40.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:40:42 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id z5so10451953iob.11
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:40:42 -0800 (PST)
X-Received: by 2002:a05:6638:bc1:: with SMTP id g1mr17132579jad.27.1607712042045;
 Fri, 11 Dec 2020 10:40:42 -0800 (PST)
MIME-Version: 1.0
References: <20201211181236.25755-1-lukas.bulwahn@gmail.com> <alpine.DEB.2.22.394.2012111923020.2669@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2012111923020.2669@hadrien>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Fri, 11 Dec 2020 19:40:31 +0100
Message-ID: <CAKXUXMxjtv5B4ekC58=Ww8R4Ju2MvT0pXbPi7XH+OU7JuYnP3w@mail.gmail.com>
Subject: Re: [PATCH] block: drop dead assignments in loop_init()
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org, 
	Hannes Reinecke <hare@suse.de>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel-janitors@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Ir5gHcc7;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d42
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Dec 11, 2020 at 7:23 PM Julia Lawall <julia.lawall@inria.fr> wrote:
>
>
>
> On Fri, 11 Dec 2020, Lukas Bulwahn wrote:
>
> > Commit 8410d38c2552 ("loop: use __register_blkdev to allocate devices on
> > demand") simplified loop_init(); so computing the range of the block region
> > is not required anymore and can be dropped.
> >
> > Drop dead assignments in loop_init().
> >
> > As compilers will detect these unneeded assignments and optimize this,
> > the resulting object code is identical before and after this change.
> >
> > No functional change. No change in object code.
>
> It looks like some braces should be dropped too?
>
> julia
>

Julia, you are right; I just rewrote it to:

nr = max_loop ? max_loop : CONFIG_BLK_DEV_LOOP_MIN_COUNT;

v2 will follow in a moment.

Lukas

> >
> > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> > ---
> > Christoph, please ack.
> >
> > Jens, please pick this minor non-urgent clean-up patch on your
> > block -next tree on top of Christoph's commit above.
> >
> >  drivers/block/loop.c | 3 ---
> >  1 file changed, 3 deletions(-)
> >
> > diff --git a/drivers/block/loop.c b/drivers/block/loop.c
> > index d2ce1ddc192d..eed4bc5ef5c5 100644
> > --- a/drivers/block/loop.c
> > +++ b/drivers/block/loop.c
> > @@ -2304,7 +2304,6 @@ MODULE_ALIAS("devname:loop-control");
> >  static int __init loop_init(void)
> >  {
> >       int i, nr;
> > -     unsigned long range;
> >       struct loop_device *lo;
> >       int err;
> >
> > @@ -2343,10 +2342,8 @@ static int __init loop_init(void)
> >        */
> >       if (max_loop) {
> >               nr = max_loop;
> > -             range = max_loop << part_shift;
> >       } else {
> >               nr = CONFIG_BLK_DEV_LOOP_MIN_COUNT;
> > -             range = 1UL << MINORBITS;
> >       }
> >
> >       err = misc_register(&loop_misc);
> > --
> > 2.17.1
> >
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKXUXMxjtv5B4ekC58%3DWw8R4Ju2MvT0pXbPi7XH%2BOU7JuYnP3w%40mail.gmail.com.
