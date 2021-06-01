Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZEK3KCQMGQEPQFKFRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5D0397A6D
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 21:07:17 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id g12-20020a056e021a2cb02901dfc46878d8sf3067909ile.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 12:07:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622574436; cv=pass;
        d=google.com; s=arc-20160816;
        b=M7gJB5uN3FwTSZii4V+HWXzeKJNpRghBTwktHUduvKS7HnpYNKov39SzhZYIugPwDZ
         G9MA0F3sc6lxXyGVvLVc6ap+uNfp/9gVGgYcfN/Ak0qzyd8VLSNkdB9dVq8PDhpLx30N
         0/rQ9aN76eIo1zIVTw9hKFyhvBmHJE1omWIZbSLs++aNwAdX9mkHDTXoMRqVZwvOW4OQ
         1JXs0+Jnesr5Qsy4DA7S/fpat8tDUaJHTOqnGvPoIaAN5Hp7uKicF9s1VzFw48Nu0oiv
         aWwiu6W05icMwD3wPbJfD/SCRAL0a6bGmBGM2ZPWBYCQX6XCQyc+4miSqrmfwa+wcA6H
         h9SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=QD7IUCm6iBujQ7ydyPOxlbHqspoXUpo8xGkH5omA17g=;
        b=oAeqGrbg9Viv4LaNTtUn5NfkPJ9O+XExEx7w4lktpuZNuF0syd+N56zL7bGdP1rXSZ
         mA3elsOpUwoG/PZNw8ENbQGCd8hIUIcvGtUYa4s613H0KwMg0V0yPvJoAmMOBcqYdV/8
         fS3zyfrVhEcNR5dfKXZUvNWM43AC2XHYG96XdNxkSDn8BW96wnCxL+DdpCuawzziMLHr
         grKcB8tFZ/VG2Tm/IfC6kkEx/LEnY4Vt4x28WaO2NUYaObBurekXCSyhz7PC6g8N5Efh
         FurMAyBGinHBmPI8CI1eRDofImQr+XFW5l2VJ27pXYR0vonOSH+GSCIjM30faGU7+DDm
         NIdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BWVJnjnG;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QD7IUCm6iBujQ7ydyPOxlbHqspoXUpo8xGkH5omA17g=;
        b=l49UMzAkC/iwZ7cJUggX9jM1YAtBWvz22XjGkOtAgjgsp6eMBV8QUzDTXfxxye0vP9
         Hl+IP5SFKNuFSSDZtpR2NKVN56kMAZDs/Jq67yRIosaKokyen/evGjFS2LrQmayAhmTd
         cykVp1Ln9eMZ8aK67XUE3aXZMSwOdpc8RkAesfd2Jrmrkui8mzsQHrQ6RSy700WO+RL+
         V/aDH7YIDG1klPCJQnRg7xqdhm7h6c5Mdi/jRp+0vGFdUYLrgReFqsrp0r8Y9A2KhFzY
         KD6wn0Ors8K6sVML7xd0q9SO336XeX2bkF8OYdtxdZEYcLlQacLL2J9d96CgJyrAgKJh
         JraQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QD7IUCm6iBujQ7ydyPOxlbHqspoXUpo8xGkH5omA17g=;
        b=crExxBZ5VVYMtPZ34zVRwcXlK6qS0SFDHoEBIuzV3MSmaycGMmkAy9krcxzAEKAfuv
         RJ+WAMyz6Q/+4+VJwOtIRuWOPX5JmBh93+B0ts1h8l8S4UVhUA0g6Zxp4m2CqStCx1l6
         Ua1kc8KaiYzxnRxBsAwMNzXV9+goOxWWepv5oa7dNEhymqB+kmV+5OhxnnTFn07LeBOH
         moI8QgzXgfqtygWbPc8tn5kUSYDhcgv5+Yd6fx9WNq/sWXiwfiXt9GDDjdJElCwKSCfY
         QRt30H0q5YR89TVynz3TCuBNu7t2y6fn6r0bChs5eLoyV4jLSux+rj2zK56yueFamXGJ
         J8SA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533CUf1WnqEXc7bP7kXjVfOV/DkwmOgw181Ldt3DsQqMehkZvj27
	y8wdIDFqbL8+YwiwrB5FM0o=
X-Google-Smtp-Source: ABdhPJwMl2yv9IdiUwWALUTTuZ7p+joQSdl1RBTcwd08HDBoBID5AieTzKX73im41M+HyNsZbV6yDw==
X-Received: by 2002:a6b:7d03:: with SMTP id c3mr22808849ioq.2.1622574436425;
        Tue, 01 Jun 2021 12:07:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9454:: with SMTP id x20ls1584359ior.5.gmail; Tue, 01 Jun
 2021 12:07:16 -0700 (PDT)
X-Received: by 2002:a6b:5c18:: with SMTP id z24mr21455123ioh.127.1622574436060;
        Tue, 01 Jun 2021 12:07:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622574436; cv=none;
        d=google.com; s=arc-20160816;
        b=spRlW0ak0qcJcPHlOYZhGl4hw1qegQv7OceBVZ2yfT1TSFuNB2tMigaOaZOikhXX8g
         ChH+9rdCiwTjqx2Yjwa9WxzuAqLzYES0y0WE4kWrXUkiZ72sB++ZE6j5ZOYwpSTkZ/T9
         dp5yId4rHz8OnxyOQDtwWeUVEjA7VWV+EsumgeVmO1TdSFtaDdOx995aLb9SP0RcFsdE
         h2Wfet4kPtpkBJCN6SvhiYPocSPvKa/irKe5TQmxZzHk4elpWU/uuPlFvWFBkQidKTDG
         df6iTKatRxCs1PKiPOpRYtYjfcQrthL/VYQswnq2uJrvQbeWGLikKlgDA24CsuA24Y2f
         puWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=lFuOZOucA31ttwQbhLxZp5dWwdJ6yxrDRAm3U9QwcM0=;
        b=uOQAf5SEwGXjOEnUuRwlzWFdvy0h6ydlvEZZ3e1O751qh588Kk8fJ/lncULEBqNh59
         Dfd8ADRuJJGVAbBL1DDZFUl569dGvEfZTPWGWAjQ6sBiTMv7iP9YyZr+bhOhruo3f+Qv
         1cerYyQkCFap5dMXgBGToKLpWnnqnXlJCs1VIVNYzt8ZNta0/NSTSMtuCLRjkKa6/XAL
         BOsilyaXSluE/q/o8xmIDuElQAcAsk0ggcrPY4dz2rBcOeg7dAntVDa5IqQiy84oT+sX
         /R1yURyVTqnhtVEAsqjMFCH27e1H4xXdVNAthUyacHQ2taxtAJYo11v40tRcWeYFP+ZE
         A0IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=BWVJnjnG;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f13si1778081iog.3.2021.06.01.12.07.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Jun 2021 12:07:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C72AD61287;
	Tue,  1 Jun 2021 19:07:14 +0000 (UTC)
Subject: Re: [PATCH] MAINTAINERS: Expand and relocate PGO entry
To: Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
References: <20210601190541.1446239-1-keescook@chromium.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <75a5aefd-084f-ef59-ceff-0f3856dcce71@kernel.org>
Date: Tue, 1 Jun 2021 12:07:13 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210601190541.1446239-1-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=BWVJnjnG;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 6/1/2021 12:05 PM, Kees Cook wrote:
> This expands the "PGO" acronym and adds additional metadata to help have
> patches get directed correctly.
> 
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Acked-by: Nick Desaulniers <ndesaulniers@google.com>
> Cc: Sami Tolvanen <samitolvanen@google.com>
> Cc: Bill Wendling <wcw@google.com>
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Kees Cook <keescook@chromium.org>

Acked-by: Nathan Chancellor <nathan@kernel.org>

> ---
> as seen in: https://lore.kernel.org/lkml/YLVRTilQ5k5n+Vmz@archlinux-ax161/
> ---
>   MAINTAINERS | 22 +++++++++++++---------
>   1 file changed, 13 insertions(+), 9 deletions(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index fd7d34fcd95c..2030cd9593cf 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4448,6 +4448,19 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git for-next/cla
>   F:	include/linux/cfi.h
>   F:	kernel/cfi.c
>   
> +CLANG PROFILE GUIDED OPTIMIZATION SUPPORT
> +M:	Sami Tolvanen <samitolvanen@google.com>
> +M:	Bill Wendling <wcw@google.com>
> +M:	Kees Cook <keescook@chromium.org>
> +R:	Nathan Chancellor <nathan@kernel.org>
> +R:	Nick Desaulniers <ndesaulniers@google.com>
> +L:	clang-built-linux@googlegroups.com
> +S:	Supported
> +B:	https://github.com/ClangBuiltLinux/linux/issues
> +T:	git git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git for-next/clang/features
> +F:	Documentation/dev-tools/pgo.rst
> +F:	kernel/pgo/
> +
>   CLEANCACHE API
>   M:	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
>   L:	linux-kernel@vger.kernel.org
> @@ -14387,15 +14400,6 @@ S:	Maintained
>   F:	include/linux/personality.h
>   F:	include/uapi/linux/personality.h
>   
> -PGO BASED KERNEL PROFILING
> -M:	Sami Tolvanen <samitolvanen@google.com>
> -M:	Bill Wendling <wcw@google.com>
> -R:	Nathan Chancellor <nathan@kernel.org>
> -R:	Nick Desaulniers <ndesaulniers@google.com>
> -S:	Supported
> -F:	Documentation/dev-tools/pgo.rst
> -F:	kernel/pgo/
> -
>   PHOENIX RC FLIGHT CONTROLLER ADAPTER
>   M:	Marcus Folkesson <marcus.folkesson@gmail.com>
>   L:	linux-input@vger.kernel.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/75a5aefd-084f-ef59-ceff-0f3856dcce71%40kernel.org.
