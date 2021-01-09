Return-Path: <clang-built-linux+bncBAABBPWH477QKGQEDB3B5OI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7782F0219
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 18:11:26 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id cm4sf6221917edb.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 09:11:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610212286; cv=pass;
        d=google.com; s=arc-20160816;
        b=uk6q1NGS05mvtdZ8HsEP4/igdGZBhEdGMn5fpopsgK1GLctvHhA5ahAIlrwiEpaRDz
         5qIxVvxR3QowEGl8hj68++ioIIrJczb9MOARAzHUfPd4Nb3y9HUet59CVyYD7rsVeoH7
         pkqO4s9OiJDTnERxl6FOOUqY0GzYFMosgNVC5gUVu99JYcItqD8oskG+ZQ6cCJg5tyNB
         vk8LQML9E6RSzUlnmYruKjCDv3j1VblUTjB+FNuAcz7dYk7I8YwiPLkUUgeaHiQuyX1g
         MlVL+2ohRnct/mtzl0rt+9EwE8nWsFX4HcxtNpfw4i5dGZqaPzuZGPklm/3hYx6G4+3t
         EQGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:subject
         :reply-to:cc:from:to:date:dkim-signature;
        bh=sE9qCmJ/N32RTfQfvWJLy90h+9WfbsrrziKw+pcyTSs=;
        b=tbKzLTvznTyHcnZKmuJltPZCYGWqIWEPLqPVarGi1RUjbOaqAHBNG2aK7uf0ZcKVEF
         1NLQLJhedQT034RY/Oz8ImXzu26IwK5fYj6GyiZ7+iqGR7V2K1bfqdbexRCR1G7HRU3n
         WmvfClpw7+aqjlcrUIt5a94ZhXlshBuAZ4LHwg78uh7NDJtBIqAsuc/IiUiw2s3ByFBj
         P+UEv4K2x6mkzING3/Xj1TH/2tU2aRH6GkZVv9QOrn10VCvehN4ng8zIQUOzVKcb1JVX
         jJl2UTI+U9b3yUwF1kJeW59Yybu2wpj9JuXiBNta3D/WAN5QZnzVtD1bCndOh0w3URIX
         45JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=nf+g7+lS;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sE9qCmJ/N32RTfQfvWJLy90h+9WfbsrrziKw+pcyTSs=;
        b=QTDRU+JCMMO1ScarUm/MhgSj5klHQZ3Ey5i2IAsbYw9byumnb3Zfrk7rq37zTn6Bcr
         dnaHvpbhQcWEy6RGe90oij+Gtoy+lmNmrQ0BvjBAyoRj/uAKqAKJNs4z3/CTKboUodwc
         8omeilD3CKR8Uowi06TIc4rZhh/9u6kxgzfIbaFxoTtQsSFvB81StPr3Snpi9Yc8HErl
         eXpTkEcTIDC43Bwqq0G68XRTDwblFTZxhWBg9Vb97IlHBwklg+SwTEKpIPlU4vC17acO
         a+gOLJftFqt/6DgW3r7FbUyAdtHL3R4QruRKhquEvTEnAXDF8fFgutOs2Vn54nVj8OTz
         AauA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sE9qCmJ/N32RTfQfvWJLy90h+9WfbsrrziKw+pcyTSs=;
        b=l4G/jVetOeeIUslYEW3yFyjJ5g6RTePz7EBz2FplDCNLBI0/+7qjsg/ACdKeOr1kJQ
         3NZoJ7x+5ISo9TPjkXpFkak8x7M16gm+i4v8pn5eoHBLtVB+u06Ch2PbR28TFW1UtYOS
         9a/4sBGEKWFWRsBZVMHIqhnUgh/KWSuGGsl6d7Iw6/EkUp6EIrjL4CMVx45i4qMRW+8B
         0HU7BeGdRJnECf+SBRs6K1bnhVlu+6LuDjVRqmmAlTtGUMaAyvwNR65mQV8OgvN/yCXf
         iDG92DGeEJ2x13E7+imRefRgzuS7wtRAxCyqC6kkFuCqURd8NwazCVZgQEuUB47Vp5g+
         MUsQ==
X-Gm-Message-State: AOAM532ebvmAyWC/6skRZxAzos5u/fSHkC3sBDVjZ7ZW1bIHZBCo4bz1
	GCTcdu8UxSx0SbOPRIQLoYY=
X-Google-Smtp-Source: ABdhPJxXkZbsJQyNvSv6ia4nK0rbulbhNkepDDZXMVlPyWTIQXy6Alb9XJqb+8ChWxVX3CbkS++Ifg==
X-Received: by 2002:a17:906:7687:: with SMTP id o7mr6175234ejm.209.1610212286381;
        Sat, 09 Jan 2021 09:11:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:cec7:: with SMTP id si7ls5640087ejb.2.gmail; Sat, 09
 Jan 2021 09:11:25 -0800 (PST)
X-Received: by 2002:a17:906:15c7:: with SMTP id l7mr6118701ejd.226.1610212285696;
        Sat, 09 Jan 2021 09:11:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610212285; cv=none;
        d=google.com; s=arc-20160816;
        b=n1+XM6epAAQH5aL71y/jG4GBGUCz9IRo0DBxW2fICbqOgQxnoVZ5pd4IAKkElU7fCX
         jJOc4l8sNmZRRut4LFFNxV03s8vSbVommJEpXvi82LfbVf4RkSxhpWgqCSZlHZ06Ap/y
         R+7dCEleCM4LfIRF/GqQ+fonnOWklw1w+DFLfdJn+n/ueNzOVVa9y0PzfBJxTaqQ5Djf
         2vrX98D94BT8G34QfWhY2Mwcvcy9dbCmpr02mdUNq+3vourLc1Y2uElt2NgFfV4Oa1we
         tdXc/GbgVcYV1v9VTzd8XfYcIy34b6mSb+bucUPvThq+rKZ+CP6fBJ310+eFYApFtilz
         tiaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:subject:reply-to
         :cc:from:to:dkim-signature:date;
        bh=rNDBsb/5jzCtXm4ccD8b7PVBPJte7jON6vMo9RPdX3M=;
        b=Au5244LbUAf7Ecl5FHNW/xS788/nkf/5dp1miiYpinFmskaDEu/0p82bOMNYU8lbdj
         lFVkTOM8nyu/KelDutarb3YKl7ex0Ewu7IIU2jmf4skcULJMhR4Xh+VuKv0PfsBehd8M
         mYQJzUbkXj2Ten/jnGdm+G91QYNwt4Dkb5iKADByDtQbCYKMRzMfoxV86DuRvLaXrrqw
         tKlJ21OkuOCudxP+Eh/Yu+yYnN5+MBbGnnV1uGL2Yj5WkKYcLBOzApU7IUKqeOUtCuUC
         z9kGNPTrE69oy3lWAWHM23gbY3pMe7vAiRNzjRDWIOqCfH7Mb/09H96kl10u2kK7P7V/
         8F8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=nf+g7+lS;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail2.protonmail.ch (mail2.protonmail.ch. [185.70.40.22])
        by gmr-mx.google.com with ESMTPS id z13si479029ejb.1.2021.01.09.09.11.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Jan 2021 09:11:25 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) client-ip=185.70.40.22;
Date: Sat, 09 Jan 2021 17:11:18 +0000
To: clang-built-linux@googlegroups.com, linux-mips@vger.kernel.org
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Alexander Lobakin <alobakin@pm.me>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Sami Tolvanen <samitolvanen@google.com>, Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [BUG mips llvm] MIPS: malformed R_MIPS_{HI16,LO16} with LLVM
Message-ID: <20210109171058.497636-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=nf+g7+lS;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

Machine: MIPS32 R2 Big Endian (interAptiv (multi))

While testing MIPS with LLVM, I found a weird and very rare bug with
MIPS relocs that LLVM emits into kernel modules. It happens on both
11.0.0 and latest git snapshot and applies, as I can see, only to
references to static symbols.

When the kernel loads the module, it allocates a space for every
section and then manually apply the relocations relative to the
new address.

Let's say we have a function phy_probe() in drivers/net/phy/libphy.ko.
It's static and referenced only in phy_register_driver(), where it's
used to fill callback pointer in a structure.

The real function address after module loading is 0xc06c1444, that
is observed in its ELF st_value field.
There are two relocs related to this usage in phy_register_driver():

R_MIPS_HI16 refers to 0x3c010000
R_MIPS_LO16 refers to 0x24339444

The address of .text is 0xc06b8000. So the destination is calculated
as follows:

0x00000000 from hi16;
0xffff9444 from lo16 (sign extend as it's always treated as signed);
0xc06b8000 from base.

= 0xc06b1444. The value is lower than the real phy_probe() address
(0xc06c1444) by 0x10000 and is lower than the base address of
module's .text, so it's 100% incorrect.

This results in:

[    2.204022] CPU 3 Unable to handle kernel paging request at virtual
address c06b1444, epc == c06b1444, ra == 803f1090

The correct instructions should be:

R_MIPS_HI16 0x3c010001
R_MIPS_LO16 0x24339444

so there'll be 0x00010000 from hi16.

I tried to catch those bugs in arch/mips/kernel/module.c (by checking
if the destination is lower than the base address, which should never
happen), and seems like I have only 3 such places in libphy.ko (and
one in nf_tables.ko).
I don't think it should be handled somehow in mentioned source code
as it would look rather ugly and may break kernels build with GNU
stack, which seems to not produce such bad codes.

If I should report this to any other resources, please let me know.
I chose clang-built-linux and LKML as it may not happen with userland
(didn't tried to catch).

Thanks,
Al

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210109171058.497636-1-alobakin%40pm.me.
