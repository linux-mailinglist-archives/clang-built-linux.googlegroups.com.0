Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBHXLS72AKGQEK3VOR3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5042719C3ED
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 16:24:31 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id t25sf1542282wrb.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 07:24:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585837471; cv=pass;
        d=google.com; s=arc-20160816;
        b=d6bctXK4C8E2w5Sx+gKSPrGA96EoRNGRFKBqSChUHmVAgK461N40hvn+QXOlj5j7et
         Zchi+zZHJIk1z/o8nfefy/2FOB8hRVEaUidMzMICBuGxDyZ8qw4Wh8oGeN+lLs9nTMt+
         a13FlHZFijAAWgf+4HCUNgVSIrLrq2XEvmhjhhWjJDiB1u3FDyGqDCxiZBMjj37brfRH
         GWLZx+A4o/+NabN3Or6SV1NaekhTTzn0qvx/kns3I2KTDI1nD381Dzc7ZyZDUa+3Vi/q
         jz/TsaqKVYfHbUua7OqJEAM/7t9dkH/Li0lutJxnnHyHUQlTgcV49GTGFj9MyW8y7Ljl
         FxEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Fw9yyrzRs2YlbxgY+BBPsipzn1FOF17+dqlYlXTvlaM=;
        b=U/FFpCLt3hWzBd8sWFDqZ84RF7Gkn6iXCLAIzfUAey0LqJhAKhsu95GiBHIYtJiiHu
         XBgtmZ6kAXaEqo8gRmSvNrdML+xBXrJwHmXj0EB31uEASMG1Gex8mcl8f4A4FYrf9uuI
         F4o51tUJCm59qOMGklcZUly7IPWjtjEpfTaWEV5BaQz+JlYaKAdLYwBGKPoDPC6bkSHO
         3CXTw2eOdWA/H+iG5bp+3EXksYrByyNj2cJ2bukKh2ncDf4il1ZkUOoBZjew4vNww2lM
         s1TaJ8D0qt2Pqka7nctUppZ5E9/LLGjP8Q9LEp0KtOI3KClor8JFjz2eu0Nv+a7lQfxJ
         VXOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DNJyYXWg;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fw9yyrzRs2YlbxgY+BBPsipzn1FOF17+dqlYlXTvlaM=;
        b=AzMUGk0BaMtLPXNNGDlp9MMEYFrTqMS5S/ntW5hUuBEoIyTdDuD9w/cdD+X296h7oW
         SitWS7O58uB/0vVmTLLUn1mnvbcb9qzR0EXyeRFC8FxvKbe+p21tQQEP0L6kKm+9q/5B
         eabxFYL97O6x/KD7INPpGqZRDarXu25fopPOMu6sjUnLlVDd7qp580rYABilnrEAEJam
         lCw/bMUO2VX2l2KNCkFm4g4n510TQFWdPnuq3V2+e3xTajHQ3NC0BMeGeNulW0hQa45G
         4OUO8rsW1ZKvNG3RNkqT7hdAt5xpB6RFcoplUl7y+OBrSxoxJwgrSXhyZPOQ6rOXQcVr
         e8qQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fw9yyrzRs2YlbxgY+BBPsipzn1FOF17+dqlYlXTvlaM=;
        b=hQiCzRLaiybOLxh8cHM/OCDHjK4ReMqhMjldxfEhAuSyGT4yRGWCZKn6RvxyEJVSli
         EJCG/Qu/aQdFV7OMJUrWvDFMWYqyvGjH2/me9tCps65C5U7gsM/fQkL/Ko/rF9g8KeVH
         /UhodQVUg+VWCfBd2JixRLaa8huBH7N2RCjbHgo7yrEhQwpb6C+1/YaixJiBAV2DuOwG
         orLw15HkE2mRICkF8muwk+8Nism/Bsfm9MUUCdchtU4j7NjHgzGE8GJAZqs8QeGc+Q5F
         GC7M16TWhXOR2DG+dv0AxCcWKJG5q6b595N3ck9/GV1v1dJ5G5fLmgbFboxShPLnQMPs
         kofA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fw9yyrzRs2YlbxgY+BBPsipzn1FOF17+dqlYlXTvlaM=;
        b=JJ4IVYEbp3lnI6ZLdAmouKxrg5DDHO2pmEIlz69nKik1Af0xvThWvzzfZXgFrZcFdy
         irO8FFL9OZbz3qz6CyS6RFJZbyx9aTCR1BV4k4N53M4zOmXsw/mENUMlnXDm8u2AGN33
         Qr1GbX3/DsZzBej4eHoMwSXCjGkJ3dbZU/KM+qni6W64n2HQu7K92k+wXhkBobTqOWrc
         fz73j8zbclCJpnONcfIKHuwcsCIGYe040HXec6W/OUnZEIFd84ObX0S/kyNXGO4kwqsO
         upSPNGbvKBK0eNTpOg8KIrJCl5PP6dkGaqc9qasjfa2rvus6SLl+RI84WFc1IxMwTVYo
         NKpg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaWvG/9TcUHF9sCtMfgrIXj33oUGKzaUMBJgKYCT7wOlGow/NoZ
	ajFsSY/hfzvZwYRimNbLTco=
X-Google-Smtp-Source: APiQypJtLx4FhMBMY12hYN4fEkG+mWQTH3NClr1jOHPjrTjYP5csYwSdEeOASHMkswtBojKFhrEoBg==
X-Received: by 2002:a5d:4f92:: with SMTP id d18mr3748880wru.400.1585837471066;
        Thu, 02 Apr 2020 07:24:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4690:: with SMTP id u16ls169892wrq.11.gmail; Thu, 02 Apr
 2020 07:24:30 -0700 (PDT)
X-Received: by 2002:adf:f6c8:: with SMTP id y8mr4046835wrp.403.1585837470328;
        Thu, 02 Apr 2020 07:24:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585837470; cv=none;
        d=google.com; s=arc-20160816;
        b=sQl2QR9bPug0ZrRRZtcT+he/JzyEh+mUP+PK3EX5S1UAB68e7D25/wf+zt7fHO+Qsr
         8t16k3bTjcDtdzVtHyXFaYQ5zrmYDjGpWy8/bPJobqrwveUlHHlj5x0dp2HKu/m26ddr
         axN0g2vwV4X7Rjb/m9EFcflhzdn73g8WbuckoDcaq246rzbeT4KqyokhocYk9HJzEuwn
         zvSMCywAoynaCDQXa0CHSk9jhXF7nn8PnC9CkO/CL+xeIOMr6WGQNzEGL6Z7v/oVJTN0
         vU3PBdt78h+M93ZlV7dssKaOfooSScG3f3gBQFRw3GIHBUCDqVPYlRWXCIzgaZ5Nfx3i
         FBxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=n3PDnctBOZZXWd2LbmIwxNVKZxM3wgowDyh1vzhpv5A=;
        b=eQexmJFHES38Kmy/bffEX+Jo6aawfHfYzEJkYEYOXmXP9S2Z0r/MZFL4ew5Cqb1YeB
         NBYWhMUIhHejz7fyrRs7z/pYXzhSgwQHuGYNckmj/az6DhNdAnyDzjgf8yqnZymL8fwB
         JZug/1R/mW1qg2kBDHY8W9PnSClMmo7ejjeSUQcWjjQKQq2CKQe7/owcB1dE00uiYgSy
         nBBQNX7b2gziMWFFdoL45PMHxTsAOYOZeexj9ULN/1x1mzRINU4h0i8E3ZP/isCiTWdA
         gpWApbb8kO/DZ5Q4cUiGHAS9/Ns4Z7YswmWdopWkp44nPEAk3giqfA/dRkEQChqdBdcP
         MujQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DNJyYXWg;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id g78si380265wmg.0.2020.04.02.07.24.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 07:24:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id e9so3867553wme.4
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 07:24:30 -0700 (PDT)
X-Received: by 2002:a7b:c850:: with SMTP id c16mr3895360wml.163.1585837469897;
 Thu, 02 Apr 2020 07:24:29 -0700 (PDT)
MIME-Version: 1.0
References: <202004020117.6E434C035@keescook>
In-Reply-To: <202004020117.6E434C035@keescook>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 2 Apr 2020 16:24:36 +0200
Message-ID: <CA+icZUW0R9LDGJ1YjJAB2oWkcEQxCO79xYmdVEoh=P8Fy_AL1A@mail.gmail.com>
Subject: Re: [PATCH] kbuild: mkcompile_h: Include $LD version in /proc/version
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Thomas Gleixner <tglx@linutronix.de>, linux-kbuild@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DNJyYXWg;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342
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

On Thu, Apr 2, 2020 at 10:18 AM Kees Cook <keescook@chromium.org> wrote:
>
> When doing Clang builds of the kernel, it is possible to link with
> either ld.bfd (binutils) or ld.lld (LLVM), but it is not possible to
> discover this from a running kernel. Add the "$LD -v" output to
> /proc/version.
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Hi Kees,

this patch is really really a good one!

I use Clang and LLD to build my Linux-kernels.

For archiving important informations of my latest build I did:

cd linux
readelf -p .comment vmlinux > ../archives/readelf-p-comment_vmlinux.txt
...or...
readelf -p .comment arch/x86/boot/compressed/vmlinux >
../archives/readelf-p-comment_vmlinux-compressed.txt

The output looks like:

String dump of section '.comment':
  [     0]  Linker: LLD 10.0.0
  [    14]  clang version 10.0.0-1

With my next linux-kernel build I will include this one.

Feel free to add any appropriate credits.

Thanks.

Regards,
- Sedat -

> ---
>  init/Makefile       | 2 +-
>  scripts/mkcompile_h | 8 ++++++--
>  2 files changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/init/Makefile b/init/Makefile
> index 6246a06364d0..82c15bdb42d7 100644
> --- a/init/Makefile
> +++ b/init/Makefile
> @@ -35,4 +35,4 @@ include/generated/compile.h: FORCE
>         @$($(quiet)chk_compile.h)
>         $(Q)$(CONFIG_SHELL) $(srctree)/scripts/mkcompile_h $@   \
>         "$(UTS_MACHINE)" "$(CONFIG_SMP)" "$(CONFIG_PREEMPT)"    \
> -       "$(CONFIG_PREEMPT_RT)" "$(CC) $(KBUILD_CFLAGS)"
> +       "$(CONFIG_PREEMPT_RT)" "$(LD)" "$(CC) $(KBUILD_CFLAGS)"
> diff --git a/scripts/mkcompile_h b/scripts/mkcompile_h
> index 3a5a4b210c86..f98c07709370 100755
> --- a/scripts/mkcompile_h
> +++ b/scripts/mkcompile_h
> @@ -6,7 +6,8 @@ ARCH=$2
>  SMP=$3
>  PREEMPT=$4
>  PREEMPT_RT=$5
> -CC=$6
> +LD=$6
> +CC=$7
>
>  vecho() { [ "${quiet}" = "silent_" ] || echo "$@" ; }
>
> @@ -72,7 +73,10 @@ UTS_VERSION="$(echo $UTS_VERSION $CONFIG_FLAGS $TIMESTAMP | cut -b -$UTS_LEN)"
>    printf '#define LINUX_COMPILE_BY "%s"\n' "$LINUX_COMPILE_BY"
>    echo \#define LINUX_COMPILE_HOST \"$LINUX_COMPILE_HOST\"
>
> -  echo \#define LINUX_COMPILER \"`$CC -v 2>&1 | grep ' version ' | sed 's/[[:space:]]*$//'`\"
> +  CC_VERSION=$($CC -v 2>&1 | grep ' version ' | sed 's/[[:space:]]*$//')
> +  LD_VERSION=$($LD -v | head -n1 | sed 's/(compatible with [^)]*)//' \
> +                     | sed 's/[[:space:]]*$//')
> +  printf '#define LINUX_COMPILER "%s"\n' "$CC_VERSION, $LD_VERSION"
>  } > .tmpcompile
>
>  # Only replace the real compile.h if the new one is different,
> --
> 2.20.1
>
>
> --
> Kees Cook
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004020117.6E434C035%40keescook.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW0R9LDGJ1YjJAB2oWkcEQxCO79xYmdVEoh%3DP8Fy_AL1A%40mail.gmail.com.
