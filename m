Return-Path: <clang-built-linux+bncBD4LX4523YGBB7W6W7VAKGQEZD52S6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA4D8859F
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 00:11:12 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id s21sf58145102plr.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Aug 2019 15:11:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565388671; cv=pass;
        d=google.com; s=arc-20160816;
        b=ixuhjO1ckK9nuR/TYxo21fbYs3xjLJzgxGvnOkCzMsFLmgBV4DbWTnDFWh0QieVAUG
         aH9fneuwRASR3d8lQ7V6FiHHjzsXGp7GQZkGyXqqRhXQyAaKEbgI3nLhMBx16/gGdxpA
         SgMQDEfTcTvz8nwzwX903DM2rI6vzXQ3u+5qnYDT480WPPtT/8oJUFx1FrNqiJLLoXXn
         sM3vXxisWdVJhNF3qgnXROpjn2b6O25y1THRJt3F9kfNj8/Uy4idsbebOr1DIslcbP48
         phUyXGws8Ict4FPAsOtfSp3MR3LUzv9U+6HxUc/FYGMJgIAU4hKfr828EWbWf8zcZ5Gj
         uN4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=+fdLOooqW2nwFboVBRj4QTRNPfXgJ0HHy0UaJGwZQ3k=;
        b=U7WUj+pLGtO9rEkSsgK2gicqfAW9Nk+Yz77ZjgyarUFP0UCsVCzJW/F1jCDTNXKvGm
         wgd+xcSSVdaL80xV0mCTYYgj2oU0/BX024Q3bkI5ObHngz0a8FlnyJfbxRnrWHpVZ7Xh
         dOoXRPLgAduHRZlNy0o7nTVwlT/JhSBIwA/xqyh1WQ12SMFX+BbTVaOwhSPJeXpVxn6U
         QjyxthecpvpgHA9WGmHIb/dFRzh+/XkRlypyZ0F9RDbPTR7xWY2/zwFydQrHjZdeVnv+
         kF6w8LRa0RUm28GHjqLImp0UTaww8Hw3zygXaCx+BDgSNvGMmeQjlq5bTQ8sVLk47GA0
         q9Uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+fdLOooqW2nwFboVBRj4QTRNPfXgJ0HHy0UaJGwZQ3k=;
        b=eYmpuSWiEzhwf7wNGQNr+XKexkU23ZZsXhqam25Y5CZZHNKRvnR4LTigd3/RmNXqcm
         sb01IC5QVSNOWvdtrVfHwNOZXm9EyYyObLi2WA1UiUJ4TvoxBI8AiFyTXRy9/njedYBR
         rCLNoClkrnaRjUro6uwuisGplS2yMw+B5RJ2/lSRUftaqlESGuo94Xt+GVYDpCbfMhyG
         ImadCcKma/2FuZ1ZVFFQHh2kWDCgGBKajjRvFJm/DbbCgxJWETEoFbnnT97MZOMSDyRD
         DgqAf5rjyJPNHU9Dqy4jMmfhp2fqtNOTF2CfVI7Eit5Zv7Grud3DP5LPkvHmKCZJZpRB
         tkyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+fdLOooqW2nwFboVBRj4QTRNPfXgJ0HHy0UaJGwZQ3k=;
        b=e9RsvyGguYmLsuYEo2c+ubgCpE6ej/y+2UwryR0pgZWfzH7WBupKpHQ+2pCnc6eOYQ
         VLFAKL1K0I2x/yYp6BqfnixojT7yLCWeebteXHkWwqfKCeJW40CTbOeo5DTRk+UzRz0Y
         lql6+TudiVQaswYw6/inv7+DvwpKMNS8q1u/5db4wNKH1mQvARx8xf3TaLzfcsFoOfPE
         nmMCwVN4exi3sdTfvBdzRtmgjWBI+NSAkToHiICLOaHiIFt4WGyRNnuKyeZaOe6bk1db
         l1kE3eW+p9mSstF8pazyKHg04TDF2bQJOxpIiKe/hmPv6e8joGCes28TbvvTJFR4TI4g
         8Mkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVpUEfrgZXxUSRqgPckCXLLtDRwT7VEVrVT0hNfuf7ptHu5wMxx
	yVILEv/HYswjT8Wg5Q4t6tA=
X-Google-Smtp-Source: APXvYqzqWxP7dW0B/hESeSb5X4y6BFoeNVQecfF4YzIkB5Pg74S4FS5SHrtLJr23CVyjdt0JBBMB0w==
X-Received: by 2002:a63:f401:: with SMTP id g1mr20102847pgi.314.1565388671036;
        Fri, 09 Aug 2019 15:11:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9406:: with SMTP id x6ls22975973pfo.16.gmail; Fri, 09
 Aug 2019 15:11:10 -0700 (PDT)
X-Received: by 2002:a65:4243:: with SMTP id d3mr7363336pgq.119.1565388670679;
        Fri, 09 Aug 2019 15:11:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565388670; cv=none;
        d=google.com; s=arc-20160816;
        b=XeCC2dvksdD4ONskNkhLThsLvnto02mIx8hth18BO2C8hLR4jOcRhOQY+2icIPkalh
         BZIg7q+uhbimfuLmrcwBEOP9rupImANkYBUDEyQDpBNzBcWGuVHM4Nxmnc/mH3gSmXYi
         K9XrQGJfHhn3QgGJWYQ2FQzTF73FBZtOM/Aw0px8dMmdzkf8EjREyZf7nh0aYF0FSaid
         3BupM8TLzmOuRScnp4rtH6k6ash01I5yM8VG6d6oUNPmtAC+adsdsFmSZGXH8Jpk+BPT
         3PD+7oNe7JvqAGHWQ1vFhrJ+FrY51QZLWBic9NZXkNT/ug9SN8WnrWlCy33ZD6IWapmt
         SSoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=jYwpE8NJPuJffkOiKeAZUzbqGt7GI4z5KU4I+5wFO2g=;
        b=ii3TMdP2L+bTd7hO9i3hEUFMWRgbq7f34javVJW5JJWX/6EoAVsG8DrgOJI2jiIVz7
         YQZ1C0Zd6q1k1Eei4I9bEYj08aAcnS8RpoNLkR0QeCe/QBltRc7aP+VlTv20yjOveD1o
         O2fTuz9x0IGxFt/uyZXoUZmvXElOPD2zYI4grDMt1UJ/QX7PA+bl3MOBS1DqNrxzrxQx
         J6RlhUelonuhVa7elyA+oTt7yzQirOsAKt0z29YUA5eNJXt71jTVwdYSCaTN0s8AlhcJ
         /gwWp22Ra8uuPlf84Z7h91TfvKgSy4G7vRY+l+yf+naSxvBpXYghzP5eloWLAg7T97Jf
         nVwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id 85si3062070pgb.2.2019.08.09.15.11.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 09 Aug 2019 15:11:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x79MAsUH030114;
	Fri, 9 Aug 2019 17:10:54 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x79MArRl030113;
	Fri, 9 Aug 2019 17:10:53 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 9 Aug 2019 17:10:52 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        Paul Mackerras <paulus@samba.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        kbuild test robot <lkp@intel.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] powerpc: fix inline asm constraints for dcbz
Message-ID: <20190809221052.GP31406@gate.crashing.org>
References: <87h873zs88.fsf@concordia.ellerman.id.au> <20190809182106.62130-1-ndesaulniers@google.com> <CAK8P3a3LynWTbpV8=VPm2TqgNM2MnoEyCPJd0PL2D+tcZqJgHg@mail.gmail.com> <20190809220301.Horde.AR6y4Bx4WGIq58V9K0En9g4@messagerie.si.c-s.fr> <CAK8P3a1AwmAe+PpHTRmN153fhG4ZkF_pb+240rj1ZAg-S6SKeg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a1AwmAe+PpHTRmN153fhG4ZkF_pb+240rj1ZAg-S6SKeg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Fri, Aug 09, 2019 at 10:12:56PM +0200, Arnd Bergmann wrote:
> @@ -106,7 +106,7 @@ static inline u##size name(const volatile u##size
> __iomem *addr)    \
>  {                                                                      \
>         u##size ret;                                                    \
>         __asm__ __volatile__("sync;"#insn" %0,%y1;twi 0,%0,0;isync"     \
> -               : "=r" (ret) : "Z" (*addr) : "memory");                 \
> +               : "=r" (ret) : "m" (*addr) : "memory");                 \
>         return ret;                                                     \
>  }

That will no longer compile something like
  u8 *p;
  u16 x = in_le16(p + 12);
(you'll get something like "invalid %y value, try using the 'Z' constraint").

So then you remove the %y, but that makes you get something like
  sync;lhbrx 3,12(3);twi 0,3,0;isync
which is completely wrong.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190809221052.GP31406%40gate.crashing.org.
