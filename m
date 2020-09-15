Return-Path: <clang-built-linux+bncBAABB5VBQX5QKGQEGYIJMYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6FF26B53C
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 01:40:39 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id y26sf2731255pga.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 16:40:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600213238; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZQa2mJxTRsyW7CqWidEL7RjndA+ttJxCqSU+gInGDuzsD1JHuswIMVVmUQztGuoqlI
         w8nHh7T4rbwXtYs8rTECna5RipuijZ9s/o4yXBWd0Ux1/lLkOcUhZ4ixq4/a3JLJ8KTo
         L4fFLG2UIRd1ST5BP5WioVqQfcvM5i1AhND5iAhgo4a5ksxGKXM/Dn43GbVXWjqz43Ec
         uAr+lx89jv0zcXDSCC5Tstslottmk0MwV36h8Mgi5LewcXq5V8eszBo6Q2MdXb454/RL
         n+Mp47Rn9/gbf2A+AtJKH8m4+8hoizFZsNSVnzzsnd7t7MMtA9/YYc1X8W87P9Anmvhx
         1wjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:ironport-sdr
         :dkim-signature;
        bh=Lnmk/AJ/qXRopZv2ZqLKbQU8bMokCbaBj493usYUNK8=;
        b=d5/Xz2fVcabkut7aw/X9IT4BdrlZMqnS4ZELxKcMY14y5HI1FXvC+VMEBNfmcZ7OPa
         4ASpOY/iW4NieDH49fLNcx8aq6ixc1MUpj4DJ24BFdO0AWFzZ313qCa27Cw8AjF87VRB
         T3o0Z1saX03dfBADbgQd85V4oy+rUs6b3i+0PwJg0WzTxVKovGSVWISz18cgi1KyKWUE
         lWuxe093YrC21u+BM6ClJFVyRncG2GGNq/7nUTw/QJfiG1mwRzJHoRuHFqap8yT4J2AR
         9oZJXx7UCkymKdOr6EBgQx79IsPMHoiOCQSiBZoAoKprnhfEZyLA+YVB0mGJd5gd5PFb
         SdQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@citrix.com header.s=securemail header.b=ULzP6P3X;
       spf=pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.145.153 as permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Lnmk/AJ/qXRopZv2ZqLKbQU8bMokCbaBj493usYUNK8=;
        b=ljTzle0cOwhFh0lgtj69ZIwwBzKcr2j4S4fQRlVGhSHPRhHee4SPzy9j3huU5d9LO8
         05FYRu0kWZBwhqaTYd6MJeTEIevsQSFGYDJO6cASBRbLcqgZbfHph59HsWDWqQB9ddvA
         Bs5DDyrzk+coW0YXiyET9H/PXcjaliutOVXh5oqSqw+3t+FtexEWIkgEVre4Ap7QwhvN
         xGXej1C9QPkDCEjgYw07tCAldajE5C6Uwo4FFerphXz08V5drs8O9b9dhkXuxhIQkicv
         8+knqe6IALDCqZYouc6Xa7R2x7FP6VXgL/rWAotbvtkSaSerXTI7M08GzoHGwWyQXFC0
         n8bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lnmk/AJ/qXRopZv2ZqLKbQU8bMokCbaBj493usYUNK8=;
        b=n+EHHxRtr0tEPK0Qd4wEcyrBFC5h75s9Qiw1E9jbwJKGJep+4iSHhF4IrHT7sMe54u
         4dv1afaGQgVsf1a/0RASOcl7obnLu0sQ6+wTky1ZjYqRgdHGlQUYNFgmxYmXyx+4RJY0
         3H4FvovcI/bffwV1qVeMZnAaFpzTG0+NXJTRPBa2ymgBO9RuC5y/2uqoTPUyv0FlZQGy
         LB4Y9IzSPkNcKXLelPvcyqRtxE1U5/3QgKE/3CfRct9EtWXsZYFd24CmtIaQrv5yNJtj
         +F0bPPR6oohXgzNqaj/YMt+PMP+IdxWQ/zUE8mrQIsGySFwI659fst44NWFPpST8TZQz
         ytfQ==
X-Gm-Message-State: AOAM531igl2UOzsi2i5xHwRZuVVWW9/wGm/KwyKQkU1VF+kEVLILi9ZX
	qJeRpPedi1869oKJKEn4cZM=
X-Google-Smtp-Source: ABdhPJy3Kd3iX/InXovAoq8wihjD/q8yi4dguLUlgHawBsT0VQK74mDG6JhNZPJwytCWWLjT98KT6w==
X-Received: by 2002:a17:90b:1050:: with SMTP id gq16mr1584988pjb.234.1600213238246;
        Tue, 15 Sep 2020 16:40:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c7d3:: with SMTP id gf19ls164973pjb.0.canary-gmail;
 Tue, 15 Sep 2020 16:40:37 -0700 (PDT)
X-Received: by 2002:a17:902:c3c9:b029:d1:e5e7:bdd9 with SMTP id j9-20020a170902c3c9b02900d1e5e7bdd9mr3833069plj.57.1600213237676;
        Tue, 15 Sep 2020 16:40:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600213237; cv=none;
        d=google.com; s=arc-20160816;
        b=cTJogARCnF+D4jI/KzF+H5RqNNYr4bCMYGE0T2ci7rdalhe2J+hlMwiaRb8YQarbs8
         laVyaCSDiZ7stLxLUhKJZxUVkgE5byjBtytEU06SiGoOJQ4C4tB64maC/doKO444Me3c
         8T32dFS7BDk/HQtpHIpR9dHJvq4SfhsKkqlUps/tUqUjffmoUwB8njJulL+Rqnavz+hY
         DhoW0OAQGrBoxcVsE3o8gkl+N7Ff8paK64ymfbJKOkIV7WlKGXNQNppKlLD8c2fzkX0l
         qFSo9NOE3sKNIpdRwJ64ArtFRkg5pd1Czf/Mivhk5as5u0d3EpKwcGq/YvpU7nDRd9z1
         xmXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:dkim-signature;
        bh=YQc4H/ITPxhKvTTR47T38OOzEYk2i2DEfyMvYH99qCg=;
        b=xBQtnr5QjJr3PiBLrHqC7G/N8mXrg4jcPFwoJjiaSprQtV21+xyDgRpRzNqdwIKnt0
         x574SpA4l+83ZqyRFKHeJ+9gJqW6NfyR+VXKzBDQFsUlDGGQ5tvNwWovre39Hvdtn1AG
         E0ef80LsdZneEgIVzbEpWXw8XXBU//jIAylA/InmEQt8Vf1QZ/Ac3yF6nXuoxSKHRfMS
         mOgWAhPDcwQmCFZG3u01N0LNFzaVmaWRRh3MlwUsMx/4/Ev95Rg1kyTxB4oxT1n+WS57
         44hi4+gjBCyI+iSGiRFKyPyV05ib5Cxjh3oPpIAG8UoRp7o1VqZquiW8k1CVKcMh/ovI
         DrUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@citrix.com header.s=securemail header.b=ULzP6P3X;
       spf=pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.145.153 as permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
Received: from esa2.hc3370-68.iphmx.com (esa2.hc3370-68.iphmx.com. [216.71.145.153])
        by gmr-mx.google.com with ESMTPS id iq17si63573pjb.3.2020.09.15.16.40.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 16:40:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.145.153 as permitted sender) client-ip=216.71.145.153;
IronPort-SDR: iVxWhpZoI6v10al185D9jTUVVi4ZzKVedAlRzg4i7hdr94mw1X+Dftjy285K25rCzfYgpPVSZ/
 U1xxjTyEc3Ua2GvgdQph1tSqG8PGBzcXJF3Pl4+akGfstrAte22zRCA7dNtpVYIOy41OTPXq4d
 FvEpFfOEARaj532QGftsSL/M8hWudOLiHuA69jHBTcK6+4Dbo3yJy6iSJ8l+PlPct4aghWH+Tp
 qLmnqM27CaFDyx5ayZXB1MfUWqajzciMYisJNbmyKZN5CM/z1/9BHdYg9yPURtSgFNZVhpSIEM
 t9M=
X-SBRS: 2.7
X-MesageID: 26785278
X-Ironport-Server: esa2.hc3370-68.iphmx.com
X-Remote-IP: 162.221.158.21
X-Policy: $RELAYED
X-IronPort-AV: E=Sophos;i="5.76,430,1592884800"; 
   d="scan'208";a="26785278"
Subject: Re: [PATCH] x86/smap: Fix the smap_save() asm
To: Andy Lutomirski <luto@amacapital.net>, Nick Desaulniers
	<ndesaulniers@google.com>
CC: Andy Lutomirski <luto@kernel.org>, Bill Wendling <morbo@google.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML
	<linux-kernel@vger.kernel.org>, Greg Thelen <gthelen@google.com>, "John
 Sperbeck" <jsperbeck@google.com>, # 3.4.x <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
References: <CAKwvOdnjHbyamsW71FJ=Cd36YfVppp55ftcE_eSDO_z+KE9zeQ@mail.gmail.com>
 <441AA771-A859-4145-9425-E9D041580FE4@amacapital.net>
From: "'Andrew Cooper' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <7233f4cf-5b1d-0fca-0880-f1cf2e6e765b@citrix.com>
Date: Wed, 16 Sep 2020 00:40:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <441AA771-A859-4145-9425-E9D041580FE4@amacapital.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-GB
X-ClientProxiedBy: AMSPEX02CAS02.citrite.net (10.69.22.113) To
 FTLPEX02CL05.citrite.net (10.13.108.178)
X-Original-Sender: andrew.cooper3@citrix.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@citrix.com header.s=securemail header.b=ULzP6P3X;       spf=pass
 (google.com: domain of andrew.cooper3@citrix.com designates 216.71.145.153 as
 permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
X-Original-From: Andrew Cooper <andrew.cooper3@citrix.com>
Reply-To: Andrew Cooper <andrew.cooper3@citrix.com>
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

On 16/09/2020 00:11, Andy Lutomirski wrote:
>> On Sep 15, 2020, at 2:24 PM, Nick Desaulniers <ndesaulniers@google.com> =
wrote:
>>
>> =EF=BB=BFOn Tue, Sep 15, 2020 at 1:56 PM Andy Lutomirski <luto@kernel.or=
g> wrote:
>>> The old smap_save() code was:
>>>
>>>  pushf
>>>  pop %0
>>>
>>> with %0 defined by an "=3Drm" constraint.  This is fine if the
>>> compiler picked the register option, but it was incorrect with an
>>> %rsp-relative memory operand.
>> It is incorrect because ... (I think mentioning the point about the
>> red zone would be good, unless there were additional concerns?)
> This isn=E2=80=99t a red zone issue =E2=80=94 it=E2=80=99s a just-plain-w=
rong issue.  The popf is storing the result in the wrong place in memory =
=E2=80=94 it=E2=80=99s RSP-relative, but RSP is whatever the compiler think=
s it should be minus 8, because the compiler doesn=E2=80=99t know that push=
fq changed RSP.

It's worse than that.=C2=A0 Even when stating that %rsp is modified in the
asm, the generated code sequence is still buggy, for recent Clang and GCC.

https://godbolt.org/z/ccz9v7

It's clearly not safe to ever use memory operands with pushf/popf asm
fragments.

>> This is something we should fix.  Bill, James, and I are discussing
>> this internally.  Thank you for filing a bug; I owe you a beer just
>> for that.
> I=E2=80=99m looking forward to the day that beers can be exchanged in per=
son again :)

+1 to that.

~Andrew

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/7233f4cf-5b1d-0fca-0880-f1cf2e6e765b%40citrix.com.
