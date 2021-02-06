Return-Path: <clang-built-linux+bncBD52NTUX6UGBB6G67KAAMGQE2M7PVAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EA7311E37
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 16:02:17 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id k20sf6445931ljk.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Feb 2021 07:02:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612623737; cv=pass;
        d=google.com; s=arc-20160816;
        b=AYMzfgoUI7miSkDFJyhLVcaMLC5OWd+quyQx87Ng9nwPXBjLOnoIWzdvePwwhAfj8M
         Uk8sJ8nWMymm9CIlbByRzQywohoex7PuBpi2kRKHmKlOEeogty9o5nmAK7u9wRRMJf8+
         PLEjChWjS8w8so0yUd3UzcQvGyMXl8NDDtQ+x8wVgOe/1VuSc+NicUI2Rc0ihlecfWdW
         52uA4NtFP5iBV3+0gpkTOkD+vl8hulqJAkzs+Ai+b85zVQFO61KWuwkkWgZjWEQBUW0i
         ao9I1kEeMtobjTeem276FrItCkD/tKWDzHWHD7p89mApMKQPuumeWqtpqVCHtkOkUPAT
         QmKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=lovZ9qrgTralOTPc6OB7TFMBlggFGvFk9j4J1Zv9w/c=;
        b=z+E4+kfAIKgdQzGQ4fC4O/zHyE1lw8BNjXcn3Cl80+sSNdmym46ZzbpEj9Nksqsgdt
         6rAKpTXCUoCHHC7ftibv5ml58ghs0qt8B6HRZOvpzserX+xSNfy4Cw5oPDpjUOa2U8sY
         8kN09zTqQ8WC5ujbpetI5LBhnNhASDFPs2p6uUGGHnIfue7lMgLDY3BxLD+0Ot4bSFpl
         fH5p6ioWOO8W06Wnh5fBJRi8z2FlVEZH8koS1S6LFhRXd5w2zeA1ujYzYJniTopt9G9h
         JLSWTqGQFDJYniZUb5/p/obO6Qvy7fmZc82Q8Nfsg+LWxJmoNjDD32iVoOr2xOXBwHdk
         M1Lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) smtp.mailfrom=mark@klomp.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lovZ9qrgTralOTPc6OB7TFMBlggFGvFk9j4J1Zv9w/c=;
        b=ZSIa/22VbCU/SBgAhYnFYZ18H+c0chvvHaf2jV66muQPAhfiP0LXUUjTdA7pgG1Ff2
         UKSLBn2xAnNgVsI1nIxw3XpJjS4cg3VIvOQ8cemKlCNNtGxKoI+//9umwNNYUWBJaiG8
         keDfd3jzSkJRdAohrezsstPG1288o+zPID/xS4qCpZ5ouDI2Sn8SdzT4JP0USpWW5gjJ
         dHuYBwF+DK7VaCjbxTs4ZAZgR9lI0cjSURFYy1G3kbfqxv4FoHSYAAxjWiZO6d72KUcG
         QEKn4O/t7g7Q8TIdDQ3QrI/EyAYmsGINTpHI0vwyWNplGq7Kjr+KZb/Xj7eH5wtNUjh7
         Oh6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lovZ9qrgTralOTPc6OB7TFMBlggFGvFk9j4J1Zv9w/c=;
        b=o/Z83cbjuGDjId0w4BFMUb5jrHETuWx8SOJGNeOIRh78ufcWRoaH/jaRnEeIk5eiLv
         cNRW5QT/mzxNW+49FPCXeI68CG4OT9HHXINPntDfsOe46ErpCl9iIrfh4L3PUTTBzCrA
         gwgVLr78JJe8CHVsqk+lWNFeVHCuvYaHRtKBF/RiYFSfA11/3R/PaAAWXEjMmld901RR
         5d8FMNjfhwljaQBw6cAeFzKE9SPDsYypw01mGxF1FsSW14BD268HGKDsuMQ/5N5j+5uT
         Xp2RIvrhWM1I/mIcjSexf6wfvmO3JM9SKTq06gqNXt0kCmPShEVpPL/U5kXeN/QkB/SY
         rhFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335vkigNvrLsfPlrVVNnlZk03hQ+mWrBjQYtbQpwY0eBgmjulb0
	oSzKxuGeCT7EqidW3R1FZDg=
X-Google-Smtp-Source: ABdhPJwptfk/OpDr5xPqY8gRpm8PhLv7bvybInIP/dbzu1kOWNyniFe4XUrQN+LGy/8mOmpJ5fp+zA==
X-Received: by 2002:a05:651c:2049:: with SMTP id t9mr5486812ljo.505.1612623736969;
        Sat, 06 Feb 2021 07:02:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4adc:: with SMTP id m28ls1405363lfp.0.gmail; Sat, 06 Feb
 2021 07:02:15 -0800 (PST)
X-Received: by 2002:a19:a40c:: with SMTP id q12mr5235967lfc.103.1612623735849;
        Sat, 06 Feb 2021 07:02:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612623735; cv=none;
        d=google.com; s=arc-20160816;
        b=eU5mBQ8yNhizVQXI+uHa1CzeX9t5vrrR5/sWIPw6As2uflA8mg7qB6NyoYSQ17H44j
         57yM2DzQGRzj5DZPq202rYvhLwcqnb+bVKRAfoy45hPXcW6qfOuWv2deE2y9B9VVs7h2
         /SgR7eI5CTwufYSRI89cQyukaBQ0LP960WZt0r1OVO9e0YihksVLFUWesgp5GYhYknHY
         Iyw6bjb+37/W4CmUmsqa1YqwS3c079jZ8jlLzCJEf+eIE2ZhVt+IX+yJbEfegGBnIxQf
         0ygbU/Joc4lNAZQ9sU9n/nwtLvv0ftvxj3FFvOsLVb1w6kAj+VzYYYotpTToYnNKZriF
         WooQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=TYouLocMqzexXNwGp9z2T4IoSXhH4CXMAx24ZhVX0ZE=;
        b=JpQmlFqSRoKS5NtG/5IrfHl14zORXusxO22BqasgWXfBapsD+b7iap/Cu3h786MCJ/
         FU3pGwgHXaLESqEgZZdNZQeb1vZw4cJDhx19Hjq3J0yuG/5dMDP2oWTGAcfmEhdXXf4w
         nbzRcbnZBAAZI66A+oA3Zogw00Biz1we0itHOMs8nuPKvLQuwCr6DMpo6bDqEeeAUKtK
         5IUInw34vcnRzQTgzmcBPSuOL1R0JLKROxYMi5B30IP1k0HXagG7dOKqSSWxJ2FvvsRJ
         DVWZA8bSrNfotUZz4GH8XGD6lBTUUkyH3snk2boQVDChGrkDh83ZrV/to7e8dsRIDvLg
         qchg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) smtp.mailfrom=mark@klomp.org
Received: from gnu.wildebeest.org (wildebeest.demon.nl. [212.238.236.112])
        by gmr-mx.google.com with ESMTPS id b2si514451lfd.5.2021.02.06.07.02.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Feb 2021 07:02:15 -0800 (PST)
Received-SPF: pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) client-ip=212.238.236.112;
Received: from tarox.wildebeest.org (tarox.wildebeest.org [172.31.17.39])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by gnu.wildebeest.org (Postfix) with ESMTPSA id 1996F30278CD;
	Sat,  6 Feb 2021 16:02:09 +0100 (CET)
Received: by tarox.wildebeest.org (Postfix, from userid 1000)
	id BEDE64000987; Sat,  6 Feb 2021 16:02:09 +0100 (CET)
Message-ID: <642ceee8911e201438068f39f828af9f52cbb6a0.camel@klomp.org>
Subject: Re: [PATCH v9 1/3] vmlinux.lds.h: add DWARF v5 sections
From: Mark Wielaard <mark@klomp.org>
To: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada
	 <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton
 <akpm@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
 linux-kbuild@vger.kernel.org, linux-arch@vger.kernel.org, Jakub Jelinek
 <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice
 <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, Yonghong Song
 <yhs@fb.com>,  Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko
 <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind
 Sankar <nivedita@alum.mit.edu>, Chris Murphy <bugzilla@colorremedies.com>,
 stable@vger.kernel.org, Chris Murphy <lists@colorremedies.com>, Nathan
 Chancellor <nathan@kernel.org>
Date: Sat, 06 Feb 2021 16:02:09 +0100
In-Reply-To: <20210205202220.2748551-2-ndesaulniers@google.com>
References: <20210205202220.2748551-1-ndesaulniers@google.com>
	 <20210205202220.2748551-2-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-10.el7)
Mime-Version: 1.0
X-Spam-Flag: NO
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.0
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on gnu.wildebeest.org
X-Original-Sender: mark@klomp.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted
 sender) smtp.mailfrom=mark@klomp.org
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

Hi Nick,

On Fri, 2021-02-05 at 12:22 -0800, Nick Desaulniers wrote:
> We expect toolchains to produce these new debug info sections as part of
> DWARF v5. Add explicit placements to prevent the linker warnings from
> --orphan-section=warn.
> 
> Compilers may produce such sections with explicit -gdwarf-5, or based on
> the implicit default version of DWARF when -g is used via DEBUG_INFO.
> This implicit default changes over time, and has changed to DWARF v5
> with GCC 11.
> 
> .debug_sup was mentioned in review, but without compilers producing it
> today, let's wait to add it until it becomes necessary.

I don't think that will be necessary. .debug_sup is for Dwarf
Supplemental file producers like dwz. Those would run after the linker.

> Cc: stable@vger.kernel.org
> Link: https://bugzilla.redhat.com/show_bug.cgi?id=1922707
> Reported-by: Chris Murphy <lists@colorremedies.com>
> Suggested-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  include/asm-generic/vmlinux.lds.h | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index 34b7e0d2346c..1e7cde4bd3f9 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -842,8 +842,13 @@
>  		/* DWARF 4 */						\
>  		.debug_types	0 : { *(.debug_types) }			\
>  		/* DWARF 5 */						\
> +		.debug_addr	0 : { *(.debug_addr) }			\
> +		.debug_line_str	0 : { *(.debug_line_str) }		\
> +		.debug_loclists	0 : { *(.debug_loclists) }		\
>  		.debug_macro	0 : { *(.debug_macro) }			\
> -		.debug_addr	0 : { *(.debug_addr) }
> +		.debug_names	0 : { *(.debug_names) }			\
> +		.debug_rnglists	0 : { *(.debug_rnglists) }		\
> +		.debug_str_offsets	0 : { *(.debug_str_offsets) }
>  
>  /* Stabs debugging sections. */
>  #define STABS_DEBUG							\

Looks good to me.

Cheers,

Mark

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/642ceee8911e201438068f39f828af9f52cbb6a0.camel%40klomp.org.
