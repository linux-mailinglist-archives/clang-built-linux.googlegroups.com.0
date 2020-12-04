Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBY4UVP7AKGQEDE23U5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C042CF7AD
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Dec 2020 00:46:44 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id s30sf2282782ybe.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Dec 2020 15:46:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607125603; cv=pass;
        d=google.com; s=arc-20160816;
        b=GkcietwVjwlGo8Q6e6B3+MKZktvJJz5sZxExzMpjlU+IGV1Xu7liV3vK9oPJedht3T
         hkGxG3KqwUz+wDCY8jD95bj4FmPo8mKQA0cOii2oOS62Y5H52Z5KGm+Qrppg8nmE5ijP
         BHDmAQ9VGm6S+H6DJo7Hz43LuhtlKtdlzFp90iqldTXNcep7kn+7zmcc+vFbBjK/F7WZ
         Uzq71LD/D19M1PKKLK4TD4/o9uYeASwoU1YvQJzFWE78X3T/oPqilL4DNVTrjvZazWGy
         cZSdnTu489gj1XEyENld2uVnR7VaBEl+TwlAFT4zS5FIzlqFxIA0Hpl1tVIri7XmKJwb
         Gx1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=63f9SXtYJSP55Ob8u0KL0T4OgRaXz1f6QUFsJoNrLCE=;
        b=Ow09DcXST8DLjX/iplfuBEvymFnUvG0X65UzotMXtBoc06Bhw6Ewdjf4d8NgqvobUM
         ixqGtyHxvSeof1Ti6V/sia79arVcnMmJcLxYPqiOKMg/Wzn7oFB/+Hh/9LCvu/W6gyUY
         p/vR+JimXv9cKYKFbtVzjrXhp9oTA1ZwIRmLCAp1eUAQgsBrFVCuBrskizaFrxPSjwJq
         0sw7AoYzWatOC+WEpwZq4jzvuNb2dy92tAb/awCIvHiiKscDa0ZdfHPIekgjC/R+78ZG
         td4E7NYQvZDuHS77WeGLchb+WMi0XojVaNT06DbZ3PP7xliqETUyit08roYoLAqqdd5d
         7UJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=W8nYbzW2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=63f9SXtYJSP55Ob8u0KL0T4OgRaXz1f6QUFsJoNrLCE=;
        b=WGOfWV2JNcHlONb6ZlRuUyOuU7GFtYHs6kYFFBPqfgKb1k5V9yeBjOZFY13yxrdMVe
         B2SRgTl8JQyyhbmEZq+XHo+C/Mza76r6e26A+uy+B+/kRVmDm4b6zPR1ZR50xMTdvlO5
         6OxPHP7wjdQOeS+2YQN1NwzjT0FUAaZRkpDiRQ75MtOJiNmxN8vwA2mTw8OAsYVpNe2I
         PEP3FsxmjKGwSqpWPheeDmtl0razSENeIMe4AH7D1FDEoVk7uAjgYqv0trKC+NKN3tNV
         x20jKFR6jS0EfikZuCQZBSeaCUP9fJABLpGw0lAAEHGrBnUbGK6DekkTCo/mCEjCNJsQ
         QOYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=63f9SXtYJSP55Ob8u0KL0T4OgRaXz1f6QUFsJoNrLCE=;
        b=WRWoqggRrx4gOS558t9H7TgYglKR2hUOYHeZWvskyNl1PbZmutOGL2Kvfnuli2hPTA
         lY9dZDNuoA1LFCrFXT51xr0AiMWqZovlsHv6Th7d40x3sxuvXCGy15OMSSbFooyVDIAe
         XwbDT/lp7KJLOYTvP+LrqXmYRdXqRHeflp4sIhRSqcBS/SKg14o74I5A/FBvBRpAVsej
         JbQa5RevL8NQaae7U5DKe5Rh98g8KIhCFKS7NTXJvo96EV6Y9sW4XasrkeWMq/z2XDDh
         A8NlxLcyIQtZouqV9SyZAwQ4mRFmx+j2cdrAs6cMag+xBlNqL19byudWGaYDZP0gvxxX
         B01A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531FnIrMxdMdup9tuFXNq2wScVE9HuEAg/7cVIhVUu+dCPvrzy7b
	vaiVYKXFYVYHGfMEchG9pFE=
X-Google-Smtp-Source: ABdhPJzTAHqOmh3jZjrfLpKzql+sTebhjBN+38BwCUVj/lZ8E9W1Vla5XwbJOYn9EdrbMYq51dt6YA==
X-Received: by 2002:a25:3d7:: with SMTP id 206mr9025933ybd.27.1607125603626;
        Fri, 04 Dec 2020 15:46:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:610b:: with SMTP id v11ls5147302ybb.3.gmail; Fri, 04 Dec
 2020 15:46:43 -0800 (PST)
X-Received: by 2002:a25:be89:: with SMTP id i9mr8926268ybk.35.1607125603274;
        Fri, 04 Dec 2020 15:46:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607125603; cv=none;
        d=google.com; s=arc-20160816;
        b=ZKCsBfmS3GeY8Zmu9a1+WRodNwdwpST8/ZLNl/yFgxAHIrch22m7uL+iC1ToNbtz7w
         6grRd4floZlclrcDrs839kouN/mWxH7Am3Ebp77Yc1WUDQwnOeYEScHFAB+2DhehgLKr
         vGW4auho7G8XW/8YbKnUUGfzMtegydOqRAKQfYFTNyvTJABkf0vOtporTSJGi/MR54so
         92idCXLNNi/oz8ToGXlBIsVz3MQtLuCxerqO9NTm1gLhW5TpHYO+4aw9KNkgMefr/8mW
         cnf385plmpXFap1fJ+3br9oP6rrKJAZ5vnZhKhpOhbPFElwe54wV4FOG8X/oNIIwfIdM
         dkpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LGD/RRlJ9qYcjJKn7WhBQr/iddBUcMbCKVBFUtvDryw=;
        b=p2v95N+xgOM0m4WTk/M+uw3NPuqarvlbMJMZlX/hUmvtB5YFjdzwK2KlsBJOLDJsCj
         J0WjKr32MGM7GNBcXQh7x10Yrur86hqQtfxkuV4RN+pzK54/pueeHsoIyPHpS7g0tRle
         YcjEoC9ovsaE6h6zFwxLh7c41hWPi3N0/wtU0bPfBm3mZfikdT9U7FbNK5Njn/rXFUYC
         mNZSfxoeXkEi6k20cd1+Pe1WnF6eAb6ffRPLVg243G8GifQqQTDJVc/JMdaDqbDBaYqp
         s1kB4MQYU90o+unGxlmzJCaJMqe8bMIuHKrzDPmnB184q52izFJsVPQw1bAGCVRq9NiC
         7MaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=W8nYbzW2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id x14si325854ybk.2.2020.12.04.15.46.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Dec 2020 15:46:43 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id g18so4515526pgk.1
        for <clang-built-linux@googlegroups.com>; Fri, 04 Dec 2020 15:46:43 -0800 (PST)
X-Received: by 2002:aa7:8090:0:b029:198:39d9:23e6 with SMTP id v16-20020aa780900000b029019839d923e6mr5896075pff.45.1607125602602;
        Fri, 04 Dec 2020 15:46:42 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q6sm5732915pfu.23.2020.12.04.15.46.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Dec 2020 15:46:41 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: linux-kbuild@vger.kernel.org,
	Emese Revfy <re.emese@gmail.com>,
	linux-hardening@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH] gcc-plugins: simplify GCC plugin-dev capability test
Date: Fri,  4 Dec 2020 15:46:29 -0800
Message-Id: <160712557572.2401125.2412248759980660312.b4-ty@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201203125700.161354-1-masahiroy@kernel.org>
References: <20201203125700.161354-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=W8nYbzW2;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, 3 Dec 2020 21:57:00 +0900, Masahiro Yamada wrote:
> Linus pointed out a third of the time in the Kconfig parse stage comes
> from the single invocation of cc1plus in scripts/gcc-plugin.sh [1],
> and directly testing plugin-version.h for existence cuts down the
> overhead a lot. [2]
> 
> This commit takes one step further to kill the build test entirely.
> 
> [...]

Applied to for-next/gcc-plugins, thanks!

[1/1] gcc-plugins: simplify GCC plugin-dev capability test
      https://git.kernel.org/kees/c/1e860048c53e

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/160712557572.2401125.2412248759980660312.b4-ty%40chromium.org.
