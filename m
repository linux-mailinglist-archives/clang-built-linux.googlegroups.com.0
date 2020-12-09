Return-Path: <clang-built-linux+bncBAABBPEJYP7AKGQEGAQ7DEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E91C2D422D
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 13:36:14 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id z3sf1873913ybc.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 04:36:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607517373; cv=pass;
        d=google.com; s=arc-20160816;
        b=bVoGkhe1aQfgSg21Is7cljhrwAHkkvl6UThXZOjtyOW8cb2+TBmeRDKA+GsmmaR4/d
         6YYeGMCWnz+13Rtm9vMjEd1ElDDUHZNBewRD1iGyfLXiYpGhnCxOmwd8Kx/kpD3wNdY1
         ZX7WwlOOmCKQV3+Vs8TKrD3+HykY1qtbUWhs79TXBj8j5UmFkNL61UmK/rO6xdgigDKv
         0Xtj91IE6CksuABBuUPXXyI1NOyE443WXJn4t3qWEddI7UTvv2SwV5ISVIzOW88pODdU
         8/BWwn7GxDni1xMLFdoZ8mJPBVr68PnlCzqEU0a5wn8hRqD3e3XshdnXMCVYfr0QjKQ4
         R28Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=H4FM+hKmEYUg5zHKVZi6QjxUiZIYBpqES/zvWWxVtSY=;
        b=ChWBdtJA2VE3iKK+8BLyVdpv1Cp5lRdBk5CDzdTB3oIXkOVf5+PVCxW9Lnta6YWTO3
         NSwtp8pHi+EeJNX99j/ry53mOFyOXXoiTuirFnWeyfFJIRwtdBuggctQ+wF1YgWHnLOW
         oc9NGbiWxYPKMWXA9XIKQL7XgLQFe3nTEhb0jP1f7ijKSC1iwD6jO2IQXAusi1m4JTlZ
         wPp2c2yPGXjqjdyq+ohIyQFxdZGZkOrd1DtxNPBeucdUwvkGO13KvRL5X2Ato0iM7Hec
         +JC7N+tVztdbuNE6g3S8P9t6Mr2oTzmSepoTCaMjoLP7/NX7kQ7X3W5YU5xbSBi7i34Z
         tROA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QMe8TgyK;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H4FM+hKmEYUg5zHKVZi6QjxUiZIYBpqES/zvWWxVtSY=;
        b=AM6dwaOUG5w1ilNHI6xjGIqlZpfY6Z9xDswNZtphP2bYaxc6h8g9OSfOK9MprCmCpR
         dqz6jolbIUwH/Aeeoyd1+MC0Uxj7OX94UQq8OHT/EeNifi8gt0Jrp5/ZwA6phSZyhknU
         0m7iCJ5uNtZvgLNsf3NbiDI2tRMoArn/toJ+c2oapx3SMpgqStoPcDwtyRxcExK2SJE2
         jJW0/4tm4ovw3FHtnDSPfuoZ1QOKWWpYt1Zrapru8BJUOzuiEIC0okNjOYvnrSGEHFQf
         7WSZI6jro0PueTpCeMl2r+xEAq2ft8LrvGs3P2f2ci1XORj3HvAXWm7qoEK8PJ6wmg4L
         s4+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H4FM+hKmEYUg5zHKVZi6QjxUiZIYBpqES/zvWWxVtSY=;
        b=VteSNEqMi2SHFOuWvsLAlTjycCieOztyxAWNWK82J9L52y10IjTMox4w3j6ug/XkG1
         ViLvyVpNoeEAErX0eUbqU7ZP89jYhqx2+S0hcQi4vpWiMr5gFc2mrcgmEi7T3TrAjcPP
         juaTWFq8Be+6FiCLXXuvpxhgdOMuYH0+9pHK8W3eG2HAEmOqB267onE0AgsErk84fpaa
         M/Ns6xmEUXT4vUhdWZh5bXhd5+GbCpRRgKznLrMwjk+tyjEo8z+DjGmtYd4yFuAy8f+1
         tWcw9IngkHUO7ezo1kOmnC8KfwlcSZTvQA4ptpNkalGIW7pbl7WPlPAsu1Wr/ffm2E7B
         /g0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531h7dNe23RWAk0J7uW/gJSMD2oRpYGRxQcBPB4OSwUGvh7bYiYj
	5H07BtzItRHsOWjs8exeCNo=
X-Google-Smtp-Source: ABdhPJybLS5GwEwCm3D15B/zNkuchdHJuv6xP6EJxhlDdsbJpn+OhYc61A4IsIjKM+IQe2LZi/QlJA==
X-Received: by 2002:a25:c301:: with SMTP id t1mr3073805ybf.297.1607517373039;
        Wed, 09 Dec 2020 04:36:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7b41:: with SMTP id w62ls716630ybc.8.gmail; Wed, 09 Dec
 2020 04:36:12 -0800 (PST)
X-Received: by 2002:a25:778c:: with SMTP id s134mr3024258ybc.411.1607517372678;
        Wed, 09 Dec 2020 04:36:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607517372; cv=none;
        d=google.com; s=arc-20160816;
        b=FXS47Vg3TuJhoMTsdtzIwROEuT2lKPhdpJQQrnkd57v+RAP3/SyrSw4sg33R5C1R8G
         0WCSN8SUIuUI509FKQUkorcfBaBL4liLPfTvMaTweQS+U3eehnkeFchP61gkDWNFZ0Fy
         cukGR8cYfFvwVbo234aHnUls5yoM/xu2oDypJYcip2slZCyPJskgZ2bAUuL1Zz08aWOR
         piyZ56jN7D/rQsEpAaeptdS0MOqAivd1tr08woOSvQgKSNSrqKqxuUZ2hT2P66QzryxA
         yYcvyy26yzGNm+K4Rv4bDqJcspGXnpCuXjmXmj1bMPG/hnHK6xXsjgaYa2Z0Re8Io/Gr
         KVsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wmV6/4wQmfhfm2nPWNLnxQy5Vj2nloCVkG78DiPhuLU=;
        b=FzZEumVa7F8LjChmTeV62j3IwxAm3wS+PU7wvgu3+wtcnJYaa1hdyuBqxCIx4jDlsp
         LREscvBYB9H7owQecn2hMy3s3tCiJMIf7QW2RKlYKrr+DX9foqwA3MhDzzk4J+WrDEZX
         rPDjLMUk6ICVYU+szNVkCMho7GNGMdKja6Xg1v6D2YZHPL5YB+yt34FnrtjFIljKjWiM
         hv/X4RhGu/eyrLHq+fqrKKrj20KNMIZC7M48GyJSjmVCVw1epvH0Hga39YTUo9v7/3a4
         vL2q2iHQPwNAhu/DJNPtDiaqv1Y9IYDlcLl8TJTJBMXX9JjCDwsgIhH8gbvGfS6tk/CF
         Ev1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QMe8TgyK;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e10si118938ybp.4.2020.12.09.04.36.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 04:36:12 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a9d:be1:: with SMTP id 88mr1530396oth.210.1607517370870;
 Wed, 09 Dec 2020 04:36:10 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com> <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
In-Reply-To: <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 9 Dec 2020 13:35:54 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2DYDCjkqf7oqWFfBT_=rjyJGgnh6kBzUkR8GyvxsB6uQ@mail.gmail.com>
Message-ID: <CAK8P3a2DYDCjkqf7oqWFfBT_=rjyJGgnh6kBzUkR8GyvxsB6uQ@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-pci <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QMe8TgyK;       spf=pass
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

On Tue, Dec 8, 2020 at 1:15 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> - one build seems to have dropped all symbols the string operations
> from vmlinux,
>   so while the link goes through, modules cannot be loaded:
>  ERROR: modpost: "memmove" [drivers/media/rc/rc-core.ko] undefined!
>  ERROR: modpost: "memcpy" [net/wireless/cfg80211.ko] undefined!
>  ERROR: modpost: "memcpy" [net/8021q/8021q.ko] undefined!
>  ERROR: modpost: "memset" [net/8021q/8021q.ko] undefined!
>  ERROR: modpost: "memcpy" [net/unix/unix.ko] undefined!
>  ERROR: modpost: "memset" [net/sched/cls_u32.ko] undefined!
>  ERROR: modpost: "memcpy" [net/sched/cls_u32.ko] undefined!
>  ERROR: modpost: "memset" [net/sched/sch_skbprio.ko] undefined!
>  ERROR: modpost: "memcpy" [net/802/garp.ko] undefined!
>  I first thought this was related to a clang-12 bug I saw the other day, but
>  this also happens with clang-11

It seems to happen because of CONFIG_TRIM_UNUSED_KSYMS,
which is a shame, since I think that is an option we'd always want to
have enabled with LTO, to allow more dead code to be eliminated.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2DYDCjkqf7oqWFfBT_%3DrjyJGgnh6kBzUkR8GyvxsB6uQ%40mail.gmail.com.
