Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBMPZ635QKGQEN6KYJZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 208C3285FB4
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Oct 2020 15:03:47 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id r6sf1078826ooo.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Oct 2020 06:03:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602075826; cv=pass;
        d=google.com; s=arc-20160816;
        b=X0isl2mC1udjjBrVg+sdR+W8m7Qu+Xz7BMEn/0SR9tgd0OQOIRcVLq3nct/JCKG1KS
         8fNiHnPLEPmwirfGWw7qpIUIanBIXz34TVFueQANUOKcSSLsDba7uMPBHtbHaRls9tqA
         otz651k1zgB2HqDmg8IkmrwNbvI3+PMnXE6uZ3m0sU9xx6Qv5QhyC7306AFoqfDHf2Ub
         yAqOOgWTKd01FbZ5gIwqxxCROb8YnCn6Xb3STcz8hyu2f5rb6rBP9rmpkQ3vOswSuNJz
         on1Ie6MPJAiu3CEDXJ42FfcWk7ihx+a749XJ81zp6+oZ84bFGQYRSn+1VW+CYSqlsXEg
         LGJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=wxiJtWQaCMg55C13gZZO06ZWmi4oYSSuUyisCQ7dGh0=;
        b=kEPWLFVVH3NB61qj6yTFPmVV7/FIwy5lrqCR6bZPp8Ufgs4TyiKjHMdHkXCL1CEK5P
         IurRhiasPu48jG9Wir9SgLKSSnc7xtDbcCyQkSR7OHffo1KIxpQYEbaTbD4qhKeWP0sc
         dfMISFXZlbgs9gla0dBLxs/vtfNAsvAxwSH5C7DRjeYWsklYE9weVt/iZyNu1nmoEH9t
         F24JfnemId515CMRYE3EgteIxJqvH17V73EffBlqKZxPYdmi9Jj1BVHEDIrCioBvxcwQ
         jwePYta0A2C2uLDbF2nt5JMHglW6Y/moGhn4Gy0es71GV+m12Hh+KEcYN0OrmEaUQnb9
         TCPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dkaj4cHo;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wxiJtWQaCMg55C13gZZO06ZWmi4oYSSuUyisCQ7dGh0=;
        b=pQ8CLP1Agihpd+ksSMHGyV+QleqShlT2wtWF4MUaFhrav26Db9mlxV70xNs2E99uX6
         6l5Yruf/5te8s+3OphhRd0RUQZku5ilyjGERZ3Z++sY+O/f/KDexIXld4aOUZ/kQEWk8
         h9JjrHG8qaPpjlUDpC58tKS9DU/Ecvum2p/vyIIej3GH/h4VoTW/jefUmxkXz0al9ELN
         No7raZ+L/mvzM2GksVWU2XNZol9B617hC4/1bnUWVPKtD1MgjO1f9j5hlA14USp4nZa5
         rIuidbQEAfZzZ5rghRt82ykbe59XtCyyW/shpzuRPITMcWnxtdeGQ+Db1RsagY2wJgwr
         fnyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wxiJtWQaCMg55C13gZZO06ZWmi4oYSSuUyisCQ7dGh0=;
        b=L9IVYcuU+/sUhPcRVq609HGWjX3L7FZlDpmbACfVx8APm1xJLFFwNTtuISDPEuzf59
         Ca4hxuBetvoDYQScIeN5xH6tbYujHC2NsyI0SccvF8A8O1RdEh2fJiE3B2Rygn8oZu/2
         zZjKAgteU/QVTMzLnK+qhx5qshrL5UeknbWU8IdSlIbfxJ3IbHZsm0lYihD/WtvQZ/X4
         Z2tyGgweWHSd/+d/amWmAx3S5KYjLegCuHngs4ZvLJrSKlqjGOLvXkozft9uSc6p4YkG
         uQUoAlu6ZYnKad6B0gBLwj1y2g5lOgVpDelFz4eImhba0saQ7KaIXy2GlV3pTvyGSFR4
         oa/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wxiJtWQaCMg55C13gZZO06ZWmi4oYSSuUyisCQ7dGh0=;
        b=adKc99OiuMWp/6wCbpV7S/D5GFUi0WliTtG43PjknCg6o++dm8F+awQUZlWSQ2N6oC
         NCP7EuJtVKBI+/7gjIvlID70h1d4x9odlsQmmyS4wq+SuOiv57uZFycXAvbd1rO6Rv+8
         Crc3XWFm6KhIgMOhfOz/tjj/DV84hVEu3u2tbQYN60PeReYbd9lfjBUONJ1U/CQxIyAU
         RfREu0sbCQ9rR85+OhO60shwnqDsdgXmpo2hnr4x4koxKZ8zSZ7jxvAt7Hn/9lQHF7kg
         OGkQBAg5fa+HlLy3YgTTupaYW692fuXoOQHihQPF6s1lqDIGIArzNFn7SkoLnwmfJgGO
         E2uA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MwYZkYsR3H+o2rx52R6GndYWCqKkwPJLwSSjYXlhtf0bDLfSP
	mp1khJ9RIEDsAPBB6JTPMkk=
X-Google-Smtp-Source: ABdhPJzCJ9Xrscx37BreSjMyWTx6gl7L2OBSfFzWkM6CLh+UWwuKE1azIHh85KMkW8Ktk7mgPjI0pw==
X-Received: by 2002:a9d:6aca:: with SMTP id m10mr1747016otq.125.1602075826092;
        Wed, 07 Oct 2020 06:03:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:4d5:: with SMTP id a21ls441215oie.11.gmail; Wed, 07
 Oct 2020 06:03:45 -0700 (PDT)
X-Received: by 2002:a05:6808:35a:: with SMTP id j26mr1973904oie.105.1602075825057;
        Wed, 07 Oct 2020 06:03:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602075825; cv=none;
        d=google.com; s=arc-20160816;
        b=ETI4I3M0nB196ClR4gHobNBJK3ELDMEio62NGHH1RGWlS+pKE+GNvh5ByzakLuxGHR
         InxqFtptpPXdfCiSDbvsZqvGnsHoTWTx3KjfZ8PT4n2y4j2ckEbfbnMgmlJcr/SH/hM1
         hiRKs5maFn/ovZhDDtaise2dEo3oY+qJpsQbZQlaedXD8/OQ6anJieR1IoB0fOVywFrn
         rhJ73sjfmXEW9z+/HfkN5uWoNMVJ2gRNIUt2LO4eqNrtWXMkyPb1IRG+vwnCgWMmWzvv
         onHooCqLV8g5mJEnB0i+GkuYcnVrEg6TLs3iG96QZqivZa8by5BeE4xSwYCB3/RNLCRj
         eTXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zigHer1Zd1+ru7nvGZ2WEf+e0JKVqA7QqY4IIaL2VvM=;
        b=DPxBSXTQL2r/m+keDz03CClIhzyNQEwSr1rAfYsQUECiWacxNKCDvyOUTiP9rWxq+w
         cZmsM89/qh/c7JbSPF0SkyTE96dFn5R8umjusWiZ03v1TsZxs37pfyXWOnJD/nFof3lq
         bRLR000HUS3Os2hkQiMz+fITkBcY7o0F2sOLVxI5M+bLr39x9UrRSTrZnRpbKNZU1bGK
         Qj5kb6Yt/pHkPRVOCnEDD7BjFPZIbHvNHp6CO8eeVaKUEjzihSIhKt/ptVbPUX+8ozcL
         GTlYEATwMXkJbsumoeWTov6rn/WX1cf8RvkA2z2wahWn/9OaI5vVziDLB/+DL6YkA7yQ
         cleQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dkaj4cHo;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com. [2607:f8b0:4864:20::131])
        by gmr-mx.google.com with ESMTPS id o22si224270otk.2.2020.10.07.06.03.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Oct 2020 06:03:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) client-ip=2607:f8b0:4864:20::131;
Received: by mail-il1-x131.google.com with SMTP id t18so2148871ilo.12
        for <clang-built-linux@googlegroups.com>; Wed, 07 Oct 2020 06:03:45 -0700 (PDT)
X-Received: by 2002:a92:7f05:: with SMTP id a5mr2780824ild.112.1602075824397;
 Wed, 07 Oct 2020 06:03:44 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUXBs-94anDY=1hjpA-_Qzk7GTSjBSUbL-MgxvBdBvAQbw@mail.gmail.com>
In-Reply-To: <CA+icZUXBs-94anDY=1hjpA-_Qzk7GTSjBSUbL-MgxvBdBvAQbw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 7 Oct 2020 15:03:33 +0200
Message-ID: <CA+icZUVxqScHXGOyxUVwsUkdgG9GnR5UtyKAz4N52MPbg3REFA@mail.gmail.com>
Subject: Re: LTO: ThinLTO: Inspect the symbols of a thin archive
To: Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Dkaj4cHo;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Oct 7, 2020 at 2:53 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> Hi,
>
> I use Clang-CFI Git and wanted to inspect...
>
> $ file sound/core/snd.o
> sound/core/snd.o: thin archive with 189 symbol entries
>
> In the build-log I see:
>
> llvm-ar-11 cDPrsT sound/core/snd.o sound/core/sound.o
> sound/core/init.o sound/core/memory.o sound/core/control.o
> sound/core/misc.o sound/core/device.o sound/core/info.o
> sound/core/info_oss.o sound/core/isadma.o sound/core/sound_oss.o
> sound/core/vmaster.o sound/core/ctljack.o sound/core/jack.o
>
> So, if llvm-ar-11 was used to create the thin archive I should also inspect it.
>
> $ llvm-ar-11 -tv sound/core/snd.o
> rw-r--r-- 0/0 165856 Jan  1 01:00 1970 sound/core/sound.o
> rw-r--r-- 0/0 257080 Jan  1 01:00 1970 sound/core/init.o
> rw-r--r-- 0/0  15832 Jan  1 01:00 1970 sound/core/memory.o
> rw-r--r-- 0/0 370228 Jan  1 01:00 1970 sound/core/control.o
> rw-r--r-- 0/0 129484 Jan  1 01:00 1970 sound/core/misc.o
> rw-r--r-- 0/0 103184 Jan  1 01:00 1970 sound/core/device.o
> rw-r--r-- 0/0 219252 Jan  1 01:00 1970 sound/core/info.o
> rw-r--r-- 0/0 110064 Jan  1 01:00 1970 sound/core/info_oss.o
> rw-r--r-- 0/0  22924 Jan  1 01:00 1970 sound/core/isadma.o
> rw-r--r-- 0/0 137384 Jan  1 01:00 1970 sound/core/sound_oss.o
> rw-r--r-- 0/0 128888 Jan  1 01:00 1970 sound/core/vmaster.o
> rw-r--r-- 0/0  87888 Jan  1 01:00 1970 sound/core/ctljack.o
> rw-r--r-- 0/0 178760 Jan  1 01:00 1970 sound/core/jack.o
>
> This displays some content like symbols but looks sort of inhuman-readable:
>
> $ llvm-ar-11 -p sound/core/snd.o
>
> Can someone give me a hand?
>
> Thanks.
>

Looks like this is what I need (inspired by [1]):

$ llvm-nm-11 sound/core/snd.o

- Sedat -

[1] https://lwn.net/Articles/744507/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVxqScHXGOyxUVwsUkdgG9GnR5UtyKAz4N52MPbg3REFA%40mail.gmail.com.
