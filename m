Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBMULXD4AKGQECF7FU2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id CF79421FD35
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 21:21:23 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id z26sf13288845qto.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 12:21:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594754482; cv=pass;
        d=google.com; s=arc-20160816;
        b=jC+VSCGnbBEGJcZw/3WLe78epVfYfAk24DH76MpeGFqmROHwMcc6ahMWoFq8yaQ2rc
         AZbO1sq9J6/PNJrp0N0kS1ImOkcUcxkxbHYJPs4cJSTiqI4JMQT9vkrsujhUabdYV8aU
         c67XwjbU1PS6WptshVBe8OkBzIjk1ff5gS+kW5+OXl/08yhluITzRVRt9saJiSTiFpIX
         vG1+APAWaKdxa2Y5gkDdR0Upm8pkOp0qmDPfxqvr6D4bwbpdECRv781ADhZ42+zr9pqG
         MACxeiVpKj557Xj7QQHWrR7zt1ezlJidG8a99M3odnM/yxAsNMSm5fA7ekBhfIA6PQpP
         oFRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=YZeaHH5w1oCBf08MpKCVKvffU9XC6oS+yC42d4+UEGo=;
        b=muM6ukrgcvFO/PYZir5ASYOKU0kXXwKOE+JPvRfzYlcj7aYWfUjJPHux9Uf2n+XG0a
         a/ftRMElM1gBDRYRVOr3cKttZLc7Sq9XnhVHJZfZoZypRGMrzo9o+UTbwAynnxBSbu4f
         B7scFaNXHnBnItuAUULMlQvFKRMvWhOZrb5h6HeE7lEdPDmCuW62G+h/QnvGiiFzyFAn
         6BPH3szFQXeiIcE4t90mBtnm4X31jvbDqFrEoiJ/wXToBEhO9DSrCSNW4UfUiX5CcOS+
         jCY+mzu5tCfzXeEx7ERWxfHNZaLk7RU2EPx64o6cm65AQdTkBBnOfZJuZT/ttm9evC86
         +vSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kirqayn1;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YZeaHH5w1oCBf08MpKCVKvffU9XC6oS+yC42d4+UEGo=;
        b=FKxOCPSUr+J+zhwmKE35d3AlWkAzL731UAFVTWUObSsgvWD/cmQY4/EXK1kX3QLT9J
         8yhWBjgTT8IhWhzk75M7e8wsD1V/t/CtiMpqu8LLp2DNaE+o6TJtCnomgPJn9K5VhLlm
         i4LtTBqrCrGfggk9S6XnMYhBASb5yJ+2ir0+ZbVWFbJ08fJuUA/YPm8oVhgmRk47jiW/
         WL7u6g6FOTiYk8aDomUkFFyJ7OjHxgk95nDLEShtq7+AWKvbOtk6EmNIYJKzXwseo9Gl
         Gt9sGZfmmztWPvD5/6fUNLFAZ6Cu/bmXMyzkqtGL0n7JenhRE11Pj4buup7Ga2d/zu2w
         DICQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YZeaHH5w1oCBf08MpKCVKvffU9XC6oS+yC42d4+UEGo=;
        b=k6R4Kud6saQbGmJadNcXiVSUp+g+XI4TjtMUoxoBGLIclSIDeEEtqKVUKwkd3LyCgA
         9SJKo3P345e/9JMxfToe0hNkzD/lRJSQDhe3GQd5VHR61+0LszhuuugyEXHkWK7SLU8c
         gwiOwYje26FiPHPM+AI8l2QawgyVtk65su72gAH072Jvjik0EGjPZAe0ilVQrnv4O8k8
         eTJKoR3yc+MGMWZ2l4Cwz1sCYYXBbkNGMl8gZzM2DZml4nvDlUN1Qb8uGlURdTPeShxg
         tCkBlB3dn77+gRNW5puS8uTS2CUxUbDtCx3FYLiANAgmiigRm6+ur+VLiPCl1bR1tItA
         OP8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YZeaHH5w1oCBf08MpKCVKvffU9XC6oS+yC42d4+UEGo=;
        b=fKu48OKRUEcW/s26B1ytpIdYeUUsZ50BaS9cJasqQIzzqtwsonUONWWDOFHn6/HSXa
         aqo4xNIkw1klgsCACsXJmUa6KOzGj0xN8LYFzEvME5UfQ97CYOyMyhxtaCrLmS4V+NGP
         WrDviWzYYtTwJm/ES/wyeaaPFh+GZkCw368gVOZcWfvo3/Go90IaRZa5MCy3bqW0+4Vy
         KlqD4VGA19UfNgCESdE9aIDpQp3eYpXYrE6x9jNUGfmx63DU5S4pc1n2vKolAaKE6RqW
         FC797qsTCdxotVCjxx+Yj0sQc2YzH+/frK5H2wFIGd16tVJkvt5vx6LWiQ1gyvAbeI+3
         Q3rA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532VbNIEsv8VFGsxCGb4SbzyokqsobCfOt4mH3Xkg1Zdirj5dY4V
	8Tx9IMpsEJvq7Kf84ZqUw3g=
X-Google-Smtp-Source: ABdhPJz4rDiZzbOuGFqYet07U6O3FfpGiD1eE/Nwxvgo8dtgG4JmPDVQHui2HS9Uqgwjdb83zXHUmA==
X-Received: by 2002:ac8:408c:: with SMTP id p12mr6195625qtl.332.1594754482515;
        Tue, 14 Jul 2020 12:21:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:120e:: with SMTP id u14ls10372694qkj.10.gmail; Tue,
 14 Jul 2020 12:21:22 -0700 (PDT)
X-Received: by 2002:a37:9f10:: with SMTP id i16mr5618003qke.15.1594754482139;
        Tue, 14 Jul 2020 12:21:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594754482; cv=none;
        d=google.com; s=arc-20160816;
        b=QOrhIOh4LeI6NeoSv7/bJFBAki9e6cFwLzj38id78pY0FEBRsLZ3X75eAKA1wCgR4o
         aBjB+pN5Vr71C5GFPbC2O0wcPsQkGZXyNWds+eZ5KfT6d4JIrI8erqFNMOXuxLwr3fdZ
         Wx/rPXsx/TtqbkLXhyn3GUlicoY1QLLbq3J0/p8Cjp91cMTX09jkzvC7Van2yrjnY6S2
         jkhgh73PJwxdqmv7IAaICgOm8VVkFsudEDPRiFxbuX+BjHYigI0CC6314hUtM9Umm9K9
         qjS+lsTR4xTmP7yE/wO4uIrn9m66zYqbzTncF2Fwuls64dcewXISF0/w50XQNoblCG6d
         ec0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6MKTlr7J8Rp2MsMio23TCowkP5+63OkXW2oUskwJZ8w=;
        b=x+X/GEgPd3Y+GJhb/0GTCnJid6/60LQbzNzzDBGLVsI60hhZeFhqyfhq4J6mRInY//
         hVV7uWaWymWoEq7SYFYbgpGG1I/jZFqxOvVT5b0nbXIb5sU+bhz6oWb+AudrppR6Rxlz
         cRx1xJqMgOAevWiuJfRxUF6LNnNjnN5EAI4Vwe1O/WWXkMnIpVy05xZqhO20PjSGXiC6
         rZKhXOU9XyAwPXZQ3KoihjYKz2UCVIkxEzg6aO8rhxS67ChTHP4w/0fCOB96MjJ7NL1S
         MUUqzb1zTxyuKkM6bULTPoOiIQYhUINWDxy4Qpz8ac9oa5Q5W8PHKNZP3VQ2H/5U2qqU
         Zkiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kirqayn1;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id m1si877376qke.4.2020.07.14.12.21.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 12:21:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id y2so18528834ioy.3
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 12:21:22 -0700 (PDT)
X-Received: by 2002:a5e:9309:: with SMTP id k9mr6361130iom.135.1594754481750;
 Tue, 14 Jul 2020 12:21:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200714023836.2310569-1-nivedita@alum.mit.edu> <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
 <20200714141550.GA329060@rani.riverdale.lan> <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
 <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com> <CA+icZUWip6xAFdTiLNWT4QHS0R6bQuCZ6W7dWd+UbbZGnBBh4w@mail.gmail.com>
In-Reply-To: <CA+icZUWip6xAFdTiLNWT4QHS0R6bQuCZ6W7dWd+UbbZGnBBh4w@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 14 Jul 2020 21:21:10 +0200
Message-ID: <CA+icZUUq9Wtut702su0HQ5qALkDvR+cdW7bczdj_mv=p-U3w4g@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] x86/boot: Remove runtime relocations from
 compressed kernel
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kirqayn1;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44
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

On Tue, Jul 14, 2020 at 8:33 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Tue, Jul 14, 2020 at 8:30 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > > I did a full new build...
> > >
> > > ...and it fails with ld.lld-11 as linker:
> > >
> > > ld.lld-11 -m elf_x86_64 -pie  --no-dynamic-linker -r -o
> > > arch/x86/boot/compressed/.tmp_misc.o arch/x86/boot/compressed/misc.o
> > > -T arch/x86/boot/compressed/.tmp_misc.ver; mv -f
> > > arch/x86/boot/compressed/.tmp_misc.o arch/x86/boot/compressed/misc.o;
> > > rm -f arch/x86/boot/compressed/.tmp_misc.ver; fi
> > > *** ld.lld-11: error: -r and -pie may not be used together ***
> > > make[5]: *** [scripts/Makefile.build:281:
> > > arch/x86/boot/compressed/misc.o] Error 1
> > >
> > > It's annoying to fail on the last minutes of a build.
> > > Sorry for being very honest.
> > >
> >
> > I applied this diff...
> >
> > $ git diff arch/x86/boot/compressed/Makefile
> > diff --git a/arch/x86/boot/compressed/Makefile
> > b/arch/x86/boot/compressed/Makefile
> > index 789d5d14d8b0..9ba52a656838 100644
> > --- a/arch/x86/boot/compressed/Makefile
> > +++ b/arch/x86/boot/compressed/Makefile
> > @@ -51,7 +51,10 @@ UBSAN_SANITIZE :=n
> >  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
> >  # Compressed kernel should be built as PIE since it may be loaded at any
> >  # address by the bootloader.
> > +# LLD linker does not allow -r and -pie options to be used together.
> > +ifndef CONFIG_LD_IS_LLD
> >  KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
> > +endif
> >  LDFLAGS_vmlinux := -T
> >
> >  hostprogs      := mkpiggy
> >
> > ...and was able to build, assemble, link arch/x86/boot/compressed/*.
> >
>
> I checked my last succesfull build without your patchset:
>
> $ grep no-dynamic-linker build-log_5.8.0-rc5-1-amd64-llvm11-ias.txt
> [ EMPTY ]
>

I was able to boot on bare metal.

Feel free to add my...

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

...when you restore "old" behaviour when CONFIG_LD_IS_LLD=y (apply or
fold-in my diff with comment)...

...and use one "runtime" in your subject-line:

$ git log --oneline
v5.8-rc5..for-5.8/x86-boot-compressed-remove-runtime-relocations-nivedita-v4
| egrep 'runtime|run-time'
9547f8f08689 x86/boot: Check that there are no runtime relocations
ede02a307b30 x86/boot: Remove runtime relocations from head_{32,64}.S
525a67ac7ea9 x86/boot: Remove run-time relocations from .head.text code

Thanks.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUq9Wtut702su0HQ5qALkDvR%2BcdW7bczdj_mv%3Dp-U3w4g%40mail.gmail.com.
