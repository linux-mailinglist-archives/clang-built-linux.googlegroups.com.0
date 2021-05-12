Return-Path: <clang-built-linux+bncBD5JHS4X5YBBBEFC5WCAMGQEGIH6AUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 941F737B4B9
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 05:52:49 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id f20-20020a0caa940000b02901c5058e5813sf17384926qvb.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 20:52:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620791568; cv=pass;
        d=google.com; s=arc-20160816;
        b=n9f/nHojxSfquXQNZuKbWfQHro5l0FZDqS+/q6DPO9KhNBQVI0zEZOs4M6hSJEfrSF
         /JkhFg1vd/FVnCqpN6SRo+dnEHQVc5C/hJROYnsRGA1jfdtAsKEOzTgiY9XM7vIZJNsv
         egU/3fFO6/nXfXUXLQYR6YeAhbg6ibVAqsNBk+oqngo40zXUw80cISpHUuUKSkR4Ze3a
         ChsqAhk4c0194qIhL1eRtbbbqwzAmN7rn9rscNB57vhDw4wQO9L9fip0lCisDnbtBl5l
         MWFGOUXD748UrpkgsXMNZyfHGkpDoV5ao2piMZUn+9YTj/2JEubLrB07+xuntnC7+GHF
         ThHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=3UI2L7h7w0WFKsH8uK3QavZWInpJxhMjec1p95YoS/A=;
        b=awVEqW5A/c2JmwVYzoT2HTt9YvznWBvlBpmOvOdoYlpLhNmf5rC89XzcYW18A1TLzE
         3k8LJKeY02VnvmXsBQhLjYaKxsiiqIk7xRdVF7RwubKwAeY9Vf8SQt2co5dTDe8I8dfa
         yZ2F0S4HETylzpjLq3QXgSsePFNfIKN5QrhwE8CeDgTPXSdexMYtHjtTku+cYrDdR325
         BpdYPeaNKZJtzxhdC7RikK0mY4KLfN6nayqor9geWniz00m3/L2s31FYLFpbmdJ/NeH3
         pPXvIH3D97gaoUCLPvkrhscZrcRJA1EzeoN7p/Wvou/hlBzNHXKXpLeglx852RVnKxmR
         fx5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ozlabs-ru.20150623.gappssmtp.com header.s=20150623 header.b=zQYt8vmL;
       spf=pass (google.com: domain of aik@ozlabs.ru designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=aik@ozlabs.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3UI2L7h7w0WFKsH8uK3QavZWInpJxhMjec1p95YoS/A=;
        b=paAemPoHKr2+gg8I9IHsdLa1VowL06FVfBeK0jGwgUURsL0GCzglGBLCXdWDu1EnsM
         FZom8pyotjxcBFuC/Vw9Sf5At33r4KHuiV903VewkwOUNaP7agXWNkqXZTjP737s+QE6
         ztcMWIh/oTLtx1Wc7CCB2BW8gC5SfXvFHPk3hEuq5As+xnTwtSIpHIuHZiadJTy8Yfzb
         va9qALxrZM+vKKgVqyBDyRYpMIEqU/M6Yh1BY8SF2Ab6no08i/iVwAV0vTMK7+dpB7Jc
         1hHxwzSbFdbGBklC+JECcbT1GtQrkwoD0Ygs3UjlMJyC3m2TgbNoDUoIYrrjCd2yXY+O
         OBrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3UI2L7h7w0WFKsH8uK3QavZWInpJxhMjec1p95YoS/A=;
        b=qQ2GjKDBYUlpZG5IU9cjVLidVJcWfQgvaNHNyikoYwKxa+H4Y2LdNkmZea1mAj4yQi
         gw1Vp0CczI0u464TDVYVs1K6/a0+0TxGCTFkL8L5L+qQiBvpaVcBWZ/LTx2koNo7sntd
         x0KiR4P7aV4MjvIPRnTj9rwlQyVkEIK+ODffVuYNzj9i3VMaX2urW0rS7XF5RMM/eay0
         HHQaaWt7m+6F6rjTBgWLK9DIue7rd/0k0hv3OmwhQvpMAP4HPO2vQ4DIwzwpm+lB9uQo
         vDs4l2N5ogV1GiQdWvj8Xwvddx3G1WPxmxlhpopX2Jb6mhp2yaRXQcHNAmV7DGlMwQCz
         Gfmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533oqRkFHQ6tridQv+HWShFHctri2c6IkeH02Zsd2ajpLvrfHv5I
	PRu4V6rotlMc/1elVq+rTL4=
X-Google-Smtp-Source: ABdhPJwNZPedM617j8FvBFGST07iygFLTVJzEMik1QbFMfM/CAIkVTRk90Eb6WZ17xGdw7/FWNDLLg==
X-Received: by 2002:a37:9507:: with SMTP id x7mr32313803qkd.1.1620791568646;
        Tue, 11 May 2021 20:52:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7684:: with SMTP id g4ls536958qtr.9.gmail; Tue, 11 May
 2021 20:52:48 -0700 (PDT)
X-Received: by 2002:ac8:5b87:: with SMTP id a7mr22566563qta.29.1620791568245;
        Tue, 11 May 2021 20:52:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620791568; cv=none;
        d=google.com; s=arc-20160816;
        b=YcD1yQic+4gMbvzwB8bfKozNQCnJG0cFnf1KpJCRLQAPL6YkcCIbJT/2OdBK+S//fo
         8L4FUFDdLRyO72YaQz9FF1ziMzRSKAHT8klH/JYih5v46ASLUvxN14TUsivvxnAchJrw
         /nmy7CgX97SCOBEo6LCemq5bf9m/wLcZZ24YVsqo6LQJmLICuIM8EIJcii2M/9iW7aE8
         skiCma6dYvYFTg9PYBrgNbQ0qtxYSIAtpTSL0Lkx+L4Tcs6KDfSAPeMx4H2TiWTivLzY
         7VYcAaRCJiDf6opfK3snp98ZsJiQR/Q0O+EbW8DeS6oQ9Es8yPiJUapG/C0akienX6/l
         LTgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=kLri06/PsvUYTrFMMBEaqXVTzgJ4ixwFqo6hvHf1gdo=;
        b=R5VnFQ1QW/yIVsnS4aic5zyYV9EAbB+lFeyiR5GI7Tl2jXuE4W35d4K5FWHwu2sboc
         kGvENBq0xQxTAyrO+fiRa/OG2UcXNXs5StfvK5Ai+PSxoAjn3cCT/rPNcZgig5XAPFVi
         MapFCEwLk4cm6r4znWg0QNSfvfrhu8H+02bQYlfp3IlMJEoQtWaI4hEFjD9Onjc6ghPF
         qINp2ZfrGJ6t8O+rbVkSnuRowCuk4pPIzkdhVsL4Fe/pnvHAogr872hduTbzb3S15lXy
         xs+zMSd16v6kCNUEeNL9PPQqqiMDYsiIq+K5X3qskONSTMNBXHcX5NvYFFxqZGCC110n
         HPlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ozlabs-ru.20150623.gappssmtp.com header.s=20150623 header.b=zQYt8vmL;
       spf=pass (google.com: domain of aik@ozlabs.ru designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=aik@ozlabs.ru
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id 8si797697qtp.5.2021.05.11.20.52.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 20:52:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of aik@ozlabs.ru designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id bo23-20020a17090b0917b029015cb1f2fd59so262586pjb.2
        for <clang-built-linux@googlegroups.com>; Tue, 11 May 2021 20:52:47 -0700 (PDT)
X-Received: by 2002:a17:902:e00e:b029:ef:5f1c:18a8 with SMTP id o14-20020a170902e00eb02900ef5f1c18a8mr6440716plo.38.1620791567073;
        Tue, 11 May 2021 20:52:47 -0700 (PDT)
Received: from localhost (110-175-254-242.static.tpgi.com.au. [110.175.254.242])
        by smtp.gmail.com with UTF8SMTPSA id d8sm13938636pfl.156.2021.05.11.20.52.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 20:52:46 -0700 (PDT)
Message-ID: <1024e788-f5f0-9990-a049-94133d3a0921@ozlabs.ru>
Date: Wed, 12 May 2021 13:52:10 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:88.0) Gecko/20100101
 Thunderbird/88.0
Subject: Re: [PATCH kernel v2] powerpc/makefile: Do not redefine $(CPP) for
 preprocessor
Content-Language: en-US
To: Nathan Chancellor <nathan@kernel.org>, linuxppc-dev@lists.ozlabs.org
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>,
 Masahiro Yamada <masahiroy@kernel.org>, Michael Ellerman
 <mpe@ellerman.id.au>, Michal Marek <michal.lkml@markovi.net>,
 Nicholas Piggin <npiggin@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20210511044812.267965-1-aik@ozlabs.ru>
 <3579aa0d-0470-9a6b-e35b-48f997a5b48b@kernel.org>
From: Alexey Kardashevskiy <aik@ozlabs.ru>
In-Reply-To: <3579aa0d-0470-9a6b-e35b-48f997a5b48b@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: aik@ozlabs.ru
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ozlabs-ru.20150623.gappssmtp.com header.s=20150623
 header.b=zQYt8vmL;       spf=pass (google.com: domain of aik@ozlabs.ru
 designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=aik@ozlabs.ru
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



On 5/12/21 05:18, Nathan Chancellor wrote:
> On 5/10/2021 9:48 PM, Alexey Kardashevskiy wrote:
>> The $(CPP) (do only preprocessing) macro is already defined in Makefile.
>> However POWERPC redefines it and adds $(KBUILD_CFLAGS) which results
>> in flags duplication. Which is not a big deal by itself except for
>> the flags which depend on other flags and the compiler checks them
>> as it parses the command line.
>>
>> Specifically, scripts/Makefile.build:304 generates ksyms for .S files.
>> If clang+llvm+sanitizer are enabled, this results in
>>
>> -emit-llvm-bc -fno-lto -flto -fvisibility=3Dhidden \
>> =C2=A0 -fsanitize=3Dcfi-mfcall -fno-lto=C2=A0 ...
>>
>> in the clang command line and triggers error:
>>
>> clang-13: error: invalid argument '-fsanitize=3Dcfi-mfcall' only allowed=
=20
>> with '-flto'
>>
>> This removes unnecessary CPP redefinition. Which works fine as in most
>> place KBUILD_CFLAGS is passed to $CPP except
>> arch/powerpc/kernel/vdso64/vdso(32|64).lds (and probably some others,
>> not yet detected). To fix vdso, we do:
>> 1. explicitly add -m(big|little)-endian to $CPP
>> 2. (for clang) add $CLANG_FLAGS to $KBUILD_CPPFLAGS as otherwise clang
>> silently ignores -m(big|little)-endian if the building platform does not
>> support big endian (such as x86) so --prefix=3D is required.
>>
>> While at this, remove some duplication from CPPFLAGS_vdso(32|64)
>> as cmd_cpp_lds_S has them anyway. It still puzzles me why we need -C
>> (preserve comments in the preprocessor output) flag here.
>>
>> Signed-off-by: Alexey Kardashevskiy <aik@ozlabs.ru>
>> ---
>> Changes:
>> v2:
>> * fix KBUILD_CPPFLAGS
>> * add CLANG_FLAGS to CPPFLAGS
>> ---
>> =C2=A0 Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 +
>> =C2=A0 arch/powerpc/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 3 ++-
>> =C2=A0 arch/powerpc/kernel/vdso32/Makefile | 2 +-
>> =C2=A0 arch/powerpc/kernel/vdso64/Makefile | 2 +-
>> =C2=A0 4 files changed, 5 insertions(+), 3 deletions(-)
>>
>> diff --git a/Makefile b/Makefile
>> index 72af8e423f11..13acd2183d55 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -591,6 +591,7 @@ CLANG_FLAGS=C2=A0=C2=A0=C2=A0 +=3D=20
>> --prefix=3D$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
>> =C2=A0 endif
>> =C2=A0 CLANG_FLAGS=C2=A0=C2=A0=C2=A0 +=3D -Werror=3Dunknown-warning-opti=
on
>> =C2=A0 KBUILD_CFLAGS=C2=A0=C2=A0=C2=A0 +=3D $(CLANG_FLAGS)
>> +KBUILD_CPPFLAGS=C2=A0=C2=A0=C2=A0 +=3D $(CLANG_FLAGS)
>=20
> This is going to cause flag duplication, which would be nice to avoid. I=
=20
> do not know if we can get away with just adding $(CLANG_FLAGS) to=20
> KBUILD_CPPFLAGS instead of KBUILD_CFLAGS though. It seems like this=20
> assignment might be better in arch/powerpc/Makefile with the=20
> KBUILD_CPPFLAGS additions there.


It is a fair point about the duplication (which is woooow, I often see=20
-mbig-endian 3 - three - times) and I think I only need --prefix=3D there=
=20
but this is still exactly the place to do such thing as it potentially=20
affects all archs supporting both endianness (not many though, yeah).=20
Thanks,




>=20
> Cheers,
> Nathan
>=20
>> =C2=A0 KBUILD_AFLAGS=C2=A0=C2=A0=C2=A0 +=3D $(CLANG_FLAGS)
>> =C2=A0 export CLANG_FLAGS
>> =C2=A0 endif
>> diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
>> index 3212d076ac6a..306bfd2797ad 100644
>> --- a/arch/powerpc/Makefile
>> +++ b/arch/powerpc/Makefile
>> @@ -76,6 +76,7 @@ endif
>> =C2=A0 ifdef CONFIG_CPU_LITTLE_ENDIAN
>> =C2=A0 KBUILD_CFLAGS=C2=A0=C2=A0=C2=A0 +=3D -mlittle-endian
>> +KBUILD_CPPFLAGS=C2=A0=C2=A0=C2=A0 +=3D -mlittle-endian
>> =C2=A0 KBUILD_LDFLAGS=C2=A0=C2=A0=C2=A0 +=3D -EL
>> =C2=A0 LDEMULATION=C2=A0=C2=A0=C2=A0 :=3D lppc
>> =C2=A0 GNUTARGET=C2=A0=C2=A0=C2=A0 :=3D powerpcle
>> @@ -83,6 +84,7 @@ MULTIPLEWORD=C2=A0=C2=A0=C2=A0 :=3D -mno-multiple
>> =C2=A0 KBUILD_CFLAGS_MODULE +=3D $(call cc-option,-mno-save-toc-indirect=
)
>> =C2=A0 else
>> =C2=A0 KBUILD_CFLAGS +=3D $(call cc-option,-mbig-endian)
>> +KBUILD_CPPFLAGS +=3D $(call cc-option,-mbig-endian)
>> =C2=A0 KBUILD_LDFLAGS=C2=A0=C2=A0=C2=A0 +=3D -EB
>> =C2=A0 LDEMULATION=C2=A0=C2=A0=C2=A0 :=3D ppc
>> =C2=A0 GNUTARGET=C2=A0=C2=A0=C2=A0 :=3D powerpc
>> @@ -208,7 +210,6 @@ KBUILD_CPPFLAGS=C2=A0=C2=A0=C2=A0 +=3D -I $(srctree)=
/arch/$(ARCH)=20
>> $(asinstr)
>> =C2=A0 KBUILD_AFLAGS=C2=A0=C2=A0=C2=A0 +=3D $(AFLAGS-y)
>> =C2=A0 KBUILD_CFLAGS=C2=A0=C2=A0=C2=A0 +=3D $(call cc-option,-msoft-floa=
t)
>> =C2=A0 KBUILD_CFLAGS=C2=A0=C2=A0=C2=A0 +=3D -pipe $(CFLAGS-y)
>> -CPP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D $(CC) -E $(KBUILD_CFL=
AGS)
>> =C2=A0 CHECKFLAGS=C2=A0=C2=A0=C2=A0 +=3D -m$(BITS) -D__powerpc__ -D__pow=
erpc$(BITS)__
>> =C2=A0 ifdef CONFIG_CPU_BIG_ENDIAN
>> diff --git a/arch/powerpc/kernel/vdso32/Makefile=20
>> b/arch/powerpc/kernel/vdso32/Makefile
>> index 7d9a6fee0e3d..ea001c6df1fa 100644
>> --- a/arch/powerpc/kernel/vdso32/Makefile
>> +++ b/arch/powerpc/kernel/vdso32/Makefile
>> @@ -44,7 +44,7 @@ asflags-y :=3D -D__VDSO32__ -s
>> =C2=A0 obj-y +=3D vdso32_wrapper.o
>> =C2=A0 targets +=3D vdso32.lds
>> -CPPFLAGS_vdso32.lds +=3D -P -C -Upowerpc
>> +CPPFLAGS_vdso32.lds +=3D -C
>> =C2=A0 # link rule for the .so file, .lds has to be first
>> =C2=A0 $(obj)/vdso32.so.dbg: $(src)/vdso32.lds $(obj-vdso32)=20
>> $(obj)/vgettimeofday.o FORCE
>> diff --git a/arch/powerpc/kernel/vdso64/Makefile=20
>> b/arch/powerpc/kernel/vdso64/Makefile
>> index 2813e3f98db6..07eadba48c7a 100644
>> --- a/arch/powerpc/kernel/vdso64/Makefile
>> +++ b/arch/powerpc/kernel/vdso64/Makefile
>> @@ -30,7 +30,7 @@ ccflags-y :=3D -shared -fno-common -fno-builtin=20
>> -nostdlib \
>> =C2=A0 asflags-y :=3D -D__VDSO64__ -s
>> =C2=A0 targets +=3D vdso64.lds
>> -CPPFLAGS_vdso64.lds +=3D -P -C -U$(ARCH)
>> +CPPFLAGS_vdso64.lds +=3D -C
>> =C2=A0 # link rule for the .so file, .lds has to be first
>> =C2=A0 $(obj)/vdso64.so.dbg: $(src)/vdso64.lds $(obj-vdso64)=20
>> $(obj)/vgettimeofday.o FORCE
>>
>=20

--=20
Alexey

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1024e788-f5f0-9990-a049-94133d3a0921%40ozlabs.ru.
