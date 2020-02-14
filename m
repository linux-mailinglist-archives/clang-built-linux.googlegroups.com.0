Return-Path: <clang-built-linux+bncBCDITI7XW4DRBG5WTHZAKGQEQKOERWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA2D15D3D1
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 09:32:28 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id s9sf3100744ljo.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 00:32:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581669148; cv=pass;
        d=google.com; s=arc-20160816;
        b=zmZWKkIwvC42APouwQtHVU8uDfArnk9VZbVcUmWLquhGpnkLEtnHi51mYon99H+ei7
         NEEsx8ZI+S8Wr7Pwj73c/bQpUigUHofNGSbSMszBrxA4/HKWdtTZ4OyxX8PkXf83vgTi
         V5awXoIQqBlu/B6DeDgReDTorbJC2ma6X8mPeg01kMTrTPrAfWYfKaNqUBVZl6GIJP20
         mO5fE5PTQTsSKl+9m0Mgme/443DoZEH7as92328OoHyAQ7Ysqx+YafavWKWcApRseY7D
         /LIh6SX8UbTy2XIda6NzXTXJPwiDaNs6xR3sHPFMVW4UoRxJX354xy69RvpGbR7OG7kl
         dqMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:subject:user-agent:message-id
         :references:cc:in-reply-to:from:to:content-transfer-encoding
         :mime-version:sender:dkim-signature;
        bh=Dl1r+bQKdggKQhKaAlFEc7QsKHFQpv/NYUcrxlZOUWs=;
        b=0pAZ0tu6Bldb1NpnfRdAS57gwEeX5J7gaxUXAcUPA5OdPfu9EI+1fwyOpirLs7o9CH
         Cp6SQzF7solNBUc+KTYv9knxl1dcjWZyW7ivPF0IshPw+CK+KrXruOUMSqvzqxAAX79i
         MITBFL80qIo/zyRPGt7G2+PfXC/f6vfo3DkskLpPl/XzIRTe3UnnRURzpb+A2LNwKlS7
         y0ms0czG+envpztEC/DFSGaWciobymxx87yWFwONZ+ZTq7X+fXU+CtJUCY9m+B28aAOA
         5jJ+r4LQu9r7eHFPPhYmVRvV3bNi+mfICv8OOYYlb0j2DSjaXc8bLtsKM1VkMu8bNw+F
         4euQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 77.68.26.236 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:content-transfer-encoding:to:from:in-reply-to
         :cc:references:message-id:user-agent:subject:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Dl1r+bQKdggKQhKaAlFEc7QsKHFQpv/NYUcrxlZOUWs=;
        b=aFX7ufi5VC2EFjVl5E+o/qtv/Ssi1MwUECxWP6k7EqOyurFLnvZwC8QLgg9LoN3Qud
         5TS1T5FSUcTKtdGC7kemC4Sxpz9kCtQjwkwj+7HVAz/Eu7suJxfpqsI5AT4GUGtO7W/D
         tg78O/vSh/3wzxT00OzR3XTo1kLM/sbHF2ZExVY+ekZTcYJE1l3klkE0EsYuYP52nDYW
         xkhaJ3RRAiQOeRCISuH8r45c9qAcwabCvzJQfwI5CIImSRqSdyRkq32knmlhhfa1MpBV
         ZazRJ4kuPuFmKN6ybvi7dC0gV1td5zySeTt9attwVKMjb5yQHla6zS+R7XkAOrFFO/4f
         E/Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:content-transfer-encoding:to
         :from:in-reply-to:cc:references:message-id:user-agent:subject:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Dl1r+bQKdggKQhKaAlFEc7QsKHFQpv/NYUcrxlZOUWs=;
        b=fYPhSRlScJ0KR3pzoxHJR8lgwT6kcDIQLzkOhAxAJDmTluQkZ4DzPbd5CMlhtEIbdS
         9uZJs/5bIAgu98jNjyi5X0onTr8Pl79+yCDYvEZCd4uhLj2bOrpQ9KeVdwMG33wGbNaZ
         1C13+tMYpqpFVP3Dz6GhJxv7lGgdxY+BPalHYgDJ2cf+V1t31JVlRBtAh9re+jG2h47w
         H5rkMpKSd6mrZqqnN/0XkVpbXN7oHVLYdcfDnz4qpSnlhHdJwnPXr8t4G26sDgYdHR8c
         huQeOxJQ547yf1MBlQkwcNV443XY56jTgZ2wt6GrB9A+1Zv050wcM/gC2F4fchauijX1
         I66A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXO3mE9FO1M16NWiwJvPARQuq27ZagtjAYs/qoQVAl8ggn8/iUx
	fByb7qPt1PaqtZvKkSb8zkQ=
X-Google-Smtp-Source: APXvYqycB8BBntjdn0zrlPkYFYsOhirHbMsjjRSiDzIBIhSGDauOdyUXnvlTbpMxI87lHcJRa0aCFQ==
X-Received: by 2002:a2e:8015:: with SMTP id j21mr1339698ljg.172.1581669147808;
        Fri, 14 Feb 2020 00:32:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9786:: with SMTP id y6ls283528lji.4.gmail; Fri, 14 Feb
 2020 00:32:27 -0800 (PST)
X-Received: by 2002:a05:651c:546:: with SMTP id q6mr1442785ljp.18.1581669147175;
        Fri, 14 Feb 2020 00:32:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581669147; cv=none;
        d=google.com; s=arc-20160816;
        b=hnmlHFXZTiZ/ey4THrZO2l8HlgzyAeS1Ft9G55qxWw3MNH2ABlWuWe7I+a7Jo4/rqE
         NYhP+lfnZLPo9TCCfQzqdrYkKd+dEk+cpkSrPtUlwfPXe3xwsevTmiG+yPlPhhXXnmHg
         zlN1+qGGJ9R3/cbJcNpfL1xdsIRhzJjtqebKwk5ny86bWsSuPWTpZuZWByGbc1mOWv7p
         Z1oQsjtnQrHFcuCK1jyxxTiKs/pqTMgiWwBPnWm5lF3OMVBfxDK9qMnx1ynKeJDdOOVw
         lX8rr7YlwgFaJEAS1bDMNvfEoLWNiL28ZNOO729ZaTX+Sirg11qof6s2H8qsYwzr06S9
         xl4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:subject:user-agent:message-id:references:cc:in-reply-to:from
         :to:content-transfer-encoding:mime-version;
        bh=pzfhBoR1fzJtZWZREu0nMjQpS17uPu3lP7eC3DwXmW4=;
        b=bct65WLAfWiISiwuTQKSShud7JBndDgi0wbsfNaq1KS217w6C+9vWd94zKY8iaHnze
         hah+eEDDaq0Mb/lntvOSXZVy77STLTQmDtNOC1265QEcz2wY3dg0D3tIHnfZN1DtNev5
         +LA488zzS85FdxDhHKPMj8GviHlnlUgCXMiRAD1ibMiV1R9aJpuARMSVtYjlylMclmqP
         ayVo2Fn0zblvctThMMbnak8Ife8dJTs7UzQxqOuc+LQYG8uArAZp4lUyya+q4bbf+pdP
         BuiNfaXCpr09NwGyUNWUUwLDWqlfW0cWMYSjEmjR8FVbk0gyMBybX49GTqEKWCHgOGM0
         L9AA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 77.68.26.236 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
Received: from fireflyinternet.com ([77.68.26.236])
        by gmr-mx.google.com with ESMTPS id x5si262198ljh.5.2020.02.14.00.32.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 00:32:26 -0800 (PST)
Received-SPF: neutral (google.com: 77.68.26.236 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) client-ip=77.68.26.236;
X-Default-Received-SPF: pass (skip=forwardok (res=PASS)) x-ip-name=78.156.65.138;
Received: from localhost (unverified [78.156.65.138]) 
	by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id 20220168-1500050 
	for multiple; Fri, 14 Feb 2020 08:32:23 +0000
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87v9o965gg.fsf@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>,
 =?utf-8?q?Michel_D=C3=A4nzer?= <michel@daenzer.net>
References: <20200214054706.33870-1-natechancellor@gmail.com> <87v9o965gg.fsf@intel.com>
Message-ID: <158166913989.4660.10674824117292988120@skylake-alporthouse-com>
User-Agent: alot/0.6
Subject: Re: [PATCH] drm/i915: Cast remain to unsigned long in eb_relocate_vma
Date: Fri, 14 Feb 2020 08:32:19 +0000
X-Original-Sender: chris@chris-wilson.co.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 77.68.26.236 is neither permitted nor denied by best guess
 record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
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

Quoting Jani Nikula (2020-02-14 06:36:15)
> On Thu, 13 Feb 2020, Nathan Chancellor <natechancellor@gmail.com> wrote:
> > A recent commit in clang added -Wtautological-compare to -Wall, which i=
s
> > enabled for i915 after -Wtautological-compare is disabled for the rest
> > of the kernel so we see the following warning on x86_64:
> >
> >  ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1433:22: warning:
> >  result of comparison of constant 576460752303423487 with expression of
> >  type 'unsigned int' is always false
> >  [-Wtautological-constant-out-of-range-compare]
> >          if (unlikely(remain > N_RELOC(ULONG_MAX)))
> >             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
> >  ../include/linux/compiler.h:78:42: note: expanded from macro 'unlikely=
'
> >  # define unlikely(x)    __builtin_expect(!!(x), 0)
> >                                             ^
> >  1 warning generated.
> >
> > It is not wrong in the case where ULONG_MAX > UINT_MAX but it does not
> > account for the case where this file is built for 32-bit x86, where
> > ULONG_MAX =3D=3D UINT_MAX and this check is still relevant.
> >
> > Cast remain to unsigned long, which keeps the generated code the same
> > (verified with clang-11 on x86_64 and GCC 9.2.0 on x86 and x86_64) and
> > the warning is silenced so we can catch more potential issues in the
> > future.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/778
> > Suggested-by: Michel D=C3=A4nzer <michel@daenzer.net>
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>=20
> Works for me as a workaround,

But the whole point was that the compiler could see that it was
impossible and not emit the code. Doesn't this break that?
-Chris

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/158166913989.4660.10674824117292988120%40skylake-alportho=
use-com.
