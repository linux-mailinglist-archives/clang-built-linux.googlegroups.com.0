Return-Path: <clang-built-linux+bncBAABBHNMR2DAMGQEYXQ7LCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FAC3A472C
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:58:06 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id 14-20020a37060e0000b02903aad32851d2sf9736823qkg.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:58:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623430686; cv=pass;
        d=google.com; s=arc-20160816;
        b=MHmx3hE0OWrwte+J5cK8Ia/FzYNQuOLj/7Pk3rb4A6JbG4Z0FoFwvcjC48ksZQntou
         lNSNJWGh3inJRsM9IRloAOKesmc7hu0NdNtfp/C0U4c0qNHSLGqU8vy104yi89r9JGu8
         TtzjJIfoddL/jOxHaHicnt6CpxdGWlvKjEmny9iiFwbRkB792bI2z6SMTOpmujf64H0Z
         Ep4vjxCsNrj+SN30Iz97EKPxx74w91nkrlVVxEtz4wyiiXsevxvGrLy08hwsA1nL/DfM
         ILiF1C1JNE5NisxkmJRQbUkQiAsiilBNN269ByxacQ/hwNTAog44Uq05mrAcdgyGDi6u
         dabw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:date:message-id:from
         :references:cc:to:subject:dkim-signature;
        bh=x9zc61j+YQg3yIi3sBSbXTFr/m+gNX3V93MZ/GieZV4=;
        b=A+jP97j2vBitv+GBtUG9CZJiWlx93lORLv7gwuxnCJzZxUBLHaAgNXHd1lSQKupmP4
         4VDJFlEfVJcGLr2CH+BfZ/lIunEsSteRLsFKfy15gR03g4QILuIn757FovX9N2/lB8Lb
         TQRG/cm6x4c10Cx6Kf2qaAaCqHjkvGSI+q34tVm5VKVM7txASalIaGLWUd/I+psw7KYZ
         iD5yxnMZ8pR0m4yWOhfXtBERaPOM1M0bkM0tnhaMOcgKzwJ4ln3z3X6cZVo3ukn+1FAK
         boM5Sw5TGVSNQJBFliMEEx4OwHEHMOzuLizvBk2cT0uJSQaYk8AzBt/3vjEkL8MJPHNT
         EOng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=AMfVUiR+;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=QUXTaqxW;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:202 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x9zc61j+YQg3yIi3sBSbXTFr/m+gNX3V93MZ/GieZV4=;
        b=V0gtX0ivh4gQXVZOSTlyVgCWXgZw/uWPFRQZsVFqZQDNBKBc6d3eRWtFi8a/l622Df
         qa2VtduJvX8T1i9Nl4P8pRLNYijZE6zJHPMSV5Ua9YqycP0RCqUZB6PjxA8+XM2xxVm1
         2z36G35jQ45YOCSQUxn6Gtg2rSey3nIAfAChmruTqwtRgtcVGOW7RW6hynRxGl4JlUAA
         IjALdMkZOoucQitFDACPZj4UF6wZe6NrAVJeMaOVkvBw8qi6DzpypwV1wol+bikc7FJg
         LPMCxIVYTBoWiNYBrkJm0fYpTuLG+DlpyEBC7MXjdkbf9+MoFBewnAoP57PwO21bH3jg
         h0DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x9zc61j+YQg3yIi3sBSbXTFr/m+gNX3V93MZ/GieZV4=;
        b=rvhaIP+Fmhn48GZl0nvG2R7eKbfVDig00M/2MpNamek33sh0JDVoOwEHqNEmXqsnAx
         45z3fe+ssc/4p2/zJHVGijBJX++cDPecWz/qlXPE28DCeE5uTxGRkRhbOxYFMjwroEaM
         gPYCXwYbRUWIYPrjlfRJeH+FsgkJ8RllV3Fo1W0ogDppxAYDZrukLBHz40l4b4WABe0o
         P1/ZXEcFp4mgOX8rBTO0MUgWm+CvcuaZODkDiJzNeXn3EraNHzkw3xKvU4XYVSlZjVRV
         h98uRx2eGt5PfbrEvEJVjO0QsNarhlUGLEqe02ww6FGEDGAPaFEjXQJjjRnrEE5gmm+1
         OLxg==
X-Gm-Message-State: AOAM530w1P/zPHzngkwBtm3UepmCtFfsFda5xO7wBL1LGYCDX6o3c+LM
	ifNGe+gT8UkxBH8d8Sas/MI=
X-Google-Smtp-Source: ABdhPJwrPnKg2AqYPha2M0z/J6WOS+5vOjq50PBHcFZFVOYxOQSybvf+MylXyrV9lgvXdQPxRLrlCA==
X-Received: by 2002:ad4:4e68:: with SMTP id ec8mr5779102qvb.62.1623430685973;
        Fri, 11 Jun 2021 09:58:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ea15:: with SMTP id f21ls5782486qkg.7.gmail; Fri, 11 Jun
 2021 09:58:05 -0700 (PDT)
X-Received: by 2002:a37:5b46:: with SMTP id p67mr4583680qkb.358.1623430685685;
        Fri, 11 Jun 2021 09:58:05 -0700 (PDT)
Received: by 2002:a05:620a:2154:b029:3a6:3d2:85c6 with SMTP id af79cd13be357-3ab1cb737b4ms85a;
        Thu, 10 Jun 2021 11:39:58 -0700 (PDT)
X-Received: by 2002:a05:6512:3588:: with SMTP id m8mr123148lfr.309.1623350398036;
        Thu, 10 Jun 2021 11:39:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623350398; cv=none;
        d=google.com; s=arc-20160816;
        b=o4Zx2GfEkjih4bes+QuLgBnNzyCyIl6O3GVgDSOzy0nsjOFpSeSzDvgPj159YuCmnk
         stVxow9DLDgRXt9kdQ3sP8QmJAu8puK98wuA3Fvdus+Up1GoH5lmbJniZh/bTY4RaAOJ
         S+/GTO30AkvXZ+TexNRx0ji4nNSfNzydqHpGbunj+3OtV7lrH5gydjGthIiTKxDvcbN7
         JRjs5/99kK32Cp3AFCKsaGUDQxAqCfJ7rJr7tMQuP7VCwtM/Tttg8MxzUsIyNh/ORsW3
         DJIZudPJzP9IfG/Jk1G0hPBeMrDX1WE0cjjL+uUwa+1eGPxaQ3V4tA8es3HX789tD5+o
         /MWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject:dkim-signature
         :dkim-signature;
        bh=ED7r0qztVT/NoVf7338Yzez73nCHxmA7+JBorIZ9hHE=;
        b=vTwDQMppt7X0b9W9PV+fv6qiwIr2zal4tMwPHIlwhxcsJz4mnImA8MuK6i0ZwStxdS
         4xv0PIL3BhaGjHnVeDlCH/3vUWCoyeokrklqXnJat+F0p6YRuSpn60c7Lzqu5jE4xC3o
         nOUHDnp6FcaPBnlnwVU1GGaS6XKj+kmHJXfFmVoKVpPpR77xyCzxJBtA6hPBXeX1Mu5P
         Z9N9karn8uwpYQX5lByccut5HehsGFIbQhQCUgI3JA2tKIWHDfqlC6ZPv80XSqV9s9O0
         cBnDxumwvCebDqHq9O1AJogL06l639OCeOxoM82cuHREQsDbxNeuK+4XA7JDD/ZVi+LK
         tgPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=AMfVUiR+;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=QUXTaqxW;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:202 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org. [2001:67c:2050::465:202])
        by gmr-mx.google.com with ESMTPS id d11si161063lfs.2.2021.06.10.11.39.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 11:39:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:202 as permitted sender) client-ip=2001:67c:2050::465:202;
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:105:465:1:1:0])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4G1CSs23vWzQk3G;
	Thu, 10 Jun 2021 20:39:57 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
	by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de [80.241.56.117]) (amavisd-new, port 10030)
	with ESMTP id 4hP10dEOVgtl; Thu, 10 Jun 2021 20:39:52 +0200 (CEST)
Subject: Re: [PATCH] x86/Makefile: make -stack-alignment conditional on LLD <
 13.0.0
To: Nathan Chancellor <nathan@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ndesaulniers@google.com" <ndesaulniers@google.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "mingo@redhat.com" <mingo@redhat.com>
Cc: "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 "x86@kernel.org" <x86@kernel.org>
References: <214134496.67043.1623317284090@office.mailbox.org>
 <ea01f4cb-3e65-0b79-ae93-ba0957e076fc@kernel.org>
From: "'Tor Vic' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <ba06e4f5-709a-08cc-0f62-e50c64fc301f@mailbox.org>
Date: Thu, 10 Jun 2021 18:39:45 +0000
MIME-Version: 1.0
In-Reply-To: <ea01f4cb-3e65-0b79-ae93-ba0957e076fc@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -6.90 / 15.00 / 15.00
X-Rspamd-Queue-Id: E17F71860
X-Rspamd-UID: 7b8300
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=AMfVUiR+;
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b=QUXTaqxW;       spf=pass (google.com: domain of torvic9@mailbox.org
 designates 2001:67c:2050::465:202 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
X-Original-From: Tor Vic <torvic9@mailbox.org>
Reply-To: Tor Vic <torvic9@mailbox.org>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Hi Nathan,

On 10.06.21 16:42, Nathan Chancellor wrote:
> Hi Tor,
>=20
> On 6/10/2021 2:28 AM, torvic9@mailbox.org wrote:
>> Since LLVM commit 3787ee4, the '-stack-alignment' flag has been
>> dropped [1],
>> leading to the following error message when building a LTO kernel with
>> Clang-13 and LLD-13:
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0 ld.lld: error: -plugin-opt=3D-: ld.lld: Unknown=
 command line argument
>> =C2=A0=C2=A0=C2=A0=C2=A0 '-stack-alignment=3D8'.=C2=A0 Try 'ld.lld --hel=
p'
>> =C2=A0=C2=A0=C2=A0=C2=A0 ld.lld: Did you mean '--stackrealign=3D8'?
>>
>> It also appears that the '-code-model' flag is not necessary anymore
>> starting
>> with LLVM-9 [2].
>>
>> Drop '-code-model' and make '-stack-alignment' conditional on LLD <
>> 13.0.0.
>>
>> This is for linux-stable 5.12.
>> Another patch will be submitted for 5.13 shortly (unless there are
>> objections).
>=20
> This patch needs to be accepted into mainline first before it can go to
> stable so this line needs to be removed. The rest of the description
> looks good to me, good job on being descriptive!
>=20

Thank you for explaining this.
I wasn't exactly sure how the procedure for stable was.
Does this mean that the patch should be based on 5.13?
I usually use Linus' tree mirrored at GitHub.

>> Discussion: https://github.com/ClangBuiltLinux/linux/issues/1377
>> [1]: https://reviews.llvm.org/D103048
>> [2]: https://reviews.llvm.org/D52322
>=20
> As Greg's auto-response points out, there needs to be an actual
>=20
> Cc: stable@vger.kernel.org
>=20
> here in the patch, rather than just cc'ing stable@vger.kernel.org
> through email.
>=20

Yes I misinterpreted this in the sense of "put stable mail in CC".
So if I get this right, I should NOT put stable email in CC, but only
add the "Cc: stable@vger.kernel.org" tag above the "Signed-off-by"?

>> Signed-off-by: Tor Vic <torvic9@mailbox.org>
>=20
> The actual patch itself looks good and I have verified that it fixes the
> build error. On the resend with the above fixed, please feel free to add:
>=20
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> Tested-by: Nathan Chancellor <nathan@kernel.org>
>=20
>> ---
>> =C2=A0 arch/x86/Makefile | 5 +++--
>> =C2=A0 1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
>> index 1f2e5bf..2855a1a 100644
>> --- a/arch/x86/Makefile
>> +++ b/arch/x86/Makefile
>> @@ -192,8 +192,9 @@ endif
>> =C2=A0 KBUILD_LDFLAGS +=3D -m elf_$(UTS_MACHINE)
>> =C2=A0 =C2=A0 ifdef CONFIG_LTO_CLANG
>> -KBUILD_LDFLAGS=C2=A0=C2=A0=C2=A0 +=3D -plugin-opt=3D-code-model=3Dkerne=
l \
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -plugin-op=
t=3D-stack-alignment=3D$(if $(CONFIG_X86_32),4,8)
>> +ifeq ($(shell test $(CONFIG_LLD_VERSION) -lt 130000; echo $$?),0)
>> +KBUILD_LDFLAGS=C2=A0=C2=A0=C2=A0 +=3D -plugin-opt=3D-stack-alignment=3D=
$(if
>> $(CONFIG_X86_32),4,8)
>> +endif
>> =C2=A0 endif
>> =C2=A0 =C2=A0 ifdef CONFIG_X86_NEED_RELOCS
>>
>=20
> Cheers,
> Nathan

Thanks for your help!
Tor

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/ba06e4f5-709a-08cc-0f62-e50c64fc301f%40mailbox.org.
