Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOGW533QKGQE27D5XDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id E199420FE8D
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 23:14:33 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id w23sf7840362pjy.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 14:14:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593551672; cv=pass;
        d=google.com; s=arc-20160816;
        b=uHf2/J8PEB0qR3AfVM4zg7JG0mB8ckGxoDWzCfIqYN2Po78WaAqoUKu4W9oamnMrTU
         RX9a4WY5WTm9L1rDCB1wlxo+pmcwoQyVUU3u2BxMJn+hnrl3U/YYdoaU9mFo4dddaGTC
         58rK8zIEcgsLmIRRq62kJPG6kluKMjkUDaKg8FI6t7bZ6j6P9GHdztUyV+71R2KCiSPF
         8N+uHpeYJ6en2oAmIYnTmZJT7Wsa3XY8XYjHn4aLnol0mquMhwoQ2MugY7o9VAqx7gXD
         fI0It3AKh0vU/A5qxdkOL3yCc6PYkM2v2dfu2LHHAzKZRZuWM7lKw2gVOeIQFZ/3RSJl
         17Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=mV2llYkNyKM9udFYZwQNaInGMhNTE+mJe9iXx7QDtFI=;
        b=UnbSmesc4vXMgyh6KZNM/2pN/LW4F6N8rpMhIuM8s2vd1+L6t23LMxzPrOH/N5IZsp
         TaWihGlWanyn7pNJ636lLTxt1t65C3xqouGb5CijCJnaO9bZPHCupA9L0kJzeVuo9Yeg
         TGivXaPc4EK/v1ASYS/PMmBy/5Zl8eYpnVdaKksRPss91DfAt00rbPJDm5aar/ae/qeO
         fmNVFXpZ+NoVH/AqeHVYILtVcts2qg8Nr+En0GdrE16XikPx2haGfqNtvjE3yJ89+cGa
         hIFcZPJrvB73+9E1tyg6AGoTVjUg1vAdzHp7dLhEvpa/hJK+2aumuN2iB9k+8pee4fpa
         2lMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SJdukTyi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mV2llYkNyKM9udFYZwQNaInGMhNTE+mJe9iXx7QDtFI=;
        b=mkG+ngRqcFyNwzZBlXvLPcgpPvuzqTMx1K0CMB/BXmyb3q9CjgSjBreUJL1yHAuwSh
         QlLw/RQwg1dcdA5H7ITuHcDLzk2wm4+mv4w2GSuCH706C1guGw798b3U3mt0Z051nbDS
         kxcuH5c4FZavjd074q/P2KojJEOii813AleQH1YscoulUub5RhTfXehdgnymQ0r90K6C
         MukhDloEUzgTNxwOc5PqOWhrv6XCTCiuldh+fQGXv69E9qnTmq7LofCgUAzkkANa+HhW
         cYZGQmEgvfHVTVAyxLR9m6bTe9ftOMF+eLdcaT4f1nox4mSA9QHJw3dAsYk8zSnMwqP1
         ZtZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mV2llYkNyKM9udFYZwQNaInGMhNTE+mJe9iXx7QDtFI=;
        b=UKKQh7EkIVkDI61wLFJsSB1jARRhHigGMauEu1xQEzm6GztnfX/HePmB2aFnXdXuL5
         CRT6Kc1pNs3yW67RtrzSLx2a+fEMCBxVZtCN9VXRWreqmFEoOEr/s+gC2/M17IT1fJk8
         PwL/nsLY+ytPc+W1G+kkEFrBM9e0jDVk4HrA2fjqPOkwycNwl5BLSC58bepl4juvfXQ7
         KeLj/rXhOK/xwEsdEspB670BjTadtvvUOzBiI3dDGNQiLp4sBr8mz8bzQtuGSMmpqCxM
         LT6TMcw1ItZuruTRp6amTBQNvl1sCp47oRDMQDlHqcA1KEzuLVP4oIBJVcpnQNtd+sYA
         BaKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mV2llYkNyKM9udFYZwQNaInGMhNTE+mJe9iXx7QDtFI=;
        b=tsz1GZWbCl9uhotAVLsoS3BXlhdzj0CsN3HObii+jAg4j8rpHXv+v4xx+X3dw/r/+g
         D6cqxKY3EdgOF2YSz6h5/Wsc7tewwi5uZlcZ9x3/2y9C8caRk4rVeAozJoa1gn7dRd0s
         JjRvYzUpCcI1RKhPSrcCuWv/yvj5athJNdMECKdgik/ZACqsctqGCcCbiIY3QSYhISdk
         Vglyn6E7e302o51+YnGHDvItPiLi54Ic64m3i/rPgbYbGjwCGGeTFACblaq2suiygrT8
         x0hxDrpuzrVmjXyXNrifBq1B776hHGHCf0XY4nFGdx2i+kuVxV2MOq0K/eaK/vP+J4PK
         8Sgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532d2+lJ2xfntRk41KZxrz89CBexdI1/hMOsPvsbvC3NBG4JmZ6c
	eI7CZQwHmVrL+S2kGPFn6pc=
X-Google-Smtp-Source: ABdhPJy6bvaUj7Bn3vNcvunfkgTSHjFsoy9rN0z3+sbPfceoDYs7ZU/0Daf0rg/x7OIr44ewvAIJ/g==
X-Received: by 2002:a63:ea02:: with SMTP id c2mr16682218pgi.66.1593551672298;
        Tue, 30 Jun 2020 14:14:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6b02:: with SMTP id o2ls8022393plk.7.gmail; Tue, 30
 Jun 2020 14:14:31 -0700 (PDT)
X-Received: by 2002:a17:902:fe11:: with SMTP id g17mr19083884plj.145.1593551671892;
        Tue, 30 Jun 2020 14:14:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593551671; cv=none;
        d=google.com; s=arc-20160816;
        b=pRQEsbzBMhU6+rXGJUvJclAuoSIGl63D5JiNCfE9HxASYjHBnUisPiOSR5FyluuHJW
         Afn3J7DHU3prjzs6peF1pECYPLfT8T2Ek7l67gE68zUzbHctP3WA4GGBpNz2hCxOAYyT
         4YyLJp55xZXonquT1Dd4Gv0wK2wMVq/zAPWEHVpKNdToFlm1BHwaVRgymKEkBG8eSADX
         k9syYfQGhtEUS93ufWGxVEW2A7sV1a4AyjFBxyXrNryRNJlQeSkdVdM1tHpAGwgB0o3L
         lRnqhZd5F5ki61hZNvvUctcHWHPooP5JMcrPeDJahR5SDa64SV9bXU17EiAf+8ZapLnw
         P7Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jd9buR0lAUndx68KN2YMQq4trG2iraWW+d933aJz8jk=;
        b=FRAeKyXw5b8g2EWcEOeVqx8AVTb5dTL6EJwXFxwaHD1hiLTDUVVn/Po9yuWQPxZeYK
         5vhe7X0zk7QQA2a4zUOLEpJ69Uv8BOl83KlyFatls0IZDnmnWF6qZmAQvtJH6yWESfcR
         wDS4jRbtlHpYNyd+B0WzZtAit7HYuWu1OcP0qAG2AinT8b3IGHEreza9JsL/YcKcXYpO
         gXvlkwP2ZJZPHk/SkaFWVrkcdiGF8iT/bigjo4sj2VBJ7SW9K2fpVt6SOjkF+DsqxMFA
         1g58+J6ZbCnMZpmHupF2DY2sLOCBLxI3WlF2sJMf3tMicQ5T/tazQmGR7CJn36dhn2r+
         Rusg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SJdukTyi;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id mz9si298019pjb.3.2020.06.30.14.14.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 14:14:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id e18so10527037pgn.7
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 14:14:31 -0700 (PDT)
X-Received: by 2002:a62:158d:: with SMTP id 135mr11234007pfv.254.1593551670529;
        Tue, 30 Jun 2020 14:14:30 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:1000:7a00::1])
        by smtp.gmail.com with ESMTPSA id s22sm3312413pfm.164.2020.06.30.14.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2020 14:14:30 -0700 (PDT)
Date: Tue, 30 Jun 2020 14:14:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Sam Ravnborg <sam@ravnborg.org>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 2/2] kbuild: make Clang build userprogs for target
 architecture
Message-ID: <20200630211428.GB4163361@ubuntu-s3-xlarge-x86>
References: <20200630150625.12056-1-masahiroy@kernel.org>
 <20200630150625.12056-2-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200630150625.12056-2-masahiroy@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SJdukTyi;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Jul 01, 2020 at 12:06:25AM +0900, Masahiro Yamada wrote:
> Programs added 'userprogs' should be compiled for the target
> architecture i.e. the same architecture as the kernel.
> 
> GCC does this correctly since the target architecture is implied
> by the toolchain prefix.
> 
> Clang builds userspace programs always for the host architecture
> because the target triple is currently missing.
> 
> Fix this.
> 
> Fixes: 7f3a59db274c ("kbuild: add infrastructure to build userspace programs")
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> 
> (no changes since v1)
> 
>  Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index ac2c61c37a73..bc48810d1655 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -970,8 +970,8 @@ LDFLAGS_vmlinux	+= --pack-dyn-relocs=relr
>  endif
>  
>  # Align the bit size of userspace programs with the kernel
> -KBUILD_USERCFLAGS  += $(filter -m32 -m64, $(KBUILD_CFLAGS))
> -KBUILD_USERLDFLAGS += $(filter -m32 -m64, $(KBUILD_CFLAGS))
> +KBUILD_USERCFLAGS  += $(filter -m32 -m64 --target=%, $(KBUILD_CFLAGS))
> +KBUILD_USERLDFLAGS += $(filter -m32 -m64 --target=%, $(KBUILD_CFLAGS))
>  
>  # make the checker run with the right architecture
>  CHECKFLAGS += --arch=$(ARCH)
> -- 
> 2.25.1
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200630211428.GB4163361%40ubuntu-s3-xlarge-x86.
