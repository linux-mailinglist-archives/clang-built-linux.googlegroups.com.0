Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZEZQOFAMGQECV5OIXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B62A40B48D
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 18:25:09 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id q62-20020a2e2a41000000b001d37080f948sf5116846ljq.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 09:25:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631636708; cv=pass;
        d=google.com; s=arc-20160816;
        b=JBV+of+Y602mXzSGW2daEQClO1PNv38r0t5smF4uf9MC+wNO+li5RaWY4S6zMrefKz
         gmCv8UyyRzG5P6lAaM/a9qc0AV+8XPo95QHssMCdNhwIaP+evHG4W/8lV6iZZ196fMiF
         N6cywBwAlYbXOs9jEjM1Ny/eXjRTa81jVt1/XBhnwZEG28GGUn3XICk/UwnS6p7XhmSw
         m5rOpWQ74CiX1XnJ5oHnc4IBkd33yZ8NJhwaCr81vIKvfSe2WccGuNtSNA13jjcOE8en
         rufi4A1MLlw7aY25FLwVbpQ9ZWm6ScAgYHjXWXijfwK6VJrvQXwf/pNu/uq1iAElaEGq
         53HQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=35+pVJbtrYTlVxVZwMMkFtg9FzvaUEtf1kh8mvyWBgY=;
        b=bBRHRi9t1vuPwFpMLBgML78pT1Wn0woQSaiMeoIbQChxGxIHsE2he4VdxfL71ZnY2R
         qBXdXhR/0zoZGoHeAHYzO++sf4RnzMC+2I18cirYn98IvUSRwolrRGz/+XhlT20Sfoa2
         neqnb30INNlPnkejaKVRGxbIplQtE0aRwouIcDMgzYRo6qvh54d6syPyvDFKq/vJEX6e
         xQrpeNP5e4SgvfO/fQM9CoM7ZRISM77dFvzmuhNetSRuUQK4FSzDjHhONgHicpSyZ2SU
         UGfau6q2yaxczZfGSHJp/1d75mjvb+KrSra7NaCT1ba7JInnBazcw4zHhO4H5UlPG2qZ
         JBuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=kUb7Ewwv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=35+pVJbtrYTlVxVZwMMkFtg9FzvaUEtf1kh8mvyWBgY=;
        b=XkFuk5/dYegce8h/3NduKhjCbZUcDHfxFV3vXNmitUykbAD7DWCEPCMa1n6/i6tBD8
         yGRc94ur2qjbaAPZKTjcXaZBAmk9rSfxjIHNkORzs2a3NtAz7MEtA0KWKxcPkEQ6NxQo
         0WobPNrxuDPAZxmNbtw+POTudm/uevdDG7IBK265JLM2pcIRwLCX2cgZ3eVl01OBfYPZ
         qZEB48qd6ZacHf92cGIuT25OzKehYeCHpH9cR0qBrK5vhxSUd7Tmge7iZg0RkV0H8FLZ
         1bNM9T8OMLN2C6FrC6ErcyvX0JqgRsf9YJ6X7c8MlOuajSZDjI87G7S3fVgBlkKol/ag
         eL7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=35+pVJbtrYTlVxVZwMMkFtg9FzvaUEtf1kh8mvyWBgY=;
        b=Nf4TVt/zzBJu5Ab4UToQGiWa3z2MjOx2CaRpYdoj0kENyTYB/j0pTXpUddJ0eJXOlx
         FbQzsOlkYWjkSvMJVPA2tTM4AYWP9qS/D769ichTAAFRiBdaTyYjGw7jxc34niGZ601i
         jbT98PIYmC0DL2x3EYcimWOY4mB8AHoxIC9ikpbXGVqVWZSVkO/JKnjk6Zd4nKkRUGGC
         siiebMyYuhtyV9+HhBcsFAMcPRE4P3wcoxYUIK8lL2CmZGmJV9IdmKmzES5QwhI6ixDc
         p6lDmuPxH8QxceKcpzct2tpKjL9gT2KegZIn1sUfisD9LvyJZG6p7A+FQ88anopFd7Ax
         SgTw==
X-Gm-Message-State: AOAM5330VPumBkNN5cEYG2E0wqM7QizCexnZ1fGqin3nj2BHq93N7XM0
	TrWJ1bksMbhHaUFiA0KRnY8=
X-Google-Smtp-Source: ABdhPJwIj19RaMWMBH0Hq5nPVKA4/l9eyjgUGiuToTZIqwTrD2pGHqn2HYqq7UhBKecvvceQ2boXAA==
X-Received: by 2002:a19:ee09:: with SMTP id g9mr7710229lfb.677.1631636708721;
        Tue, 14 Sep 2021 09:25:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:780f:: with SMTP id t15ls2530183ljc.6.gmail; Tue, 14 Sep
 2021 09:25:07 -0700 (PDT)
X-Received: by 2002:a05:651c:83:: with SMTP id 3mr15623837ljq.341.1631636707715;
        Tue, 14 Sep 2021 09:25:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631636707; cv=none;
        d=google.com; s=arc-20160816;
        b=n2yD7GlNnwPY2pMYAsqmG/9YTTweia8ZuMVlMiApeABRqXwo4cA3I6tOXByIiQ7s9T
         oaNI1+fddQKPjnAszmEBCp52Pg+a2ljYRzYwr/nPNIPeSd4rHxg3aB1J8a1ht71/g61B
         5egBum7t2iZXuuC0ne1geZADYY/LEeZqpWyE0OUZAmS7e9mVN1EM7Tocf8YtvCz5YMMO
         mHNvisks/GKoSJnSdkwDwfO1/kHjZCMYjLL8g2qgcHW+5RBVxiumV92jYUkeYNLZ+Lsf
         Up2Z19rc/8lKuX6SD0ydqDioi15KY6bFk4FjgSmgESV3GSsWz2EXAk3wAecupeQjHTuO
         J/hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0XFl+qSFBvVSwzxm/RP8WJzRd9gsausZ/c3B29VHTgk=;
        b=k3GS79yAzI9uqO2lwz4tEVnoAdBstJIzDIHpWzncn5fmLnE7yIhyDB7zIoUHrYFeAJ
         s4BfODnHTtALZNpHK482B6LS44hJCaOiS1mxdUQny0srSiXYKdj5E6ph9ohpn8+tUQV1
         1V9JF9RNnEeExONn1/9lRVatzEbE7bg/xhzBTK66AQCJJ784emLB3Kxlf1+ria0pBepm
         9kr7tZqtdZ0ufXWmWHhsshwpr7eWXpv7Ew9WNoovxGSo3/Wc9XB1jioLzP2o/1/jcRJn
         meDgc4X21Cjdqu1z3cJ9FCxYUMPr2iDy9ktLedndfD2Yd98+/FIhZ4i0Meyr8/xYSPx+
         /UBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=kUb7Ewwv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id v25si998512lfr.1.2021.09.14.09.25.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 09:25:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id j12so24965973ljg.10
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 09:25:07 -0700 (PDT)
X-Received: by 2002:a2e:99da:: with SMTP id l26mr15581274ljj.339.1631636706992;
 Tue, 14 Sep 2021 09:25:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210913213415.527306-1-paul@crapouillou.net> <CAKwvOdknN5O2gDUXwLwQDhxJc15foagrfW=+u+6vtxKVHmwDOQ@mail.gmail.com>
 <HMMFZQ.4BHOG14DQZPA3@crapouillou.net>
In-Reply-To: <HMMFZQ.4BHOG14DQZPA3@crapouillou.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Sep 2021 09:24:54 -0700
Message-ID: <CAKwvOd=w0=i2GPiBaXHizaMP=b0VD9Lw_o+GuvvWp-brMx2fRw@mail.gmail.com>
Subject: Re: [PATCH v2] MIPS: Avoid macro redefinitions
To: Paul Cercueil <paul@crapouillou.net>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Huacai Chen <chenhuacai@kernel.org>, 
	Jiaxun Yang <jiaxun.yang@flygoat.com>, Tiezhu Yang <yangtiezhu@loongson.cn>, 
	linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, list@opendingux.net, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=kUb7Ewwv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
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

On Tue, Sep 14, 2021 at 9:18 AM Paul Cercueil <paul@crapouillou.net> wrote:
>
> Hi Nick,
>
> Le mar., sept. 14 2021 at 08:56:59 -0700, Nick Desaulniers
> <ndesaulniers@google.com> a =C3=A9crit :
> >  On Mon, Sep 13, 2021 at 2:34 PM Paul Cercueil <paul@crapouillou.net>
> > wrote:
> >>
> >>  To be able to compile the kernel with LTO, the assembler macros
> >> cannot
> >>  be declared in the global scope, or the compiler will complain about
> >>  redefined macros.
> >>
> >>  Update the code so that macros are defined then undefined when they
> >> are
> >>  used.
> >>
> >>  Note that virt support was added in 2.24 and xpa in 2.25. So we
> >> still
> >>  need the TOOLCHAIN defines for them.
> >>
> >>  Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> >>  ---
> >>
> >>  Notes:
> >>      v2: Removed commented undef line
> >
> > Hi Paul, thanks for the v2. I think the point of the #undef was that
> > the _IFC_REG doesn't make sense outside of this header, so they
> > probably did not want to pollute the namespace for preprocessor
> > defines.  As such, I think it should actually stay, not be removed (or
> > commented out).
>
> I can test it again later, but IIRC the #undef must be removed. Since
> we use the new _ASM_SET_PARSE_R macro, which uses _IFC_REG, if we
> #undef it early then it won't compile.

Ok, it's not a big deal anyways.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Cheers,
> -Paul
>
> >>
> >>   arch/mips/include/asm/ginvt.h                 |  11 +-
> >>   .../asm/mach-loongson64/loongson_regs.h       |  12 ++
> >>   arch/mips/include/asm/mipsregs.h              | 190
> >> +++++++++++-------
> >>   arch/mips/include/asm/msa.h                   |  34 +++-
> >>   4 files changed, 155 insertions(+), 92 deletions(-)
> >>
> >>  diff --git a/arch/mips/include/asm/ginvt.h
> >> b/arch/mips/include/asm/ginvt.h
> >>  index 6eb7c2b94dc7..87b2974ffc53 100644
> >>  --- a/arch/mips/include/asm/ginvt.h
> >>  +++ b/arch/mips/include/asm/ginvt.h
> >>  @@ -12,11 +12,13 @@ enum ginvt_type {
> >>
> >>   #ifdef TOOLCHAIN_SUPPORTS_GINV
> >>   # define _ASM_SET_GINV ".set   ginv\n"
> >>  +# define _ASM_UNSET_GINV
> >>   #else
> >>  -_ASM_MACRO_1R1I(ginvt, rs, type,
> >>  -               _ASM_INSN_IF_MIPS(0x7c0000bd | (__rs << 21) |
> >> (\\type << 8))
> >>  -               _ASM_INSN32_IF_MM(0x0000717c | (__rs << 16) |
> >> (\\type << 9)));
> >>  -# define _ASM_SET_GINV
> >>  +# define _ASM_SET_GINV
> >>     \
> >>  +       _ASM_MACRO_1R1I(ginvt, rs, type,
> >>     \
> >>  +                       _ASM_INSN_IF_MIPS(0x7c0000bd | (__rs << 21)
> >> | (\\type << 8))    \
> >>  +                       _ASM_INSN32_IF_MM(0x0000717c | (__rs << 16)
> >> | (\\type << 9)))
> >>  +# define _ASM_UNSET_GINV ".purgem ginvt\n"
> >>   #endif
> >>
> >>   static __always_inline void ginvt(unsigned long addr, enum
> >> ginvt_type type)
> >>  @@ -25,6 +27,7 @@ static __always_inline void ginvt(unsigned long
> >> addr, enum ginvt_type type)
> >>                  ".set   push\n"
> >>                  _ASM_SET_GINV
> >>                  "       ginvt   %0, %1\n"
> >>  +               _ASM_UNSET_GINV
> >>                  ".set   pop"
> >>                  : /* no outputs */
> >>                  : "r"(addr), "i"(type)
> >>  diff --git a/arch/mips/include/asm/mach-loongson64/loongson_regs.h
> >> b/arch/mips/include/asm/mach-loongson64/loongson_regs.h
> >>  index 165993514762..b5be7511f6cd 100644
> >>  --- a/arch/mips/include/asm/mach-loongson64/loongson_regs.h
> >>  +++ b/arch/mips/include/asm/mach-loongson64/loongson_regs.h
> >>  @@ -21,8 +21,10 @@ static inline u32 read_cpucfg(u32 reg)
> >>          u32 __res;
> >>
> >>          __asm__ __volatile__(
> >>  +               _ASM_SET_PARSE_R
> >>                  "parse_r __res,%0\n\t"
> >>                  "parse_r reg,%1\n\t"
> >>  +               _ASM_UNSET_PARSE_R
> >>                  ".insn \n\t"
> >>                  ".word (0xc8080118 | (reg << 21) | (__res <<
> >> 11))\n\t"
> >>                  :"=3Dr"(__res)
> >>  @@ -143,8 +145,10 @@ static inline u32 csr_readl(u32 reg)
> >>
> >>          /* RDCSR reg, val */
> >>          __asm__ __volatile__(
> >>  +               _ASM_SET_PARSE_R
> >>                  "parse_r __res,%0\n\t"
> >>                  "parse_r reg,%1\n\t"
> >>  +               _ASM_UNSET_PARSE_R
> >>                  ".insn \n\t"
> >>                  ".word (0xc8000118 | (reg << 21) | (__res <<
> >> 11))\n\t"
> >>                  :"=3Dr"(__res)
> >>  @@ -160,8 +164,10 @@ static inline u64 csr_readq(u32 reg)
> >>
> >>          /* DRDCSR reg, val */
> >>          __asm__ __volatile__(
> >>  +               _ASM_SET_PARSE_R
> >>                  "parse_r __res,%0\n\t"
> >>                  "parse_r reg,%1\n\t"
> >>  +               _ASM_UNSET_PARSE_R
> >>                  ".insn \n\t"
> >>                  ".word (0xc8020118 | (reg << 21) | (__res <<
> >> 11))\n\t"
> >>                  :"=3Dr"(__res)
> >>  @@ -175,8 +181,10 @@ static inline void csr_writel(u32 val, u32 reg)
> >>   {
> >>          /* WRCSR reg, val */
> >>          __asm__ __volatile__(
> >>  +               _ASM_SET_PARSE_R
> >>                  "parse_r reg,%0\n\t"
> >>                  "parse_r val,%1\n\t"
> >>  +               _ASM_UNSET_PARSE_R
> >>                  ".insn \n\t"
> >>                  ".word (0xc8010118 | (reg << 21) | (val << 11))\n\t"
> >>                  :
> >>  @@ -189,8 +197,10 @@ static inline void csr_writeq(u64 val, u32 reg)
> >>   {
> >>          /* DWRCSR reg, val */
> >>          __asm__ __volatile__(
> >>  +               _ASM_SET_PARSE_R
> >>                  "parse_r reg,%0\n\t"
> >>                  "parse_r val,%1\n\t"
> >>  +               _ASM_UNSET_PARSE_R
> >>                  ".insn \n\t"
> >>                  ".word (0xc8030118 | (reg << 21) | (val << 11))\n\t"
> >>                  :
> >>  @@ -243,8 +253,10 @@ static inline u64 drdtime(void)
> >>          u64 val =3D 0;
> >>
> >>          __asm__ __volatile__(
> >>  +               _ASM_SET_PARSE_R
> >>                  "parse_r rID,%0\n\t"
> >>                  "parse_r val,%1\n\t"
> >>  +               _ASM_UNSET_PARSE_R
> >>                  ".insn \n\t"
> >>                  ".word (0xc8090118 | (rID << 21) | (val << 11))\n\t"
> >>                  :"=3Dr"(rID),"=3Dr"(val)
> >>  diff --git a/arch/mips/include/asm/mipsregs.h
> >> b/arch/mips/include/asm/mipsregs.h
> >>  index acdf8c69220b..2616353b940c 100644
> >>  --- a/arch/mips/include/asm/mipsregs.h
> >>  +++ b/arch/mips/include/asm/mipsregs.h
> >>  @@ -1297,22 +1297,22 @@ static inline int mm_insn_16bit(u16 insn)
> >>          "\\var  =3D " #n "\n\t"                   \
> >>          ".endif\n\t"
> >>
> >>  -__asm__(".macro        parse_r var r\n\t"
> >>  -       "\\var  =3D -1\n\t"
> >>  -       _IFC_REG(0)  _IFC_REG(1)  _IFC_REG(2)  _IFC_REG(3)
> >>  -       _IFC_REG(4)  _IFC_REG(5)  _IFC_REG(6)  _IFC_REG(7)
> >>  -       _IFC_REG(8)  _IFC_REG(9)  _IFC_REG(10) _IFC_REG(11)
> >>  -       _IFC_REG(12) _IFC_REG(13) _IFC_REG(14) _IFC_REG(15)
> >>  -       _IFC_REG(16) _IFC_REG(17) _IFC_REG(18) _IFC_REG(19)
> >>  -       _IFC_REG(20) _IFC_REG(21) _IFC_REG(22) _IFC_REG(23)
> >>  -       _IFC_REG(24) _IFC_REG(25) _IFC_REG(26) _IFC_REG(27)
> >>  -       _IFC_REG(28) _IFC_REG(29) _IFC_REG(30) _IFC_REG(31)
> >>  -       ".iflt  \\var\n\t"
> >>  -       ".error \"Unable to parse register name \\r\"\n\t"
> >>  -       ".endif\n\t"
> >>  -       ".endm");
> >>  -
> >>  -#undef _IFC_REG
> >
> > ^ ie. I don't think we want to remove this undef.
> >
> >>  +#define _ASM_SET_PARSE_R
> >>     \
> >>  +       ".macro parse_r var r\n\t"
> >>     \
> >>  +       "\\var  =3D -1\n\t"
> >>     \
> >>  +       _IFC_REG(0)  _IFC_REG(1)  _IFC_REG(2)  _IFC_REG(3)
> >>     \
> >>  +       _IFC_REG(4)  _IFC_REG(5)  _IFC_REG(6)  _IFC_REG(7)
> >>     \
> >>  +       _IFC_REG(8)  _IFC_REG(9)  _IFC_REG(10) _IFC_REG(11)
> >>     \
> >>  +       _IFC_REG(12) _IFC_REG(13) _IFC_REG(14) _IFC_REG(15)
> >>     \
> >>  +       _IFC_REG(16) _IFC_REG(17) _IFC_REG(18) _IFC_REG(19)
> >>     \
> >>  +       _IFC_REG(20) _IFC_REG(21) _IFC_REG(22) _IFC_REG(23)
> >>     \
> >>  +       _IFC_REG(24) _IFC_REG(25) _IFC_REG(26) _IFC_REG(27)
> >>     \
> >>  +       _IFC_REG(28) _IFC_REG(29) _IFC_REG(30) _IFC_REG(31)
> >>     \
> >>  +       ".iflt  \\var\n\t"
> >>     \
> >>  +       ".error \"Unable to parse register name \\r\"\n\t"
> >>     \
> >>  +       ".endif\n\t"
> >>     \
> >>  +       ".endm\n\t"
> >>  +#define _ASM_UNSET_PARSE_R ".purgem parse_r\n\t"
> >>
> >>   /*
> >>    * C macros for generating assembler macros for common instruction
> >> formats.
> >>  @@ -1322,43 +1322,45 @@ __asm__(".macro parse_r var r\n\t"
> >>    * the ENC encodings.
> >>    */
> >>
> >>  -/* Instructions with no operands */
> >>  -#define _ASM_MACRO_0(OP, ENC)
> >>     \
> >>  -       __asm__(".macro " #OP "\n\t"
> >>     \
> >>  -               ENC
> >>     \
> >>  -               ".endm")
> >>  -
> >>   /* Instructions with 1 register operand & 1 immediate operand */
> >>   #define _ASM_MACRO_1R1I(OP, R1, I2, ENC)
> >>     \
> >>  -       __asm__(".macro " #OP " " #R1 ", " #I2 "\n\t"
> >>     \
> >>  +               ".macro " #OP " " #R1 ", " #I2 "\n\t"
> >>     \
> >>  +               _ASM_SET_PARSE_R
> >>     \
> >>                  "parse_r __" #R1 ", \\" #R1 "\n\t"
> >>     \
> >>                  ENC
> >>     \
> >>  -               ".endm")
> >>  +               _ASM_UNSET_PARSE_R
> >>     \
> >>  +               ".endm\n\t"
> >>
> >>   /* Instructions with 2 register operands */
> >>   #define _ASM_MACRO_2R(OP, R1, R2, ENC)
> >>     \
> >>  -       __asm__(".macro " #OP " " #R1 ", " #R2 "\n\t"
> >>     \
> >>  +               ".macro " #OP " " #R1 ", " #R2 "\n\t"
> >>     \
> >>  +               _ASM_SET_PARSE_R
> >>     \
> >>                  "parse_r __" #R1 ", \\" #R1 "\n\t"
> >>     \
> >>                  "parse_r __" #R2 ", \\" #R2 "\n\t"
> >>     \
> >>                  ENC
> >>     \
> >>  -               ".endm")
> >>  +               _ASM_UNSET_PARSE_R
> >>     \
> >>  +               ".endm\n\t"
> >>
> >>   /* Instructions with 3 register operands */
> >>   #define _ASM_MACRO_3R(OP, R1, R2, R3, ENC)
> >>     \
> >>  -       __asm__(".macro " #OP " " #R1 ", " #R2 ", " #R3 "\n\t"
> >>     \
> >>  +               ".macro " #OP " " #R1 ", " #R2 ", " #R3 "\n\t"
> >>     \
> >>  +               _ASM_SET_PARSE_R
> >>     \
> >>                  "parse_r __" #R1 ", \\" #R1 "\n\t"
> >>     \
> >>                  "parse_r __" #R2 ", \\" #R2 "\n\t"
> >>     \
> >>                  "parse_r __" #R3 ", \\" #R3 "\n\t"
> >>     \
> >>                  ENC
> >>     \
> >>  -               ".endm")
> >>  +               _ASM_UNSET_PARSE_R
> >>     \
> >>  +               ".endm\n\t"
> >>
> >>   /* Instructions with 2 register operands and 1 optional select
> >> operand */
> >>   #define _ASM_MACRO_2R_1S(OP, R1, R2, SEL3, ENC)
> >>             \
> >>  -       __asm__(".macro " #OP " " #R1 ", " #R2 ", " #SEL3 " =3D
> >> 0\n\t"    \
> >>  +               ".macro " #OP " " #R1 ", " #R2 ", " #SEL3 " =3D
> >> 0\n\t"    \
> >>  +               _ASM_SET_PARSE_R
> >>     \
> >>                  "parse_r __" #R1 ", \\" #R1 "\n\t"
> >>     \
> >>                  "parse_r __" #R2 ", \\" #R2 "\n\t"
> >>     \
> >>                  ENC
> >>     \
> >>  -               ".endm")
> >>  +               _ASM_UNSET_PARSE_R
> >>     \
> >>  +               ".endm\n\t"
> >>
> >>   /*
> >>    * TLB Invalidate Flush
> >>  @@ -1618,15 +1620,21 @@ do {
> >>                             \
> >>   } while (0)
> >>
> >>   #ifndef TOOLCHAIN_SUPPORTS_XPA
> >>  -_ASM_MACRO_2R_1S(mfhc0, rt, rs, sel,
> >>  -       _ASM_INSN_IF_MIPS(0x40400000 | __rt << 16 | __rs << 11 |
> >> \\sel)
> >>  -       _ASM_INSN32_IF_MM(0x000000f4 | __rt << 21 | __rs << 16 |
> >> \\sel << 11));
> >>  -_ASM_MACRO_2R_1S(mthc0, rt, rd, sel,
> >>  -       _ASM_INSN_IF_MIPS(0x40c00000 | __rt << 16 | __rd << 11 |
> >> \\sel)
> >>  -       _ASM_INSN32_IF_MM(0x000002f4 | __rt << 21 | __rd << 16 |
> >> \\sel << 11));
> >>  -#define _ASM_SET_XPA ""
> >>  +#define _ASM_SET_MFHC0
> >>     \
> >>  +       _ASM_MACRO_2R_1S(mfhc0, rt, rs, sel,
> >>     \
> >>  +                        _ASM_INSN_IF_MIPS(0x40400000 | __rt << 16
> >> | __rs << 11 | \\sel)        \
> >>  +                        _ASM_INSN32_IF_MM(0x000000f4 | __rt << 21
> >> | __rs << 16 | \\sel << 11))
> >>  +#define _ASM_UNSET_MFHC0 ".purgem mfhc0\n\t"
> >>  +#define _ASM_SET_MTHC0
> >>     \
> >>  +       _ASM_MACRO_2R_1S(mthc0, rt, rd, sel,
> >>     \
> >>  +                        _ASM_INSN_IF_MIPS(0x40c00000 | __rt << 16
> >> | __rd << 11 | \\sel)        \
> >>  +                        _ASM_INSN32_IF_MM(0x000002f4 | __rt << 21
> >> | __rd << 16 | \\sel << 11))
> >>  +#define _ASM_UNSET_MTHC0 ".purgem mthc0\n\t"
> >>   #else  /* !TOOLCHAIN_SUPPORTS_XPA */
> >>  -#define _ASM_SET_XPA ".set\txpa\n\t"
> >>  +#define _ASM_SET_MFHC0 ".set\txpa\n\t"
> >>  +#define _ASM_SET_MTHC0 ".set\txpa\n\t"
> >>  +#define _ASM_UNSET_MFHC0
> >>  +#define _ASM_UNSET_MTHC0
> >>   #endif
> >>
> >>   #define __readx_32bit_c0_register(source, sel)
> >>     \
> >>  @@ -1636,8 +1644,9 @@ _ASM_MACRO_2R_1S(mthc0, rt, rd, sel,
> >>          __asm__ __volatile__(
> >>     \
> >>          "       .set    push                                    \n"
> >>     \
> >>          "       .set    mips32r2                                \n"
> >>     \
> >>  -       _ASM_SET_XPA
> >>     \
> >>  +       _ASM_SET_MFHC0
> >>     \
> >>          "       mfhc0   %0, " #source ", %1                     \n"
> >>     \
> >>  +       _ASM_UNSET_MFHC0
> >>     \
> >>          "       .set    pop                                     \n"
> >>     \
> >>          : "=3Dr" (__res)
> >>     \
> >>          : "i" (sel));
> >>     \
> >>  @@ -1649,8 +1658,9 @@ do {
> >>                             \
> >>          __asm__ __volatile__(
> >>     \
> >>          "       .set    push                                    \n"
> >>     \
> >>          "       .set    mips32r2                                \n"
> >>     \
> >>  -       _ASM_SET_XPA
> >>     \
> >>  +       _ASM_SET_MTHC0
> >>     \
> >>          "       mthc0   %z0, " #register ", %1                  \n"
> >>     \
> >>  +       _ASM_UNSET_MTHC0
> >>     \
> >>          "       .set    pop                                     \n"
> >>     \
> >>          :
> >>     \
> >>          : "Jr" (value), "i" (sel));
> >>     \
> >>  @@ -2046,31 +2056,58 @@ do {
> >>                             \
> >>    */
> >>
> >>   #ifndef TOOLCHAIN_SUPPORTS_VIRT
> >>  -_ASM_MACRO_2R_1S(mfgc0, rt, rs, sel,
> >>  -       _ASM_INSN_IF_MIPS(0x40600000 | __rt << 16 | __rs << 11 |
> >> \\sel)
> >>  -       _ASM_INSN32_IF_MM(0x000004fc | __rt << 21 | __rs << 16 |
> >> \\sel << 11));
> >>  -_ASM_MACRO_2R_1S(dmfgc0, rt, rs, sel,
> >>  -       _ASM_INSN_IF_MIPS(0x40600100 | __rt << 16 | __rs << 11 |
> >> \\sel)
> >>  -       _ASM_INSN32_IF_MM(0x580004fc | __rt << 21 | __rs << 16 |
> >> \\sel << 11));
> >>  -_ASM_MACRO_2R_1S(mtgc0, rt, rd, sel,
> >>  -       _ASM_INSN_IF_MIPS(0x40600200 | __rt << 16 | __rd << 11 |
> >> \\sel)
> >>  -       _ASM_INSN32_IF_MM(0x000006fc | __rt << 21 | __rd << 16 |
> >> \\sel << 11));
> >>  -_ASM_MACRO_2R_1S(dmtgc0, rt, rd, sel,
> >>  -       _ASM_INSN_IF_MIPS(0x40600300 | __rt << 16 | __rd << 11 |
> >> \\sel)
> >>  -       _ASM_INSN32_IF_MM(0x580006fc | __rt << 21 | __rd << 16 |
> >> \\sel << 11));
> >>  -_ASM_MACRO_0(tlbgp,    _ASM_INSN_IF_MIPS(0x42000010)
> >>  -                      _ASM_INSN32_IF_MM(0x0000017c));
> >>  -_ASM_MACRO_0(tlbgr,    _ASM_INSN_IF_MIPS(0x42000009)
> >>  -                      _ASM_INSN32_IF_MM(0x0000117c));
> >>  -_ASM_MACRO_0(tlbgwi,   _ASM_INSN_IF_MIPS(0x4200000a)
> >>  -                      _ASM_INSN32_IF_MM(0x0000217c));
> >>  -_ASM_MACRO_0(tlbgwr,   _ASM_INSN_IF_MIPS(0x4200000e)
> >>  -                      _ASM_INSN32_IF_MM(0x0000317c));
> >>  -_ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
> >>  -                      _ASM_INSN32_IF_MM(0x0000517c));
> >>  -#define _ASM_SET_VIRT ""
> >>  +#define _ASM_SET_MFGC0
> >>     \
> >>  +       _ASM_MACRO_2R_1S(mfgc0, rt, rs, sel,
> >>     \
> >>  +                        _ASM_INSN_IF_MIPS(0x40600000 | __rt << 16
> >> | __rs << 11 | \\sel)        \
> >>  +                        _ASM_INSN32_IF_MM(0x000004fc | __rt << 21
> >> | __rs << 16 | \\sel << 11))
> >>  +#define _ASM_UNSET_MFGC0 ".purgem mfgc0\n\t"
> >>  +#define _ASM_SET_DMFGC0
> >>             \
> >>  +       _ASM_MACRO_2R_1S(dmfgc0, rt, rs, sel,
> >>     \
> >>  +                        _ASM_INSN_IF_MIPS(0x40600100 | __rt << 16
> >> | __rs << 11 | \\sel)        \
> >>  +                        _ASM_INSN32_IF_MM(0x580004fc | __rt << 21
> >> | __rs << 16 | \\sel << 11))
> >>  +#define _ASM_UNSET_DMFGC0 ".purgem dmfgc0\n\t"
> >>  +#define _ASM_SET_MTGC0
> >>     \
> >>  +       _ASM_MACRO_2R_1S(mtgc0, rt, rd, sel,
> >>     \
> >>  +                        _ASM_INSN_IF_MIPS(0x40600200 | __rt << 16
> >> | __rd << 11 | \\sel)        \
> >>  +                        _ASM_INSN32_IF_MM(0x000006fc | __rt << 21
> >> | __rd << 16 | \\sel << 11))
> >>  +#define _ASM_UNSET_MTGC0 ".purgem mtgc0\n\t"
> >>  +#define _ASM_SET_DMTGC0
> >>             \
> >>  +       _ASM_MACRO_2R_1S(dmtgc0, rt, rd, sel,
> >>     \
> >>  +                        _ASM_INSN_IF_MIPS(0x40600300 | __rt << 16
> >> | __rd << 11 | \\sel)        \
> >>  +                        _ASM_INSN32_IF_MM(0x580006fc | __rt << 21
> >> | __rd << 16 | \\sel << 11))
> >>  +#define _ASM_UNSET_DMTGC0 ".purgem dmtgc0\n\t"
> >>  +
> >>  +#define __tlbgp()
> >>     \
> >>  +               _ASM_INSN_IF_MIPS(0x42000010)
> >>     \
> >>  +               _ASM_INSN32_IF_MM(0x0000017c)
> >>  +#define __tlbgr()
> >>     \
> >>  +               _ASM_INSN_IF_MIPS(0x42000009)
> >>     \
> >>  +               _ASM_INSN32_IF_MM(0x0000117c)
> >>  +#define __tlbgwi()
> >>     \
> >>  +               _ASM_INSN_IF_MIPS(0x4200000a)
> >>     \
> >>  +               _ASM_INSN32_IF_MM(0x0000217c)
> >>  +#define __tlbgwr()
> >>     \
> >>  +               _ASM_INSN_IF_MIPS(0x4200000e)
> >>     \
> >>  +               _ASM_INSN32_IF_MM(0x0000317c)
> >>  +#define __tlbginvf()
> >>     \
> >>  +               _ASM_INSN_IF_MIPS(0x4200000c)
> >>     \
> >>  +               _ASM_INSN32_IF_MM(0x0000517c)
> >>   #else  /* !TOOLCHAIN_SUPPORTS_VIRT */
> >>   #define _ASM_SET_VIRT ".set\tvirt\n\t"
> >>  +#define _ASM_SET_MFGC0 _ASM_SET_VIRT
> >>  +#define _ASM_SET_DMFGC0        _ASM_SET_VIRT
> >>  +#define _ASM_SET_MTGC0 _ASM_SET_VIRT
> >>  +#define _ASM_SET_DMTGC0        _ASM_SET_VIRT
> >>  +#define _ASM_UNSET_MFGC0
> >>  +#define _ASM_UNSET_DMFGC0
> >>  +#define _ASM_UNSET_MTGC0
> >>  +#define _ASM_UNSET_DMTGC0
> >>  +
> >>  +#define __tlbgp()      _ASM_SET_VIRT "tlbgp\n\t"
> >>  +#define __tlbgr()      _ASM_SET_VIRT "tlbgr\n\t"
> >>  +#define __tlbgwi()     _ASM_SET_VIRT "tlbgwi\n\t"
> >>  +#define __tlbgwr()     _ASM_SET_VIRT "tlbgwr\n\t"
> >>  +#define __tlbginvf()   _ASM_SET_VIRT "tlbginvf\n\t"
> >>   #endif
> >>
> >>   #define __read_32bit_gc0_register(source, sel)
> >>     \
> >>  @@ -2078,8 +2115,9 @@ _ASM_MACRO_0(tlbginvf,
> >> _ASM_INSN_IF_MIPS(0x4200000c)
> >>          __asm__ __volatile__(
> >>     \
> >>                  ".set\tpush\n\t"
> >>     \
> >>                  ".set\tmips32r5\n\t"
> >>     \
> >>  -               _ASM_SET_VIRT
> >>     \
> >>  +               _ASM_SET_MFGC0
> >>     \
> >>                  "mfgc0\t%0, " #source ", %1\n\t"
> >>     \
> >>  +               _ASM_UNSET_MFGC0
> >>     \
> >>                  ".set\tpop"
> >>     \
> >>                  : "=3Dr" (__res)
> >>     \
> >>                  : "i" (sel));
> >>     \
> >>  @@ -2091,8 +2129,9 @@ _ASM_MACRO_0(tlbginvf,
> >> _ASM_INSN_IF_MIPS(0x4200000c)
> >>          __asm__ __volatile__(
> >>     \
> >>                  ".set\tpush\n\t"
> >>     \
> >>                  ".set\tmips64r5\n\t"
> >>     \
> >>  -               _ASM_SET_VIRT
> >>     \
> >>  +               _ASM_SET_DMFGC0
> >>     \
> >>                  "dmfgc0\t%0, " #source ", %1\n\t"
> >>     \
> >>  +               _ASM_UNSET_DMFGC0
> >>     \
> >>                  ".set\tpop"
> >>     \
> >>                  : "=3Dr" (__res)
> >>     \
> >>                  : "i" (sel));
> >>     \
> >>  @@ -2104,8 +2143,9 @@ do {
> >>                             \
> >>          __asm__ __volatile__(
> >>     \
> >>                  ".set\tpush\n\t"
> >>     \
> >>                  ".set\tmips32r5\n\t"
> >>     \
> >>  -               _ASM_SET_VIRT
> >>     \
> >>  +               _ASM_SET_MTGC0
> >>     \
> >>                  "mtgc0\t%z0, " #register ", %1\n\t"
> >>     \
> >>  +               _ASM_UNSET_MTGC0
> >>     \
> >>                  ".set\tpop"
> >>     \
> >>                  : : "Jr" ((unsigned int)(value)),
> >>     \
> >>                      "i" (sel));
> >>     \
> >>  @@ -2116,8 +2156,9 @@ do {
> >>                             \
> >>          __asm__ __volatile__(
> >>     \
> >>                  ".set\tpush\n\t"
> >>     \
> >>                  ".set\tmips64r5\n\t"
> >>     \
> >>  -               _ASM_SET_VIRT
> >>     \
> >>  +               _ASM_SET_DMTGC0
> >>     \
> >>                  "dmtgc0\t%z0, " #register ", %1\n\t"
> >>     \
> >>  +               _ASM_UNSET_DMTGC0
> >>     \
> >>                  ".set\tpop"
> >>     \
> >>                  : : "Jr" (value),
> >>     \
> >>                      "i" (sel));
> >>     \
> >>  @@ -2788,8 +2829,7 @@ static inline void guest_tlb_probe(void)
> >>          __asm__ __volatile__(
> >>                  ".set push\n\t"
> >>                  ".set noreorder\n\t"
> >>  -               _ASM_SET_VIRT
> >>  -               "tlbgp\n\t"
> >>  +               __tlbgp()
> >>                  ".set pop");
> >>   }
> >>
> >>  @@ -2798,8 +2838,7 @@ static inline void guest_tlb_read(void)
> >>          __asm__ __volatile__(
> >>                  ".set push\n\t"
> >>                  ".set noreorder\n\t"
> >>  -               _ASM_SET_VIRT
> >>  -               "tlbgr\n\t"
> >>  +               __tlbgr()
> >>                  ".set pop");
> >>   }
> >>
> >>  @@ -2808,8 +2847,7 @@ static inline void
> >> guest_tlb_write_indexed(void)
> >>          __asm__ __volatile__(
> >>                  ".set push\n\t"
> >>                  ".set noreorder\n\t"
> >>  -               _ASM_SET_VIRT
> >>  -               "tlbgwi\n\t"
> >>  +               __tlbgwi()
> >>                  ".set pop");
> >>   }
> >>
> >>  @@ -2818,8 +2856,7 @@ static inline void
> >> guest_tlb_write_random(void)
> >>          __asm__ __volatile__(
> >>                  ".set push\n\t"
> >>                  ".set noreorder\n\t"
> >>  -               _ASM_SET_VIRT
> >>  -               "tlbgwr\n\t"
> >>  +               __tlbgwr()
> >>                  ".set pop");
> >>   }
> >>
> >>  @@ -2831,8 +2868,7 @@ static inline void guest_tlbinvf(void)
> >>          __asm__ __volatile__(
> >>                  ".set push\n\t"
> >>                  ".set noreorder\n\t"
> >>  -               _ASM_SET_VIRT
> >>  -               "tlbginvf\n\t"
> >>  +               __tlbginvf()
> >>                  ".set pop");
> >>   }
> >>
> >>  diff --git a/arch/mips/include/asm/msa.h
> >> b/arch/mips/include/asm/msa.h
> >>  index e0a3dd52334d..236a49ee2e3e 100644
> >>  --- a/arch/mips/include/asm/msa.h
> >>  +++ b/arch/mips/include/asm/msa.h
> >>  @@ -162,16 +162,26 @@ static inline void init_msa_upper(void)
> >>    * to allow compilation with toolchains that do not support MSA.
> >> Once all
> >>    * toolchains in use support MSA these can be removed.
> >>    */
> >>  -_ASM_MACRO_2R(cfcmsa, rd, cs,
> >>  -       _ASM_INSN_IF_MIPS(0x787e0019 | __cs << 11 | __rd << 6)
> >>  -       _ASM_INSN32_IF_MM(0x587e0016 | __cs << 11 | __rd << 6));
> >>  -_ASM_MACRO_2R(ctcmsa, cd, rs,
> >>  -       _ASM_INSN_IF_MIPS(0x783e0019 | __rs << 11 | __cd << 6)
> >>  -       _ASM_INSN32_IF_MM(0x583e0016 | __rs << 11 | __cd << 6));
> >>  -#define _ASM_SET_MSA ""
> >>  +
> >>  +#define _ASM_SET_CFCMSA
> >>             \
> >>  +       _ASM_MACRO_2R(cfcmsa, rd, cs,
> >>     \
> >>  +                     _ASM_INSN_IF_MIPS(0x787e0019 | __cs << 11 |
> >> __rd << 6)    \
> >>  +                     _ASM_INSN32_IF_MM(0x587e0016 | __cs << 11 |
> >> __rd << 6))
> >>  +#define _ASM_UNSET_CFCMSA ".purgem cfcmsa\n\t"
> >>  +#define _ASM_SET_CTCMSA
> >>             \
> >>  +       _ASM_MACRO_2R(ctcmsa, cd, rs,
> >>     \
> >>  +                     _ASM_INSN_IF_MIPS(0x783e0019 | __rs << 11 |
> >> __cd << 6)    \
> >>  +                     _ASM_INSN32_IF_MM(0x583e0016 | __rs << 11 |
> >> __cd << 6))
> >>  +#define _ASM_UNSET_CTCMSA ".purgem ctcmsa\n\t"
> >>   #else /* TOOLCHAIN_SUPPORTS_MSA */
> >>  -#define _ASM_SET_MSA ".set\tfp=3D64\n\t"                         \
> >>  -                    ".set\tmsa\n\t"
> >>  +#define _ASM_SET_CFCMSA
> >>     \
> >>  +               ".set\tfp=3D64\n\t"                               \
> >>  +               ".set\tmsa\n\t"
> >>  +#define _ASM_UNSET_CFCMSA
> >>  +#define _ASM_SET_CTCMSA
> >>     \
> >>  +               ".set\tfp=3D64\n\t"                               \
> >>  +               ".set\tmsa\n\t"
> >>  +#define _ASM_UNSET_CTCMSA
> >>   #endif
> >>
> >>   #define __BUILD_MSA_CTL_REG(name, cs)                          \
> >>  @@ -180,8 +190,9 @@ static inline unsigned int
> >> read_msa_##name(void)            \
> >>          unsigned int reg;                                       \
> >>          __asm__ __volatile__(                                   \
> >>          "       .set    push\n"                                 \
> >>  -       _ASM_SET_MSA                                            \
> >>  +       _ASM_SET_CFCMSA                                         \
> >>          "       cfcmsa  %0, $" #cs "\n"                         \
> >>  +       _ASM_UNSET_CFCMSA                                       \
> >>          "       .set    pop\n"                                  \
> >>          : "=3Dr"(reg));                                           \
> >>          return reg;                                             \
> >>  @@ -191,8 +202,9 @@ static inline void write_msa_##name(unsigned
> >> int val)               \
> >>   {                                                              \
> >>          __asm__ __volatile__(                                   \
> >>          "       .set    push\n"                                 \
> >>  -       _ASM_SET_MSA                                            \
> >>  +       _ASM_SET_CTCMSA                                         \
> >>          "       ctcmsa  $" #cs ", %0\n"                         \
> >>  +       _ASM_UNSET_CTCMSA                                       \
> >>          "       .set    pop\n"                                  \
> >>          : : "r"(val));                                          \
> >>   }
> >>  --
> >>  2.33.0
> >>
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
>
>


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3Dw0%3Di2GPiBaXHizaMP%3Db0VD9Lw_o%2BGuvvWp-brMx2f=
Rw%40mail.gmail.com.
