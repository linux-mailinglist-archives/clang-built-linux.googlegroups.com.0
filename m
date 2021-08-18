Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBO4Z6KEAMGQEHI3O6MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE523EF945
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 06:29:48 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id n1-20020a170902e54100b0012dbd2c897csf390239plf.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 21:29:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629260987; cv=pass;
        d=google.com; s=arc-20160816;
        b=fyVlqC6KQBpfgq2wCuNBaeEfMoG9AMw9LV/z4PMknGlJEoxYae/4VLEOGr8wFCCb07
         ke3SZHKDrR+OPtTi/aCcZZIOgmqEpUNEvItKum+Jj5tTBfcEUd275AJLA0Wysqwv18yu
         d82WPJQIJQKQmNAIxErrn3G6iWzTo/BtTQPiBK3u9W8jiYQ4WMKeX7KFB/wgXn6TBiqF
         YDh7QC26SxOg9kcM6tQw4Bc3D3Qvlh2XZ7F6+K1HBVsarGmRo4uPnpeeM2WrKeKmtfpE
         mvEgtWHGK9R7xGJUAnbwZ9q0lEUh98batwRP1JiUhSyWFnfJdWTysySPslOOCArWNfPP
         an/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=rWQKUXRxNNoZibE+lWuLR3O/tdHC2Kv3RQZopLGGl/A=;
        b=L832cE4fhTLkLCL3d+LR70ANgKe166h8kUdh+Sl6uSm59uxPpmoPC3h0/dA1t0LUdX
         Ss35LJjpLXhliax6nj4Gl5EjtFfR/58PRPz/dG7DpmwbNSvpigt1MZBs63ftqsU287Rq
         AYMloiHOroK4s7Hl2ZSe8KVbGrYVJBGSKgi75TnSjYkSkPxxhq9awTI93OkVlfjT2AMW
         Od5+BQQLGTaGIyqviUNpi7uHHKR30FqXSAG5euezXSvc0HOKTOwZmjwKHRAp4hKVf2b/
         AhbtXMyScxlyl2RiIdXMCCa3kQYiRA2DbyeaIetmiIksRQF2PyuaHwBKAnd39jMlorcE
         KB0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="E/fkK5/G";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rWQKUXRxNNoZibE+lWuLR3O/tdHC2Kv3RQZopLGGl/A=;
        b=PkrgPxEaOQPQ/fp3qW9KwR3cJBCgcP7bT+0wddLonb4Age9YaK6f3m7jk8zUkuA7ek
         djb1wdfQfbgJWva7Wn91zBlayOQ+5qsx1ZwVL2MfvifoE5ACbpoQI573Fc9R5KjSQz35
         QYEAXEKlZuV6xnMLWh9JKKH7NbAzQEsKCfkh3PRk40VZT2w6iUUAmQvAY3e9oqKvFZz/
         ytnpdpxPf+QO3XxceS3Virng7dJnJzo6KxjNHgaDgAl2dJLiKm9Q/bw+5woaYV2GUfak
         6WV1C/8ggcZoJHZRLhV+znS2Gb02OpRBGl7SMvTpkDhoklghBXdyeioED6ATlU/XCZtz
         WSMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rWQKUXRxNNoZibE+lWuLR3O/tdHC2Kv3RQZopLGGl/A=;
        b=mMsuZ/UEdQpIHvD6CAI14tLdRaon68fGe1OWsdQziLt68q17HHKGWgBzn07jxzWa7o
         pgiHtqRmz3ELquW95cVDa7HImhJdzSzanzlAAIR1s2kHi32d+pwokZFlDb42EU3/d4XE
         6BqzBAoLy4gkYNHRG1l+9SM0f2W1mdU+cp8dP0zeLKEwHRuiEe0qYO1VJyP463s0z38h
         1dZd9u4TMpv4XArd7S6jEzIaWhmjoy9+OfuEE5Y5ukya+StJIfG/X9k5An+asqO36SP0
         Cs1awf6mGcdr26PwWTAB774IO1S9i+p+s2nQ5UU9XdyOgupPICJ1ygyporS+3ScTvl0a
         dfDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hKxxm6sS2YmBlolsZSCxumXbqvZT3WF+2KTdwOHrH3qcposCY
	qxw+BOnpz/nyOp2Enk8LaHc=
X-Google-Smtp-Source: ABdhPJwtpwwI2M5XrlZPknWLMBJnzacU7q0UDEZrgS5KMM/QEqtgy7pSx287+HjqyriVWbB4SDEpVw==
X-Received: by 2002:a17:90b:312:: with SMTP id ay18mr7304928pjb.144.1629260987158;
        Tue, 17 Aug 2021 21:29:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:218:: with SMTP id fy24ls2083905pjb.3.canary-gmail;
 Tue, 17 Aug 2021 21:29:46 -0700 (PDT)
X-Received: by 2002:a17:90a:de16:: with SMTP id m22mr7262437pjv.38.1629260986663;
        Tue, 17 Aug 2021 21:29:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629260986; cv=none;
        d=google.com; s=arc-20160816;
        b=O9bGFSflljP4f7ZPoRwQwEgSP80tL2KzxjNqaMSyLOUD1jWmtEpOJnPKM55Jn6AEMh
         BKWn1rdA5dlTxWj5cuj93OGTDsmcHtclWW3lxjdNmtDB2uukFlAZ6vSl7Zg7XJttSpWI
         sKKHWifW4QCHWrl2clRMzBvumkU77H6CGsVCJWQUWj02ZhsgTSNwNcA2mvS5MttBbw5/
         /MAVtTgBQEP7pEbKPAzvvKh2Crm8GUwnUh/cjoP48S4fvSLKxXG8jIe1Dwgyqrh6yai+
         ZolwB2bXo+s7Ya3RZkFuaY9xyJ2CQYrKllON3te/xi0c+wl037ZmTGPimM7RNbzMx59c
         Avvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=kHlrdkqxRjQoDvpiz9nmAOi6Y1fmh6t3QYrglYwpvXE=;
        b=To5zlOoJvZLVrtlnp0FP5snAhwZ9NtQAAB1LetICUTFYPsxYQjziCD1SjvBeqTbZRv
         o9JAqlMEYdcLFvSbjNVtvUOs1tA+S3IWI4FFYp+TEoym8DqCSuRsGTwyUIgjzQz27UIt
         DOEseckM3S7AJLeJN7kjUyb6ync/Cx2IYaRrDNqNdhNIVbVraB5htbr6xDD4zSVdzM21
         1wyUP5LG6kjojsqFSkpq6YFU4uqyasnAT5tBlgjWVpCYubBZsIOhen2ONRS/HIlj+lDB
         kVY+Au+YTCFryjI7vPiU3M8MRWAWymkmhBi8/XEC0ehZmnDkENFwu7CeZE+wZvZLDXKa
         ejLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="E/fkK5/G";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id g2si187899pji.0.2021.08.17.21.29.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 21:29:46 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 17I4TQgo027221
	for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 13:29:26 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 17I4TQgo027221
X-Nifty-SrcIP: [209.85.216.47]
Received: by mail-pj1-f47.google.com with SMTP id bo18so1890386pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 21:29:26 -0700 (PDT)
X-Received: by 2002:a17:90a:7384:: with SMTP id j4mr7017433pjg.153.1629260965965;
 Tue, 17 Aug 2021 21:29:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210814234102.2315551-1-masahiroy@kernel.org> <r3rr2q2-1o70-o012-4ns1-or1qrs665753@syhkavp.arg>
In-Reply-To: <r3rr2q2-1o70-o012-4ns1-or1qrs665753@syhkavp.arg>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 18 Aug 2021 13:28:49 +0900
X-Gmail-Original-Message-ID: <CAK7LNATbyotYzVDc3b8jPk7nC1dLXjc3oMeytwA5WqzsMBPjgA@mail.gmail.com>
Message-ID: <CAK7LNATbyotYzVDc3b8jPk7nC1dLXjc3oMeytwA5WqzsMBPjgA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Fix 'no symbols' warning when CONFIG_TRIM_UNUSD_KSYMS=y
To: Nicolas Pitre <nico@fluxnic.net>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="E/fkK5/G";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Sun, Aug 15, 2021 at 12:37 PM Nicolas Pitre <nico@fluxnic.net> wrote:
>
> On Sun, 15 Aug 2021, Masahiro Yamada wrote:
>
> > When CONFIG_TRIM_UNUSED_KSYMS is enabled, I see some warnings like this:
> >
> >   nm: arch/x86/entry/vdso/vdso32/note.o: no symbols
> >
> > $NM (both GNU nm and llvm-nm) warns when no symbol is found in the
> > object. Suppress the stderr.
> >
> > Fixes: bbda5ec671d3 ("kbuild: simplify dependency generation for CONFIG_TRIM_UNUSED_KSYMS")
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> >  scripts/gen_ksymdeps.sh | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/scripts/gen_ksymdeps.sh b/scripts/gen_ksymdeps.sh
> > index 1324986e1362..5493124e8ee6 100755
> > --- a/scripts/gen_ksymdeps.sh
> > +++ b/scripts/gen_ksymdeps.sh
> > @@ -4,7 +4,10 @@
> >  set -e
> >
> >  # List of exported symbols
> > -ksyms=$($NM $1 | sed -n 's/.*__ksym_marker_\(.*\)/\1/p' | tr A-Z a-z)
> > +#
> > +# If the object has no symbol, $NM warns 'no symbols'.
> > +# Suppress the stdout.
> > +ksyms=$($NM $1 2>/dev/null | sed -n 's/.*__ksym_marker_\(.*\)/\1/p' | tr A-Z a-z)
>
> You mean stderr.


My bad - I will fix it in v2.
Thanks.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATbyotYzVDc3b8jPk7nC1dLXjc3oMeytwA5WqzsMBPjgA%40mail.gmail.com.
