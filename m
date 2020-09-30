Return-Path: <clang-built-linux+bncBDY3NC743AGBBCM22T5QKGQEQ7XPBUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6E027F58F
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 00:56:10 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id 196sf1893767qkn.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 15:56:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601506569; cv=pass;
        d=google.com; s=arc-20160816;
        b=CULNwQX+cXBfV3HhfFdJjKD0H8Bus9JjxW7k9T2rWVKTSAWLqMs9pRZ2RL1sK1gPSU
         pew6gqthf8peRbRHg02Vs5Uc1PIExalES93cI3Xdv6FEeTMdogv1wlpcI5Rv2JaWrCGs
         e5YOVhv4azHHSSUHni6amnRYj+vSKc9BZe3pX2FY+V3ah7A/GS8Aq+45HwL3GpNGP97E
         O/fg5rgbEPziQCcn/qrcMHvYLOntvBLfTBYqQ1MsNbBNOKNt2+N9grGlOFqx2tOZQE/7
         IKeoWBUjilXRCJckMru2+2mxQAVA41PxGMIneSXLGaMSFzfUwrN29fI0ByCkoBOidRXY
         evSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=Ty0BQnnB/Hdp8jEojMs1KkM6g0LA+5WqyWLzeOr7ciE=;
        b=pLQadgSHgIzO9k9R/fUfp25J1Yy/1/WHuhiRANfOeX+59JtPs0YNzCs4+fekGfXj7O
         H04BbFkiPzpVChrwJGyF9TGMC0LlFrRpvfh1ECRqmjOrzW21wAAIRrWAs6PrEQNamSWi
         /+8U1XGCqp+5/lryKSJAE7ERzlVmXqAJRl3gMcBZ9unxsDbrEV1Itup7E5oldvWxJzu9
         Q2jje8oComeVKin2/oz2GNccnxoTlmND5dTsg7sL/MeRW576GajVJxaM2IfvgsI7cgq1
         uE04tbFPk+49SiVRGugY37rt59GnGlZXgFQA6HBh0hDU4JlY6jmM2d3rFfVwk5gr7wM0
         NBeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.222 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ty0BQnnB/Hdp8jEojMs1KkM6g0LA+5WqyWLzeOr7ciE=;
        b=csrKozAu90HKoWL4h8VpQGzPHgORcH4HYYtfnTCZUO+6zJIHnvUYHU6uaZSkW/Tdsm
         t5DyjemE7JuDquBvR0+6mDgzdN1N8B2IjpqxIeAL6Mb1iRM2sivOZpFUc1eitvxx9Vpy
         E3WZhXV5r7oLcT9BU1yC8dLtgQfWcZPrx0rBsr1Y83vHCNeoovz2eqod8omRzczN0weQ
         Hnnm4YzhROrH4QUzdngxAL82qpNOHPBInKhWP1VT+JR3o+EIb15Iz4GKr/b5hWqfk/gR
         LC/EAf/ZzUc8Xy6Y9rXmKvMrnAurUE7OvSR/4qFMNwuBWewieYljTBTNd6FxFvv1lAgD
         FWrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ty0BQnnB/Hdp8jEojMs1KkM6g0LA+5WqyWLzeOr7ciE=;
        b=W1ReYpPSItfCwX3O1jtLqhI5P5oeN0Y4lVaZM8WDuXKNNAUTgDZM7AT2/i+ASXswOj
         8qbs2kz+3eXfRM+JYRl/Y+tIRRnwauWEwNgO18gu4+uk2dAL9KgNGN2DWClQQN/DQp0w
         BsCV3J0tP9xN325dKXpssAVhnWCgcMOUxp3HrS7hurXa3veMOOHgKErPRNAh4XFzCkAa
         smbrYqdxlbRM8qTl0q+4YldLM4iACUXgBkzsU2lBLDrm1waOdEMgm96tF/rhdgSuPpPU
         PBQpw+khglcPPjwM9ulrXlOQyV2pwJyRCcdEG/JXb4FAWwCtYXcUjA6Fdpotc/+Ywqz6
         iTWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533GvqDYid2GPB0+SHfFaDJmJ1ZOgnCGkMEAYXeIhg7zgGzt5nt0
	grhNqqkTqWQ1gqXSOvm4h3g=
X-Google-Smtp-Source: ABdhPJxanfhZxh5b7590+KZy1RXghr8nZDYmCNe9HjC8q5SkcIRDp0PFEs4XC7N+pdFcG8pTG3SJ3A==
X-Received: by 2002:a05:620a:650:: with SMTP id a16mr5033750qka.52.1601506569589;
        Wed, 30 Sep 2020 15:56:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b752:: with SMTP id q18ls823781qve.6.gmail; Wed, 30 Sep
 2020 15:56:09 -0700 (PDT)
X-Received: by 2002:a0c:b39a:: with SMTP id t26mr4984287qve.19.1601506569084;
        Wed, 30 Sep 2020 15:56:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601506569; cv=none;
        d=google.com; s=arc-20160816;
        b=wW8EA+ao9qmp9LUuPfv3tbYpy5zjtMeVx2po9GSlRExjjb/3AuECkGO0mmYvAKzwpD
         QJ7xvMeCs4170zmGI/sMSPFDlh9xL8eC7A3XQjIQHCQKmPQCM9b0NVBbyDhzaobU/Maz
         dtZYUzXwiG84FXSrJ5WkHnV/lzzDCejLVBMAB6wjrawA+FWPbj9GK3DIeyvFWEt/dPMZ
         WGVGz739fk+p/e84ZtDQ3k+/gUs8yGZDTca8Xq7yZNy1TTnp+08hc3mFeK/qdvHJXzte
         qbX5zjpXUG7rPxS6e53t/dHbgS3+lmWLbwCx2Z7vdXkTW9QEw6nhGMef216BjmdebTDw
         I++A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=OQ6AdHZYZ3NKOxbG2FAhdKVEaDK4jTiPpkfiXBE+BWM=;
        b=bvHbBM1BUip20OAyOYnjhxkxTRqZEesoYCYbMhzDlLl2Tq27BQAla2NXt+pIbapo8E
         HzjinByjiQlPR4lV8BbRSwRrrrAIiSC/i0q3QnmlWagai2yUOHvAaP+ubGhr2AqijzOD
         oZQuJcSHQLSFCXJJY/GNugoQZUXHe6cicbwBxBEw9IRQyJAWCHxgDv0K113jvC3DXl1l
         r1iUP72IVRQQlQ9XU2HlW1CZ8vhYuX0CKj7SlxObaIqosv0OGzRI1dIZVyua9Nq2JEa0
         EqhVK9RJnEhdmTzqdh/kfDtDhH86UsPgobB+TCeG6kPnyyPDiNIhdOsEIviFkeMtlgiX
         +jeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.222 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0222.hostedemail.com. [216.40.44.222])
        by gmr-mx.google.com with ESMTPS id a2si196980qkl.4.2020.09.30.15.56.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 15:56:09 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.222 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.222;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 45BDB181D330D;
	Wed, 30 Sep 2020 22:56:08 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:2:41:152:355:379:599:800:857:960:967:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1593:1594:1605:1730:1747:1777:1792:1801:1981:2194:2198:2199:2200:2393:2525:2553:2560:2563:2682:2685:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4049:4119:4321:4384:4605:5007:6119:6120:6742:7875:7903:9010:9025:9108:9121:10004:10394:10848:11026:11232:11473:11658:11914:12043:12296:12297:12438:12555:12740:12895:12986:13255:13894:14659:21080:21433:21451:21627:21740:21773:21789:21811:21939:30025:30054:30070:30089:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: home48_220463127196
X-Filterd-Recvd-Size: 8288
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf14.hostedemail.com (Postfix) with ESMTPA;
	Wed, 30 Sep 2020 22:56:06 +0000 (UTC)
Message-ID: <46040e2776a4848add06126ce1cb8f846709294f.camel@perches.com>
Subject: Re: [RFC PATCH next-20200930] treewide: Convert macro and uses of
 __section(foo) to __section("foo")
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, "Paul E . McKenney"
 <paulmck@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, Mathieu
 Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan
 <jiangshanlai@gmail.com>,  Josh Triplett <josh@joshtriplett.org>, Kees Cook
 <keescook@chromium.org>, LKML <linux-kernel@vger.kernel.org>, 
 rcu@vger.kernel.org, Clang-Built-Linux ML
 <clang-built-linux@googlegroups.com>,  Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>
Date: Wed, 30 Sep 2020 15:56:05 -0700
In-Reply-To: <aefe941251d5d58062d06099afb58dea1d1d4e17.camel@perches.com>
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
	 <20200929192549.501516-1-ndesaulniers@google.com>
	 <CA+icZUVgfnVQ1=zjUGhGKnJAs9g3Q06sWN3ffNdrfZMZLCEkbA@mail.gmail.com>
	 <133589afbe999347454dfcc46ae782897bf9e3a2.camel@perches.com>
	 <46f69161e60b802488ba8c8f3f8bbf922aa3b49b.camel@perches.com>
	 <CAKwvOdkhyvTpY6pHT+CLSsBFuKRWsXucjbwN_tyJAsryZXvG1A@mail.gmail.com>
	 <417ffa3fd3fba5d4a481db6a0b0c9b48cbbb17c4.camel@perches.com>
	 <CAKwvOd=P+j0RaQfHsXPfB0EL3oRgAu8Q0+spUOn_v-p2+3=3pw@mail.gmail.com>
	 <aefe941251d5d58062d06099afb58dea1d1d4e17.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.222 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Wed, 2020-09-30 at 15:25 -0700, Joe Perches wrote:
> On Wed, 2020-09-30 at 15:20 -0700, Nick Desaulniers wrote:
> > On Wed, Sep 30, 2020 at 3:06 PM Joe Perches <joe@perches.com> wrote:
> > > On Wed, 2020-09-30 at 14:40 -0700, Nick Desaulniers wrote:
> > > > On Wed, Sep 30, 2020 at 12:16 PM Joe Perches <joe@perches.com> wrot=
e:
> > > > > Use a more generic form for __section that requires quotes to avo=
id
> > > > > complications with clang and gcc differences.
> > > > >=20
> > > > > Remove the quote operator # from compiler_attributes.h __section =
macro.
> > > > >=20
> > > > > Convert all unquoted __section(foo) uses to quoted __section("foo=
").
> > > > > Also convert __attribute__((section("foo"))) uses to __section("f=
oo")
> > > > > even if the __attribute__ has multiple list entry forms.
> > > > >=20
> > > > > Signed-off-by: Joe Perches <joe@perches.com>
> > > > > ---
> > > > >=20
> > > > > This is the current output from the script against next-20200930
> > > > > attached in this link:
> > > > >=20
> > > > > https://lore.kernel.org/lkml/0e582a7f5144a33f465978d97701f9b3dcc3=
77f3.camel@perches.com/
> > > > >=20
> > > > > It might be useful to run the script immediately before
> > > > > the next -rc1.
> > > >=20
> > > > $ ARCH=3Dpowerpc CROSS_COMPILE=3Dpowerpc64le-linux-gnu- make CC=3Dc=
lang -j71
> > > > powernv_defconfig
> > > > $ ARCH=3Dpowerpc CROSS_COMPILE=3Dpowerpc64le-linux-gnu- make CC=3Dc=
lang -j71
> > > > ...
> > > > arch/powerpc/boot/main.c:193:44: error: expected ';' after top leve=
l declarator
> > > > static char cmdline[BOOT_COMMAND_LINE_SIZE]
> > >=20
> > > The script does not convert files in
> > >=20
> > >         scripts/
> > >         tools/
> > >         uapi/
> > >         and include/linux/compiler_attributes.h
> > >=20
> > > It otherwise assumes that any __attribute__((__section__
> > > use should be converted to __section.
> > >=20
> > > If this ppc file is the only file outside of the
> > > listed exclusions, I can either exclude it directly
> > > or add compiler.h to it.
> > >=20
> > > You have a preference?
> >=20
> > If compiler_types.h which includes compiler_attributes.h is being
> > implicitly including by Kbuild add `-include` flags to most
> > translation units in the kernel, it would be nice to be able to use it
> > everywhere.  I consider open coded __attribute__'s a portability bug.
> > So including the header in arch/powerpc/boot/*.c would be my
> > preference.
> >=20
> > > Perhaps these are also possible files that need exclusions:
> > >=20
> > > ./arch/x86/boot/video.h:#define __videocard struct card_info __sectio=
n(".videocards") __attribute__((used))
> > > ./arch/x86/boot/compressed/pgtable_64.c:unsigned long *trampoline_32b=
it __section(".data");
> > > ./arch/x86/boot/tty.c:static void __section(".inittext") serial_putch=
ar(int ch)
> > > ./arch/x86/boot/tty.c:static void __section(".inittext") bios_putchar=
(int ch)
> > > ./arch/x86/boot/tty.c:void __section(".inittext") putchar(int ch)
> > > ./arch/x86/boot/tty.c:void __section(".inittext") puts(const char *st=
r)
> > > ./arch/s390/boot/startup.c:static struct diag210 _diag210_tmp_dma __s=
ection(".dma.data");
> > > ./arch/powerpc/boot/main.c:     __section("__builtin_cmdline");
> > > ./arch/powerpc/boot/ps3.c:      __section("__builtin_cmdline");
> > >=20
> > >=20
>=20
> no ppc cross compiler here, so can't test but maybe:
> ---
>  arch/powerpc/boot/main.c | 2 ++
>  arch/powerpc/boot/ps3.c  | 2 ++
>  2 files changed, 4 insertions(+)
>=20
> diff --git a/arch/powerpc/boot/main.c b/arch/powerpc/boot/main.c
> index 6a5b937a7f5c..ce6e27798f79 100644
> --- a/arch/powerpc/boot/main.c
> +++ b/arch/powerpc/boot/main.c
> @@ -6,6 +6,8 @@
>   */
>  #include <stdarg.h>
>  #include <stddef.h>
> +#include <linux/compiler.h>
> +
>  #include "elf.h"
>  #include "page.h"
>  #include "string.h"
> diff --git a/arch/powerpc/boot/ps3.c b/arch/powerpc/boot/ps3.c
> index a71714b454b1..86ca9c30562a 100644
> --- a/arch/powerpc/boot/ps3.c
> +++ b/arch/powerpc/boot/ps3.c
> @@ -8,6 +8,8 @@
> =20
>  #include <stdarg.h>
>  #include <stddef.h>
> +#include <linux/compiler.h>
> +
>  #include "types.h"
>  #include "elf.h"
>  #include "string.h"
>=20
>=20

So I installed the powerpc cross compiler, and
nope, that doesn't work, it makes a mess.

So it looks like the best option is to exclude these
2 files from conversion.

  BOOTCC  arch/powerpc/boot/main.o
In file included from ./include/linux/kcsan-checks.h:7,
                 from ./include/asm-generic/rwonce.h:27,
                 from ./arch/powerpc/include/generated/asm/rwonce.h:1,
                 from ./include/linux/compiler.h:232,
                 from arch/powerpc/boot/main.c:9:
./include/linux/compiler_attributes.h:64: warning: "__always_inline" redefi=
ned
   64 | #define __always_inline                 inline __attribute__((__alw=
ays_inline__))
      |=20
In file included from ./include/linux/stddef.h:5,
                 from ./include/uapi/linux/posix_types.h:5,
                 from ./include/uapi/linux/types.h:14,
                 from ./include/linux/types.h:6,
                 from ./include/linux/kasan-checks.h:5,
                 from ./include/asm-generic/rwonce.h:26,
                 from ./arch/powerpc/include/generated/asm/rwonce.h:1,
                 from ./include/linux/compiler.h:232,
                 from arch/powerpc/boot/main.c:9:
./include/uapi/linux/stddef.h:5: note: this is the location of the previous=
 definition
    5 | #define __always_inline inline
      |=20
In file included from ./arch/powerpc/include/generated/asm/rwonce.h:1,
                 from ./include/linux/compiler.h:232,
                 from arch/powerpc/boot/main.c:9:
./include/asm-generic/rwonce.h:64:31: error: expected =E2=80=98;=E2=80=99 b=
efore =E2=80=98unsigned=E2=80=99
   64 | static __no_sanitize_or_inline
      |                               ^
      |                               ;
   65 | unsigned long __read_once_word_nocheck(const void *addr)
      | ~~~~~~~~                      =20
./include/asm-generic/rwonce.h:82:28: error: expected =E2=80=98;=E2=80=99 b=
efore =E2=80=98unsigned=E2=80=99
   82 | static __no_kasan_or_inline
      |                            ^
      |                            ;
   83 | unsigned long read_word_at_a_time(const void *addr)
      | ~~~~~~~~                   =20
In file included from arch/powerpc/boot/ops.h:15,
                 from arch/powerpc/boot/main.c:15:


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/46040e2776a4848add06126ce1cb8f846709294f.camel%40perches.=
com.
