Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB57D72DQMGQECKLAYBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1FC3D7016
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 09:12:56 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id d7-20020a6b6e070000b02904c0978ed194sf10475051ioh.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 00:12:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627369975; cv=pass;
        d=google.com; s=arc-20160816;
        b=k9ldWR9AB7cPgY3LfZVR33V427XKcqrjG+w9e9WpTrrvwcKE7RZchouOYjGLHmuggi
         YEC3F/sM0ri8vRQ61Ocd3vXiPIvr02cM0lBwnnsv8m5htiKBHyjJUe7eGnLeZTsA13RU
         nt7Pf0Chz03Lj3IXlcdDBk8DPnA6sM71A992sB9Q358fbuVHprQM8cU1k1BaBniqYBRA
         bLuiUqlKqPNDEL28oAc/iwnXuSH8TeeJUprE1NwPXCSGQVFHGUj901uqMHIHEeK80HUo
         ahpr3IfyaU59aEpguoJE4AxzlHy6nUS+NzuqmqqHVE/TSp7xbGIQQF+ztryT0Alo46ix
         j9xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZXUFYnl3dn4NvnXQx/YqoTPhjyMxXOlUHHpvyEWbtew=;
        b=OdtWimmarKiIbY7O4QXXHdV1DqxGynqJcu28Zazy/UvsHTy/DuhG603OEhheW0W72n
         W0IyIDTTFpKEOIWTrQEmd0c8ore8De/2uPEiZGdmfVdOolg3b4BlwsL6tJ/ApZgjXgDO
         u1m4vOZGEOW4Ipe1bQOI/EFt3FgP1zeaeLlNhzJyXNqKYYnJuMUFQQuCAUMISP71YDsM
         xqdkL+hRkE8KNIi918Q1aH6LVzOgZ5eO3MHjDWS1QfDaOLxAcuju5Erw5AHRGjO9sg5f
         SgfkDVJNaUXoOjYRnYdK9agxZVyti9SoBYtDadqsg0RtjL9DJtjzd+bv4OMIknDgnE1d
         I3dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=GrCXm0J9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZXUFYnl3dn4NvnXQx/YqoTPhjyMxXOlUHHpvyEWbtew=;
        b=rB+K6FiZDRlgdSpsBjgy9JxSfZRYsL03vS5CJsj5puZ8+ZPVmfYyW+79PCqRLOORAS
         8pyAckVa/rkl7aAgLsGsuyJyltrNJG0z19xol+m2CTHrJUDoxuZNT0g6hmwO9wuX56UB
         8ikWc1xy/7fXgZfqJtDvprH4YOkV02qClWWVTdyjn8IBBncr7lYhnmNaiHMz2XV+nxAR
         ix8rW8GP9jbqLBS082Da308vHuln0eykqLRYZRzkTldeEC6tBISq5QL66cSX1Pkthtk3
         YfC0TyryPeA+xJt9kxYKkHY4av0Voa9Jyk9e1kOFOyjWB7QPI8V1E88hmm/lodgFiwdn
         6T1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZXUFYnl3dn4NvnXQx/YqoTPhjyMxXOlUHHpvyEWbtew=;
        b=DsCF+ZvVRcPbUsgFZKCXWalheTtrOJZGowABY4KFLAhoi3LzlnDE0Yk5XvldOmM7rA
         oJqyoTwi+GsM8Wp/6DlfRtQsGdpZvNFfy7b7zYfXnziAjp0Pi4P8J0F4W4RA0EqNl6Cj
         aqN6PeRrU+C0f7h2JCmEwmxEplhkXCrI8d8Ego5pLHdprx2KQZnlljENNYbG7FfK81Oe
         7u5xM6erf/N4PmSkbgE1oZdgOEtUkWPEZeQ26CeOg29m8wAxIngj84oXhBoYQLJFvNfG
         2t9PPejgZ0542AM21Wd9YcVgnX1xKaaFcL301WnxEqdYEDSVVdUxxSXNawJrXr4rx/Ne
         M2qA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vdXaoy4vKJTiNZu1agZhs4G6U3eKQZL7HmjDCsAPKWQ7bBRu0
	ZM81+2dFIacWXAg8nXTw/UE=
X-Google-Smtp-Source: ABdhPJyZsAKCEuZk4R+mB7M5czhwwHfaM4rqab2gIFB0MpCjDWYTFj6lfRlzjKzGjtAQecgr0EvBZw==
X-Received: by 2002:a05:6e02:4d2:: with SMTP id f18mr15876037ils.21.1627369975565;
        Tue, 27 Jul 2021 00:12:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:2c11:: with SMTP id t17ls5521547ile.6.gmail; Tue, 27 Jul
 2021 00:12:55 -0700 (PDT)
X-Received: by 2002:a92:c805:: with SMTP id v5mr14643455iln.293.1627369975181;
        Tue, 27 Jul 2021 00:12:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627369975; cv=none;
        d=google.com; s=arc-20160816;
        b=VQsGX0OdKwHQrlRxRoFnNBeqYwnhdxgJGQEI0AMIfHhoYjVxg1soQSdIgV3PjhyGtp
         VsWEU+ZPuTOXo8Pb5MSfPuFRZ4cubKQdzsBou5Vj/k6ToTNJf6bSLCdHudbCi+l6cMHx
         Qz0oVocpDe7hqgTe9Da4xwnUbxtBPRDVGyhTpQ8oYzzIAuYhVA9d1Sng6UUnxHUoimof
         ApLPXFwLQoi1z7x4QXpNL9m77YAQOirMC4RAOFu8P5aO1CAg2O7fDqa11SLYG31sYQsC
         RVfhllqGCPArCP4P30s9EOLPr/qmtaTmcETIGUydw6jDQRsD++1A9Hs3vQlkcoXA9RUM
         ORew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FensMUkPX8I671wHa3W6sMOpWkwt1TU9uvPuubAyv2g=;
        b=ZH0+hIh5vXpzA1yAbJ4UY1UDbwcq/MgjxaK7ejGctp8YjE13R9siCHjvWARW4/PzQ4
         BHTOws869kpcVh8ZbYqohU4p3foTOXPjMN1orQX3OjFSk8o/b8E+2OsR7huPEOFj4uiL
         7C7fogSNfssfOKZqRw43dT1AQL+bZKtP5XGmwZ0plEBWxsqSrgQARP+AasNfL6dpIYMp
         sfprBn6+dxrjP038rMySdPFee1aj7TJ7Vub/y1wCsaOEqv5pXdb0pnL8DUjsVMo/OsZ/
         HV+c+AKwHClAJ7Gx9yScDFO9fakth/vu9FGYLCP79pvdVB+1NB2XgTT7bkHSZJYdrqeR
         59mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=GrCXm0J9;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e16si154740ilm.3.2021.07.27.00.12.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 00:12:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0C3B461185;
	Tue, 27 Jul 2021 07:12:52 +0000 (UTC)
Date: Tue, 27 Jul 2021 09:12:51 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bill Wendling <morbo@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
Message-ID: <YP+x8y6MoPNHh58q@kroah.com>
References: <20210714091747.2814370-1-morbo@google.com>
 <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com>
 <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
 <YP+ZOx8BETgufxBS@kroah.com>
 <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
 <YP+ql3QFYnefR/Cf@kroah.com>
 <CAGG=3QVc_OZoKi2J8tqRoBKcPekgAMMi=6Uphg1hNGNDK1qJUA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAGG=3QVc_OZoKi2J8tqRoBKcPekgAMMi=6Uphg1hNGNDK1qJUA@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=GrCXm0J9;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Jul 27, 2021 at 12:08:37AM -0700, Bill Wendling wrote:
> On Mon, Jul 26, 2021 at 11:41 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > On Mon, Jul 26, 2021 at 11:15:52PM -0700, Bill Wendling wrote:
> > > On Mon, Jul 26, 2021 at 10:27 PM Greg Kroah-Hartman
> > > <gregkh@linuxfoundation.org> wrote:
> > > > On Mon, Jul 26, 2021 at 01:47:33PM -0700, Nathan Chancellor wrote:
> > > > > + Greg and Rafael as the maintainer and reviewer of drivers/base/module.c
> > > > > respectively, drop everyone else.
> > > >
> > > > Odd no one cc:ed us originally, I guess they didn't want the patch ever
> > > > merged?  :(
> > > >
> I don't believe I saw you or Rafael listed in the
> "script/get_maintainers" output. I tried to copy everyone who showed
> up.

$ ./scripts/get_maintainer.pl --file drivers/base/module.c
Greg Kroah-Hartman <gregkh@linuxfoundation.org> (supporter:DRIVER CORE, KOBJECTS, DEBUGFS AND SYSFS)
"Rafael J. Wysocki" <rafael@kernel.org> (reviewer:DRIVER CORE, KOBJECTS, DEBUGFS AND SYSFS)
linux-kernel@vger.kernel.org (open list)

{sigh}

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YP%2Bx8y6MoPNHh58q%40kroah.com.
