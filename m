Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBTNC3H5AKGQEGZERF3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FBB25FD09
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Sep 2020 17:27:11 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id s204sf8521527pfs.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 08:27:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599492430; cv=pass;
        d=google.com; s=arc-20160816;
        b=ILcIGmuHK/XNe3uSacdXJGBbZ0VUF7tO75WtVnwCEZAkJGCGKEndnbip3OjeC0VraC
         4A7RGmsh7WBcd6A52k7EFqv8zx07mQnhp6Vt2c58wJ/Z+pxKKClTZE49WuPpoR6Y8Ha8
         5HiO8uvoovF6uZlPnWO5e1OHI/Q1B1/j56GLKtJLD163EvbSdNQXN4YOTI8z3XX/r+FK
         U5dn8gd3po0fKpnfnmp4cWNTbqxU6LjCysUQVph04cIXkQhHryRB5VWElwB/WooizPNY
         FKmwCT0n9k+y4mpt2nW6mAISj0S9CuGHBwWlTYltvpwZKf5n1UL9rWNJ3uFmf7tc60zX
         4FKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=KWpRfh5oVGJhBkLIUL+slKU47vt9/VE5hBdppdIXifE=;
        b=ij1qEKPIr6eDimWzNgVXereBCPAvl+tpFCluRoV5YukMTlKgiwtq7sPaKz2beGKibs
         CZiiN4M4/qpY+BN4svI63Vrepr4ELvxRhp3aCgf1pcc1+fLinURMZoFPLKnV/OPM3oR8
         KBdtWrmkFFh8n4IMcAvzjfP+ScQ5SHaPNSlOKMtqgNAP5TJpY51B6BZe3uM/usCibec9
         Y4oatmmhJ8Yc+S9z97+p3K+NRZcIua00MD8D2hCF1wdkjCx21+us/j+wKa2WbNs0bBR+
         GvenrCVfYM+bRrMdd3NDH0g8ZebYdsdpJaPuniAG7yQBsMfbFh+UuO1QICh3RwaMcHqd
         mxhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=HF6kxwrZ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KWpRfh5oVGJhBkLIUL+slKU47vt9/VE5hBdppdIXifE=;
        b=cUIBCOPPoPjfqTggu+gvBysZ0x2zPkcty0CPHtKsNQWp03ZgMl/tfyE2sjZn5teSci
         Af/Ub4QFl70+EAmFTw/u0NVOzntEC2qw8xcPmGrNV3iX/ft4zPb/UJ/u0W0cypoIefb5
         2M6FphnAlEf7oTdzDEB2CtDgEXkxjkZ4LOAUrj+Ezf+vl5qjt+yxKtNoYtVp0++j06C6
         MHsy/lQZE0FZhS86ZjFlF28EUHQ8YmHFmO7fP/9xH05OJgXPSXJiId6japzQAWCVH0+A
         hHberFvqFLXxVn7MHelAhn8nS6hB9HOnpcYSY167LEeIkfzW+RsF0CSqWJsjJkbSyX59
         v3pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KWpRfh5oVGJhBkLIUL+slKU47vt9/VE5hBdppdIXifE=;
        b=dwzhi3yvgMtBYroFd3OYZLa+JCUDGNURIOaKKQ5SaDYSrS3WiPwRt1TyDV68GqIF4k
         50qFvCa230KEkPA2nKcg66rUVO8sn13XAD+Kq8ltcoQmdFCHcfKJ4Nf8KuuOrNPm2Jf8
         Bh3BEnzUd4fCqYC+sKTUIm75GP+JGhm2wnktuXUyBBLV+Q96dZP3JqLdx0fATw3PLwKF
         yA2Xm0bmabN5tJbxeRcsUM3pOuQHE/dDcyCHApS+64LeTF9xckF1jBcfWcSk155YKoVn
         aNZ1BPKXsGkJUjdfyUISO/zl4Nj0BssBexneizY1OrYaXogBO7p7ZwOz14CLMxrgUtHN
         Eb6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532MfqBK6JiR95epLZdoPcRipS5fPcjEQck/RMiwj8rUBSGE1w/9
	CVO7uw1mgGkSCetSnK6SJZ4=
X-Google-Smtp-Source: ABdhPJzj3bvALH9IdGexS0Z+9LsyzDXltDQQQc6i1rlvBJkDTEt7L2LTNWZloympF4FD7g4Qk1EpLw==
X-Received: by 2002:a17:90a:e287:: with SMTP id d7mr19747507pjz.170.1599492429637;
        Mon, 07 Sep 2020 08:27:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc89:: with SMTP id x9ls2993106pjr.1.canary-gmail;
 Mon, 07 Sep 2020 08:27:09 -0700 (PDT)
X-Received: by 2002:a17:90b:357:: with SMTP id fh23mr7120609pjb.221.1599492429095;
        Mon, 07 Sep 2020 08:27:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599492429; cv=none;
        d=google.com; s=arc-20160816;
        b=DBrx5B9AUDIR4vMY/dFCdgJ/Mws4xS86ueXlhlbAiTIh796Z9do+q62MHaUIYau0cx
         qLIhM9yGFD9insBkFjxOgptxz9USRwUfCOMe38Qx18URR0ol9GV6rfm0jDbEZRwMVYLS
         qrv2K2mzoFhwCJj/iRQLsCM8d5KeDbPOqx1U7plXaMmYog4OTQmQjsVoYRL05KhbD7nQ
         +eALwnjpNjpawSOIb231qHZA6yWJYcgvZUVLPMVgcHnplEcqRhaXtGr7VCNxCqHxUzLV
         nmr623ZzpHc14HBi2k5RV3iv1/efJyejNJ5jfeCXMs8upJNxdMQ2WATDgNL6xeyc4kX+
         cqXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=IR6uGigyFtGDGIA+2OM5ZSYgDCjCsPA/08OP3wwPpmI=;
        b=q3CPWWxs9t14InegdYSVh6Idp7unOa0/EZrm9bUzn0haIOSt3293O169pDwAQ5gtdS
         4y4T6mOcEwGr9ci+d8bk2mfeTE+4B32xtQUxWnuHEMFUFwOLPRYN0DwHOjFwWQbR2NCl
         JS/k89O5sYVwUdPV1Y42KAYWCEgdCizliqH0H+e5+zIbcyKXJuEyCoJTBikKkGlmIsqM
         3FSC0UMEAi3pJyMhzfarq6bYy7nBpyw3NnE+ofJk33eSvtUWJBrUppC1LHczH7i/1LUL
         mvsoD5pKplUMKQniQfEgm5A/StJazzJL5kIcW5NJ28Zem/7X87R1i2PBRRT1pYEbr/R8
         grfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=HF6kxwrZ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id g11si785565plp.3.2020.09.07.08.27.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Sep 2020 08:27:08 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 087FQVig009474
	for <clang-built-linux@googlegroups.com>; Tue, 8 Sep 2020 00:26:32 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 087FQVig009474
X-Nifty-SrcIP: [209.85.215.172]
Received: by mail-pg1-f172.google.com with SMTP id 31so8154407pgy.13
        for <clang-built-linux@googlegroups.com>; Mon, 07 Sep 2020 08:26:32 -0700 (PDT)
X-Received: by 2002:a62:e116:: with SMTP id q22mr9587524pfh.179.1599492391141;
 Mon, 07 Sep 2020 08:26:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com> <20200903203053.3411268-14-samitolvanen@google.com>
In-Reply-To: <20200903203053.3411268-14-samitolvanen@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 8 Sep 2020 00:25:54 +0900
X-Gmail-Original-Message-ID: <CAK7LNARnh-7a8Lq-y2u72cnk2uxSuWxjaZ8Y-JHCYu5gwt7Ekg@mail.gmail.com>
Message-ID: <CAK7LNARnh-7a8Lq-y2u72cnk2uxSuWxjaZ8Y-JHCYu5gwt7Ekg@mail.gmail.com>
Subject: Re: [PATCH v2 13/28] kbuild: lto: merge module sections
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
        Steven Rostedt <rostedt@goodmis.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Kernel Hardening <kernel-hardening@lists.openwall.com>,
        linux-arch <linux-arch@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=HF6kxwrZ;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Sep 4, 2020 at 5:31 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> LLD always splits sections with LTO, which increases module sizes. This
> change adds a linker script that merges the split sections in the final
> module.
>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  Makefile               |  2 ++
>  scripts/module-lto.lds | 26 ++++++++++++++++++++++++++
>  2 files changed, 28 insertions(+)
>  create mode 100644 scripts/module-lto.lds
>
> diff --git a/Makefile b/Makefile
> index c69e07bd506a..bb82a4323f1d 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -921,6 +921,8 @@ CC_FLAGS_LTO_CLANG += -fvisibility=default
>  # Limit inlining across translation units to reduce binary size
>  LD_FLAGS_LTO_CLANG := -mllvm -import-instr-limit=5
>  KBUILD_LDFLAGS += $(LD_FLAGS_LTO_CLANG)
> +
> +KBUILD_LDS_MODULE += $(srctree)/scripts/module-lto.lds
>  endif
>
>  ifdef CONFIG_LTO
> diff --git a/scripts/module-lto.lds b/scripts/module-lto.lds
> new file mode 100644
> index 000000000000..cbb11dc3639a
> --- /dev/null
> +++ b/scripts/module-lto.lds
> @@ -0,0 +1,26 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * With CONFIG_LTO_CLANG, LLD always enables -fdata-sections and
> + * -ffunction-sections, which increases the size of the final module.
> + * Merge the split sections in the final binary.
> + */
> +SECTIONS {
> +       __patchable_function_entries : { *(__patchable_function_entries) }
> +
> +       .bss : {
> +               *(.bss .bss.[0-9a-zA-Z_]*)
> +               *(.bss..L*)
> +       }
> +
> +       .data : {
> +               *(.data .data.[0-9a-zA-Z_]*)
> +               *(.data..L*)
> +       }
> +
> +       .rodata : {
> +               *(.rodata .rodata.[0-9a-zA-Z_]*)
> +               *(.rodata..L*)
> +       }
> +
> +       .text : { *(.text .text.[0-9a-zA-Z_]*) }
> +}
> --
> 2.28.0.402.g5ffc5be6b7-goog
>


After I apply https://patchwork.kernel.org/patch/11757323/,
is it possible to do like this ?


#ifdef CONFIG_LTO
SECTIONS {
     ...
};
#endif

in scripts/module.lds.S


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARnh-7a8Lq-y2u72cnk2uxSuWxjaZ8Y-JHCYu5gwt7Ekg%40mail.gmail.com.
