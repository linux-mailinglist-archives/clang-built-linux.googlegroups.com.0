Return-Path: <clang-built-linux+bncBDT6TV45WMPRBREA6DYQKGQETND7M2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFAF1543AC
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Feb 2020 13:02:13 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id r14sf955893ljc.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Feb 2020 04:02:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580990533; cv=pass;
        d=google.com; s=arc-20160816;
        b=SHcyOmiR6Xq4ChQUWWkyQ7TGsBF2v5l0WLlkJsmH4jq8MaRZqkAdz5n3ve8LwWpl9l
         4AnFSPeRYElNGswD5hxN5fQvIWIb6VXSpcOFkSYVp27QGWysAcP4AIhbOs+Ra3J9FfIX
         YtrTk254LjUcvTOIVCH1nlhU2Yel6mKw6b7zMuISKN9Hm4YIWrawXcRDdsCMGBPYt6vM
         ihcWzKizSrEntcVEuM3V1qQxYPDCYBWyBBf9waEpp1/vthbUJsdeP9xr4UmhjBzL3WuN
         GCL8FfRbZddlENK4tNZKMjP1FiXkBDfYQd5Cb2E/FwQsYKHjKAj5cyq7Vo/X10CG3bHP
         o+VQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:from:to:subject
         :content-transfer-encoding:mime-version:date:message-id:sender
         :dkim-signature;
        bh=aBy7xFhduAtABD/hZb9YGIR/i74kLynfExaAtq/8bK0=;
        b=XkTXlRW96IXSe9uChjLgUet03vVqKdzJYVL2h8n3EqaYgylPpjV3yG3V/2r3VRIag9
         z2Sf3UpyP97OWKurQ3rENhSmuICJ+qtpcrOoMzdVDh6wniJTzPXgGSG2YSY3bXhrDrE2
         EtID83hzSOBx2622m3IRAhn9FLA/CGnxHE3hKlAbacC5xnFmAMvdgXuhfvvl7EiCTXjk
         9fm0MKn7Deyz9QNZ2uf5y//N/kVWuajHyNQgdheH2B/pQNm1c7L0SabvqMTWkC1BAebM
         cGG27rztE8iJ+ygx5P9/UYGVVc6xYct4Xc9ALwXdv/CDS2YlYSD9JljP96aYURfbv9bA
         YVMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=YE1UhWZm;
       spf=neutral (google.com: 2a00:1450:4864:20::435 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:content-transfer-encoding
         :subject:to:from:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aBy7xFhduAtABD/hZb9YGIR/i74kLynfExaAtq/8bK0=;
        b=Xcxnpp1MO8BFohsNEG8KJmnJYOOHgKMCe1jr7EqX6UQCLVwqFwgMd3Y/HIghGZLaeH
         1meSNGRadszQciSNuYKq4po4w0Hw+qPzXYUXM7jJmeWnbsiB6VXVBm5ggol7WlMqj6Vx
         9UakA5QdkPxlemTILhWv21493nOWkm+3Pkd/LG4Slvh4u4jd+3CcCPfUgwCVPoiABz6S
         rIz9tV/iTH8c1YPY1jrMzmTBGEcaj0qAWIj/RV04SZTNAoZqeWpPL879LvJ96qc8m4Kr
         D3+F9GFtOPhofjiRFi+KZByzadiBKfIFKUQKnZXFib5TlpTH1mAwEsntz7V8iMh8NIDu
         Ll3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version
         :content-transfer-encoding:subject:to:from:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aBy7xFhduAtABD/hZb9YGIR/i74kLynfExaAtq/8bK0=;
        b=GFgvYGys3zDYONSSnBburkTDSXa7HInleo6vIKzW9VxbOH+9tz6JB4wkuRCEir2J2q
         QIQaTlAgDccHlyBJtylBPsv8frL3MCUGEVooCSSwtUkDyxlXzzVr4GGMEDTXKF80R3za
         pgTtPLtxD5z7q3Tuyc3Li+scXCeAjeN7+EFAhqj0ec/XvxkrTQJah0N09F3l0jccobnK
         NuGgt4hzvWNn0PGSWf2Du5gNmMjI+DpZryse8TW+C2liGZXjjGUpsR27mE/0EugEltla
         z60FlEXoOzKWSDpCafTTFnP6oc+TBnU4jCDQXtBfzIcu6WDEN7bfOJFQo3OLO3yDjf0A
         1pmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWjA/dPPvM9BmjtadQJR/ZcHadg+nDQJa5HDG6E5LWc+ccsUYfw
	IPX4J2Re/4UkNQ2HKYRBnzI=
X-Google-Smtp-Source: APXvYqyAjXA8fJgniKBeEA1sRHeJfdMNKCN7ydynNb0K/SSh0fIfpDj2PIu5g10ybNO0BpJMF7s6oA==
X-Received: by 2002:a19:c3c2:: with SMTP id t185mr1648542lff.56.1580990532853;
        Thu, 06 Feb 2020 04:02:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b5d9:: with SMTP id g25ls1228534ljn.9.gmail; Thu, 06 Feb
 2020 04:02:12 -0800 (PST)
X-Received: by 2002:a05:651c:1183:: with SMTP id w3mr1909377ljo.232.1580990532259;
        Thu, 06 Feb 2020 04:02:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580990532; cv=none;
        d=google.com; s=arc-20160816;
        b=fHVBH7gw+j4wMxikm4/CUbwJOO3p3xl813H6079cp27mmaD4w2NEbQeWu575UNlK0y
         Dd+udeDVIzGkQ0CYvpU9TgLbO542OJyOe3PjnGqu4I94V8AiUQaC/Z8ce06MxqNuRZdU
         ZSmJW80wr+Uezz7pzJImX2sy87K8/sMvXODLcIWlLWEhsT4nxcNuRdjoMzbOTRmoZzpj
         kCSCTEH0Dl2/cK+1QbqM6BmhHq9aQElt0CF4cAgc/oqBHej7IwTve3oDmQrGMDImOjWZ
         ryGz07UYY+3COmSANwzvpuKfuTSN6PCmob0POy4WUwLVuYeVqOsIrNt4FT4YctxqorbP
         me1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=from:to:subject:content-transfer-encoding:mime-version:date
         :message-id:dkim-signature;
        bh=L20zQSI/DQmWielg2Bg3cTc7/75t4RAMtN0tfSg6mbY=;
        b=dSxAqgXCOqBDwkVa5W+zWlseR5nXmTFNnSbqtbrgTzNwfYXd5C+uhKcGnHl9jxvY9Y
         mXk9PKjpcQGpyiNZKKXYO5PGqrjexNPoQFLCDgiRkXPKZoL9qdMvrPPYCMxBAsmq9Fun
         Ze8iJ9Vl4i0oYAo73Lu8ESHZBi1K4tg7CT69gt0MQjkOKifUKIiLFfm5wXMqk7jLUx8q
         Zxpkpvi6IIuA7c6pjjq/g3E1FzJ5TKqa2NdNu0xXgRULzzkzbl1oY0763aVSRjUS/AWK
         X2zFsBCc7RfC+o/3eRH9gYyI4Xc33EY7ArBTZiLBCQ/vrxcRkTmjjc0JYYO4BkUNC69n
         lVlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623 header.b=YE1UhWZm;
       spf=neutral (google.com: 2a00:1450:4864:20::435 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com. [2a00:1450:4864:20::435])
        by gmr-mx.google.com with ESMTPS id h8si136782ljj.3.2020.02.06.04.02.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2020 04:02:12 -0800 (PST)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::435 is neither permitted nor denied by best guess record for domain of bot@kernelci.org) client-ip=2a00:1450:4864:20::435;
Received: by mail-wr1-x435.google.com with SMTP id y17so6849914wrh.5
        for <clang-built-linux@googlegroups.com>; Thu, 06 Feb 2020 04:02:12 -0800 (PST)
X-Received: by 2002:a5d:670a:: with SMTP id o10mr3438251wru.227.1580990531674;
        Thu, 06 Feb 2020 04:02:11 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
        by smtp.gmail.com with ESMTPSA id e22sm3503180wme.45.2020.02.06.04.02.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2020 04:02:10 -0800 (PST)
Message-ID: <5e3c0042.1c69fb81.b52f4.f367@mx.google.com>
Date: Thu, 06 Feb 2020 04:02:10 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Kernelci-Tree: next
X-Kernelci-Branch: master
X-Kernelci-Kernel: next-20200206
X-Kernelci-Report-Type: build
Subject: next/master build: 34 builds: 0 failed, 34 passed,
 16 warnings (next-20200206)
To: clang-built-linux@googlegroups.com
From: "kernelci.org bot" <bot@kernelci.org>
X-Original-Sender: bot@kernelci.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernelci-org.20150623.gappssmtp.com header.s=20150623
 header.b=YE1UhWZm;       spf=neutral (google.com: 2a00:1450:4864:20::435 is
 neither permitted nor denied by best guess record for domain of
 bot@kernelci.org) smtp.mailfrom=bot@kernelci.org
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

next/master build: 34 builds: 0 failed, 34 passed, 16 warnings (next-202002=
06)

Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/ne=
xt-20200206/

Tree: next
Branch: master
Git Describe: next-20200206
Git Commit: a0c61bf1c773bfe510d125606253857f02c58797
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
Built: 6 unique architectures

Warnings Detected:

arc:

arm64:

arm:
    allmodconfig (gcc-8): 16 warnings

i386:

mips:

x86_64:


Warnings summary:

    9    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    4    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer fro=
m integer of different size [-Wint-to-pointer-cast]
    1    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to =
integer of different size [-Wpointer-to-int-cast]
    1    /tmp/ccYdaih2.s:18191: Warning: using r15 results in unpredictable=
 behaviour
    1    /tmp/ccYdaih2.s:18119: Warning: using r15 results in unpredictable=
 behaviour

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Detailed per-defconfig build reports:

---------------------------------------------------------------------------=
-----
allmodconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 16 warnings, 0 section =
mismatches

Warnings:
    /tmp/ccYdaih2.s:18119: Warning: using r15 results in unpredictable beha=
viour
    /tmp/ccYdaih2.s:18191: Warning: using r15 results in unpredictable beha=
viour
    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:114:37: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-octeon.c:48:3: warning: cast from pointer to integ=
er of different size [-Wpointer-to-int-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]
    drivers/net/phy/mdio-cavium.h:113:48: warning: cast to pointer from int=
eger of different size [-Wint-to-pointer-cast]

---------------------------------------------------------------------------=
-----
allmodconfig (x86_64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
allmodconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
ath79_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
axs103_smp_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
bmips_stb_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 s=
ection mismatches

---------------------------------------------------------------------------=
-----
ci20_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
defconfig (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+CONFIG_RANDOMIZE_BASE=3Dy (arm64, gcc-8) =E2=80=94 PASS, 0 errors=
, 0 warnings, 0 section mismatches

---------------------------------------------------------------------------=
-----
defconfig+kselftest (arm64, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
efm32_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
exynos_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
gemini_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
gpr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
hisi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
i386_defconfig+kselftest (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

---------------------------------------------------------------------------=
-----
imote2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
ixp4xx_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
mainstone_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 se=
ction mismatches

---------------------------------------------------------------------------=
-----
malta_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
mps2_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section=
 mismatches

---------------------------------------------------------------------------=
-----
mtx1_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
mv78xx0_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
neponset_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
nlm_xlr_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sec=
tion mismatches

---------------------------------------------------------------------------=
-----
nsimosci_hs_defconfig (arc, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 =
section mismatches

---------------------------------------------------------------------------=
-----
pnx8335_stb225_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings=
, 0 section mismatches

---------------------------------------------------------------------------=
-----
pxa910_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 secti=
on mismatches

---------------------------------------------------------------------------=
-----
sunxi_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sectio=
n mismatches

---------------------------------------------------------------------------=
-----
tb0219_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
tb0226_defconfig (mips, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---------------------------------------------------------------------------=
-----
tinyconfig (i386, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 section mi=
smatches

---------------------------------------------------------------------------=
-----
vf610m4_defconfig (arm, gcc-8) =E2=80=94 PASS, 0 errors, 0 warnings, 0 sect=
ion mismatches

---
For more info write to <info@kernelci.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5e3c0042.1c69fb81.b52f4.f367%40mx.google.com.
