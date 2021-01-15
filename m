Return-Path: <clang-built-linux+bncBCIO53XE7YHBBYGRQ6AAMGQE46JDC5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4AE2F8523
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 20:11:29 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id j22sf4380469otq.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 11:11:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610737888; cv=pass;
        d=google.com; s=arc-20160816;
        b=DkMhqLoXe7j/uEurStbWdeIXsVq3ZRsw8HVTA9asmn/wVWiPzffhfVGuk33CbeMuKY
         i2vvyJcUf9qqfO7aCcHU1UMbWZ1Y/6R7owGe8LV3RVifwV1FDje/hg+C2Bwy+oQ/lcNx
         2quSGa1N0iBbyR2Zw7SZtwzJ5isainbxeddHW5crhS4Ve4lqwQAm0poTPQ2lhoHG/BkH
         Dork3e9347NprXr6Ofcz6TtdbT8aIeOHdid27Lz11/CEgjY/4u6m+ScQaFUsmogPJg/T
         fMBT+nddr3vkKiSfh22GssfBXwRvaFQkD3AsnK9LyjGqwc39c31RK/1yhekqSBsXfydO
         Mmhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=nOHWbVcYAJTIMkB9QxZZbLTGS2NjN5mxGTeANMM81HA=;
        b=cACzQH+zJAbKomCWYrihYjvDDcCRG2mCoKkVPAvcJWoOG83m3SLRwKUUeZ7L3xLmDb
         5Cj99R1r16xKii23Q3FjxjhSv0E8eh6WXkuQuthD2HqZCeTBpSVyEvxLSrqLbVCKDgW2
         90QsT07rv/ImRkEgzIljX7yd0jvSasIMmDRg+FKpAkUC2rXDm8YSBQC+9ADaEy3nI84t
         x3RBJhEmcX+RmHjRJ1Qxjexp/DQnNTBCnKBRdw2OAQl6XFwyPZ5U3rmkg4hkUf/gZmdK
         k+BLgVWhXdXay1fLe+1wtsWvSGete0gCNBNKx/2xbOl3DPT8wl69eDkSG1j8l4kqzAws
         HV0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YVcbxd9A;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::731 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nOHWbVcYAJTIMkB9QxZZbLTGS2NjN5mxGTeANMM81HA=;
        b=WVe2vXzN6aCamWc2Sd3mIyx05dB7r279oZVT1v7xyM74hbcNvsvYLh6jlIquji/d+G
         XuNZPCiiKgJSICXH3mP6QuiN7j8BfvuDuAhuJoAoEFwarzbMqIX4uuUf12r8GWkZApXs
         XLpMGJFyrJiyJZw30uVGRITr1YviKe8JBNFDZCbtGobXQCMu4xQBPYoBUQ7FiDmqy5hc
         engXdQzpTU3jT9U2TYeibyvAagIlMyiBjWgl86TN5ieSXNJrlcLutD3b3MISzgshnI5o
         x300zjWsO1LbNHLXD0vYJRaw/MWEkM20z9noBvqnE0SJoAlbQ7Lk4DdaluT1Im6+btUd
         bn5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nOHWbVcYAJTIMkB9QxZZbLTGS2NjN5mxGTeANMM81HA=;
        b=XXFFnPqK+pxBDCEALDeL7V7J75mGtK5pYBuZjyPBd/vWS6sPAuUY4cSfz3MIbTDD0D
         AMt8DdIQvKDbHsZLkbMMOIoOL2Z7uXqzpTimXT+mB6OE+x8S2qIlZNF/FWi+Oi3ckKJy
         IE32tWOkvE8BdQhX0quj+tkNKgDjoMOsh1f3JkeiY7dvIuDwpRI5EJ5kMtnBjjTiS6N+
         0mX4rzg+8DaQ6epd9HHHp+pKFFeCf/izLwzyyMygQr/RoOLE6GCh39xWCgCTNknhOSpK
         QDnzbhu7NWQIFmLrnBI1chpXrSv5vhiwcLzS5jYMz3mlkKe4arXN9KWOKTaso/gp+fW+
         y94g==
X-Gm-Message-State: AOAM5313AopvxQ5zk2ZUzcbdxTB8ObBlXsCrLqMgiH8UBdxLjG9GGG8X
	byuhQpkRRdtA2FpZVQ81cfU=
X-Google-Smtp-Source: ABdhPJwJ8oOD8OvQmr2/kAA1HJ5HpDyMVHmUzQJw5vfLbDZsXARC+Zi39YQEM0jnEcc1YhLrKMeJxw==
X-Received: by 2002:aca:3094:: with SMTP id w142mr6540655oiw.101.1610737888652;
        Fri, 15 Jan 2021 11:11:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4694:: with SMTP id k20ls2416017oic.0.gmail; Fri, 15 Jan
 2021 11:11:28 -0800 (PST)
X-Received: by 2002:aca:3757:: with SMTP id e84mr6394079oia.5.1610737888141;
        Fri, 15 Jan 2021 11:11:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610737888; cv=none;
        d=google.com; s=arc-20160816;
        b=JER4dDTZmbW816/CLgIbnzBA1Exu4xUTgp2GkO8LveoXAG8gwkt6MAg3hqcbiP8AWc
         6Aja7sqvdf+uEFMScoEzR5KHliwq81K+zG4yKQx3B+T14/iTbKC2un8rUGgO09Mb+kZP
         JGLMyhpLGj8QHfu++9SpQ3VP3tB8g3RK5pX2jNVVPiSyyF16PTkSitpYf52Ik57Bt/hT
         5yMoEpqHkZFjQ0Kevjjy7PV245wn+JGOjx/caDt6VGFRBeQPWtKX9/L13MxiOMlDI9Og
         rjE5/kW4lJcy8LUK52mlEygNTkd20iY+qfui62vFY2IpUuOAaOfjaS7x1/NF7qT4dl03
         PGJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=mcPqm+ALLmKYyfXL3d5GTSykbXw6V8Jgdo0h2nfOwvU=;
        b=mb3ihU/9YD2Lz1/xeCt2nIDKyNqcyu/HgLtC8x9Spu06XMFiwR78Ob8KMSnqziFDsB
         J7zOx+9relO+pZ9LxetFML24TWE8YCfgH+RoKzAg7tlDpA5xrkHRHvCMaoNemLhtSQDd
         syIp4LIzxkOpQ1OdSxwbrt+u9RyICd7xK8TGuB4jWaXOtfpEpDWZcAiCZ3AmF8OL/cls
         YWhY2yIh6kHT98t8kL/HxDLehN1hNMtif2j0/e+koEE8CM0bXyz7A3WoH7ZzgeQ/r3DU
         5X6qSMZ9vBI3Kxvc3DlGe2OECWutwuq2cuv8sfjhLaT+Egm+lcmiwQV/+5M6/I4aQZ+K
         i2uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YVcbxd9A;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::731 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com. [2607:f8b0:4864:20::731])
        by gmr-mx.google.com with ESMTPS id c18si648103oib.5.2021.01.15.11.11.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 11:11:28 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::731 as permitted sender) client-ip=2607:f8b0:4864:20::731;
Received: by mail-qk1-x731.google.com with SMTP id b64so12721188qkc.12
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 11:11:28 -0800 (PST)
X-Received: by 2002:a37:7907:: with SMTP id u7mr14106962qkc.472.1610737887654;
        Fri, 15 Jan 2021 11:11:27 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id b12sm5253330qtj.12.2021.01.15.11.11.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 11:11:27 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 15 Jan 2021 14:11:25 -0500
To: Borislav Petkov <bp@alien8.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>, linux-efi@vger.kernel.org,
	platform-driver-x86@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Message-ID: <YAHo3ZEMu+6mESZA@rani.riverdale.lan>
References: <20210107223424.4135538-1-arnd@kernel.org>
 <20210115182300.GD9138@zn.tnic>
 <20210115183203.GA1991122@ubuntu-m3-large-x86>
 <20210115190729.GE9138@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210115190729.GE9138@zn.tnic>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YVcbxd9A;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::731
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Content-Transfer-Encoding: quoted-printable
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

On Fri, Jan 15, 2021 at 08:07:29PM +0100, Borislav Petkov wrote:
> On Fri, Jan 15, 2021 at 11:32:03AM -0700, Nathan Chancellor wrote:
> > I triggered it with CONFIG_UBSAN=3Dy + CONFIG_UBSAN_UNSIGNED_OVERFLOW=
=3Dy
> > (it can be exposed with an allyesconfig/allmodconfig on mainline
> > currently).
>=20
> Yah, I can trigger with that, thanks.
>=20
> But I'll be damned, check this out:
>=20
> clang preprocesses to this:
>=20
>  do { extern void __compiletime_assert_332(void) ; if (!(!(p4d_index((-68=
 * ((1UL) << 30))) !=3D p4d_index((0xffffffffff000000UL))))) __compiletime_=
assert_332(); } while (0);
>=20
> The resulting asm is:
>=20
> .LBB1_32:
>         movabsq $-73014444032, %r13     # imm =3D 0xFFFFFFEF00000000
>         testb   $1, %al
>         jne     .LBB1_33
> .LBB1_34:
>         xorl    %r14d, %ebx
>         testl   $33554431, %ebx         # imm =3D 0x1FFFFFF
>         je      .LBB1_36
> # %bb.35:
>         callq   __compiletime_assert_332
>=20
> so the undefined symbol is there, leading to:
>=20
> ld: arch/x86/platform/efi/efi_64.o: in function `efi_sync_low_kernel_mapp=
ings':
> /home/boris/kernel/linux/arch/x86/platform/efi/efi_64.c:140: undefined re=
ference to `__compiletime_assert_332'
>=20
> Now look at gcc:
>=20
> It preprocesses to:
>=20
>  do { extern void __compiletime_assert_332(void) __attribute__((__error__=
("BUILD_BUG_ON failed: " "p4d_index(EFI_VA_END) !=3D p4d_index(MODULES_END)=
"))); if (!(!(p4d_index((-68 * ((1UL) << 30))) !=3D p4d_index((0xffffffffff=
000000UL))))) __compiletime_assert_332(); } while (0);
>=20
>=20
> Resulting asm:
>=20
> $ grep __compiletime_assert_332  arch/x86/platform/efi/efi_64.s
> $
>=20
> That thing has been optimized away!
>=20
> Which means, those build assertions are gone on gcc and they don't catch
> diddly squat. I sure hope I'm missing something here...

That's how build-time assertions work: they are _supposed_ to be
optimized away completely when the assertion is true. If they're
_not_ optimized away, the build will fail.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YAHo3ZEMu%2B6mESZA%40rani.riverdale.lan.
