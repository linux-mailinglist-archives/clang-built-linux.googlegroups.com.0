Return-Path: <clang-built-linux+bncBAABBIUI4OAQMGQEO2PX67A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C16326072
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 10:49:23 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id s4sf6554287ilv.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 01:49:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614332962; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tv5oRjvJ6Vq9Ib7XqNghCUu/iwCrc2ukk738Xv48qogj0jhcuZXyDOBb4w3lkwFPF6
         vaUOyltEtmW5LDciB0F23tZKGw8niHtgwlmayZy/e8uxWyjbY9xovR684AeeRbIpiIn+
         FHra/Wk2ljwQ0jDGq+v0Hw//ktXp/jQCWHymj2W9TErveakr5YWLQLfFneDCftqwT4XQ
         MFuoKhJBa2KyNFNQjphRgUDzi29xdD3l0LF5Ihi+7IJhn75wt3uyqDPuxIFtQKYSgfeJ
         KbKE06Afi9VQqLOdtE3th7tLUGWsf+hac3qKoOEyqM1lRt99G1p74ruKQiuXYgYxrezs
         +Alg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=WKnAleV+7V7IfNosPVu+YuqgxqEXq37OZl7vrroSWyc=;
        b=zdWTSr15L5ZfgBeVVusSVvkLHOpTlANvWY6VleYvP+yKr9ElJa+8qGgF3A1KQewVjh
         yGD8bHq81iEl61JIRJuE/gN3wO74Fl+JsvLKvapzcOhoSYgNn3pUNsUGm/0TQS8tLS6K
         n4ztWghRbqrJOFP5tANvAeR3uiT+z6CR4oV8ybVS0eivjTlJ+nT+mRTqxwtrzkE215v7
         ZUj8cGGIsezG2vyNzo5VUybUKLLvimJdsaaZtVTn+x8jxc9k96aRlLa69NecA01KqtE4
         3Q+yx2sVR+I6klpIRikVv74y2wrMsbJgt34yPAw/nQ22upGdjHqDJUhNg373JXlkGy0B
         gGCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="lzJT/MU0";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WKnAleV+7V7IfNosPVu+YuqgxqEXq37OZl7vrroSWyc=;
        b=cngP572JlC7XDEz2NIMgC57dviD+xhJhcfrOr1Y5g3b/M0hgr1DBGH5FrxCKPVwQ2c
         ImXEw5zk5xyonHGfzkOQqdtlpOrlUTb2vjSQELmyOLKFXTTlrBVuultR3VddEzxOAAQo
         T4akBtTDgkpEiLmcLALwAAYMm6BGegUoW6GqtLxiXvZi4H291sxDhTb0qAe7ZRfrvPii
         kQH8M3/uzVu+cI/lB8lcnQ4lEBQrP6SzQ1PtfyRRWHpYZvC870MqnTBcVHJH5KmxyGfx
         u/4MaQebcHtOvtQEJqL7GfaUy3PuU6iRHYGYKgwrqJQlg8WLPPomU+Rpp0ntq0XOAQIX
         qszg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WKnAleV+7V7IfNosPVu+YuqgxqEXq37OZl7vrroSWyc=;
        b=AJzhurkOfRseobPsMvoEpQw4ry9JxHUS8/WLXdDfklg9BFwjjeOxDqVjFg4uoRCxCH
         CWWSLDkyc8M/I1Xxt9w2XigR1uSuy6ztOJPPX4PLSkpQ8Bh/p80XV56PJTMuejfwsOOZ
         AnLpd4snndqNuyW6Uo71SiF73t7BKzoEZpR2PHEJqa+XzTEwiVruGojclWivkZa3EpWr
         hm2hlYJPvT7aAy+Zv5Y8vwv+BNcmGUyO41V5/yt/o+HLOcIKsO5woDoCiIq9KW1EnoAk
         fmtqyKex1PK9YJqXmiaa8KVgVx/z7C95aGSk03HAAG+Z7dF1fjds8EKciuwIR2+GtQK2
         L53w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wcmnKp6wMpOIQc/R1M5/vdnw1y2gF2ZH4OuUnP+TREWD1LpOw
	YdwWDo7DkThzUPcJrLvOjbE=
X-Google-Smtp-Source: ABdhPJx3dKIm3iJtSZBs68/8asJILkkhNy7p5VHns3HLb3/2z3gGSH+yoJUiTPgy20xEKOmWcyLE8A==
X-Received: by 2002:a05:6638:d50:: with SMTP id d16mr1850668jak.140.1614332962700;
        Fri, 26 Feb 2021 01:49:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:170a:: with SMTP id u10ls2146161ill.9.gmail; Fri,
 26 Feb 2021 01:49:22 -0800 (PST)
X-Received: by 2002:a92:c008:: with SMTP id q8mr1735661ild.222.1614332962417;
        Fri, 26 Feb 2021 01:49:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614332962; cv=none;
        d=google.com; s=arc-20160816;
        b=kP48eXza6RYNNdKs/vGdMCJ6A/a8fQQ2D2t9TEeD4vmslSaOosZ2Lf2bqXfH+AbDvt
         WmG9DyKwEqkjSPUJw1YxqHnzUJTyzvSeOkY0+LVhxwFXyx7KyL3HrZ9MsGSlCujYHJJw
         CxVfNX31qLy6iCVyHIZLcJ/4/hAhgZH49oH1aeWA2K7bpGbAC+l1FlQYkt1kHXWfHGHo
         AcZPw3M8/55nF74I6EhM5PVzeGCrlleU77osCH3NxA7JgaaNNFQyfloIL1ifrejd3x8/
         OG8PgDtSHEJ3QNJbUu5b1SRUMTicp2mjv0XuyiEq5hV6KJGdEGADj8xTOBFYBckPN59a
         o8XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z9S4dFBDrPqwC/Ow81ft32cXmdBJRpVihWY5CF5Rtr0=;
        b=DTUwqGctFLjl46k+Ydm8xQ780Z4paQW8gBj0j7W8+/Y+hNB63bkOsaZAO7lV27SgI9
         fieWsMpmKGWfn1QPvQrqLaPyjOiOxwX/f/rAbh8gEQioGECBx3lyFlTja8vyDVUs0Rsx
         zZPi7ZY30XiJW3ZrsLzPnxpFLdI2sZ+ilQCx5HuTkTC5PuEpsVoJA8Mi3ochH2+xiP1A
         VsA0cC+YCcIUIJYLkXYX6m5nyk6GaUI9a+KV2j+UVrBs/LjJ3Dmp6YOcHN/PbGz7sgsF
         RbCuLHiktf6veJOVHFulYZ8b70SZl4TR68Mr0b39JEgV+R2Hx4jk7H5RkGhlZ+M2Yj85
         cCew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="lzJT/MU0";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i2si602293iov.2.2021.02.26.01.49.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Feb 2021 01:49:22 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3225464F24
	for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 09:49:21 +0000 (UTC)
Received: by mail-ot1-f51.google.com with SMTP id s3so8549127otg.5
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 01:49:21 -0800 (PST)
X-Received: by 2002:a9d:4802:: with SMTP id c2mr1608747otf.305.1614332960079;
 Fri, 26 Feb 2021 01:49:20 -0800 (PST)
MIME-Version: 1.0
References: <20210225125541.1808719-1-arnd@kernel.org> <20210226081548.h5ls5fxihunzxjvx@ti.com>
In-Reply-To: <20210226081548.h5ls5fxihunzxjvx@ti.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 26 Feb 2021 10:49:04 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3ep7DFnMYnA7q5b-P8X7nd3TAz=t82011j8=koK3T08A@mail.gmail.com>
Message-ID: <CAK8P3a3ep7DFnMYnA7q5b-P8X7nd3TAz=t82011j8=koK3T08A@mail.gmail.com>
Subject: Re: [PATCH] spi: rockchip: avoid objtool warning
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Emil Renner Berthing <kernel@esmil.dk>, Arnd Bergmann <arnd@arndb.de>, Jon Lin <jon.lin@rock-chips.com>, 
	Chris Ruehl <chris.ruehl@gtsys.com.hk>, Alexander Kochetkov <al.kochet@gmail.com>, 
	Johan Jonker <jbx6244@gmail.com>, Vincent Pelletier <plr.vincent@gmail.com>, 
	linux-spi <linux-spi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="lzJT/MU0";       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, Feb 26, 2021 at 9:16 AM 'Pratyush Yadav' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Hi,
>
> On 25/02/21 01:55PM, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > Building this file with clang leads to a an unreachable code path
> > causing a warning from objtool:
> >
> > drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame
> >
> > Use BUG() instead of unreachable() to avoid the undefined behavior
> > if it does happen.
> >
> > Fixes: 65498c6ae241 ("spi: rockchip: support 4bit words")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  drivers/spi/spi-rockchip.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
> > index 936ef54e0903..972beac1169a 100644
> > --- a/drivers/spi/spi-rockchip.c
> > +++ b/drivers/spi/spi-rockchip.c
> > @@ -521,7 +521,7 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
> >                * ctlr->bits_per_word_mask, so this shouldn't
> >                * happen
> >                */
> > -             unreachable();
> > +             BUG();
>
> checkpatch says:
>
>   Avoid crashing the kernel - try using WARN_ON & recovery code rather
>   than BUG() or BUG_ON()
>
> Which makes sense to me. This is not something bad enough to justify
> crashing the kernel.

I thought about rewriting it more thoroughly when I wrote the patch, but
couldn't come up with a good alternative, so I did the simplest change
in this direction, replacing the silent crash with a loud one.

Should we just dev_warn() and return instead, hoping that it won't do
more harm?

The backtrace from WARN_ON() probably doesn't help here.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3ep7DFnMYnA7q5b-P8X7nd3TAz%3Dt82011j8%3DkoK3T08A%40mail.gmail.com.
