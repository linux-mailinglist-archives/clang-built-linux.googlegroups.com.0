Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGFEU3VQKGQE7TRK3WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 23642A3F8B
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 23:16:10 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id z35sf4627521pgk.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 14:16:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567199768; cv=pass;
        d=google.com; s=arc-20160816;
        b=aioarwcaiLX+u2ynKid8J5u9H0zIFvwFsD4Tu1dLlyuZZIR0NqNxTSgsjVvmlbtG4N
         VU8JC76gJTUSMcnvzgc2yiuYTiBzNa/O2zQ7crSzGCE1ITEMmvSDGR78y665FhRmfZPn
         1E9I/9GqYfJHKDlR/nxF087KYOwKUudTlxUtj+OBApZmu8hsHZoYyv0sUVHdmr4cGUbY
         CThu2aV5Ub1fP7P0FlCRA4v8QtAIQSYwsLuJBin2aEv0bM3ZJ9qbxiv4GuQpkWW3Ncg3
         FJR5ZzZ0HDXpOS4/VX4/GaFOoDyGh7uAfK3yoST8jFnzdDypChYQIPsHXhYyioZ8qqQz
         C2jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zBUc9OzIM8LhKjZTePgLZDHTpM/SPYk7OY0eYBmy4MY=;
        b=UzXvM3PPOhmS5WTyv0DImZ6zf4pDhq2gKDquwIXO5afaoGwovrr1tiwr+arTgUgC3q
         54C3bj9tIln62zB47JwIEnx89SEMdycKVI/TMpfm7DDu8DDZwjLF4eiCGew6Bwp6NaPP
         HXY23dhk6H2EE4RfzEV5FarMr8k8Do+3k+O6uaiZoL08gOw/v9vJsgFrBA+M3Q3rIfnc
         4bfikoYxqkNLjglqXdXmmPlJOr6ev9cawrnpw5ydCpD4q4qnJO1f0CjrxOBy02FBjIEG
         Zk28VzcTEXdEVDucsuYuxaKX6+TvdCrwnHTwpXCWo5ak/LDridrapGYJbOney0ok3/iB
         kI1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GmxIp6vz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zBUc9OzIM8LhKjZTePgLZDHTpM/SPYk7OY0eYBmy4MY=;
        b=lyCyzIgo1vUwufrJeMy7zVk1Y20A+wl/dD0E4kXv5Bx8H83JIaAvrFyWBAu5+BRmD7
         8AWCuc0TaZ0GJQqgmgqID/bHp6Wq/vEvbSi6Oxd7qsRzwmgSxpBjObqLHkYSyzdlTyWT
         OvVBtUpkE7OD924V6x5vBQ60iUs1qL1ZeR8TLeGwFpQeyJKjMVgCla1DNuED4GT8tQ7A
         DHs1VadRKZ/hVWSb/+ov8RVkVQ5j4xBtsOEWXJ5b2EVcgQZeq3wA5BHDFvOggYr1/YLN
         SlWMvBFe5bkDU15byQVfpaH0ZwHUzj7sTV2U4HdtU52bd7p99+PMVNczSKWVvhjsD4t0
         ua0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zBUc9OzIM8LhKjZTePgLZDHTpM/SPYk7OY0eYBmy4MY=;
        b=JKH7QhtKIJHcIcoIPwlu6Ocj4belJdVkPPvigZxCRnraQYF5gbqvvamzDNmBEj4oVS
         WaFIut+ulWzkxuwoWsv82luwXle5VDJs55hNcRVzXQbFo5eQ22E3hME1T3lMArU1j79F
         wu26q8+pv1gDfB7e1nn3G99TGr1zYbI3+XZIwfrxvmAfvlrlatcoGUnTtABQfyzIMnL6
         vxhv9QjkH56aYdJj4G++uNsvqTisiIhwubP/hWxDOv71g7XiiTK5k/XglxOBjuVFPf5J
         kn5J5U6NrUUaa04tWpUku2pC38/GpxwFfa6IOIT/wGxHsXT4rTvoosvNqYVA4J/eXu8G
         +Z2g==
X-Gm-Message-State: APjAAAVaghCWCoYIUSkBki6vPgGSZJ1rkBW4rLLDUiDw+tUxNtP2tiC7
	VSOPU4t5+A+eOj2hn6DYhQ8=
X-Google-Smtp-Source: APXvYqxekbZepQHofii1YEyvmr3E2jnH/gRJBjEnRTHJbHLZyCJngSlSsXot9ltYqOyktztGKU1A0w==
X-Received: by 2002:aa7:8808:: with SMTP id c8mr19702259pfo.67.1567199768696;
        Fri, 30 Aug 2019 14:16:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b48c:: with SMTP id y12ls2254274plr.4.gmail; Fri, 30
 Aug 2019 14:16:08 -0700 (PDT)
X-Received: by 2002:a17:902:1a4:: with SMTP id b33mr17377986plb.141.1567199768440;
        Fri, 30 Aug 2019 14:16:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567199768; cv=none;
        d=google.com; s=arc-20160816;
        b=gO2tN+aur/+XKDedRC43sAc4LxrYjuM9TC6X0VEaZ9XKlNiUhy6LHPoyfxD3HdZ7Lw
         prGDybFDS693AzZnCLMryPd0XUy1qMkLVfY9E/DPmVKxSbuU4XDV+qTMUx2g9Mt+Rs2a
         uVgwPr59RSjHnvbrYfK07KQ+7/GGnzmXW+XSBzZKdBn97ysz5Ox21aUCPXiYE/SoRBLS
         FMzRUZMORB5zQoMJj9xinf3GxCX0X1gZRza/Hs+0rBBI3RaNdKpkZFJXaMEVNNzrJqiB
         vRvghDT4+vgeL8dApry82e5HN/nDen/BitOir++5ioNuEgDRQi8C/imOGIaOBd4mrlrt
         g8ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7xmwWYOATsL2bKw+HC5S30we7ZKKvQz0E6r6R/UPw60=;
        b=gVIgB22POQzZPEypXlKmoB+i8lc5zWzjiSqehPSlDeqQ0kME1vtjzf6Z+64kMAyLfK
         yWyqcTr4LbKPGFze/cwOcmo3NW2HQq34RhrpthitZ+kDQygKIl25M4p7k4f1eV/Bn9M2
         O36FNYGxNidzz9F06YgxALe4xV7hA7S6MZzm7h8DkrVlqtlRi7HygyxqjuY1cg4A57IH
         7VRnnrVkdouDaKQNnZCgILVDJPUCJ/Y3HGSbF13h4lFLa+QFWMOgU0x1tYVH07kqZ2lm
         xQx3vaAD7Zix7R7VjcjGv9wsmgoTu9f80Qxr+F/LOuje+BLvYlAxkFZkdTArgdn4S2+h
         Uxew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GmxIp6vz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id t14si571248pfc.1.2019.08.30.14.16.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 14:16:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id n190so4152390pgn.0
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 14:16:08 -0700 (PDT)
X-Received: by 2002:a65:690b:: with SMTP id s11mr12545004pgq.10.1567199767599;
 Fri, 30 Aug 2019 14:16:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190829062635.45609-1-natechancellor@gmail.com>
 <CAKwvOdkXSWE+_JCZsuQdkCSrK5pJSp9n_Cd27asFP0mHBfHg6w@mail.gmail.com>
 <20190829193432.GA10138@archlinux-threadripper> <885bb20c11f0cb004e5eeda7b0ca6d16@agner.ch>
 <CAKwvOdm-9T5Mmys93VMK8HLUgPJa2HOpcmG96SAvH2EGLA=3Nw@mail.gmail.com>
 <20190830172824.GA119107@archlinux-threadripper> <CAKwvOdksu_L+e52awkd=ffkaasCZeBjKcFU4nvU7q7reEzF2WA@mail.gmail.com>
In-Reply-To: <CAKwvOdksu_L+e52awkd=ffkaasCZeBjKcFU4nvU7q7reEzF2WA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Aug 2019 14:15:56 -0700
Message-ID: <CAKwvOdnUsmGg0V5GXeo9WR-hfOUQ_3_8-9t8n4ZKS8=inpxRHA@mail.gmail.com>
Subject: Re: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Stefan Agner <stefan@agner.ch>, Russell King <linux@armlinux.org.uk>, 
	Arnd Bergmann <arnd@arndb.de>, Matthias Kaehlcke <mka@chromium.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GmxIp6vz;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Fri, Aug 30, 2019 at 2:13 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Aug 30, 2019 at 10:28 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > index a43fc753aa53..23c2bf0fbd30 100644
> > --- a/arch/arm/Makefile
> > +++ b/arch/arm/Makefile
> > @@ -115,6 +115,10 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
> >  CFLAGS_ABI     +=-funwind-tables
> >  endif
> >
> > +ifeq ($(CONFIG_CC_IS_CLANG),y)
> > +CFLAGS_ABI     +=-meabi gnu

Needs a space.  `+=-`.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnUsmGg0V5GXeo9WR-hfOUQ_3_8-9t8n4ZKS8%3DinpxRHA%40mail.gmail.com.
