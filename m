Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBRWOXP6QKGQELNU2VFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A012B251B
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 21:06:30 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id y2sf4501353wrl.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 12:06:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605297990; cv=pass;
        d=google.com; s=arc-20160816;
        b=pcpqzDu+Xy5WCZBCPPWhwVRyuiSzORKkuKRDVDe/wPozAQUex6WADLunQtJcMq9/pI
         l/hLopl9If1bf7FyF+cXnaUohMVdym+dkvgrbJgg/WQsf+eMMAMm63DvsYzxcDOJ8dYa
         mgYAU2oLm4kSDs9R1tnDXye9XBLHP+Mti/RxXhx57Qmy+WX7nfYhj2cKL3F/0f4/xyYB
         dGnhkxDoemUF68GDyINVMrTLbG2vhjp4aXHZIisPijIbRY133bzYAKzLjt4dz8tQm37S
         xsmo9r+rK9lrMTgM9UnAi69cRHo/8ETOYKnpG8/hz/Wkzmp3oNzcrFUVInkaee64lj3q
         inYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ZbLayNDGBmNwfFMDmgytKYRGhM5H41J1A7EoGUcC61k=;
        b=TGjwQeMT6xv3a3oC9rvN0KmC/78u8RAMKKK+BHrOEn7kggKBJexYM+VgUk9d5C/tqp
         wyP3TiSkWuGBOq47mJ6TAD+6eYS9sY1ukj6Ew7zwgVK0pkbPWUK5vAEVzsjU6cOqyZZL
         QSQzkdITTFiKudm0zUFGtFCIlhTWHwBah66HIsQqwru/Io5XsDqPg5SBViuPbU/zSWAo
         QUwY+FlzaIlFJEuRFZQkpnkDvDJYEPI48cwlt6TZQmTZR2r1/WJTCWwOAMFPJzhAujuO
         03GgYV305W/7jcGdnfClYVFZfulf9Rg6ygDcuLM4PLVVRY7XAGDjiar5fIzdLt+HlGxJ
         n5jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=rgV12Nx8;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ZbLayNDGBmNwfFMDmgytKYRGhM5H41J1A7EoGUcC61k=;
        b=Pw825acN7JPl9gMagiFlO1uGgXefJAkVVtj/kS49f5zIlkWopo3/igQt5Ydse0HH4f
         uXZGmK9fstUYqvmN0EyBWwQ+91lgtda7aqpB2hXdK0oThETcYVcA+Dw1Vxv8VyPRyzhw
         Zhe+0HSsAyN7oT620GF1MFPHzzamMY92KRKf+ENTXzTSafUSDaS8cOtX10+Rn8J+2uV/
         I1lVrb0E0SPE3UPZFPeQHeUN2CJmqG9PuQies+ltFJ8Z4rXtKqaGiDYPfK+yFyfWk+6b
         Dpt3v+EgP+ZQPrjZI7X0IJ6i33m3nDysz1XT6bFLshlwQkESZeJDGapI5HdDOFk5k9To
         BB5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZbLayNDGBmNwfFMDmgytKYRGhM5H41J1A7EoGUcC61k=;
        b=V/5Q5nK5mSkEplBSuiGTq90VZY1F8Q13iX/ywr6IicGPRkWsd5nogxGBmY7WKUiQhu
         pf2w9YgOGSXIajabBddkddWGdLNNQX2YT/V/ta381nsva5iJHFmAd7uaqiaeTu0C+BuV
         teMjxZEISNAnmwFN3sw8BPbCil6G2VjMxy6E7nep52OvTeqekQj47gK3YheVzr2Z6R/K
         L+LT5X96S0cNHnJZIC3I/VKy1ZZ1Aw5okLsdgXiGqrwG/8Kfl4FyuDpyI8QcUoAWsQJg
         rzEJPCIj2GRm6NpjBPe1CPncow4+sBKXBIVFFlOK/DvTAo0qIHOOLjWgF5qjl7ninWqo
         EuMg==
X-Gm-Message-State: AOAM531wvil4hMGTpEH0nAE8TIROH+N2aiwONM75H3yfAlfI3W4clKU5
	QRwwHM1sq6G3lIF4iEasFEY=
X-Google-Smtp-Source: ABdhPJzFs3yTvt6HpT3G7EbNk1MWnAX0DsfIZuPRlJ5VGYLZS1Wqbw5ftOFZgc48f9gQYKRM5Gw4tA==
X-Received: by 2002:adf:c14c:: with SMTP id w12mr5741668wre.40.1605297990458;
        Fri, 13 Nov 2020 12:06:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:aa87:: with SMTP id h7ls6913831wrc.2.gmail; Fri, 13 Nov
 2020 12:06:29 -0800 (PST)
X-Received: by 2002:adf:f2d1:: with SMTP id d17mr5526332wrp.339.1605297989595;
        Fri, 13 Nov 2020 12:06:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605297989; cv=none;
        d=google.com; s=arc-20160816;
        b=0aBPrD4G3rnTBtCRZFjnn/iRzkUM/OOlTxpXrFO/3SPrFTwJjgCtZunKrTlq1c6mfL
         mXNLFA1reEYXJVj5d+Sx6Dhtb6tQkW0b8H+0m5Ju3w7/r6uSmOPMGXb0HKWJ1SLtfAVQ
         bCDf9g2YYzZ7arsmQvXJeZBezEASrnJuOxj3PTzwpbFi6UyYeD/SDGBoihNKw+aFwIE0
         egj+Fy9NfTaUl9sexy7D1PTjt8zyUcAybvU98itGTl/6JX8p0tbWEF+C98U7O3x2KB2w
         e6JIa+xdwy64ICp7je80QnduRG054cr9q65GDpMa9A5of53eutB1UPpzZq+LRah7/bUb
         9uqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=oQwnOHsy/0jBPQajX/pBzBhWuSfClhYpeZwlUl+SZ70=;
        b=gnwP5Jg4F8bJorz1fQBrlg/oiUWbRSJy+xqnBwo3H4muBQH/4AS0pdFxRVFymHiVXB
         hT/pP7LLtQhaNX/MxVHocPhJ27vBtpAEnbgUiWT2EaZ/H8SKfbuDn0KKCHiLU5khjgbF
         SK5v9Jpj+/SvkimWEQL5fQAegKJ+GvStSbzsEPrW8NToz2q4GhU/ykK72Qfp2GMZfvpV
         9bJFWWjErR8DHGOq6s+c9tkjdtyqmQCb4RL79YrX9hw6BYMi609Y62TKu9eNTkRZNBPi
         TujH8RxhuFE/+V6HTkjNITfNQ9BkjvwDf/i4DkhTifxIX1rgk4IeJyX2WlQjfdvKGuz+
         SvYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=rgV12Nx8;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id p16si224332wmc.1.2020.11.13.12.06.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 12:06:29 -0800 (PST)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 166FCABD6;
	Fri, 13 Nov 2020 20:06:29 +0000 (UTC)
Date: Fri, 13 Nov 2020 21:06:28 +0100
From: "'Petr Mladek' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Matteo Croce <mcroce@linux.microsoft.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
	linux-kernel@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
	Pavel Tatashin <pasha.tatashin@soleen.com>,
	Mike Rapoport <rppt@kernel.org>,
	Tyler Hicks <tyhicks@linux.microsoft.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] reboot: Fix variable assignments in type_store
Message-ID: <20201113162043.GO1602@alley>
References: <20201110202746.9690-1-mcroce@linux.microsoft.com>
 <20201112035023.974748-1-natechancellor@gmail.com>
 <20201112151320.e0153ace2f2eb5b59eabbdcb@linux-foundation.org>
 <CAFnufp1j6ZzxLJA2x28BdxbTtnN_KtnXB49ibPcbze=B2ru3aA@mail.gmail.com>
 <20201112171826.0fa3c6158f3c2780f90faafe@linux-foundation.org>
 <CAFnufp1OrGeGgUn9_2V9HMtfb-7GwuEwz4+Co_W8ehcVOQVscw@mail.gmail.com>
 <20201112184637.de44afedf0ce0dcab36dd0ad@linux-foundation.org>
 <CAFnufp31YO9yTXVqgKNZGR9XXRKfGKM4Y4NLk+4_uXdoWa+G4w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAFnufp31YO9yTXVqgKNZGR9XXRKfGKM4Y4NLk+4_uXdoWa+G4w@mail.gmail.com>
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=rgV12Nx8;       spf=pass
 (google.com: domain of pmladek@suse.com designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=pmladek@suse.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
X-Original-From: Petr Mladek <pmladek@suse.com>
Reply-To: Petr Mladek <pmladek@suse.com>
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

On Fri 2020-11-13 03:58:49, Matteo Croce wrote:
> On Fri, Nov 13, 2020 at 3:46 AM Andrew Morton <akpm@linux-foundation.org> wrote:
> >
> > On Fri, 13 Nov 2020 02:38:18 +0100 Matteo Croce <mcroce@linux.microsoft.com> wrote:
> >
> > > At this point, since 'pci' enables BOOT_CF9_FORCE type and
> > > BOOT_CF9_SAFE is not user selectable, should I simply leave only
> > > 'pci'?
> > > 
> > > This way, we'll have the same set of options for both sysfs and kernel cmdline.
> >
> > Well, you're the reboot expert ;)
> >
> 
> So honored! :)
> 
> > But my $0.02 is yes, let's keep the command-line and sysfs interfaces
> > in sync and cover it all in documentation.  It would of course be
> > problematic to change the existing reboot= interface.
> >
> > I assume that means doing this?
> >
> > - #define BOOT_CF9_FORCE_STR     "cf9_force"
> > + #define BOOT_CF9_FORCE_STR     "pci"
> > - #define BOOT_CF9_SAFE_STR      "cf9_safe"
> 
> Either BOOT_PCI_STR or BOOT_CF9_FORCE_STR, I have no strong preference.
> 
> The syntax is 'pci' while the enum BOOT_CF9_FORCE, so we can't please both.

The question is whether we should modify/allow to set these values at
all.

Anyway, we must prevent them on non-x86 architectures because
the reboot behavior would be undefined there. They could probably
make a mess even on many x86-architectures.

I have to admit it has become much more complicated than I thought.
It brings back Andrew's original question whether this interface is
really needed. Are you going to use in the real life?

The interface might do more harm then good when it allows to set
reboot_type that is not normally accessible or disable it when
it is strictly needed.

Anyway, we should get input from some x86-experts about the BOOT_CF9
values.

Best Regards,
Petr

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113162043.GO1602%40alley.
