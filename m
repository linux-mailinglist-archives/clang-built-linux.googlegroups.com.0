Return-Path: <clang-built-linux+bncBDYNJBOFRECBBJXY7HYQKGQEL3AXQSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C3115638E
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Feb 2020 10:15:18 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id s25sf565133ljm.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 Feb 2020 01:15:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581153318; cv=pass;
        d=google.com; s=arc-20160816;
        b=E/T+xBwhVorLeOkPiX42pf6RMxGKwPduLTzBxoZcOr+LJZoSEv5AZ3K0w5FIlCXcdF
         JyVEWRo8yr7wYvdoGsK2ibkoVzpvU5cJZDtSkljysxY0SJd3V3WOt5StoWicLVONkoHf
         VoGtGVcw2W9VCS85+A2s6/3A2vLLz4xHGE30MF5xmIVvqxIq5wwoWZrbc1AGH5fa5BdU
         ErIJwlq+uFNxM6EB3ebL7MlqXDaKXOaBnbaCH/naTN/GJMMM6LDqEnY16nIg235u61N2
         QzUqAo+Kt2Dn5JEk2R5rdMj2Ass0CWRE6Yohb9MUMjQWeJHW5uUZezyYcufIZ6DGLD1C
         Lhzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=X/vGQren/+WBOMCh+6PCRHOxeSt+BxH35QIguHHPBt0=;
        b=lvlDa9yFJIacZ5IRvTXAQTN2LQdyE18M3805OhZFex9Dvrb7b4N0sGU3FrfXdal1rc
         1C9XH7JU+oVRKT42uzcxvpcN0t04K87TCy+8pVwGUfwsnJo/oE6tO6qB3ecZ3QZo/eAD
         fJuE0Vpak9neAB8sVoV6sRoK7aTJpnpi1NC8DfPPT1R5CFWrXJMxXnX1ueh+ftiG15PM
         JvGq3nPDLkS3uQq2hrKxdm8waqVOI2/aPD+23TDt1ihPZYDqYYZJRMfECk28nyxzyVBq
         GpjJOUHcFr4chilxo5DCHrrZjwHh6CBc51M2R/+ssVjVCjEOmf2Kf7z7lpc6iV8Ysaz5
         YzhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=fdZgQqcZ;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X/vGQren/+WBOMCh+6PCRHOxeSt+BxH35QIguHHPBt0=;
        b=XYufWhi9GYKz+2/74xud0WV6/KXLFZmHfXH1e406pHBRZFTcvhQVMNLOmSFnlRpOGX
         2zsUFWckX+/obF7UJiFeD+X3aAlfmZps3zttmItxtauqttYMZKa8ZWSdnSiesPTJ9JG6
         559vTUSIJIu0BZw8BKQcOpJA9cuMNXp9As6cRilxkjYar3OfQdBZtpmExq8dmvNxRHOe
         DCyDd3X70NaGoZZ6nag2jdernPlRragJOCNr8WmuqNyL1O55OxVvsRWXIBicJnMU7eLz
         mtFDJ1rNF5YTw2edCM6jzD72KlfIqGvTWAeapTEb73Sm6wqFqIAW6T/gnxXt4OZ9Hxcz
         IhIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X/vGQren/+WBOMCh+6PCRHOxeSt+BxH35QIguHHPBt0=;
        b=awilHq5Nn1o1pljo2IszRnA3IiwEWlvQ7pClA75Qk80GApSL/t4SbZ+1Ny4QrbJVRx
         aMBObZUxc12PoLIUC8X+Sxvt66pAl/HXG3UNmjn2LuySYpbOFlOFlKP6lfx6ZMAdpLlM
         umbgRZ1DvnG//Js0T7ANkS6UNbLS9RR9RqnmWyEq0WRdLA2ljzaKxjXNuExDHlLVIHte
         cpVaKS7WNHEaHecmq4p7mUtALQ0eoknZUs0crGuZVk/1W1RcI8mVFSnNH9bZMcfY0lbg
         Rs3YYkWOFD42S678cUTl58G6TCuBUpOTbEMpnIUWUJTmh0sSbbZV6B6F1v1KHXMfR6+/
         wzBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU1ANQvL3CxyZA6rS41g6p7nhaJ3jLeW4lCg+sU94jUCmSqD+dD
	1SNK0AsuzUsf7+0vmF9FTu4=
X-Google-Smtp-Source: APXvYqwEoweECiTEHEULAgkyJjLOPsVrcZWH7JaURPg3lTDeatrMZTCnDMIyQmP6vXSYu/l1J7M4vw==
X-Received: by 2002:a2e:a551:: with SMTP id e17mr928468ljn.86.1581153318144;
        Sat, 08 Feb 2020 01:15:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:532f:: with SMTP id f15ls228336lfh.9.gmail; Sat, 08 Feb
 2020 01:15:17 -0800 (PST)
X-Received: by 2002:ac2:53b9:: with SMTP id j25mr1615980lfh.140.1581153317386;
        Sat, 08 Feb 2020 01:15:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581153317; cv=none;
        d=google.com; s=arc-20160816;
        b=Ktwq4K52g3uJ7zHh+3SfBp3l11RyVzsrjmnOdXmtD/xWtaDDoEmLwCCMlZnmG+QUVb
         CgypZn1hF1hf6Ax9oTLGhfHjpk0sk+XsE4p1Bo7cvyDbiCBeA5TaEOGC2LSSZpa/Hu2D
         A+w0X6nlcOfIXV6qTd2CjQZEqxwVZ18i36oN1gucfs/tHOM14V0yT/JIUGNF1G+4jIc+
         NVDlxkG1eFbvRKCPuVSEZfRnjLNcUMtzUHw8RsZmYWOtT88M7w3XYxkTeQVuwld6PYqD
         uusPcFG4AQJLPMaffVlguUHWnOdshebO84Lp0+v43zZK4qu/sDqnspm0CftnyuMujTHX
         r/Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CoHhfIwiDbvtPfDFAwUN8VuBCX0irygnRTD29jqnMLs=;
        b=o0XxTEM9ihVU3kspyfferrTgczNhMjD7Bzd/rqK2l3jLMFEk5GoMZ7sO3Ndy27mhVg
         mVWM6cbW3Ex+6ZzP4eXdMp6ov8yM56uKHn3cHrthOMCPlwzB8mKTBalpyLNkcHIube69
         YvtwfP3XJOxP2Lb31ofKAPNi8Ohbd/j2c/mTLnWOQeJJL/WuQbKTxhMIqtRv1HGZY9bz
         mEg9QuDNAu7Ji6kKVsTwrnWKXn5/ftTiMnBSWYr2lcwVO3ny1jYFqK6xapWGYCsLhBK0
         Ss/KueM8GH5XweNQMUc7NUc/SgB/ydIRrYjF02VwkkjjvUZ5BmPk29hFlJ1VCk9/pcPR
         bz5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=fdZgQqcZ;
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id h8si102628ljj.3.2020.02.08.01.15.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Feb 2020 01:15:17 -0800 (PST)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id u6so1658152wrt.0
        for <clang-built-linux@googlegroups.com>; Sat, 08 Feb 2020 01:15:17 -0800 (PST)
X-Received: by 2002:adf:8564:: with SMTP id 91mr4637019wrh.252.1581153316892;
 Sat, 08 Feb 2020 01:15:16 -0800 (PST)
MIME-Version: 1.0
References: <202002080058.FD1DDB1@keescook>
In-Reply-To: <202002080058.FD1DDB1@keescook>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Sat, 8 Feb 2020 09:15:05 +0000
Message-ID: <CAKv+Gu805nMtsXCLPhTpk7hPCb+Lad6fHgauaq1-G0Lq2xL1+Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: Remove unused .fixup section in boot stub
To: Kees Cook <keescook@chromium.org>
Cc: Nicolas Pitre <nico@fluxnic.net>, Nick Desaulniers <ndesaulniers@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Russell King - ARM Linux <linux@armlinux.org.uk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=fdZgQqcZ;       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Sat, 8 Feb 2020 at 09:04, Kees Cook <keescook@chromium.org> wrote:
>
> The boot stub does not emit a .fixup section at all anymore, so remove
> it.
>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Link: https://lore.kernel.org/lkml/CAKwvOdnRhx=SgtcUCyX2ZOGATM8OzG6hSOY9wGQZcwtp+P5WBQ@mail.gmail.com
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>

I'd assume these are uncontroversial enough to go straight into the
patch system.

> ---
>  arch/arm/boot/compressed/vmlinux.lds.S | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm/boot/compressed/vmlinux.lds.S b/arch/arm/boot/compressed/vmlinux.lds.S
> index fc7ed03d8b93..b247f399de71 100644
> --- a/arch/arm/boot/compressed/vmlinux.lds.S
> +++ b/arch/arm/boot/compressed/vmlinux.lds.S
> @@ -36,7 +36,6 @@ SECTIONS
>      *(.start)
>      *(.text)
>      *(.text.*)
> -    *(.fixup)
>      *(.gnu.warning)
>      *(.glue_7t)
>      *(.glue_7)
> --
> 2.20.1
>
>
> --
> Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu805nMtsXCLPhTpk7hPCb%2BLad6fHgauaq1-G0Lq2xL1%2BQ%40mail.gmail.com.
