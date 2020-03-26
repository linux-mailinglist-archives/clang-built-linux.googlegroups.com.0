Return-Path: <clang-built-linux+bncBCLI747UVAFRBWEQ6TZQKGQETFOWTJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id A35541947F6
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 20:54:01 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id c4sf2833824uap.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 12:54:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585252440; cv=pass;
        d=google.com; s=arc-20160816;
        b=olcWNAIQqsRfPltYCB8E93bFIbqz6pvMfUtHa/M26XHUexHYCppI2nzLwmUpa8rbxO
         xwX72shzgh6tJHyEC9q4GxPe/VFVzBYll/3iLHn+bKVXzT5smtHtAxQFygb5d6ycz5ZF
         wd4UteZpuk2PHvIx+Vrdb6Mp3ZuK8XMppqHUMnfKLln+KGL2FtXD2z8iPIIcA6Nr35dK
         MV7konXwgJJGa2MCzaIE2VDKCljIQpu1Ps2m1Q0+B/HqU2N2xge0Lu7rv22mRAdR9epg
         1qW4XUTuNT9YcYRpuiGJsXYSH/wqkBD7G+VAuSy12MNn9ByAUkQmb90c/I5hSmhudnPE
         sP5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=2CmUilO+VEj1DiZlY5NQOcLK3SVYOZpIOBnueNM5wSY=;
        b=hgS8b3YflBY6hLr4GGeUjp9gdxMF0pmxXgNaSRVH1i1mU0aZIkLySuZ7eTs4RPsHAR
         iGBxQpiBEaYTznwl+EkzGVAeEtMrXIje8M4fmX4g7Yahnyw9zWpn/G2ASAaZUldw03ke
         EDM13Rsmw5eIbpXo0CZTucBD2/U9GixVE1Pc8Ip+6GurrWASWOmKIVOIePSY/ndvoQ53
         8d0kSRX0wv1JsHSLz915ipHeo6nW3fpPT3L6UJX6QkHZ0u8//Ttx3E6Luc7bZhOVpedd
         GhdQvX0SbCjV3hePrSY27iP3FotYTX22Z8UckjGF49aRtYlsgXV8pT2pe0GM7KScA6e5
         HuIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=wqxyOyNe;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2CmUilO+VEj1DiZlY5NQOcLK3SVYOZpIOBnueNM5wSY=;
        b=KT5rKhMrjEOWQSjW1AkC1cIEd6Kl8es5rqGTvp/XgKuNCm3A1i3mRxxxR9FHWuDtma
         BdHEi9LHRlgWOJx+auJKTLSrmhknSeMWMqA81pnx6VStGZdd8wJnQNP8gQVVMLLUtvNV
         /5CL4t5UxZ8dyOAzOKx7ElgducR1xES7lh90JEF4BCmdLNk3EjrApfrXWg1rSguB0lV5
         vG2xfQhZrWDWVojKAPmGUSwviFuMW/6iQc9VksFnVk09GtKtZD9WTMNMVw9PQAEN0Uov
         eudoqm9cRgJDf2hbWrFpZNYyUyZLjQsIfNZRZe0EnufRpRLpjTtfWuyY4wl/tT2tAFW4
         eIsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2CmUilO+VEj1DiZlY5NQOcLK3SVYOZpIOBnueNM5wSY=;
        b=crfDOcyi1gh8sAwD3Wmkh8LKQOKTD5JA4jmbBMv6mNzxrJWq7HwYO6UcF6D9Mt4x7c
         LwcS6VBdqz8UcbsDx1uz5GIt/pu2HCiP0q8rVOWfcdlOWSYBpxw7rJZ9t3avgUwpZhjp
         znGfSFbLqFGz3VHMZmVnTW0Aw5Ees7U2PZOk4ZB4DCt6QoTkxKURvg0gwLd1DNSAlMS1
         ubtO6cZuguKT1SIGJp77PkLU/GajMyuClX7vK2jXn0HbtdJ83+Bu5xxxSZO/DvgmuyMs
         8Zh7hFi3KAydifMasZ7qevPv7U8ssXuj6EU+E152Go2zl1iMRFTej98qx9ZRrb+5gxxh
         paZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2gjHEPOIsVX/TvFdKDWt6lh98R89ImzW1saCRJ5ZTpHfGqvkse
	aX7uw3M2y0mvYxvtFMVu9c0=
X-Google-Smtp-Source: ADFU+vvToQBXsIYkgZCcqp+8T3lxFAsWvXzmT8YthHeTvz+hfrpbKoyJLJVeorUUvadMTl69YRsDew==
X-Received: by 2002:a67:f6c9:: with SMTP id v9mr8880516vso.48.1585252440699;
        Thu, 26 Mar 2020 12:54:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a989:: with SMTP id s131ls385273vke.4.gmail; Thu, 26 Mar
 2020 12:54:00 -0700 (PDT)
X-Received: by 2002:a1f:38c6:: with SMTP id f189mr4111158vka.52.1585252440340;
        Thu, 26 Mar 2020 12:54:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585252440; cv=none;
        d=google.com; s=arc-20160816;
        b=no1mglhkaatxiuAA/4Qyv4ahYTvq+Y1KrUOe9X7pE4Bij4Bhk1hmn3jKJ46L4bALht
         0PWxiY6rxo7h2zG4ctB7c7+HaSyUYU6nyoKl0wZnmKqz6BNJ7TpIsIqa6POUsPylvkaw
         iutGfbC3oZoKCVPP2p+vpI8/ZioIg/vRrtfoAJRrLQAk/2KExU+2sD+wQZ7Vh8u0Ab8c
         PAEIpg+HjbNqxrTK3gWSsX2Hg1MPETYUYKID2w6cB9AjcEZaZOF01V1LhXK43S7nrQQK
         1w0BY3iEZvLeLyfkzoI63wZvOix0vhGEXykc6ZvTll5UbbzhznUGsDMM788JNbN/LkBp
         QT5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ec3bV7kfyncAdtBokCPztvFV6w0Rurp4KMKhkynRrbE=;
        b=H3AGBmgtFMr6GzlPNOIvhWwrqXX76N40kYsnrm+EFeM7dweCmMxOzurEWk2I9QooKR
         Nr/nxwsCzi6WnsQI/167UfHbt0+RA7pu6OAnffhineqIbDBrE5hElPXvqb7/TPHVw4af
         RRfXtyiR+2tlNp7vvWmL0Esg/ZbiA3JmeMaBxIsRzcCrQysSOCPz0CGjyoOz6q7lhGjz
         srb+paXAkPgh+e8zNxDqwFyEOHKTn4PaazLGLrPVc8QtpF8PbmuXp+yzqzOw5UpSwZE+
         NqAaDKKDQKbVq+RBCIk+pufgqCCAzeRY8Eh5d6DrjovMDKkX2vt8L/KjqCsDdQhOQ1gR
         OrMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=wqxyOyNe;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id 205si242769vkw.2.2020.03.26.12.54.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 26 Mar 2020 12:54:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id aae158ea
	for <clang-built-linux@googlegroups.com>;
	Thu, 26 Mar 2020 19:46:33 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 13bd7e5a (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Thu, 26 Mar 2020 19:46:32 +0000 (UTC)
Received: by mail-il1-f175.google.com with SMTP id g15so6590459ilj.10
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 12:53:57 -0700 (PDT)
X-Received: by 2002:a92:798f:: with SMTP id u137mr7565295ilc.231.1585252436484;
 Thu, 26 Mar 2020 12:53:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200326080104.27286-1-masahiroy@kernel.org> <20200326080104.27286-11-masahiroy@kernel.org>
 <CAKwvOdk=MCePWHD=Kj3K7fD0y8TBZfiFLB0X+gnhPUd=RnrH6A@mail.gmail.com>
In-Reply-To: <CAKwvOdk=MCePWHD=Kj3K7fD0y8TBZfiFLB0X+gnhPUd=RnrH6A@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Thu, 26 Mar 2020 13:53:44 -0600
X-Gmail-Original-Message-ID: <CAHmME9oD7DVSGVkWv2jAyr5eZUy2Ac+MWzss5dhKEmG3hq6AFg@mail.gmail.com>
Message-ID: <CAHmME9oD7DVSGVkWv2jAyr5eZUy2Ac+MWzss5dhKEmG3hq6AFg@mail.gmail.com>
Subject: Re: [PATCH v2 10/16] x86: probe assembler capabilities via kconfig
 instead of makefile
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, "H . Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Ingo Molnar <mingo@redhat.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=wqxyOyNe;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

On Thu, Mar 26, 2020 at 11:49 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Mar 26, 2020 at 1:02 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > From: "Jason A. Donenfeld" <Jason@zx2c4.com>
> >
> > Doing this probing inside of the Makefiles means we have a maze of
> > ifdefs inside the source code and child Makefiles that need to make
> > proper decisions on this too. Instead, we do it at Kconfig time, like
> > many other compiler and assembler options, which allows us to set up the
> > dependencies normally for full compilation units. In the process, the
> > ADX test changes to use %eax instead of %r10 so that it's valid in both
> > 32-bit and 64-bit mode.
>
> Does KConfig generate -D<foo> flags for KBUILD_CFLAGS and KBUILD_AFLAGS?

kconfig sticks everything it's got into include/generated/autoconf.h.
That's how you're able to use all those #ifdef CONFIG_* macros
already. This change moves things from a command line -D to the
autoconf.h file.

> Looks like lib/raid6/test/Makefile also generates some of these?

raid6 has its own crazy thing going on. The test directory compiles
that code for use in userspace. You might argue that its whole
situation is non-standard and weird and should be reworked
differently, but that seems like fodder for a different patchset on
the linux-raid list.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9oD7DVSGVkWv2jAyr5eZUy2Ac%2BMWzss5dhKEmG3hq6AFg%40mail.gmail.com.
