Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMX2RGDAMGQEGWFWL7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4D43A3543
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 22:59:31 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id f16-20020acacf100000b02901eed1481b82sf411209oig.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 13:59:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623358770; cv=pass;
        d=google.com; s=arc-20160816;
        b=CeHfoATAJrz10R0nSTz/Vk9BX8ldO4YGYvKIZKY/XhltcjBmNMTj7rAjIbIt9Yg9wp
         w85XMxpsktx9iDO0KQh3LJKnOmstROMKiiYZUgSWqJRNIiHFjzL0BQrIRv1xShxFXIqI
         ZWH0wVCxd0KMLzdQ3soLoamT9k3Cm+6NMcFohHpL6P1Fc3W3pjaZBHSmT2dAitYSRo8t
         MxhZkBQyGOA6D9p4q99KCY8kW4DR+R+FnwOm2/kHLaLjvLCNnb2ciEERFIr5Py1/tVp4
         n6iwnP5CHZUyjWJga19i4nu1KarOPcp3mnAgu1B20NhgcBbsVpBVYUSpM1ehpLuo9wUn
         HD6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=7Or8h2mkZeaXBiY/jLrtjH+NwyslkC8dvgqLP8FHCAs=;
        b=fj6qmTeCz1vOI9YxKVgLvFXV0dgB3sCSoqsY9wvxkDG8rbAEDRS/eBEQj5Gw2L2GX/
         3nrDbdc9JaZfQmnip69x3q/dxlFp8omFYeCGRiW4HSbfpB7b7wSdNWGwo/nwea1xK7tt
         yTR0CamFyc7GEztRGTezMPwl9GEtl6twK/bbfGxgp/ZKSAZOIsBk72gorBKMLG93QfMv
         ZanZqJeI9WvKjylvw2bRfutGkZIcdtfZ+TQY3r2imnuakR6yc5CyCCxQKcCGGvZdQEx6
         0cgKEr6+lUMC7o8AUp2KrTawNnpXqSiLArnkepKWFaK4SNixw0dtqSDCMHIxmKcxKuIn
         VksQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CFIPb1n6;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7Or8h2mkZeaXBiY/jLrtjH+NwyslkC8dvgqLP8FHCAs=;
        b=ReFq+ohYce4Utyg3uJK2b3qvEAJDYsUKmdE6KMobSppS/LhhUk2gsY45NbQdN/l4jn
         pIOBCgN6Pwa95rBUYnSLUEMuaRPW1FBsK0ht+ssatFv2Ta9olN/ZY098E8y2hSAqjdUL
         qqf2WHHu75yLog/4CFQVK4UeuGRm7H3bmMhNPbi2cwdqFXB+hvcA09x3zVJvSxZwkOKx
         Gp2mu+jal+FwQXbANJTw7jaQiYHWay+l2WYhJhkp759/DJ9c4Lz5FoQx7cB6bSQy5VDT
         vEr8ozi3cHnobUntlKV4Hia1r2E3Lk2PHfF2jGaaYXzrfClkkftxK6J2c4zb3JvV95ZA
         o84g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7Or8h2mkZeaXBiY/jLrtjH+NwyslkC8dvgqLP8FHCAs=;
        b=c4TqM2ejzYb8LdMml7O04k2KjjrFk6nxZaPe0biUIx7L6UI+DuGQAYMw2OZyd9qoWU
         EIqFY77GP4pbO1yX0q1F1cjTveChfSsJwkGRa8rYZc4xa6H/CED1jqHUxQLCSwwlp+ck
         sqvM5HDZY2MxaN2NpQag/81/vV1Gnk6SmMF9oFrvzd82Cze+7P6LPHOz+7dqYAHMXsMp
         Lt8i6xvPti3WBXlovswa+VQ4lECEDql7gUqjFh98TUjSW01mD3+wcQ4J+BqxRzDj5d+7
         1Eb0b4dE+Cdn7d+GBmj38b0w835mWUl+W924r+nAX2g3xVHA4CAko7bgcvQJL9Ycmz4p
         LrRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315tZnhY5Tz1e/QiZGAWDc7hkJwjBx+gXacL13Pop3aWhAqvjJY
	mlx9+Mp9Gls1oGrlYzj5NWA=
X-Google-Smtp-Source: ABdhPJxpiBJOQsgulcufpyWwVQBR3EOKohGA2r5wT3FHNwHh8fl6TRZIrEkUgPHcnLbQjcio5JTmcQ==
X-Received: by 2002:a9d:6285:: with SMTP id x5mr251961otk.278.1623358770248;
        Thu, 10 Jun 2021 13:59:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:73c9:: with SMTP id m9ls598798otk.9.gmail; Thu, 10 Jun
 2021 13:59:29 -0700 (PDT)
X-Received: by 2002:a9d:554b:: with SMTP id h11mr259012oti.4.1623358769874;
        Thu, 10 Jun 2021 13:59:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623358769; cv=none;
        d=google.com; s=arc-20160816;
        b=IVcvNXUQK4RGp1R9gfmy3Q/8831mXvSTLwaS8EuBGVZQCZS+Z+1vI7PQT5ijGQzyhB
         eR/B23Hag+2oRdz6nXRkF5yoCy4nEXZ9MySSIcNXJJ18sh0B/8EDaYKyyKlOOMxo/hFY
         jS5s+3SwDuze/p5+Ho3GHxuaQH/qljWGwGhlam17zYdjMBOKN2PNmWDee5sibcQM4Ei+
         ZtwwrVLUi6+VwRxULCagZSvI/bjvUS5szFwxFGuxQCtJiROviJ7RHiuvnp3PrdJnrf72
         eCepQYCNSi7HexlASTVv78swG2JFEXHYq5JPrKdJSySi71qaXXw190TNStu4BIJgDF+1
         +Xeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=quPAbN0ZiAZW4BThk4WkHahKpnK/OiLivClbuPQ78pQ=;
        b=w2y+29LK6tToGGpA1L/BcTqsc63lFM4JWl8doUj7ub5ThzSaJyDt3lpVkSqQ88fgrg
         j2emqJcR6DscitJxetUJ9Xsg6dfyPr+hv2cX2LaUYBuzYr8t5In0fuwwN4BYR62Ij63s
         nz/3KZ5DGJvgLW37NIAXnDFYw71gUsiLeVx0wVh7m0gkQRadKMhqnTSo/yJwVEava9AL
         vAyJrRwnUjZkWig3V1rpjOBlCH9XupOSG2MGSbOvS+m9VxDFZKTq2jrzs8Ms5L4FBtwI
         CuGLQ5Od3YkF+/4ohgli8obnTud83vswKWswIJ6cvpWG+mWhVJG/i1wmcgozfWMf+xi9
         Np8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CFIPb1n6;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d12si34553otu.2.2021.06.10.13.59.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Jun 2021 13:59:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AD09D613B3;
	Thu, 10 Jun 2021 20:59:28 +0000 (UTC)
Date: Thu, 10 Jun 2021 13:59:28 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Jason Baron <jbaron@akamai.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 01/13] objtool: Rewrite hashtable sizing
Message-ID: <YMJ9MGyXHi9Xa0ne@DESKTOP-1V8MEUQ.localdomain>
References: <20210506193352.719596001@infradead.org>
 <20210506194157.452881700@infradead.org>
 <YMJWmzXgSipOqXAf@DESKTOP-1V8MEUQ.localdomain>
 <CABCJKudzC-Nss_LGrpYwRqwdDxeWOf1o6Bvp3J2fBQthEB=WGg@mail.gmail.com>
 <YMJpGLuGNsGtA5JJ@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <YMJpGLuGNsGtA5JJ@hirez.programming.kicks-ass.net>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=CFIPb1n6;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Jun 10, 2021 at 09:33:44PM +0200, Peter Zijlstra wrote:
> On Thu, Jun 10, 2021 at 11:50:36AM -0700, Sami Tolvanen wrote:
> > On Thu, Jun 10, 2021 at 11:14 AM Nathan Chancellor <nathan@kernel.org> =
wrote:
> > > Adding Sami because I am not sure why this patch would have much of a=
n impact
> > > in relation to LTO. https://git.kernel.org/tip/25cf0d8aa2a3 is the pa=
tch in
> > > question.
> >=20
> > It's because LLVM enables -ffunction-sections with LTO, so using .text
> > section size to estimate the reloc hash table size isn't going to be
> > accurate, as confirmed by objtool output with --stats:
> >=20
> >   OBJTOOL vmlinux.o
> > nr_sections: 141481
> > section_bits: 17
> > nr_symbols: 215262
> > symbol_bits: 17
> > max_reloc: 24850
> > tot_reloc: 590890
> > reloc_bits: 10
>=20
> Bah. Would something like the *completely* untested below help with that?

LGTM, thanks for the quick fix!

Benchmark #1: allmodconfig
  Time (mean =C2=B1 =CF=83):     624.555 s =C2=B1  2.089 s    [User: 35109.=
967 s, System: 2146.215 s]
  Range (min =E2=80=A6 max):   623.078 s =E2=80=A6 626.032 s    2 runs

Benchmark #2: allmodconfig with ThinLTO
  Time (mean =C2=B1 =CF=83):     769.959 s =C2=B1  1.819 s    [User: 39692.=
409 s, System: 2308.010 s]
  Range (min =E2=80=A6 max):   768.673 s =E2=80=A6 771.245 s    2 runs

Summary
  'allmodconfig' ran
    1.23 =C2=B1 0.01 times faster than 'allmodconfig with ThinLTO'

Tested-by: Nathan Chancellor <nathan@kernel.org>

> ---
> diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
> index 25f6d293bc86..8676c7598728 100644
> --- a/tools/objtool/elf.c
> +++ b/tools/objtool/elf.c
> @@ -288,6 +288,9 @@ static int read_sections(struct elf *elf)
>  		}
>  		sec->len =3D sec->sh.sh_size;
> =20
> +		if (sec->sh.sh_flags & SHF_EXECINSTR)
> +			elf->text_size +=3D sec->len;
> +
>  		list_add_tail(&sec->list, &elf->sections);
>  		elf_hash_add(section, &sec->hash, sec->idx);
>  		elf_hash_add(section_name, &sec->name_hash, str_hash(sec->name));
> @@ -581,13 +584,7 @@ static int read_relocs(struct elf *elf)
>  	unsigned int symndx;
>  	unsigned long nr_reloc, max_reloc =3D 0, tot_reloc =3D 0;
> =20
> -	sec =3D find_section_by_name(elf, ".text");
> -	if (!sec) {
> -		WARN("no .text");
> -		return -1;
> -	}
> -
> -	if (!elf_alloc_hash(reloc, sec->len / 16))
> +	if (!elf_alloc_hash(reloc, elf->text_size / 16))
>  		return -1;
> =20
>  	list_for_each_entry(sec, &elf->sections, list) {
> diff --git a/tools/objtool/include/objtool/elf.h b/tools/objtool/include/=
objtool/elf.h
> index 90082751f851..e34395047530 100644
> --- a/tools/objtool/include/objtool/elf.h
> +++ b/tools/objtool/include/objtool/elf.h
> @@ -83,6 +83,7 @@ struct elf {
>  	int fd;
>  	bool changed;
>  	char *name;
> +	unsigned int text_size;
>  	struct list_head sections;
> =20
>  	int symbol_bits;

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YMJ9MGyXHi9Xa0ne%40DESKTOP-1V8MEUQ.localdomain.
