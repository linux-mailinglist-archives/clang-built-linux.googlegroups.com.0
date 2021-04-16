Return-Path: <clang-built-linux+bncBCFYN6ELYIORBVFB42BQMGQEW7EBMZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 240FC3620E5
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 15:27:51 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id y189-20020acaafc60000b0290159da8ecff0sf9346321oie.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 06:27:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618579670; cv=pass;
        d=google.com; s=arc-20160816;
        b=yBVSgTSPaxZx91nmeAfyY9nQ088KfgHpGV4Oj7L5mU5mBIWARNQG4M5UG5/4tZG/hN
         mV39oIJZopgQbS5/tdKCUbbWaLAPAQ7uqh/kuphoeK47eDYFxosNLiLXbyqz84cmuW7t
         9b2KmuyzDcEvvuNboNZuVY3JPbgXvlCkLH52O49uxPbkJHBmvSgsY+uvGr+/PyMIbdei
         qitbl2zyenBEUAeA4dSLxgd20xGAFC213cjvrUnRAsXxsvhe4PDNbFvzvPJ4VmQTuc44
         HeRPFKy16bSoHHFk0dFNVRmjZuOmXzVetxCASkrwm8P2Y//mU+kjiDBbNixi86HUGhF0
         TGfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=K/ltw3Z2sYsFtQrT4otWuQUWSubs2JJg6tK2tjwqNk0=;
        b=O4+P24amjL3PhPV1CDYwt14h/J8eCXvsLuz/8Jfh4xl8EoNstCXJU6zqbsWumAi/vQ
         mqt3/u/fqxlCMJINK2G8iq4DQBfLXVPENTFpV15kwMO+qS8IJgIsOr65imerNHc3Xo3K
         EETAaiCUigam1qUsxdzRUZrwkGbLKRRzu+78y9+fHC5jY+qwvliyQNMWct1MmDhWGzHe
         a/HYb9iyxHK87B2mek/M2YCHtVmecbwUqv6a7wzMJTYKEWJ7G6xxBhERsYqPuL9aakZW
         HpanRtz6LyC8+8bz+11WOCnhsOLGsCZDUe3Qi6hyHYyMP7mqMxyue9F2nf2BZdm4xye9
         hg5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Paz7/o7d";
       spf=pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K/ltw3Z2sYsFtQrT4otWuQUWSubs2JJg6tK2tjwqNk0=;
        b=YG9ikP7bD0RU47HkXfctyLhYsqG4GXqvk92W0depmdpx/4G2M2Gsz7KubYnJWEux+Y
         E63BmiJ+nExWUU5Lyyf8pt0PQTWxsiNb2YeyHzs91JQzRRt5pHyv/zozncwLp5X1qp/+
         PxGmWoV9JlZdx9jT8s60q7fjAMLpAQ5//B/KcLUP10hC6kIRNapusNhNO8hyqEJMWIMZ
         keV8zUxnVo1Hg71di0+uLjFHYoyt+fKDsxwIFxnxF1GwQeg1ELrhB94XdUbp7edOLdeF
         UZQBC59ILwsTKBeIIZ3RTEkC5U5qgJO19wcScEcS7Y420GBg2TFDJu8bbHV3pCzdoj3L
         bzLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K/ltw3Z2sYsFtQrT4otWuQUWSubs2JJg6tK2tjwqNk0=;
        b=KSHNG5AKZq5cbaz3s6DwARfII8MCU9AXUAljto4xks3lsfeOvFM7jLaYf7JeXyye9Z
         Cso3SETrJoRYNwWloS4WDO56XevwcBWTYVMlik6l446wV+2j5DsHfwwS0AMTeKHTg2+J
         1Ea9rULxX5bIl2F8Vd6PTKKrIkK/E/4nzKmVh2z2eZ1eow2mMZg1eeCadh4c6IpGMmKs
         BG/GTD+TNv28kwIfYvvBa51kcehX4sYA8bEcnIezLQ+b0VHU5w9GhcCzdBU6PKjjusgf
         VWD95nJZIfBG0IKgTz5Q7fCsdQXGo1jiOdsE+P0SO0+ULhby5aw9zlahxEki3iSI2f2o
         0l2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QkR1flV/smVaj+YITW2DFwPJZ3fJw+TVTbqZ9Vqll3trkcQZO
	smLcVGPvstQbae+qJerdUHk=
X-Google-Smtp-Source: ABdhPJw/BZ0GhtyzK8qgvXvqc8uPk4YBLNdnBeH9ct+d3a8A5fxK3Dcx2pUxKAEMuj0Lxkujv18e6w==
X-Received: by 2002:a9d:4c06:: with SMTP id l6mr3678227otf.218.1618579668477;
        Fri, 16 Apr 2021 06:27:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:2fd2:: with SMTP id p201ls589487oop.2.gmail; Fri, 16 Apr
 2021 06:27:48 -0700 (PDT)
X-Received: by 2002:a4a:de8d:: with SMTP id v13mr3364541oou.3.1618579668079;
        Fri, 16 Apr 2021 06:27:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618579668; cv=none;
        d=google.com; s=arc-20160816;
        b=Zv4lLNsfVYZI3wmbKjNxsPgoPy4eM+5J69U70FADssotLWaGcBVrERnIg4SpdFWdaA
         WX7DuC+lbGca1fVCt5t0pY7+NOFwgMzSuZmZJMwb+ujcvo6hrPWOb4PF1O7AOjMkvsUU
         9tKUEuBiSgpydfQjQj57aa4HHjkk6o3P+aOzUYOnNaD7Qlt2HtM7b+Mo7JWU9tscPvC5
         uySexRuJgaSztUQeEYQhnlbUr0nm3pNvHGqar2vxjajgSPHxEaE/iLjShS7Z01E89d9W
         1w33j/9xy+4IScGKDpMKh0M0hPGksqwcrX2ASGTJKHTmxA4qrvlePs6LgBr8n+BhnKGj
         qKYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=JAKUqXFHXuyIOfRcOhTnPnVKgo/XPbGiNpXU9KPW1QA=;
        b=cP9X+fGRYo9f97d8GQowtZo2wGqiba2TNWZFVm1Njir9cUTQV4gD6BkAdrlM5+jc6j
         KJT8FyT9IifOOfh1Md16vWRxf8X/XKfZGruitqMTr90qfz8qTcFOXd/oF0ryG7q+2MYY
         T/5IQhRwRnYaakOImLjzJpt9ejaNwTsQdfuyyssahk9lGqLuiXLexa9q8+Gjqs6wdMcI
         zeq699WuvYyimbPzJRAHroD+DPTT9RPhwHyHyEY7VseWqiZIej+PyQuMq3wNxryItzPE
         bt35UqJd/dP5xH3lATWJQJIuu6SP1uBVoeGety16vglCXoAvbwibFEwqoFLfl2Noxrje
         Y6RQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Paz7/o7d";
       spf=pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id b17si508602ooq.2.2021.04.16.06.27.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 06:27:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-94-yjmdxbaUM1Cuh73rz53MtA-1; Fri, 16 Apr 2021 09:27:43 -0400
X-MC-Unique: yjmdxbaUM1Cuh73rz53MtA-1
Received: by mail-ed1-f70.google.com with SMTP id f1-20020a0564021941b02903850806bb32so1065068edz.9
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 06:27:43 -0700 (PDT)
X-Received: by 2002:a17:906:3e4a:: with SMTP id t10mr7812305eji.553.1618579662296;
        Fri, 16 Apr 2021 06:27:42 -0700 (PDT)
X-Received: by 2002:a17:906:3e4a:: with SMTP id t10mr7812280eji.553.1618579662121;
        Fri, 16 Apr 2021 06:27:42 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c8dd:75d4:99ab:290a? ([2001:b07:6468:f312:c8dd:75d4:99ab:290a])
        by smtp.gmail.com with ESMTPSA id p7sm4198620eja.103.2021.04.16.06.27.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 06:27:41 -0700 (PDT)
Subject: Re: [PATCH v2] tools: do not include scripts/Kbuild.include
To: Christian Borntraeger <borntraeger@de.ibm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org
Cc: Janosch Frank <frankja@linux.ibm.com>, Alexei Starovoitov
 <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Paul Mackerras
 <paulus@samba.org>, Shuah Khan <shuah@kernel.org>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 bpf@vger.kernel.org, clang-built-linux@googlegroups.com,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 netdev@vger.kernel.org
References: <20210416130051.239782-1-masahiroy@kernel.org>
 <ee99eb80-5711-9349-23a4-0faf8d7b60a8@de.ibm.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <c2b0b348-e114-14d0-44c0-11d0ce6f7760@redhat.com>
Date: Fri, 16 Apr 2021 15:27:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <ee99eb80-5711-9349-23a4-0faf8d7b60a8@de.ibm.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: pbonzini@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="Paz7/o7d";
       spf=pass (google.com: domain of pbonzini@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 16/04/21 15:26, Christian Borntraeger wrote:
>=20
>=20
> On 16.04.21 15:00, Masahiro Yamada wrote:
>> Since commit d9f4ff50d2aa ("kbuild: spilt cc-option and friends to
>> scripts/Makefile.compiler"), some kselftests fail to build.
>>
>> The tools/ directory opted out Kbuild, and went in a different
>> direction. They copy any kind of files to the tools/ directory
>> in order to do whatever they want in their world.
>>
>> tools/build/Build.include mimics scripts/Kbuild.include, but some
>> tool Makefiles included the Kbuild one to import a feature that is
>> missing in tools/build/Build.include:
>>
>> =C2=A0 - Commit ec04aa3ae87b ("tools/thermal: tmon: use "-fstack-protect=
or"
>> =C2=A0=C2=A0=C2=A0 only if supported") included scripts/Kbuild.include f=
rom
>> =C2=A0=C2=A0=C2=A0 tools/thermal/tmon/Makefile to import the cc-option m=
acro.
>>
>> =C2=A0 - Commit c2390f16fc5b ("selftests: kvm: fix for compilers that do
>> =C2=A0=C2=A0=C2=A0 not support -no-pie") included scripts/Kbuild.include=
 from
>> =C2=A0=C2=A0=C2=A0 tools/testing/selftests/kvm/Makefile to import the tr=
y-run macro.
>>
>> =C2=A0 - Commit 9cae4ace80ef ("selftests/bpf: do not ignore clang
>> =C2=A0=C2=A0=C2=A0 failures") included scripts/Kbuild.include from
>> =C2=A0=C2=A0=C2=A0 tools/testing/selftests/bpf/Makefile to import the .D=
ELETE_ON_ERROR
>> =C2=A0=C2=A0=C2=A0 target.
>>
>> =C2=A0 - Commit 0695f8bca93e ("selftests/powerpc: Handle Makefile for
>> =C2=A0=C2=A0=C2=A0 unrecognized option") included scripts/Kbuild.include=
 from
>> =C2=A0=C2=A0=C2=A0 tools/testing/selftests/powerpc/pmu/ebb/Makefile to i=
mport the
>> =C2=A0=C2=A0=C2=A0 try-run macro.
>>
>> Copy what they need into tools/build/Build.include, and make them
>> include it instead of scripts/Kbuild.include.
>>
>> Link:=20
>> https://lore.kernel.org/lkml/86dadf33-70f7-a5ac-cb8c-64966d2f45a1@linux.=
ibm.com/=20
>>
>> Fixes: d9f4ff50d2aa ("kbuild: spilt cc-option and friends to=20
>> scripts/Makefile.compiler")
>> Reported-by: Janosch Frank <frankja@linux.ibm.com>
>> Reported-by: Christian Borntraeger <borntraeger@de.ibm.com>
>> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>=20
> looks better.
> Tested-by: Christian Borntraeger <borntraeger@de.ibm.com>
>=20

Thank you very much Masahiro, this look great.

Paolo

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/c2b0b348-e114-14d0-44c0-11d0ce6f7760%40redhat.com.
