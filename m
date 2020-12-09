Return-Path: <clang-built-linux+bncBAABBT5HYL7AKGQEVQ243JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 727672D3E27
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 10:07:28 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id eb1sf637454qvb.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 01:07:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607504847; cv=pass;
        d=google.com; s=arc-20160816;
        b=zkxDHLyLMpBK4tEx9a/DhzCbxVm9wEIgjklqAEZPYoUj2SkT/UYziwijJYx2n93ZyR
         jpADK/9FO8t+xItLtQt/vjoZ9o5Bq8Pn5qdsk0qvj71mcZcRSZJeo+jNbj+xUcjsoDoC
         OVraQKSSco+oIU7mwZI0sPHzgp+z3a4UX/T6lct8KfSCQTep7QrbpxRoaiQo8O/kd/5D
         zpYNnpvnmicHng0rQM4bFhxPXJPxmHPNdZ84c6B9ohpM1vninq4I/5IcPXI+Kkz30VQJ
         YpAAhVXe0OBpUL2nZ9YgQBeE4JK/IYwUpEmstlfSUCSp66JXUqcWTE848oN5xlcbRvdT
         vFXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=ExHt9nc64dAwxnot/f24hPF5dBouwj++fdi4bJ2WB1E=;
        b=dD6VeqwGr5pok2nGveAfBQHh+YUmNtqjgFDrJwTiqEk9NY+M1hlGlbq4Df2+UPqex7
         kAJ0aB9UHdKuZlKxoozOxD6pyRHAz2lPiWTC9/ODIDsDkLxgfP+A9qLOlLriDRiXk25u
         zoRfDZmtU+HVSOi4/ib9pP859O7Gp4hw6uAY2pFmPBcPWA7KOkeuVv9th/dGYClg6gPg
         M4Fj3FX8T4AU4OcbOl4Wmx3p+K/peZ7uQwTMsvehHUCFzS2aial5WrdZAOQw+eSk4owH
         oveNdm1r29SxMs3y23xohq+GIfGknAz+7DPXzD5NKzeadLemE0vqkfIkZgxoqJqkn1Hs
         e7vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NCiGOimI;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ExHt9nc64dAwxnot/f24hPF5dBouwj++fdi4bJ2WB1E=;
        b=MYMvAjBW7YbEmjTa9gYSv6oMPuKXiQvQm2zyqnYcY6mg7coys/sbZgDhHsZlcnvIXY
         CLpbGVjVXZHwF3z/YRUSpZbJr2WVnqnACbT5hxF7lIn34e7fcCorEmgKkUOOuXJdTlD1
         qDy9z/rt3vJ29KKdAv+hpGMaA8FR/YP/iVlzaTYCepL2MGIVVSF0+mzRKs189ZYyreFh
         WOijo/ZXmTZZhQssJhyvymrlwVRwtXnRnoZljjXnnLWnur8E24OkG1LY9VS7kWYKjNPT
         xFw1I5k/J5uGs3yk03ZB65xoja6jIzvGMDEqGzzntIEyEmbJlcOJ9TlYtL6U4QgjyyLr
         0Dsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ExHt9nc64dAwxnot/f24hPF5dBouwj++fdi4bJ2WB1E=;
        b=h5cRc6Ww9rWbUZoxvwp91IGf9+7tkKIJqaZZhQY4z9ZVMXSZXrz3kGrXheFsyCxXKl
         aitwTnybzWuiCBJcllPHboYevONXH1DUgafwWjGpI31atYvyy+AM5U1ssS7qHbNiNPpG
         HePLaUwTQyyFpfO+U9b1kkRueuJY/8KlpsX659EySCYn3BUhIp7Mt8ONOq5aAtvbjO8B
         R7GsrzifaRIvP2Nb3koT8/c8woN45LZJyniSK4ZGTSa68B+niNBpSdyUWEFaUJNAXaUa
         3cVkQ4GDx/Nj0n183zMc2wrTlgGrwZf8zyjSTKr+Bc2FM0h6e79frU+zfYgTfn6+MBtN
         DJmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NXhBAhDQldBvDuosvMgd7RqWY8Tkkh/7ofkhQ6Qac8/owPa6d
	6YXsSv1BwRa5vk8h7DMUS4k=
X-Google-Smtp-Source: ABdhPJz7XEd9lDck8EqJLeJ9r8HX4uyY5xpwPkKW0HRr0EF/9VlIYGp2JgktlinK9UqLCMYd7TQRZw==
X-Received: by 2002:a05:622a:285:: with SMTP id z5mr1985704qtw.355.1607504847525;
        Wed, 09 Dec 2020 01:07:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3beb:: with SMTP id s40ls411589qte.8.gmail; Wed, 09 Dec
 2020 01:07:27 -0800 (PST)
X-Received: by 2002:aed:31c5:: with SMTP id 63mr2040713qth.84.1607504847173;
        Wed, 09 Dec 2020 01:07:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607504847; cv=none;
        d=google.com; s=arc-20160816;
        b=hdbVYWOWl+Mzcff+w/C9D1oJjjBsNTVv1cbi8dRJ9aa+1NOdG2gUjY6ATzWCdFlrTp
         diBkHoTXo6lApTT5wCYdj5Y93xA1/zAHX45Vhp2C78bMP1Ug0OkJ5atg57o+e46vJH5s
         f1t6dgfGsGSgiyw5u2NkG9UJBbxDAbxmdQmPS0B26Ttz7hIAR2fzEE1WZ7JLJBQSSuug
         fzs0O6pBedQqK1tyIQk8CDHhU0jCwfLqVDmNHPNzLA83+FAATTfsl5Y0h6zNRUXdVdLT
         LuHYPQbhvp73mBQFZGBBgyFfm72n4Wmmm7QKl2IuUVPftiZXl+Pz4UAYWhn8xojRj/51
         koWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=RpNhkb50O/1aoM2DCO/buYxKdAWQcV5WtkPp80FxMQ8=;
        b=XyO8H4noE483lXVj0kVOZWEXxc8SLp9C+nMn0CN9tPGGnAPusaUzi/1hGxFDr8nXfr
         dJpkMDr2BtY8+9CN39NWcIlBa/ZBEKJnXWEEIfbDhhDxCHrpDF9VHIcY5hBveoofCrRp
         sFtlyL6x0BocqX0AZtVIkiml3PqOuBtAC/xg8nHuyVUFZ8th5gFWkToLbwpZn1nu9Nqp
         Uue4lgwVDlBLXQsBMEJoU5Qe1QSt4OG4CfVfG3gPOlT7ZoJmLQ0ahwb/Qd9pEaut7Vtz
         2SKnl66upaPjQst7i9F/YdHmchNTXLkd1HuCsOFP6Jdg0KSKaL+quDS3INmVMfhNkd6p
         xVPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=NCiGOimI;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s190si78717qkf.4.2020.12.09.01.07.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 01:07:27 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:aca:44d:: with SMTP id 74mr1079063oie.4.1607504845146;
 Wed, 09 Dec 2020 01:07:25 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
 <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
 <CABCJKueCHo2RYfx_A21m+=d1gQLR9QsOOxCsHFeicCqyHkb-Kg@mail.gmail.com>
 <CAK8P3a1Xfpt7QLkvxjtXKcgzcWkS8g9bmxD687+rqjTafTzKrg@mail.gmail.com>
 <CAK8P3a3O65m6Us=YvCP3QA+0kqAeEqfi-DLOJa+JYmBqs8-JcA@mail.gmail.com> <CAFP8O3L35sj117VJeE3pUPE2H4++z2g48Gfd-8Ca=CUtP1LVWw@mail.gmail.com>
In-Reply-To: <CAFP8O3L35sj117VJeE3pUPE2H4++z2g48Gfd-8Ca=CUtP1LVWw@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 9 Dec 2020 10:07:08 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1aCiDta9_4-M6tstR+eX53ZaO65wdmoTXdZo2bBQmAWg@mail.gmail.com>
Message-ID: <CAK8P3a1aCiDta9_4-M6tstR+eX53ZaO65wdmoTXdZo2bBQmAWg@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-pci <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=NCiGOimI;       spf=pass
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

On Wed, Dec 9, 2020 at 6:23 AM 'F=C4=81ng-ru=C3=AC S=C3=B2ng' via Clang Bui=
lt Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On Tue, Dec 8, 2020 at 1:02 PM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > On Tue, Dec 8, 2020 at 9:59 PM Arnd Bergmann <arnd@kernel.org> wrote:
> > >
> > > Attaching the config for "ld.lld: error: Never resolved function from
> > >   blockaddress (Producer: 'LLVM12.0.0' Reader: 'LLVM 12.0.0')"
> >
> > And here is a new one: "ld.lld: error: assignment to symbol
> > init_pg_end does not converge"
>
> This is interesting. I changed the symbol assignment to a separate
> loop in https://reviews.llvm.org/D66279
> Does raising the limit help? Sometimes the kernel linker script can be
> rewritten to be more friendly to the linker...

If that requires rebuilding lld, testing it is beyond what I can help with
right now. Hopefully someone can reproduce it with my .config.

       Arnd

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK8P3a1aCiDta9_4-M6tstR%2BeX53ZaO65wdmoTXdZo2bBQmAWg%40m=
ail.gmail.com.
