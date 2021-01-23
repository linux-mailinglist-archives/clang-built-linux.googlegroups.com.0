Return-Path: <clang-built-linux+bncBDY3NC743AGBBA5WWGAAMGQEIHVV3AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 67120301724
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 18:21:09 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id v14sf5887625pjt.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 09:21:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611422468; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qd8qt1feKwTpHNNlS4xfSstBegPZ8zVZcpjKrtgpNPCz0ck8616kaX1xj4iue/z4Px
         VTaJmmO6jaULht2BEv2tJc2fZ2tfK3g02zrLchYaHa+LJYRzlfhd7uWLtZPjNsp1TWy7
         sH0z22D6c81mud/1UpX/4k1Ib1vWrYEju+2SpdJVh4OuiOgLrlp08w9I/chN9sEQE1qm
         ZtiXkTCAI4A4Jkhas02xDgvzdIbKkEk7mga3Hc54IitaCEdIXafAnVPJ1LZIIKY+5NHa
         +KpqLcAv4Zbva0ezA9UvQ9hIDWacy3tTWUHBvESOH8OBuE94tqwS2HYphkyPeqV3NegZ
         xSsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=q1FCwQq8x4O8zzMiX2NatcpdngOaHjJv4G+eFBBjRfU=;
        b=CQetXQEEh0DEEQCTO9kSsDsPaaRGEwq7hh5jujGI2D9ZUj7hDWfKmiYN4Uax9RVHY1
         1gmPpaCJkqyjJLTOafVrAjqBB8ERakU5i18BM19JRd6vvYlyiswUmpEYeyt1xKAN2bWt
         pm0PVQCNor0WbwY6W23tyNpozHGr+uFla4H70KdKwIx+Y1lWD1TDNkyMc1S13jFBOf2S
         XhuXYW25QnSyl8/gVE2QeQkTKdZoFbk6xCFVKmTI9L/YqM1nCYgLCNVcM1nOamF1aizH
         KTJmhT3cfpXPvDtQrGgZFJ9ITxFkdssEdXssRmC2UzbCUaL04aKqxoLfkzVtUBBp014t
         Sb5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.69 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q1FCwQq8x4O8zzMiX2NatcpdngOaHjJv4G+eFBBjRfU=;
        b=H/bqMQwNGLW6yAqC9cF/Nd/1hObjUZfguS8Zf5kHWmq42QYhfIlxT7SKfi2fxYR37x
         HNW2eRcG2og5+oswrm/JCEIKD8/IvFLyMEwxBsz5+gFKkSVsDlKdL8Zl9yQaL4hs2IZK
         w0QVEQyVIeMRLP0ZzREsIHp3uwaomuunAH/Y0S55JKkDMKhNKrsHE+D+Zc8lJGYk5mdg
         OdLedMxHjEupq7dVEi9ivQOmSCetlHSrpcy25Gd1vnlttQ8PBht41ieM4zwckvbSVu4D
         B+VofgWzslAqaUwb/I3MBUQSJAGPGSCgoBwcMmM9w+1yEoNJBda/KwbD929ekI7x3noV
         7B1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q1FCwQq8x4O8zzMiX2NatcpdngOaHjJv4G+eFBBjRfU=;
        b=TeuWcwhB5UpBhGqF1xI/0rTlNo33WW89OiA0PEJS6wElcgy/+HgrLZ83/wLuqvRa61
         Qho2G0L4blkYKm6Xcye/jNPiBLsonaietZKdKL/5kJne6LjwMRzXtOatIyQfTM5ETo99
         UXkirC58SoWpaeAivnbf4ZANnmYdqed5djJmHgMoVs6FjsnLFegR3+fNIOWFQhLPwXDJ
         8c2+SudJRj5B73K69WkJ1KEAjiF63CwjNsi0JHT2jhpP0cvbbigm1k+rl78xfiTWylet
         a84XDTIAGm9N0aizdToPW/T554HO17So3/atOPtm2RP3lwp/NRxc8oz0mVU3NNJH4+CN
         ZOTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306Ey2nxZbhdsM0DzlHD/+Zmxxznh9hpCro7TINU1JzbVCVSDHJ
	EtBmTD2O9LGiPgfnKR+cOus=
X-Google-Smtp-Source: ABdhPJxKVZyfayyvnAVccYkmAjKOmxfEh7N1cq174IHOusKCJfZHAbBwEZ8TGma+fQcH7hoYKj678Q==
X-Received: by 2002:a17:902:9309:b029:db:c725:d19c with SMTP id bc9-20020a1709029309b02900dbc725d19cmr11194249plb.39.1611422467614;
        Sat, 23 Jan 2021 09:21:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:550b:: with SMTP id b11ls4820349pji.0.gmail; Sat, 23
 Jan 2021 09:21:07 -0800 (PST)
X-Received: by 2002:a17:90a:578a:: with SMTP id g10mr2425691pji.74.1611422466929;
        Sat, 23 Jan 2021 09:21:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611422466; cv=none;
        d=google.com; s=arc-20160816;
        b=e8vCjEsr8DpM8dYSEsZgPs9s0b7m8hzjC1MCSiA9cQTW9KU3x4VftzsBEPN3Tnz+zP
         ca/bDAIgpWRhHL+rEHbNyz1vP/6oWsLSBu0re7kl3V/B2+n/mtOBl/zXJb/0/Z+UaO+q
         1ZE5nWKbvokwx7G4xVAcE29Eq1UdfLyTpnck1Uvn36JlsmhM07Mr5RkYEnxhuWn6hjkg
         9+G0x4V6M4WnDJZrShHpI9kTiXfsKjnLnDW2/0S3VQT4ZfFWkjaAa0jzU7NSZZBtbcA/
         CSeyAxG4c6Jz5YHoR50g3MnnqKZTWAPVyrTOxQ4HdUszocaFVHH08BFdBTqwgXWv/TUv
         Lq3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=p0+cHc/Acx9yyMKaK3OUdmCp4323H23lXOYfG/B3zHQ=;
        b=IyIRERLXXGnDU+abxFnt9YiKCnIhz/mdO6O6av2lGWcbyZkQtFbr8R/IwKHewpqPw5
         ZH1coSCRDDkzq96B/SZ78h2m26vV1kpMbc/askQuiLMwsvIZHapclbmZgiLfiLylqhIJ
         BOjDg/3oxXpS9U1dgWVjoLyi7rx6ixfd6QW3flzTVnnpW632wZmlLRuRk2V08Nu1DvHF
         oV52+n4pcpdAJvgCD9r9ECw4ho86r6ke1P8iyRWLPow8JP+gUd4tDrlnusaVkX0vSTSJ
         UpawONnjTS/skWOEGBFZ5q9BowizjbybTGlsIZG7kovTWEE7xGTU8/06YD29XJqG732z
         bCzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.69 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0069.hostedemail.com. [216.40.44.69])
        by gmr-mx.google.com with ESMTPS id a1si550390pga.1.2021.01.23.09.21.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jan 2021 09:21:06 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.69 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.69;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id 95799837F24F;
	Sat, 23 Jan 2021 17:21:05 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:334:355:368:369:379:599:800:960:967:973:982:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1719:1730:1747:1777:1792:2393:2525:2561:2564:2682:2685:2828:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:5007:7514:7652:7875:7903:8784:9025:10004:10400:10848:11232:11658:11914:12043:12297:12555:12740:12895:12986:13255:13439:13845:13894:14181:14659:14721:21080:21324:21433:21451:21627:21660:21939:30012:30030:30054:30070:30089:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: sheet19_41034fd27576
X-Filterd-Recvd-Size: 3077
Received: from [192.168.1.159] (unknown [47.151.137.21])
	(Authenticated sender: joe@perches.com)
	by omf15.hostedemail.com (Postfix) with ESMTPA;
	Sat, 23 Jan 2021 17:21:04 +0000 (UTC)
Message-ID: <d5eacb78bd354d26725c34d887a75bf1e8f27a04.camel@perches.com>
Subject: Re: [PATCH v2] checkpatch: add warning for avoiding .L prefix
 symbols in assembly files
From: Joe Perches <joe@perches.com>
To: Aditya Srivastava <yashsri421@gmail.com>, linux-kernel@vger.kernel.org
Cc: lukas.bulwahn@gmail.com, dwaipayanray1@gmail.com, broonie@kernel.org, 
	ndesaulniers@google.com, jpoimboe@redhat.com, 
	linux-kernel-mentees@lists.linuxfoundation.org, 
	clang-built-linux@googlegroups.com
Date: Sat, 23 Jan 2021 09:21:02 -0800
In-Reply-To: <20210123151405.26267-1-yashsri421@gmail.com>
References: <bd560a8e-7949-933a-e4a9-508cb42c2570@gmail.com>
	 <20210123151405.26267-1-yashsri421@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.69 is neither permitted nor denied by best guess
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

On Sat, 2021-01-23 at 20:44 +0530, Aditya Srivastava wrote:
> objtool requires that all code must be contained in an ELF symbol.
> Symbol names that have a '.L' prefix do not emit symbol table entries, as
> they have special meaning for the assembler.
>=20
> '.L' prefixed symbols can be used within a code region, but should be
> avoided for denoting a range of code via 'SYM_*_START/END' annotations.
>=20
> Add a new check to emit a warning on finding the usage of '.L' symbols
> for '.S' files in arch/x86/entry/* and arch/x86/lib/*, if it denotes
> range of code via SYM_*_START/END annotation pair.
>=20
> Suggested-by: Mark Brown <broonie@kernel.org>
> Link: https://groups.google.com/g/clang-built-linux/c/-drkmLgu-cU/m/4staO=
lf-CgAJ

Please do not use groups.google.com links, or if you must, please
use links that are readable.

For instance, this is a better link as it shows the context without
struggling with the poor interface:

https://groups.google.com/g/clang-built-linux/c/E-naBMt_1SM

> Signed-off-by: Aditya Srivastava <yashsri421@gmail.com>
> ---
> * Applies perfectly on next-20210122
>=20
> Changes in v2:
> - Reduce the check to only SYM_*_START/END lines
> - Reduce the check for only .S files in arch/x86/entry/* and arch/x86/lib=
/* as suggested by Josh and Nick

I think that's unnecessary.

> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
[]
> @@ -3590,6 +3590,13 @@ sub process {
> =C2=A0			}
> =C2=A0		}
> =C2=A0
>=20
> +# check for .L prefix local symbols in .S files
> +		if ($realfile =3D~ m@^arch/x86/(?:entry|lib)/.*\.S$@ &&

Using /.S$/ should be enough

> +		    $line =3D~ /^\+\s*SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.L=
/) {

This might need to be

+		    $line =3D~ /^\+\s*(?:[A-Z]+_)?SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\=
s*\(\s*\.L/) {

> +			WARN("AVOID_L_PREFIX",
> +			     "Avoid using '.L' prefixed local symbol names for denoting a ran=
ge of code via 'SYM_*_START/END' annotations; see Documentation/asm-annotat=
ions.rst\n" . $herecurr);
> +		}
> +


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/d5eacb78bd354d26725c34d887a75bf1e8f27a04.camel%40perches.=
com.
