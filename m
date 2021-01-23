Return-Path: <clang-built-linux+bncBDY3NC743AGBBO45WKAAMGQEHHKZJCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D8E301874
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 22:01:48 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id w9sf6133984pjh.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 13:01:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611435707; cv=pass;
        d=google.com; s=arc-20160816;
        b=wORu23MlziUlRNCa5T63VFUnN8Pzi0kmHnX1+tqgMw/fXerqGBjT+aOAVlzUby4dze
         SIl9bci9TyuL15TVdWfIarbpad1zmhZ8Qq1XEu6bCDOHQSDou8JT5wYoQFkLVyHpjb37
         6aaa9vMFzMUN5jOijIvWK5+0DIxTDKo4mMjN6V2k+QUxAGxq0lhfOmjjuDLN0oO3o587
         eFldDJdeINLjaSJ7X9rYXrOhsMIl3XiKbDnsjS1FC7iH1QIDYeadRAS8+RJD5LAx1Cws
         aCODEYmmP++OW/oAYhq/rU3ZXlVPWuLJPQXbniR0GenoRgBDDo1Xcql5oomZAYcp9VhC
         lAGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=Xub8nKCFR7QC52UDph7aOc9w4XmBySJEJkU5CdrPvz4=;
        b=vKZ5npM8SYDQrE9myW0kISV5HtyyAGHK6tg7Dc98uvBHGJIU+2rYoFniwxRSGGz8tc
         UOXuX2Jy4m1wl9ygNYrkhxtHQ5eZJYnT1OQU9Vn6xDZ5Lim/K280cTNKrZME6vv4YkDi
         a3KUVhDRQ5VXT7JOc+Gu0wTAvVn02cjW0ocM8a9Mrr+LrDZLnGVaOBcaou4ncs4pKlMH
         9B01uTJqTIoFk4B8EycVWlki+JRVzVKP76Nn2taDdY6OpNnDE4HDtdKwDtrOj+jYnzZ8
         OTlskcMctljuKb2Kr3H2jqmkn0EsK/Aue4dDEwEsncyOkfZ/7AkJmI1XxUxrPzodt+ET
         lZnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.36 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xub8nKCFR7QC52UDph7aOc9w4XmBySJEJkU5CdrPvz4=;
        b=s9H5UmpN7OhqAMsczaDyHBN7eJljbN/iHd8atDCuy+FMe4/MT+Cza2wdXIo8JoDr/B
         f97gHOPQ3o+I8Wb3E9lXfvoDu/aU9x5wyaRg3/EbYyDQW+V5NZM3zolC79rEXnsYameU
         gwZxV3HJpUt1yGzFSX1dUiQM/jXP7wsflhDiLrjeMGEARyHRs5ch57n6NpnUyv5mZHGw
         nXs98rfClrDqlU6TKXbwho8uXufiZSKjOUx5tOkjEULAoSHv0C0ro6nVUdvVOfyd4rMn
         DrvsqXmBjuD5K4c6MAOjNGo08abq7mXLwYiLiLjs6IcjD1ttIezHnK0UH85b2asVF595
         i1xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xub8nKCFR7QC52UDph7aOc9w4XmBySJEJkU5CdrPvz4=;
        b=LtXzjno2F8d8wNOIoK2P5eQmc+lc8iaHpgZH+Y85Yf1FE3p8WsmQ8E/kTyuN82EzGc
         XS6DBhuwMmG7VFICJe7UKrFYzL/z2ILzloc8tZROU9wpvQMnRAkA+14YWqNOoQJr7A1T
         m+1E7sImCpxK4GS6wKWe4VjJWIx3cILyq6s5CJfJmiWe0yoPBJFZ4zk8282GXnzQXdXI
         C+X8sq+DevsvBPiQlR8LJN3TfdJWmf0T2CTQm2BKKqL8lyT/urQaLrVY0M4dYMOs2A15
         8zK7SSbEeaXgGV4kxfeA3+puaAvU5Y7RaCmDXI8gO8RT9rA4CABKnHGLkZHnNo3y5d6B
         3YxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318NHBtq+3SRhs1ILymUlh6ZVya0CiNLVL9uTil2aHuoPUcJa3y
	oEdUokFACMBsGxu9i79E5gM=
X-Google-Smtp-Source: ABdhPJybf3WNZ0c2pPzMLEvv/VFACvc54kOIBbfJfL0SfjqzJHOlrkOvuJ4niKDmN2nyT0UzbEYaxw==
X-Received: by 2002:a17:90b:107:: with SMTP id p7mr13018063pjz.110.1611435707559;
        Sat, 23 Jan 2021 13:01:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5803:: with SMTP id m3ls3294558pgb.3.gmail; Sat, 23 Jan
 2021 13:01:46 -0800 (PST)
X-Received: by 2002:a65:434a:: with SMTP id k10mr11154545pgq.98.1611435706806;
        Sat, 23 Jan 2021 13:01:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611435706; cv=none;
        d=google.com; s=arc-20160816;
        b=Z0J+OlOlCc7nQSLwshhUQvXq812dquriUc3+FtThg5/kMjtNSghSscjYnoYSYHxUrM
         ceBrvNL83b9856e3/5tfFh6cV2ownKbKBAYPsRpzt8c/Z+J1rCes2hqU8E4dd58nwd0h
         jEpvfbTuoUpa5YBEfMh0aFKmdUtAlqjYOn8x2sgpAchcQRADXeYXu6oWmWyC/Me5g7uU
         qVFcyj9fJV+1/muck85KHShYo5hPLwPcor54d3iG4DtWXRnAmIr2i8i9xB7S7MeXDX/w
         ZJHEryNn+VWHcqIfn7owjH7W+CTTkk52fPu+Kpg+W04v7r0H2n+gw930/NtjtzLZjEUS
         55YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=1V/Z04geq9UEMcTNquzNtWjyXpMhIDcrggfQt+kTLuo=;
        b=v1f66HwaoNAIqlhZjiemUHVan/CKyLgv/cU1NE1V2IX/gAwKVnx9W+0Coipje6v89y
         Q+qeBNFxynKkI5v6YfsPq/aCVMFX2pEGlvButjtu+hx/SdjR0YRmzAfnB/YADXKDuobB
         yn18UayTatGeUutoCbgmC6DKRWlMn/BA4dTZdkBz7C54UJk6yk0BwSj1JtI6aI6peyMB
         2ztb0tmuProM/J8k6VT54wB00C6SgfkyNKu8dBkTh/rEBY4eo9EXVVVUBhSHV0ZrkeRm
         B4S7KjKHx3S90VkiRbn3/VcfKDJkR945aF5qY4sSrpDanaIyOcPQk1SqRWjgc7n8k5cr
         Raxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.36 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0036.hostedemail.com. [216.40.44.36])
        by gmr-mx.google.com with ESMTPS id jz6si803355pjb.1.2021.01.23.13.01.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jan 2021 13:01:46 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.36 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.36;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 8D756100E7B42;
	Sat, 23 Jan 2021 21:01:45 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:334:355:368:369:379:599:800:960:967:968:973:982:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2525:2560:2563:2682:2685:2828:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:5007:6117:7514:7652:7875:7903:7904:9025:10004:10400:11232:11658:11914:12043:12297:12555:12740:12895:12986:13095:13255:13439:13894:14181:14659:14721:21080:21324:21433:21451:21627:21660:21939:30012:30030:30054:30070:30089:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:4,LUA_SUMMARY:none
X-HE-Tag: bait30_0e0497e27577
X-Filterd-Recvd-Size: 3210
Received: from [192.168.1.159] (unknown [47.151.137.21])
	(Authenticated sender: joe@perches.com)
	by omf07.hostedemail.com (Postfix) with ESMTPA;
	Sat, 23 Jan 2021 21:01:43 +0000 (UTC)
Message-ID: <a7329e5d5661ed6478a7eb33db854a6357447c16.camel@perches.com>
Subject: Re: [PATCH v3] checkpatch: add warning for avoiding .L prefix
 symbols in assembly files
From: Joe Perches <joe@perches.com>
To: Aditya Srivastava <yashsri421@gmail.com>, Andrew Morton
	 <akpm@linux-foundation.org>
Cc: lukas.bulwahn@gmail.com, dwaipayanray1@gmail.com, broonie@kernel.org, 
	ndesaulniers@google.com, jpoimboe@redhat.com, 
	linux-kernel-mentees@lists.linuxfoundation.org, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Date: Sat, 23 Jan 2021 13:01:42 -0800
In-Reply-To: <20210123190459.9701-1-yashsri421@gmail.com>
References: <f23f4003-0017-d52a-39b9-2737e60182bb@gmail.com>
	 <20210123190459.9701-1-yashsri421@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.36 is neither permitted nor denied by best guess
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

On Sun, 2021-01-24 at 00:34 +0530, Aditya Srivastava wrote:
> objtool requires that all code must be contained in an ELF symbol.
> Symbol names that have a '.L' prefix do not emit symbol table entries, as
> they have special meaning for the assembler.
>=20
> '.L' prefixed symbols can be used within a code region, but should be
> avoided for denoting a range of code via 'SYM_*_START/END' annotations.
>=20
> Add a new check to emit a warning on finding the usage of '.L' symbols
> for '.S' files, if it denotes range of code via SYM_*_START/END
> annotation pair.
>=20
> Suggested-by: Mark Brown <broonie@kernel.org>
> Link: https://lore.kernel.org/lkml/20210112210154.GI4646@sirena.org.uk
> Signed-off-by: Aditya Srivastava <yashsri421@gmail.com>

Acked-by: Joe Perches <joe@perches.com>

> ---
> * Applies perfectly on next-20210122
>=20
> Changes in v3:
> - Modify regex for SYM_*_START/END pair
> - remove check for arch/x86/entry/* and arch/x86/lib/*
> - change 'Link:' in commit message to lkml
> - Modify commit description accordingly
>=20
> Changes in v2:
> - Reduce the check to only SYM_*_START/END lines
> - Reduce the check for only .S files in arch/x86/entry/* and arch/x86/lib=
/* as suggested by Josh and Nick
> - Modify commit message
>=20
> =C2=A0scripts/checkpatch.pl | 7 +++++++
> =C2=A01 file changed, 7 insertions(+)
>=20
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index 7030c4d6d126..4a03326c87b6 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -3590,6 +3590,13 @@ sub process {
> =C2=A0			}
> =C2=A0		}
> =C2=A0
>=20
> +# check for .L prefix local symbols in .S files
> +		if ($realfile =3D~ /\.S$/ &&
> +		    $line =3D~ /^\+\s*(?:[A-Z]+_)?SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)=
?\s*\(\s*\.L/) {
> +			WARN("AVOID_L_PREFIX",
> +			     "Avoid using '.L' prefixed local symbol names for denoting a ran=
ge of code via 'SYM_*_START/END' annotations; see Documentation/asm-annotat=
ions.rst\n" . $herecurr);
> +		}
> +
> =C2=A0# check we are in a valid source file C or perl if not then ignore =
this hunk
> =C2=A0		next if ($realfile !~ /\.(h|c|pl|dtsi|dts)$/);
> =C2=A0
>=20


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/a7329e5d5661ed6478a7eb33db854a6357447c16.camel%40perches.=
com.
