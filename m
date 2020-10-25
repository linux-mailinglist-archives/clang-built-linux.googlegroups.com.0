Return-Path: <clang-built-linux+bncBCT4XGV33UIBBOE6276AKGQEGZKDOEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D76298357
	for <lists+clang-built-linux@lfdr.de>; Sun, 25 Oct 2020 20:17:14 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id e17sf2404451pjr.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 25 Oct 2020 12:17:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603653432; cv=pass;
        d=google.com; s=arc-20160816;
        b=kZjL1JboPqEHsSRkwSzdhfYrGGLbD8lJ7X1A3uMWGqIjs0ZaryHh8Q15oJC8sp80dC
         B06XgDoBtzYIMEU5XA0QoyKN3eIj43Wo3GNS/EIzkis4LpiS0RErxDU51TTzVlxAjMB7
         YNa5TjRnmEcDVMlWfXsoq2HOeVpae3PAtgRzQKgyniMWiZZIhGKA+BgehWdYqf6n1j0g
         K5I3VvBY34WH8yWHrcA3U4vp9w9DgdSzO8tkaB/lMiGvq9VBe0gSM9jeIDbQ3gKjOATP
         aEgos5bNkwbPX2d6CWc8EQZET1FNf+r6hLjcZDgksWHo3JMNdhAJzoQec7KVMP4LKJ8b
         1S+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=e1eNLI28m3YY8BxIruCAQ2n5x8ZZcLM14LDIIXeRLUY=;
        b=AtKyYqdCtz1oaDYKcraMlorKYonwfyUOovBok0nQwFeLTpMi61EtDiz5inNCZGCpS/
         tc31ZXWSkQamh9CApqHmiGJSS9OxS27Ij4LRYbN6RFhemkFEz/leGq3+GZnd+UAEm/NM
         NQgU5q/tuQZMYCfeJe+Rqd2z/Dt/Anwp0nzZDPeRbmuV40rw/W0Wuf+yjML7G03Dtlb1
         GjDH6IQSebixHJfLqFyEmnXcjWrHhAHvpZZOrUCcVKlGa80l78vGgfCf00AchDe/BJ38
         ky6x1ERUiQnI+US9Hsz9uBOZEukDAraQSwRv4h5/yxldQJUdu37DCwjqT4t6egqf7oDE
         511Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vzt1O+eR;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e1eNLI28m3YY8BxIruCAQ2n5x8ZZcLM14LDIIXeRLUY=;
        b=mGokDr9C/R9onkeLLgMVkZkYocxSAIZmV1q1G1+7gvd8/uUxcXuFFJxOQjuQkwUVVz
         S2rcMDwXCzS9DYa/MGmaYcRwaoRCPSrZhcmKtpT9FUzngP/1rkLaI0Pdm3DcKqqV4O3A
         yDASFS/kVl8NPGnKQva+QV8tRw53D4MuOzAcj4knlrlV3BFXYpt8DUFiN+sm/BLsoKoX
         F+z1Q9GkbEjqBaYDqRgY28kKRMLXbGQrSVKSAKANqi7hQwGNKTU0QKKIhmDSeCB91zZc
         eW5w34YLQk88OJSZS6DKzJHRZLy14kDnuBxRaTAWC7zuwTxA5+/q3ALm9Z8UCLG/Xt9z
         HpTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e1eNLI28m3YY8BxIruCAQ2n5x8ZZcLM14LDIIXeRLUY=;
        b=qHjjXfR12V5ffK845DvSuu3L8K39pzVHBEVyK3kYHOhSLL2LoT+ldGta7k4c5Lh40m
         phBhXAjMZjNiWcFhwLmu3z8SXqnpnPMC+LsETdZPPHxAqsgNm2pXUvowNUzDd0BK0kHL
         i7Ds20Wmq8aDsmaO9xOTInBKDxXU3V/UukyZVm3wTfk5VRrcLTEsGw9yFb5pu6PKuO4b
         iXZAPAwpWXtdpmDGxo2bIuhKRdmwRbLjzl1QHbmlKajPvdiMLqCZsSE/w0qeXYnRRaTZ
         cfl4ZSNRks2wAviM5rp/HwNcOlYvo/CQzpD7hDZcWFdgm3nnZ3ug9gAmLQt4VcEYkQtV
         QEaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+aIyb2h+41Pg+94UA3285zVGcUq2GIU92dglnIEWTiGdeXkn2
	JYBOUmzyxTZset4mQOvzqHc=
X-Google-Smtp-Source: ABdhPJwzmJwUz/7m6dfC0fkDpdWGy0hCL2uOObr2CylnASFz3JEhfbbstCaMNxKVu5Ak60LVFWvQjg==
X-Received: by 2002:a17:90a:c28f:: with SMTP id f15mr3218988pjt.93.1603653432215;
        Sun, 25 Oct 2020 12:17:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:d4:: with SMTP id 203ls198759pfa.7.gmail; Sun, 25 Oct
 2020 12:17:11 -0700 (PDT)
X-Received: by 2002:a62:7cd4:0:b029:154:f9ee:320b with SMTP id x203-20020a627cd40000b0290154f9ee320bmr8154058pfc.26.1603653431496;
        Sun, 25 Oct 2020 12:17:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603653431; cv=none;
        d=google.com; s=arc-20160816;
        b=MMHzFgk2UcxYpKVAFvm3ThNY09kaFo/5VRaBV/cPDD1qei8timl4rjLCHZwoVYZOSo
         EP45p/CJ5ILjDjEq0xSKP6NSx049sCAQ1EbBwKal8EIIStAO/dh/mo5qxmAtF5Fceien
         4K81RGnL6nd9+nuWjEKIBhyrP808xI5oJXu+BltutCi4zUE7G8WEant3aA7lxmpEhA1A
         I6bXDlhwoeUKk2OWaveHJsNe+veG812vyHrJ9mJy54G30TR6T4y9/kKnkAUkOZieukB4
         H6TS7ZNU41CmoqwDyGVYxHA1Bd38QIGTOAibjfK+lJ2l3meV+7af8QVV7ZrSztNzec6e
         vz/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=QoJDvhlYPEVR6NIRH/RokzcAEdI/1gX8kfd3fiBq3Mw=;
        b=DXZyMHrpHvqOZBRRkzdfG+73Vmbbr8LDZGpGDGN0UahCjWA7oIenz0qWR0ZTQYWhz3
         XG3Ev2P0775wlOCVB5WBeCIsZlG1ioGMC8DGjJzOpMy2Hg1G7rBRGmlEi3LsCYtc/1yz
         sEi9vobDmZWKoFak8wcxvhde/VC60f77w5ijdD7Pw+hMIVpUCnvzZRqHC6xTx06Y42Oe
         lX8wwMG6UT1Ahwru7PoFQEfmq++a1ATacgplt6WR6ruwWCbeS79xBIcJ+bnz7UxkQ0bK
         PVxVdnt/KL7CLkz7hfGaR9V23RHVJMXTYSa3gFyacaavoNr/N96gvh8LY5n8dzD2ikar
         rAKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vzt1O+eR;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id cl2si552781pjb.0.2020.10.25.12.17.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2020 12:17:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from X1 (nat-ab2241.sltdut.senawave.net [162.218.216.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DBC1622260;
	Sun, 25 Oct 2020 19:17:10 +0000 (UTC)
Date: Sun, 25 Oct 2020 12:17:08 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: kernel test robot <lkp@intel.com>
Cc: Andrey Konovalov <andreyknvl@google.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, Linux
 Memory Management List <linux-mm@kvack.org>
Subject: Re: drivers/video/backlight/ltv350qv.c:192:12: warning: stack frame
 size of 13472 bytes in function 'ltv350qv_power'
Message-Id: <20201025121708.04d4070a44e28146baf9a6a7@linux-foundation.org>
In-Reply-To: <202010260230.VivTG0Gb-lkp@intel.com>
References: <202010260230.VivTG0Gb-lkp@intel.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vzt1O+eR;       spf=pass
 (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Mon, 26 Oct 2020 02:15:37 +0800 kernel test robot <lkp@intel.com> wrote:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   d76913908102044f14381df865bb74df17a538cb
> commit: cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4 kasan: allow enabling stack tagging for tag-based mode
> date:   3 months ago
> config: arm64-randconfig-r005-20201026 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1c8371692dfe8245bc6690ff1262dcced4649d21)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/video/backlight/ltv350qv.c:192:12: warning: stack frame size of 13472 bytes in function 'ltv350qv_power' [-Wframe-larger-than=]

That's a lot of stack.

>    static int ltv350qv_power(struct ltv350qv *lcd, int power)
>               ^
>    1 warning generated.
> 
> vim +/ltv350qv_power +192 drivers/video/backlight/ltv350qv.c

Odd - the code looks pretty normal.  It is possible that your compiler
is (crazily) inlining ltv350qv_write_reg()?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201025121708.04d4070a44e28146baf9a6a7%40linux-foundation.org.
