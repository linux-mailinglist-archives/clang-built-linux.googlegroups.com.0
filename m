Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB7GBWCBQMGQEJZFBXGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9390E354F07
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 10:51:09 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id o128sf799657vka.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 01:51:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617699068; cv=pass;
        d=google.com; s=arc-20160816;
        b=TO+s5ELC7cFn/bY0lKwpAAPTaj9ROFKHFaPPzx24PTo7Y4qe5yE8u++h3R1u7CvS3j
         uRdat7E8BYuHyD+WEOfXuvRuTGA/iMiiGbUhoaKu9C9+5DLH342UH8sfD/UyW5WEt0Ay
         U1hGDX82AffmswLegEcg+527mfFAZuw4uPzr5kZw2sKDbEkhWAxH92+0Z56RAXgCB4AR
         PPhzbFNU/uIq5rKXsY9//ufPQdGLhOqYVelKssHaxOgz7+kdvnnr/fC5Q8fW1dywVJr/
         bXFqXlJ0ek9cLJQC1V3IKxgm2j3SETagbJqghmTDBOEnJhsHfudtjCOFso61ethFTAut
         ltcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=6pP9U0WrPCMg/tqxMBiDrkyFbkUpjJj3APKso6xiYWM=;
        b=H1NSABOOYl9jTsGliHBiss5q7XFP+pzSbZ3JurvX+v8VtcUkcxtMBm+thrvZjq9z1U
         8h7BQcArP35AfG4bOQICodsArLTHsgNUe1my7B9Twa+JOnTDmaez04ovIAILEpKfltIS
         WquMZOJo0e0ohJsG38wwjhbg8L1RtOzt+9W18sbmznlHgijdODB1yffbrWZY5LhKJrqc
         vF7JhOpVwXvmIUKSjYJJxqtBCR6S+/fNCxmcksN+bcVEVoXH46GKr4MWK5eZsN1pSy7y
         b75sCmQbSFhSrUj5gjL9RID5Xh0a8ZK3kdBr14GKrrZ00Wmu6woB5oX06nBXd7m5gC1f
         qvfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sEE9ljBX;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6pP9U0WrPCMg/tqxMBiDrkyFbkUpjJj3APKso6xiYWM=;
        b=N5TqcR99IyVB64z5JSXbQO/SP7chtIg4fmQci5XNOpr/qksMfybyxKR236zQYv8200
         pI1l1TGdME83Q9K9ILcCivcefNZ9K1IrHrqjF6JNXz1tlQz++1UojblKdFhbeh1DjAGH
         xVsQSp8UaP1rGFGBrzqiOtBJcvwbp3GSsPyLWqEUbaC/FVt8Qxfs7Pj8mCxBLiCDfglM
         lndGYilEwG4Fh5zxYGTx2oq8uDHxNoKtc9yjJOam5EGEM9rJAcjrqDNLciiOzZJC9K1y
         umiJYrrX7GXS4jwk3wrz+afCeHStsaycLvuO3D7Q89D7IJLCecDV6l9Bo6mVDTjR+TsM
         styg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6pP9U0WrPCMg/tqxMBiDrkyFbkUpjJj3APKso6xiYWM=;
        b=hh6tpj3HP1xdU+Ps30Uyuravauq5YOZiWktuDbksG2lMyHM4u6xpH3shOSmTJ2eMt9
         e55tE3bML36qFlkegOccPW6/lodLc8PmvrnBHI1V4paY8ZrsyuS+oz/C74PvudWovIYS
         L0Tx+/l0W94jgeMkUljxeGoMmhqwkmGydEfdWq/SwneocP30TXP4CgKjQtCTL6ga1+B2
         0x3GI241oFsW/ATOdQtFd/kSnYx/FVllxJyL5EJl0ey1XJYIEu+qnLznHux0gtvYJ/8v
         jJJPEWHev1dYAxeFAkTYKTe8Sg5WpF9sZymB9aPZOhrIvDGKsSAq1pY+0fy1X3mEKyJR
         DcHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6pP9U0WrPCMg/tqxMBiDrkyFbkUpjJj3APKso6xiYWM=;
        b=HzC6KgHSQiIyUc5891Uccd9ie51Nfn5qmiFslVfaTM5zcYCdSq1nT97spU6Cf4Ej70
         6KB9KRW1wrU7C4pMTtygxe25jCbdDSMMIVXXKGNGPYOAPic3RNvuVg0Pl9mH2+pp5d/8
         eQOomEc5LX73mJu/GE0UmPNs8oILDcJ8U65ZrCpPjhNXltnQhFk6Do6xBXrnnK8vyFwt
         KZC5wQsRTrKM0lPu7p/VZoR2FIMV4jcWMwJbYVim2aUJa6TTYhTuuWWvCt9asRv9WM4A
         6Zkt5YLTLGc35Hp6PV7wx0X8v0clsJblp6cfqFBXEphAEfjGOmsoO/JLcgwRMUqU8zkL
         9kxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fr1NASzU2iZfaC0VLz+OlKsGgYZ/6C0tT8WdHZ7em2IkiRt8z
	nBOkEF2Hc0EVxUkgzZAaO7k=
X-Google-Smtp-Source: ABdhPJwz+mPZH8S0r4s9jhRdJXH9QByoAH+99+xn+EdvIXZsOfrjQlcS/MNmLrYqkHxnYanxJQmTKQ==
X-Received: by 2002:a05:6102:101b:: with SMTP id q27mr12356262vsp.10.1617699068514;
        Tue, 06 Apr 2021 01:51:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:70d3:: with SMTP id r19ls1288255ual.0.gmail; Tue, 06 Apr
 2021 01:51:08 -0700 (PDT)
X-Received: by 2002:ab0:71ce:: with SMTP id n14mr16091978uao.67.1617699067994;
        Tue, 06 Apr 2021 01:51:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617699067; cv=none;
        d=google.com; s=arc-20160816;
        b=WYDKS4DTY5iR/3/AnFXCnIS9jUZ7CI6TlsiZE/kGopiocZnr4sn520//XqymFQZ5DV
         hViBiyZSx5n9MssygN4uFq4BtVfieN7UpCh3270vJcFaRSePQfcwDn026CRj8PH1bA0Y
         Jd1IXqoDrWs4La2Qd3hzCTdx1bNR6syG80VWi8rEtLdOV6jKoOTyg7Cv3LV2wqi0Rcfk
         kEzTW7YOouT4408Qa8Oa0/rWMU53Oc1MZuh0FEEUWm/uZDp9bTAcSgD/WhHwJn1RxT/4
         QO+ZRU+pbGQdVJwdD+wHga96PKiu103BtwmFLHmgdpVbGDLs+adwIA9o97fMNpSsgXss
         t9ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=XtwHJU9ebWc05Ir3ir3AuOcgd3Ty3IR2edN5p9yvwAg=;
        b=erCpWhYS9fGCLLZiOwKw1at5R7DgcaJyGsOchDg2kAmho0iZ/ct9LmqX/6xNMqyNfn
         Q6GNt/73Scu6edTlLXyu8lK15UsOOxqk/K2DoHu1P9NtTfyfmq8sKZW3QtXK2wDpckH1
         EV5nGB+pueK3sincBDZUqTgJHxyLyWWC7V7dSBkjq+7p4A0Yt4ExtvAAowFoVwoDLcpi
         +T+RdUhwteJEXRfrLEIhP+kcQHBQfVKFu9AaqWb7SrDc31M9kCYU16/3q04oAh+293Hs
         JViTcFpgbuhxzPKa2b23wun8D50Xvfz4J8pTAWbyUfKS61ptJXn03RzrYk4rlc56eVMk
         9Aeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sEE9ljBX;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com. [2607:f8b0:4864:20::133])
        by gmr-mx.google.com with ESMTPS id w10si32139vse.1.2021.04.06.01.51.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 01:51:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133 as permitted sender) client-ip=2607:f8b0:4864:20::133;
Received: by mail-il1-x133.google.com with SMTP id d10so12394822ils.5
        for <clang-built-linux@googlegroups.com>; Tue, 06 Apr 2021 01:51:07 -0700 (PDT)
X-Received: by 2002:a05:6e02:b2e:: with SMTP id e14mr980909ilu.186.1617699067695;
 Tue, 06 Apr 2021 01:51:07 -0700 (PDT)
MIME-Version: 1.0
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 6 Apr 2021 10:50:35 +0200
Message-ID: <CA+icZUVm8RQX7wevim_7R_mTPr88TEdonBZNGq72NxsDMKmBOw@mail.gmail.com>
Subject: The LLVM host/target TRIPLE padding drama on Debian
To: lvm-dev@lists.llvm.org
Cc: Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Fangrui Song <maskray@google.com>, Sylvestre Ledru <sylvestre@debian.org>, 
	Matthias Klose <doko@debian.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sEE9ljBX;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::133
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

[ CC some ClangBuiltLinux and Debian GNU/LLVM toolchain folks ]

Hi,

this is not a late April-1st-joke.
"This is a REAL DRAMA written by (my) LIFE."
( See the end of this Email. )

[ INTRO ]

/me uses LLVM/Clang and tools - Debian folks call this "LLVM
toolchain" - for building latest upstream Linux-kernels.

On Debian x86-64 I see this dpkg-architecture warning in my
Linux-kernel build-logs:

specified GNU system type x86_64-linux-gnu does not match CC system
type x86_64-unknown-linux-gnu, try setting a correct CC environment
variable

[ CHECK ]

Check "GNU system type" on my Debian system:

$ dpkg-architecture --query DEB_HOST_GNU_TYPE
x86_64-linux-gnu

What says clang (here: Selfmade LLVM version 12.0.0-rc4 - Debian's
clang show the same "Target:"):

$ /opt/llvm-toolchain/bin/clang --version
dileks clang version 12.0.0 (https://github.com/llvm/llvm-project.git
04ba60cfe598e41084fb848daae47e0ed910fa7d)
Target: x86_64-unknown-linux-gnu
Thread model: posix
InstalledDir: /opt/llvm-toolchain/bin

[ ABOUT KNIFES AND TRIPLE(S) ]

You remember the famous quote from Crocodile Dundee cinema movie?
"*This* is a KNIFE!"

    This is a TRIPLE: x86_64-linux-gnu
This is NOT a TRIPLE: x86_64-unknown-linux-gnu

Personally, I do not see a benefit in having an "unknown" but I am not
familiar with other operating systems and (its) architectures.
Maybe, there is a real need for this extra "padding" (3 -> 4).

[ "SOURCE (OF) TRUST" ]

I do not follow LLVM development that much.
But I know to check the source-code.

NOTE: Here: Latest <llvm-project.git#release/12.x>

[ clang/test/Driver/program-path-priority.c ]

/// We cannot trust clang --version, or cmake's LLVM_DEFAULT_TARGET_TRIPLE
/// to give us the one and only default triple.
/// Can't trust cmake because on Darwin, triples have a verison
appended to them.
/// (and clang uses the versioned string to search)
/// Can't trust --version because it will pad 3 item triples to 4 e.g.
/// powerpc64le-linux-gnu -> powerpc64le-unknown-linux-gnu
/// (and clang uses the former to search)
/// So we write to both names which is a bit odd but still proves that the
/// lookup is working.

LIFE is about TRUST :-).
No TRUST - No nothing!

[ INSPIRED-BY ]

Initially, I was inspired by this change in "tc-build" - the Swiss
army knife (YES, this is a KNIFE) from/for ClangBuiltLinux folks.

commit 227a77175f81fc9b2e76b2d11b91b686ce41b35b
"build-llvm.py: Define LLVM_HOST_TRIPLE for certain distributions"

Link: https://github.com/ClangBuiltLinux/tc-build/commit/227a77175f81fc9b2e76b2d11b91b686ce41b35b

As a man-child I played with...

DEB_HOST_GNU_TYPE="x86_64-linux-gnu"
LLVM_HOST_TRIPLE_OPTS="-D LLVM_HOST_TRIPLE=$DEB_HOST_GNU_TYPE"

...in my custom LLVM toolchain build-script.

Unfortunately, this results in a ***mixture of target TRIPLEs***.

This is from my comment when playing with LLVM v13-git (see below link).

Link: https://github.com/ClangBuiltLinux/tc-build/pull/141#issuecomment-791179738

LLC and llvm-dwarfdump say "x86_64-linux-gnu":

$ /opt/llvm-toolchain/bin/llc --version
LLVM (http://llvm.org/):
  LLVM version 13.0.0git
  Optimized build.
  Default target: x86_64-linux-gnu
  Host CPU: sandybridge

  Registered Targets:
    bpf    - BPF (host endian)
    bpfeb  - BPF (big endian)
    bpfel  - BPF (little endian)
    x86    - 32-bit X86: Pentium-Pro and above
    x86-64 - 64-bit X86: EM64T and AMD64

$ /opt/llvm-toolchain/bin/llvm-dwarfdump --version
LLVM (http://llvm.org/):
  LLVM version 13.0.0git
  Optimized build.
  Default target: x86_64-linux-gnu
  Host CPU: sandybridge

Whereas clang says "x86_64-unknown-linux-gnu":

$ /opt/llvm-toolchain/bin/clang --version
dileks clang version 13.0.0 (https://github.com/llvm/llvm-project.git
9c0274cdeae904089806be6faee72b9126d2cf5b)
Target: x86_64-unknown-linux-gnu
Thread model: posix
InstalledDir: /opt/llvm-toolchain/bin

As said I am an end-user of LLVM not an LLVM developer and I do not
follow LLVM upstream development.
If there was progress on this topic, please let me know.

Final quote from Mark Twain (translated from German):
"In my LIFE I had several DRAMA(S) - some of them REALLY happened."

For me this is NOT a drama.
But I do not know about the consequences of having a mixture of target
TRIPLEs in my Debian system.
Thus, I dropped above LLVM_HOST_TRIPLE_OPTS from my build-script.

Please, let me know if you need further information.

Thanks.

Regards,
- Sedat "A real drama queen" -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVm8RQX7wevim_7R_mTPr88TEdonBZNGq72NxsDMKmBOw%40mail.gmail.com.
