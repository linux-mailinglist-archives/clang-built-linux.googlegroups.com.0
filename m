Return-Path: <clang-built-linux+bncBDYJPJO25UGBBS5NVT6QKGQES5THFFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 068992AE36F
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 23:40:13 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id l188sf184370pfl.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 14:40:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605048011; cv=pass;
        d=google.com; s=arc-20160816;
        b=lRt+Bm+qvTRKEUah+d2yjr89T5HYe5gIuGM3pTCabf9G1+VwW7dC0SQINDyPeo1R9J
         W695kuJTLdyhmV0SCxeZwlyQvoYsgtqV5iJa40KuN/b7W+Xnkw8CMx/7hxQKr0hcsRVj
         lb+M61hUlkGo2YviwU9wsZ2HS3tI6K73Y4smtoBCNIjTSfzabBsPpCzV42bflonOnn6Z
         z7eIJmjDBy1MfbN16PZQlafi/VXhqfIp8oVXyFei3aBSoGNexVJ15Zsfw7qQsLBvehua
         pP+tOhl8hbNDi/Vlq/XuABvgtklwm5MofQQVRYfYlUIrjYWhR1r0PGq+n6M3E9JoLtyE
         Pohw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fu16/++UybPOnDkwt6CMG6HkM6x5/0m7XCurrIkb7NQ=;
        b=rycQ2KbjpdNl9dGNoRFP1eunXuAUGpRsAnzRjPewGPp+B7k4qrOxCOGnWXh63vRQg2
         Mr6kRhhKW24YaI+EOVXrQQMPW+8sSwL0eTu89U0MF1VyyLH2XimO81PhBKpXjvIgqLV/
         nXcJiKj0kPIR1AvKENcnV1h1ohCrncOcwbQ2rKG27+jj+tRP74PAHgAqi9jK5dwvPT7Z
         E0iJPGpw61KoLe9Z/1Hdd3EJnERsr0cz/3KtvR4iqB8awBlyG+pF10coXfNuo/wVJDgt
         1F7ebjCLuLYViaXke2hf1frMXfD4ysvDbAzv1NBcjocrOPCG2TlPa7Ro9PIj7YdTbE4b
         E9Kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Kad0oMCe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fu16/++UybPOnDkwt6CMG6HkM6x5/0m7XCurrIkb7NQ=;
        b=XkqjxOhmn3jGrlofzwSBG26eZDBtUmCTf+FwhjIa52Z8cRYovZLV57nbvd4PNP1uEt
         UYAVE70xlckelxHHowHYjuNvZ1ifJhJOgMW2DzpJanrKxdWS1nnW9GESgYx8aB/xB7jx
         oMKhylJ7hSUlccyOVJ8t6ZUth14N6HExq0o+zQ6tTff9Vv6EDJQzeTSsd/iVg+jeMkzE
         G1Jt4gq7AORiAfWOjJdkDsmWW/ukyC7N81jPgCvSYaggCbqPQo27rXFLiqujrVv4sg17
         FaIw1u9NqHlaSlShFitAGo2QnRR7zVatTpkYDYcmp9vydNUlf5cfPYws6s9Y3c+VIpoE
         +jfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fu16/++UybPOnDkwt6CMG6HkM6x5/0m7XCurrIkb7NQ=;
        b=g/NeEGWz5Z5AEsYqcgQeKn2CuvwjJd9Q2hNFY10TnkUyRpPA3b5Ylxhgx/KjfKseeX
         jYRi6IEejON4OJvCYo34Lu9yjv6+TQdu0En6sgvmJElZ4WvkEr+KEKypqx+2H+7mAt1c
         IabU6L80I/S4t4FFAZ8s3hYdKJGLBmoRFGQT3bbq4MUcHvZOsk1/cpP6RB3qFbdpo5rF
         KIzZtogj3Xfr9o57cLWKSD5UrMTvTwKb4BX8oDm48/ufkgOFCvfLNOdJZhkp62ZKcHrB
         S+WCUzSQ664QjfUDbA6/hApz2UTcNAShN5dHfbsx5xolwyGYzadvuGnQ5+/uwLSzQp7/
         tZjQ==
X-Gm-Message-State: AOAM530xbAGjeUawscu+sN6Xfeyt4z2bfdBGohtnenJ4PYU+Ph83+UlG
	E1VYBp9cHVHvYiWjj0GRFiE=
X-Google-Smtp-Source: ABdhPJyDQkF4mbbSjbmCgWcfjXgncVXkJd2P4ov7H8Fx7tFHPn8lbnM3caOT+ne2gdjoR1BuGx+SyQ==
X-Received: by 2002:a65:6556:: with SMTP id a22mr19075973pgw.121.1605048011726;
        Tue, 10 Nov 2020 14:40:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ac96:: with SMTP id h22ls3301778plr.2.gmail; Tue, 10
 Nov 2020 14:40:11 -0800 (PST)
X-Received: by 2002:a17:902:ed01:b029:d6:bb79:d46a with SMTP id b1-20020a170902ed01b02900d6bb79d46amr19330191pld.76.1605048011203;
        Tue, 10 Nov 2020 14:40:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605048011; cv=none;
        d=google.com; s=arc-20160816;
        b=ez5Ic3Zuep1g3xJjPk5H13luxl8Mpv6UNiO9dwpXsWlihpI7Oohsr/RWG0pk6KcAf1
         gy52FfT/G88W2hNPHDZ09uYafBYIvd1e4cXf6pP3UjXaT14U6vU+vjL6744EnklreqvG
         yBvo/cUMycy6MSSMSL2BN0uWMoHYyMszuMahTa/C9xoWtoJR40HGmOqOwTf6Arb8cqzD
         gE4r/P/zHgQq9P6RusuVMCyQNTA8AQrlmuFaIwNAkRUs1OIvbZpS+DizoXjZEPDQDCLj
         aoVZFB815cqbCEJy4DnRN8QKk5F+1T6lF6zRbg6gfDrBbkveB+RQuP7ydGvg5gHx00Hi
         GC2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NRHRA3dKhIbMgb5WL8qK9dto+UXsm4X1NyrdOoYkubs=;
        b=iaNAR733VgDrTq1yia2P8yOIqZKzNn3V+GiAmkGM2XE2Im0dZnkk3OY/NHFDcQBLSy
         0Fqls8lDVHbew+woYFb8xOvKh4KK8aSp0MuORXYRPx3FM8UbK9Bz67ciDuqyYx6v6qgJ
         YxOLG5EgH8spxG5cIxQ5ZwzYvPRF6AAZ+ACecUKMrum5fpxQNF7eBbARN5jAXMEMiXGV
         RYWLIY6+8NMn9GRRDsu4cQ7Q3zeJTWeriNcVJaTUHpY7uISEoyJ8xexesTdb6NmT9qkk
         Y3qLLZ14Trz9HQOVHO5I9xwboK/U8eSWaRMTdw0Hmu/PEkMu1JoaVn5BxPvujWSu0hYv
         kKCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Kad0oMCe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id i5si467151pjz.1.2020.11.10.14.40.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 14:40:11 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id 10so210114pfp.5
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 14:40:11 -0800 (PST)
X-Received: by 2002:a17:90a:4881:: with SMTP id b1mr430686pjh.32.1605048010845;
 Tue, 10 Nov 2020 14:40:10 -0800 (PST)
MIME-Version: 1.0
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com> <20201106101419.GB3811063@ubuntu-m3-large-x86>
 <87wnyyvh56.fsf@collabora.com> <CAKwvOdkodob0M0r_AK_4nG3atLGMyNENMd6qVAHSPa92Zh7UZA@mail.gmail.com>
 <871rh2i9xg.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
 <CAKwvOdkm3u83TQDBB-fC0TwKZCFXGh5sAfahKXxA+mnzgDid_w@mail.gmail.com>
 <20201110221511.GA1373528@rani.riverdale.lan> <CAKwvOd=NQ==umC+N_Sgji5HCCFTRARh4jWiB3DaBfV6jDd5cRg@mail.gmail.com>
 <CAKwvOdmsCY8Hb6t8t9jW5DKCZKbja27bGufO=tw3+-UuTTFBOQ@mail.gmail.com>
In-Reply-To: <CAKwvOdmsCY8Hb6t8t9jW5DKCZKbja27bGufO=tw3+-UuTTFBOQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Nov 2020 14:39:59 -0800
Message-ID: <CAKwvOd=6nPUvUY6XJULmkZywHJG2kfu46h7=Zm18j9O30ovdpw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Adrian Ratiu <adrian.ratiu@collabora.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Russell King <linux@armlinux.org.uk>, 
	LKML <linux-kernel@vger.kernel.org>, Collabora Kernel ML <kernel@collabora.com>, 
	Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Kad0oMCe;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Tue, Nov 10, 2020 at 2:39 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Nov 10, 2020 at 2:36 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Tue, Nov 10, 2020 at 2:15 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > On Tue, Nov 10, 2020 at 01:41:17PM -0800, Nick Desaulniers wrote:
> > > > On Mon, Nov 9, 2020 at 11:51 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
> > > > >
> > > > > On Fri, 06 Nov 2020, Nick Desaulniers <ndesaulniers@google.com>
> > > > > wrote:
> > > > > > +#pragma clang loop vectorize(enable)
> > > > > >         do {
> > > > > >                 p1[0] ^= p2[0] ^ p3[0] ^ p4[0] ^ p5[0]; p1[1] ^=
> > > > > >                 p2[1] ^ p3[1] ^ p4[1] ^ p5[1];
> > > > > > ``` seems to generate the vectorized code.
> > > > > >
> > > > > > Why don't we find a way to make those pragma's more toolchain
> > > > > > portable, rather than open coding them like I have above rather
> > > > > > than this series?
> > > > >
> > > > > Hi again Nick,
> > > > >
> > > > > How did you verify the above pragmas generate correct vectorized
> > > > > code?  Have you tested this specific use case?
> > > >
> > > > I read the disassembly before and after my suggested use of pragmas;
> > > > look for vld/vstr.  You can also add -Rpass-missed=loop-vectorize to
> > > > CFLAGS_xor-neon.o in arch/arm/lib/Makefile and rebuild
> > > > arch/arm/lib/xor-neon.o with CONFIG_BTRFS enabled.
> > > >
> > >
> > > https://godbolt.org/z/1oo9M6
> > >
> > > With the __restrict__ keywords added, clang seems to vectorize the loop,
> > > but still reports that vectorization wasn't beneficial -- any idea
> > > what's going on?
>
> Anyways, it's not safe to make that change in the kernel unless you
> can guarantee that callers of these routines do not alias or overlap.

s/callers/parameters passed by callers/

>
> >
> > I suspect that loop-vectorize is a higher level pass that relies on
> > slp-vectorizer for the transform.
> >
> > $ clang -O2 --target=arm-linux-gnueabi -S -o - foo.c -mfpu=neon -mllvm
> > -print-after-all
> > ...
> > *** IR Dump After SLP Vectorizer ***
> > (bunch of <4 x i32> types)
> >
> > If you add -Rpass-missed=slp-vectorizer, observe that the existing
> > warnings from -Rpass-missed=loop-vectorize disappear; I suspect
> > loop-vectorize will print a "remark" if passes it calls did not, but
> > returned some for of error code.
> >
> > -Rpass=slp-vectorizer shows that it vectorizes two sequences of the
> > loop, and warns that some third portion (that's
> > non-immediately-obvious to me) was non beneficial.
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D6nPUvUY6XJULmkZywHJG2kfu46h7%3DZm18j9O30ovdpw%40mail.gmail.com.
