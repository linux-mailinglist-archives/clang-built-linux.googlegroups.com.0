Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBFFZUDVQKGQEISPJDIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id DE586A2642
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 20:42:28 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id r187sf186768wme.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 11:42:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567104148; cv=pass;
        d=google.com; s=arc-20160816;
        b=D/MAo+RblmUwlUJQbUJhLRfuoiScK0/li+pMwAAk/0/CdYFrNJCpw7fQxPJFcF8M/X
         wDDbJdNvuJBgjlok5P2OkuhnJRmD5koys00zK1yAWHzNnlbHv5CGy/Jxl1vXh3gmNtl6
         NnkF7YiCSKZLTMniYuoX5p9JO6kkcRv/hjutKxa/62HiQTx0UVupDeUF8ar/rO4wDehE
         +SFiK3ea2vX+yqqnd6rODW9LDFerqlZw3ut87B4dFcCsZRk6PNSZoeUGNxfOHTFgrEhd
         nrzJsUtBGOy0xJ06ssHds7QlRoSVhe6iGQyj03u7hSYodKwb3FGUbJWzpNT/A2g6t+Xh
         9feQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=jB4MnpJd9X1MYHPnNI/zTwFpjdGov0FkyXSMPe36E/Y=;
        b=bnSt5QBq/sfuO+XpT+qMKQo/+jRO0PUNfJ/rPmp23OYnbhqL+69NyoQ0UbBYLkBKYP
         PMhbbAZRORV1RLKq4Cw8ZiRqckS1+OIHhgkW6+qgTN79M2EteYR0VCe4RpKv7/2m2hTr
         S+3Atu5+tFyUfrlUXzTPRQO8nr96tLLzxQJMDAMwnZdUdB3tW4d4bQr1BTV8kRGQ0iPs
         GbA9Ik3vEZ007sAIC5N3czjIaT3CCJKG7xYEzyLWRx/XrGdN5+ScM29PuY8Z6e+qXzGE
         oCKbi0t8fBUs9Sv+wYxeEEx6wUTNvLHFJ3oFnjlHJ5VXKCYmMVZV49lE+/3iMyiuLEwS
         tUXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=I8IES4vN;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jB4MnpJd9X1MYHPnNI/zTwFpjdGov0FkyXSMPe36E/Y=;
        b=jsb+fEBadWWtQkPLJ69Oe3BG1wfAqId6TxHxEifdZKYggGdp3cduy1b+ha+XRZFpLt
         6kpG54DWGm19ugD9mBZBM10irZoEM41QT+ANYYzWCaasaAtgIBqbLFyNmqxL/Ja2wm/G
         nbQD+WJZ6Vm2FAeo4lgLSBNy5sFdeuTYZgAi7rDScdboz3ejYLkRwHLpRoZ1tkSr5xBx
         p2Xy6GlKjzvjr0hcVyT3VrT9A/edNyB7ZJSt/wG3EIw0+KfVhIlJm3jgo3TUoSj92t+F
         Mr7q3ouVC7TApigca7mhRmy1P9lVbnkrkNI/MowWq/ualOtRbHxIERHxAE/3PaZ4Tibj
         SZog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jB4MnpJd9X1MYHPnNI/zTwFpjdGov0FkyXSMPe36E/Y=;
        b=KcGFl9aSfa08RP/UK2XA0Xk5c2IuFBu+NOuYyLXzieDsw53rng3yQPSF+F+Rp75rvy
         Muqf/yfkoTCV4enB8vRNK4efNyvkxN+mb2wWp3Hv3fRWHcow/7Hs5alRgKZwOKP9qt3g
         JsfYVjM6zKUWUCjWmYu/LEsG3/C8L1TiCgsLkeDjCpvmU348ZnnE0Eko08lErQbI8vIy
         8h8MrKBV0iwF9GEaYcxhOcdcS/CbvgMaalCsoWOAcAj8PRwVj1DmNiGTB92Bp8xE5VSI
         lkeBCiW8r5WO46K228blH+DPw5koYWcMlhw7n/b+AldCViJ4ceUypPE6nMiz7iHL1yLW
         xrQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVI3lSrCrwiBBNjP/4Xy1kFm2WXqTot2U/8bskkHDkXigJbIEJy
	mGe/KiVCtKSE3YCS3BSDIkw=
X-Google-Smtp-Source: APXvYqwpz+RHtIB5c+CuLFm7kC22eo/92Nmtdhr5KIEqzL8iMu50PeYtAtmxAL89XokUCAp1FtkQGA==
X-Received: by 2002:adf:db03:: with SMTP id s3mr14255758wri.214.1567104148592;
        Thu, 29 Aug 2019 11:42:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5709:: with SMTP id a9ls1055682wrv.12.gmail; Thu, 29 Aug
 2019 11:42:27 -0700 (PDT)
X-Received: by 2002:adf:d1a4:: with SMTP id w4mr13775736wrc.331.1567104147774;
        Thu, 29 Aug 2019 11:42:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567104147; cv=none;
        d=google.com; s=arc-20160816;
        b=mxgq5KFiWTpAE+blzed0Msz2xFsNHkL2b1NYXGTNp0eY/UdQ8c8q6njMYckohp7P78
         0CBtq+pGuApHGjC6siiOE9UOMyYpY2MEuH02FfNX7mcD88ahutQTDv/iz71dBw7CYOvo
         kwx7yRnu5yCgwpGSIV4370S7ow6C9y8CUMfWNb95mEg5mgt4Z5pRQSNPZv5yZtUgT3nA
         bvFYeQXweElbzuklRYUSlfT1MoMJhGZV+DBy0DgZGPExuk5efl9zzaYpYzNjZQCkdHik
         /JrJAhWMkdwdPuHn1ObXt1zgnROgj7vUPda7k7xFh9FMxKXPTxlrr0CigNR901ccMhrC
         JKxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JILc7dKyp7SkywcuYgBtqa757bPtRNzeLCwcvrp1BWE=;
        b=JaUX2cTXBiuLvSRZKXoGcAXhosQJySkuhi3t0t9YkWWHhBTynVTJc2wBz1e9oIpXdo
         FBi5IU8MTKSp6bj65wMAOqc43LAPW/jJ79B7UQ9QqLtETgznlL6bVfx1jm8VCxUiPgzS
         TmDkHcMfGVv0fC5w185n51+0DxHDtvDFDy3wvmn+Unac0iKKq7K+LXr0TzPimW6X/ZC0
         Jhf/729AI69gCaKfw108Av/SkZOM1q1YHFNnX+kRbt3BoPg759sMnlEbz/JiKxCmBxRC
         zalBXiGtAmhg4cBLr8CMn0uMQ79I0NQUVaCpiogMJnQHprvdiGYqVZqm/QHeiWXHb+pt
         blrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=I8IES4vN;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id g7si712660wmk.0.2019.08.29.11.42.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Aug 2019 11:42:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300EC2F0D0C00900D2DBE0F932EDD.dip0.t-ipconnect.de [IPv6:2003:ec:2f0d:c00:900d:2dbe:f93:2edd])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 006101EC0A9C;
	Thu, 29 Aug 2019 20:42:26 +0200 (CEST)
Date: Thu, 29 Aug 2019 20:42:22 +0200
From: Borislav Petkov <bp@alien8.de>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"H. Peter Anvin" <hpa@zytor.com>, Nadav Amit <namit@vmware.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Joe Perches <joe@perches.com>
Subject: Re: [RFC PATCH 0/5] make use of gcc 9's "asm inline()"
Message-ID: <20190829184222.GE1312@zn.tnic>
References: <20190829083233.24162-1-linux@rasmusvillemoes.dk>
 <CAKwvOdnUXiX_cAUTSpqgYJTUERoRF-=3LfaydvwBWC6HtzfEdg@mail.gmail.com>
 <CAHk-=wgZ7Ge8QUkkSZLCfJBsHRsre65DkfTyZ2Kt5VPwa=dkuA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wgZ7Ge8QUkkSZLCfJBsHRsre65DkfTyZ2Kt5VPwa=dkuA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=I8IES4vN;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Thu, Aug 29, 2019 at 11:15:04AM -0700, Linus Torvalds wrote:
> Un-inlining a function because it contains a single inline asm
> instruction is not productive. Yes, it might result in a smaller
> binary over-all (because all those other non-code sections do take up
> some space), but it actually results in a bigger code footprint.

... and also, like one of the gcc guys said at the time, we should be
careful when using this asm inlining, because, well, if we inline it
everywhere just like always_inline functions and the code footprint
grows considerably, then we get what we deserve.

So the onus is on us to keep such sequences small.

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829184222.GE1312%40zn.tnic.
