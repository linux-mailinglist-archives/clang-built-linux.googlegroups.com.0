Return-Path: <clang-built-linux+bncBAABBU5MRL5QKGQEGUMWHBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 846ED26CF15
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 00:48:51 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id n19sf126437eds.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 15:48:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600296531; cv=pass;
        d=google.com; s=arc-20160816;
        b=M3DY/VssUyBdFv/bkSqkHEcK7nNnPO2eqDbI3wdLHML1eX4yFgnpbkVmtGrZxkY2Po
         o4Hr+CDcs0EUGYhJyT+VtxNXk1OiZ3U2pWRmFZ8X7QOSAbnJCL7pUhZxiP3jfM1DvRkc
         XAeO7Y+VAsCRfusv5nlheDIim03F6jB+Vubv5rfbGkv+zo7jfUoO1TFdwGp6r2hrOAd3
         Y+AnlhM3DadooLVj94ey8ZInqfbmETjMJq6Paroh4DHGn2gjXWiSqHjaiiQgPbM5jrF6
         CImotu4vj5LUHX7k3fvGpIgZKsa+cXuOc0rD08kLTAbcsk7J8znoJpUiT+PJm12eCFAo
         HpTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:ironport-sdr
         :dkim-signature;
        bh=qUY7HvwrPfN9ieILZIFS5EubQwyXQ4j8L0h9cT5Fpi8=;
        b=xIlPcMrZntE7pg0/QEPqUwSBqYpwDt0ZhKYgNMUoMTQRXhbVAj61ybI9lGLiDIZYuO
         JOpa5aeaPWCTqFHPbdR7uQmnhUu1T16p6ymEivBbdLujC4ZhJ5l/lInXNADfLJbO1lHe
         X37YSnSaIussqJ9Y3inNBT5qU1aMOS+372k1on1Y9c3fOi0jW5YbWLJVNITpvBASaJV6
         68GnHkLpQ6IObh6wr8I+WvbzGvP0Ui7IDzPKxXs/Vb87JoMjuITmvQdmyHQ/KbkJzfrh
         PXEycAmYBmNHGWRSamNbeh+3FARAn5HFbePJwueKrJwryUUvYzVvCuCrp5zOBNpZ2GWE
         +qJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@citrix.com header.s=securemail header.b=cEAHK8+U;
       spf=pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.155.175 as permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qUY7HvwrPfN9ieILZIFS5EubQwyXQ4j8L0h9cT5Fpi8=;
        b=X/Q2CFEW1ZeFKWu2dTs/qTR6QpX92CVLVKg6y+lTkMSfjcgoRjHD8MUM0G4n3C3ggB
         tbP5gu5uWVf/UbTH7bKjN7Z+/qRdFAeFlgT6lwhXa0BSA64xCppl8cszNIiBVjfvm3e0
         spo/PMZvE/qFMzD47G5/1g33OSrYEviLBi53EVYlVdLuHvgK8ZZvupfJP1GGkjnj+hb+
         ylKQvDWcZv7zLpP2ZIjtQsP39zQ+ELXcRZQavWJCqMRkH6y2jGSeNWgFEmYBPUTnVUpl
         tucyT21RpH59Qaw7AE8XAaOdlmHHQlYr5zlCxN3H7wlxKL2ZWdOf+jgtkWPGHOrifS8v
         bOfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qUY7HvwrPfN9ieILZIFS5EubQwyXQ4j8L0h9cT5Fpi8=;
        b=XfH6nMNRqC5ezjVl2AtQuMq3/ECoDAGIkZQ+OBeJ5c4HWgnqzig5ZLuhL+r6iv7j+n
         BhGypw52JG9ZX6nK89w2linV16vIV2ZnzOOCgsidFB9npGezLitAYwuFYsOkB6RJr3Oz
         SxV8X7u8rayeDcav0SRHN6yqMhXDP9SMgyFFwRDSHsJnH4ck69AosyY278h4bRZA0kE8
         5DyboKeTsBx8FV4Gsp5nsGCziAaXp8BjfgsfVKoEcuBBp80PaTIpLZ/T9cMN89wP9LHL
         G2EcWXxeZlQXQQXYJKAXjcVm+g1l4OJxZkoHhi9CaXT61J0jmjNOsAFXEeFRbGEWTSSs
         VcRA==
X-Gm-Message-State: AOAM532fYTcogDsKKVgo1WBw4c4WM6IKoDQKvLaCpcvvi7Htt1cZVH0e
	lNNL9P6iENv4WYssa/tk+ZY=
X-Google-Smtp-Source: ABdhPJzU4k92LevYWHgKfXDJv3eGDoMToyu4d9u0exkud2Bx96h5N1e4Ypne0xRj9pi+DJV/zlPk5Q==
X-Received: by 2002:a17:906:4046:: with SMTP id y6mr29071852ejj.148.1600296531289;
        Wed, 16 Sep 2020 15:48:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:bc05:: with SMTP id j5ls311971edh.0.gmail; Wed, 16 Sep
 2020 15:48:50 -0700 (PDT)
X-Received: by 2002:aa7:d30b:: with SMTP id p11mr30227602edq.80.1600296530411;
        Wed, 16 Sep 2020 15:48:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600296530; cv=none;
        d=google.com; s=arc-20160816;
        b=sFIYcmhwS9VVavgLJSyWyOVfJw97h26mdREAEwb10uBjvE7s3WhNcCsRDUUWpHAUne
         YnQYQ0G4DbyI0K8wYyQmAAuBk81N6ZX0HTrt1ThIrKOy2BkHUpRXMaTzFaSGWdDtSyLU
         72kthYj2CIRs5uiKcpX4XJRIyaylJhuvGVlNIeEGrplTbLvYKCBn6Gc92aAA5h75arMa
         5RwkmtUkQEm90yLGVgH4w9s7HCslPnlOi9V3t59J0tChWibYSzTRd+mQiFAIoG8gIzJ9
         oTRX6LgQnZmqZZV1PTdGVndQ7n4uVog7SsR4+HeNQowhDRScO/LPiKgYwlBZPcB9nidG
         9bLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:dkim-signature;
        bh=UWp7OySBh0UBDo1ybE3qdk+rqznil0L5/tFBQ6Zp2iE=;
        b=LfDbPwcNJ90FjRYbBtNt1CDCbLubMMVt0LExWyswBw0NoQi4MBF99RMAwPLulFJGlt
         sXIuj4yEgomssN24p4ldwggSABZY2MgZz207p/vaaQQ6ShkTilLSdqaR6oyo6neLoPDu
         k5i6EldU5LrzEM+unqQWBAlDfO3nqIJI2xqSJnpjMkAqZyjrvDXtSRU1GTj0z5n4Ye1Q
         IuKfyzu6KhY9FUKABl3lT399p01UbhnqplAPtHAmtXh94ltiSy9mddU9QmLOIpcDg4tA
         lNmkkY/nUq+KhEhXyY+syGEQW+/Gan/V/TbQ64MgTpUEk2zacKdukJsNHN/R3kpI9fy6
         6WIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@citrix.com header.s=securemail header.b=cEAHK8+U;
       spf=pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.155.175 as permitted sender) smtp.mailfrom=Andrew.Cooper3@citrix.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=citrix.com
Received: from esa6.hc3370-68.iphmx.com (esa6.hc3370-68.iphmx.com. [216.71.155.175])
        by gmr-mx.google.com with ESMTPS id r5si518796eda.1.2020.09.16.15.48.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 15:48:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew.cooper3@citrix.com designates 216.71.155.175 as permitted sender) client-ip=216.71.155.175;
IronPort-SDR: NYF3bPg9AGzH+dbV/1QKNHD4lLcB/k+9z/n78OXyoldkl9q3AcFLpZx/Ip1ca/jYy8/9PFVh1F
 GdfNt/PQtTPZ5gBavzpkjbXRzeZ70Ej65W7hiI4rliln76pU5VEh/fwTvBKajNda2T5qQXavPr
 75JfUDtldWQak6rKKx7U9dnVbVW32cpe8vUBfbZ2m7qgtVv/vuAmQ+RY+6TtZ/JsTL81zvkLzM
 2gXa6mbGiiPiaQLU0tjlrKG0w1TcYDp8Kg58mT7ZeFaBYCCzxV26DtpKQGj1aIgzbF/0RjaSdg
 pmE=
X-SBRS: 2.7
X-MesageID: 27174250
X-Ironport-Server: esa6.hc3370-68.iphmx.com
X-Remote-IP: 162.221.158.21
X-Policy: $RELAYED
X-IronPort-AV: E=Sophos;i="5.76,434,1592884800"; 
   d="scan'208";a="27174250"
Subject: Re: [PATCH] x86/smap: Fix the smap_save() asm
To: Borislav Petkov <bp@alien8.de>
CC: Andy Lutomirski <luto@amacapital.net>, Nick Desaulniers
	<ndesaulniers@google.com>, Andy Lutomirski <luto@kernel.org>, Bill Wendling
	<morbo@google.com>, "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)"
	<x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, Greg Thelen
	<gthelen@google.com>, John Sperbeck <jsperbeck@google.com>, # 3.4.x
	<stable@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>
References: <CAKwvOdnjHbyamsW71FJ=Cd36YfVppp55ftcE_eSDO_z+KE9zeQ@mail.gmail.com>
 <441AA771-A859-4145-9425-E9D041580FE4@amacapital.net>
 <7233f4cf-5b1d-0fca-0880-f1cf2e6e765b@citrix.com>
 <20200916082621.GB2643@zn.tnic>
From: "'Andrew Cooper' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <be498e49-b467-e04c-d833-372f7d83cb1f@citrix.com>
Date: Wed, 16 Sep 2020 23:48:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200916082621.GB2643@zn.tnic>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-GB
X-ClientProxiedBy: AMSPEX02CAS02.citrite.net (10.69.22.113) To
 FTLPEX02CL05.citrite.net (10.13.108.178)
X-Original-Sender: andrew.cooper3@citrix.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@citrix.com header.s=securemail header.b=cEAHK8+U;       spf=pass
 (google.com: domain of andrew.cooper3@citrix.com designates 216.71.155.175 as
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

On 16/09/2020 09:26, Borislav Petkov wrote:
> On Wed, Sep 16, 2020 at 12:40:30AM +0100, Andrew Cooper wrote:
>> It's worse than that.=C2=A0 Even when stating that %rsp is modified in t=
he
>> asm, the generated code sequence is still buggy, for recent Clang and GC=
C.
>>
>> https://godbolt.org/z/ccz9v7
>>
>> It's clearly not safe to ever use memory operands with pushf/popf asm
>> fragments.
> So I went and singlestepped your snippet in gdb. And it all seems to
> work - it is simply a bit confusing: :-)

Every day is a school day.

> Now, POP copies the value pointed to by %rsp, *increments* the stack
> pointer and *then* computes the effective address of the operand. It
> says so in the SDM too (thanks peterz!):

This is very definitely one to be filed in obscure x86 corner cases.

The code snippet above is actually wrong for the kernel, as it uses one
slot of the red-zone.=C2=A0 Recompiling with -mno-red-zone makes something
which looks safe stack-wise, give or take this behaviour.

Now to wonder how many emulators get it right...

~Andrew

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/be498e49-b467-e04c-d833-372f7d83cb1f%40citrix.com.
