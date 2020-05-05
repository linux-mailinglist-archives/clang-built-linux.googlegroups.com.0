Return-Path: <clang-built-linux+bncBCLI747UVAFRBUHKY72QKGQEN7E7N6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 101EB1C6471
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 01:22:58 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id f3sf280269plo.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 16:22:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588720976; cv=pass;
        d=google.com; s=arc-20160816;
        b=Eiw+Li3N3S48Q9WnuhqQHnvo1rc4Nx7OELBbHLUQRheSuvDmxFo2X1cQLL5IG0fEwQ
         4sYAwOoLoLuShYw7SZm/nJEQZbL+T/yPhgmelD/O3zHP+IHfLAvsquoPGLvMY/FB2wFr
         jS2JUlQ5kGChEHmcmbSV8dz7b9rPYOd6HYUXB4ATvZWmcTNTzssgxyj2PCNiwPpF3rg0
         6K85WbYWc4KlxWCRMj100v61YrDms0uVNlnBw+bx9JnVGmFlhPadTy46TMg2R3vzqRJj
         6N9C2ciBwLy+oduML4+YjJIPZwnJWRqKbHofWE4Xc6LeN+EysRi1fD9YqPlG4rHSKcNk
         QoXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=F5DsJ30E2zeEnqBzWD6w8AWssJ18IqnzdAwha7+75sM=;
        b=fa5Om6eJmg5zs5Ay7HHYtTNOPcEsLUrYbjf0OdFCY0DLJcQi0esYbV4ex+n8SpKMhW
         0bV1PTNXQvjScOC+KnpckiEa1jcSDapXLWiLX8iTapkw0G1elWKSZamLf8dTIUAYAcWE
         E+J9CzniuZ7spmF/4f0ZCOkKK2NCYlC04N18Ouk53Nx7Abo0nUbf2iyZc3yEvOoT05W3
         iW8C3mm1iYkrkL+lZuTgPXW/cBK5C9qZvi4P6ZrO2hLYrjkcKwKDilWTSeHFzm+dpJDr
         RZ2jFtugqoyFR9TdKQos5/nAiLvhQvfoqv/KlhIZe/+RP0GsttdjSMc4DZbqdwP8szFb
         0Bgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=SeDwSbyn;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F5DsJ30E2zeEnqBzWD6w8AWssJ18IqnzdAwha7+75sM=;
        b=k087lh9NK0BKn0ym1jFFbMnWTpJDpWSI0uc8Cu/LglbhAQpqRA/5ZczKmsCjqwNh8t
         rCF6eORIRcsYhUqxUmdHtk20mtzfncffufejOcRFpOb1L1KQlaSHm2vJh7VlKH3XbM+H
         hXocBW6XXZ4mI88q7AF4xhZUKQ7BQ4k5O84Rc6vjgW5HCGh/qXsnqgSIfn0Bptrm5g7o
         SfQ+wM2INeSmxfUTjg3taoeiDCjrdmtyFXnbp+4iTjJQlAng67l9w6yVka5UXdqK6AT2
         WElRMs20Lj7UPSm6kIP2N9Uqmd+BUk/SENfha0VV55YLDGUbn40epuP+yZFN6LfZlYZU
         dk5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F5DsJ30E2zeEnqBzWD6w8AWssJ18IqnzdAwha7+75sM=;
        b=km44EvjXKQklmrFvRJq6j+IxKNuAarsPRRG8V1QqDdnvDdlWZ0XefkEBdbGHl3V4Av
         KGS3Bs7kk5Q+MzZJ4fJhiEuXPgGO5ws6aAk9tOFzrfegnmmII2+c3tz5EHS4OYB7t4M9
         f3lVzU27EyJ4O8xLUVG1Kb0X8XwcHs7ZSwyOVqLGDai2ZgJ/mOtvoWA+7vHkdqU4J6/8
         5HLfuXdOiPz8s5q9DRe/LHROSpoK01a0bpFtKjCMdWHSE2wFilhg0bL3hOFAH2ME8OOn
         ufAmYu2X2C1q8jo6lLmFR2BX1GWrqhuzUKMYeEXX11QSqvAiUNy6MjO7NpF3DQ54YvPG
         l0dA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ6xvYQpXkAHMx7gri78uNS6NFw/LGTvV+0CM6ZvC9y0tTuOpZ+
	wQN5Jj6sCMYKRhlHMqKnwnI=
X-Google-Smtp-Source: APiQypLl6OWyHI8V2cW/PcPXpv/X4JsJAT+kh5g4Wmx6dKDhgxWNKhM4F4EHj6dmB8J8oNvOjVW2/w==
X-Received: by 2002:a63:d80e:: with SMTP id b14mr5013320pgh.9.1588720976768;
        Tue, 05 May 2020 16:22:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3543:: with SMTP id lt3ls1006075pjb.3.gmail; Tue, 05
 May 2020 16:22:56 -0700 (PDT)
X-Received: by 2002:a17:902:8641:: with SMTP id y1mr5681560plt.14.1588720976400;
        Tue, 05 May 2020 16:22:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588720976; cv=none;
        d=google.com; s=arc-20160816;
        b=eEUn74kpK0IRne0giR42/mOjFBplVV8ybfXQyJbvryj6wRA1+Pljgv+z+7E5c7N0vD
         0X5GDjnvkBu1wajeNyb9oOJyAD0TTyI6YOxX5S1RvgOvjbw7WXkzlwULhBGUj3QTLMNZ
         5T7K9s+I6s80aOh07+TdtIJFBVFQO0Jv8yajvJw9unk29kmCkRuomXeZeF2knceAWjaT
         qG2jnlpu4dUNy8HfTnvDg5MTKth0/y+TmOv8xAE4tu/7by92U4dazXnueKKA4E9SqehV
         WWkCtsPWp1bVLRGRUopgpRYxai1BfdaIAOUYKzH4suTRtH8JIwxKBhb5cCYKT+y4WsCC
         DBIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cd2fwAW2XSb/MbKhtnj2ivsrX191v7fy1USkOgiyuqg=;
        b=FGd6VLyZX8oEFBDRsbOLJrSsdL0PPnKrpDz4FPDf01iki5drLsCTxuYKr6DSjRT/22
         svsXyjkovmcVT0xsFdJ4D2AYYn4dFnIfVutmQfaoWhftYnzaIyUUP2r3WlHkSO3ZkGQ3
         ZnZNuhdX7HZImT5NulEHOxXpD60xvD3JGRNmUJSgw6fk2q/BiCGQxvwADh6oK+ifzGmg
         277yG3lb3tzS1zGLOvxcOF2gJ8ngs2nWkvaW+MSXYvtU7UQBMVY8sGpMZ3PNhBi8X+xO
         w5lM9cSA2AJQHwPlu/piPIQDmdL5cpMHVHrkCa3wtRVmPhokQSDJ1RFf3gWlxmsk/mWj
         rGFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=SeDwSbyn;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from mail.zx2c4.com (mail.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id ba3si32129plb.1.2020.05.05.16.22.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 16:22:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id e7e30e59
	for <clang-built-linux@googlegroups.com>;
	Tue, 5 May 2020 23:10:18 +0000 (UTC)
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 4647f39a (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Tue, 5 May 2020 23:10:18 +0000 (UTC)
Received: by mail-io1-f44.google.com with SMTP id c2so212532iow.7
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 16:22:54 -0700 (PDT)
X-Received: by 2002:a5e:9401:: with SMTP id q1mr5640448ioj.80.1588720973419;
 Tue, 05 May 2020 16:22:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAHmME9oMcfY4nwkknwN9c4rB-O7xD4GCAOFPoZCbdnq=034=Vw@mail.gmail.com>
 <20200505215503.691205-1-Jason@zx2c4.com> <CAKwvOdk32cDowvrqRPKDRpf2ZiXh=jVnBTmhM-NWD=Ownq9v3w@mail.gmail.com>
 <20200505222540.GA230458@ubuntu-s3-xlarge-x86> <CAHmME9qs0iavoBqd_z_7Xibyz7oxY+FRt+sHyy+sBa1wQc66ww@mail.gmail.com>
 <202005051617.F9B32B5526@keescook> <CAHmME9q3zFe4e1xnpptJ27zywGqngZK2K7LCVzDSoG__ht=fNA@mail.gmail.com>
In-Reply-To: <CAHmME9q3zFe4e1xnpptJ27zywGqngZK2K7LCVzDSoG__ht=fNA@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Tue, 5 May 2020 17:22:42 -0600
X-Gmail-Original-Message-ID: <CAHmME9oWTv8YE63FboK4qNmy5vt2pLGyOkP52gPWVRGrhN67SQ@mail.gmail.com>
Message-ID: <CAHmME9oWTv8YE63FboK4qNmy5vt2pLGyOkP52gPWVRGrhN67SQ@mail.gmail.com>
Subject: Re: [PATCH] Kbuild: disable FORTIFY_SOURCE on clang-10
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>, 
	George Burgess <gbiv@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=SeDwSbyn;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

On Tue, May 5, 2020 at 5:22 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> On Tue, May 5, 2020 at 5:19 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Tue, May 05, 2020 at 04:37:38PM -0600, Jason A. Donenfeld wrote:
> > > On Tue, May 5, 2020 at 4:25 PM Nathan Chancellor
> > > <natechancellor@gmail.com> wrote:
> > > > I believe these issues are one in the same. I did a reverse bisect with
> > > > Arnd's test case and converged on George's first patch:
> > > >
> > > > https://github.com/llvm/llvm-project/commit/2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
> > > >
> > > > I think that in lieu of this patch, we should have that patch and its
> > > > follow-up fix merged into 10.0.1.
> > >
> > > If this is fixed in 10.0.1, do we even need to patch the kernel at
> > > all? Or can we just leave it be, considering most organizations using
> > > clang know what they're getting into? I'd personally prefer the
> > > latter, so that we don't clutter things.
> >
> > I agree: I'd rather this was fixed in 10.0.1 (but if we do want a
> > kernel-side work-around for 10.0.0, I would suggest doing the version
> > check in the Kconfig for FORTIFY_SOURCE instead of in the Makefile,
> > as that's where these things are supposed to live these days).
>
> Indeed this belongs in the Makefile. I can send a patch adjusting

er, Kconfig, is what I meant to type.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9oWTv8YE63FboK4qNmy5vt2pLGyOkP52gPWVRGrhN67SQ%40mail.gmail.com.
