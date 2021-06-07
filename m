Return-Path: <clang-built-linux+bncBCS7XUWOUULBBBVM7GCQMGQEER64KCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id E488439E53C
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 19:23:19 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id d1-20020a1709027281b0290112c70b86f1sf2245116pll.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 10:23:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623086598; cv=pass;
        d=google.com; s=arc-20160816;
        b=mtqZo+yAZEDHs6u5p3nIp8CLwpKoOM+dlsoOOcc/E0C3ylaKqVWfg4ukO2jvq2DNug
         8Lv99TQl6O8qfgQn8KyE9tbyQPnF2YMLaWtUBC5c4hE8YGqa4ORmNDJiAsHziAOCpTw8
         jssP7os2gsjiGDrYOMviRxxdxu2Vu9KAXlWZzEVL+o/HmbswXAMZUtO7YR2TIRzjHT0O
         J9sWNZ+4Fjax2yBMtZ0mB3orwkISb7OytxUYkLKacBgjuTv79zyyZXCSCLCsYb7IBjih
         uCi/od3ExvdhH9HthAdWiaPCWJlx0s99mhqvb6JL5W39TfElI8DzqNk6lmXoG3pX4wV9
         94VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=09deoZJXxUkCPkOBo890Sn2mkKNcSTbnvq2EQ+iho9s=;
        b=JdmA8XwLQnevsncg0nPBvOyzcTi5JELuA7pFr3CEhnAZM+LqcggYLvAmvldHiIPyy4
         ZfDBAVHLU05Zs7DpNLMWGtmnTEK5n+p58U+MIWtiU217vPTbXjYBvluKHcp3MxWj8POT
         WPZS9Y3+AoRvfa8iRUcvPfnSLqj2DdXbFLCs1b70Zsl9mosTUZQpIbcgQtMDYqDG9+D4
         TK6VkYgT/YBDw1IaZiR0/2HA8GrDhNMW+gTBMO7T5GYmmkO6qySZgDxYBWv5ye1FVYGa
         mzCHPT9/IPrCrmCw7upYPhylBOlhUWu9UADwgj/SDuR8/uPMEIWCJvBkskMjJLHm3s0E
         IpHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FGdQAr6r;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=09deoZJXxUkCPkOBo890Sn2mkKNcSTbnvq2EQ+iho9s=;
        b=APDWhaVo1UFsfopEsUERfJ8cbwHEcJ90T/Pal2B7JJTq5gPH/QFVDWH1jp8nTfbS9l
         uZGt+46hHhjvaB4REKR3dzdrmX2ig90E49Goob3v/SBJfWcvLqVumS7FitSqNgG/Yw+m
         fo52mcSoxPpBJpX5eXLG3Jvl5Yyh8yEvJXcznrf55uKYv00xYxf7yykkb57DdszP/OKH
         m/vpy2FjvbFgFDVatfJPyodCt1YZQrFYC/eDagH4RnK33TXyzkNWBHLU9Vbda5ZNR/+X
         h0uWmyqopm3x93A7ViQYOz+qXueiRWM3xYFd4akwH4jeO+LoJTNiSQCdtqYTvzX+yzkc
         oJTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=09deoZJXxUkCPkOBo890Sn2mkKNcSTbnvq2EQ+iho9s=;
        b=HAJB2h3Q1eic9gYAeEXpe5J5izWSr9Ifwr5b7egRluizR25mQomv+rBlPpEloD6zq7
         M5OT+uVKkH3j9HWMyAJam/A9GXV2EDGbAVFnuKQXknGLXAVwNAeb4ZGmtnAQAotn5N7v
         GYShMPLpOHe1gwq0LCX6LIoD7laxKY5a5g8BAe8kAcxwCPaxbzUV1voPiHnBEyAXqKyj
         m/JMoNC8cOOSqOjTq83/wxLL3fpObUiGbLkU0QbfChxOFz62Mf/uIEraAZ/jSmmwLz69
         RKP96GU6FFmwQa0S1x492/nSrQ/yWvWiQDGmgC3tckh3N92I3OTCfq44KJ+csO62P5Wg
         EU2w==
X-Gm-Message-State: AOAM532WNcQ9EDyi8w3jwON9Ecmsl/gmeQdn8F19zqF6tcMK0h+uBqYL
	icf6yFnMmMRsuFRquvxHGAQ=
X-Google-Smtp-Source: ABdhPJzBvrbFVenyrL69fllRWojiU0SKxeYAfPo+4VnWY2kwCydjXYTfyDw0BLdfQ1P/cIkp3fM7RA==
X-Received: by 2002:a65:6487:: with SMTP id e7mr18796268pgv.27.1623086598575;
        Mon, 07 Jun 2021 10:23:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b48a:: with SMTP id y10ls8804660plr.7.gmail; Mon, 07
 Jun 2021 10:23:18 -0700 (PDT)
X-Received: by 2002:a17:902:b609:b029:ec:e80d:7ebd with SMTP id b9-20020a170902b609b02900ece80d7ebdmr19257956pls.75.1623086597956;
        Mon, 07 Jun 2021 10:23:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623086597; cv=none;
        d=google.com; s=arc-20160816;
        b=Pqth0+TDYGkKQM9xs5ceFNbZhP25HjAjLYWu/RfvdpoiseOlLZAHIIBTS0vH59zmlv
         LUbemUUZ3ClPf62/8VdUeaAwzs12n8QRznW4VlY1CrA88H1KJwUZkNfk9co5pyZnK1ao
         Dk1PPJB0PB+oMEv14DNa9orXk4DpKrqkTmYF+hHsm0/YvEte47ib7lCDdY4x/HI9kzDZ
         ZRM086va/122hVgJdFXvUKxLSEHRX7iXTVOVyvGH/j+LQuPCZh0vnLr8MAP0ztgfBSAT
         topMfsq+zlQTwPz6O+vbEos+tAs2v04UnZuoAAHWvy9cBn3TfxN4CUn67DQb1QBynJzZ
         7w9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=lzmLs1jCz0nheAy5QcLHpTMKZyU5KXq7lJsvla/Bzqc=;
        b=f0FjYFmMRWxxiRz6m88nPURMZCga8PY+p/JQF74vC2XzUwqdWbpKM3XeyXQ37tAAzI
         3fRhV4UhAPFnG/dFrTL6kMz5DwNoNaZA2ujB8tXgDsQjH0F5PVgONE/QLp34gNTkKoRt
         ucND3Z3ZRKMLhtFUYVDyT8/mnBMDYIvgBIt9vdA+4ofYBQoRJgC93evGVhkiWm4DDt4P
         RnA0xZSEjpa1pVU8xU3eWeHzu9RBH93IEgRFkpFpMQSEv8xY94kBtajBSONVJSr9BIH3
         gXEAG7wvGPNoov7UYVJsNfgYpdjAULNV5O4X08tsx/C4VSxy1OpOuOoGg1no/3xHTag7
         afvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FGdQAr6r;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id t17si915625pfc.4.2021.06.07.10.23.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 10:23:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Received: by mail-pl1-x633.google.com with SMTP id b12so3109765plg.11
        for <clang-built-linux@googlegroups.com>; Mon, 07 Jun 2021 10:23:17 -0700 (PDT)
X-Received: by 2002:a17:90a:ab90:: with SMTP id n16mr168259pjq.223.1623086597440;
        Mon, 07 Jun 2021 10:23:17 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:949b:d340:d21:48a0])
        by smtp.gmail.com with ESMTPSA id d131sm8896063pfd.176.2021.06.07.10.23.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 10:23:15 -0700 (PDT)
Date: Mon, 7 Jun 2021 10:23:11 -0700
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>
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
Message-ID: <20210607172311.ynnrzihgz74vdyjq@google.com>
References: <CAFJ_xbq06nfaEWtVNLtg7XCJrQeQ9wCs4Zsoi5Y_HP3Dx0iTRA@mail.gmail.com>
 <20210604205018.2238778-1-ndesaulniers@google.com>
 <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
 <20210604235046.w3hazgcpsg4oefex@google.com>
 <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
 <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
 <YL3RQCJGIw9835Y1@hirez.programming.kicks-ass.net>
 <YL3lQ5QdNV2qwLR/@hirez.programming.kicks-ass.net>
 <YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FGdQAr6r;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::633
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On 2021-06-07, Peter Zijlstra wrote:
>On Mon, Jun 07, 2021 at 11:22:11AM +0200, Peter Zijlstra wrote:
>> On Mon, Jun 07, 2021 at 09:56:48AM +0200, Peter Zijlstra wrote:
>> > On Sat, Jun 05, 2021 at 06:58:39PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng=
 wrote:
>> > > On Sat, Jun 5, 2021 at 3:39 AM Peter Zijlstra <peterz@infradead.org>=
 wrote:
>> >
>> > > > I think you've absolutely nailed it; but would you have more infor=
mation
>> > > > or a code reference to what you're speaking about? My complete ELF
>> > > > and libelf knowledge is very limited and as demonstrated here, I'm=
 not
>> > > > at all sure how all that extended index stuff is supposed to work.
>> > >
>> > > The section index field of an Elf{32,64}_Sym (st_shndx) is 16-bit, s=
o
>> > > it cannot represent a section index greater than 0xffff.
>> > > ELF actually reserves values in 0xff00~0xff00 for other purposes, so
>> > > st_shndx cannot represent a section whose index is greater or equal =
to
>> > > 0xff00.
>> >
>> > Right, that's about as far as I got, but never could find details on h=
ow
>> > the extension worked in detail, and I clearly muddled it :/
>>
>> OK, so I'm all confused again...
>>
>> So a .symtab entry has:
>>
>> 	st_name  -- strtab offset for the name string
>> 	st_value -- where this symbol lives
>> 	st_size  -- size of symbol in bytes
>> 	st_shndx -- section index to interpret the @st_value above
>> 	st_info  -- type+bind
>> 	st_other -- visibility
>>
>> The thing is, we're adding UNDEF symbols, for the linker to resolve.
>> UNDEF has:
>>
>> 	st_value :=3D 0
>> 	st_size  :=3D 0
>> 	st_shndx :=3D 0
>> 	st_info  :=3D GLOBAL + NOTYPE
>> 	st_other :=3D 0
>>
>> Per that, sh_shndx isn't >=3D SHN_LORESERVE, and I figured we all good.
>>
>>
>> Is the problem that .symtab_shndx is expected to contain the exact same
>> number of entries as .symtab? And I'm adding to .symtab and not to
>> .symtab_shndx, hence getting them out of sync?

Yes. http://www.sco.com/developers/gabi/latest/ch4.sheader.html says
"Each value corresponds one to one with a symbol table entry and appear in =
the same order as those entries."

>> Let me try adding 0s to .symtab_shndx. See if that makes readelf
>> happier.
>
>That does indeed seem to do the trick. Bit daft if you ask me, anybody
>reading that file ought to have a handy bucket of 0s available, but
>whatever.

Does the representation use the section index directly? (sym->sym.st_shndx)
This can be fragile when the number of sections changes..., e.g. elf_add_se=
ction

So in llvm-objcopy's representation, the section index is represented as
the section object.

struct Symbol {
   ...
   SectionBase *DefinedIn =3D nullptr;
   ...
};

In the writer stage, sections are assigned 32-bit indexes and the writer
knows that an SHN_XINDEX for a symbol is needed if the index is >=3D 0xff00=
.

>---
> tools/objtool/elf.c | 25 ++++++++++++++++++++++++-
> 1 file changed, 24 insertions(+), 1 deletion(-)
>
>diff --git a/tools/objtool/elf.c b/tools/objtool/elf.c
>index 743c2e9d0f56..41bca1d13d8e 100644
>--- a/tools/objtool/elf.c
>+++ b/tools/objtool/elf.c
>@@ -717,7 +717,7 @@ static int elf_add_string(struct elf *elf, struct sect=
ion *strtab, char *str)
>
> struct symbol *elf_create_undef_symbol(struct elf *elf, const char *name)
> {
>-	struct section *symtab;
>+	struct section *symtab, *symtab_shndx;
> 	struct symbol *sym;
> 	Elf_Data *data;
> 	Elf_Scn *s;
>@@ -769,6 +769,29 @@ struct symbol *elf_create_undef_symbol(struct elf *el=
f, const char *name)
> 	symtab->len +=3D data->d_size;
> 	symtab->changed =3D true;
>
>+	symtab_shndx =3D find_section_by_name(elf, ".symtab_shndx");
>+	if (symtab_shndx) {
>+		s =3D elf_getscn(elf->elf, symtab_shndx->idx);
>+		if (!s) {
>+			WARN_ELF("elf_getscn");
>+			return NULL;
>+		}
>+
>+		data =3D elf_newdata(s);
>+		if (!data) {
>+			WARN_ELF("elf_newdata");
>+			return NULL;
>+		}
>+
>+		data->d_buf =3D &sym->sym.st_size; /* conveniently 0 */
>+		data->d_size =3D sizeof(Elf32_Word);
>+		data->d_align =3D 4;
>+		data->d_type =3D ELF_T_WORD;
>+
>+		symtab_shndx->len +=3D 4;
>+		symtab_shndx->changed =3D true;
>+	}
>+
> 	sym->sec =3D find_section_by_index(elf, 0);
>
> 	elf_add_symbol(elf, sym);

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210607172311.ynnrzihgz74vdyjq%40google.com.
