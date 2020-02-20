Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBBGQXHZAKGQEJS2LHKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id B242B165C66
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 12:05:40 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id w12sf678428wmc.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 03:05:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582196740; cv=pass;
        d=google.com; s=arc-20160816;
        b=bY94F4cnUr6idCVT9PQ2dfSAlfJL73xkDPBI3PMjw1xUH3Ftrf718FsPYaWETsK/GS
         sYTeydi1yOTLZ9233BMf15BC//l3nhZkWaH3sC0TGKdBAnhcJ+BfTaOmrm/NVCp743rr
         gUcJyyT019HGVV5BWkCKYTrHalKBH4qOCvaLiU6bIqx6AjZBRWrNeavUH7QIo9MyIKbr
         g3EDPsGnbFX0gs+HH3DEVijh6a+tQyHR7OiHE9174xlGGpBOFPW8gbjLZmMccW4GcpJg
         SYroE0vXxd5ooe7n4dZvLEwQCoznn37IIbHFAPdD3l96ziDiOYX13YuwfNEm2zdjNGTW
         jXUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=b/Kn3+9GfQJLrFM5U/qRq8PvdjU5kjPXtRHCq9Yb71c=;
        b=W3ENHcK/RS0X8XSyitLu1L52d5UT/SFcr/PdhPmp3Kmpxrn9c9Ldl6N0ZBUtrVVnQp
         yJQXJeBQTtIOTFaq2aYyDVOug9dmhDuLKaiK/qwAgtl6KomvXIrCJU9Q5m/4esZu1/VG
         qcMlee5lDvqc+wUpqsVPIhhI9X/sZccPmc+hxhuSdb2JO0cojF+eF9su3L8k20aEulr2
         Iyw6CetG23KKBNyQ8laM7KQ3INh44Rth/YyCtxCeda9iuB4BMx+HD5IrpDh0e99IUSot
         pm6trhulgGa6bCvJ2aTPx48++jNZ7duP6m7eisrKbXXwqh27rbEQ+gutVksma2jL9sBy
         zzhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b/Kn3+9GfQJLrFM5U/qRq8PvdjU5kjPXtRHCq9Yb71c=;
        b=Vm6rFxPvVdUn0BrxxBXcZwI6/81pmKKc3SCYosN+zjMBDpPpt9IMI0mnDNkyE2WrUS
         QKhVGon66MSeNUmauoJ5WndV1loC/ScJyvG+8dQLU+XlaYkFrV4e0xsWZXKqQZldxEIp
         Ue19kIMMo+TT4xfu5H6RlZufQiR678yWcpbNuMb7kIzvQWXxZ8L89sWSw4X8kzGhyDDf
         i3bOF+MV7iBitArDu9wH7mML1t8GeE/m+siXpc4RYQR4cb79ZaEjiUS7YiFwowC/MlHR
         wCTpTe5lf8/3Dmxy6DbVa97wnqcOZlaoKdaqOI4dSDFllBPE2yBhCL8sMVV+XiofJn3X
         pDCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b/Kn3+9GfQJLrFM5U/qRq8PvdjU5kjPXtRHCq9Yb71c=;
        b=S0su0B4IvFKiX/2GH/iU4ERMA9b68N2lvmplSdpOuZ8Fll20POQe3xwQmb3OVpDLS7
         gp1sT547NPImeJ9iaEzzg+L5R/fjhKBCRgtUQydp2MPW4nbfbDgix0xG6XZY4KCIdP8u
         MgPgOdZesMmE4t+YJvIV8CvhX3bXpRgkt9LD22m0bXLTAnAXnVdnIesap1jp2yOFZzd4
         O9DbnUY6E4QrUItM14xM4XfAJ63KygSQCe5eGNR3mbuoG4QhsDUa0oXpLtR/yncI8jFt
         2AwKbibOUQepO4Xaui4QzLRZde7ibtV/SKWNmpJNADacPN90h+aBxKAqpP+Ik4ETm+tZ
         f+Zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUfhKKYvAqQ06MQoyE4lXJf8i2SeqOc6y9CinSwFG8W0XjGvNc3
	MSc2owG3H/CuwaecCjX4+ss=
X-Google-Smtp-Source: APXvYqzzynqSQKJLnDFHLTuj0VEkBO6rX42Ina+YZzXleB7q1AMjlG4UbrdyXFGl4OHL3NcGsLSihA==
X-Received: by 2002:a1c:9ad6:: with SMTP id c205mr3801863wme.78.1582196740375;
        Thu, 20 Feb 2020 03:05:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb4c:: with SMTP id u12ls11347738wrn.6.gmail; Thu, 20
 Feb 2020 03:05:39 -0800 (PST)
X-Received: by 2002:a5d:4651:: with SMTP id j17mr42412514wrs.237.1582196739546;
        Thu, 20 Feb 2020 03:05:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582196739; cv=none;
        d=google.com; s=arc-20160816;
        b=c+OJHBh+o+btVAzvOV8al104l9muWwWhjHBv4b0YU4EN9/RuPyYfSuvhunLj79IbEo
         zWJKsdJxHgrK2Q8Dx+8cVWwxUjZ8UwJ6a0MQK0eUlXVssIpA0U2CHgYn3Bki+DD3iUOx
         TkAC1sKxY6S/pos2SvWBxxZYuz+MuW3gzr4HtaQjD/ASJqxsOO8V82NtetDils8aXaHr
         BzFjhPzp5Ob44KYR4ddMAOlPwV7GdN2IUYVq8j3KvNxltmq+R3aZSKlQuRs2/KZZrVEO
         7DIKFEvBZarT48FjRtw8g9kmhTvRSfnwnmJ+bx+tyT0PPJeaKWrd6i2JyjBPH0kNIM4S
         a0Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=owGRb0ijQCTIkz66qq3GPWOztzlnxkAJQKMg7otC1nc=;
        b=A1WNT+AmVQ7xJxPITIcQhfQdL7MjLsIooehFL1CEqNpa+5yj5SnhNFZ7U2l59J9oMM
         m9ja+PiTKlAm07LJcOIobb40maiKZgDJfTOjpblEIqCa+fgi2fioTX4sJoZzkqxw2eT8
         hnRRcHz194VYx2UHldQa3yYW8slx8eEg6mwjyPHfi1p7y+CwzIg1xeaHddbgyogwOoQz
         BU9rGf1fTF2d17REmxGKyzARpbyo60JQ29ShsbrsmAV3/QIe+ZpSFxA+IVlZxUTPfqIj
         0H86B0A941dDtMtyE2BfU9B/MAJpVye+1r5XUKu4gMeZrrH6geIMQk+SODtio0RMSa8J
         GQXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id w11si87091wmk.0.2020.02.20.03.05.39
        for <clang-built-linux@googlegroups.com>;
        Thu, 20 Feb 2020 03:05:39 -0800 (PST)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 99BD630E;
	Thu, 20 Feb 2020 03:05:38 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B4FCE3F6CF;
	Thu, 20 Feb 2020 03:05:37 -0800 (PST)
Date: Thu, 20 Feb 2020 11:05:35 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] mm: kmemleak: Use address-of operator on section
 symbols
Message-ID: <20200220110535.GA103002@arrakis.emea.arm.com>
References: <20200220051551.44000-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200220051551.44000-1-natechancellor@gmail.com>
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Wed, Feb 19, 2020 at 10:15:51PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> These are not true arrays, they are linker defined symbols, which are
> just addresses. Using the address of operator silences the warning and
> does not change the resulting assembly with either clang/ld.lld or
> gcc/ld (tested with diff + objdump -Dr).
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/895
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220110535.GA103002%40arrakis.emea.arm.com.
