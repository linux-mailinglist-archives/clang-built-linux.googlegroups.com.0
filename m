Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBO6K6P3QKGQEGGIKXKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 172132113A5
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 21:34:21 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id d18sf17799868ill.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 12:34:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593632060; cv=pass;
        d=google.com; s=arc-20160816;
        b=vrmEcuNTgdUGvfEclyMRwMgpGnOtwldMTMOh99YrrHG/xJYvt79ge62Frdv+zj4QyD
         bGfMCxg+G+AGkx/w0aM/dbCuhOtLRam05D8hO9w0cVq+iZ7qa7YDFVom6F3pdBJxQlLj
         y4A8aIIMHvW4d3WknPdW12pRbtKYys+ZUjHPCfj2HWf+4xODvstVtdQsEzIcN6ePCSL2
         yTwq7Fn04e4wUc8sV6Uiv3JcKB5VXmHI4k9ikGv/+N8ug5ZK6Xqa1y0hBk8lPZK/bD//
         q7c2zmMv6ULNEanu3N+P/3inwLe2zR/5J9ALuPHTaMPk4GaA8yXARxWCdGPM8vZt38HR
         ARjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=vjP9e5isDx69xMwZXiKcF1HFaf8qCKz01w8qbIXWtNQ=;
        b=bIw7HK77oiV20T8qGRIgU9JX0u4PVBbHM5+sRdlp7TAlbO0sX68KlekPzeOkSA16zg
         Oh59B6V2buWMZEaM+5MSctlyNVwZhdZw24w2fPiwy6yil38btXNGNLemm5ygjtNt0pYo
         IRSchAaWpPpgVkJ8up1ueBdJTu9CTndALB1R9+bFZ4eXVDekjRN7aVsa0g/hrxnWihI8
         1rAICCDBKhebVvBHuzV4DitKeAW8AIra+t3LL729HiUkL9FFrrJJU6H6zgSiA2oVQdK3
         iGL3plQe7i+Zu5ZuxCFYJ7ZSOksWmtkp+wnrMp8+O33PaTT7TizT42ExptslTF72VPGU
         7AXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=jiuTH+JR;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vjP9e5isDx69xMwZXiKcF1HFaf8qCKz01w8qbIXWtNQ=;
        b=G0lW0MWQRHWpu0Adx3hZFnBkXL7Xz/6ncHutwX5knShTIrktwYCfIwVPf1Yg3hL4I6
         srL9iD7u3AL7lpdbFzWBhf0xPYFSA5QxKQmXfSclKff3rnFjlNNUGx1lZJdectNAre58
         QyLYaLhkdPD2wlF0C8XKT8RoNqEcwdIc6xrQE6UqvGBbnr7aLdLR4XhvCJtKiXW43L0V
         Fw4C7UwarjvruziVbziYIjgacn8vq1CQJzM0WkJF3sRxbHKA324t1VRio4GIyoHXtnut
         4sZvnpZ0Xp7W1WKHeM5XDFHkIL60tOpn2j8TnMQaIzxebEe2m0WgfAfux/aVOHB6d1hA
         NNPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vjP9e5isDx69xMwZXiKcF1HFaf8qCKz01w8qbIXWtNQ=;
        b=PQn77yKSVyA3oPjCx01wccqMntN0ii7OwGuPl5K1Id34NAnHjl3OOiP/uAQEzjW4Tm
         AGvSvN1a11zUyDxEna7DUkJu41DrIG70DtEikp+pXrskvJVOFNFOffkC4T/+LLSN57P+
         fjsN00lEgoClgFxGyTfBCkUFBWoFNKL2CJ/lZmqVpP+9Ed8ZuGacHq8YEI3HwW57fV7F
         9fmuzUv27YkkKp8euGIY1aumdLh97zDV6J8FSDaWlSCb3kd+HE2WEQV627lflYij9LG5
         Knl1822gkaeYr8vcfIUufPbU2i2j0/GBGWmxmL2CNyZ0sNcP0MwHfV2kqepxwDQyw79+
         q6Eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310XKtUIN9QfSw2LzZxkX03xNuVDnER/xjRpc1wv9jVty2ljg59
	fn2E4/3iYDKA+iMVmB3JeGo=
X-Google-Smtp-Source: ABdhPJxePDKUJNG79tdPpB9ZXhsGJf3eakr27TXF4JOFifz8uhr2d6YStUzoZInKmR883XW9mMKQew==
X-Received: by 2002:a05:6e02:46:: with SMTP id i6mr8888546ilr.91.1593632059800;
        Wed, 01 Jul 2020 12:34:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:8249:: with SMTP id q9ls502649jag.2.gmail; Wed, 01 Jul
 2020 12:34:18 -0700 (PDT)
X-Received: by 2002:a02:70d4:: with SMTP id f203mr31103332jac.74.1593632058520;
        Wed, 01 Jul 2020 12:34:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593632058; cv=none;
        d=google.com; s=arc-20160816;
        b=FPSflYikzRCgdYMquL+tsxXFIRw44kU5kSlz6Xz4q77aryB85PHzFNsy7m/Lm6d3uu
         bowOe751p0fVcQ7v/gXOuL/62Ag9SX7A5UPBlCQ1cvdlqTB7CPZb6Wa9H3llpyPRzGdB
         tx7e0rNBky+6VZbfCusVYNSImXTj/USr7aTDMxZUP1T126Sk0Egl/QpS+6UR/rToZePi
         gaBYxM8JnsgQTKgY6NPDZxgVXNVu941apnm96crONC7xVdYtG1Xa0lSCRSyY6NbpX1Rd
         /L18GR96Ur/9klTVAE8zX99F+OeWrc+f43H2by+oEw53zL7UAMnhMyZK/hIkLrrcM1zg
         Yl0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=M049TJy/cPQkzAutDxghwHrAKGcacxHbM+3c0nlXY9g=;
        b=Ba1JCYN/MVXvAlXdtVaNzCRMVrHWiMtvutdVJzgJ2dsCShYRe2Q4vRPBU7m1WMV1sZ
         NBNbOC2WJfZVOfUtjxjnX0qK1H/z1FMMGLwBqcfK3bZsDtYtekvUTodd0zBrR0rKwwfg
         mOVVgL/9acCfOjf9fmrBb0nsK394D0iFkXIE4l8qkl7VeQmcdNW8macrGSX9tDG+kiBZ
         /WAZ57WwhZn7Cs7TlGEN1l1UxvQj+RClvdLOD7+K72Nrd9RlJYkBP76LTkt2LT8WKu9m
         +NWLUjy7zQfAwuDPgPX8TQEXj3sLroQWYZR+i+jkYObBIfRkO0TwFyyoRrLyrN9lJ267
         sv0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=jiuTH+JR;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id p1si536309ioh.3.2020.07.01.12.34.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Jul 2020 12:34:18 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 061JXp7Q028761
	for <clang-built-linux@googlegroups.com>; Thu, 2 Jul 2020 04:33:52 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 061JXp7Q028761
X-Nifty-SrcIP: [209.85.221.169]
Received: by mail-vk1-f169.google.com with SMTP id s192so5742550vkh.3
        for <clang-built-linux@googlegroups.com>; Wed, 01 Jul 2020 12:33:52 -0700 (PDT)
X-Received: by 2002:ac5:ccaf:: with SMTP id p15mr13601008vkm.12.1593632030968;
 Wed, 01 Jul 2020 12:33:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200626185913.92890-1-masahiroy@kernel.org> <CAKwvOd=V_M43CP7G87K3TqSsxua2NcXPz6BnDt-z6167O2WAzQ@mail.gmail.com>
 <CAK7LNATcwGkSWV7NSgwG_WqzvTPphT9=KK+qvT3FK_7y1UCzTA@mail.gmail.com>
 <CAKwvOdntZw2k8ZZ7txPC-FD+50cPpMwctGYTW0j2zw+FVj9SgA@mail.gmail.com> <CAKwvOd=JbEJNdWzk_xdMiy9QewbU3ESOHcokAXKkARrgm-ibEg@mail.gmail.com>
In-Reply-To: <CAKwvOd=JbEJNdWzk_xdMiy9QewbU3ESOHcokAXKkARrgm-ibEg@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 2 Jul 2020 04:33:14 +0900
X-Gmail-Original-Message-ID: <CAK7LNARUekoGnTOdUtAvJNJmtr75o1VGv-qnKqMz0eDkxevL4w@mail.gmail.com>
Message-ID: <CAK7LNARUekoGnTOdUtAvJNJmtr75o1VGv-qnKqMz0eDkxevL4w@mail.gmail.com>
Subject: Re: [PATCH 1/2] kbuild: remove cc-option test of -fno-stack-protector
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        linux-efi <linux-efi@vger.kernel.org>,
        Kees Cook <keescook@chromium.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=jiuTH+JR;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Jun 30, 2020 at 7:39 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Jun 29, 2020 at 11:26 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Sat, Jun 27, 2020 at 4:59 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > On Sat, Jun 27, 2020 at 5:13 AM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > On Fri, Jun 26, 2020 at 12:00 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > > >
> > > > > diff --git a/arch/x86/kernel/cpu/Makefile b/arch/x86/kernel/cpu/Makefile
> > > > > index dba6a83bc349..93792b457b81 100644
> > > > > --- a/arch/x86/kernel/cpu/Makefile
> > > > > +++ b/arch/x86/kernel/cpu/Makefile
> > > > > @@ -17,8 +17,7 @@ KCOV_INSTRUMENT_perf_event.o := n
> > > > >  KCSAN_SANITIZE_common.o := n
> > > > >
> > > > >  # Make sure load_percpu_segment has no stackprotector
> > > > > -nostackp := $(call cc-option, -fno-stack-protector)
> > > > > -CFLAGS_common.o                := $(nostackp)
> > > > > +CFLAGS_common.o                := -fno-stack-protector
> > > >
> > > > Any time I see `:=` assignment to a CFLAGS variable, it's a red flag
> > > > for overwriting existing CFLAGS, which is a common source of bugs.  I
> > > > recognize the kernel is current a mix and match for:
> > > >
> > > > CFLAGS_<file>.o
> > > >
> > > > rules to either use `+=` or `:=`, but I wish we were consistent, and
> > > > consistent in our use of `+=`.  For those rules, is there a difference
> > > > between the use of `+=` and `:=` like there is for the more general
> > > > case of appending to KBUILD_CFLAGS?  If not, it's ok to match the
> > > > existing style, but it's curious to me in this patch to see a mixed
> > > > use of `+=` and `:=`.
> > >
> > >
> > > I think Kees mostly answered your question.
> > >
> > > Let me add some comments.
> > >
> > >
> > > '+=' is the most used in kernel Makefiles, but
> > > ':=' and '=' are also used.
> > >
> > > So, you are right, we are inconsistent.
> > > This applies to not only CFLAGS_<file>.o, but also obj-y, etc.
> > >
> > > For example,
> > > https://github.com/torvalds/linux/blob/v5.7/arch/arm64/kernel/Makefile#L15
> > > 'obj-y :=' works since it is the first assignment to obj-y in that file.
> > > 'obj-y +=' also works, of course.
> > >
> > > We can consistently use '+=' everywhere, but I do not send
> > > patches for churn.
> > >
> > >
> > > You can use any assignment operator to CFLAGS_<file>.o
> > > if it is the first assignment in the Makefile.
> > > Using '+=' is robust for future code insertion/removal, though.
> > >
> > >
> > > If the right-hand side contains variable references,
> > > there is important difference in the behavior.
> > >
> > > You may know two flavors in variables
> > > (https://www.gnu.org/software/make/manual/make.html#Flavors)
> >
> > Cool, thanks for all the info.  With that, I'm happy with this patch.
> >
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> >
> > > CFLAGS_foo.o := $(call cc-option,-fno-stack-protector)
> > > The cc-option is expanded immediately when this line is parsed.
> > > (So, the compiler is invoked for 'make clean' too)
> > >
> > >
> > > CFLAGS_foo.o += $(call cc-option,-fno-stack-protector)
> > > If this is the first assignment in the file,
> > > '+=' act as '=', so the evaluation of cc-option
> > > is delayed until $(CFLAGS_foo.o) is expanded.
> > > (So, the compiler is NOT invoked for 'make clean')
> >
> > Ah, I think that may explain: I've been seeing the occasional warning
> > from $(NM) when running `make clean` for ARCH=arm, I'll bet that's
> > where this is coming from then.  Next time I reproduce it, I'll try to
> > find maybe where we're using `:=` or `=` with `$(NM)`.
> >
> > Maybe arch/arm/boot/compressed/Makefile, KBSS_SZ is evaluated for
> > `make clean`? (If you start an arm build, but kill it before vmlinux
> > is created, then `make clean` I suspect that KBSS_SZ is evaluated?)
>
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 -j71
> $ rm vmlinux
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 -j71 clean
> llvm-nm: error: arch/arm/boot/compressed/../../../../vmlinux: No such
> file or directory.
>
> I suspect I see this from doing an ARCH=arm build, then building a
> different ARCH and killing the build before vmlinux is produced or
> `make clean` for a different ARCH, then run a `make clean` for
> ARCH=arm.
>
> Is the above (regarding lazy evaluation) not true for LDFLAGS_vmlinux?
> I would have thought this would work:
>


I described why this error message is displayed:

https://patchwork.kernel.org/patch/11637129/



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARUekoGnTOdUtAvJNJmtr75o1VGv-qnKqMz0eDkxevL4w%40mail.gmail.com.
