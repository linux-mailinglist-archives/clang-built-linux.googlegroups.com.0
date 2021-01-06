Return-Path: <clang-built-linux+bncBAABBVHL3D7QKGQEE2TRD2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F93F2EC610
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 23:12:37 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id x20sf2567512otk.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 14:12:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609971156; cv=pass;
        d=google.com; s=arc-20160816;
        b=EcrECKE4j1DlEITLPCEoTKwGod3IuH++Qa3CNYYLo6tV71bZabwLixqQSFlxHmg27z
         hsKBHhYkDwgLKFLYNPH3YB8ESsbsXzBL7U20yx0VrVUKd/XmIRKw5L+eRzBPeFLKMnZF
         mYSLBogJMY3FVc6MJDho7y7owbtmm5rFMHX1+gRROeTH7hIDoQ8cuLBDHDB8WUPk2n9M
         yhwnJ7zSafbXRgxPPm+hr21SAdMTPFhAsHy1D54wJm0bGe/ou/XnTCkcBJGbYk+b6H1b
         5BKzEXqsGEV4FXDKIC9FCVDmhnMFyZT3Z4odcJ/xPGOKLhtZihLUTmOPWKYTEsswoPnl
         Ii7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=KYxaZyjggzoz44ZhElvS/eW4k4Pyq0/oU+VWGhpr0vY=;
        b=WfoY6eYfK5HjXWdXo/xo1NTgVx8YaqWh09LSakv1wJeHsLr1+W31Ty0LdYE+TDNSUp
         PSN6U8OIYVJIGIjEtX5pssb2EdzIDtXxQOh7u8o9j09NmmJDIJaO/B0t6yOfvf6saVfc
         syzFbmyhm76cCuCTq/NfAa+jZIhXt5f0+W0X1zs616nzaO6YZtdwvN6bCIeNNWDk56ra
         B/jslbfkDvsItK1smg1UlRZvLu3bQTLp85r8/jOiCPie2FERPiMj17TQfg65d2TdZ9f9
         wHhc31OMF+tZ92D09avmMwAS81+8BuZ9bfy0jwdGt/yS+AmEJK8f5+N03G+ZFlcoNvY+
         5dDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=j66kdD6v;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KYxaZyjggzoz44ZhElvS/eW4k4Pyq0/oU+VWGhpr0vY=;
        b=Yn+HplivVN4p4NdJGJrM7lf9BoBEicZ5YVpeMTlTvhNBJKMte9rtDsQz7xmJvtpQxw
         9xxUId07BNgC43pSSQneTZb+34mNEhB39MNedANsqhtFmy57I0jOPYLH7GixRjxA0bHA
         1E3KBqkC5aOzSIbLGEOM8r54dRE+sqYAUQCiogjpxvAKwxhe70WzezXqs+oXuwM2X8uo
         codTE6iCxBWKNMn4947x5+eKWHtXjnqQBLh1cp5ILShjIGUxTdP6Zbznls8wmjzGBpt+
         Hl37zxxvWuFG8gyOoUUfhQ3LxK1EnvjehB3bCO5ldq2k7Zd+59D+KwBH4MysMouRShpg
         YAug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KYxaZyjggzoz44ZhElvS/eW4k4Pyq0/oU+VWGhpr0vY=;
        b=KaKRqjJ+5VJ4qOB2VskhFjckMt160ANQj7CUM7Y6ileJRMU5Zp7FAeFAMOCWhkbXNz
         Xb8VPlJxqkXeW2wEo627+Okjg+neZTEmyBLuExiQ6RMQwzg6xENPtKWfbSCh/HOs4/AY
         RZxdBC7ksjSs5kM/7nNJe23oD269gdZioqYdntcmQ6DXamChW0r070naTEhldKDjC1AU
         MpywabvnbOB2wDwemfvi61zSJ139ZnSOPCWaUIbyy1Zxf8f7Usyqebpkw2JxTDRAMreJ
         kKCcpWFClqq455L+6+Zw4cJgV0ZoNgmDdM8Vh94wXactwPR/3FDlrUSrpim0zHNs7m2A
         8AkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CAVGhng9UUtOuPnjKT5T4dPghi+mIIVhazpxE4i8iOB1MW4b+
	Dpv8K9eQ6kenO8NqojnkiOs=
X-Google-Smtp-Source: ABdhPJy/U1TvBdUq8cnZ08Ep24lEpCuK/2uNgnJZ6YZ7seeYm3F0UwLPA96GJb0LRxVFxHE+4yvPcA==
X-Received: by 2002:a4a:e963:: with SMTP id i3mr4220335ooe.37.1609971156424;
        Wed, 06 Jan 2021 14:12:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:60cc:: with SMTP id b12ls1280360otk.0.gmail; Wed, 06 Jan
 2021 14:12:36 -0800 (PST)
X-Received: by 2002:a9d:ea6:: with SMTP id 35mr4720902otj.188.1609971156069;
        Wed, 06 Jan 2021 14:12:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609971156; cv=none;
        d=google.com; s=arc-20160816;
        b=DY0Sta92PGb+XoYVIxQlzMeE45C0lCB+23NTf9uhJWnT2+rwIp69pbmmjcIF6XNBMJ
         9lhdPTTrXJMD7zRK5A480+z3vyJRuChbu/29ImEnCive+s4HyTD8GMSNjAKe43FBkjOV
         z+v5sIOF0/06pulNvjF+2wZQY+xqAjogUGZcWpRV0eVSx84yJH/AP6Th9H9UGgtQMWFq
         87RAQ2VE0pDCexYEWh5VxBrDVDJ1k1s4JRT3UYaFGmSvn5TwSIaM19n68pRm2LSXlG+P
         aQwlStf5cDazRX7HR10BOaXObmjTfvlFtpOkwTIbzBO4CImo795nU0xhDEc+P64PG24T
         FVZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QWosliBCs1ebWSJHT0D37mGGNglgV4wnwbSsNzOeAgM=;
        b=swBQTDzgnEtCGWGEz3o49OOhAFGMPMXAsZokFIRUL21jlOGNtL3zTTn63iVq6GJnJL
         9d0oelqf2br7dFkHPYblBhbU8xiArILilZJwdwtk7/em4zqfdGmi7FuDysMsIMThaa3z
         BYIiBCzFmTpyQXJKqJ9QgG5nVl26NBmp+o/BMQr1/sBKSCVBTzbyaqRJTnyQ5SN6XS4c
         1SmZ3jsgZG78uT+EHHYByBJWgco0+J7hYBEHsYI2fpgM1sA0Orv5Uj/JuOxdVChhz+Ar
         cB3gRFQSp6ynt4Umjdp/jEpmH2pml83jKAz0iQwKeVjpAGPIrmpMM4srVM8QDvBhdjqF
         3HHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=j66kdD6v;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v23si491202otn.0.2021.01.06.14.12.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jan 2021 14:12:36 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 025E92313C
	for <clang-built-linux@googlegroups.com>; Wed,  6 Jan 2021 22:12:34 +0000 (UTC)
Received: by mail-oo1-f50.google.com with SMTP id x203so1119187ooa.9
        for <clang-built-linux@googlegroups.com>; Wed, 06 Jan 2021 14:12:34 -0800 (PST)
X-Received: by 2002:a4a:9c01:: with SMTP id y1mr4209442ooj.15.1609971154230;
 Wed, 06 Jan 2021 14:12:34 -0800 (PST)
MIME-Version: 1.0
References: <20201230154749.746641-1-arnd@kernel.org> <202101061350.913E1FDF6@keescook>
In-Reply-To: <202101061350.913E1FDF6@keescook>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 6 Jan 2021 23:12:18 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1tSaUE2uzb2JbQ1f7LWmkiHQtSxzJHmfa=fqT3fNXOPA@mail.gmail.com>
Message-ID: <CAK8P3a1tSaUE2uzb2JbQ1f7LWmkiHQtSxzJHmfa=fqT3fNXOPA@mail.gmail.com>
Subject: Re: [PATCH] ubsan: disable unsigned-integer-overflow sanitizer with clang
To: Kees Cook <keescook@chromium.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Marco Elver <elver@google.com>, George Popescu <georgepope@android.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=j66kdD6v;       spf=pass
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

On Wed, Jan 6, 2021 at 10:57 PM Kees Cook <keescook@chromium.org> wrote:
> On Wed, Dec 30, 2020 at 04:47:35PM +0100, Arnd Bergmann wrote:
> > diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> > index 8b635fd75fe4..e23873282ba7 100644
> > --- a/lib/Kconfig.ubsan
> > +++ b/lib/Kconfig.ubsan
> > @@ -122,6 +122,8 @@ config UBSAN_SIGNED_OVERFLOW
> >
> >  config UBSAN_UNSIGNED_OVERFLOW
> >       bool "Perform checking for unsigned arithmetic overflow"
> > +     # clang hugely expands stack usage with -fsanitize=object-size
> > +     depends on !CC_IS_CLANG
> >       depends on $(cc-option,-fsanitize=unsigned-integer-overflow)
>
> Because of Clang implementation issues (see commit c637693b20da), this is
> already "default n" (and not supported under GCC at all). IIUC, setting
> this to "depends on !COMPILE_TEST" won't work for randconfigs, yes?

Ah, I had not realized this is clang specific. Adding the !COMPILE_TEST
dependency would hide it for me, which may be good enough for me.

> Is there some better way to mark this as "known to have issues, please
> don't include in randconfig?"
>
> I'd like to keep it around so people can continue to work out the
> problems with it, but not have unexpecting folks trip over it. ;)

I've reverted that patch locally now and default-enabled for randconfigs.
Now that I have an otherwise clean build, this should provide me
with a full set of files that produce the warning. If the number is
small enough, I could try opening individual github issues.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1tSaUE2uzb2JbQ1f7LWmkiHQtSxzJHmfa%3DfqT3fNXOPA%40mail.gmail.com.
