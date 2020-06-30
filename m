Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBMEE533QKGQEGPUWSZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id F12ED20FB91
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 20:19:29 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id k127sf18981740ybk.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 11:19:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593541169; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZZMG39PFGI+438ZLnuYn/Dol4m/Z5KqR7nZ9eIVbOadoWawHPX1NSdnVvxxxv3/+Vd
         B8TrgaNIg5gBcZBPPoIhBB4tirPI/EV2Phl0wR99Jqsmk0tDJzFUQ5H9STc9iVcofv+e
         Q4AScZBBMyNW+83Kop1l3EVk7ale/kwvRbkmP6/vMlljMikiq3Mnb1+PcOyqjm9o+HPO
         WD+0x6X7PPeGezVI3C/TFXDHhuLcmB07cay+wMXlOErR0XwcxQ3KAGuIQMrtcgYJXhgG
         EORrUiGEYT08IR5X7uu1MHM2KYM5T6GrCN9YXvkSTEhjrhRUh/vxC1Mn6ILZFOxIB1gq
         Zc9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=4XbOL4vwwzIWg1ON6EGABeXABkBaBY6FqF8/RVVNeuA=;
        b=Gda6T+jXs04NPt91DywfIkkMOMCNRmBl8JdlLRP7gpJKA8HFFzk9T3vl3XDNp154XU
         oXAKk3aovVraGZMWcnQblJiy/+JeGpjnTRiD1GA0z06yK+hximcI+IrESi5sukJs2CS5
         p77l4ngEGQCK+kh+k+reFmka8Gbofo+RBu2VEXAK5c+byFGZNSTd9aX9mTmSslswcKIe
         hEfyhVZXvXdEkJNhKLEidjempxLt2LUxz4Jj40xKrFZ9OzkRh48gbTgDRaxtfFRrqmq8
         0u7CKtUh0l0r8necuGSINks+fpZAHOE785+bwi8wK60PVZPGl5IeJyMbvFWefuJ+fq8J
         HUGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=KpDrOoEw;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4XbOL4vwwzIWg1ON6EGABeXABkBaBY6FqF8/RVVNeuA=;
        b=hqjNCSFtXj04cCPRFQg7RKBfMlTCIOJmQYCulUhZamGRrf7+rMx1EGX1nS3wEGJWyO
         0q5AeGTZwKZtj/Swre86wAkyrjnvMmnp+ZOh6UlaPtpdfKB7qajuyzIixZq8nOtpvPy8
         AFruQyQmlbcwad4bVFXB1OggUpnXouBwDGG1/mRTcrLkncG0HwiglSBfBlNm7kKn4TuH
         vLB+a9s3zV3lvWSg9ediUFIbs44oVJs4SlYA92GFlWQ/0OoUYnWAumg3ky/JTrEhuGr5
         92/Q4+ypzkC4FUamBRj/lv8KzRew/orv+vqLoD4m+wHSbyDFv0J0xPVkevfjoqwX00pL
         B08w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4XbOL4vwwzIWg1ON6EGABeXABkBaBY6FqF8/RVVNeuA=;
        b=Mvvd/V6xFfOMyiAd0UCuLJe1XU59zwYw20ZbmYFbs5EnVtng5T6D8BN+8zK7xIIQDC
         kaUtD4YGY/dutusMW7tpawLh1vmVx8lvxHsuPVw5tz8xdrGELJT+PSSEbqKGzmVmLn9r
         rWF8ZT7zEXd5SjFQD635q3Dab0Dev4gY1HijyQWuaULcoaRCa+FEa/VdtkOKkitedtpl
         VpDGNmSZFMj7hrMntv3M51g+M3x5ywVKFCPEWRetv6eXYC5gKZPrXjSTcVNFXm7N+ust
         d+IuOF2+UtB2E+gwNwkA5mqwVBKQbVax1EvcJNvt2oO72OW+A2JYxm1bnZ/VDY1ZCyoM
         vt9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IxPTgIpo2G77Tm68r16baF73lfzioZdYA3aJClW2tBlZuUlZF
	NahQBMGKSrtmQsKgyETEmWA=
X-Google-Smtp-Source: ABdhPJwserl2wbDZPGK5mLPBDajkFKXrVLTOK6hSjYoBbDRlJPxjvV5FI8YR69NOi734kOHsrsMJaQ==
X-Received: by 2002:a25:c342:: with SMTP id t63mr35791627ybf.122.1593541168824;
        Tue, 30 Jun 2020 11:19:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c785:: with SMTP id w127ls1528717ybe.7.gmail; Tue, 30
 Jun 2020 11:19:27 -0700 (PDT)
X-Received: by 2002:a05:6902:514:: with SMTP id x20mr37531706ybs.160.1593541167163;
        Tue, 30 Jun 2020 11:19:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593541167; cv=none;
        d=google.com; s=arc-20160816;
        b=YXDmTJDay+VqwDQPUGS+UO8E3WfXiRNDBGGTNshHvoiA9LUjNebWaY46PwunOfRxuR
         qE3hF7VgI4Ytz5MxTzHpQO2eRqOmr9z90Q8VaFsqwSTqUxVgZW2HXzCvNKiiiC3p83Wn
         Sgc7rxyJYuqK+NPNxbachrOcBRiSkIfHB9gA9j51y3yNNCfe32LKnQ7ZSDIF4b0TwYA5
         jkmXKzJqC0deKiaC6Sd61+kGR9NObOQePTDf0LX/cZYfqrmns/deIWQNXNt+O91QOYar
         0KfHxTYqjKIcDM9LG2hkwHHsGfIwzeoPmZGLoL2NVnk8iC0kx6H08pKFNgRa85+YZYz5
         IkzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=nuIrJNssJvUSsVaRNApdroyqPo/OAvlKGRbXB/qKIrg=;
        b=yZdQei846knn4Izy9c7bj1w2FH6n8r4nOUmYeiJh+KLeouOtFDb2/xli8Eu4cl7ODB
         +usS2xXuhBY3bGZw35lmEwJXwHZsGNefDxVC53+GUJPW+crTB32rTDLl3FwRIbE+Cuzx
         ZrzSjuoMYgB6BiYswftVVwQPPEeoUzluTHz2puvEZrkU2KvEC6WMWSf3W+B96dgkC4nv
         LhA4IY/BhSKtmdWBBwI1KCr+7IMu+GzMx1B+ccZYPHGj90KNKZ/kOqp0TWBz8PkQbsLi
         jv20XaQQpnnivG6uBAKiK7b3T+HAd4SeZdF5Dqrrxt4WOMXX+Nq0dQxP0Td+I+gG1fkg
         +edA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=KpDrOoEw;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id v16si195052ybe.2.2020.06.30.11.19.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 11:19:27 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 05UIJBLJ000566
	for <clang-built-linux@googlegroups.com>; Wed, 1 Jul 2020 03:19:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 05UIJBLJ000566
X-Nifty-SrcIP: [209.85.217.43]
Received: by mail-vs1-f43.google.com with SMTP id r5so11718980vso.11
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 11:19:12 -0700 (PDT)
X-Received: by 2002:a67:694d:: with SMTP id e74mr16669112vsc.155.1593541150808;
 Tue, 30 Jun 2020 11:19:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200626185913.92890-1-masahiroy@kernel.org> <CAKwvOd=V_M43CP7G87K3TqSsxua2NcXPz6BnDt-z6167O2WAzQ@mail.gmail.com>
 <CAK7LNATcwGkSWV7NSgwG_WqzvTPphT9=KK+qvT3FK_7y1UCzTA@mail.gmail.com>
 <CAKwvOdntZw2k8ZZ7txPC-FD+50cPpMwctGYTW0j2zw+FVj9SgA@mail.gmail.com> <CAKwvOd=JbEJNdWzk_xdMiy9QewbU3ESOHcokAXKkARrgm-ibEg@mail.gmail.com>
In-Reply-To: <CAKwvOd=JbEJNdWzk_xdMiy9QewbU3ESOHcokAXKkARrgm-ibEg@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 1 Jul 2020 03:18:33 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQhGVm9ZBYOSosPx3DZvY020LTy+MZr3LUbvDaa0j19RQ@mail.gmail.com>
Message-ID: <CAK7LNAQhGVm9ZBYOSosPx3DZvY020LTy+MZr3LUbvDaa0j19RQ@mail.gmail.com>
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
 header.i=@nifty.com header.s=dec2015msa header.b=KpDrOoEw;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

yeah, I had noticed this noise, but
I did not get around to digging into it.


> I suspect I see this from doing an ARCH=arm build, then building a
> different ARCH and killing the build before vmlinux is produced or
> `make clean` for a different ARCH, then run a `make clean` for
> ARCH=arm.
>
> Is the above (regarding lazy evaluation) not true for LDFLAGS_vmlinux?
> I would have thought this would work:


No, this does not work.

LDFLAGS_vmlinux is assigned by '=',
so it already has the lazy expansion flavor.


Unexporting LDFLAGS_vmlinux will fix it.
(I may write a better patch, though)



diff --git a/arch/arm/boot/compressed/Makefile
b/arch/arm/boot/compressed/Makefile
index 00602a6fba04..fab54b1c39aa 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -131,6 +131,8 @@ LDFLAGS_vmlinux += -X
 # Next argument is a linker script
 LDFLAGS_vmlinux += -T

+unexport LDFLAGS_vmlinux
+
 # For __aeabi_uidivmod
 lib1funcs = $(obj)/lib1funcs.o




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQhGVm9ZBYOSosPx3DZvY020LTy%2BMZr3LUbvDaa0j19RQ%40mail.gmail.com.
