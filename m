Return-Path: <clang-built-linux+bncBDRZHGH43YJRB6GGZH6QKGQETERKOLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C362B42DB
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 12:33:13 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id m11sf9919343qvu.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 03:33:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605526392; cv=pass;
        d=google.com; s=arc-20160816;
        b=atVF/cnP+kdqHitxPAhmEeDB3/STB3lCliViwrscCZEe0qWOy0iMiagqmdEMCJhXJX
         gyA8yrvPussi/PTr5BstubN0pKMwpf1j9JARufsOVwrLUzEuPhVY+YPppRJie+tj2EW2
         meKO7CS5W2LDm1lRS1EdJKoiQuSMcZjDfEjSs2+AZO2eAK9ys2ZwGO2ffQZ0If0m/q18
         yFvz21Y7zuYDw8PQD5AQEXkAJ1O8Tz4440iuxtE8KY4U/Dr+b7JQ5noY8Z/mHNP/S47w
         le5ME1KjiD/h2ERAGAvKNKIwbFxxYt/1J7YLQzegymhIf5RehpE7dhQ38dUqJQi3zkvO
         qCqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=68XGALrU5wpURddqMfALCuuFWqxV9DJw8JoiMiZLkiQ=;
        b=aBIBFBscMWSMMvN4g0yXrMunQlTUCAbQP329JYCE6Ascz6fa6wipTIg62vDTrDwYnA
         q8Dh49o2TbxlegENnxE/gHg98gH8OxykcfGILomvIVJIcTQvEF1K2pJgMxWcKXsIPytQ
         XiTkl9SYfc6GYfkYpDHLY0R6Nv6pU1FxdswH7t2hes35vMvwqkO6UNQFOD6TlMDaEm+f
         LB9Hpv7rDaIPpNcXBl3vCk8y6hugZlNBM27OqfGuMpKImBdxb1zMGarLrO0RECe3coj9
         t458Bwejo3nvUxwv7AQpn+Rinx0x6fW69f0bZ16V8Ws2MXruesP0XM19WQoUxyUJVTtH
         u4fA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XHsS+MRq;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=68XGALrU5wpURddqMfALCuuFWqxV9DJw8JoiMiZLkiQ=;
        b=UOvrtN/YgIv52RnNvE/oQjrpnrtvo6LTN+QkkR216ZPiAy0svNKFkE9EZagRjX/oNJ
         sAmkZP53uWpNKPg5DeteoumScjjIUeBx0eb4vhwVhT4iZHzqvMAZQKS5aXZ4xcwfMljx
         NWygqczqAzqFH0gTD0LXDryOKBg3el6hNuT0iIdryT5x8AXmIShXiB5yHoEJ/LLferlQ
         NrGxl0mJT9D2WbwkC9eNimUW6V2Fva+ekDWdxYp8cSmqLZGSUTRhUXgBeDDt2vnGAGPb
         RKxrHcL8Uzyxb+yinKkPpDm4z5M29t93N39v2Bp7l/ddFCkEWxQxiMTPsaHuzRepYVxs
         XsFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=68XGALrU5wpURddqMfALCuuFWqxV9DJw8JoiMiZLkiQ=;
        b=d4kiRvUV69iGDoT8xbVNYs2Lm31Itryhvs6hePFQ4aIIs4wx6odGNJuT1Jl8Wfs5pj
         CZP3972OxoSxs297C+FA7fnSsiIj5HRAyofLVsGxX22uvGcE/wGC5XuT7iApdKEJ281/
         2N4oKAvqjgXqPKUIdV35JMSZ4Ju6McWYgyji6gkg7aFxK5uL1j81kU7GCpTw7clLxNZy
         01aq2nmqT5GT1NJ1HxMzQnsrJPBY6S63n7N18kfeyTJu0qJCte2gNlZ9MUm/wYgMoht+
         90Onz1fpFx9PKN3g0N733ZjA+Lj3xVfL3klzkXiY+l1QgKLgZo5uZnfxF+9eNQlh10St
         6FxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=68XGALrU5wpURddqMfALCuuFWqxV9DJw8JoiMiZLkiQ=;
        b=tMi0/NjQL4x/TD/NAkcaOgci8DlEEVbo5qYrZXJTH8syl11YlKaKgTHPVmj4i4kzyc
         BBukHx2ZB0Sep40tpsop6oyYvpbwgu6M76p+KMVNB+LqYZ8FkrhamaJlriLPeebMNskn
         e9q3V2M6hfkq5ahz20EvpqcT7FNwqEEDfoA9l5ZFeDBjLl6yuzJOsxJsrqmHo8Fg+kXY
         sFN4jxBwq7D2gtleVB301jZiVrldIi4OeiaYLfkq9t+mDaz7QVNm/B3E2inkUgXpt3EI
         wBhRmecLQ6x8xgB0kWEoF5etW3+el6sif17yzHCe6b4fDHnF2VFhAQRayc3aileqYe6F
         FchQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530easqZ7FUVYC/oL6y1iyGnT4mlHMb0nUt9u8FHNVN5FQdCLsgQ
	+Gb7oYShJHoffbUafZdu4l8=
X-Google-Smtp-Source: ABdhPJwZ1K6YhcW9RVeiM16LiB1+MXuwmNBJeWYV5KwyVaCVgEih/8bydODhh+18VUY99D+t6NJL+g==
X-Received: by 2002:a05:620a:11ad:: with SMTP id c13mr7778958qkk.399.1605526392273;
        Mon, 16 Nov 2020 03:33:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6615:: with SMTP id a21ls6184206qkc.10.gmail; Mon, 16
 Nov 2020 03:33:11 -0800 (PST)
X-Received: by 2002:a37:c20b:: with SMTP id i11mr13689954qkm.52.1605526391818;
        Mon, 16 Nov 2020 03:33:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605526391; cv=none;
        d=google.com; s=arc-20160816;
        b=Q04S4GkdJJPzLeXrUxsBddJtHFmll9QQfQLRRiPewg6qfb9riXP9cnrXzqYnuYSGNX
         0oM8qkVHo/4EzocG57C97pXi6w/danVERdl4sIPK5RwViHs37GbqWbM/IG0nBfiDAK0Q
         ytUMm4fujkirHPW/w4waHkV3dKHZ4RRKCAwc+WNBA+y0YVdFgOWbyx2im0/8PnwULwVw
         iBeFdGGu7gLVRYE+pBQJ5Du9tOFeTYUw4u/t/U/DekXs7E62YKFnSy8EVUOAxEVnwky+
         bQiNzjyY6rHPsQXcyCxe3t+Lcrk2A/fY7xwDS31nKp1n1VBwEYycFRmYKUFW53ZP5/oa
         JCIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NGE/8zZSbrMYM1BfuDIYlYWu/KQaD7nuUUEC61XDj5g=;
        b=LeVexVbYTsg1NfdP5I0/vVrwd13DpjuU0LqwFAqQZLTT3Uxaoryye8+hiIz1tV/RPd
         g3nrudJ2eqh7vYT+QcVWKFmOVZCHWUcNhKaMCBgeTsmNR6AjDQLPCcFjn5qDh1UjtSdA
         O/HMieZ5dTAAWeTQruVBeN+1lsPenrzPbKh3PsNCNGxDqRyF4ifkCMMMowQYeXzZK5VN
         HycGgp0tWWlSVvXOyevbdtQ0nACyQjAaP498MO1wfJ0ZDihP+8qrSsb/V5/0V3a5rqAY
         3eGrzPu+PwiHk6Xiy0Brd5ZRUuK3RthqE6jOwO8frjPMWvNjCJ7v4TqOEBe55JrbkMuZ
         cBEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XHsS+MRq;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id a190si600462qke.6.2020.11.16.03.33.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 03:33:11 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Received: by mail-yb1-xb43.google.com with SMTP id o144so6456615ybg.7
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 03:33:11 -0800 (PST)
X-Received: by 2002:a25:2e0d:: with SMTP id u13mr11676325ybu.247.1605526391609;
 Mon, 16 Nov 2020 03:33:11 -0800 (PST)
MIME-Version: 1.0
References: <20201116043532.4032932-1-ndesaulniers@google.com> <20201116043532.4032932-4-ndesaulniers@google.com>
In-Reply-To: <20201116043532.4032932-4-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 16 Nov 2020 12:33:00 +0100
Message-ID: <CANiq72=nTM9enY2pTm8aoR8grPiiODCif5d7DDnOLkivaY2fsg@mail.gmail.com>
Subject: Re: [PATCH 3/3] powerpc: fix -Wimplicit-fallthrough
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Gustavo A . R . Silva" <gustavoars@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XHsS+MRq;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Nov 16, 2020 at 5:35 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> The "fallthrough" pseudo-keyword was added as a portable way to denote
> intentional fallthrough. Clang will still warn on cases where there is a
> fallthrough to an immediate break. Add explicit breaks for those cases.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/236
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

It makes things clearer having a `break` added, so I like that warning.

Reviewed-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DnTM9enY2pTm8aoR8grPiiODCif5d7DDnOLkivaY2fsg%40mail.gmail.com.
