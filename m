Return-Path: <clang-built-linux+bncBDYJPJO25UGBBC5D7D7QKGQEIP7ZGIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9722F3BC3
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 22:15:57 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id x17sf2588540iov.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 13:15:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610486156; cv=pass;
        d=google.com; s=arc-20160816;
        b=ozNM0r1RfHXOR5hqcY4zifc3FBWd4oWy6i9kcOAygqNXvBeq+HK8QQfnaH8QqpfnNW
         rdP+HbxDJjHFFRMemY5vRkwD88XM3fa9Xp6m2lG0MOjRVYoXGi8xbA7kjOpRzF1HJNTO
         Ds10aOj5LlQDKkyFE9dv0LChjSdksNS5fnzeWYgfFH32Xs6eeyFTcOykETAFPGkC+Z3P
         GwJcCfoDlBBxgSojo/Lo/FOxYrAOMW4+k/BxD7pUakfrmpTgAPsqwXB7NWHcb5i0whfN
         RfTO4AvNPU+9uPowd1hP1Kb70pO6fDybs1dZkajBdmeT7yyuVcJOoEPMJfKWP3hQdYdn
         zVYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6Yf1NGcaN5nF3Bt4tx1ZIuU53/EE4lXe9lVi19MBhyc=;
        b=C4GYX6Rqjina5Jg+nouPOvd3jZEZDw0YI5VWl9hMpOy2TJYy0+Cp8jDxGj3FEbUd7z
         ePCzyCVtbSAyzdhMfsgwxsVwnQgusIoiTeSvnA0TdfEuAsG9I01Qghxap3zn8xRc92nf
         Tv0PJWmBkTBSwH1jqmzoNfB7EAxYz17GMwT15GtZGIHulNMaCM5ICUrKw42Dmd6G5lTc
         6ncLW81ITqTEblJ4QIWmnZgzjoHZaJ1o4sMAfjJTN1V22faD0i0zJWDCFnO1AYiImYCY
         F5Zbod/OCfSQIT9/RVfl3D7u0tRdVyIggcp9SCf0+OdrAy0OTl8PcfjEur8vOPMq5sTb
         HLqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s9ReiTEz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Yf1NGcaN5nF3Bt4tx1ZIuU53/EE4lXe9lVi19MBhyc=;
        b=rYw/m+eFPf7UlA2JUnuMB8OYn0//RFS41A/vAv3WE6DVtqOJyn7pL6skvQD5LoLFUP
         4wfh6rtV+67XTHBRcV7ZTWqq9E/DN4n0WhH77yDBv+eb8tabAxfuXjzW/e8jeIDtIhLT
         xyZDA5VUSNNwdxZYoV39gqcYFDEdg8f7KDeYDp+aNUxBFSfPY5hcuz9k6PElCOQP0L9U
         nb5mwQ8cu9TQLCiKIwYh1tRFCopI71cSwemlsbkRGORzvxsOc4Joy8Qr5pfUT96wgncq
         f6aXcZXEq6k73ETCiKAw3XUufqw+Rc05NTv94soFEGJxudstnsrbSoWIL9goKKYs+ed4
         Vhlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Yf1NGcaN5nF3Bt4tx1ZIuU53/EE4lXe9lVi19MBhyc=;
        b=adIJGbDLYQW2MO58HO9syqmCGeGAg1k50ovl4btxs/somphCuWiNZeK3Y7W0WO6XVX
         BW3sNSWF3hNwnWp8PR2DMegBAUyg9vYW534M7C3PevVQaDtqBff4PllQVp9RVJjG5pab
         er3QqDCbTZ918L1DHt3NcUQjAWb2snLTwcT4QsSlehzgxtSzTVbcEBnJUVWY6xEzFh96
         FscgesB+K8USgq8Hzvh1hNsJ4IHN367eo1eZFqgWG3jm3r65qT/mOxFHzfJxNhmN3F21
         GKXRc7THu4gUClHPDcYl3xVOY3jxesrICe16c96y2ZNpjlgcPgwNvQhZhEjsor2bQUw2
         73nQ==
X-Gm-Message-State: AOAM532hE+zSBruerbVXjkLJQ1NjGVmgAgGGlNAORadS+8Z/V3WgCkKj
	aBawZ9RyhLPOvmURTDpudZY=
X-Google-Smtp-Source: ABdhPJwEdpGUMGHpJ2zfpQ4OmQ8rlDBZ5d6VxksmQWWypvYjQV+3LHktolyDYPifOBhYeT1okTBLeg==
X-Received: by 2002:a02:cba7:: with SMTP id v7mr1249328jap.133.1610486155425;
        Tue, 12 Jan 2021 13:15:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9ed0:: with SMTP id a16ls816087ioe.5.gmail; Tue, 12 Jan
 2021 13:15:55 -0800 (PST)
X-Received: by 2002:a5e:dd0d:: with SMTP id t13mr807344iop.132.1610486154955;
        Tue, 12 Jan 2021 13:15:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610486154; cv=none;
        d=google.com; s=arc-20160816;
        b=rqBYBo2RzeelaRfM9bqwMAHLfuUPMIezQqP9ick6YA7C6JeOWZOGp2o6mGE7o92gL3
         PSLRnOPke/YbV3qFwLkNlnVm77XqybpSC0bPG9zIgZa+cp70tyypCnr45idCJlZmMhES
         8YUR0FXMPHlSk1y96ymeEEI7odUssZJDMRysrOEk0fnGa4whVEtVCxfIE/LlDqtpi67M
         20eXkNJW1GpO6ND1PmHddWgovQNFQtXzOYmjySMNWFefXIo1L9TrONachufqhJc1En+2
         D/XszGsJP6lhe8ztyoHnoJ+yrsCpdNRoWxkbjp55qBV4sbWDnQxSzupGR8bRzYMB4QIp
         oCIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XpRF98H6QxDvYHR2YECMLpFGbIbXZ63ebl8zScm/1pg=;
        b=xkAWdkGQG6pH1JD1u5BitoyXCh5Cf5Ki7FOaXi32wCgF1QKO9iuKIw8yi29iPf18Y9
         e4Mz1Szilg04LZkeiX3gR1b6HVNEh6iNni5gFcT3ge3LPtoiwhQONwgbyaJd5Snww4vf
         ekZcVvRJ+D5P46SgMW97F+x3HYiUFg9610GDsZtCQH2UmALNEi9tefVQBoVrXW+7aSQB
         aB3NP4FBruTiQaXefvVGN3o3PD0AQYDs5OiZrR6yBk2izvWZFbuYIyZHKhpu/ZV8qb1d
         VRVosXoMlnccIssqK3KdMBdrDZtUwJMh/rHQ/HCQeD0wt+mB7qw2/DQJjMmKJCrKDUS0
         4ttw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s9ReiTEz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id e26si310872ios.2.2021.01.12.13.15.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 13:15:54 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id c79so2174350pfc.2
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 13:15:54 -0800 (PST)
X-Received: by 2002:a63:1f47:: with SMTP id q7mr1015387pgm.10.1610486154136;
 Tue, 12 Jan 2021 13:15:54 -0800 (PST)
MIME-Version: 1.0
References: <20210112205542.1375847-1-natechancellor@gmail.com>
In-Reply-To: <20210112205542.1375847-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 12 Jan 2021 13:15:42 -0800
Message-ID: <CAKwvOd=yrVKBn9TN2cP8SiB7A8=c2g41PyodKGJu+xEQwAmnDA@mail.gmail.com>
Subject: Re: [PATCH] ubsan: Implement __ubsan_handle_alignment_assumption
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=s9ReiTEz;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432
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

On Tue, Jan 12, 2021 at 12:55 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> When building ARCH=mips 32r2el_defconfig with CONFIG_UBSAN_ALIGNMENT:
>
> ld.lld: error: undefined symbol: __ubsan_handle_alignment_assumption
> >>> referenced by slab.h:557 (include/linux/slab.h:557)
> >>>               main.o:(do_initcalls) in archive init/built-in.a
> >>> referenced by slab.h:448 (include/linux/slab.h:448)
> >>>               do_mounts_rd.o:(rd_load_image) in archive init/built-in.a
> >>> referenced by slab.h:448 (include/linux/slab.h:448)
> >>>               do_mounts_rd.o:(identify_ramdisk_image) in archive init/built-in.a
> >>> referenced 1579 more times
>
> Implement this for the kernel based on LLVM's
> handleAlignmentAssumptionImpl because the kernel is not linked against
> the compiler runtime.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1245
> Link: https://github.com/llvm/llvm-project/blob/llvmorg-11.0.1/compiler-rt/lib/ubsan/ubsan_handlers.cpp#L151-L190
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  lib/ubsan.c | 28 ++++++++++++++++++++++++++++
>  lib/ubsan.h |  6 ++++++
>  2 files changed, 34 insertions(+)
>
> diff --git a/lib/ubsan.c b/lib/ubsan.c
> index 3e3352f3d0da..a1e6cc9993f8 100644
> --- a/lib/ubsan.c
> +++ b/lib/ubsan.c
> @@ -427,3 +427,31 @@ void __ubsan_handle_load_invalid_value(void *_data, void *val)
>         ubsan_epilogue();
>  }
>  EXPORT_SYMBOL(__ubsan_handle_load_invalid_value);
> +
> +void __ubsan_handle_alignment_assumption(void *_data, unsigned long ptr,
> +                                        unsigned long align,
> +                                        unsigned long offset)
> +{
> +       struct alignment_assumption_data *data = _data;
> +       unsigned long real_ptr;
> +
> +       if (suppress_report(&data->location))
> +               return;
> +
> +       ubsan_prologue(&data->location, "alignment-assumption");
> +
> +       if (offset)
> +               pr_err("assumption of %lu byte alignment (with offset of %lu byte) for pointer of type %s failed",
> +                      align, offset, data->type->type_name);
> +       else
> +               pr_err("assumption of %lu byte alignment for pointer of type %s failed",
> +                      align, data->type->type_name);
> +
> +       real_ptr = ptr - offset;
> +       pr_err("%saddress is %lu aligned, misalignment offset is %lu bytes",
> +              offset ? "offset " : "", BIT(ffs(real_ptr)),

if real_ptr is an unsigned long, do we want to use `__ffs(real_ptr) +
1` here rather than ffs which takes an int?  It seems the kernel is
missing a definition of ffsl. :(

Otherwise code LGTM.

> +              real_ptr & (align - 1));
> +
> +       ubsan_epilogue();
> +}
> +EXPORT_SYMBOL(__ubsan_handle_alignment_assumption);
> diff --git a/lib/ubsan.h b/lib/ubsan.h
> index 7b56c09473a9..9a0b71c5ff9f 100644
> --- a/lib/ubsan.h
> +++ b/lib/ubsan.h
> @@ -78,6 +78,12 @@ struct invalid_value_data {
>         struct type_descriptor *type;
>  };
>
> +struct alignment_assumption_data {
> +       struct source_location location;
> +       struct source_location assumption_location;
> +       struct type_descriptor *type;
> +};
> +
>  #if defined(CONFIG_ARCH_SUPPORTS_INT128)
>  typedef __int128 s_max;
>  typedef unsigned __int128 u_max;
>
> base-commit: 7c53f6b671f4aba70ff15e1b05148b10d58c2837
> --
> 2.30.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DyrVKBn9TN2cP8SiB7A8%3Dc2g41PyodKGJu%2BxEQwAmnDA%40mail.gmail.com.
