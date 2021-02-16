Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBKWGWCAQMGQEX6BABUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D9631D13B
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 20:55:22 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id y90sf2369033ede.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 11:55:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613505322; cv=pass;
        d=google.com; s=arc-20160816;
        b=uTtkzFCbGW7c5K7bKNrvotNm+oObDTUJaluGw/hLjPdTyUQeEnMTjFY88gyuKbOn7a
         OBJ1tpna5U0TTt+tk1o+Cjpl17Hnqo2f2dWg6Wejmf/6BHtgi82XdxaDQPqC5phYjaCc
         asIwXP/uiWE+S/Cg2T6lANOJQy3DWPTYJtwm43p/f0wbu8fc/3tSF2Kq7H1vheWCkfNJ
         6TIU6D44/l0AOvEpMT++hwwq3LMyeqWBaTQcQfQDDDRHQuZts5ejwIAADAq6ZpTf1GXZ
         fD0NTbjs1bZoDYkW0DPumsEfHarPsrN7A0EcFHlbKP2gVkc4OcjQabnjSEcpLdAN5W8A
         cOCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=0M/G5N+EnTdGfV1J3OJMw2Tm6uUeaP30aaTlw4xR+k4=;
        b=awSvjcHkjqihxxtfuWfvhsNNqYusyg/XpiYXP38e9fT2QGr3i8JMN0ooD6U0JLdOqo
         50BgapSt9jYPEkOkoYdNQTKovXfS7c+IvHIuK3Tb7jal8n/84EhJ0UOrmNVUyobvVqxw
         OwyoE30xHl6Tj2GEhR+VsP5cEt2jH5ccID+7pte88yzYiz3VJqSP/B9pGcRiHDKwUOoL
         4ZO5cb8B884a4lCqBzXqOXCCKhxrzNe2ZlElu2dFltyiiQ+qR0JZrNFbUoPTK62rPS6e
         POCQs/PWi0qmNOR1odHVzqojK//2tymF7hn8ENQs0cYO4yqs4R1ZbxB10qLw/qfgSJWC
         Kd7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0M/G5N+EnTdGfV1J3OJMw2Tm6uUeaP30aaTlw4xR+k4=;
        b=XZfZ6oLgifDrdOeiwY4kYDvYrAQ0eTo2EKXOELWoKamjPOWoZbU7MePAkQszCCnsrn
         7eiikF//hOPW72OWtQ9mpEnt8So2P/Yv4dwrp5Nc44U8Dpf5myJM7qGlkURGCtHkWSoR
         NOqqTDKG3Xo7QT8x7vfieMp30gh7LiGi5IN3yZTtjgnwQA1R5szHCursLC2Zo9KMuABd
         4Q2rUfDFSQ0ct4VDy+GPCj6B5lFMPd2Hq1NS5m6ptDF85s4GdIpD6QHv7US45VLQxj77
         SLJh6K5WYEQXE0bJSsz5ZyySzaWuBogzuRz964OcCjg64b8LqSikd0VEFeoqnUM1pzzr
         MhTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0M/G5N+EnTdGfV1J3OJMw2Tm6uUeaP30aaTlw4xR+k4=;
        b=N/AMKVFfvcL41as8s04hoH+kGiIKU1qMdU49oCo+lx1P4+MQy5XdDFR0aiRyRLJ3Lc
         LwmHjiBn0kW84shI+k2XBEwEYidCZK/z2EzKoRhNravAbvwy+nhVdDflPgjRza6ZOj3o
         RsD8K/yTGIkC+JBKgqDUGwfbccxbvYo3ejLdu0TA9X47zicYKjvHwhJO2gbvm+xUKLVE
         oGlz8CdJ8PXThj+keoa7x1wV524pThOwls28e4ZFa/Z7bo1B3pmpQ6535hb09I2TZL61
         sJi2Ud9TX7fNarRQXbV0bkiT1DwgVcExBuEJ8R+wqNYrSIyyOHGsQQi4NTIlwujUnF1U
         CHTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JBfnk1QdUawnvb1FpZZhM50QwKN6ivR1I9yHPZnXDLnqHcg98
	PqPrQ2dZZH/rZI7fDdKN/pg=
X-Google-Smtp-Source: ABdhPJwMDHg1WgMaeehzWMg8M5sGAtymksWcngrJJTL9Ja7qTucLjfu8J7fmXwkYlez73zSMuauAWw==
X-Received: by 2002:a17:906:55d5:: with SMTP id z21mr10726552ejp.248.1613505322578;
        Tue, 16 Feb 2021 11:55:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:2b46:: with SMTP id b6ls3523522ejg.4.gmail; Tue, 16
 Feb 2021 11:55:21 -0800 (PST)
X-Received: by 2002:a17:906:855a:: with SMTP id h26mr12123818ejy.430.1613505321739;
        Tue, 16 Feb 2021 11:55:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613505321; cv=none;
        d=google.com; s=arc-20160816;
        b=AvxQCRyh5nb/Of8HKNTBfU50qrxeW7pCV7EjAW3ArESPk3v0HpXusME1+tXBUk+Kui
         2xbP8JDJPFSSyRFpXItRoY4X4iDClymUvSr4cxUbRYza00OVGSaOe8tWGZA8+xPoZZaP
         JBDuljXf885lqqww2uJLlVQSoFOFWL09Bm3YcKfTLj2GcSqdNTvPYfsMk8Vk1lRVhVbE
         wfk2yqnWu5eUtUoh0XJ3a9SO1z8SHASOULMP8i8yitJnjgoUj20R2+FFtxiGIfc4tZZe
         fuZCi7QM6JtcV5FurE2FC4LYAr3EcI6WSXZVs+esldO1TpGFLZLQNG+XlTWEYKKasKWF
         bEyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Wd5kQnrrSF15asd1zH9TJBRrcfuj7sl96ZOrY/9YJlU=;
        b=oHJGZNeK41p0d0Cvp3ocouTuF7wP6DtCXcLC9DcGS7ndxpblGauICHra3lLaJ7C5+k
         iJOegt1ny+ilA+u2hNKPSwNNi08GpcptMNKi5pAMzNlsSmaK67+LwdRo5ai0Xbwh2e8u
         y9V+g5XdBUbnLhQ+C5hhUrcBdqFdlBKH0ruWzn27NuLKB6WbCvkCQz5rQh6Tkc71B/bu
         1zgGKBTGrux6SNgLoVKgxuZgYlDsMWFI3o+2AH/Hbfft9savCF1G2K2/iuxMKHUrWAaq
         JwFpURKEEr+YaZ1McY/QCcc17/Lf7R2DgU/HgKF+7LS6N+kDFXla59JjcRfJd7FST4FZ
         jTWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id c14si1036011edr.4.2021.02.16.11.55.21
        for <clang-built-linux@googlegroups.com>;
        Tue, 16 Feb 2021 11:55:21 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1lC6Qm-0007Yg-00; Tue, 16 Feb 2021 20:54:44 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id E4344C03C3; Tue, 16 Feb 2021 18:10:27 +0100 (CET)
Date: Tue, 16 Feb 2021 18:10:27 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Pei Huang <huangpei@loongson.cn>, Kees Cook <keescook@chromium.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Fangrui Song <maskray@google.com>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Ralf Baechle <ralf@linux-mips.org>,
	Corey Minyard <cminyard@mvista.com>,
	kernel test robot <lkp@intel.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH mips-next] vmlinux.lds.h: catch more UBSAN symbols into
 .data
Message-ID: <20210216171027.GA9873@alpha.franken.de>
References: <20210216085442.2967-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210216085442.2967-1-alobakin@pm.me>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Tue, Feb 16, 2021 at 08:55:25AM +0000, Alexander Lobakin wrote:
> LKP triggered lots of LD orphan warnings [0]:
> 
> mipsel-linux-ld: warning: orphan section `.data.$Lubsan_data299' from
> `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_data299'
> mipsel-linux-ld: warning: orphan section `.data.$Lubsan_data183' from
> `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_data183'
> mipsel-linux-ld: warning: orphan section `.data.$Lubsan_type3' from
> `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_type3'
> mipsel-linux-ld: warning: orphan section `.data.$Lubsan_type2' from
> `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_type2'
> mipsel-linux-ld: warning: orphan section `.data.$Lubsan_type0' from
> `init/do_mounts_rd.o' being placed in section `.data.$Lubsan_type0'
> 
> [...]
> 
> Seems like "unnamed data" isn't the only type of symbols that UBSAN
> instrumentation can emit.
> Catch these into .data with the wildcard as well.
> 
> [0] https://lore.kernel.org/linux-mm/202102160741.k57GCNSR-lkp@intel.com
> 
> Fixes: f41b233de0ae ("vmlinux.lds.h: catch UBSAN's "unnamed data" into data")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>
> ---
>  include/asm-generic/vmlinux.lds.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210216171027.GA9873%40alpha.franken.de.
