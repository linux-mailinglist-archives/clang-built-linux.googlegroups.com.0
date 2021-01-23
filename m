Return-Path: <clang-built-linux+bncBDRJJBNBQAFBBKGUWGAAMGQENVN2H5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F19301797
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 19:25:45 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id u1sf6277350qvq.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 10:25:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611426344; cv=pass;
        d=google.com; s=arc-20160816;
        b=ToqvbEzek1UZ01VEsjkSmoBBae5gCuNJfOveFjppeyfnDaEobg4KbSqdkkoTy6LPmY
         T2hQkKU/MZd54SgPVlPZrK2byP8w5uozExHYcPM7b4LZRHHOIUmF8CzjHRd3X6ExNcLB
         wnAyr/ZHcZXb5seY14BjG2lleycTbrddZJkqHwRIw/Otk9N8s2PwoI04c7zAsuxTUQTr
         z9PkM2M3yu71yVJThKRd/qDASBDuIodFu9r7FO8L/fa3EZPgiX7AU0zmi+wJ0kUsojzE
         YRcgdAGISEJzW5SEW7qI09T9u0cLx47U2iIBGnR/SR+LRYhGzrDEaL+UkFkrb6QoreyZ
         K7pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=l/n1M/JnrK9DdnAJ1HXoRSv3xeUFfy5QjZzipWANKBg=;
        b=GhD4ev9/CQ4vmBJF94SPfZa+N+j42EdaS6Ml4WRsc+bJ5YZifA47X99S2cei/h/pOi
         1iUyR5pTrUSkzI0Y6JxMnPq1ubwuUlT4ZO4SgTbZdJKSjPfCi0Dg+xj5XbA19jTGDwcN
         p4zv1tTz01NxRNdg4UaVSjpSM1y0aq/gby0/JK9thnHRsXz96lLS6+VTK9RxxynQiShZ
         kg4xIbNETWwLE5CUq/ZGZGH9HCCZuRniDpOA8MpwOUrn9ejEGxuEyNMYIXqs/VtHVHPj
         WrswP9HjW1kh9q5/98zkgib4q1RjSk8FWRHmRE3NMGg2635tpn6jotiszhDAt1tvk47z
         N2RQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E0Be+SNK;
       spf=pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=yashsri421@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l/n1M/JnrK9DdnAJ1HXoRSv3xeUFfy5QjZzipWANKBg=;
        b=kJB05/6nwiLMwIWTshuWexgxEijFLZNEUwOdrGa7UokiGyKHqYAXL5pRMNL04cvQH2
         yfPqLo1102avmv1skH0zLcrgB1mtLIYJPqzxBCSf0XE2BkYmarOgQm4OqCD4ou9UKFiS
         wMGH2lj3fGUwa/nH8crlTAkxwX+BzVxlk4oZoPhW3D1CJfDK3iEOAyl2HJzZpV39U5zn
         WwGekjIZtZ7RG+VpTXWUOTTHzelD1bEAMp79ihuwZkvkwH1IDqv6wHVGqkuWT8q12Rot
         w27MGNs7x4aT71cub963y3YVqv31ICBnTyQB1OKyzTcd2/DAeAdGKjndt5akIndmlUTp
         CtJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l/n1M/JnrK9DdnAJ1HXoRSv3xeUFfy5QjZzipWANKBg=;
        b=vU5HRPSykPLehyPdL1aAhbvsLzFQJZjs/qAvzNCPCNymqY3x5jHRmUkOpYvi1m0cQI
         duFEPqpzRhvgjGQMuOQXlnaXpKOReGiRfL9l9qkU54xJiPFTLEIHQ+7DpTm4F4oyHH9N
         onPSCJ9tts2kcs1+XC9G9tVb4OtKLf2+8o/xak4M9BA8lcYsCoC/vbeFga26W7MEMp+4
         50ScbOhLYRKyukBoLX3FRvqh8KJHSrv7lKABe+9azmF8llhLSc1p+zzms8iesw7RuGE0
         uwRejLTi79DpfEz0PrmV8qTBny28XD2ChZrp56wUrdYVDTkwOoz8Bor7raWozUixr8zx
         HF4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l/n1M/JnrK9DdnAJ1HXoRSv3xeUFfy5QjZzipWANKBg=;
        b=VpSV3KpCZ+ahws6A2tK78SUDstAoTYVOzVxgVz/x69TZkPiodj8BqwrnnmfkA96ZpZ
         T9yqHs54AEkk4lWytlH6PGRUZWLGeQ9PH6j2AzLYP+gqyIGo6tcdteQWLRAnqDN+q/qC
         goWNgSwRMYu1smUHA41ztr91xZDTAWRKONC10/CHe+HsWa+0XFclTjnDJxoBUtGg6FPQ
         MNTLZrdmeY3DkFvLNkIf7fDJQOQTSJ/+BoZ6Dj+zaDdIPrXwiscnVRrPsd7s7kvxVQh2
         D6EPmm8Qp7LLlMS+eGihGh8blnfQ3YYwOr2nfGvR1ofTwmnwSwYQyEpCN2i6LZeXBWVH
         miHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533SMd1au1Wc984o6Xx3J2S+NcHUkzjdWyX5bOTC4k50SvEeMiy9
	rwaHr1MVkgRiF6jnG5AP/qs=
X-Google-Smtp-Source: ABdhPJwpa9q4RhuiP6NKLIj2DUb3nPe05X0dV8p/TZehf2tjoRH6woStbwiVn9X0sUjIQqyWDR7PDQ==
X-Received: by 2002:a05:6214:14ae:: with SMTP id bo14mr1361677qvb.16.1611426344164;
        Sat, 23 Jan 2021 10:25:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7cb6:: with SMTP id z22ls349388qtv.3.gmail; Sat, 23 Jan
 2021 10:25:43 -0800 (PST)
X-Received: by 2002:ac8:67ca:: with SMTP id r10mr1428619qtp.267.1611426343868;
        Sat, 23 Jan 2021 10:25:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611426343; cv=none;
        d=google.com; s=arc-20160816;
        b=PehnPmWS/ZqX+vosbqATSyPxLaYE/CBs125f0UW/PH7wcpJ+qr2XcRd7K14DC9cAH6
         A5OqMTl7QvjYSKuEwM4iZY+xMdogSIpXsbOsuuszLrbKEflW7qw6nmW/KQhXhxzijqhk
         61xn7H+ofBboo0rxvFdj59d2EHqId6TWfySMqcU/z+LoUt0f4f/V+PllSOIK2IuL4xWp
         ENOo+Q1L5Obqoz4hnGNnpDCnuzVWmadKwgZ7drR2tfT1oXfuDksdjmUpZ1Zj+rHTAwlC
         LyuWHRzuw1yibIbQPFZUPHrx72rz2T4gu9cyI+blJ6jRxbRuoTkBce0Ie2YpNlqheLFd
         DAvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=IgsmJxNhjM6n7JOSepgWyLYU2D0ed5MSeP1SAOXnnP8=;
        b=u0S7bLxrmw9XAKyqF95VL8qHiNpjT6QsXk55OIOBO+E3ADETfFmSDYT6iB7PNCD5Ok
         y9G2bDy444cjaJhlq7y1JE3Pw6RyKswKNjbZAkYY+cce0SgT+gKMasIlqXwLaFVYIzBk
         q2h/icaqJfCQqcNXWBZxg32ETj8jLdqSCTQDu+mfBEgf9Cax4aLyA5cVc32qzrh7PRjf
         rWXZiTv8VHX1k0DbV24TJqUGp19Wg3kC+j01AiMDATTiGdEkxblBv9ib776NgS0AYb3p
         lPzokhvY9lIC9775oAQIBhXHsWGrpCS8xeMdHSpDlBg5nNYL5pSQnwCDxTU+PxSgx3ci
         7Kkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E0Be+SNK;
       spf=pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=yashsri421@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id a26si213417qkl.1.2021.01.23.10.25.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jan 2021 10:25:43 -0800 (PST)
Received-SPF: pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Received: by mail-pg1-x52c.google.com with SMTP id q7so6122416pgm.5
        for <clang-built-linux@googlegroups.com>; Sat, 23 Jan 2021 10:25:43 -0800 (PST)
X-Received: by 2002:a65:458d:: with SMTP id o13mr10574362pgq.450.1611426342838;
        Sat, 23 Jan 2021 10:25:42 -0800 (PST)
Received: from [192.168.29.245] ([49.36.171.181])
        by smtp.gmail.com with ESMTPSA id a22sm8777677pjh.5.2021.01.23.10.25.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jan 2021 10:25:42 -0800 (PST)
Subject: Re: [PATCH v2] checkpatch: add warning for avoiding .L prefix symbols
 in assembly files
To: Joe Perches <joe@perches.com>, linux-kernel@vger.kernel.org
Cc: lukas.bulwahn@gmail.com, dwaipayanray1@gmail.com, broonie@kernel.org,
 ndesaulniers@google.com, jpoimboe@redhat.com,
 linux-kernel-mentees@lists.linuxfoundation.org,
 clang-built-linux@googlegroups.com
References: <bd560a8e-7949-933a-e4a9-508cb42c2570@gmail.com>
 <20210123151405.26267-1-yashsri421@gmail.com>
 <d5eacb78bd354d26725c34d887a75bf1e8f27a04.camel@perches.com>
From: Aditya <yashsri421@gmail.com>
Message-ID: <f23f4003-0017-d52a-39b9-2737e60182bb@gmail.com>
Date: Sat, 23 Jan 2021 23:53:26 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <d5eacb78bd354d26725c34d887a75bf1e8f27a04.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: yashsri421@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=E0Be+SNK;       spf=pass
 (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::52c
 as permitted sender) smtp.mailfrom=yashsri421@gmail.com;       dmarc=pass
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

On 23/1/21 10:51 pm, Joe Perches wrote:
> On Sat, 2021-01-23 at 20:44 +0530, Aditya Srivastava wrote:
>> objtool requires that all code must be contained in an ELF symbol.
>> Symbol names that have a '.L' prefix do not emit symbol table entries, a=
s
>> they have special meaning for the assembler.
>>
>> '.L' prefixed symbols can be used within a code region, but should be
>> avoided for denoting a range of code via 'SYM_*_START/END' annotations.
>>
>> Add a new check to emit a warning on finding the usage of '.L' symbols
>> for '.S' files in arch/x86/entry/* and arch/x86/lib/*, if it denotes
>> range of code via SYM_*_START/END annotation pair.
>>
>> Suggested-by: Mark Brown <broonie@kernel.org>
>> Link: https://groups.google.com/g/clang-built-linux/c/-drkmLgu-cU/m/4sta=
Olf-CgAJ
>=20
> Please do not use groups.google.com links, or if you must, please
> use links that are readable.
>=20
> For instance, this is a better link as it shows the context without
> struggling with the poor interface:
>=20
> https://groups.google.com/g/clang-built-linux/c/E-naBMt_1SM
>=20

Okay, Got it.. I'll use lkml link for the best.

>> Signed-off-by: Aditya Srivastava <yashsri421@gmail.com>
>> ---
>> * Applies perfectly on next-20210122
>>
>> Changes in v2:
>> - Reduce the check to only SYM_*_START/END lines
>> - Reduce the check for only .S files in arch/x86/entry/* and arch/x86/li=
b/* as suggested by Josh and Nick
>=20
> I think that's unnecessary.
>=20
>> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> []
>> @@ -3590,6 +3590,13 @@ sub process {
>> =C2=A0			}
>> =C2=A0		}
>> =C2=A0
>>
>> +# check for .L prefix local symbols in .S files
>> +		if ($realfile =3D~ m@^arch/x86/(?:entry|lib)/.*\.S$@ &&
>=20
> Using /.S$/ should be enough
>=20
>> +		    $line =3D~ /^\+\s*SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.=
L/) {
>=20
> This might need to be
>=20
> +		    $line =3D~ /^\+\s*(?:[A-Z]+_)?SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)=
?\s*\(\s*\.L/) {
>=20

Okay.. Thanks. I'll modify the patch accordingly.

Thanks
Aditya
>> +			WARN("AVOID_L_PREFIX",
>> +			     "Avoid using '.L' prefixed local symbol names for denoting a ra=
nge of code via 'SYM_*_START/END' annotations; see Documentation/asm-annota=
tions.rst\n" . $herecurr);
>> +		}
>> +
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/f23f4003-0017-d52a-39b9-2737e60182bb%40gmail.com.
