Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZXZ3PZAKGQEXD3HFKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D88C170C78
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 00:19:04 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id w11sf632307plp.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 15:19:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582759143; cv=pass;
        d=google.com; s=arc-20160816;
        b=UYIJCYtBTY1u0rsI2gqPQIx2F6fMWeFh2cYdl7wQ2wM10RvgbkYStNZhXP17lkyhaI
         79am6ZrxEMZ1SJSUe+nJmOQTSA/+IXhkjqMEuj4rn5CHDWZ1SdBqYZJO5ueEIqyZwbsd
         BEmNTV5eRyVo0RF1Tp8B3TmV7QK3cee+TNE2BhD6ZpNem5+8Jk9ASxkxNHhoF6dameQh
         ww/9+bNoaa6OEbiAUDdU5j2pnOuusu0OnrvQK7gKeLlOQJ6Z44afB1I9WgdhcF+Jxi35
         dy0I9kTMeJZhfTEBuQzp9nJt6sEp/f0s8xdtBkmsKNiVA5zXIxnNZcfModkGYTIaVsfT
         tzWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=7mTTk89Jktc+e1P7kALjUkjlYsvJ/410DnlTW4NNZF8=;
        b=JSKoIgzPi9l1pBRDm3hHNrxfUtc5hufPvJK3RQLMBr1CI+eM1pIM2jaT1eo24jPoGe
         W/XUlUHIHdH4VzjjgIayn/oGvktK3mwzkBzHdzRpFd4m4iwwxgr+Zua3Fy/G2AMEFlnX
         WAww/iiomPGiB6RQSSSFbppAS2bbROh+2nXnr2dGrEqxW9FduIxrKG+4NS9Y9puN7Jit
         BrdCVpC85wLteaAta5YQV6BF++XfJqZVj7B1OLXn33X/+V6LH1/14Vh8WDuI9/Jc0/Gj
         70JpCwYn2PzW5d4C4e0C6YSMJeSa9NuuKfA8t+BpnEztvpcbdLEBkCMDzAI/l+Nqmn/d
         3Eog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xa3HZa1E;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7mTTk89Jktc+e1P7kALjUkjlYsvJ/410DnlTW4NNZF8=;
        b=jkl0utHHjM23H/Ao49GIs4gkFU65cnOtC4ZnJsNryXDADxnQreCSkICu2+4gFKK8d/
         2r62frGq8qKtprWDTFCUShT5yiXSRgG1ChwnDdmsY0x5pzDbcpYW0+gxSWPWXbjwWSYU
         JNHhOYDvS7t0zSIopMA9rvQrB3XSUkZNbvwsCoLCmukr7+9bDemY9YNzmy2eXYn45B1A
         YM6zs6AItgo34eJ1pK3F4AdcZPIgBNpARsHZxuKCTCAXmqzCSn4b0flMaAw4LwsMh7IF
         MHu38bVBMPglp7yK2GSk8Alm7vD+30OFNQik68ZlzBhV6EsZ0HwGGRtjtJ2pkjdPcSEm
         3O4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7mTTk89Jktc+e1P7kALjUkjlYsvJ/410DnlTW4NNZF8=;
        b=U0oIb2Jr7DLrvL2aw+EKWK4OJtIyiKbf2FBG47ruS9VJPdyyUL+xF72InZEZnpk0X/
         LeWMYbPcF9SoOqv2KggvC68XisR/vlYn1yiB2gi/HM49gXS7zisrpiLW+tTggmRgHVlx
         3qmtp7zec6bHUohI3vpWUhsMdzitn6k14FcHRjm+EiejyPYNXX1jgoP/C5Ya1ueYJFPY
         VamvA3uAO/E5SIFjo5MJ6kN/M+T6GcpsRkceY4Cv417EXNkwp97s/hBEQ/nc/6zPrQ5X
         4xPQ8HG2kBVV15jcJ8B5Fka3zrpad89jGLQb/7174VjwkKLT7dXSc1+0y1tST5XtTiCD
         tGhQ==
X-Gm-Message-State: APjAAAX/LS77044ckoEkNhdltE8vLMMnQ63owDPg3QHPKX83WakgqUW7
	HVSD32iMEkr/NeK3WovVpDs=
X-Google-Smtp-Source: APXvYqzrAoEtr9Evmye/M5ApcPjgUJjJYNIxsP4Jq+OOsj4yBOKNtsi/gd03CdqUZpm3GlJTSEixOg==
X-Received: by 2002:a17:902:8303:: with SMTP id bd3mr1688787plb.171.1582759142894;
        Wed, 26 Feb 2020 15:19:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c583:: with SMTP id l3ls203505pjt.2.canary-gmail;
 Wed, 26 Feb 2020 15:19:02 -0800 (PST)
X-Received: by 2002:a17:902:204:: with SMTP id 4mr1711280plc.266.1582759142404;
        Wed, 26 Feb 2020 15:19:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582759142; cv=none;
        d=google.com; s=arc-20160816;
        b=KidBJlW23V3EBDFfNFVKcTOL8P3M10+Kk0oMMC6ozW39CUthiEOsdi/ZEEfTkytNh/
         DJMJJuX/EDCP8oV0krROtAB0NcsPntLM3lnjEZ+kguMtmM/ECnp+juQRSr/uZ1ETb+hF
         bvcEceQ0DMwCTCBNChVL5zO52RN6+id+d9AWCDn1koXo+xyT2oE6au++xUA1juKlr6ox
         NEP43ABi3ayrwGhCj9d4eulpPKw/YafV+rLU8lE7BnRtjwUFSz3fig4FEttiVrjs64zD
         1qKLhSkC8R7h54+qtJ5Cdp8p2y2QBtZq1vwXsS34WSpwRHEm/pT6jhpVK4acV9sRqa/J
         8s9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zvqE6MvCPvJOL8QerB8lZLb+ktmIbQ2XOCq0TtICEMA=;
        b=hNad2fD/wVsjz2BR+w/LylVBD8PmBZTubsKwsqwYhKSNMUvSvwO9Klel27UAoi3IM6
         FfRaJE2OIns5D6LifaS5S7qnD5VNr/YUrbAK4JklDn4D4EI2EapmK/+go1VUYizXvus0
         ElocdPYQKiaGmiETa4hHVYz9fHmQ7kyJkO2zlirnYE8hXp+hiuq/BiOKIyFkGD6ouHBR
         k670lHmGVmTn73B0HKuygjAkheaGFUbbaGnJsXruJGJgv98Pu9RljtYJ4bGdGJ0sRzXY
         uHX33/Ewl20AbHQ/vRssNHJYC3yy+3p8te8HKcpXJVW6CvpFh4TvcGZ5KeUo/tPSEfgp
         p4cA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xa3HZa1E;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id d14si44103pfo.4.2020.02.26.15.19.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2020 15:19:02 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id a18so287877pjs.5
        for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 15:19:02 -0800 (PST)
X-Received: by 2002:a17:902:6948:: with SMTP id k8mr1607216plt.223.1582759141823;
 Wed, 26 Feb 2020 15:19:01 -0800 (PST)
MIME-Version: 1.0
References: <20200224174129.2664-1-ndesaulniers@google.com>
 <202002242003.870E5F80@keescook> <20200225041643.GA17425@ubuntu-m2-xlarge-x86>
 <CAKwvOdn0_EETGtBVhbRKMPqv2K04Z1N4PuOZDZ6++Ejbi9-B-w@mail.gmail.com>
 <202002251353.25A016CD@keescook> <3b7b2b366220c9ba39ebc241ba22c0304f0d61b0.camel@perches.com>
In-Reply-To: <3b7b2b366220c9ba39ebc241ba22c0304f0d61b0.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 26 Feb 2020 15:18:50 -0800
Message-ID: <CAKwvOdmSix2hgDGsvcAzVD9L5XmM8tPDMyrdXmZjcvGXu_TMSQ@mail.gmail.com>
Subject: Re: [PATCH] Documentation/llvm: add documentation on building w/ Clang/LLVM
To: Joe Perches <joe@perches.com>
Cc: Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Xa3HZa1E;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Feb 25, 2020 at 2:21 PM Joe Perches <joe@perches.com> wrote:
>
> On Tue, 2020-02-25 at 13:56 -0800, Kees Cook wrote:
> > I think we should take a specific version stand as the
> > "minimum" version. Being able to build x86 defconfig is a good minimum
> > IMO.
>
> Agree.
>
> It's odd to say that clang 4 is fine for arm when it's
> not fine for x86.  It's also reasonable to expect arm
> users to upgrade their compiler to a more recent version
> when the only cost is a very small bit of time.

That's a very x86 centric point of view.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmSix2hgDGsvcAzVD9L5XmM8tPDMyrdXmZjcvGXu_TMSQ%40mail.gmail.com.
