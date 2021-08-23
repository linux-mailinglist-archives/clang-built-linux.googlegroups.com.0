Return-Path: <clang-built-linux+bncBDS5JPEL3IIRB7UJSCEQMGQE5WAX23A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 924CA3F5215
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 22:28:47 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id h36-20020a6353240000b0290233de51954bsf10890229pgb.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 13:28:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629750526; cv=pass;
        d=google.com; s=arc-20160816;
        b=f8BE5zJUa2fR8ThAiyzkTZukrVo4hOSmvtNKaWfGy+f8td/AZr8HQTb+QEnWYsfPdt
         pKh7LBZwN59JysmFG38VuoY64gL0Xsk8C0MkysD7moAT6laCRcbluF3icxTLnqpVtEGx
         5XlJOorlRWrj1+c2+IGiJCiCOQsTaDIzlvhbBDZA+TqDyHQ5cFhUhrZI3/OWQKhZ8Dty
         APvF2YLdrsfqe1wfV2zpfWSugCDavUJPL6/RMHFk1B2nelF/vbuiNzvYk2jw/ITAg5QD
         cGSBaSj1S2nOzw1HtbKf1aqf2UqyBf7WOdoT/CJ7NJFQVD57SR8C06tOAIr+BZTXKiMM
         7/vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=MVY5k/Y8nWkMrxUI31HGBrFqOh85XpNHwO0cIVwkR0I=;
        b=KTggbVMapxJ47k1BaPT9KqhTEC6UbtEy9To7atNcwOfkBlP/nJwS9VKY0wX8WOBjEl
         TzXH/orArq70pKtXPBcByCKpEF6UK72Z46Wb3YU1uuvaCQBTS684hJYOeTTNfUld8fGZ
         77oYBVPDWr7/Z7ExT7owC5pKaMZ2hYx7PnRqJHLSLH/jL7EtvmDrBRYHHaXS0VUc25iP
         0yXuf65eeSSA84DkWCXH0wYOFtbF0ZPStZe/4VIBDwVTL5HFA8vbFjKsSVx6E30tjdGj
         1pmUpswS3xqEJSR1Mh4bxD/NkFTri14JL8kHdlXxGkQw6Ex6wV4UcjmOSMU+m7N2SuyN
         xG0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AoKScfuY;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MVY5k/Y8nWkMrxUI31HGBrFqOh85XpNHwO0cIVwkR0I=;
        b=Krrt7gwWnb2msJB+EOCHgAfEyczbpFP/zmJ1IYkE1J1Akz8woFbLKcDmituAkCF2PK
         VNKYnnEZl8aqpkEcM2Pe/q46nqwpnhPZXnw6EF5uZpmhcb3h2vY+60+8kcjEIc5vZ0bv
         Htufr1YQDGzcDcT/sRnL7gHhntz+ObiCRbVTCdPYfvwtA6Kzrn8PtjMetru7yrXnYj1+
         JaKRPpJb6lr5gFgWOyAIyOh4U9RbkI3ei5AQkq8b3x1nV57h9ShKIlLyMOvLFBkoNxGw
         6JSlmjq8MrOj+jtL4P3m1cdUgq4GialXSFUd7Ii3xkBzfpP/D4Mg4mM5ApQqGEPclU0q
         YkHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MVY5k/Y8nWkMrxUI31HGBrFqOh85XpNHwO0cIVwkR0I=;
        b=VbTQZF9jA9hxV4QM56tcQ4Ab5s6z2kW/gnU0q9MF0sZ+MBeB3+XbCiTBQwvzCxS7iW
         DjlEeAT7C4f+bDE6+fkTvxA/uB1rvvTC+10iiw7xeJLSslXsbyhSUGcu7ZveSNji87/i
         lXvw3cyw847MLhJ5CclNY2amz1mnPjd8f/kwTCmBY/aD2hPuIOcMNq1LlkKMfQDDTm1R
         Lv5al6e8MUO7H2+XJL0Xe6Y59yC8FXFRFr01SkvdxnCpLP39xgGf2ySpHZaKJvJ2ESmt
         twxmNtQORp+LdW4kBgm8HovuACcrbfpDCBKe5wGgVJ8azwwWxdzrx2QlJwwQPM+XChif
         4+nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MVY5k/Y8nWkMrxUI31HGBrFqOh85XpNHwO0cIVwkR0I=;
        b=mSRWeTZOFC9aVHzUctWnwjhirbyVcctQmbp6rko6du9g6pc8vXXMBJlMEmgKCjjPqK
         3GZ9997lYaetlqwGFdmhccx21246XOZvDdZNjkGdV5TW0VRbs96UyBPqwWIoa2PpP7bq
         HuXd3Xr/1d3uqOc0hU94+gndq7udyF0gC+lTX3pZrXUQsOBsROJoRPrZhw6lSfXo3Hx+
         wH3bmS3D+P2JlISfRljanmSxK5olzA1ktnVTBqrVecorrG0C5DETw6QGsrLOXp2Tcn+N
         vRXNVOprykI6X4IM4Ck37kfeqfjfYvycwK0SdYrOPxBYk51YGvBqY7IfAA9nHfYqwZE/
         u57w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Nu+UDthmbDHlCA6fZAxt2a28hR1fP7XtGiLNlw8m6CcSoJl45
	yaRZ53L9aHXa7B4BucBEAgU=
X-Google-Smtp-Source: ABdhPJzIekffue09aF3EzTl+WrQ0bHOzw48nBvZejFAqbBRDWDccKIMlXj5O+IgJ8HOWM6NV1DXUDw==
X-Received: by 2002:a17:902:c406:b0:12d:d0ff:4aa with SMTP id k6-20020a170902c40600b0012dd0ff04aamr30136385plk.48.1629750526286;
        Mon, 23 Aug 2021 13:28:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed82:: with SMTP id e2ls9072088plj.2.gmail; Mon, 23
 Aug 2021 13:28:45 -0700 (PDT)
X-Received: by 2002:a17:902:6bc7:b0:12d:aa67:695e with SMTP id m7-20020a1709026bc700b0012daa67695emr29947217plt.76.1629750525639;
        Mon, 23 Aug 2021 13:28:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629750525; cv=none;
        d=google.com; s=arc-20160816;
        b=IDSpJhr2ywnB7qUtwaXmBIfRAwqOu5lpCoJNw+kvBtIx/7DeHBI5VrJsYuNjkH8jRC
         FH3nvlISAdMsWWBygxFZu7AD5g0aBpA2Nx/assPdbavBsCIWxTTzJRUmeruABGbSERQO
         AhCtNBxCRv5eHVGcYdhvqfARGKL4J3qcHnizKIbdoU5mB2d9olYOjOgLQlxW1Ws1vM0/
         U9TZYCgD4/OwsRS4112g0CV2l0qm+hHg/CW1biNHE3Ey2Hpq4rDzuf9PSoc6Zrbs540X
         8EkZqvgy8oTt3zepvokShF3FhvFfIDR0Yr1l0+oeGYbsQkDS8n16IRYoF702+XqgqTa1
         tUTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iHUFFdYsb/5FEEi+ueN+k5tBOVMtuTo2uZhx4OT0c4A=;
        b=vEbbpE0lirxIhtF3GLzbd8Vc/Z9MIlsXaFK8ldfgfWTKOsv/U+t2n45XuzsUBmxkEu
         VPd2S6oFfMujGcmUVzojnPHkh8jUWd9+tFPqHjRJ81VLWpy+GkyQlrhnrTNjd0d9h1zp
         fwjrH8r3jWYiQonsYPVpSykJf1ZZrZj5hLrYk05xoX/ns5pjoVWxXqWn2nretcVY8SdS
         kWIPuZstDTuOzYDgnKjoDS6Lv0xChaUR6FQtpONfrTczgTS6nQfvBpWuCsuGXJPSS6gX
         ivInZIJFpoxFLU8VGxYqIUz/jO4l858uP8yy32C+k+xIp/i4W09Pp0WecNpUbRTp++zL
         ifAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AoKScfuY;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com. [2607:f8b0:4864:20::b34])
        by gmr-mx.google.com with ESMTPS id o5si1061433pgv.1.2021.08.23.13.28.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 13:28:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) client-ip=2607:f8b0:4864:20::b34;
Received: by mail-yb1-xb34.google.com with SMTP id z18so36520884ybg.8
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 13:28:45 -0700 (PDT)
X-Received: by 2002:a25:f310:: with SMTP id c16mr43477241ybs.464.1629750524959;
 Mon, 23 Aug 2021 13:28:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAKXUXMzdGdyQg9CXJ2AZStrBk3J10r5r=gyiAuU4WimnoQNyvA@mail.gmail.com>
 <20210823191033.GA23869@breakpoint.cc>
In-Reply-To: <20210823191033.GA23869@breakpoint.cc>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Mon, 23 Aug 2021 22:28:45 +0200
Message-ID: <CAKXUXMwZo+HixV+zYWSNvTX0yJNXaFrxCF9hOJ-77upP8qKS0g@mail.gmail.com>
Subject: Re: Suspicious pattern for use of function xt_register_template()
To: Florian Westphal <fw@strlen.de>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>, Jozsef Kadlecsik <kadlec@netfilter.org>, 
	netfilter-devel@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Netdev <netdev@vger.kernel.org>, 
	coreteam@netfilter.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AoKScfuY;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::b34
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

On Mon, Aug 23, 2021 at 9:10 PM Florian Westphal <fw@strlen.de> wrote:
>
> Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
> > Dear Florian, dear netfilter maintainers,
> >
> > Commit fdacd57c79b ("netfilter: x_tables: never register tables by
> > default") on linux-next
> > introduces the function xt_register_template() and in all cases but
> > one, the calls to that function are followed by:
> >
> >     if (ret < 0)
> >         return ret;
> >
> > All these checks were also added with the commit above.
> >
> > In the one case, for iptable_mangle_init() in
> > ./net/ipv4/netfilter/iptable_mangle.c, this pattern was not followed.
>
> Thats a bug, the error test is missing.

I send out a patch addressing the issue, please pick it:

https://lore.kernel.org/lkml/20210823202729.2009-1-lukas.bulwahn@gmail.com/

Thanks,

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKXUXMwZo%2BHixV%2BzYWSNvTX0yJNXaFrxCF9hOJ-77upP8qKS0g%40mail.gmail.com.
