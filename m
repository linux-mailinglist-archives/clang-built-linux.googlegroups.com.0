Return-Path: <clang-built-linux+bncBCJP7WOE5UIBBPWG6P5QKGQEIN5YWFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CE12853ED
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Oct 2020 23:36:00 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id y10sf2635plp.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Oct 2020 14:36:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602020158; cv=pass;
        d=google.com; s=arc-20160816;
        b=0slcDkl8zBPh8UmtvGGmwUooF36wrvYQILQ2sANiO4neqobbK+CBvNyt60Rr3QKbky
         /87lUGfV1vY9kH+dY+84HbGLvQDwUw7ocwodEEQPSbznOUB/r2sZe2mn5w2f60g7AYhY
         rYr5HptA4mx3UUxoYIAp3dJt6e0Sjd0f/5Ypk0qXG5pkocaAvl9NBQPaD2RU+P1aA2gV
         uzGJpqKI4/B/ee6M2BDsuypM7qQQZ6Z5FUuzHl3qFXXXfGEImzaa2lV3CzwQ1Orrz/vS
         tI/M8XOOGKGbTJ2jW/Dd1Jn8+vI+57o7qvZ35RcD2i5YXv6gdH8pySb/lHOfRHOiYVrk
         Og0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=KnJa+r3Mn3UcXsSKaj4qugaQ1HIqu7CuciiA6W23b3E=;
        b=vCOTe3UfMN4llOpY7iyycYOsvrO2Jrmo4nl7nuhDttKf75sOB+iGYYgHirnzfzbjHM
         6RhnMQa+vWiCQTY0bwTErQLTAjZLAzOtJ3MwEY7B0t5FQS8bW7uz6TjOaBCEY9R6xpQo
         qF7xpupwZ4IajelCwDtC6WJbPGV9Lnp1d68mg5QQTQ+a2mAi8SztFpN933XOQidWmXbb
         nsbEsqm/aUIc4MNAgP4pUclDVOE0yImhXOdumi8wzWB87Y8eOHzAId69NifE3FJhCvNM
         Nbv9a2dBdjwzE3sflEDbCpb7itW5iv8NN6/svpGto2K6b9kGmDu/ud5AhtwyF2WHl1NX
         k+wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AWXmY+d1;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KnJa+r3Mn3UcXsSKaj4qugaQ1HIqu7CuciiA6W23b3E=;
        b=XE6GREBH8zSOSxOEz3FaUySQL7Fj1zWYGXwrh1SKwB1PFU/bstRNPeg8NXDppHCxmv
         0CSj0Dfh6xqY/TcFMXLSm18DH/I6aP7Qnp7aOgRR4kzSxMrC4dVjk8hNRnRKu1UMMR9D
         ccqHnD01JMw6HuEyUCdDFVGs70hTv1OTy6KE4gkrtuHeZoUYtACRvueKVMiqw4jY6EtR
         iaU86nBZQF3GOsIemMPipV6v1bxXem6Dl1BfUnJajUrtwEZuZZTTak6le7S6W1rix9/O
         fHo+IXIafOGSeXBZAQ/ceVrLsa0E3SbrrhEuT+K7fKqvbehWoZqjwrNvqc6vPDc2lme8
         pi0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KnJa+r3Mn3UcXsSKaj4qugaQ1HIqu7CuciiA6W23b3E=;
        b=oAwep3Uu1WQvOEDprDDRWBchpN5sApRqYb2p4rtUbIUTS1opWRMeSbrZjTUjQme4Mb
         rM302TKnocZVx/GDGPHjXbntUGFWS9D+ctnJkWDT0O+bHEaZ5hHND1tmUsdMH4uAZHje
         jldks4om6LCJeGJ9D7H0+xzEcPxYbmlWta1XjYmv5qlla9EU0Tf7JCvkCelxdE8VDyEX
         HBl4x6r8cngD+d2TdC0fJ6NP9fKJx5EcwkvmQuKNvkESIz9VdcMZeh6SehayvyHn5X+Q
         KH3J7RqqN4ngho55L5fF60yhT3Hb1tBhv+OVdrGIkxLReDeoDj2br4jU+tI8VhKLkFpH
         Zj7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nm0DtFZQ7MM8FQW0FAYfRZk5I8Q67n2AzhUNmZuOq2EZHINei
	srzGYiFuqTajwLG59jpzuxo=
X-Google-Smtp-Source: ABdhPJyF9ALb7FAa30XnLhy7eWHiZVH+S5x/8oSsY1ytmvcFEpjFsyjba0fU0KHqyKOFbrEnu2YbTA==
X-Received: by 2002:a17:902:7441:b029:d3:eaa4:8f35 with SMTP id e1-20020a1709027441b02900d3eaa48f35mr3833478plt.74.1602020158371;
        Tue, 06 Oct 2020 14:35:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:16c1:: with SMTP id l1ls55286pfc.1.gmail; Tue, 06
 Oct 2020 14:35:57 -0700 (PDT)
X-Received: by 2002:a62:6845:0:b029:13e:dcd:75bd with SMTP id d66-20020a6268450000b029013e0dcd75bdmr6449162pfc.12.1602020157851;
        Tue, 06 Oct 2020 14:35:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602020157; cv=none;
        d=google.com; s=arc-20160816;
        b=Sn1tPx/e9F9A13i+5Sm5PPuJYx3f1DTzwvGDPwPt6mT2SHecdVNqD2R7O/7ZEGt7s+
         Hu9+E7ble3sfWdqGsfVGFq+adAeCWtctFd70KzP/OrkS1hD+nh+RwyZ5afkhu5e6qLxL
         wfJjWtDm4/PFA0A9XeN4r7XpYiyVRW0XKH4zqMyaZd0vkT/f0jUaIYWXHx0Eb/zzgyIg
         FkbtuzP4ZDT+1xCGKY/P0LIWv0u/CTX4uuqIz5vrSbJqK/rUo6F275/ALlSkHmpXgWdy
         OKncfNNLcbuk8DF5PR8z5xOrc36UhqnY668c8qZ9+KHacVVkf1kCvsV/PJnGSwF1rgsb
         S9UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DIhoEkw7QDnbqFkt4C/9ORTsJfEnPY9bxYmbo8CQgVc=;
        b=ptcNNVi1BbaIc9zwp+g7MuiUXSpwv4g7LZoQJsd3jp1XMR3xBO/A1jsW26vlafRZDL
         6mV1VcckVU93ShY/U9/yXcaUu5iTTxjVT6PU1iaepxMxY+gCtLifHdn4M3E9et2ADnqD
         E8Er73y0grcoLALoywP1YTS17pnTUBJAYje9StqpRYsNA+8AR+Hr0gI09YRtUBq/5o6D
         LUT3EijnAyQJUZoqHAjv2NTkXzp5pqA2TkiUEjKAXh6PFmzXXo1lo2R+EpXayRrCdecc
         COtFfYx7uPCZ6RzzJedLe+DCLdNg8qoZ+hUzeibAy/9RRVX1P3lMOgvLoyjv37sik3tT
         n6xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AWXmY+d1;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id u192si14919pfc.6.2020.10.06.14.35.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Oct 2020 14:35:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Received: by mail-vs1-xe44.google.com with SMTP id u74so53752vsc.2
        for <clang-built-linux@googlegroups.com>; Tue, 06 Oct 2020 14:35:57 -0700 (PDT)
X-Received: by 2002:a05:6102:3ca:: with SMTP id n10mr44736vsq.23.1602020156762;
        Tue, 06 Oct 2020 14:35:56 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id w201sm13111vke.47.2020.10.06.14.35.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Oct 2020 14:35:56 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id 5so44419vsu.5
        for <clang-built-linux@googlegroups.com>; Tue, 06 Oct 2020 14:35:55 -0700 (PDT)
X-Received: by 2002:a67:ec9a:: with SMTP id h26mr17365vsp.34.1602020155557;
 Tue, 06 Oct 2020 14:35:55 -0700 (PDT)
MIME-Version: 1.0
References: <20201006195848.707504-1-natechancellor@gmail.com>
In-Reply-To: <20201006195848.707504-1-natechancellor@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 6 Oct 2020 14:35:44 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VKud6KXYSXG79qOU-feKJqhOLeAf_eWuummotdBSyHcw@mail.gmail.com>
Message-ID: <CAD=FV=VKud6KXYSXG79qOU-feKJqhOLeAf_eWuummotdBSyHcw@mail.gmail.com>
Subject: Re: [PATCH] crypto: xor - Remove unused variable count in do_xor_speed
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	Ard Biesheuvel <ardb@kernel.org>, Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dianders@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=AWXmY+d1;       spf=pass
 (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::e44
 as permitted sender) smtp.mailfrom=dianders@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Hi,

On Tue, Oct 6, 2020 at 12:59 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> crypto/xor.c:101:4: warning: variable 'count' is uninitialized when used
> here [-Wuninitialized]
>                         count++;
>                         ^~~~~
> crypto/xor.c:86:17: note: initialize the variable 'count' to silence
> this warning
>         int i, j, count;
>                        ^
>                         = 0
> 1 warning generated.
>
> After the refactoring to use ktime that happened in this function, count
> is only assigned, never read. Just remove the variable to get rid of the
> warning.
>
> Fixes: c055e3eae0f1 ("crypto: xor - use ktime for template benchmarking")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1171
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  crypto/xor.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

Whoops!  Sorry for missing this in my review.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAD%3DFV%3DVKud6KXYSXG79qOU-feKJqhOLeAf_eWuummotdBSyHcw%40mail.gmail.com.
