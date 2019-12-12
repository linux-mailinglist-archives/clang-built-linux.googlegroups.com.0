Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBHU7ZDXQKGQE6DNTCAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4105311CA10
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Dec 2019 10:59:59 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id t74sf442365lff.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Dec 2019 01:59:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576144798; cv=pass;
        d=google.com; s=arc-20160816;
        b=o1Aixd89QVKkRtCpbPWNiDSygdFgEGk4m+v4BfqyvZFuwnZnVMz2DmXWew7YtFOw5/
         gdmn/9bzgsWqSrTkagENSLLoyCLLZ8lHdJR2wMgataaYWbgwUGNZDEB4xXvNIiyWa0TZ
         5ylnrzyomD6Ny/+DstMnT8PWVq0nvpkBY0cefcGt1+2J0fswjRp+ytfrzsFwlgMTTVym
         qxL1/C42wTzOBxRHR+7tjEj4tlxWic1fQowSnAT+xlY4PUp9kNGDiZPHSuXs9SeKrXmz
         CsLMyW/aLVrTbbZ9hxyuX9vWgpWVMFBeq0nqicf5Myrab4B0zCd6iOOtUVEbV1SUHVgo
         xK7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=0lu3cMWJ1XMGr4trf2RNMdFIUGIx3LxuH6dP4p13oFg=;
        b=plh4qI+MvtVsRcTMRozDQqMWNFRBegtGJgMn68ksmCvRRU/PNenHDImhScMj0uZP2b
         VijARYx5CnM9CzR2PxgSl9hlEBpU8WKEem/xIM1GHa4xSMce/rmiTyTeBwzlGxSLUzo2
         L+9muCkYXPo7J003Sr2ZOWlL8nc7ry3udo8LCA4lfHfdzYTAz1yyk0HZjcitPF1gHToE
         VXIpyedqUdepi9kar7dk6cSrSCgb642wukVevfZxVcNNiC5eBPsDU3W6wkcNqIXCm+NU
         v9lNdt+aKCYma+cVIDSkXPvCSXHXkuzt6segKMElTSYRZnQdIdADTOs3vbk/eHIcLjIU
         fkPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0lu3cMWJ1XMGr4trf2RNMdFIUGIx3LxuH6dP4p13oFg=;
        b=n+7fukTXhHNlMQjrsrmBn6ehRwfUImxN5NNxFHAMz59ywMc+37KEPOx+qPTqiCmjus
         29cb6LIU+GPxkxBgU1D0U6lN7QL5dXJ7jMY+NJ+BmsDBL0UGKxDulPy8C+My9cjMtM7W
         BK5GImqy1+SoPo5FNsv9/zn7TF2q0PPuP0insFZ9iNAtLMU33YojKGBP9hood+ZlL10t
         wTHiZm6BqfLaoMkKhrxxhwfHkGJDI628ROxRLyMuGPSuqQqdsqR54HZ2wI2Q3Qxdkahr
         mXDsLu1PgCsAQ0bqN3F253UFcWolB+Y/PbtWhMSBermgQ5Q/StTfYyYnyVQEMjBpqTwM
         8icQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0lu3cMWJ1XMGr4trf2RNMdFIUGIx3LxuH6dP4p13oFg=;
        b=hAZdBySFdMWog1yhlWBqWOWA2veO1MaBv0Bp3ED9LotESo5ntsr7V+LFliO/iwPBz9
         qtGInsrZsym/qb522OztQp8REXHrIRWxNq516AWjO5hNXrB89aiq6mrtp0L6b95RS71x
         sg/xO6EBdPOozVvBoCbel7QP1yRH8o63lq3e8qfGLFTw+Va/pFbxICLLu2uSTYzN9xFq
         OFT/ZV9ztryGbixqVQPnhl3muD9V/R8kuBSHyjkxzCeJF9MxfAExzou6ZaPpkvttnlyK
         SUozge9dS1Td0MwT49dp/wMbO/bpPKy67qNRsep4qmJUtw5xS2KimBn1DIBiX3oHl410
         JQ3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXH4N5dsSUvLhSFGuP5lUVam+hiSrRT7qYdhdoc+ykNxObSLnvj
	HgEAcubkOPyVP8W8jPjhdw8=
X-Google-Smtp-Source: APXvYqzkd7yjjvWAKdn+TcX8ql9s6AUVbVhu7P5xC2oo5/WhOZG+2m3EUy0MPiwWxAmwd9kzC8a2Hw==
X-Received: by 2002:ac2:50da:: with SMTP id h26mr4923386lfm.80.1576144798778;
        Thu, 12 Dec 2019 01:59:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9786:: with SMTP id y6ls713850lji.4.gmail; Thu, 12 Dec
 2019 01:59:58 -0800 (PST)
X-Received: by 2002:a2e:7005:: with SMTP id l5mr5321218ljc.230.1576144798187;
        Thu, 12 Dec 2019 01:59:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576144798; cv=none;
        d=google.com; s=arc-20160816;
        b=yM6r0Ng4+Bro+S8EcZANPe4pN8mf9GogOHnStYGgARxk9Z4XMr+KyTfq1reRKawUZF
         34nIo0jELDzvvvhqGessa8nJn0ilSq43VrUFhXuKQRgBtF2MhYWEEEZ2MnHXYsClpQqk
         SW92+KrAs9EF2itakMnVIX5Z8UftwsOozLEin3xwp3DwOYJmNdz7gZGr7xnXiBLLq8q8
         j1FDbHE8SGhP/tW4gKKzB+cTN3xuET5tLRMNRP/nXpBXaMEWrDE37aSgo1bTg4wiOAox
         ttpeKj7FzCvVtAAqSVzBcbRtrT/LzyNj414FwrsotrTDBOjAvd//88tLb09I96viygy3
         5dCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=c/eWEOdwnrznNxPc95HOY6onE4WbW9zY0FTwNvom0tM=;
        b=oBuHZ3Rb4SqGOUsykwam+dA1KG4yW2MFBY7aRMBMjOGeR2FP5/w4xLHB6HaqwnrI+O
         jwdNLa8CME0e0NTvEuSHvZLlaL5/DaFZf26QoodfF0czjw8f9PEnfrI/vHIndVS7UP/U
         9HaKv6eF2AWSfr7lz6DJ76OPYja/FZrtYT5Zfzy97dyTLEbyk0nQE3SIetME97cG9tJM
         5J5/6vhbUmxpBr88BIqbgpgOtqG7XZXjomJaEVl2XolQ6XsZVM49UHMUVNZ2aa+uKn8I
         XOgURdNqgvini3bRKDCzBz1BE+6u56BFd/UL+a8Pt6MTk8ikLx5wz9frpeytmoOpDE+Q
         A/+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.134])
        by gmr-mx.google.com with ESMTPS id a26si150054ljn.1.2019.12.12.01.59.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Dec 2019 01:59:58 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.134;
Received: from mail-qk1-f174.google.com ([209.85.222.174]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MxUfh-1hmpl611vF-00xqMr for <clang-built-linux@googlegroups.com>; Thu, 12
 Dec 2019 10:59:57 +0100
Received: by mail-qk1-f174.google.com with SMTP id r14so1074244qke.13
        for <clang-built-linux@googlegroups.com>; Thu, 12 Dec 2019 01:59:57 -0800 (PST)
X-Received: by 2002:a05:620a:a5b:: with SMTP id j27mr7290911qka.286.1576144796165;
 Thu, 12 Dec 2019 01:59:56 -0800 (PST)
MIME-Version: 1.0
References: <20191211133951.401933-1-arnd@arndb.de> <CAK7LNASeyPxgQczSvEN4S3Ae7fRtYyynhU9kJ=96VX34S4TECA@mail.gmail.com>
In-Reply-To: <CAK7LNASeyPxgQczSvEN4S3Ae7fRtYyynhU9kJ=96VX34S4TECA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 12 Dec 2019 10:59:40 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1dH+msCgxU-=w4gp30Bw+x3=6Cj473DuFzxun+3dfOcA@mail.gmail.com>
Message-ID: <CAK8P3a1dH+msCgxU-=w4gp30Bw+x3=6Cj473DuFzxun+3dfOcA@mail.gmail.com>
Subject: Re: [PATCH] gcc-plugins: make it possible to disable
 CONFIG_GCC_PLUGINS again
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Emese Revfy <re.emese@gmail.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:AdCJdQUdebtFGh76wkgLi5p3ou4WT5Wlul0Aw15gONYkpuGR4Bo
 P8Rxmm7ES0FV78QZn9KdKZR+c/gHIOHmIg6Dy8Nmw/sQIbmOQBqUD3sEXdXj2Gj6dP4N2Cz
 e8UBRo9pdmMG+Kn8Hl28gIAGxDfYo0r8ZcBg/br0msq8qTiKttQHeOOJqjXSWVRJHb26pdi
 T7jQo53Pv9yPcCnNFAuyA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:EqhKOtEBUco=:aIgYp/RQWvsWaPsB2vypPH
 SASxG4BymUzvQj/eILuY5iARmlrDlOwcz4FKN83YErSLix2hU0eczGR+IKkKyrGTL65SfAtZv
 GMtfecyIJObTUCtaI1goKDXWOZWAdcaNfAIwAenm4zOoqjGp3gd04E3Csi3V8eE/+kzHBbo2K
 vZ8fuE4nshTkiHvL7IYZ5w2edtTdMMbvSI3ZKXAMPE7NBm8bS0azfI+0eRq+vb5UlPFb1zKiX
 NtFEA7ryquQ9dSiKl4I29ZcqlKq/DElGncSL43eBIyMZvgok9315EowkzDN3I3tRs6+LS3Qec
 FtClAtm9HM0PTD2QGs5XOfSe2Odg006duhOY33mhIUR+WHr2WdH/zIlsNk3d3fVgrinck/N3p
 8XpGQw3iKuFZmCqP0NiKaK+zlRvnmvfkvBY98ANsEJThmvsI6YVS8EwS5YGO0pzfMoPT2iNco
 yqdFodiY7GJUGb91N/om0VC2zRvqzgoHN3OEba0R3kBO6A6M7H92vcCAyqmWkt1KxAUMB32mE
 Nm5ilmPNg7FuhCq3/OrYU+EakPs58j7bC7tjQ3mrPxu64NiLOHn6mLj0f9lfrBR4PjqU9Bzr4
 pw+dglJB+swSprn0HhGlAbIoqG5G9U0VTrZIqL9DjyNInc2y8t8yDsQudXnJEkpUrE5IrqBfH
 h028v2y3q15oC4wbVyN5hVysMOtOYxqRzrm5RM8iwzUn1j5Libvzo2pyX/iWw7EVGANKxG+2T
 W/mBf/I8bAZn3W6W6VXq8zdZ8QZU+QtJEUwA2hIHoyRSOLwe6hT/KYwx4ly5kyDHW/zwuEPxM
 VvFQAl3pednxlneXqZ+5mQGdgA8BDtSrl4CPPer5eJlISgien35//A8xuGzysPMFyN3bofaQA
 DgtFy58VbBrl42s9gj+A==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.134 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Thu, Dec 12, 2019 at 5:52 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Dec 11, 2019 at 10:40 PM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > I noticed that randconfig builds with gcc no longer produce a lot of
> > ccache hits, unlike with clang, and traced this back to plugins
> > now being enabled unconditionally if they are supported.
> >
> > I am now working around this by adding
> >
> >    export CCACHE_COMPILERCHECK=/usr/bin/size -A %compiler%
> >
> > to my top-level Makefile. This changes the heuristic that ccache uses
> > to determine whether the plugins are the same after a 'make clean'.
> >
> > However, it also seems that being able to just turn off the plugins is
> > generally useful, at least for build testing it adds noticeable overhead
> > but does not find a lot of bugs additional bugs, and may be easier for
> > ccache users than my workaround.
> >
> > Fixes: 9f671e58159a ("security: Create "kernel hardening" config area")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Reviewed-by: Masahiro Yamada <masahiroy@kernel.org>

On Wed, Dec 11, 2019 at 2:59 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>Acked-by: Ard Biesheuvel <ardb@kernel.org>

Thanks! Who would be the best person to pick up the patch?
Should I send it to Andrew?

    Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1dH%2BmsCgxU-%3Dw4gp30Bw%2Bx3%3D6Cj473DuFzxun%2B3dfOcA%40mail.gmail.com.
