Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBXUA6H6AKGQEB2V56RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id C54F92A0B31
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 17:33:35 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id t10sf5283932pfh.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 09:33:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604075614; cv=pass;
        d=google.com; s=arc-20160816;
        b=keU4kHhCLhCT5Xt3OmQUgPpUP1ci0FqmLhZfVRj6KCQBrtv4w36gdH7EwnG+RVJPUF
         rigmPVLNgjCA9oyUmLs5xfOTyrpZRQeNczmo0DyKCOZLPRRx5udIF3m1vyZadIjW0YC0
         z9POA21T6xdm9dCcDquqtnK2CktIakBrav/bf6bvpy0+JRGrkFx/jyFhLyJ/jq5p28RZ
         Jed4rXlkddTztOFqyFk0MI1gjoiuiI/jh96iaxfJo2K6FX20KJn2TNMylArq5Jj+gADV
         j72Zv+Vke9IQId0t08lBdwEwWA9Kj2djGTsOQGQdaXc+2rpt7s0KWTfI5Xf3RjWLF9ag
         y40Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HXzHBzK/IhK5wtUqZ9TgFGsxL/3OgBGRKU495s66nQI=;
        b=XbVQ5ltZu4zeUVeeCHgh1D/SX/DQClM/hG+TiYm6mavrhWb48XaNKJvN6ecjCzLNyG
         0F1qUSyBnon6U+3VeVtjVkWnuT4XCwIWJl2PoG7f8+3CL3IMUmQQrtLNVaEYDZwaQjI8
         5ls/F9HM4nx71K8YRfyikxiW7xp+/W4Ipn/t/6CFQoDL3VIMkgJLKLG3PfK1JssRi78o
         LH+EvoWw00y6ArbNuHZNT2nmpdo0PFUZ7vrTnDBbxY0GA8YxPXTuf6Zg4ALvsefUcWmP
         ThH0mmUGSMLMGuy+0UAjwn7ocJFzW9L9HGuAik8WEjJ2unJXuFDztQDs8AI+zd6LkWsb
         JvEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CDDe5gIe;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HXzHBzK/IhK5wtUqZ9TgFGsxL/3OgBGRKU495s66nQI=;
        b=Yaxu+YKbts28Cngb8X6Flc7MdQGRtqElnG/jwB+lP/Z+mtXb9T+mCUMzrbNZ6O07BO
         speupeT5/QdQltyC1LmOkU8plkzA3Z+L5sl8tCEfqJOf2ClnCeGJqyP0x8O0HbXmH+uB
         dvC7B1PD8KSW33KUBOcHFFTt7red3fSI9Wk9vZKOgqZRlAN6CSnUdmOHsQgf5H5NZiMc
         cGC+CbH64wK7t1SBAjzGcLTMHdWD+b6jcJSZDd2U+Mmd+ZIJgJN5whnDNJRSDiNq2juM
         lUDyttW4EZlFC0Gg4N9WhFiKnB9wPsfd1S/id6d1Swg3k2NFtAC/J3PNVhvWfFsZ6FOS
         Infg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HXzHBzK/IhK5wtUqZ9TgFGsxL/3OgBGRKU495s66nQI=;
        b=FzJ4vzC3fIxyCvwcIjr8fx8nMtyMVMP5+fVoLFWqhtcUV3LatTt55nG9imn4X48+/T
         iy03oHtrQgCRQqbM44XJ72Z72pUfBZfTG2wxJd9s807BnqniEmnHhQCnIzyJCAVlY94K
         YSRYPN8IFbUzP2wD2JoGXB33UMu1MZBh90BGx55F1lSGsaq1djYSQCTXUTuOxsP3r+Qp
         DuKVM7uxnu7fLnIW0Xx9DAaXCheOiVK6zFHaKEWit3++AJquJYyqiLcgSZz2fmIU4UGe
         mT4r4TUQ3IVOkfJ0bfpYEIoHtyFKj9MhF9eY5uDzGx6B85GiQG48Skh3idZgEs4pJjbh
         Y2BA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LquBkIMxW50w+FTIpG5ETjGbsKB/+ie7n8KnVtIHtPD8hdU0b
	iamBivREYDT+ctJgmmiNFy8=
X-Google-Smtp-Source: ABdhPJyYiUlOIPOF0hJCSEDgNvZkKCzIig2U4U0zl4tG90iqvouWkZgPUZYQIDhr9o3AGvlPMpHyJw==
X-Received: by 2002:a17:90b:1094:: with SMTP id gj20mr3893251pjb.202.1604075614540;
        Fri, 30 Oct 2020 09:33:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b20f:: with SMTP id t15ls3106616plr.3.gmail; Fri, 30
 Oct 2020 09:33:34 -0700 (PDT)
X-Received: by 2002:a17:90a:4493:: with SMTP id t19mr4014506pjg.128.1604075613917;
        Fri, 30 Oct 2020 09:33:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604075613; cv=none;
        d=google.com; s=arc-20160816;
        b=TNmmdHD+qaVzmGljTPJ9ksFffzF2Kf2QQNH7HzETcYvynIMTa5Gq2asqjMY+YWUwzr
         /TWi/B6GH0tEIoh1SwgbB7zF6cOPHs1ySUeopyFi2wJQzqmoTo5HCymLTS8209L6oG2m
         tViUL2Dc2sKnqj0wC5+2StpFkcKMXjRmvgT1ejQJvZKVQHvChpkG29Gm0aRTgFQefr0i
         xyebiXN5menaP9ex+oxd36UgKMHrNfV7ZjWzPl/iOpojeSOMF6tmG4slece9NZMJMZg4
         R/59QlVhP9Tam36Z3HV7zT4khyBQJ6+8msx8D9zQEit1lg3o6G9V3dxfpZrXlvV8cTSI
         NdIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7sgpxwPZg+AbkmU1V4X/NM3pgbhbjn/6a7F6SKdrysQ=;
        b=yRUKyXXvD1EfaoIPuEfDTqxwI1E+koL378mIWKqBR+4C6n2OJVvW5ALzpbmgnbLSSP
         9CsVVHuizhPv39mdcCaNsyBl0aDQpT1KpVADrNkelns0Ilu75iPn+eLCVbVD9hurroTu
         GuXaxt4fY45tvYRkihD5TMkZR7wayYVUr6KDTJGVJWGoT0yjhqZ6Y9buIai8J4jwBZza
         eBMIWVSDueiSAW4qJ7Mhbxhnc75lsS35ifY2V0+M/Pu3PVoWE5ndk2DAu7oIkPBSFllv
         xp2g50JCC5p6/cbmOu0gUzE2CuZ7eB6ozGfZ2OrHlrPaJ/enr9gOY9TS4DZJpZIXCKbk
         obig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CDDe5gIe;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h17si301070pjv.3.2020.10.30.09.33.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 09:33:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A793F2083B;
	Fri, 30 Oct 2020 16:33:31 +0000 (UTC)
From: Will Deacon <will@kernel.org>
To: Fangrui Song <maskray@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-arm-kernel@lists.infradead.org
Cc: kernel-team@android.com,
	Will Deacon <will@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Jian Cai <jiancai@google.com>,
	clang-built-linux@googlegroups.com,
	stable@vger.kernel.org
Subject: Re: [PATCH] arm64: Change .weak to SYM_FUNC_START_WEAK_PI for arch/arm64/lib/mem*.S
Date: Fri, 30 Oct 2020 16:33:26 +0000
Message-Id: <160404675162.1783664.3255910174275487900.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201029181951.1866093-1-maskray@google.com>
References: <20201029181951.1866093-1-maskray@google.com>
MIME-Version: 1.0
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=CDDe5gIe;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

On Thu, 29 Oct 2020 11:19:51 -0700, Fangrui Song wrote:
> Commit 39d114ddc682 ("arm64: add KASAN support") added .weak directives to
> arch/arm64/lib/mem*.S instead of changing the existing SYM_FUNC_START_PI
> macros. This can lead to the assembly snippet `.weak memcpy ... .globl
> memcpy` which will produce a STB_WEAK memcpy with GNU as but STB_GLOBAL
> memcpy with LLVM's integrated assembler before LLVM 12. LLVM 12 (since
> https://reviews.llvm.org/D90108) will error on such an overridden symbol
> binding.
> 
> [...]

Applied to arm64 (for-next/fixes), thanks!

[1/1] arm64: Change .weak to SYM_FUNC_START_WEAK_PI for arch/arm64/lib/mem*.S
      https://git.kernel.org/arm64/c/ec9d78070de9

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/160404675162.1783664.3255910174275487900.b4-ty%40kernel.org.
