Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBOMZ6KEAMGQE43COTOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3083EF944
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 06:29:46 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id o4-20020ae9f504000000b003d39d97b227sf949399qkg.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 21:29:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629260985; cv=pass;
        d=google.com; s=arc-20160816;
        b=PITiXd2eYAkfu4hEsCUIRkMsZJ4YBXC2x9+I1l/uW0BADcvi41nSlwcnko57W9DZzo
         ByHd3ccW0hopL/WF41LNsm/7TnIJN2F+FS/Tk0hA78j18I/dPIUD7JK/zt/B71JEeV9M
         N/tpn3d7GXpt6ebJgvXa8WPTkD6KWjs5VQSWP548kZ4h/SwEvzSNv5w1s1oK6uw7YBZa
         KcyO9/svN+fEvLSWhCcaarAlr+rhpZvT4tNVYiN4AjAxSjbjWQe7MxtKFvTU94/31g+4
         jLMenlEWZJd9uzaqQZirqHJaIKMrULZ+zGyVuVk9jPvNvsgbFtYB1eCtw/PEBoDCdm6h
         VV1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-filter:sender:dkim-signature;
        bh=EbdJf0ZTChVDExizSZQ2qBliMSjnbJFRCyHFrbDDqYg=;
        b=ui0B4mR8+27oq+wOzQqqS4RozqSSEwvprx1LeDzN0gGWsI3/HI9BoHxmr2sFvlB/xc
         7mCmPDXCEajoUIjPiKclyKrzY606/8ThT/1mI7ucavDlPNxmY/CcBQApP6nlFGh4hmq8
         toK18yT4JN2m7MkMYkfYbgGFr+Efq8dPvC2kk3xNOWIltLDOehOY/BXvfV/Bez1khs/d
         BLoH3r4ivh4igKBGTnvpL0f5teEMXTGs2AOq0/WleponAMKjUK9xGYv4XUAMQjAIGOj1
         IDmccs60hlEwdl5H9J5qn86ATR5m1WXDd0qvRRlgXuj5snymn8x3lP+NhGNvAWV2yyEj
         W9fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=JotFhWbO;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EbdJf0ZTChVDExizSZQ2qBliMSjnbJFRCyHFrbDDqYg=;
        b=qfoHWy5xfKoX5x4V/MjjFcnr/YkwScWQ33LrHOuP2H9jD8OJgZFkV4HMwR1hhCOCWN
         F15q1ywa68WgY8oZH76fEEB5+v2Q9BZwOOirDEZXtnqISMSfOtpN7JkP58/Fe5mwZ0Nf
         8fHTpoubNUGDgTV2uCmK6/vkyY5MAxp0G9ULtU9X/ctzw39vx9H/kdFCvi12aLwInmAL
         HneQ5MPkF1m7/zMK/uqldxqoGTFsnIp458Zp6jbSiiRm452FzhmGNoXw/v824LNW2A0v
         Fpo3OtLdNrLKTADmdBNiB/+y0YhplR6CgkcvmzKdZ7tFRScDDM3JAEvDn5/DZxDIfryM
         rf/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EbdJf0ZTChVDExizSZQ2qBliMSjnbJFRCyHFrbDDqYg=;
        b=nlVBVoYnaOTtQYyvBSWe0G/W0uDGqCr+o+uGwXX+4vcIJPycu0dFj5RKJi0JJGNdtZ
         58dKjPNJ3FeAdJ69Jc+7m2d7/3xbAVbQWGCDIeNntpMo3nJcsHeb9wTxBt+IujpgHNfH
         EJeVmwveThnzPH2G+TLE37CEI8Cv1L5y6PfyKtM8ahbEbbz4pC8SgI0kV+Mn8mCOfliY
         uCoDzwype55UR6GLXcaOh0tQPg+2/sovdhcqkChBc4JT5lkRWiYVg4Puf3HCZOG2R1X3
         /Ih7Rj0YMtBWBaf2gHjH7NN68oyqn1OE9P4WKpWA2F1uuf07KPf2NYeHcQgHnnU2XWVc
         LCqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wJvdQKshI9lUMctkTM7uM/AcNmQuFGOUWhiw/tIwk4kzDY4wf
	0O40lxP/p3y9iKzoZNLRu+M=
X-Google-Smtp-Source: ABdhPJx9TfCZ0WGzGymxAzUKva4pX1jiJEit9aOP8E6TYh1X7lvCYqUxJC2dw/loM6UrQ5CN8lGkoQ==
X-Received: by 2002:a05:6214:d65:: with SMTP id 5mr7092679qvs.11.1629260985401;
        Tue, 17 Aug 2021 21:29:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:153:: with SMTP id f19ls449228qtg.5.gmail; Tue, 17 Aug
 2021 21:29:45 -0700 (PDT)
X-Received: by 2002:ac8:7dcb:: with SMTP id c11mr6454011qte.260.1629260984943;
        Tue, 17 Aug 2021 21:29:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629260984; cv=none;
        d=google.com; s=arc-20160816;
        b=FOiVNTqNkq0SI0nHTtdiSxasOmlMv7SYJO0FukYU7vzMzpa7HkV2MGSlvW+iGgUbAM
         sbNW2ZPRuYtxxZ4qS1UHxP9dW/HzSvHflyHrfwJd4NhLFga5FJ2B39UXqBV7srzwf+83
         hO9YO8ZO/k/nDdHcR+RwRKZCVFUGdtm2r8xCJ9dMCtLAD2BtFxc92+tJKZNOJ31otDSr
         QNX4dCsJv4tCJGpnwp/yOVal/E/fMCCqGc9LT4T3XzO3Z4Pe0acCCtUKJWvxueT17NGg
         msoO40Bfe7DUDFhnM2zfUz9CLUFXnIIVLVBk2dgqBP7XyrZU4BvUE4QBQj51LPi/GSu1
         si+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature:dkim-filter;
        bh=PpMGCNaWd4BEDbC0/8VA91QAy4TmkP9+B95/axi+84Q=;
        b=cGfHTmctqACKn8XWL1lko5nKY+4U7cZ8mmrzTjqI6Kk3PHwOb680Bfecl7YH6igC/K
         p3x2wTwEklvsfzGjymznzOSCltO03yZ4wD/zQU9qEXBLEAez18VI5jhyGICAtEkAeRyJ
         ANHcKESnju1uT1w1YNIi4qhM8ZP860CuQ1HPhwW5oemM54Kwsq1vXXf6bBCAjHQ7Dgq/
         acQ94lSMrCdKD8L3CRTeasRhVZbMmlRMssTPs3b+iUuUoUksyoev9o/nV56vqQrj6cOm
         PUIpyBhHYjfzxkGN6rqa+4CHLsh2ligrBTfmo3mMpJINVqaiImiLtVWQ3W4+pSEw9MXK
         UmTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=JotFhWbO;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id w11si179483qkp.3.2021.08.17.21.29.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 21:29:44 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 17I4TNeb008584
	for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 13:29:24 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 17I4TNeb008584
X-Nifty-SrcIP: [209.85.210.176]
Received: by mail-pf1-f176.google.com with SMTP id y190so866007pfg.7
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 21:29:24 -0700 (PDT)
X-Received: by 2002:aa7:8e56:0:b029:3cd:c2ec:6c1c with SMTP id
 d22-20020aa78e560000b02903cdc2ec6c1cmr7043311pfr.80.1629260963273; Tue, 17
 Aug 2021 21:29:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210814234102.2315551-1-masahiroy@kernel.org>
 <3afe5054-8129-fe42-b5a4-00bd091b1a0c@kernel.org> <CAFP8O3JtOpb368h4PBbYnR4fsqRYkX_TKuCKrS-Csu=dMMNiKA@mail.gmail.com>
In-Reply-To: <CAFP8O3JtOpb368h4PBbYnR4fsqRYkX_TKuCKrS-Csu=dMMNiKA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 18 Aug 2021 13:28:45 +0900
X-Gmail-Original-Message-ID: <CAK7LNAStyrVnrc4GQ7MNQizBpKbRk-1WmNQEw5mzAp2+LYUiyA@mail.gmail.com>
Message-ID: <CAK7LNAStyrVnrc4GQ7MNQizBpKbRk-1WmNQEw5mzAp2+LYUiyA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Fix 'no symbols' warning when CONFIG_TRIM_UNUSD_KSYMS=y
To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nicolas Pitre <nico@fluxnic.net>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=JotFhWbO;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sun, Aug 15, 2021 at 12:18 PM F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@goog=
le.com> wrote:
>
> On Sat, Aug 14, 2021 at 6:15 PM Nathan Chancellor <nathan@kernel.org> wro=
te:
> >
> > On 8/14/2021 4:41 PM, Masahiro Yamada wrote:
> > > When CONFIG_TRIM_UNUSED_KSYMS is enabled, I see some warnings like th=
is:
> > >
> > >    nm: arch/x86/entry/vdso/vdso32/note.o: no symbols
> > >
> > > $NM (both GNU nm and llvm-nm) warns when no symbol is found in the
> > > object. Suppress the stderr.
> > >
> > > Fixes: bbda5ec671d3 ("kbuild: simplify dependency generation for CONF=
IG_TRIM_UNUSED_KSYMS")
> > > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>
> LGTM.
>
> FWIW binutils>=3D2.37 `nm -q` can be used to suppress "no symbols"
> https://sourceware.org/bugzilla/show_bug.cgi?id=3D27408
>
> llvm-nm>=3D13.0.0 supports -q as well.


Thanks for the info.
Perhaps, I can note the future migration to -q
in a comment.






--=20
Best Regards
Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK7LNAStyrVnrc4GQ7MNQizBpKbRk-1WmNQEw5mzAp2%2BLYUiyA%40m=
ail.gmail.com.
