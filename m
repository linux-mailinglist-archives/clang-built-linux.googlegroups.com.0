Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBU54ST6AKGQE4L5T2KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8D328C788
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 05:26:13 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id y70sf11814606iof.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 20:26:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602559572; cv=pass;
        d=google.com; s=arc-20160816;
        b=dQc+dNwXfKt4rANi8K6ggvV1MVyqoMt8FBNyYAcQPcheAjles8d0ERCCNnRjVj9Zjt
         giWKBKrSUc9gxA+aHTYeSsui/n5/+ogDZVUurbvJAYjzFmYCZdlrbLSTIXt9n9Bc8ZO6
         3nN0LWy1wWGV37CxVvEb7J/8kVUFd/pZdFzyuYdhCtt/r0SJRG9b+R8CdLO/qkqIT38Z
         kwCvOBLhprxf3fXHw9C0tOgga6cSEHycHNl3mmUfDm6enMA2Yo3WEdejkBjBz4Wr3FIt
         m4tYbnGF/qih1wZvXqqlsHgmxP5nCuy/ET53tHiiThjjD7SZmq892lUjd0M1xXgNZ2kF
         oexg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=R9QqqnknDzjZAnjv3rl18/iXW29hGwNGYlUOTOmsAZE=;
        b=A4JF8CvuQGvGCb7bkUcRhX0fDkLoOBaCJ2TeYl4GzZyp7tm3KeHPnFNcQG3UFSuHGp
         iF40IWkvNdaGMQTSfNAPQEB6n4DtofYpueEh+rcw36mnmmsAFs3gTnw6a5qtV2YWn9Gf
         DVlkOaGIyakO2HrRohu8i30U/tEkYVEbiXYRAfglN4juzFTKf94iS0h9oidjQeiGKBUo
         eYLK4ZQgNqFU8lON5G9mOTzgyCzMapu2Uzv0T4C6CX0E9xJYDQtxq71BBz2B6rMgV4OQ
         3sBk1N02QrNU5pdG5xXzLoz0sWy5UIyshqHIQftLP0Wk0Do9qKa8MS2JZ4cDGh1DF2fN
         5fag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M9aQAyTH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R9QqqnknDzjZAnjv3rl18/iXW29hGwNGYlUOTOmsAZE=;
        b=K+sakPn8GJak/8PNJoUNugcvH93lDh6YKayENVqPB3cHqbMEieNwFNX+JgRUJgPU7L
         a1WShptst1nPgxK+/9q3hBpgnScX/sKiiXodLmA2YTVXKvbiS5qvOLyBFsaik6+NkKP0
         rVXpaxordHryyOiJrDABFxbZcknIBpw3a2gZ7Mzdr2BpoTVr33zrpWuQbqAXYnNHiOoL
         vYvW03hhlG1t+7ZBR9qDoEmP6z8v00dRlkE+xnaYa7xnsuBQ0ouqgoCCsxFIzrPfGhwC
         SlPPR7LFz7mGPvoW31uvWbxVxnKoQd2JvfptPMv5skz465PeOPEQeui2+MAM3g6zznaO
         Pl4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R9QqqnknDzjZAnjv3rl18/iXW29hGwNGYlUOTOmsAZE=;
        b=jqjQJqlmILulSOZjTdcnc0RsNraOMPsFkuZmgVR87qhV+g6p868kBrZIJ82si6bZSw
         tZPiQHw0TFOj1hnOnxF8UYVKW5YlfYO0LmWJeOcSsT0UJH1miv94JMzwbcXHm+XTn9Si
         AjBbwRujCnUm+qs3zedMGV9GYbP8HskdDXC0R75nG1rheROWzRsdgQkfVYxADrC9jek3
         N57nw6TZC5qx7/N3A3yPY57n03rynhcyEQmZcMnhwG4wLtx18X50+YAVyj9okDC55L2P
         ZBfoiZxi8cKXG7R7RXYWBHDlK9xkJaDp0ohQxe77XaeURCmr+eMUUl07WOzmnbLyHEW0
         68pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R9QqqnknDzjZAnjv3rl18/iXW29hGwNGYlUOTOmsAZE=;
        b=UKaOjjCW7Sdk8ARWM6c48doSFqK12hEFExs4Qem1MTG6IA9vz/Fyuy4/r9+dfISR+k
         yqKOyDXGLKGr9biB2Oe1smAjFQg+0vuY3OeVNsOW1t8OLCMi7xO8FvCc9EPd3xfJOaVG
         IKKj+ZPbak6jxBL/oSQC9hP+HgVLbxk+idAbtNWWnNSPe7elx/b6kh2xBijkbf1gtO7A
         QGU4YAoFDj7niaycdnoBYIOb/WiUezOLbBAJa/m5zTCqK+AHI+7qd4Qt7HGUiF+7FnT0
         Q18DSylrcTroCmADU7gxrWO75GZmLhMZXz6PmvYpwAHH8wESDWYQQqw/FENeraaYaQHh
         UOCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BDDKi5yutHi5GQZQkUuCv1pdo2Y40r3QplcW1QJYBmB9u3ePD
	JP+Pxpk+JYuhkW3EcwkBxbk=
X-Google-Smtp-Source: ABdhPJw8okkj2cUL1HDxsFAPLE480zaefHQYXHhDQj7IgrhqXeZcAxk9HK0fSgrnweB4g8q14245Bg==
X-Received: by 2002:a92:cc51:: with SMTP id t17mr1461228ilq.67.1602559571970;
        Mon, 12 Oct 2020 20:26:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c111:: with SMTP id p17ls4200888ile.3.gmail; Mon, 12 Oct
 2020 20:26:11 -0700 (PDT)
X-Received: by 2002:a92:3f0d:: with SMTP id m13mr1591244ila.31.1602559571550;
        Mon, 12 Oct 2020 20:26:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602559571; cv=none;
        d=google.com; s=arc-20160816;
        b=vWZn9KMeFEhVzF00zoUOaVrq6Sbe6VjbYRcQ94X7/wECOhD8HsDxCN0hfY0oaLyGYP
         8/8I1YZH3qsX7VF6N9zunDi6Ihj1UfkwJMTO110O303YR6Ea7VkXgxRUjPwWW61pY141
         AIJc+jtUFoo/Kh4Wbos8esSAslz8b6+1+s7j69IVZLtGrtPmD0+oM64i5MTNtU+yfuu3
         JfDkbv+Yav73CEUGFkbzcQyqpjFzh/tI9/ro2DRh3QD4OyK5lRgIo1VElbp5H6+lPOQA
         6dQHbMrATcQyq4RXe0bVJHrrPOvvjSRJum62I+8JxzMapXBE13BrC6iLq6Ql1R/Bz9l4
         9O5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=hbtKnEJhUFXSLqEQaTLTu991fw6+yx1srZoUsdDGH+w=;
        b=PhhVxBmjGaAJMlU2IMvFGgjLiSE3I/lO3YWP/+G/UHrfdukmaV2L0iFQSWjn2piyhc
         rm0o5q9dAAt/ax07btDJcJTgVsc/jtVpmxDJRuB/Z7X6W/VoD7Wi4Jw+ykDgqKQatBrD
         3dJ93Im01FT5hVURM8j3haAsTR9muVyoKVinxMDL1U6zdNJZEvDKAQngout3OysNCF6S
         1J9s+q/vihiBcm/JpDsSwq4dJrm/ExzrdDeXwP6lGJ8OF3tp0xzhvpE6ySn2IdVohxFo
         kHGmbEnfrBt6TcOUZ7DumLQnImu0ekqguLY1TZkKVa350ru8fCmfpy347GV/EUqOzkaY
         jNTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M9aQAyTH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id i8si722113ioo.0.2020.10.12.20.26.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 20:26:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id f19so15759832pfj.11
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 20:26:11 -0700 (PDT)
X-Received: by 2002:a63:1f03:: with SMTP id f3mr14932167pgf.381.1602559570801;
        Mon, 12 Oct 2020 20:26:10 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45e1:2200::1])
        by smtp.gmail.com with ESMTPSA id s4sm20242196pfu.107.2020.10.12.20.26.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2020 20:26:09 -0700 (PDT)
Date: Mon, 12 Oct 2020 20:26:07 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ingo Molnar <mingo@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] arm/build: Always handle .ARM.exidx and .ARM.extab
 sections
Message-ID: <20201013032607.GA2091780@ubuntu-m3-large-x86>
References: <20200928224854.3224862-1-natechancellor@gmail.com>
 <CAKwvOd=+98r6F4JjrPEoWX88WQ=B-KMRP2eWojabLk6it3i5KA@mail.gmail.com>
 <CAFP8O3J_Yn8SVD8RR=P5qv=NjdLT0s6JQQM8gWFU-2n0=b1uZg@mail.gmail.com>
 <202010121426.A5FA5E59@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <202010121426.A5FA5E59@keescook>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=M9aQAyTH;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Oct 12, 2020 at 02:26:52PM -0700, Kees Cook wrote:
> On Mon, Oct 12, 2020 at 02:22:03PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng wr=
ote:
> > On Mon, Oct 12, 2020 at 2:11 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > On Mon, Sep 28, 2020 at 3:49 PM Nathan Chancellor
> > > <natechancellor@gmail.com> wrote:
> > > >
> > > > After turning on warnings for orphan section placement, enabling
> > > > CONFIG_UNWINDER_FRAME_POINTER instead of CONFIG_UNWINDER_ARM causes
> > > > thousands of warnings when clang + ld.lld are used:
> > > >
> > > > $ scripts/config --file arch/arm/configs/multi_v7_defconfig \
> > > >                  -d CONFIG_UNWINDER_ARM \
> > > >                  -e CONFIG_UNWINDER_FRAME_POINTER
> > > > $ make -skj"$(nproc)" ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi-=
 LLVM=3D1 defconfig zImage
> > > > ld.lld: warning: init/built-in.a(main.o):(.ARM.extab) is being plac=
ed in '.ARM.extab'
> > > > ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.init.text) is =
being placed in '.ARM.extab.init.text'
> > > > ld.lld: warning: init/built-in.a(main.o):(.ARM.extab.ref.text) is b=
eing placed in '.ARM.extab.ref.text'
> > > > ld.lld: warning: init/built-in.a(do_mounts.o):(.ARM.extab.init.text=
) is being placed in '.ARM.extab.init.text'
> > > > ld.lld: warning: init/built-in.a(do_mounts.o):(.ARM.extab) is being=
 placed in '.ARM.extab'
> > > > ld.lld: warning: init/built-in.a(do_mounts_rd.o):(.ARM.extab.init.t=
ext) is being placed in '.ARM.extab.init.text'
> > > > ld.lld: warning: init/built-in.a(do_mounts_rd.o):(.ARM.extab) is be=
ing placed in '.ARM.extab'
> > > > ld.lld: warning: init/built-in.a(do_mounts_initrd.o):(.ARM.extab.in=
it.text) is being placed in '.ARM.extab.init.text'
> > > > ld.lld: warning: init/built-in.a(initramfs.o):(.ARM.extab.init.text=
) is being placed in '.ARM.extab.init.text'
> > > > ld.lld: warning: init/built-in.a(initramfs.o):(.ARM.extab) is being=
 placed in '.ARM.extab'
> > > > ld.lld: warning: init/built-in.a(calibrate.o):(.ARM.extab.init.text=
) is being placed in '.ARM.extab.init.text'
> > > > ld.lld: warning: init/built-in.a(calibrate.o):(.ARM.extab) is being=
 placed in '.ARM.extab'
> > > >
> > > > These sections are handled by the ARM_UNWIND_SECTIONS define, which=
 is
> > > > only added to the list of sections when CONFIG_ARM_UNWIND is set.
> > > > CONFIG_ARM_UNWIND is a hidden symbol that is only selected when
> > > > CONFIG_UNWINDER_ARM is set so CONFIG_UNWINDER_FRAME_POINTER never
> > > > handles these sections. According to the help text of
> > > > CONFIG_UNWINDER_ARM, these sections should be discarded so that the
> > > > kernel image size is not affected.
> > >
> > > My apologies for taking so long to review this.
> > >
> > > I have a suspicion that these come from forcing on configs that
> > > Kconfig/menuconfig would block, and aren't clang or lld specific, yet
> > > are exposed by the new linker warnings for orphan section placement
> > > (good).  That said, we definitely have OEMs in Android land that stil=
l
> > > prefer the older unwinder.
> > >
> > > From https://developer.arm.com/documentation/ihi0038/b/ (click
> > > download in top left), section 4.4.1 "Sections" has a note:
> > >
> > > ```
> > > Tables are not required for ABI compliance at the C/Assembler level
> > > but are required for C++.
> > > ```
> > >
> > > Review-by: Nick Desaulniers <ndesaulniers@google.com>
> > > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > >
> > > Please submit to:
> > > https://www.arm.linux.org.uk/developer/patches/add.php

This should go through the tip tree (hence sending it straight to Ingo)
since the patch that this fixes was there. I guess it does not
necessarily matter now that the breakage is in mainline but basing a
set of patches on a non -rc tag is a little taboo I thought so not sure
it is appropriate to go through Russell for now. It is up to the
maintainers though, I will submit it wherever it needs to go.

> > > >
> > > > Fixes: 5a17850e251a ("arm/build: Warn on orphan section placement")
> > > > Link: https://github.com/ClangBuiltLinux/linux/issues/1152
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > > > ---
> > > >  arch/arm/kernel/vmlinux.lds.S | 4 ++++
> > > >  1 file changed, 4 insertions(+)
> > > >
> > > > diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinu=
x.lds.S
> > > > index 5f4922e858d0..a2c0d96b0580 100644
> > > > --- a/arch/arm/kernel/vmlinux.lds.S
> > > > +++ b/arch/arm/kernel/vmlinux.lds.S
> > > > @@ -40,6 +40,10 @@ SECTIONS
> > > >                 ARM_DISCARD
> > > >  #ifndef CONFIG_SMP_ON_UP
> > > >                 *(.alt.smp.init)
> > > > +#endif
> > > > +#ifndef CONFIG_ARM_UNWIND
> > > > +               *(.ARM.exidx*)
> > >
> > > I don't think we need the wildcard, as without this line, I see:
> > >
> > > ld.lld: warning: <internal>:(.ARM.exidx) is being placed in '.ARM.exi=
dx'
> >=20
> > We may need the wildcard if there are -ffunction-sections builds.
> > In clang, .ARM.exidx* cannot be removed even with -fno-unwind-tables
> > -fno-exceptions.
>=20
> Does it need to be:
>=20
> 	*(.ARM.exidx) *(.ARM.exidx.*)
> 	*(.ARM.extab) *(.ARM.extab.*)
>=20
> ?

I tested the patch and saw no warnings with what I sent. I can change it
to that if it is more proper though!

> >=20
> > > though I do see binutils linker scripts use precisely what you have.
> > > So I guess that's fine.
> > >
> > > I guess we can't reuse `ARM_UNWIND_SECTIONS` since the ALIGN and
> > > linker-script-defined-symbols would be weird in a DISCARD clause?
> > >
> > >
> > > > +               *(.ARM.extab*)
> > > >  #endif
> > > >         }
> > > >
> > > >
> > > > base-commit: 6e0bf0e0e55000742a53c5f3b58f8669e0091a11
> > > > --
> > >
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
> > >
> > > --
> > > You received this message because you are subscribed to the Google Gr=
oups "Clang Built Linux" group.
> > > To unsubscribe from this group and stop receiving emails from it, sen=
d an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/=
msgid/clang-built-linux/CAKwvOd%3D%2B98r6F4JjrPEoWX88WQ%3DB-KMRP2eWojabLk6i=
t3i5KA%40mail.gmail.com.
> >=20
> >=20
> >=20
> > --=20
> > =E5=AE=8B=E6=96=B9=E7=9D=BF
>=20
> --=20
> Kees Cook

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201013032607.GA2091780%40ubuntu-m3-large-x86.
