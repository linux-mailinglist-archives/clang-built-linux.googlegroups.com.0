Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJX3U32AKGQE4AVEK2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C3C19EAA5
	for <lists+clang-built-linux@lfdr.de>; Sun,  5 Apr 2020 13:14:47 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id d8sf1443563ljg.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 05 Apr 2020 04:14:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586085287; cv=pass;
        d=google.com; s=arc-20160816;
        b=kxuKM4PeEM5AcAq643Oi6AYEMIGlrunwyr3FMgoWIyVm20hVyXnMIRR3LSMjXA002a
         m4jBXkjlt8C86KCM6OHBLdIcN62gNXCu3L+H6mpwkLiCu9fojbwfS6Ne03JuKbkAbec9
         oRnXWJHtPdzduJz+t0DwWtUbTofESu+tT/rwNZdT774lK1XW1pKuJZ6yX5hIIiXbpoDl
         xDohp6bdtgU6yTcTKj/oNNMnVMbKoO8gE5zCEv8L9qqIfEbzz9SxoYK9WUI8BzfgtAiF
         FQck2bcs0hdPQ4QzNMfO1ePBMvRqTgyDVTwjlbZdcFFiqbu+kFOxcJSUCLYb/V9Bdb4U
         WXnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=gxiNuSQ0ZT9hx92U4N/h/JQBi/N6m12QgpPwZ+eKtWg=;
        b=IsmiEycUOJLmBqxlMvB00g9B2KpoDA8Nw/RAN0s41f80uO6XMoUFG6U3tLjSxMCqro
         +lrRAXdXdWW363Gy9ii7gylg72mx6Etwd7RGN0WOzz798eSbaydLdGbNIrhBq9Rc6xLD
         4K/Wzo25bC0ul9P6Qx236DG8qT2wNi+Pr0qgPFGHQltjemjsC90MBhMQlsz1P3nHFyv/
         rej4OL+m9Mqks9oAxYMN6RlFbVwkIxsiPyYByiSy2/ke4l7hAwZ3X3aPFXE6j1mc8Gtl
         qWwyNmE4Oy1QDIUMnxv20YWW1/t2vfy/Vgo2qowhLKKPlnEURInPzV32ENviTBwuBRhL
         fqSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tmuPFlSh;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gxiNuSQ0ZT9hx92U4N/h/JQBi/N6m12QgpPwZ+eKtWg=;
        b=afMCDgj26MvtxIOLnfVC7I72BbjSb1FrRYhEqSI70Fstx556Reusl9/UPJGqI72lnP
         AaPciSPHEe5y+oVpdsGgWWxeZuSLHS8Bl2PgwZl/HlBI/1C/TLGxY/ytfxr850JqnCeG
         klnVfObM2VcGfWKHSZxeMxkhkY1gUerX5HXORmkigboamS5BMqyW3kJrRNcev25khk7i
         y1l5aF9GRkmNQNo101te5cnnVEa8nK2bgReEuOMyaPHAh15gWmq5/IXOGo+g516qGwpJ
         NkhQB2nNBq6kGuASggeiMSj9ldGGtlI+goVhiy46mk9x+z3u5e9YvX8jo5IP0orpn8tW
         K9eg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gxiNuSQ0ZT9hx92U4N/h/JQBi/N6m12QgpPwZ+eKtWg=;
        b=L1NbUi2tdrcPc4+iw6/1BwgVJPNLc6ZuI/7tUpSpRxajihdBsRTgexgwLkLoZjzxMk
         rs+xbR7PB0Y4z7wD92brVxFqzSWZBgbrpWC8A8K7khSG5XDL4e4m5YvcLluRPwjM8bXx
         c6UKLBDodjdjRf/YFef6ttySo2txVPL2tvgvxaxrT209LW8hzfXwxPy7/cK4sOAnhu8X
         aan2GAaJ8vWJ6MVmhcdZ7xjChtXjON2MmEg+BOyoJcbe1Z7pRd45AGvc/fAF3D1oBM2O
         zhZo2WoCDTUuCNXR67CN+zKmGinlVZze63BcyGyXGxeX8k+YG8a4FEiWuzaQMe26n9XG
         Qjeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gxiNuSQ0ZT9hx92U4N/h/JQBi/N6m12QgpPwZ+eKtWg=;
        b=Me3xQ0eTViW/8QjJjf23b6Ew3nNHmHYD9UzXJPfIwsYhrHovPq6zsDOnHQyMmVDWxq
         Khho9C2O/3B0OFAH1Y7UYs/DwhCC7zwXD9kcp0mkifhf80EX9i5/JrhiiwchZM12uhck
         Zp4FhlZOp0nPTDdVZWmeRFOWsgtjy1vpU4xsSNXcRdDWsydzQazxc15w4xgMizcryJCu
         bkrcVYKBJOEcI2lzI93Zx76z37r+av2ynq0a6QsjImy8LiLSohaMDe+oXyiyBzY/SJR4
         MAwOyIsZ9/yTPFoqSnsCRknHZYg//swE6TlmI/PgLdc+NsGOX530pGqNxe11CrMXxNoF
         Idfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZxXFDj47sI2oJPXDlZ6gYCI+y19I55lAM+0gT84y6nedG9ACo5
	LUjL2IJDoXrLi3Mxsnl/N4I=
X-Google-Smtp-Source: APiQypJtMzuZ7loFhitBHO57EJeQX0fQPVEw8awCyyLGOgCne7lgKxA7YsiVANOYem0qDWWzDE2AKw==
X-Received: by 2002:a19:6144:: with SMTP id m4mr10053223lfk.192.1586085286375;
        Sun, 05 Apr 2020 04:14:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:504c:: with SMTP id a12ls918388lfm.8.gmail; Sun, 05 Apr
 2020 04:14:45 -0700 (PDT)
X-Received: by 2002:ac2:53a6:: with SMTP id j6mr3016677lfh.153.1586085285348;
        Sun, 05 Apr 2020 04:14:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586085285; cv=none;
        d=google.com; s=arc-20160816;
        b=bdWtjubUBJfTncNENYWnQzYwiF9lif74e6KiYACgyu1oOa8oiaAgT+UhVunnjtGfyH
         VtFmh6aN7AhKltRXuoB6yj1nsWJemXab2goFUi2p4s/p0n5a4PybOEa8HSyPgy1PvPeS
         yxaTqx7AhcuIEu005ifQF3Cgu5ofDC9AirVwPzWHyxuJ2iY65K01vCwG136DAkxQWoDW
         F3vyNMjK+EnM8kNDYX/CuiL1bgWpSo/BQNhJv/BBBtAKBVDUabxvRcix0nSNCoy9TmAL
         dDP4UzSEhBIYCudrUOn4GRDIIDBTxposP9C/hDI+w8EL+xA1GxP73iq2kCr52gmk0fIw
         K3SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NxJKrbYiQ4xe+r7i0H/o0qPIvinu13Q5NjffxcFXndY=;
        b=kjp9PphelQNHdEQd1jSOteS+LI0SLuhi2ABX+r+weaI/hqkh/BjlmcEvCk0Ua1Jkus
         brvECN1wFLJ5PMcZWsohPTaz0vwr7wJfszM/wdFCTW/SlwBwD3vZfL/E1jJLLOpbJCR6
         ass9K2/OT58Uk/G9A9zLQFNhHXorrbTBMKu+vK8t8Tkv068WVrsFoXx8ZzoFHyMH60MY
         fsfvPT3LAA6m/NqRFCR2YlY/qAQhChioJdom8x6/vJBi29DFIZd8OyTjYly+G9HS9UOK
         B5KXZDle+QuVgpF0eybBPHVF6jhTPX1Z6WY8YlEKiaoMqv/9byZnOOUnohBCpw8ePbXZ
         28bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tmuPFlSh;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id w15si877330ljm.5.2020.04.05.04.14.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Apr 2020 04:14:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id 65so13944719wrl.1
        for <clang-built-linux@googlegroups.com>; Sun, 05 Apr 2020 04:14:45 -0700 (PDT)
X-Received: by 2002:adf:bb94:: with SMTP id q20mr3453756wrg.179.1586085284762;
 Sun, 05 Apr 2020 04:14:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200228002244.15240-1-keescook@chromium.org> <CA+icZUWTnP8DYfbaMwKtJbG30v7bB4w6=ywo8gn8fvwr731mUQ@mail.gmail.com>
 <202004021023.D3D8AA3BE@keescook>
In-Reply-To: <202004021023.D3D8AA3BE@keescook>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 5 Apr 2020 13:15:01 +0200
Message-ID: <CA+icZUXi_iA7XkTEbrK7b6m673iG9qPKnDBE1V0JRywDLBc9jw@mail.gmail.com>
Subject: Re: [PATCH 0/9] Enable orphan section warning
To: Kees Cook <keescook@chromium.org>
Cc: Borislav Petkov <bp@suse.de>, "H.J. Lu" <hjl.tools@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, Arnd Bergmann <arnd@arndb.de>, 
	Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tmuPFlSh;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442
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

On Thu, Apr 2, 2020 at 7:26 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Apr 02, 2020 at 06:20:57PM +0200, Sedat Dilek wrote:
> > On Fri, Feb 28, 2020 at 1:22 AM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > Hi!
> > >
> > > A recent bug was solved for builds linked with ld.lld, and tracking
> > > it down took way longer than it needed to (a year). Ultimately, it
> > > boiled down to differences between ld.bfd and ld.lld's handling of
> > > orphan sections. Similarly, the recent FGKASLR series brough up orphan
> > > section handling too[2]. In both cases, it would have been nice if the
> > > linker was running with --orphan-handling=warn so that surprise sections
> > > wouldn't silently get mapped into the kernel image at locations up to
> > > the whim of the linker's orphan handling logic. Instead, all desired
> > > sections should be explicitly identified in the linker script (to be
> > > either kept or discarded) with any orphans throwing a warning. The
> > > powerpc architecture actually already does this, so this series seeks
> > > to extend this coverage to x86, arm64, and arm.
> > >
> > > This series depends on tip/x86/boot (where recent .eh_frame fixes[3]
> > > landed), and has a minor conflict[4] with the ARM tree (related to
> > > the earlier mentioned bug). As it uses refactorings in the asm-generic
> > > linker script, and makes changes to kbuild, I think the cleanest place
> > > for this series to land would also be through -tip. Once again (like
> > > my READ_IMPLIES_EXEC series), I'm looking to get maintainer Acks so
> > > this can go all together with the least disruption. Splitting it up by
> > > architecture seems needlessly difficult.
> > >
> > > Thanks!
> > >
> >
> > Hi Kees,
> >
> > what is the status of this patchset?
> > Looks like it is not in tip or linux-next Git.
>
> Based on the feedback, I have 3 TODO items:
>
> - track down and eliminate (or explain) the source of the .got.plt on arm64
> - enable orphan warnings for _all_ architectures
> - refactor final link logic to perform the orphan warning in a clean way
>
> I'm working through these (and other work) still. I'm hoping to have
> another version up some time next week.
>

Please CC when possible with a pointer to a git-link.

Thanks.

- sed@ -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXi_iA7XkTEbrK7b6m673iG9qPKnDBE1V0JRywDLBc9jw%40mail.gmail.com.
