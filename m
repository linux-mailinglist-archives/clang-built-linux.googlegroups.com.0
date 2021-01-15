Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBEE3RCAAMGQELI4A5QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8FE2F87DE
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 22:48:01 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id f15sf5117642oig.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 13:48:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610747280; cv=pass;
        d=google.com; s=arc-20160816;
        b=DgY3nFriWc89r0qwv/9EcDo4kJ4rHSnSjjBz6N69cRvdqChf/KiAhYgGt0+/w6noML
         JGHLQxkTqSkwOZmncEJNSHrB9vIyOWs0aG+vL2qUPyPB41Pu6uIxKLriFe9NZPl7roQn
         E9XzswNwaSrft8WY2z8hleh8bpHMhW4fDLj8LvFlcrsLVoEdzYeoXxVhMDGTatV752cf
         b5zxn7P11Xl+Ul1c3o2qY92Ut1/HGHrrIR/iVorO7pUlT79yUoVuwQlHckN86q/U1Ugg
         x/TOZuuPJOURkZvMnzwBUvHfV6dCgXn76fddsgV61aMzaKK168JRQE+r6VHKowxcalq0
         lDlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=yInPwDEO1k40UZSRoXgFeHOPCp/AvUsuHoTsPLzFAmk=;
        b=IFmNM0fLa6c3gw1JoB/8+ydeDgAHyM4RUPZqb0WNnhUsBC6wYa+o3rCiJSq/GpQCwN
         ESBX42T+Fx2A65+ZZOWYvBDLDuvesUVhcHgdnGEKh2bwUKJxWVaOehainpqlE2C8Tcsu
         noqOHncXkRDBBDu6CWaPKDEnuC0mNtZn+waOH4hwSKu/7rfT9H8FqrCqZ6HSoGOdeHhG
         dPqGEFO1VgQFhLc5nDz5tSRh60k2n8KeuRhfFY1Gt9uOZL8bkq+GJ9gYdrLFti1iE6en
         A+dg19YiGaYB4HbpHvt+Bktsp7Nwz3zBz+FHIB8vjn0Na+BQKGfWJSp0uxgwddTGwbFi
         WGcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i8x4NwEn;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yInPwDEO1k40UZSRoXgFeHOPCp/AvUsuHoTsPLzFAmk=;
        b=AtqLg8anBgjOthVXvdumhsXtKroxapeiFYjh96xt3FcB+84tC5kpV8sElW2dzMCF4/
         0XLw5Iej4AZ2JMQEwEkwT8/j7CMzlOUXsmBSNjfnUvwgqyWVJioqvZygefq3rla7+WHh
         5ovhzIG+3CZ3kN2l7xw9NamtmU+0+2gSaqdgP4ZKPQPl7GxKS5PtxAZge23tG1EILuE5
         pReDq6Zwie9VUBgE6o6n3YziLiIi1KcjDKIkX/EtEk3pALuaYxZwWBQZu5D9UQRgA8Uq
         Pi+uxnmnrKitzbuA99g/HwEieYOGlBF28Z6F4vwGbhPT+S/YbAAH9EJX3KJFMAseCESX
         dEzA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yInPwDEO1k40UZSRoXgFeHOPCp/AvUsuHoTsPLzFAmk=;
        b=lcN4439nNr9ypCp0TW2rhAKZgxr9MGdrX5yBKtipllpdRMT0p3WB04nMc+DO5ZKI58
         VoHWK4B14rMZcuf+z5yMFpluceIOZQP7bFqH0xuydSwkmCxMjCq8GYSq7kXF+vuVw5vD
         Wodx0nsnseTcLXdttX/7yeZn+lxju/zgGLk5Pv00YrZ0M34lPZxXJ7VRRin+gPP2oAts
         Q990Eupe0DZDoQN03s6sJje7hcbwHLzQQvfBlnZPNwLMgY52UZf+WAzI9jdd54Ed9HGH
         cu1mGyKCVB+xEiA6Tn3vSa7xd1GpZQfbSd1sQfgOUybGZ/d+BDKUzM1ZpANIaekOCLLx
         xTkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yInPwDEO1k40UZSRoXgFeHOPCp/AvUsuHoTsPLzFAmk=;
        b=nFwb30/kOWyTTLzo6xrkfZlJzGxPMD7+TLYHo7xC4TbahRmNW3iynavCFWzFWUKOqb
         nRU6J3qgVpAQaxLTQntiJxZzK7EZeyF+NwS2Fc+MU14Zwnl0J/oBOFEf4bogs0/JSxdP
         5xmc1MqsgPV8IpwLWxZHLfcIUTn1aYHPTvV9axhekQH/KLOTXQfh1t4D9RAuPEBtgaeY
         +GG1YYo/zWw3ZEFo6QJDpgkaFql2Ferly2+MVNjK0t9fgwa9d9xSOYF/nt7+HzxZQaw1
         LChm6F4LFKuAWCfC91m7MSRYpzizaOzPprBtatpYopLTxOawjX32ha9+sVE1burHdam2
         1I5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wrOYIBAhjMDykdWMl+Ah717spSb0Uutmfe9ir4i5BmnL9qG21
	xJzWlVcDYeUGD3hLx+BUqgE=
X-Google-Smtp-Source: ABdhPJyrynsncZhAv3ce1oHowHbXwBwtgK8PVmfBC5XW/UrsbxwoQ1glIb99J8b/0K8ZOS4VQHRHsQ==
X-Received: by 2002:aca:f48b:: with SMTP id s133mr7017451oih.59.1610747280298;
        Fri, 15 Jan 2021 13:48:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:b36:: with SMTP id t22ls2499179oij.8.gmail; Fri, 15
 Jan 2021 13:47:59 -0800 (PST)
X-Received: by 2002:aca:50ca:: with SMTP id e193mr6877110oib.154.1610747279700;
        Fri, 15 Jan 2021 13:47:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610747279; cv=none;
        d=google.com; s=arc-20160816;
        b=ECwPjUY0YjhplrOj0G056QGtd2HsaVHO+FzyzyAD2tvPYNGYxOutdwvxc0jNP6R6sY
         y8cMcOE3ByKmNLYtwMc1UqatMhySWMwzM55bG8t0fEID0T5Rm81tkjGf6mxD/l1lYSIV
         ijn78afWVxJ9ZA/XMRmcq8pFNTZBA3ZYDhqFJEgC7SEoXtl8F415vr5EvHJOiPxuOzAw
         aF3lqOcKSaocKPmIcYQY4HBKTPRp+JdbD5cbNXXUBbISKSWhcmD5lVxdsUtidrLfSigN
         71hff25np6OTlpAK+RUOoc6jrLczoUhrAnXepbDmxcAkJ1bgohHcYiSBwid1gs1nanqE
         d9bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zYYFMiVWZRWVRKnudyq1lNHacc6UniMAU/JKqtSTWp8=;
        b=0UZ1lN9e5l60vNpPiNB1rXd3Y/2Iy1X3CelpkdAq64Ua5AAzDEEN9UDZIjFFNxWABE
         LSoVe1Sc0J3D6Z4YIPeV64F/riH/Qr8inbPZAn9urGmxO2dE8i+IvqEjw/Cqre/H+mEn
         Mtt2LNRqQWyaprupGSGp4e7mZBcAfmG1RVPIDAJSXFZMKGc1PopPKEfEh5Zp2j9qFUk2
         zVVIjeSlGwWSo66B7KBXL7akDxwXIkZYw1jh7YCFMHrocKEcbbz5MpO5Y11Vl1hnJLdX
         e9pzPlS3GuXGEe9RvuUNcPlD7+yKRSZ7PdIsQCuUsqBLjHksgf0goBHZBbqutQmOiKQL
         9uHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=i8x4NwEn;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id x20si1061217oot.1.2021.01.15.13.47.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 13:47:59 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Received: by mail-io1-xd2a.google.com with SMTP id q1so20979138ion.8
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 13:47:59 -0800 (PST)
X-Received: by 2002:a92:c692:: with SMTP id o18mr12747830ilg.215.1610747279317;
 Fri, 15 Jan 2021 13:47:59 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com> <20210115210616.404156-2-ndesaulniers@google.com>
In-Reply-To: <20210115210616.404156-2-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 15 Jan 2021 22:47:48 +0100
Message-ID: <CA+icZUVtodEz=E+TG0Pt_OUDgW5-0x2WzVOhzQDbyuVR1igU6Q@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] Remove $(cc-option,-gdwarf-4) dependency from CONFIG_DEBUG_INFO_DWARF4
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=i8x4NwEn;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a
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

On Fri, Jan 15, 2021 at 10:06 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> From: Masahiro Yamada <masahiroy@kernel.org>
>
> The -gdwarf-4 flag is supported by GCC 4.5+, and also by Clang.
>
> You can see it at https://godbolt.org/z/6ed1oW
>
>   For gcc 4.5.3 pane,    line 37:    .value 0x4
>   For clang 10.0.1 pane, line 117:   .short 4
>
> Given Documentation/process/changes.rst stating GCC 4.9 is the minimal
> version, this cc-option is unneeded.
>
> Note
> ----
>
> CONFIG_DEBUG_INFO_DWARF4 controls the DWARF version only for C files.
>
> As you can see in the top Makefile, -gdwarf-4 is only passed to CFLAGS.
>
>   ifdef CONFIG_DEBUG_INFO_DWARF4
>   DEBUG_CFLAGS    += -gdwarf-4
>   endif
>
> This flag is used when compiling *.c files.
>
> On the other hand, the assembler is always given -gdwarf-2.
>
>   KBUILD_AFLAGS   += -Wa,-gdwarf-2
>
> Hence, the debug info that comes from *.S files is always DWARF v2.
> This is simply because GAS supported only -gdwarf-2 for a long time.
>
> Recently, GAS gained the support for --dwarf-[3|4|5] options. [1]
> And, also we have Clang integrated assembler. So, the debug info
> for *.S files might be improved if we want.
>
> In my understanding, the current code is intentional, not a bug.
>
> [1] https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=31bf18645d98b4d3d7357353be840e320649a67d
>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Subject misses a "kbuild:" label like in all other patches.
You have:
"Remove $(cc-option,-gdwarf-4) dependency from CONFIG_DEBUG_INFO_DWARF4"

- Sedat -

> ---
>  lib/Kconfig.debug | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 78361f0abe3a..dd7d8d35b2a5 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -258,7 +258,6 @@ config DEBUG_INFO_SPLIT
>
>  config DEBUG_INFO_DWARF4
>         bool "Generate dwarf4 debuginfo"
> -       depends on $(cc-option,-gdwarf-4)
>         help
>           Generate dwarf4 debug info. This requires recent versions
>           of gcc and gdb. It makes the debug information larger.
> --
> 2.30.0.284.gd98b1dd5eaa7-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVtodEz%3DE%2BTG0Pt_OUDgW5-0x2WzVOhzQDbyuVR1igU6Q%40mail.gmail.com.
