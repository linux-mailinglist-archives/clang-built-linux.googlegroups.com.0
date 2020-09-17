Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBB6HYRP5QKGQEHOOHHIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E4226D361
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 08:04:40 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id d27sf449959edj.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 23:04:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600322680; cv=pass;
        d=google.com; s=arc-20160816;
        b=IhU+Sc1wUvtwuzHrMBFZ8FPlj6AYQW+GzPK66dsHh5K5LMpbJyzIga1jLb++vf+vyL
         5cKOU0Id/5q7qvkOIB/YfDmZ2EBRrB7Aq+6fxjMObhrQPtayqHE9GIt8Te4heYkqsYEJ
         WHo1KA+GfhV4q1dqvCUw3TGoP0v3776staKyaQ0Z2t7ZaKY0p1y0hbOCLtpjdVsI0ztC
         2cHS9zys6kdhFyvNEQoikRnqCPZtQv4DIAcmqLmYXkybG8Sv2/dQ+aX8Kxeo0Dtbkuy5
         CNv3QGolmQXnvCG+D3EPPCIXZ/UtmdxS8rAevtbYGnlQz5D6fzBqhZtaLF92OP9iWGTT
         ipHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=mvIs+iVFOBzS01WKZ0Bw3CKSDVofiGhHt7oNp5koSco=;
        b=ggBGagLwp/NOhzEODI1WrotkGii0KBcf8tDvfB2FVgcTdXb5JcVfTCZGM4p3/Z50X8
         +Xv+abPw4L2DAECSh/SJzYJIqh7Cas7z+dOMATdi1ERNUmkRMq56UwpuDrQKoOfPl0MU
         Jm75XSrBrXvWHr5k1nNUw4KFm/XEnaOguDLfRwz5J/e5p6AUyWe0k24WXplABmsegmjA
         C9W4OGEWB3RQ3RwKRFJTg787Ehw3scd1/CgK37TdTj3TUJcQZW9I8pDzOvZ0+l8HPloW
         B8/MN/nJ4BmS4Zhgo7Rscceb5MmHUkCT4PioNbOsfn4yoFy0g+dY4CeeXf0M8KNdh73w
         95dA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=ZTyBFJpg;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mvIs+iVFOBzS01WKZ0Bw3CKSDVofiGhHt7oNp5koSco=;
        b=LeJNAqwrTwADrDl3mtg4hKmOC/jHThRkAlSFDd60FpiT7fJznZ6KVCZq4+5TeV63/F
         XVvcSZEfdqN7DoTiWbSCd5AEZ6A4S5ntZ3kcJ+mB1/HkFZkg7OB98ORiOoICsfMw4Am9
         U5UjJkIE2HNkeSbHguH6v7Ex8SGDZoj5qbFBdm2tueCX0akNOwyntX1unENVCKzo0Evw
         ZgpIrEINtTMOLtuQd3tYaOxsyyfYUP6A/k6TCtVGpCkIFYxZ5QZ6fQkp/GJrPpWMLumK
         5AahhxMjQ1ZdVKdUHgpDcUVXsMRWOTEalHScRzAUPakbEHpDoU3hqvgpU2V8ZVBzM6p8
         aa0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mvIs+iVFOBzS01WKZ0Bw3CKSDVofiGhHt7oNp5koSco=;
        b=QlVQe1AoWNNdUb+E7dbs+DuXG+syeiWBA0FdikwmVujg+HaiaYQYbTpTVRTBnSExUT
         /ee0wbwWRDwiYWih204+8dJ1W5/TceOskAJt4xrtxxvkT00fJQQAA8qfnrSy33f9WqPv
         udD3x59lqf/k0FkvuaxZ0WdpovOnAHm7pyMJvoJIQhBPMoEq9gU/pi76/W9TNKbmnQd1
         0pHBue0xdJWUNeqnfSOj8TPz/z0CiwyB9OxNgB13uZqNRKhtoGM5g81Az3MPgS0TEMvN
         u3/GiCBBKJzRwcCbTf+zNEY7E7DtSL2wpy4drHT/w8TcOStepuuZtfDKGv3QqtMUzlU1
         5maQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gBS4oCK0s+xQLeaAl0xd5rAeWQgSExT4BKd7pLLC6fzhYHU1t
	8WVYaOOgYcBjg4/pBaZ/bTM=
X-Google-Smtp-Source: ABdhPJyClJS26WgelxvO/CZLiJT/+6TUHsgOw5imAR/+3EVrb/nV06IUCGILwIVpwMcVQ8niKaH2UA==
X-Received: by 2002:a17:907:94cf:: with SMTP id dn15mr29867390ejc.114.1600322680628;
        Wed, 16 Sep 2020 23:04:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:387:: with SMTP id ss7ls450249ejb.5.gmail; Wed, 16
 Sep 2020 23:04:39 -0700 (PDT)
X-Received: by 2002:a17:906:4107:: with SMTP id j7mr30336348ejk.533.1600322679708;
        Wed, 16 Sep 2020 23:04:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600322679; cv=none;
        d=google.com; s=arc-20160816;
        b=xeY7yHzfO0E+anEw4zvh5ijlJvLTO4y9m9CI6gaOFyn7FRR6VE5hNXWTRnSMh/rVDE
         MmRbMcepkBnVn01CMD6qIbNMbr2vZQ7wRIXOCIUCYqd12g2ak33KXl/ujmtfOw6aX4pE
         8Z1bYb/FKF0vMb/PAw+7engRoIDBUnapd/fiAs6/v12JPWgdDgWWqkug5W1ejz2DMSQK
         BJUdqDUSvxIxitqO/EyYLh4Zaku9Z1XaKnOqjuF0uO0wa8cV/VAdDEbjW4PF/PzdED+v
         +BlcqpiOuklxThC/qS4y/0PnIiogYKKZBeL7TTOnkbmBn7lw+2xkPgqZ1zMKfEN+WgDZ
         FA4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=i/a3iXaOCnVbs+tv2C+NH3qhihwfg99V7VZvy9ZISaA=;
        b=ERu2Dh8pCV5Ozv5CCZuf3SIP9pjBBTYB0fitrOMQFbkqsyPMttWf+fDGN6YLS3Q8f6
         myCEMoMPEJmluDt1mstf+gjDeK+wgpvxiq8SWWpASqqKtsi/XQoOGTGOI3w9cejsU5gX
         58ZH40N/nfs9GCboFQqa8nKzmJrZX+M9GUunvAoZwmWkFE0pOlUymn6lUN+O/R6bdU8Z
         klPwGYkhHXuIwNDBUSAK6eRRI3okTZywhuVJFkK7MFdOOXcp8ipmFutSyzmlEHGL29s8
         q1cdmiVZ8o45B1u8UIynCjj10OFxpDdusb3L/YShx9hws9g+6tH5oRV5hsdkVbG/c8wK
         C8wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=ZTyBFJpg;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id t16si451149edc.0.2020.09.16.23.04.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 23:04:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f1053004ecb76e63d7beff7.dip0.t-ipconnect.de [IPv6:2003:ec:2f10:5300:4ecb:76e6:3d7b:eff7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id E8BC11EC03A0;
	Thu, 17 Sep 2020 08:04:38 +0200 (CEST)
Date: Thu, 17 Sep 2020 08:04:32 +0200
From: Borislav Petkov <bp@alien8.de>
To: Andrew Cooper <andrew.cooper3@citrix.com>
Cc: Andy Lutomirski <luto@amacapital.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Lutomirski <luto@kernel.org>, Bill Wendling <morbo@google.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Greg Thelen <gthelen@google.com>,
	John Sperbeck <jsperbeck@google.com>,
	"# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] x86/smap: Fix the smap_save() asm
Message-ID: <20200917060432.GA31960@zn.tnic>
References: <CAKwvOdnjHbyamsW71FJ=Cd36YfVppp55ftcE_eSDO_z+KE9zeQ@mail.gmail.com>
 <441AA771-A859-4145-9425-E9D041580FE4@amacapital.net>
 <7233f4cf-5b1d-0fca-0880-f1cf2e6e765b@citrix.com>
 <20200916082621.GB2643@zn.tnic>
 <be498e49-b467-e04c-d833-372f7d83cb1f@citrix.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <be498e49-b467-e04c-d833-372f7d83cb1f@citrix.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=ZTyBFJpg;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Wed, Sep 16, 2020 at 11:48:42PM +0100, Andrew Cooper wrote:
> Every day is a school day.

Tell me about it...

> This is very definitely one to be filed in obscure x86 corner cases.
>=20
> The code snippet above is actually wrong for the kernel, as it uses one
> slot of the red-zone.=C2=A0 Recompiling with -mno-red-zone makes somethin=
g
> which looks safe stack-wise, give or take this behaviour.

Right, we recently disabled red zone in the early decompression stage,
for SEV-ES:

https://git.kernel.org/tip/6ba0efa46047936afa81460489cfd24bc95dd863

I probably should go audit that for similar funnies:

$ objdump -d arch/x86/boot/compressed/vmlinux | grep -E "pop.*\(%[er]?sp"
$

Nope, nothing. Because building your snippet with:

$ gcc -Wall -O2 -mno-red-zone -o flags{,.c}

still does use that one slot:

0000000000001050 <main>:
    1050:       48 83 ec 18             sub    $0x18,%rsp
    1054:       48 8d 3d a9 0f 00 00    lea    0xfa9(%rip),%rdi        # 20=
04 <_IO_stdin_used+0x4>
    105b:       31 c0                   xor    %eax,%eax
    105d:       9c                      pushfq
    105e:       8f 44 24 08             popq   0x8(%rsp)
    1062:       48 8b 74 24 08          mov    0x8(%rsp),%rsi

Wonder if that flag -mno-red-zone even does anything...

--=20
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200917060432.GA31960%40zn.tnic.
