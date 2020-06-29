Return-Path: <clang-built-linux+bncBDYJPJO25UGBBG635H3QKGQE4QZCWHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 325BC20E894
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 00:39:25 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id s1sf13551406pge.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 15:39:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593470364; cv=pass;
        d=google.com; s=arc-20160816;
        b=VvVC3HTakEz0mw4VbImho/miSYC6q+mhmCHrarcJ624477Lla9flzERRB6xSFfSaKc
         X55+VnvDK+JqyTR0G0SwOMaqEXPLLtUstvhgO1Sg6+xL64UUZBZ5GRIt4l4pYbDUQFsz
         Khea2mvHA5q0yzQB1tP5V6bZ/NQJjs7z/OJRVY9flNA2wVcdHhiTBxLFq2SHOLnWdVBD
         /YRHSNzVtyCAsBt/jJPD4CP/wOpcNWc2RVr2FHp7GK+xvQRuzhel0tyubF22HCs8BHWZ
         13B6Qv6L+VJvHcfBSlsioF1RaIvb+ukUDoRzNbmxp4vy5c6Jz+TPyexfdRnAtmIuJ1xg
         rZLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YMFuihueFOE85xpj6ZnbLcmP9oSdR8r8bucAQObVj5o=;
        b=v3zJf4ueEWMiaGSXZ3MLA8wZKsDzmaYPnot4Kf14tpPV/UMgil0OO2fhn95dP1jBun
         bIwG1yhoeAf8Hw7B/JSyaa/p6Lf4pFppyEzNB9avkh5JXYayzbPp3KeDrTxUjmoCFUuK
         81hfjuliXLldwKxU58MzqyozJm5Z/hpIKbRm7IF/gwQblgIX2haXU8axEaX3iDXz6ptI
         fEBuJjI99jyneriy74Xx0IU4gAlX38w5dXvHs2YOl0y4nuqj5XMZAkycZJrnPkKPUXuh
         oRY3rZwYNvV3iDJjBx70vrTK7recVOVK3xeQyRYn7beevbN8NuaM5JhaIUPXtK/32BQF
         RkIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wvv6Dtah;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YMFuihueFOE85xpj6ZnbLcmP9oSdR8r8bucAQObVj5o=;
        b=SfPIxYGVOW0zqQiVc6IopM9gr/8qotoi6m932as7kEQKIBmzo+YG6YW3kCMzeqeLb5
         Jns4WXtRQVdeSmOhuansQryIaGyUlSxBzY+YKsk5XWCdONvHWuvT3tZdo+t9sWde0tot
         Iv5fD7QH0PpxsyGzwZNJkjbNINkSVS3EZEbnaeDMTRYMpHapSEPHwe0wXqSU7yaALvAu
         jNVbCXkk529pmj/INU14mItQU0Tweb+9NcIVKqvSC/4IHrPg+sKyPVSu9l04J1L56CUB
         N9wYbLvVhpN1Dg4T7rq4b5T8yBGqHV1FFJbLE3K98OwVMSwxxUPJtvTEKi8XFHn07IOT
         hKmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YMFuihueFOE85xpj6ZnbLcmP9oSdR8r8bucAQObVj5o=;
        b=JjsyjzvUomrOEPW9d1RBFp4JfORkJXH2g2bZ1M+J/V//poQFNc4oY0YjqMT8NFCI+Q
         gRH9tgPqb9E2X8n9onbx/qHD3e8SXgaZqMgkpyAzg9yRw86kuYX3vs5gnGW/r9+MWHDQ
         U+RAIpekfBmjaYJSMgBLLRe27SuwCnBhEB3ZhQJbabWx+4hE8QfP1MmASkcCZLTw/cZJ
         PFgCdwi5cehQfikkOTjKIXnG4f/bcip0HXyN7QPF6lqZdohEWT3kH7VNw27yGYL5Zbha
         tXhwkmJXyVZ0RblZgVmX/YJj08X8Bi3X5LoX9bwxPZ/hxSF63se0nr+NZ0F3GwkfHKyX
         zNQQ==
X-Gm-Message-State: AOAM530mxiOQz85k35Ko08I7aAhNVZnARlHb5oRcBP/a2Ocntggz59xB
	v5tfaVpgNySJNS/e5ZEmxsg=
X-Google-Smtp-Source: ABdhPJxTUaev8+fsTwyw/qi+y8mND+1WZ2XiPKcduCBrslsxFycFWyuuVE/gGKtYc6Ghquf+wCU0xQ==
X-Received: by 2002:aa7:871a:: with SMTP id b26mr10092988pfo.294.1593470363886;
        Mon, 29 Jun 2020 15:39:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ea0e:: with SMTP id w14ls320429pjy.3.canary-gmail;
 Mon, 29 Jun 2020 15:39:23 -0700 (PDT)
X-Received: by 2002:a17:90b:11d8:: with SMTP id gv24mr1820158pjb.131.1593470363423;
        Mon, 29 Jun 2020 15:39:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593470363; cv=none;
        d=google.com; s=arc-20160816;
        b=jahj1puRF2cKDRy/biQ3Txogsmee1O0PsafTtCwaCLpRFstHOfrdtLOebRwfE/Yerc
         ldVHgmMkwZHE5X7xNxiQWeWB1tRmoTA9S5WQsYYEuvA8OowlgRM7XDlYcDpx3uMwUreL
         hTFu3eX/1WriWQDiwXU7ZSHKfikxFsay531GG2CB2mtCHvNM8LhwceH2jdTlj2AXhk5T
         es6l152ilVi473gARwfdfCUtmhbblpDy+IpJzqd+Y/V40lgaUcnwtkUa4t8ww9c6Z2Uj
         GcIVZMPfvc6kz1ci4pv7A3EKHPEkfTClUQGObX15ML9slm2zQv2yyTc4grRVjg2ubrF9
         MirA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Zapdhd5wOeOGPDdB4uAKBeHEzFOq3zrNgTJZIPqzsqk=;
        b=egakyHuNqbXLcITRceBCBx7lUOs8y3EiXWLFwYzau336Ukb1v4Edc6vyN/rbBC2x7V
         Wo5ZzjiNuW2On5TWOlHZOEZbipu5xP2g0BrOjQ/nnl7pQTWrwswXAeFMYFkUByqXvMiT
         ZFQGhSImYFZEGi3IGkw7tXlFMpxc/1+CPZmpccIT+pseDzkOLWDER4lEzvN4Va/29+pV
         UljTWDpDNm4S4Q81v3txQ+VBzCz8AFJKiGuaKgmXGLKyPH+AMrQCzLgbjPPUxwnHzKCu
         1AZFg44VnB1MYjviM/bGQc3ZnI7ASyKFtrvjSBOlUppkZG43DMlYxbrzbXJg//URGkhn
         5LUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wvv6Dtah;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id d3si1039284pjw.0.2020.06.29.15.39.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 15:39:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id c1so1370821pja.5
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 15:39:23 -0700 (PDT)
X-Received: by 2002:a17:902:7208:: with SMTP id ba8mr15114728plb.179.1593470362777;
 Mon, 29 Jun 2020 15:39:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200626185913.92890-1-masahiroy@kernel.org> <CAKwvOd=V_M43CP7G87K3TqSsxua2NcXPz6BnDt-z6167O2WAzQ@mail.gmail.com>
 <CAK7LNATcwGkSWV7NSgwG_WqzvTPphT9=KK+qvT3FK_7y1UCzTA@mail.gmail.com> <CAKwvOdntZw2k8ZZ7txPC-FD+50cPpMwctGYTW0j2zw+FVj9SgA@mail.gmail.com>
In-Reply-To: <CAKwvOdntZw2k8ZZ7txPC-FD+50cPpMwctGYTW0j2zw+FVj9SgA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Jun 2020 15:39:11 -0700
Message-ID: <CAKwvOd=JbEJNdWzk_xdMiy9QewbU3ESOHcokAXKkARrgm-ibEg@mail.gmail.com>
Subject: Re: [PATCH 1/2] kbuild: remove cc-option test of -fno-stack-protector
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Kees Cook <keescook@chromium.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Wvv6Dtah;       spf=pass
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

On Mon, Jun 29, 2020 at 11:26 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Sat, Jun 27, 2020 at 4:59 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Sat, Jun 27, 2020 at 5:13 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Fri, Jun 26, 2020 at 12:00 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > >
> > > > diff --git a/arch/x86/kernel/cpu/Makefile b/arch/x86/kernel/cpu/Makefile
> > > > index dba6a83bc349..93792b457b81 100644
> > > > --- a/arch/x86/kernel/cpu/Makefile
> > > > +++ b/arch/x86/kernel/cpu/Makefile
> > > > @@ -17,8 +17,7 @@ KCOV_INSTRUMENT_perf_event.o := n
> > > >  KCSAN_SANITIZE_common.o := n
> > > >
> > > >  # Make sure load_percpu_segment has no stackprotector
> > > > -nostackp := $(call cc-option, -fno-stack-protector)
> > > > -CFLAGS_common.o                := $(nostackp)
> > > > +CFLAGS_common.o                := -fno-stack-protector
> > >
> > > Any time I see `:=` assignment to a CFLAGS variable, it's a red flag
> > > for overwriting existing CFLAGS, which is a common source of bugs.  I
> > > recognize the kernel is current a mix and match for:
> > >
> > > CFLAGS_<file>.o
> > >
> > > rules to either use `+=` or `:=`, but I wish we were consistent, and
> > > consistent in our use of `+=`.  For those rules, is there a difference
> > > between the use of `+=` and `:=` like there is for the more general
> > > case of appending to KBUILD_CFLAGS?  If not, it's ok to match the
> > > existing style, but it's curious to me in this patch to see a mixed
> > > use of `+=` and `:=`.
> >
> >
> > I think Kees mostly answered your question.
> >
> > Let me add some comments.
> >
> >
> > '+=' is the most used in kernel Makefiles, but
> > ':=' and '=' are also used.
> >
> > So, you are right, we are inconsistent.
> > This applies to not only CFLAGS_<file>.o, but also obj-y, etc.
> >
> > For example,
> > https://github.com/torvalds/linux/blob/v5.7/arch/arm64/kernel/Makefile#L15
> > 'obj-y :=' works since it is the first assignment to obj-y in that file.
> > 'obj-y +=' also works, of course.
> >
> > We can consistently use '+=' everywhere, but I do not send
> > patches for churn.
> >
> >
> > You can use any assignment operator to CFLAGS_<file>.o
> > if it is the first assignment in the Makefile.
> > Using '+=' is robust for future code insertion/removal, though.
> >
> >
> > If the right-hand side contains variable references,
> > there is important difference in the behavior.
> >
> > You may know two flavors in variables
> > (https://www.gnu.org/software/make/manual/make.html#Flavors)
>
> Cool, thanks for all the info.  With that, I'm happy with this patch.
>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
>
> > CFLAGS_foo.o := $(call cc-option,-fno-stack-protector)
> > The cc-option is expanded immediately when this line is parsed.
> > (So, the compiler is invoked for 'make clean' too)
> >
> >
> > CFLAGS_foo.o += $(call cc-option,-fno-stack-protector)
> > If this is the first assignment in the file,
> > '+=' act as '=', so the evaluation of cc-option
> > is delayed until $(CFLAGS_foo.o) is expanded.
> > (So, the compiler is NOT invoked for 'make clean')
>
> Ah, I think that may explain: I've been seeing the occasional warning
> from $(NM) when running `make clean` for ARCH=arm, I'll bet that's
> where this is coming from then.  Next time I reproduce it, I'll try to
> find maybe where we're using `:=` or `=` with `$(NM)`.
>
> Maybe arch/arm/boot/compressed/Makefile, KBSS_SZ is evaluated for
> `make clean`? (If you start an arm build, but kill it before vmlinux
> is created, then `make clean` I suspect that KBSS_SZ is evaluated?)

$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 -j71
$ rm vmlinux
$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make LLVM=1 -j71 clean
llvm-nm: error: arch/arm/boot/compressed/../../../../vmlinux: No such
file or directory.

I suspect I see this from doing an ARCH=arm build, then building a
different ARCH and killing the build before vmlinux is produced or
`make clean` for a different ARCH, then run a `make clean` for
ARCH=arm.

Is the above (regarding lazy evaluation) not true for LDFLAGS_vmlinux?
I would have thought this would work:

diff --git a/arch/arm/boot/compressed/Makefile
b/arch/arm/boot/compressed/Makefile
index 00602a6fba04..9e7343ccc279 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -113,10 +113,9 @@ ccflags-y := -fpic $(call
cc-option,-mno-single-pic-base,) -fno-builtin \
 asflags-y := -DZIMAGE

 # Supply kernel BSS size to the decompressor via a linker symbol.
-KBSS_SZ = $(shell echo $$(($$($(NM) $(obj)/../../../../vmlinux | \
+LDFLAGS_vmlinux = --defsym _kernel_bss_size=$(shell echo $$(($$($(NM)
$(obj)/../../../../vmlinux | \
                sed -n -e 's/^\([^ ]*\) [AB] __bss_start$$/-0x\1/p' \
-                      -e 's/^\([^ ]*\) [AB] __bss_stop$$/+0x\1/p') )) )
-LDFLAGS_vmlinux = --defsym _kernel_bss_size=$(KBSS_SZ)
+                                        -e 's/^\([^ ]*\) [AB]
__bss_stop$$/+0x\1/p') )) )

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DJbEJNdWzk_xdMiy9QewbU3ESOHcokAXKkARrgm-ibEg%40mail.gmail.com.
