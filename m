Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBIVM53ZQKGQEMDZINEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D26D192F56
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 18:34:26 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id w12sf1456486wrl.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 10:34:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585157666; cv=pass;
        d=google.com; s=arc-20160816;
        b=QQ3Tns92B9g/ouKApxgT+SGSoLzurjZptXFjO5i0ktVl/5jNG5JYmP+Zsqe0NPN/VM
         PBwGG3u8GSHn5CVrzYJHYWlXP2FRgMjLw4kk3aunXmbMdaEgwAHcjUSIbgQ/Fvo9kLdM
         0LC81qK8Ar3e2jMd4I23pNFx3jTKE/b63kx8Wpj24Vc3vUVTrnk4F8puN5j88Rf5Pz2G
         4MMBIt2A1UnSpVKEKwRPnvZfDue9vwygjv4eJyX0XeqpxUb+tUFJ0RENL4WscyCvOp/i
         Fu0gg80sILb5dxofHH5wSKLUfa8ioXmIgdwwiLAoWN9DOzmjKiW8/C3sBj06LBoTug2l
         o+UA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=AI3RupIYLpH8Hvvj7Z2jxRSfPHh0LbvzD6WiogQst5U=;
        b=k6tSgN8KdF19ULqzKAG0jl2Zy/X8ZJ0AfE3PGILUChQ/gFo0nukH7DHuX4g86iijmw
         8/GvNN5DXsTXNEpP3TkSMk1IlwCUpQeCGau0Acvoq48QCa7hZ+ofx0hdw6UZwtpmXx7g
         ODUkRNbvWg3IaPSYyuiVhaNPeiqvaMNwsf7WMd52KnryR3geaOaWfwhi8TN+3iS5uz4E
         Gh4cfaZqzL+J/Iy46ztj0MjJTezaLIjbzxAQutU7u9NhP+Bx331DFj/zWQPKsGj1vPDl
         CMwHD1JnIVt9C/b8C3W8RtpChkNxpTLJxCY3mXj5uSoI3SWE1GlADmXkTN/DLzmbUwtj
         3GtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AI3RupIYLpH8Hvvj7Z2jxRSfPHh0LbvzD6WiogQst5U=;
        b=JIspjMPxpyjxVQ3AQfzhwmLmOeiu8Wk6VCoDQSM0J3a3Dy3XZQYzykT25Gpv+xXqND
         Y3QAxlBSvsQV6tKy4dWlTdl2z7v/9BCrBC+T7JYof4Up7XLk3QQRllMyfvIjB+gJLXtZ
         byQ5lI9FS6S871hKTF17D2lsHuJBv3ouXFsuZIgg/OmJffsF+Kqfz2zf2/HPYiniZewf
         lMmjdSl87kYogLdgihH8NMgeVX70hkVODFONvOsy8haZSlvCiDJ58utxarNzrCKD3Mfw
         NfreV9G5tCcdiYHoZHCLqrdIQ5gmNTznbv67geHLPOXnGFKqbBzojgFVU1tEfXO2Aavd
         ctfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AI3RupIYLpH8Hvvj7Z2jxRSfPHh0LbvzD6WiogQst5U=;
        b=WALY8YuxMrsYfyKYku+Y1WAmjZxUt6V5OoeDjb2D3M5czHWGpOoXBSrng7EYuWUL/I
         gunlOh5SFEVED181yQxmOF3u5G5T3zkPo/Wxt363rJfQHnr+M/3BiU4LxzkTmYeftgJF
         IuWCv0tqr9oZCFz/BfBpkmkPwsPltYvwKQRJnpgwZTcEfmSC0sYwQNydQYwaPCoEGPBS
         M8klSYvUBtkhvswZ4u9SouyPfMIeNcFuFP72CIaQjNHAyIyM/35lXvoMezmZ1zf8yEKK
         DUPFekOqzhaFX7wwDum2jtqPBi4PK3XbEHU+hHP2RAbBhgn1e0+j0mujaRuAz5A2OWIS
         Tp4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0RhxzTGe3d/hFHWz8J3VWguARx3ICRBLZCNygnwNN5nRWIcuhq
	l1jITCZAH41bCUv0+kQLfeY=
X-Google-Smtp-Source: ADFU+vtwrPgAKblkzO3iy10uOFFBT4NpA8Yq7dA7zzbFVgzkLYK/gEQD8pC1r6TReUyPR+LAWrh+wA==
X-Received: by 2002:a5d:6187:: with SMTP id j7mr4733224wru.419.1585157666250;
        Wed, 25 Mar 2020 10:34:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4b07:: with SMTP id y7ls1450659wma.2.canary-gmail; Wed,
 25 Mar 2020 10:34:25 -0700 (PDT)
X-Received: by 2002:a7b:c764:: with SMTP id x4mr4639751wmk.39.1585157665649;
        Wed, 25 Mar 2020 10:34:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585157665; cv=none;
        d=google.com; s=arc-20160816;
        b=cSK3jVG0bWMgYoLpAgd8K0j9SfmyabvxvAX4ZYaSZhU/2tFLrYb+fGOSOOKGkkGhBd
         tz8scQkjZTqFxomduhC7JTziPTSfke0P9DD0JeH4BWtcI2ZmsJzX9KiCpLImnzg9b/Aw
         JpKfkIoNMPwNKkqj3459JbjS1G47Cvd4kUfVD/Sq4AvBzzg5A+Sq5yA7XgcK4tkCBMJc
         EpiCPaLMNr55Wji7QJLZ3LdFq3zJshFrpgBawKZNRL6GiB8rYyOB39SNhJcM+iLOLBqh
         wOR59P9n3SfFxaQVq3hb0mz592kcIdGZcNBThOkazmtYy1vjZWeuT8RM3nszz2wbcA/T
         OY8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=pIberbEJncVOOYIazPTOqcpNUpxnx3gReDj6Z99KBvU=;
        b=Ycn5SK/FOx9TJldlGVxuY15q3wFcl0MyezjeyweZ8PW71gbZZh1dfrIO/shb0Fz3MT
         izatjggRw75ruRaG0XG+6UrN1enetfP0RbkFppoDOVyiDuNAz6Pl8IEZt3mIHKJ/w+hh
         fuZbFQ2vAUGCmF/+Skaqnwqs3uemDtmXFMoqa5vuay7llYLdoLaISc/VsykgUqfAwVdd
         Ck/VBg7eEsu5jKdJrGpjSuJQqEUBkMDAWYZXgemUdEK5qEqy8eyzgRHSObzLRx294BFE
         Q6s9fVx757WQdU5QFMzTzb2yvRe+56KnkesuY8colXOk03HXFMO+TmWWeACouPfoYYK/
         8ABg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id l2si445541wmg.3.2020.03.25.10.34.25
        for <clang-built-linux@googlegroups.com>;
        Wed, 25 Mar 2020 10:34:25 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1jH9v6-0008NM-02; Wed, 25 Mar 2020 18:34:24 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 2A90AC0D49; Wed, 25 Mar 2020 18:32:15 +0100 (CET)
Date: Wed, 25 Mar 2020 18:32:15 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@vger.kernel.org, "Maciej W . Rozycki" <macro@linux-mips.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Alexander Lobakin <alobakin@dlink.ru>,
	Paul Burton <paulburton@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] MIPS: do not compile generic functions for
 CONFIG_CAVIUM_OCTEON_SOC
Message-ID: <20200325173215.GC17524@alpha.franken.de>
References: <20200325074529.24772-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200325074529.24772-1-masahiroy@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
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

On Wed, Mar 25, 2020 at 04:45:29PM +0900, Masahiro Yamada wrote:
> MIPS provides multiple definitions for the following functions:
> 
>   fw_init_cmdline
>   __delay
>   __udelay
>   __ndelay
>   memmove
>   __rmemcpy
>   memcpy
>   __copy_user
> 
> The generic ones are defined in lib-y objects, which are overridden by
> the Octeon ones when CONFIG_CAVIUM_OCTEON_SOC is enabled.
> 
> The use of EXPORT_SYMBOL in static libraries potentially causes a
> problem for the llvm linker [1]. So, I want to forcibly link lib-y
> objects to vmlinux when CONFIG_MODULES=y.
> 
> As a groundwork, we must fix multiple definitions that have previously
> been hidden by lib-y.
> 
> If you look at lib/string.c, arch can define __HAVE_ARCH_* to opt out
> the generic implementation.
> 
> Similarly, this commit adds CONFIG_HAVE_PLAT_* to allow a platform
> to opt out the MIPS generic code.
> 
> [1]: https://github.com/ClangBuiltLinux/linux/issues/515
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
> Changes in v2:
>   - Use #ifdef instead of __weak. This avoids increasing image size.
> 
>  arch/mips/Kconfig          | 12 ++++++++++++
>  arch/mips/fw/lib/cmdline.c |  2 ++
>  arch/mips/lib/delay.c      |  4 ++++
>  arch/mips/lib/memcpy.S     |  3 +++
>  4 files changed, 21 insertions(+)

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200325173215.GC17524%40alpha.franken.de.
