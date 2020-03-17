Return-Path: <clang-built-linux+bncBCS7XUWOUULBBVN4YHZQKGQEZALJGTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id A9496187904
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 06:21:26 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id 33sf11234641pgn.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 22:21:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584422485; cv=pass;
        d=google.com; s=arc-20160816;
        b=SJAcEqaQeGfPc8KxQAjv2zPNN5mAiC/UwYT8fOrmDMMp5ta8SdpVptt6GwdhxzSiQ0
         wsdP8s0PJJ6IXLQizA9P/d32vElbePzsP9sSqIIk4crJC4aszDXG4OfxZjnB9ffAp8sU
         he+8uX1q1WicuQJtMJ2xhITKM6oCBxrOnDUL2FAcMoEB1XN2eYU98Rzvc0hnXP16j9t7
         JXn44Bku1WIcf0VXmuKFrcm9kadMybyvcFNnjxrb2JicVz4xvBg2aXdupYb4PTJTkbhF
         UFajKVWnXYwbEmNDmG+b7xeCnjoQHdXGg6tMKI064oF/Zb3XGPuxVSEEcM3twGLlT/2V
         fdww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=96TlwczW+b7LpwUzE05VV0phQBV70QLzZ24CIApdLl8=;
        b=WDj5gOHLG44nnpSj7fznCMMqM41SCwFu+MKROBPR9/fh1/kRXW7sIF5T1zfZfFeC9v
         ZQQvdyOw3BqtUG/q4n6s5il4i3z0KweHozl4HY2MKZWK4WUc0AkSaRpZPQ2x0Z1wpPtO
         enGrJznmHD5tKhIL4FeqIeygsTkUI9uE1MPYwEjHKeKbX/rieafjJ0S0OxBO0MIYl45n
         wofFbQgpJupWnGREv7JUjVYqdqSfUxcqjunZJgR7xNt4TaqkyC9LwYkZO7RpSE8zmizX
         X+7zLAVK85+n4Sr9F4W5E27GEOIUZ/DGZUnm0Cx8qgu6w9VGLQNr47OgyxTkCgcZoATQ
         +sTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VTzELuAK;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=96TlwczW+b7LpwUzE05VV0phQBV70QLzZ24CIApdLl8=;
        b=KpIDYfpVrumoQXTzwzOwvwnpEpF2C6X1dyS/dREBVx525LGtG/VB1IfzwpBcRNpIeU
         hKxPR7b2jfQVsfTBX8yjOTzfILbnf3mZhbXnhaU+3tx2X/IadX7iz0aSi5RWopoSjhSY
         Sob/6NA7l1wgCZgAosb9FhkUQ1kEETEU2vARa1ulXKZYIMphE3c2cME1RZqqnnuPItLK
         Zc87mizmzmmAexWSHbqW0T26rpi2iPgIbIe9OQ79dMX5p70OGgIEhNAA26li4GX/Z0OT
         7uc80sNQxYXXmNgU0KlPDjiaB5q8ify8Oc+EPLtiCbAe0AixF+ysCevZ68TdyA/LtXx3
         OTTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=96TlwczW+b7LpwUzE05VV0phQBV70QLzZ24CIApdLl8=;
        b=a3ejWLYGDiTJDrSKBfkUaXyu/PZdEK/dGtpWiklJPU0ghIqJJzu4DF3LBKgJgUIyJB
         GQgRqSpX0uP86iLMB2VyWyDlhY3DUpZIuOegWmwa7mB9ovgdMAMcrg4UdTL/6VahSL3B
         g/hK6XInKB7pFNIbcRm0NlvWgrJ3/rajUsnF9elX2rIRPN/acmzG0ac+219Utic71ojT
         lykZci8Mg0yKOANozPoM4MhSbDvhKa7wR50TH4FvEShIKRxfPpuxlO7a4724l895+BoS
         vQoySi+u9/ZTvml/42CaPpUs9XTbSvbjiBml4In2xHPg2yLBL9sSbTFfJ40lKqL/i8Bz
         OOWA==
X-Gm-Message-State: ANhLgQ25VmBuHqo8LA07g2lLuFVpq5gP7Or3MM/zLxxU3yGIpn7wr2B8
	wG9bIvq6HZ2Axa8kTlfSPrg=
X-Google-Smtp-Source: ADFU+vsLfZh+5Diuh7R6lC3f9MxxkoxKcR1y7N9C/uIDvx6PQLBFYADwvHKcb8MCPSTwjRUvHXDkzQ==
X-Received: by 2002:a63:3712:: with SMTP id e18mr3032764pga.401.1584422485366;
        Mon, 16 Mar 2020 22:21:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1853:: with SMTP id 80ls9941420pfy.11.gmail; Mon, 16 Mar
 2020 22:21:24 -0700 (PDT)
X-Received: by 2002:a62:bd16:: with SMTP id a22mr3401892pff.202.1584422484874;
        Mon, 16 Mar 2020 22:21:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584422484; cv=none;
        d=google.com; s=arc-20160816;
        b=Zp9x1jwEcmuN3Ts1ZFPybCFhQIHyNjB5wEBA4tqpA9Igd1f9SDXQtU+cg66jUn4CCF
         58TgaLF4fWgJPj1GFzFPteRLJ6bNmOQ4c6Ke7lh1SE0S7MOgdjGUy3879FBKSjgSx0I6
         0Rr3kzOIaq/hCrfOYMH+Ct1UFvvc7rTLHKrx2lPqEzpEomw4Mc4q9eqW6rZdCvYMYiSx
         1Rdse2qrkEx5T4q8TpYZ5TG+tbWaBpft1CJkdhngufEOo9K70b0OrKQsjprc3RwYAM9C
         G9yOKAMdqIRaMtklfP/doeIBe9wA5ondi4yIkcrqTvLeHan1ql7bUmXqSzU6CW/b7+Kv
         0sOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Gct5Div9yO3xZ7uj+wMJ5J+JaU8FAOUzHSAPaDD/q3A=;
        b=HDV9LZ/DDHv2kr/njX1YAEbxxi8DMr2Q91FH0pWnPiE5WtvKXEK27NJYx0nYzmMN4L
         HLxpVhpWh/rdyCuAhToPR0caAnKJTFLj/7ncnHt61PoW1i4xja17ffD2wjWMqCCnkvXY
         +9cCofJAJptBJwxbMBeA+um9DIMk9kz9YvaiN9Q1ObPbmZj/U4JnhHLR0ZRDDaB5B1RS
         pdGWY8iSC/B8YKkBnNe45QZcFOGrP7+rM0iphtlpaQyhDkawsjaaTe3qsUHkgGUy57et
         5ErZn9WxN0izHzp0a4X/vW+xAmdkWUJxNK+FCo0Z9DlIOYDXSwKcsMOO7fymBUvhOV6h
         a8cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VTzELuAK;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id u15si103259pjm.1.2020.03.16.22.21.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 22:21:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id t24so11064804pgj.7
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 22:21:24 -0700 (PDT)
X-Received: by 2002:a63:d143:: with SMTP id c3mr3197691pgj.171.1584422484251;
        Mon, 16 Mar 2020 22:21:24 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id e9sm1374336pjt.23.2020.03.16.22.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 22:21:23 -0700 (PDT)
Date: Mon, 16 Mar 2020 22:21:20 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: bpf <bpf@vger.kernel.org>, Networking <netdev@vger.kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	Stanislav Fomichev <sdf@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Alexei Starovoitov <ast@kernel.org>
Subject: Re: [PATCH bpf v2] bpf: Support llvm-objcopy and llvm-objdump for
 vmlinux BTF
Message-ID: <20200317052120.diawg3a75kxl5hkn@google.com>
References: <20200317011654.zkx5r7so53skowlc@google.com>
 <CAEf4BzYTJqWU++QnQupxFBWGSMPfGt6r-5u9jbeLnEF2ipw+Mw@mail.gmail.com>
 <20200317033701.w7jwos7mvfnde2t2@google.com>
 <CAEf4BzYyimAo2_513kW6hrDWwmzSDhNjTYksjy01ugKKTPt+qA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAEf4BzYyimAo2_513kW6hrDWwmzSDhNjTYksjy01ugKKTPt+qA@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VTzELuAK;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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


On 2020-03-16, Andrii Nakryiko wrote:
>On Mon, Mar 16, 2020 at 8:37 PM Fangrui Song <maskray@google.com> wrote:
>>
>> On 2020-03-16, Andrii Nakryiko wrote:
>> >On Mon, Mar 16, 2020 at 6:17 PM Fangrui Song <maskray@google.com> wrote:
>> >>
>> >> Simplify gen_btf logic to make it work with llvm-objcopy and
>> >> llvm-objdump.  We just need to retain one section .BTF. To do so, we can
>> >> use a simple objcopy --only-section=.BTF instead of jumping all the
>> >> hoops via an architecture-less binary file.
>> >>
>> >> We use a dd comment to change the e_type field in the ELF header from
>> >> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o will be accepted by lld.
>> >>
>> >> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
>> >> Cc: Stanislav Fomichev <sdf@google.com>
>> >> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> >> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>> >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> >> Link: https://github.com/ClangBuiltLinux/linux/issues/871
>> >> Signed-off-by: Fangrui Song <maskray@google.com>
>> >> ---
>> >>  scripts/link-vmlinux.sh | 13 ++-----------
>> >>  1 file changed, 2 insertions(+), 11 deletions(-)
>> >>
>> >> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
>> >> index dd484e92752e..84be8d7c361d 100755
>> >> --- a/scripts/link-vmlinux.sh
>> >> +++ b/scripts/link-vmlinux.sh
>> >> @@ -120,18 +120,9 @@ gen_btf()
>> >>
>> >>         info "BTF" ${2}
>> >>         vmlinux_link ${1}
>> >> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
>> >
>> >Is it really tested? Seems like you just dropped .BTF generation step
>> >completely...
>>
>> Sorry, dropped the whole line:/
>> I don't know how to test .BTF . I can only check readelf -S...
>>
>> Attached the new patch.
>>
>>
>>  From 02afb9417d4f0f8d2175c94fc3797a94a95cc248 Mon Sep 17 00:00:00 2001
>> From: Fangrui Song <maskray@google.com>
>> Date: Mon, 16 Mar 2020 18:02:31 -0700
>> Subject: [PATCH bpf v2] bpf: Support llvm-objcopy and llvm-objdump for
>>   vmlinux BTF
>>
>> Simplify gen_btf logic to make it work with llvm-objcopy and llvm-objdump.
>> We use a dd comment to change the e_type field in the ELF header from
>> ET_EXEC to ET_REL so that .btf.vmlinux.bin.o can be accepted by lld.
>>
>> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
>> Cc: Stanislav Fomichev <sdf@google.com>
>> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> Link: https://github.com/ClangBuiltLinux/linux/issues/871
>> Signed-off-by: Fangrui Song <maskray@google.com>
>> ---
>>   scripts/link-vmlinux.sh | 14 +++-----------
>>   1 file changed, 3 insertions(+), 11 deletions(-)
>>
>> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
>> index dd484e92752e..b23313944c89 100755
>> --- a/scripts/link-vmlinux.sh
>> +++ b/scripts/link-vmlinux.sh
>> @@ -120,18 +120,10 @@ gen_btf()
>>
>>         info "BTF" ${2}
>>         vmlinux_link ${1}
>> -       LLVM_OBJCOPY=${OBJCOPY} ${PAHOLE} -J ${1}
>> +       ${PAHOLE} -J ${1}
>
>I'm not sure why you are touching this line at all. LLVM_OBJCOPY part
>is necessary, pahole assumes llvm-objcopy by default, but that can
>(and should for objcopy) be overridden with LLVM_OBJCOPY.

Why is LLVM_OBJCOPY assumed? What if llvm-objcopy is not available?
This is confusing that one tool assumes llvm-objcopy while the block
below immediately uses GNU objcopy (without this patch).

e83b9f55448afce3fe1abcd1d10db9584f8042a6 "kbuild: add ability to
generate BTF type info for vmlinux" does not say why LLVM_OBJCOPY is
set.

>>
>> -       # dump .BTF section into raw binary file to link with final vmlinux
>> -       bin_arch=$(LANG=C ${OBJDUMP} -f ${1} | grep architecture | \
>> -               cut -d, -f1 | cut -d' ' -f2)
>> -       bin_format=$(LANG=C ${OBJDUMP} -f ${1} | grep 'file format' | \
>> -               awk '{print $4}')
>> -       ${OBJCOPY} --change-section-address .BTF=0 \
>> -               --set-section-flags .BTF=alloc -O binary \
>> -               --only-section=.BTF ${1} .btf.vmlinux.bin
>> -       ${OBJCOPY} -I binary -O ${bin_format} -B ${bin_arch} \
>> -               --rename-section .data=.BTF .btf.vmlinux.bin ${2}
>> +       # Extract .BTF section, change e_type to ET_REL, to link with final vmlinux
>> +       ${OBJCOPY} --only-section=.BTF ${1} ${2} && printf '\1' | dd of=${2} conv=notrunc bs=1 seek=16
>>   }
>>
>>   # Create ${2} .o file with all symbols from the ${1} object file
>> --
>> 2.25.1.481.gfbce0eb801-goog
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317052120.diawg3a75kxl5hkn%40google.com.
