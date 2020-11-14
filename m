Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYWIXT6QKGQEP6RJXSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4220D2B29DB
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 01:27:16 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id g2sf7112662plg.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 16:27:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605313635; cv=pass;
        d=google.com; s=arc-20160816;
        b=GYkxAR5hQ1by3bwVcj7nr18xDdxMPlofQi08eVHojQS/JbiUxD9ROp6Bs6WUlHVKIg
         ktThEoGqyELLDy5CkvUuQ8/Uv8HpVOTN7g1+rH8yZ3/t84sDsmBUZA4XzQ227hOEIYSl
         XJL4msMRf1tdU7mMt5M91pTTQmRt4ey5IhcjMKl0X/gL08IGiQx1nl359UrOcTzhGhmm
         BDytNGgdjj7MElSOEUXNPSdFlG2hRpJu1v5GP5TlX1cfAAI7QF7C0uo4PqUQJVU6Spap
         irMG+7MqC8+67OcieeM2UfKThTXjk3uve3J/+crsxHVXGDlg4yYHchAhe94260LaOiJo
         P/+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=6/8d6bBvXhtM3aMSAidEy2qEyunOV4hxkzgLuk9vl5k=;
        b=poGQm2LPNX9QEKW/zuby89NnPpaC/YsaclvxO8fU8xxu+HiJ1fROxBBNON/ChFoaKf
         YSZICm92QURgLpJO2bTqi8aaIjfuRmegZWSp1no6BSPW0Aaq0PolCKQYKUoy2mYzmIGu
         o3a0h6KeqtKpQjPw060z7Ahh3K9jzXw06pA7c19Qq7pnWT8wVUHXeRXchU6vh/hfiHH2
         LL+K13x8e+6E5KtTHsZqRI3OT/i88wPsSGr84TLpHWdVC6t+wXipGlaL4W2AzIztYVVe
         H3qeI1+6qhVI1tv9u/C9nAtuT4DMw+jctU2KO9Fg/nWyx/uO7I2fkmQIR8vspFTJgqWi
         BOiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z8vA5WHo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=6/8d6bBvXhtM3aMSAidEy2qEyunOV4hxkzgLuk9vl5k=;
        b=brm2CdwUHrZxchQZ+YHz9rlpm3Xv+sPbM0ClQhbsTAnv7Z+XpSG48RRir3uDrb4Y2k
         kRVkGGS9U0vXvaHhL9JZvWnnEpI5MimTaWV1Sstu1rWvl2HYh+o2sR5CouhPeBnNSR5c
         6We+IjBJC9GwaiZYzMs1aqnxqo6WS0g5oCgkU5kYPGOnjcxQDdZgWzOITSq5Q9eEB18T
         9qazKpo5rqpwDPxjSvup48LqovW0gn4Fm+vz9MIyTuB6wMmD2eskqPq/U2IgL5jA9SL6
         cabr9Za7UsWyy1x400HdJjSRvHL3rJVBx/12TyrV4UyPUSBZdQNSeravmnh9kRmJVJOr
         YVEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6/8d6bBvXhtM3aMSAidEy2qEyunOV4hxkzgLuk9vl5k=;
        b=O7f6TO0WyHPUSt25csfqwrKbqADBKVhQqdrwWU4sw56m5PXNnzSyWLcqtcOppE7zpj
         J42DXraGFGOR9p4hTILULll7myaAYUhhjZoKRJSxe58lERErFDp2ieZDlUwyiSe6tBD2
         kn0ldT8FpIbXskmMuiV0Z9y3JLOYsWK8s2zU3JLKGMk6Inn1ljTte2NdWHO1O36g0hb4
         aUHOdvgy31X4jSsw7yyehozXNS5SYCFzNjRmhZaecVb3IzDtUGHPZ1cNmbNHfLcPkWhu
         ZDwkuzpqA0bIjyxZv8cqJlgylNp9YTVQtV6u9Hfu6+/NIS+yuueqkkW+UmnKB6LyWRy8
         AQlA==
X-Gm-Message-State: AOAM531PiIuggmrugrpPtX90FBpTDQVU7nDnC+JbWF2IoWsjfJfAL7Nc
	oFc+GOkej9E5xrtMX48mVdc=
X-Google-Smtp-Source: ABdhPJzvUz4Wn2AB1gMC4VGC4MJmExoWJL0KpISxBNgdh0EOOmM93D4pIEL/hu4MvSKbuXBCYrOUOA==
X-Received: by 2002:a63:5143:: with SMTP id r3mr3849568pgl.439.1605313635029;
        Fri, 13 Nov 2020 16:27:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6647:: with SMTP id a68ls2618141pgc.11.gmail; Fri, 13
 Nov 2020 16:27:14 -0800 (PST)
X-Received: by 2002:a65:6805:: with SMTP id l5mr3972556pgt.113.1605313634485;
        Fri, 13 Nov 2020 16:27:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605313634; cv=none;
        d=google.com; s=arc-20160816;
        b=ezZCceMm87DTOx0W1ZT5R8L7rIhcudxAqfeXRuIuBr3yCPR+8QBNm5UMH/o1mnKcW+
         Fv+TdsMfsnZPEhu6ayI3d8eRT5b4BUxYFCGfeJ+r5d2XO2PrIKw/aqM0hzk5cfDMapxo
         XTjnmTBpIEbz4YKvNr8LzicMub8jJ4ilU4fVZlSA8EoExG6XhKYq5uTftgIGlZ/jXnbo
         NAjBDz+rvzBEgLZglEVTann/z2kOxg8MkfUMVxtznp5AnqZZKT6txMhVjGUQUa1GWLvK
         SyVp03ZUgUzmaJVj4OeXVDgqat6TwfIWpXgx65K5Vhz2Glwyc9HLtcLFo3mRqcrQeagW
         96LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=bpBal5S5plQ7QuZR1K9vyQ+ek7VX2xaZ9fotOPPTNFI=;
        b=0wp6iwRef63FIos9oV3Chz7kBchH15xL3vihncSpN5xDKduXYg3kVAUz+Hmcnuo6dv
         AgRLWf+DnZw5j79s0ckrgxLNuvOtfJ0o3ZVG/AhfsjlR2yrvSSwDW2sgWkXRwH/sdQH3
         GE76cNuUJphKMDcvpHHb7SjxXzy8ItCFH+NvQbOvWkGSo48Hvt3RIRg/e8EmPhw6h4mm
         oBNuQv/eCmKzGlkLFsCtVwbJfFrHbhtjvcpRJD0GtRMF4lNMpZ3lwOcEWpVGuEffFhmJ
         vForawi8XXTLLV4x3Av360r46OCN67jvs7d34lLiHXnDV4Jr4hVtyzabSB7n6YKqesI8
         M1Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Z8vA5WHo;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id o24si743219pjt.3.2020.11.13.16.27.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 16:27:14 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Received: by mail-pl1-x633.google.com with SMTP id s2so5331804plr.9
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 16:27:14 -0800 (PST)
X-Received: by 2002:a17:902:760c:b029:d6:efa5:4cdd with SMTP id
 k12-20020a170902760cb02900d6efa54cddmr4126341pll.56.1605313634036; Fri, 13
 Nov 2020 16:27:14 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 13 Nov 2020 16:27:02 -0800
Message-ID: <CAKwvOd=x+fVo1_mMJUGHYXpmGf8UM5yx+uWD-Ci=y=0oFX2ktg@mail.gmail.com>
Subject: LLVM_IAS=1 ARCH=arm64 4.19 patch
To: Sasha Levin <sashal@kernel.org>, Greg KH <gregkh@linuxfoundation.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai <jiancai@google.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>
Cc: "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Z8vA5WHo;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Dear Stable Kernel Maintainers,
Please consider cherry picking

commit ed6ed11830a9 ("crypto: arm64/aes-modes - get rid of literal
load of addend vector")

to linux-4.19.y. It first landed in v4.20-rc1 and cherry picks
cleanly.  It will allow us to use LLVM_IAS=1 for ARCH=arm64 on
linux-4.19.y for Android and CrOS.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dx%2BfVo1_mMJUGHYXpmGf8UM5yx%2BuWD-Ci%3Dy%3D0oFX2ktg%40mail.gmail.com.
