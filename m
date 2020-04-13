Return-Path: <clang-built-linux+bncBCI2VAWMWUMRBCUP2X2AKGQEMKRMTUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAF91A72E7
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 07:18:04 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id h33sf9741732oth.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 22:18:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586841483; cv=pass;
        d=google.com; s=arc-20160816;
        b=IdWkn+Eyn+qzLiPFFC4/Fzl6UO5v010iR9GShHpZGTcoj4yWTH3Q86gV4VS1bvJKyv
         9QqWPeG0m94zoK3t/FuGZQnZWqSFw+dhJ9UqKwaxZcd2bJW8fF3TWvjYhgBO9F6ARtoS
         7c+5+diuzEoVo1GeRbjt0MBMFGD5PGxF0WdAlewzZjQlLjwl7G0di1I8p41qSGivu10B
         83lzfYYmiOqN32geaV3M9JJfD5TKwG6IoQMp5NhZGVrAiYmUb+SWm/e02NDq/R9ecLp4
         dPJrCnGbNKxcYQahBaM9fOoJoVIxY+LXLcT7izgMvncI+0M5BaYTgreIwwzqkwD/ozv2
         ZP+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=0jQq2mEpkQd8AWRtb3KAv0wtUxfO5OPw6FUJTf3yLjs=;
        b=Yu0URvMPtazhJSoA4YlBtLUIsV6VlRORxAKAuXYzh2o1iLDOx6xAvA3/Dx3qU9bPRs
         n3whj33Tqk5/sOXzFdzVd2alYiae6qVsuNXk4fFQKYNA9RFlVCnKWd1vF4aN1vW3t47T
         Hf9pB8OjgVGdbR/votVqQFUxQ1phj5Nmhx6DBzGbIdn7HSQQntzwAoW4iXyCBfXYO098
         XbU0AdouUwAP7sAMB4WCnm14x0QpAfUnuqT79ShMR9l9xJye6V1V44jLw2bKRdwEsWDo
         fxeNEHBjURNzQld09tlbTUg7QRvv70Dk18QBScxTC6vinl2apaNdXPaSZJrYfDLIG2KL
         YoJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=vultr header.b=WwQyW3eY;
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 149.28.68.211 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0jQq2mEpkQd8AWRtb3KAv0wtUxfO5OPw6FUJTf3yLjs=;
        b=hq+1HS3onrCeW/jq0BYom/sqaxDNLtB/MPSorhkD/IHLwQLAqOrXI9uJBkbHzKWoni
         fyLyeHeEjjfR95Ec1tAvG7PapBf9ilyymNqkQRHM7ehqkvUIWmoDgdGUHvQz8LO1XtUj
         SIQafoAeu3PTlJ77UMKoCJkWWd0padroIRr0OZzdycbBdz1S/zrxh5qCCfJwlrCYxEEP
         jHWPvtk4g+uESgLBIQot9Rc5dflo1KdJASes2xWmxCdkG8Z46y+L5l17pmkbrfHo2Nud
         TbGD/PNAef4O3sXP5muLL1s0Ef5xBDsX46RAcKK+HBlSfOs8su1W+PHb9Klv2cJb+BwU
         T84Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0jQq2mEpkQd8AWRtb3KAv0wtUxfO5OPw6FUJTf3yLjs=;
        b=k+fvsE8fWtmG8l+NRT/ZUmI2ssA2LUBWE0bm4ih0JMcvkXcpR23aTH4a2sAIgbPEFt
         uc3LmyyUlheAC61X4E1ZydGouAMz3vcJ4Uz1XL/0hkU1NvVMk44fYA/ULi6oSWFMdjWt
         4ARdfJzl8uH3Bu4Fm4sH/arwrD6vcZntRZIXA/+NPWIn8MZ7893uwFlrh7a5T8fJN38l
         t7miKHmdrbZiQyAzmpNVcEuRKv+si18eYQLgkjUEn8YC+2T60WMtKWT54iWiDEI4DPQC
         0ZDcwHJCS4/tbBDt/jC/jNm4XA4fZHJCZ+YaWhw1o3hY3O4OVosuCCnEySR79Nsxv2gF
         vzrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub/5aAyB0qHtsDMm+5VzQtMGJsIXEFmMGWZuyTPn2o4oD+Y/+7V
	Pi+9mtYL1umycEOwkH1Tcrk=
X-Google-Smtp-Source: APiQypJ8gwP2sa3UD+w4d/Cy6zSLnTM6sGNQfn8I6OLpUax6yRhUz0lZCHKqljYU4pJ6I13W9C0IzQ==
X-Received: by 2002:a4a:da55:: with SMTP id f21mr17183058oou.34.1586841483079;
        Mon, 13 Apr 2020 22:18:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:d03:: with SMTP id 3ls526542oti.5.gmail; Mon, 13 Apr
 2020 22:18:02 -0700 (PDT)
X-Received: by 2002:a9d:6950:: with SMTP id p16mr17009812oto.199.1586841482472;
        Mon, 13 Apr 2020 22:18:02 -0700 (PDT)
Received: by 2002:aca:d5d3:0:0:0:0:0 with SMTP id m202msoig;
        Mon, 13 Apr 2020 00:32:21 -0700 (PDT)
X-Received: by 2002:a17:902:b08e:: with SMTP id p14mr7041938plr.326.1586763140940;
        Mon, 13 Apr 2020 00:32:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586763140; cv=none;
        d=google.com; s=arc-20160816;
        b=eJmrO55DkLLIXCsNiURI1mZy5qN2MO0/1hLn53blCe0/Ted9gukOZ6jZous5n9uaNe
         0GdicDnGgLm8xND6BEya80L/pNYiNMOq6G8chQaqTgbMdvbkzqvsUwKjJnrbFxzEeYV1
         B0FfQ15ZQeq0+MAwIicbO+qY57aIeFznsMkY6RQH+PTW0yeTWCamRixe6cXcy9TpY5sp
         qotI+49gwdZIMM2E6+FabtN9PVuZPRx5cSGsBOVcrlk1WQW3O2xsTDL8tZ5RzFpq8hAf
         bFFEi3m3cyUQ1hNTXbR+o7Vcf0SF7nf4Grg1SLTxuFDli7qHuUpQ7bAZxbxkhPcaNP4J
         ODaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=LT7gESkcuQ0FtBB8KqpAMd4scqPWDNWWuI0sMNaD4EU=;
        b=uL/pHzUkzLJmKkmHE1/RasrLKRQrbEWpJ9uLDBwLneDgQQNYlculhE8pKSkRgCujkm
         YPzMyaX/OWYp8MAuGLcLG0uP4qC7UsE0BTLlKs0h3RvFgM7W7I32c56tGyrqTA1LWsvE
         DzJw3W72PtHEujsNKkodA9EVSl+kZPMXKkYCRllfBMtcIcvHRa5ZVF2zL8poCfoag3kT
         az0DiPcU8LBi8tNu9woM8iCKOc/4ARCzZYCVV/Rpd/7Pf2fosr2YOPaZiZL2q06DjMvQ
         Fi5EpZ7mGg9iB+9Cr54MhnwLUyPZakIvtF57Zfk58H0/W88pJgth6dVVt4885E0gIjV1
         IUug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=vultr header.b=WwQyW3eY;
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 149.28.68.211 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
Received: from vultr.net.flygoat.com (vultr.net.flygoat.com. [149.28.68.211])
        by gmr-mx.google.com with ESMTPS id w18si665825pfi.4.2020.04.13.00.32.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Apr 2020 00:32:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiaxun.yang@flygoat.com designates 149.28.68.211 as permitted sender) client-ip=149.28.68.211;
Received: from flygoat-x1e (unknown [IPv6:240e:390:49e:92c0::d68])
	by vultr.net.flygoat.com (Postfix) with ESMTPSA id EEB2820D11;
	Mon, 13 Apr 2020 07:32:10 +0000 (UTC)
Date: Mon, 13 Apr 2020 15:32:05 +0800
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: "Maciej W. Rozycki" <macro@linux-mips.org>
Cc: linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com, Fangrui
 Song <maskray@google.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Borislav Petkov
 <bp@suse.de>, Kees Cook <keescook@chromium.org>, Heiko Carstens
 <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] MIPS: Truncate link address into 32bit for 32bit
 kernel
Message-ID: <20200413153205.4ee52239@flygoat-x1e>
In-Reply-To: <alpine.LFD.2.21.2004130736410.851719@eddie.linux-mips.org>
References: <20200413062651.3992652-1-jiaxun.yang@flygoat.com>
	<alpine.LFD.2.21.2004130736410.851719@eddie.linux-mips.org>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiaxun.yang@flygoat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@flygoat.com header.s=vultr header.b=WwQyW3eY;       spf=pass
 (google.com: domain of jiaxun.yang@flygoat.com designates 149.28.68.211 as
 permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Mon, 13 Apr 2020 07:59:29 +0100 (BST)
"Maciej W. Rozycki" <macro@linux-mips.org> wrote:

> On Mon, 13 Apr 2020, Jiaxun Yang wrote:
> 
> > LLD failed to link vmlinux with 64bit load address for 32bit ELF
> > while bfd will strip 64bit address into 32bit silently.
> > To fix LLD build, we should truncate load address provided by
> > platform into 32bit for 32bit kernel.  
> 
> Reviewed-by: Maciej W. Rozycki <macro@linux-mips.org>
> 
> > diff --git a/arch/mips/kernel/vmlinux.lds.S
> > b/arch/mips/kernel/vmlinux.lds.S index a5f00ec73ea6..5226cd8e4bee
> > 100644 --- a/arch/mips/kernel/vmlinux.lds.S
> > +++ b/arch/mips/kernel/vmlinux.lds.S
> > @@ -55,7 +55,7 @@ SECTIONS
> >  	/* . = 0xa800000000300000; */
> >  	. = 0xffffffff80300000;
> >  #endif
> > -	. = VMLINUX_LOAD_ADDRESS;
> > +	. = VMLINUX_LINK_ADDRESS;  
> 
>  The CONFIG_BOOT_ELF64 cruft right above it looks interesting to me,
> never have ever been used.  We have had the current arrangement since:

It confused me either.
It's only used by SGI so probably it's time to rename it as
BOOT_SEG_ELF64.

Wish someone could clarify what is it.

Thanks.

> 
> commit 923ec3d20eef9e36456868b590873ce39f17fe71
> Author: Ralf Baechle <ralf@linux-mips.org>
> Date:   Wed Nov 6 22:16:38 2002 +0000
> 
>     Define load address in linker script instead of relying on the
>     deprecated and notoriously unreliable option -Ttext.
> 
> and previously `-Ttext' was used with this script anyway, though not
> very long, as the script was entirely ignored until:
> 
> commit 7a782968041ffc4c2d89816238e2f8ea5cceddba
> Author: Ralf Baechle <ralf@linux-mips.org>
> Date:   Thu Oct 31 23:54:21 2002 +0000
> 
>     Merge with Linux 2.5.36.
> 
>   Maciej

--
Jiaxun Yang

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200413153205.4ee52239%40flygoat-x1e.
