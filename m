Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBXGV66CQMGQEO2JU44I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E0A39D904
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 11:46:05 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id k10-20020a05651239cab02902cf19c03142sf6057513lfu.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 02:46:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623059165; cv=pass;
        d=google.com; s=arc-20160816;
        b=NIm+YEnw1Xyz1zX6hKrptiZZCuPaq3DM7pdU5UTsB806EVCGyWrz7jrAvbsKWjTB80
         o1BVwAEbCukOtUxih3KSpDXjYprtKwnk/AgzJcrFvWXOmm9zynzpftBQUyj9rSKroKDU
         QTYiQRVcRUkNsnzSzuBL+djePIBPDV9V0M7qLJdLKed+M9isXd8IGDUzqnSKsSIN9k3J
         ep92F2AN1BRgZhQ1BvTlOuzkawn9enkjxEHA8qj1Sx4CcCzD+AwLH/q6AvSjshgUp3s9
         BvOW4acdJlHOcA3mWH1+sIrpJBdyvADdxRY5Iwt3djDE/HVwaJK7xoaTJ1wEmj8n1o8J
         BGXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=set5rTGgb//LYTIRG/6/GCVE4EC4yyIJrU8cgugD/3M=;
        b=SM8SNTfBg3gC/HJqcxwXPuP+vvBXpPEJRZEoqI15yRvldxbj2mtx9Cq19usQt6zhW3
         LXvfT593VIA6bZoOiBzwLI3Sslokkng17sIZTS6ixQHMtaca7WH/pXWuAMt2G/cakIUZ
         1oHD8PSMquP+sc/gRM/oMrqjBVsmMTJsbWCXFty6VAakXlgGakfmMjrod98mM8alMFWz
         XYcPV7jTbVje2gfHKqqvgUy57pHVLKXzgqWfFJv616ltVdU3D8VWVU/C6d44uCwKF/WE
         SYAuEm9T6nQoURmR5cZF5ktdPzimdoXmzara3gRbo003nbYH1tI/u0ITob4oNOD4t5fp
         4Mxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=KsNviXN3;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=set5rTGgb//LYTIRG/6/GCVE4EC4yyIJrU8cgugD/3M=;
        b=URSXXCuUK2nykFCHvutjBg4JKH10W4qgavQYL5fCTRMdn2qlzSTRdIO3ZAPJMJQAUs
         1Ap98CqjN9ULRb1hDE5Nb3dpoY5bbQ/TzRJTx462n8Dp91GEhSo6katDPMYMuTSGOtjf
         FlcjGCfqptoYY5Nm5VuNUPwdD9J0BGN0l/fF5/fLWLAi9BmK3toal1F98L6AKXklT1+w
         sw4IoL6ShS5K8WHt5gZvoi9TQcey3bN8iuI2KgcrVI2XvEb2MuEALLnii/mBkb2Y1wc8
         19U5l5KOIHeFElA+1u747YVO8oMwu9g2FqV5GZcv9txQEo/9X+Ourip0kApNhWwEqXCq
         +ZaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=set5rTGgb//LYTIRG/6/GCVE4EC4yyIJrU8cgugD/3M=;
        b=QPJSjESN8HskWGazH8oO8MAX7NphbvlxfdlDxQzfX1zN+/VRhqIO7gjDL53KB/918H
         HmOfg44G9RyGw+BjdFwPtvNFVCHJwldVaaX0BmP+A9LdkZXMg1bhXmwGxtElg57yn9v1
         X1/kCC2GUo8TqytoHS6ujTQQgP60vDnFl8FHorc+KL8PGoFriJXyMANWfGWQsdCa8oQK
         gcE0mEB7JS/D7668f+GzKdkAqNWtOLnUkJcTb+JUyMRHU6ono/wk3WjQSffIa3mDK/2l
         shro8NW0nXpgUPBx61Evyoaiv0HxrSTFcKw7QFCdu2RGY/oZvN1rITbPyliy2K5njlqJ
         J5TA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lVlfTF/POBNARr7GGNskRzYcAs3oCMSe6JSWV/B/UhH9c05Lf
	8ygp/ULuwQuyhB72jaRhK1Y=
X-Google-Smtp-Source: ABdhPJyQsSx8gN1f+fxGZTPrKSYwlGJMBxuc+w6Cpl9wQimwOvhIFXR+dg4LeIuU4jRp8cuyYaNDjQ==
X-Received: by 2002:ac2:5a0e:: with SMTP id q14mr11210812lfn.647.1623059164891;
        Mon, 07 Jun 2021 02:46:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:39d:: with SMTP id e29ls774057ljp.1.gmail; Mon, 07
 Jun 2021 02:46:03 -0700 (PDT)
X-Received: by 2002:a2e:9189:: with SMTP id f9mr14655542ljg.353.1623059163778;
        Mon, 07 Jun 2021 02:46:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623059163; cv=none;
        d=google.com; s=arc-20160816;
        b=t89+J35ioca0lI6RRGVW1EPfirsMIoqBH5BPLF7QDoOfMCOOtXncDdrsBYncOMZtDp
         I9G4YwfiZ55mvEFaF+OUsIO24hxn4melMuaOPzzph+huC1iOMBtc/yLNLsk1lYKpSYzA
         2+kGweFvTsiJLjZ13xwGBRYfhtg64pK4d/rgqyvNcTbBRExg6X6AOZDkTi0Vhv6UYg1N
         xs3UuDNCbYNpN/RuBTGONExEPnq5nAZGUv4lqXKrc0NXFheyfqb+gylDVqs+TQV3CNFW
         N6cDk/KBpoTfi3s64lAHFTs8GYiZa7RdwtkFZX2JL9+yUMHSkd07iNk7umj0QtNFrmvi
         QMoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=XvU/QbyJGn8lDvoM8QDZ+4TpGmjEvYLZdccDnBNTbJM=;
        b=vjOpcyD6kKUj6KZr3OPrgB3l2A1z9OO6ltbm3CFPQ400vqN+PdXIOMrsepDEfV2I3J
         bB2oDHXxJNke6BlUVLBmLXtE/jyMPCWXvoyd31UFDAzPjH3nsE932xwQhhxlhqCRDKca
         5sTBRKtehK3jqMXPiOSXIMjqOtemJ2q4b7Y1jDF7dIQMtGqhvHLlnuSphEo132wKqCvs
         pcrlT6MXtLXijs/ljDU94dhV/yuvayhmP7nwEF8qeD54Bnhul+1q9YIUEZANVTTqHSmw
         KCwo8lGftSyv7CrNP6v/G+KaGOqaoDUwzV7lAQl4CDoO6q/egk+nPl4s8JTRYitosCsY
         ZS+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=KsNviXN3;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id a21si631723lfl.10.2021.06.07.02.46.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 02:46:02 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqBpR-004LRQ-54; Mon, 07 Jun 2021 09:46:00 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 018C630018A;
	Mon,  7 Jun 2021 11:45:58 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id D0C462CEABC10; Mon,  7 Jun 2021 11:45:58 +0200 (CEST)
Date: Mon, 7 Jun 2021 11:45:58 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>, lma@semihalf.com,
	Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>,
	lb@semihalf.com, LKML <linux-kernel@vger.kernel.org>,
	mbenes@suse.com,
	=?utf-8?B?UmFkb3PFgmF3?= Biernacki <rad@semihalf.com>,
	upstream@semihalf.com,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
Message-ID: <YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net>
References: <CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com>
 <20210604205018.2238778-1-ndesaulniers@google.com>
 <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
 <20210604235046.w3hazgcpsg4oefex@google.com>
 <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
 <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
 <YL3RQCJGIw9835Y1@hirez.programming.kicks-ass.net>
 <YL3lQ5QdNV2qwLR/@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <YL3lQ5QdNV2qwLR/@hirez.programming.kicks-ass.net>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=KsNviXN3;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Jun 07, 2021 at 11:22:11AM +0200, Peter Zijlstra wrote:
> On Mon, Jun 07, 2021 at 09:56:48AM +0200, Peter Zijlstra wrote:
> > On Sat, Jun 05, 2021 at 06:58:39PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng =
wrote:
> > > On Sat, Jun 5, 2021 at 3:39 AM Peter Zijlstra <peterz@infradead.org> =
wrote:
> >=20
> > > > I think you've absolutely nailed it; but would you have more inform=
ation
> > > > or a code reference to what you're speaking about? My complete ELF
> > > > and libelf knowledge is very limited and as demonstrated here, I'm =
not
> > > > at all sure how all that extended index stuff is supposed to work.
> > >=20
> > > The section index field of an Elf{32,64}_Sym (st_shndx) is 16-bit, so
> > > it cannot represent a section index greater than 0xffff.
> > > ELF actually reserves values in 0xff00~0xff00 for other purposes, so
> > > st_shndx cannot represent a section whose index is greater or equal t=
o
> > > 0xff00.
> >=20
> > Right, that's about as far as I got, but never could find details on ho=
w
> > the extension worked in detail, and I clearly muddled it :/
>=20
> OK, so I'm all confused again...
>=20
> So a .symtab entry has:
>=20
> 	st_name  -- strtab offset for the name string
> 	st_value -- where this symbol lives
> 	st_size  -- size of symbol in bytes
> 	st_shndx -- section index to interpret the @st_value above
> 	st_info  -- type+bind
> 	st_other -- visibility
>=20
> The thing is, we're adding UNDEF symbols, for the linker to resolve.
> UNDEF has:
>=20
> 	st_value :=3D 0
> 	st_size  :=3D 0
> 	st_shndx :=3D 0
> 	st_info  :=3D GLOBAL + NOTYPE
> 	st_other :=3D 0
>=20
> Per that, sh_shndx isn't >=3D SHN_LORESERVE, and I figured we all good.
>=20
>=20
> Is the problem that .symtab_shndx is expected to contain the exact same
> number of entries as .symtab? And I'm adding to .symtab and not to
> .symtab_shndx, hence getting them out of sync?
>=20
> Let me try adding 0s to .symtab_shndx. See if that makes readelf
> happier.

That does indeed seem to do the trick. Bit daft if you ask me, anybody
reading that file ought to have a handy bucket of 0s available, but
whatever.

---
 tools/objtool/elf.c | 25 ++++++++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
index 743c2e9d0f56..41bca1d13d8e 100644
--- a/tools/objtool/elf.c
+++ b/tools/objtool/elf.c
@@ -717,7 +717,7 @@ static int elf_add_string(struct elf *elf, struct secti=
on *strtab, char *str)
=20
 struct symbol *elf_create_undef_symbol(struct elf *elf, const char *name)
 {
-	struct section *symtab;
+	struct section *symtab, *symtab_shndx;
 	struct symbol *sym;
 	Elf_Data *data;
 	Elf_Scn *s;
@@ -769,6 +769,29 @@ struct symbol *elf_create_undef_symbol(struct elf *elf=
, const char *name)
 	symtab->len +=3D data->d_size;
 	symtab->changed =3D true;
=20
+	symtab_shndx =3D find_section_by_name(elf, ".symtab_shndx");
+	if (symtab_shndx) {
+		s =3D elf_getscn(elf->elf, symtab_shndx->idx);
+		if (!s) {
+			WARN_ELF("elf_getscn");
+			return NULL;
+		}
+
+		data =3D elf_newdata(s);
+		if (!data) {
+			WARN_ELF("elf_newdata");
+			return NULL;
+		}
+
+		data->d_buf =3D &sym->sym.st_size; /* conveniently 0 */
+		data->d_size =3D sizeof(Elf32_Word);
+		data->d_align =3D 4;
+		data->d_type =3D ELF_T_WORD;
+
+		symtab_shndx->len +=3D 4;
+		symtab_shndx->changed =3D true;
+	}
+
 	sym->sec =3D find_section_by_index(elf, 0);
=20
 	elf_add_symbol(elf, sym);

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YL3q1qFO9QIRL/BA%40hirez.programming.kicks-ass.net.
