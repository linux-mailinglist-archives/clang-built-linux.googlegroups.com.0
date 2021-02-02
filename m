Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB57S4OAAMGQEIT7476Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A8430B83F
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 08:04:25 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id y186sf8006571oia.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 23:04:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612249463; cv=pass;
        d=google.com; s=arc-20160816;
        b=b4ayrhrXdC5U3EStDF01aBbvLVZ+Cb2KXt2bRJHQACyPpayu44UAqEjfOSZJ2jrnNi
         a6Jm+ric3aS3efVGaMVgm2U6GkBEH4vzPo5RvVs9sQPW0/wMAA09+hMP3ljSzKVLVP+M
         3ZMGBFmzBgEnfqlcm8/R8dipTrMGbTcYwWj1Gt3dFq+exISFI0uNXLUoVIj5eHF9EaDI
         SZNr14ZrpnYix5d9zT7tJOPtv4v3Ms/91j3i9xx65za4nDjwAEA1bjIofpwIns8us+06
         ftukyP1i247I8I5rcvGzqCuYsevTsYfUMqPz8KWrkuy2npabjXXYCSuDkuegOOLtYhXh
         karQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=jY3LyqLXUbzsiZOnrHm3bjJmG2YQYgyQgrUy1Pq0BiE=;
        b=yXl8EzwqYRPeoaw0rE142Fa7z4Sj05vMviJ1Xn/hXKeOjVqKiPnQWPY6/DykmuRT6F
         1vrL4XQiBHlWwCbxvsMEhqGXKT93ir22RVyfBDyMSe8N6jxg5pOLyaYJfS6Ooi2QSDMO
         o9Zrllw44lEGDkyAXfl+J5X4AbxYMQ1wN9P292ERtPLe2Krt9/UKO2UnzqQ21mI66UWU
         WlPdurCV6LzM4VZ4nM4OSpOC0fUX0l0ItqcPrBbckWjnX6VN/pTLGUHObuDKp1fstZq5
         zD0XqzAMFobRd73wOgyOODbc3yEdxKI9JaDS41+wUTM6EHPfbswxhxEJ6IGMAiBv160P
         PMYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fQo6Oikd;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jY3LyqLXUbzsiZOnrHm3bjJmG2YQYgyQgrUy1Pq0BiE=;
        b=VxU4F5ScWzDf5dL/CzHfX56ODCngqHKQAmJHF+p2ovBNGosS6amFnz4Y0/Yrz11nQv
         486VQWDqkXpSl7HlZbHHyvhqb4C5kjolmKydoPj1ysDio9e6aHi+mlob7U50L9Er4Jch
         GM++ApCBnjQw8HTkgYzGonzm1MSQjcit4l/ciDbJoIkEd/vcXStpy/oTkxR467qP7WGn
         l9J3weFsSwpqygX3jA06DRmJZ5RBCDYuVpO7dCYuFeSpC0RbVzykbf7H1D/mxW206Apw
         jmyNezx/z4dA6L+SXhsscmihNNBmPbrL8uhatHKpY9tn6/Zjngw2j6b5aVVGbUbchl/u
         Hncg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jY3LyqLXUbzsiZOnrHm3bjJmG2YQYgyQgrUy1Pq0BiE=;
        b=ML/C8WDoYWFEslgv4Ti6vnNyX+i8OvRVH7g3ckhFx3gBjNZcomoZ5SNa0DplcXnF3P
         PFBdPyHr8NiHZgheq98RC5Egqr+xQCwy5tNbBKvcIUxbVlnj3XDWhIzNm5qmHVlc2fQU
         rQ9t8NCTvpN5PCIpeP0Caj0AWxwNAT1ZA/jgaXaA9AlfUmRZLMqBg0oB7fiPz+MUycnQ
         BxJPeoJj2Mdv2WEprNkyQP8DsAQyTZS26jvj4DmxcNk957aIcjMw9eXySkwoxDh94y6w
         5AaN+KQ+FpIIZB6tIXxgONqJ4OSmPab8xil5RC6EPscJYXhwaD0VvoGeDlQE+3Gggqmn
         aX2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jY3LyqLXUbzsiZOnrHm3bjJmG2YQYgyQgrUy1Pq0BiE=;
        b=LLO6rWKoUznPVXFe+iOOxyPUCBBd6q6iuXprd5dw+kQZIAEejZYS9Rw1WZ/cwBtKFX
         fq3WcN5VPBdWAt6d9v/5N7xjUKNxojgyk/gm5z0kFZGaxdxv0FKoUuJGcBYu5M2gPkF3
         Ehs7+pJIrWouUUBSr5AlQkJbR8IR1wihv2SLAyfgqaXsJhGWC/dB1PWeiXX+1gzXcE9X
         3fsR96pf5Zt1nyq//BpSFvxTN8oVo5bHQbvagz0r3KGZC4FPmlYmHQExCk8FaMEuP69g
         C+2Gbmnu6+3seW/lBI5k7t9ZMuPXr4GsGB2hWpVUkCAr5ciPKUUZLHQ/2EhD45VVLPwV
         E3fg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uo79MwDqOOpUDDBWVJcwbuFYWYPeJSwgLg25nWrhmFozb1gc9
	Zt9QMBmpAa/3D6IpAVPuw6M=
X-Google-Smtp-Source: ABdhPJwcLlGVeS6vsRAqQGbDXvAxIrKSNArOqr8e1HvvdVdKqT0UowtO4oCusbsf+7uiLCI/T5mZZA==
X-Received: by 2002:a05:6808:352:: with SMTP id j18mr1781459oie.144.1612249463842;
        Mon, 01 Feb 2021 23:04:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1391:: with SMTP id d17ls4617521otq.2.gmail; Mon,
 01 Feb 2021 23:04:23 -0800 (PST)
X-Received: by 2002:a9d:62d9:: with SMTP id z25mr13656957otk.315.1612249463245;
        Mon, 01 Feb 2021 23:04:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612249463; cv=none;
        d=google.com; s=arc-20160816;
        b=mTismj1BOB/OeLKpt/kfFn4pqELMZiy9z5Q70ZEcY87JiMXeTpeFg9kn8jzrANNp+B
         ayO3mC6oIAZCFxIUaEf2R7whWoGr7XTd2PLZ1I3ndAv/ZX2hlNlQUwdZvjZubhpWfTrd
         5O2e4tDBiLVs4hntornn7qSz5RLNKusq0TOq6txvF0FV+wtoOJP9IxfYnNiLUKtqmOnO
         X2QRsViq1P1MC+N8xV27udSKWus8D4jraaa+buVEWk1wP3z6jaLgUtXkmEpxPjgit+xz
         UigbZszTLuk4/9AHc2Hg09g3b2T1MNwZX++Ig8TKY8KoIjt9q8LOef53JOfAQJ9gt2B/
         igow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ch8HiDn9RPP6F97sx8UHBgj1bauCXmdUmArhq8iz8l4=;
        b=oEloAmI3FwHVFSVLnj7rqjt/GAJ99SUcxADY5L6CklGS10M8tQSUlb7DOEVw3Aed8+
         +eHQOcbXGDsq5tkwDKyQYd0wYTlNZlZ+s6rSHXhk+DhXhioVKvaryt15+qPj5cwAtxBS
         hagPAz89qcMxtHGZDUn/S54d/+8iURbQPXhUyx/FfjWt8V1LXECcs5U3TYFBxfeO1dSt
         PsBBUEKtJEHR8dqoQ26ZFnHeNtFv0pUUPJv6uV+AoGvgYG5D4L1R1pdKvp7Ir9yHOPfG
         YEiYQs+68jjjqbmowYwVorKWPGdEPjZ8BRkwWYHeQT23FOMyrHo8SbEHLp/ZG5esTpEI
         VFvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fQo6Oikd;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com. [2607:f8b0:4864:20::d29])
        by gmr-mx.google.com with ESMTPS id e184si1576788oif.0.2021.02.01.23.04.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 23:04:23 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) client-ip=2607:f8b0:4864:20::d29;
Received: by mail-io1-xd29.google.com with SMTP id p72so20203831iod.12
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 23:04:23 -0800 (PST)
X-Received: by 2002:a05:6602:1541:: with SMTP id h1mr6411983iow.171.1612249462958;
 Mon, 01 Feb 2021 23:04:22 -0800 (PST)
MIME-Version: 1.0
References: <20210202060604.711160-1-masahiroy@kernel.org>
In-Reply-To: <20210202060604.711160-1-masahiroy@kernel.org>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 2 Feb 2021 08:04:10 +0100
Message-ID: <CA+icZUVADDyNMhQQwjS9zvkha3ZuKQeZRT41c2Z=fgkPY+i7SQ@mail.gmail.com>
Subject: Re: [PATCH v2] scripts/clang-tools: switch explicitly to Python 3
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fQo6Oikd;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29
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

On Tue, Feb 2, 2021 at 7:06 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> For the same reason as commit 51839e29cb59 ("scripts: switch explicitly
> to Python 3"), switch some more scripts, which I tested and confirmed
> working on Python 3.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Acked-by: Nathan Chancellor <nathan@kernel.org>
> ---
>
> Changes in v2:
>  - Drop the spdxcheck.py change. The same fix exists in linux-next.
>

Link: https://lore.kernel.org/r/20210121085412.265400-1-bert@biot.com

- Sedat -

>  scripts/clang-tools/gen_compile_commands.py | 2 +-
>  scripts/clang-tools/run-clang-tools.py      | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/scripts/clang-tools/gen_compile_commands.py b/scripts/clang-tools/gen_compile_commands.py
> index 19963708bcf8..8ddb5d099029 100755
> --- a/scripts/clang-tools/gen_compile_commands.py
> +++ b/scripts/clang-tools/gen_compile_commands.py
> @@ -1,4 +1,4 @@
> -#!/usr/bin/env python
> +#!/usr/bin/env python3
>  # SPDX-License-Identifier: GPL-2.0
>  #
>  # Copyright (C) Google LLC, 2018
> diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
> index fa7655c7cec0..f754415af398 100755
> --- a/scripts/clang-tools/run-clang-tools.py
> +++ b/scripts/clang-tools/run-clang-tools.py
> @@ -1,4 +1,4 @@
> -#!/usr/bin/env python
> +#!/usr/bin/env python3
>  # SPDX-License-Identifier: GPL-2.0
>  #
>  # Copyright (C) Google LLC, 2020
> --
> 2.27.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210202060604.711160-1-masahiroy%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVADDyNMhQQwjS9zvkha3ZuKQeZRT41c2Z%3DfgkPY%2Bi7SQ%40mail.gmail.com.
