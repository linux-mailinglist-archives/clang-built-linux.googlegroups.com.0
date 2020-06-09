Return-Path: <clang-built-linux+bncBAABBRV47T3AKGQEVTII4XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C391F3370
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 07:29:43 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id z6sf8947214otq.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 22:29:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591680582; cv=pass;
        d=google.com; s=arc-20160816;
        b=qvPCh4gJgqXlAzNZMrLjhNFqVyYM84LEVu3YUdcolO4/ZbEAZl6yesnms2ZHbteGG2
         lrP9XNqUDBKNMVMFOCtAxXNDGwLhWwcJmjnM57Fjbe4alPT4a0CSOYOwKCLRN2I7ON8X
         dfhTQzc4TbWAsGdevWyJlb2S4Yz/Sj8FSy72Vix8u27CgvAeyi9adHRLWWDAg870K5Ik
         hayA3unPwANYtsLjcHE2QX3oot0VSU9s87t+O9QV/A2jcvtGv97IessYLPUwJPH94dae
         Cs3iyxoGuLUqhXLXLgnpG4Y7RLjPQQoJa14LPOCGqy1NLHRcRiIhvx8nm8hyjxNgB1AN
         OOug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:subject:references
         :in-reply-to:cc:to:from:mime-version:sender:dkim-signature;
        bh=kxIt1gj87c4A1fm9YWwWxPp239BrbJKfINfPNOkEmy8=;
        b=pE2DpXLjCnw7alS09a4/UfrPKo6eHhi7szDIKwpCpP0mSRpyzQbsMXXafOJh3JguiV
         rSqylX/YsCdYmJKfEXC7WrkuFcuGnWpwznqqJtw22qdyraZ6vSfqCBcvCwmZldVxbzjg
         RGGYBLHXLNLgLynekepgkUQu61g/VQYpCsJBRKn/cLpL2PnX3GOBkSbEou2Db7LWRENd
         c9GFCFD+Ama8NVNhAY1eEN/F+utmQkqVe/Dvvt8NklARlD3X2e3VsNZFf9Vyr5OymgAl
         HKilnI7z+Fi4pS+9r+N/jjCjNkIzkLgAUs25eAiS6ic7zqfPYHH67yUwRsWMCizhzoIL
         esKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:in-reply-to:references:subject
         :message-id:date:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kxIt1gj87c4A1fm9YWwWxPp239BrbJKfINfPNOkEmy8=;
        b=iVkIUcmg0jbY42MHhYTlMOrCCYpecOy+iSHX/OTmTZksXcTPJBfw2C+x7ZYDXzRbto
         hV48DxXmLrFee8D0v/zunAqpoDDQuHDNKgI13lb7vgbyztyl8drxTRQ9O5W8ZHgXpyzi
         dxqMIgLdR49ZMe0ss0XVw+xnnK6EZMbx3vlGV9Pe6BTVVtK3TxARGYxNujxlQPAbVpi9
         NzLLEfqwY31t4thHMt4FFmBr/KGW6DsKHJIaU7xy1Mh1rgJuognRVbwLQm87fEVqCCae
         O692guq/KNP4GmdU+ocOdfEPBWxaE+Ymfkjg5LQA9V1zIRQ9hUlopYoF5CHnlG6aiTa+
         Po0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:in-reply-to
         :references:subject:message-id:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kxIt1gj87c4A1fm9YWwWxPp239BrbJKfINfPNOkEmy8=;
        b=oKqbL9EiM7BErPtV14pTFk9j55lMcbGV2zjA450MvBBfyQAmkWsTkLpm0GlE5ufzej
         iQ9NBArTpg5zoDLaM7NnpHa/QqrtNGpRSSZMZXZFTwnSVSu/nDvXiykFaHIq+K/PMqMz
         ko2i7lRUGZwOmGtINi+Fvo1QfGh4fKcamx6+MPVHAyfNmoeVMGgFd5NO10oXp0euKKml
         IZu39y1WFyD6LjSvwg+IbatkmvNUeY0K87O4VmUxhb45oo07uwc2rMLdArB49GA7YeZS
         jgpgaV5CUH/y0YqTWao4yJHgP8M/UYXxENpNg1BE4mSK1BuqM1PUuShTPgbRbhf+BPVo
         AlcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300goEKkFoYUWW4iZaegLDUWjZ0mttTK59/B6jYo6TyVgKg77Mj
	x0are8LFwm1GwWIbfoWEV6E=
X-Google-Smtp-Source: ABdhPJzjuZdWvzRrwJzoSSNnR8TNfITWYXThVYa5WNyUuVTWlV5IMcj+IksB0gkXY9p8FWLp4cYYVQ==
X-Received: by 2002:a4a:9b87:: with SMTP id x7mr19723768ooj.61.1591680582554;
        Mon, 08 Jun 2020 22:29:42 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5788:: with SMTP id l130ls3650753oib.2.gmail; Mon, 08
 Jun 2020 22:29:42 -0700 (PDT)
X-Received: by 2002:aca:f4d3:: with SMTP id s202mr2155403oih.12.1591680582305;
        Mon, 08 Jun 2020 22:29:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591680582; cv=none;
        d=google.com; s=arc-20160816;
        b=Lh8OTyV7pttrwiX2Hyl2JVSiUXRPXg4nHy+eX/idxR/TY9r9P819QUY7GROfWdk5L2
         BFapd83eCzGdEN+wNW5gxoXHtQMBSgw0yNFFTS4aT5tkVYyEw1iIADH10TQXkHa0Nf7w
         JMtmh6uhXAWWjppY3Ad/XkPWDNlAjO3GruQwxw3OWqxJIpczP5J1umrUdWEMGK8j1cyF
         e74PzVzUA2TQGh5XsXn0HdurB5GV2lR5nbdbKvWY/BFrCZVl224jK0TR41OnFXBWVVoc
         3PFd+K1vJrBZETSYyPLDlxzMPv2vIlneni1JglAhu8owDOPDe2JkRQxRIiD7aKYfAoh1
         6cWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:subject:references:in-reply-to:cc:to:from;
        bh=djdJfu4HL0oNj30nR6VKFckClzfBk6tMcP50qEkmvu8=;
        b=UOzjiMLXOryuRwS36W8Yo5JAfGgt//g/rIRug4/FrM0Sp5iVGeCkyEtnfkgEYN1SIA
         FomuLDuoJS8IDHTnCtUnimkrFOjBRuXefBi1IddOdyRkansR1vBjmrJFJRT7W+dSG/4W
         F9b5UofAKojHg5JnCXyJ8dL5zitm3tgWfFryYbismfAMQG5YID4pBow+oV8qIaTADQjW
         9jOs8EaExY8+DhfWV4uR855IPMZ7zNwIJumsGpy80KK7VI821scsOEQHDQmNgKwsZZMu
         Cg+MsMbfFPHmTZ8dNuN8kaE3Q9eJg6hCpWxS5uCE0gsH7/OP0dRVXZYPUTIAm2ykdt5T
         YAxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id y198si642021oie.1.2020.06.08.22.29.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2020 22:29:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 49gzFg2B7xz9sTH; Tue,  9 Jun 2020 15:29:26 +1000 (AEST)
From: Michael Ellerman <patch-notifications@ellerman.id.au>
To: Nathan Chancellor <natechancellor@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, Paul Mackerras <paulus@samba.org>, kbuild test robot <lkp@intel.com>, linuxppc-dev@lists.ozlabs.org
In-Reply-To: <20200413190644.16757-1-natechancellor@gmail.com>
References: <20200413190644.16757-1-natechancellor@gmail.com>
Subject: Re: [PATCH] powerpc/wii: Fix declaration made after definition
Message-Id: <159168031335.1381411.13854674311774532181.b4-ty@ellerman.id.au>
Date: Tue,  9 Jun 2020 15:29:23 +1000 (AEST)
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=michael@ozlabs.org
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

On Mon, 13 Apr 2020 12:06:45 -0700, Nathan Chancellor wrote:
> A 0day randconfig uncovered an error with clang, trimmed for brevity:
> 
> arch/powerpc/platforms/embedded6xx/wii.c:195:7: error: attribute
> declaration must precede definition [-Werror,-Wignored-attributes]
>         if (!machine_is(wii))
>              ^
> 
> [...]

Applied to powerpc/next.

[1/1] powerpc/wii: Fix declaration made after definition
      https://git.kernel.org/powerpc/c/91ffeaa7e5dd62753e23a1204dc7ecd11f26eadc

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159168031335.1381411.13854674311774532181.b4-ty%40ellerman.id.au.
