Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB56BQL3QKGQEGCFQC5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE441F50AD
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 10:59:36 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id a5sf1375017qkk.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 01:59:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591779575; cv=pass;
        d=google.com; s=arc-20160816;
        b=r/PP4AP+MDGpltFY6e8GLdffHQrhaQISsZcb4VbJrVet8Vf8z7Pcv9SkIEukY1hBMK
         C5ZQuvwtx4z25F5HcmYKHI6YHvSsjwhZ3GwNRN2YhrflIGuCdUOJd3Z1sxwWRywEgiEO
         RORxiXXhpBhpC82JrHULAC8pmofTepeMfLGbgtcENKsnGO6BFyXfDxM3HT9i/llTDKYv
         zzXOG7IYwxktj3shITo8kzp54ftez2YxD5scGTL0XGlWGiFRG0RiDaMRN7IQDfIlhoui
         4aawvLwRXg6i0dVjukLHHP/fV/H5PqPBRNoWAjHzR/RHc6YA64sPIn/YKnKsKUO9HxYn
         n+qQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=E3towfPgoPNOs/XZl3w2uwm0VStylzHN53Gasp96PIA=;
        b=Xgps4mR6QqVhgqoA6cSpp2SQlJwRmryHJvwH7jFbiZjQQ6beC2TbcZZ8g6n+AMsFrn
         tp/gvKaV0CDkwudwihzh+y7d5urNsS3WYGYfu2wFRcSpStn3wTu7sD3CSG5y3SxoHHoF
         4lkVKpj30xm8TpYMCgOE45KB57WQTO9tEwMB+RqPKYaHM5kWoSGL4Ll3zGmPBNmQf2Rc
         VqB+ALKKYjIsKmSy7LV+zKumA3XPnZx7y+XVOycmvAQSDG9r6zhLwmJMs32ti6tmCwc7
         cryaaZXI454tI4OL4B/DYQFxXdiD1QFRakoUjG15hed8b+lkq+cyJSeft18GxrjDfr7g
         6SZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qz5SJTsY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E3towfPgoPNOs/XZl3w2uwm0VStylzHN53Gasp96PIA=;
        b=Lgyg529R4zt9I26gBIBcIxcf1PxzF+vTtO1JLOVWLNm7G1sAB+cXTXlZXwuX1Ixkun
         VME9k5ANlq+uhfLVLI+A1FTNhnqKP5SAqTQJk0dXmRmeh2vzuHuiWBi5UeJ9FR4B+Jir
         O+ZsFgMyj3MG7xyBlxWqyVMQW6oWb6a5i+Kf3kyVUpRsFQDa5wGm2MzFwJoj09l0xiEY
         mT9ucyFJF/6IKMR90ddjXa2duhAS3s/8bhQuMfIJM1ApH6oXYZ71XFJqkZfpdg1+4+VB
         fVAelUnOlKXpoqN1PrUNFUDENVXdTuzhFdjrqvWEp7r4GH9wjLZmeYjETrASHZgjBMzx
         4Wfw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E3towfPgoPNOs/XZl3w2uwm0VStylzHN53Gasp96PIA=;
        b=CVnB302HFW9gIuF2LPxy2ERv5m7yTLqFXxXrPuDKCakGfBR58nCioeNsPQxXxPd4fK
         zsHHSdhVoOLmn4u9jtx6khWsFkNjDX6AcqPX03L9tD6rEog1roiVocYFZFVnBssk/U9r
         ut5040Rlj3qmytomA4SOv7I+3bwKWX42JJR+GV7JaxkJWCvuLZ/ENuh4G9FDVIpNQZ+d
         aZEyVdGeH7tzsRE+El8b7eTaB/XNA/LTzTMy5eZa/1iwVbgVpjGnWpMJ7BAq2SNln/dh
         43mMpbbrZM1J+3qu/M4VhDXMRisGhKzgJV0iUMirdz5+gTQo3dWBJXibWFnDwVq7pVq8
         gFUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E3towfPgoPNOs/XZl3w2uwm0VStylzHN53Gasp96PIA=;
        b=kxjlkTEq4VqzQqv3b/ebwu04MErTzvxW4u3LTQFHvw94hIYmxCCjIikE8XV6TkMooy
         0TdggfbvIOvBN/a5oRPsfAJS0rOlzxL6K4hID0Uq8D9gE/fOMmO1L3J7LxaFGDQKTN5+
         6q7dyphHN/wBHQVVIzgZQdGOB0/PvEQhtf+mbrFuV0c08Id5v4XIDTuPEGVovBpVOMI9
         hKRfIeSbSMriNJQ3jS02D/DonWWDHkbjVJudUneS+daZjeUdEbcJ8JGD63LK0E/vjpXA
         cUDilYYWn4hJpVKi2t9/BkGTmaxZYEJgvOKLPKpCH6DCk5PZZOS4NKeU2ww2/HZETd5P
         K53g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pqKX9zgPo5MPOcpwwSbFeGFzg3x9NLD2UG8urlIFoZ6+LSN+3
	nV1+Gbvj+wFL6Qlu48HRav0=
X-Google-Smtp-Source: ABdhPJzNrP0xcng6a1q3yCzMNJ1lfek0f4juLZHwtX3rzP9nH30I/f6XjePOU6BYtB8u2d+qaX2+fQ==
X-Received: by 2002:a0c:f494:: with SMTP id i20mr2110063qvm.179.1591779575431;
        Wed, 10 Jun 2020 01:59:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1917:: with SMTP id t23ls2827114qtj.0.gmail; Wed, 10 Jun
 2020 01:59:35 -0700 (PDT)
X-Received: by 2002:ac8:2f7a:: with SMTP id k55mr2099508qta.34.1591779575164;
        Wed, 10 Jun 2020 01:59:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591779575; cv=none;
        d=google.com; s=arc-20160816;
        b=RutkcFStoGgqocFwFjVCo2REe2ZWLb4WT4liXAZyjJeoHG6L9PES1yqKz7kLpYlvwC
         /7UivDXyeGGhjzZ43P8eYURjlrcQtP5lJ7F23NolbYMH73lrJo46lVHG0hg1/a/zuyB1
         p+m2rlrr8vPBjjBJCwalOgk3VxOEozirX8r+RXCy/7NweF+BDBOAHiDdUXj6M7Ia4frj
         ibSbKTttkuI+Ezbcqig0JgCngHNwnKEV09OI6hGswd6qiDcjZTU9r8QKaZaeCIlp4EUW
         G2f5FH1KJ9BOHT8caF2qPIh+6az9HiMxkLsD4DG/v36Yqk+9KX57c58jg0wQs0NfCzkL
         Bmjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=LHb9HPZL9XpTtc79yClOxL66RppszWEIptQMEpe4Jo4=;
        b=KBsCgtx9zgmBOUrwqQYh/PBq/2WMjN96sNvST5OrPGFvrSqefI+cQI4UEVpO5bVOk4
         w6UyGQ5pDKkJxDpqNyCMvQnvLNAUjNDo3ihfwlDDhfk6AlMvbUjuHI/i9gKAwDTjrBBC
         NY+rg0D2hgYfjJ1tXgaTXTVebhmIvt5wAe+6K/0q71HdzHMlPOQwIJo47u8JWW4CAHnI
         JhQV0s5X/uHCgzhiBs7a4G9vPWGtAc7gPUinp7DC45s0ODBX0h2GXYIx8J6Qe20vhhgM
         LLSTDafAvkqH+5F2lFS2oq9dBp1ePyMcf7Sw65kdUymoveXbGRlfAi1jwz3v1GI3vOAw
         rHwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qz5SJTsY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oo1-xc43.google.com (mail-oo1-xc43.google.com. [2607:f8b0:4864:20::c43])
        by gmr-mx.google.com with ESMTPS id y21si1037222qka.2.2020.06.10.01.59.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2020 01:59:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c43 as permitted sender) client-ip=2607:f8b0:4864:20::c43;
Received: by mail-oo1-xc43.google.com with SMTP id 18so342553ooy.3
        for <clang-built-linux@googlegroups.com>; Wed, 10 Jun 2020 01:59:35 -0700 (PDT)
X-Received: by 2002:a4a:c501:: with SMTP id i1mr1556787ooq.65.1591779574587;
        Wed, 10 Jun 2020 01:59:34 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id t11sm2764868otr.65.2020.06.10.01.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2020 01:59:34 -0700 (PDT)
Date: Wed, 10 Jun 2020 01:59:32 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Zhenzhong Duan <zhenzhong.duan@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-efi@vger.kernel.org,
	ardb@kernel.org, nivedita@alum.mit.edu, keescook@chromium.org,
	mingo@kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] efi/libstub: Fix build error with libstub
Message-ID: <20200610085932.GA461993@ubuntu-n2-xlarge-x86>
References: <20200610071446.3737-1-zhenzhong.duan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200610071446.3737-1-zhenzhong.duan@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Qz5SJTsY;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jun 10, 2020 at 03:14:46PM +0800, Zhenzhong Duan wrote:
> Got below error during build:
>=20
>   In file included from drivers/firmware/efi/libstub/efi-stub-helper.c:16=
:0:
>   drivers/firmware/efi/libstub/efi-stub-helper.c: In function =E2=80=98ef=
i_char16_puts=E2=80=99:
>   arch/x86/include/asm/efi.h:355:3: sorry, unimplemented: ms_abi attribut=
e requires -maccumulate-outgoing-args or subtarget optimization implying it
>      : __efi64_thunk_map(inst, func, inst, ##__VA_ARGS__))
>      ^
>   drivers/firmware/efi/libstub/efi-stub-helper.c:37:2: note: in expansion=
 of macro =E2=80=98efi_call_proto=E2=80=99
>     efi_call_proto(efi_table_attr(efi_system_table, con_out),
>     ^
>   drivers/firmware/efi/libstub/efi-stub-helper.c:37: confused by earlier =
errors, bailing out
>=20
> Fix it by adding -maccumulate-outgoing-args for efi libstub build
> as suggested by gcc.
>=20
> Signed-off-by: Zhenzhong Duan <zhenzhong.duan@gmail.com>
> ---
>  drivers/firmware/efi/libstub/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi=
/libstub/Makefile
> index cce4a74..25e5d02 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -6,7 +6,7 @@
>  # enabled, even if doing so doesn't break the build.
>  #
>  cflags-$(CONFIG_X86_32)		:=3D -march=3Di386
> -cflags-$(CONFIG_X86_64)		:=3D -mcmodel=3Dsmall
> +cflags-$(CONFIG_X86_64)		:=3D -mcmodel=3Dsmall -maccumulate-outgoing-arg=
s

This will need a cc-option call if this patch is necessary because clang
does not support this flag.

clang-11: error: unknown argument: '-maccumulate-outgoing-args'

>  cflags-$(CONFIG_X86)		+=3D -m$(BITS) -D__KERNEL__ \
>  				   -fPIC -fno-strict-aliasing -mno-red-zone \
>  				   -mno-mmx -mno-sse -fshort-wchar \
> --=20
> 1.8.3.1
>=20

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200610085932.GA461993%40ubuntu-n2-xlarge-x86.
