Return-Path: <clang-built-linux+bncBCHJVF74S4BRBE6O4SBQMGQE63UH5MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 260A236197E
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 07:56:37 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id t22-20020a17090a4496b029014cf3d7ff6esf4231475pjg.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 22:56:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618552595; cv=pass;
        d=google.com; s=arc-20160816;
        b=kdTIkntiixFUpCrCNmGM4OtFsu29V8vkEl/cM7pnpRGGARgTAxnT0bbWhYbxz6Myo3
         Bx5WJMaHirk5gjykDqOu/tu6qHvQtw59RjNDxOfbuXFNVFxLmAj9o/BrMDiEyr7FiL+a
         d0vvUe9myrEUlUnoVbt6U4I5qeg9GRiP3hUma1DW3cCp+a9wYlkIIAlW/R+GjlEHgCC/
         VSWPi3ZX8+ELrCQVCliP1d6B3Druva/gdjEZJBqHCBD7AgTMbnnCEelcMPJj+VQeSCiy
         O5dwGkvYZYge1/9bYozzfu0csXh21TwSyeLcsmK5eDmtoHtfeURUThcE9h7zxnnyiNJU
         z1Iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-language:in-reply-to:user-agent
         :date:message-id:references:cc:to:from:subject:sender:dkim-signature;
        bh=3k0FtF/V6gm4t39inV38z2IRRMvb5UkKdU54cn8iHP4=;
        b=tODPG4udm1k1D+stBlO3IzuvL+0nlFl23mBHsIrd/4NB4vLvCB0RoRQh4wiMvPsCCF
         8vhiReUr6cNiROb3gR5r7qvqjDSn21hn9bNl0QHcjY8m+TgMxpTWRev2VRjVNrBJ47qu
         yFbn2SOOFLaDy1t9dEMk2BYxFkiE3Jc4FR8qmUBFHfeAFHoUH1kP6DCYagY4GnishKwF
         V+UyhzWcoJ+DdKpCh+0y6abMSjDCFY2xq5WmKzPhNinlYAQpqq4DLrXowAz+5yl4XFDG
         mn8Y4N0pzELllqML0S84Dn29Bk5d8glp+fkF/kVdy7vc7o3OuWJZMxd96ZWeCf1FUkWZ
         w4uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=K+wZXvqy;
       spf=pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=borntraeger@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :in-reply-to:content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3k0FtF/V6gm4t39inV38z2IRRMvb5UkKdU54cn8iHP4=;
        b=QJu2IYJ0u/DXP8Wz8sP0haTdKs7TKjNgasWAo7xeogCDIlPNF9gJ0Zakd7D7jP3z2g
         Uum+DbAJi3PnX4wHOqb8k3hlFHJdUVVRtvRH2f6OrBDeLpIch9XMNoxvLk+RO/6oWLNO
         MgwOecnUVLnwH0yrKg5o07UKlUh77sNfPlln2/d2i4TfCIaZA0Itt6o5HNGdR70J6Csq
         6tNdEQRr8Mp8+HAhXjynMUv4sb/t8VH2fAxDqueH+Q5VUaQt04GfK5QQ0q7fhO/2ri/X
         agWBBfCQDEuchtX6YALWZUCSK31xFsSvLego256PApzPk6Cn8IYWKr7L3qDNesnFluoi
         xvOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:in-reply-to:content-language
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3k0FtF/V6gm4t39inV38z2IRRMvb5UkKdU54cn8iHP4=;
        b=TsJ7t+mSWLQB0lcAr8BvmomvM5w3zEEaz2AHXi0xxbMMbSTkyZyvXLcJY/pqJCaUuz
         dlzYQgLV1IPF2yECoO4IX4T3BnDXh/DPz3y4enwAQPeBej8EY8LfWpIu9HzzW1yv0mbL
         iJY2vOd8v5JdKL8YnfsQdztlJ1Dug7JCkC7k4Su+5Ab41n7Jw8ELj8N8tEZnv5wcKsvP
         cXLJ68SIVRvOow9PmVK3gXS/DOqBPOKOrmvPSlwLcsekKBUDpxhHC+d1SXG+Fzl//8eU
         gQmSOdsjt3WEGdRhLU+IQ6WITka4gaqxZFO1tE4pXHhw8AWo4EqWA5ZLKvG+V99FYYa6
         NWPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xEXesFdSSAWMprKcFgQY/L2xteB49SiRmCmqUXpy6nkCJji/a
	ayx9xKOSv95J9naVSEJSNcU=
X-Google-Smtp-Source: ABdhPJxYedzPTp64Aq7QTdyMU3NzwfNhDlawk8LvtmVjm8K/JV+kwCFqHYpTok8l78u5d39uexjdbg==
X-Received: by 2002:a63:f056:: with SMTP id s22mr6683161pgj.369.1618552595695;
        Thu, 15 Apr 2021 22:56:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:4e50:: with SMTP id c77ls3256069pfb.10.gmail; Thu, 15
 Apr 2021 22:56:35 -0700 (PDT)
X-Received: by 2002:a63:4a23:: with SMTP id x35mr6567251pga.270.1618552595187;
        Thu, 15 Apr 2021 22:56:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618552595; cv=none;
        d=google.com; s=arc-20160816;
        b=zsMkNbNacBXGBli1291cjqozZmfjQ0lCE6WoI+YQ1SPPBp+qH3bjtK2cOv4TkQ5f1h
         gBgyoImD2+S8bbeESFhF8HizQoyddx/n88EA8HucY/Tgk1lA42lBqbmEA+5+qu08K/8e
         75NehTw20dp/wpFn5vyFWJH+L2L6KB5IiN8pIBy8qRf8vacL52mT9gZdOuBKSx6Rmp0C
         i/pRyZ4x7P+M0c0baCuwBPd1P3rfTI4gUBvHJ3V8O33LWpqB+XFcOfSzbDAnGq4/4dGx
         z2cSY9aaKf/NRF1hr8OAGIzJQ7B2zIX1Mwo6ufil8b650/BWdN8wQBpCM3K1Qk337Cep
         dwfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=mD4JHx4ue4R4SWQTfzp86VvxTxtf2D6eHtp4kBqDp2U=;
        b=eK6zdvkQEHv+9AH983dhgNeNx5HOYEfHYz0V8xt46cqkHBvmGvfeE0Ms4+NOY7APYk
         kNqHq+lomUTvHGgeh6R4G8Yf20nZUiZtwQPzozLbxDAnSEr8cqg/vXbZncvCwbr/uosK
         V6EJQWC8GWatjWt3YRUk76U06njcyeQYbR9n0f5lGudQ/77uOee0schxWys+1R2AmKrK
         lx/R0rdFiAKu0MyqH82bbmn9IlSHPnbh/3/tkHPM2Zt8AFDcsZqLpjbTHHp2fFL8c8a7
         Sfo/BtToIZyKe4IPzDbpVmhwFh5smsLQdU5KcBoZrKgrNdmodxxwBc3r6IKGb8U/+Qij
         c+sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=K+wZXvqy;
       spf=pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=borntraeger@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id k70si281078pga.2.2021.04.15.22.56.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 22:56:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13G5Y9CV094409;
	Fri, 16 Apr 2021 01:56:28 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 37xvte9u90-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 16 Apr 2021 01:56:28 -0400
Received: from m0098414.ppops.net (m0098414.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13G5ZFNE096365;
	Fri, 16 Apr 2021 01:56:28 -0400
Received: from ppma02fra.de.ibm.com (47.49.7a9f.ip4.static.sl-reverse.com [159.122.73.71])
	by mx0b-001b2d01.pphosted.com with ESMTP id 37xvte9u8b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 16 Apr 2021 01:56:27 -0400
Received: from pps.filterd (ppma02fra.de.ibm.com [127.0.0.1])
	by ppma02fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13G5rttD011621;
	Fri, 16 Apr 2021 05:56:25 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
	by ppma02fra.de.ibm.com with ESMTP id 37u3n8j9qc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 16 Apr 2021 05:56:25 +0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
	by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13G5u0UG37618172
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 16 Apr 2021 05:56:00 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 80067A405B;
	Fri, 16 Apr 2021 05:56:22 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3D2F1A4054;
	Fri, 16 Apr 2021 05:56:19 +0000 (GMT)
Received: from oc7455500831.ibm.com (unknown [9.171.64.24])
	by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Fri, 16 Apr 2021 05:56:19 +0000 (GMT)
Subject: Re: [PATCH 2/2] tools: do not include scripts/Kbuild.include
From: Christian Borntraeger <borntraeger@de.ibm.com>
To: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org
Cc: Janosch Frank <frankja@linux.ibm.com>,
        Alexei Starovoitov
 <ast@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Daniel Borkmann <daniel@iogearbox.net>, Harish <harish@linux.ibm.com>,
        John Fastabend <john.fastabend@gmail.com>,
        KP Singh <kpsingh@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Paolo Bonzini <pbonzini@redhat.com>, Paul Mackerras <paulus@samba.org>,
        Shuah Khan <shuah@kernel.org>, Song Liu <songliubraving@fb.com>,
        Yonghong Song <yhs@fb.com>, bpf@vger.kernel.org,
        clang-built-linux@googlegroups.com, kvm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, netdev@vger.kernel.org
References: <20210415072700.147125-1-masahiroy@kernel.org>
 <20210415072700.147125-2-masahiroy@kernel.org>
 <eb623ea6-a2f4-9692-ff3d-cb9f9b9ea15f@de.ibm.com>
Message-ID: <0eeed665-a105-917b-e7fb-8dafe2ae9d94@de.ibm.com>
Date: Fri, 16 Apr 2021 07:56:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
In-Reply-To: <eb623ea6-a2f4-9692-ff3d-cb9f9b9ea15f@de.ibm.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 9iL9uw5JSj46ABaUJ5-OgKR5h6DlkRk1
X-Proofpoint-ORIG-GUID: TiW04LfuFfbrVJq-d80Jlu1KQqPml71C
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-15_11:2021-04-15,2021-04-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 mlxscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 mlxlogscore=999 priorityscore=1501 clxscore=1015 spamscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104160042
X-Original-Sender: borntraeger@de.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=K+wZXvqy;       spf=pass (google.com:
 domain of borntraeger@de.ibm.com designates 148.163.158.5 as permitted
 sender) smtp.mailfrom=borntraeger@de.ibm.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=ibm.com
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


On 15.04.21 10:06, Christian Borntraeger wrote:
>=20
> On 15.04.21 09:27, Masahiro Yamada wrote:
>> Since commit d9f4ff50d2aa ("kbuild: spilt cc-option and friends to
>> scripts/Makefile.compiler"), some kselftests fail to build.
>>
>> The tools/ directory opted out Kbuild, and went in a different
>> direction. They copy any kind of files to the tools/ directory
>> in order to do whatever they want to do in their world.
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
>> Copy what they want there, and stop including scripts/Kbuild.include
>> from the tool Makefiles.
>>
>> Link: https://lore.kernel.org/lkml/86dadf33-70f7-a5ac-cb8c-64966d2f45a1@=
linux.ibm.com/
>> Fixes: d9f4ff50d2aa ("kbuild: spilt cc-option and friends to scripts/Mak=
efile.compiler")
>> Reported-by: Janosch Frank <frankja@linux.ibm.com>
>> Reported-by: Christian Borntraeger <borntraeger@de.ibm.com>
>> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>=20
> When applying this on top of d9f4ff50d2aa ("kbuild: spilt cc-option and f=
riends to scripts/Makefile.compiler")
>=20
> I still do get
>=20
> # =3D=3D=3D=3D Test Assertion Failure =3D=3D=3D=3D
> #=C2=A0=C2=A0 lib/kvm_util.c:142: vm->fd >=3D 0
> #=C2=A0=C2=A0 pid=3D315635 tid=3D315635 - Invalid argument
> #=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1=C2=A0=C2=A0=C2=A0 0x0000000001002f4b: v=
m_open at kvm_util.c:142
> #=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2=C2=A0=C2=A0=C2=A0=C2=A0 (inlined by) vm=
_create at kvm_util.c:258
> #=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 3=C2=A0=C2=A0=C2=A0 0x00000000010015ef: t=
est_add_max_memory_regions at set_memory_region_test.c:351
> #=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4=C2=A0=C2=A0=C2=A0=C2=A0 (inlined by) ma=
in at set_memory_region_test.c:397
> #=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 5=C2=A0=C2=A0=C2=A0 0x000003ff971abb89: ?=
? ??:0
> #=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6=C2=A0=C2=A0=C2=A0 0x00000000010017ad: .=
annobin_abi_note.c.hot at crt1.o:?
> #=C2=A0=C2=A0 KVM_CREATE_VM ioctl failed, rc: -1 errno: 22
> not ok 7 selftests: kvm: set_memory_region_test # exit=3D254
>=20
> and the testcase compilation does not pickup the pgste option.


What does work is the following:
diff --git a/tools/testing/selftests/kvm/Makefile b/tools/testing/selftests=
/kvm/Makefile
index a6d61f451f88..d9c6d9c2069e 100644
--- a/tools/testing/selftests/kvm/Makefile
+++ b/tools/testing/selftests/kvm/Makefile
@@ -1,5 +1,6 @@
  # SPDX-License-Identifier: GPL-2.0-only
  include ../../../../scripts/Kbuild.include
+include ../../../../scripts/Makefile.compiler
 =20
  all:
 =20

as it does pickup the linker option handling.


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0eeed665-a105-917b-e7fb-8dafe2ae9d94%40de.ibm.com.
