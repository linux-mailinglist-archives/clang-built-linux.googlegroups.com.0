Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU7NUT7AKGQEFBCINBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 642C12CDE68
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 20:04:53 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id kb15sf1795798pjb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 11:04:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607022292; cv=pass;
        d=google.com; s=arc-20160816;
        b=rA1R1uwYOMpuBvrSOKFLOs4cDKKpAxADGLRh91gI7Yzg5fDj42wzhvUcHXmCa7720o
         69+BKpc97jIP1YTz+1YEELUjVql12wE/0Qeg4T42KvsfihwhYcM254Khu2kPqtpsdAna
         VcmLAT4z/vpEoO4om9qPFkJqNbl/vFrM7QpymLI6DSGE96llSxd8UAVMcSxOykS8HQ2K
         jIRUviWmPdlQgW0qWl4Hos/Q2lvekSyCbwS4ZL18mg90oXRwiIIR4VrjzydguKlVkJfp
         GU9MDe1HFRA6DKaYlwCQKjYaf5+ln8kayP+YmQtk+8VDrEHYolxZwohzfZ1gxpnl7uL0
         hphw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=k/MXJV1IraUW073BVZmPsvj9LJDTwwcULtQK7QmIjdI=;
        b=IXboYrtxjuiy8MXiAhGi0OfSrZScEpazhg5mh0kG0dGNzwK+aQX08kTUDL5lUMVXkl
         b5HwJ84utAcgDvjFGxGDUiS3TgOaf2CHVRjWrLKB+EjgjW3mC3iJTScLQM9snpMZE/w+
         DKC7rlEreYW4ChdyEmfrpQNPei7y2pcBOrhCS5MQXxH+W8EPx1AlW7cUQuN+eCkt02Le
         Kn6GkgxSop+cz2/XIrifFiBC0798kmixTwEJjYg1V+6L//8t2gW9QdussKZrcS6wKxcF
         iw7xzSCSaXKR/Py170KbYoenEUlWsLhBE8yDk8+ImJ3uv3bzCQCV3W+f865y4sT63MPS
         t3JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xpngdm+d;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k/MXJV1IraUW073BVZmPsvj9LJDTwwcULtQK7QmIjdI=;
        b=O3I80fpZqNLCnlbpCLEDTkhaQNzxcJ311DO+jxgyMHtq2pApH3oEv4TwvLiQt74fJh
         ngVXdRrNL2ulq3Eoqv/VPyCQuc4Kk2Xkg09fpoP+BzevdXohX9LhndKc0Y1Wb5CaYco4
         XutgIkLl0n6rzZSKa6oGdVDdtEp0lz9r45RDano2TDa8u7bjZBu4BM8QbRBBYeebie6R
         ciNRLoEvcoNz0QQfxCiI4CQU5vqlBy+zGDjofd1F3VeNkzW6xKHKQefqx8QElcdfIHd1
         nRkOxsPMZU5HUdLvu610pNfcsdGRKUhhDIYCvaTWYo6lRN6KKG4YWdQqY/Wjc5A1d7vp
         JYjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k/MXJV1IraUW073BVZmPsvj9LJDTwwcULtQK7QmIjdI=;
        b=cTOC0/N/p6DRFv3EOrJDeXzvh0l5378Uw3ZLEqk45gt7mXZmIchCkysNsPlDiSBgxQ
         /Sec63j+JTopuHrkWNlEVq21YSWU0HZz4yp6SDBHElFr7iX/B3xAecsbxcg0CQODbZ3E
         wEr1MdObLnuqOIhlP6V+A5pEsonkcVcCd9AKVeAUCbYjU0IiIijMAYsXjzHZ7+D0M4N8
         9K/77iZubmHdweOzSkkDepyDcG7MPG4KCFNx7JPWp4vg3V3z8mPbPWBzGWDE48T6+AgC
         Fnnn+flvWzYV02D0cdDt5q7e8L3/9vkLNXmzOhee03hcrP5zFUBLJr8W2sC9mmLrss0A
         DYLw==
X-Gm-Message-State: AOAM531/zTbOgTT+kkkAbiREK1a5GQaPeqzg0shNdtJjH7sGlqK5ESz6
	gQHgtOWkkEiki3zBLdirV34=
X-Google-Smtp-Source: ABdhPJznOF0lOrzX/vCpA0Y+rpSPJyv8COg19woCyZcrEn6Wn3v3ibkGIV62HwtkbU3Q3jFnjVt31A==
X-Received: by 2002:a62:864a:0:b029:197:ad58:4184 with SMTP id x71-20020a62864a0000b0290197ad584184mr157113pfd.55.1607022292020;
        Thu, 03 Dec 2020 11:04:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e905:: with SMTP id k5ls3064811pld.4.gmail; Thu, 03
 Dec 2020 11:04:51 -0800 (PST)
X-Received: by 2002:a17:902:ff03:b029:da:6fca:7422 with SMTP id f3-20020a170902ff03b02900da6fca7422mr384479plj.13.1607022291370;
        Thu, 03 Dec 2020 11:04:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607022291; cv=none;
        d=google.com; s=arc-20160816;
        b=xMLprSSVX+yfLDJ1CeDkigaFevpXz2PXOfeRUwGFjqvG0iFkJvLlBdQkwGt4oUb0Jy
         f6y+IokFq8JwMptLIc3e1MCz7m7iBPgGVV4ZD4dRJijDL0sDyIWHf2SY6Y7Z6mW9yj77
         4HP73NoTn2T7cCi+4tB8CMl98PgY1d00LUTUoFEwxs1HbocFZ3IpPyVWLRR9h+N3Uycd
         nnlRNR/MGKA0HPXX82RH1q+RTPo9NlIQqYmBf20M5rlWH0n3CNIRy5lj7a6w1RO7sxad
         YwUX1mVUgOC3uVgalnDGO58rM481z03wYIK733PTJlh2vNayEwWifIKIjh9Do8LtmSoy
         yiMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MGVJZBDXNN6LdEStSCVvQ7DYrKz46JI0zY/CXjUt84Y=;
        b=PR+72oiMCfUPZ3yAxLt41zY5LpHEG7nCyNP2yAn+hAHYeJkUIh9C+aLXatR5pPI/Pq
         vvbXZMFY1eXyrFAVzFj/Z1vTqd34lB4futZ5zrEbLS4iS2gmS8hsTmWuSE+yiDZO7H8z
         hfzUMJ3bbVft0AmfxNRxNYEi8fteob9Sil8a0dwbLRim/kXVaPkJj/rqj+z2SbrEnr/P
         cNcw+GxbsysojWwpb/nZcsj3upskByFxxVWllCfSLOoRT3c5Xnm3l+T9Tbr2FxTa//Ya
         mq+fjyX/FBt1zQ0amxJtbB8OvK2ZAGSWlvv0G39fZnmjVRNf8elvEOJPQu2KVsxUeTdf
         siBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xpngdm+d;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id j124si259552pfb.2.2020.12.03.11.04.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 11:04:51 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id f9so1321796pfc.11
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 11:04:51 -0800 (PST)
X-Received: by 2002:a62:1896:0:b029:197:491c:be38 with SMTP id
 144-20020a6218960000b0290197491cbe38mr374126pfy.15.1607022290861; Thu, 03 Dec
 2020 11:04:50 -0800 (PST)
MIME-Version: 1.0
References: <20201203170529.1029105-1-maskray@google.com>
In-Reply-To: <20201203170529.1029105-1-maskray@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Dec 2020 11:04:39 -0800
Message-ID: <CAKwvOd=8trq9qndYvf8KD4_3XVfaT_BXcNZhrKP67-YH9WQL0g@mail.gmail.com>
Subject: Re: [PATCH] firmware_loader: Align .builtin_fw to 8
To: Fangrui Song <maskray@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, kernel test robot <lkp@intel.com>, dwmw@amazon.co.uk, 
	Peter Zijlstra <peterz@infradead.org>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Xpngdm+d;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Dec 3, 2020 at 9:05 AM Fangrui Song <maskray@google.com> wrote:
>
> arm64 references the start address of .builtin_fw (__start_builtin_fw)
> with a pair of R_AARCH64_ADR_PREL_PG_HI21/R_AARCH64_LDST64_ABS_LO12_NC
> relocations. The compiler is allowed to emit the
> R_AARCH64_LDST64_ABS_LO12_NC relocation because struct builtin_fw in
> include/linux/firmware.h is 8-byte aligned.
>
> The R_AARCH64_LDST64_ABS_LO12_NC relocation requires the address to be a
> multiple of 8, which may not be the case if .builtin_fw is empty.
> Unconditionally align .builtin_fw to fix the linker error.
>
> Fixes: 5658c76 ("firmware: allow firmware files to be built into kernel image")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1204
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> ---
>  include/asm-generic/vmlinux.lds.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index b2b3d81b1535..3cd4bd1193ab 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -459,6 +459,7 @@
>         }                                                               \
>                                                                         \
>         /* Built-in firmware blobs */                                   \
> +       ALIGN_FUNCTION();                                               \

Thanks for the patch!

I'm going to repeat my question from the above link
(https://github.com/ClangBuiltLinux/linux/issues/1204#issuecomment-737610582)
just in case it's not naive:

ALIGN_FUNCTION() C preprocessor macro seems to be used to realign
code, while STRUCT_ALIGN() seems to be used to realign data.  It looks
to me like only data is put into .builtin_fw.  If these relocations
require an alignment of 8, than multiples of 8 should also be fine
(STRUCT_ALIGN in 32 for all toolchain version, except gcc 4.9 which is
64; both are multiples of 8 though).  It looks like only structs are
placed in .builtin_fw; ie. data.  In that case, I worry that using
ALIGN_FUNCTION/8 might actually be under-aligning data in this
section.

Though, in https://github.com/ClangBuiltLinux/linux/issues/1204#issuecomment-737625134
you're comment:

>> In GNU ld, the empty .builtin_fw is removed

So that's a difference in behavior between ld.bfd and ld.lld, which is
fine, but it makes me wonder whether we should instead or additionally
be discarding this section explicitly via linker script when
CONFIG_FW_LOADER is not set?


>         .builtin_fw        : AT(ADDR(.builtin_fw) - LOAD_OFFSET) {      \
>                 __start_builtin_fw = .;                                 \
>                 KEEP(*(.builtin_fw))                                    \
> --
> 2.29.2.576.ga3fc446d84-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D8trq9qndYvf8KD4_3XVfaT_BXcNZhrKP67-YH9WQL0g%40mail.gmail.com.
