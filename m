Return-Path: <clang-built-linux+bncBDPL7R4J6AKRB7VS3GIAMGQE3FANZ6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 983EC4C17DD
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Feb 2022 16:57:51 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id o25-20020ac24e99000000b004421aff5064sf3328472lfr.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Feb 2022 07:57:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1645631871; cv=pass;
        d=google.com; s=arc-20160816;
        b=x6XsLI5y6kLVBMVLI9ZFpSBc+lOhmzBQOaGheWTRvg3S7gy40jNayxIvMintk7rabU
         cUD/1VS8ijx7oFeuddIheMFh33DKQzpk10rbhO8viBkxcsBUsn4W4VNs04qcdlxNnM0O
         nf/1SRUR9XwF2pDYnpdWYvDanpa95vPGx9Zv/5PApW7+sWQhstdqfrrDWiFAwMvo3Y8K
         O/a15kCFMT/cSbjsie9rdo2bmfM0v0X38H6jo0O/5N9eZsQh6Expeacs/Jo/zP484V5x
         9+1V69moiGeGk47UAtU0SLLw2f9arHk20joxzDbHAjmrVearjLLSNsB5o/jxq71yKds3
         SAig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=EKG/ACfhmk3Pav8AWmzQSYaBfg/9mH1xk6LZOggEEQY=;
        b=TzkODTgEga1lv297suPJK7fBQc7Qd0OBber8sHWa48nqVftvUDKlXLCu+aiSYOUl50
         W7Ufi5SUX3dwstGO4zVyc/kdamnSkZ486kdT94GnyccSglF0opMeewyuJ+STBYLY4dFy
         DlWlYwhW3DtrfiHOpwHtrI6SJYTyAAfd1eSIpOWeVr2Ireg6LXqVPP8I5Yo0B4JCv5FM
         zDhI4mTcH15eSo0iHFuD7nuzr2BE2iQru8ENhDpX6pp5hhzI7Cfc7GSEjaPnps85oprZ
         LY7vahdgXDbr7lVhb6td820MkMWxax4izOXMCHfpJ8oLZ/b5sBP1VUnZIbZTLTq3cHFc
         CPJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EKG/ACfhmk3Pav8AWmzQSYaBfg/9mH1xk6LZOggEEQY=;
        b=r7V13mHkA2tHOTHy3Ia0cEPtCWsn+36ZtWnyeFnx/Br3uTveEJeqegrfLgvglUP89k
         SPVNeGBt84da16jdQchm7wXUr73OgKFMf0E9gyMN1qjnwZ+45nQIamSfggyyqu74Q/76
         9qLUMOVrSPhpx3QLm0Lk39+wIhVX/R2a2+yPDELXWak0W/CGewc3AzViHaTXHPoEftxI
         Q0jn6cU/SEs1rc0hgSxodit7+g8G4sCM9q5h+6SVAt+cg/68e/OaQoEAcW3He0OIS0wI
         GwrwZ+fNMvKAlH4Sxx3CYWylB1eRbBIs95cGL7zLcoFIlIJyFeO+HVU0e7mOQMpfh/3c
         XvrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EKG/ACfhmk3Pav8AWmzQSYaBfg/9mH1xk6LZOggEEQY=;
        b=rYjf5tm/CV745uDte7EMxo79negShZq78ClyH9CcVl3ZmfqIwZUuDJV6H16TwbRyzU
         I+YD5Q+Y9LnxEY6xTVIy/J3cSjqZxKYgZwllOEQUuFr1JLf7X/BGK9SAh9FKc3iaRzMG
         dS35gUjogEMrMHMgRFzynU3J05gcaShA+XboUwPd1xjr4rg+B1FC3dwVicjszIE0N7o3
         kAUr7q6KsaC52fWCk8xa8u1Ob3RPIkrYfQi5qlxrDF8pdhgGMaSbZ6MNiDDEb/wVXS+D
         ZVp4aKwUxCh/rBtC/X593QpmpfQSVNihW95I+6Bms8fK0BbMA4D/2D9rhhO+LQAwfBWp
         uxVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lAWhwbAUtJxT9PWrgyGG2sif6NkteRZ/nRxFGcuXN70JaeJ4W
	gmJbJHJKm3SmKwzgAKNlpoM=
X-Google-Smtp-Source: ABdhPJwJqtQh1/ESEXDvfSkqWBBALVEEQPklExKUzgw7RqcBrhiqoI1P9kA7zRAA7wCK2v4kTyUk7Q==
X-Received: by 2002:a05:6512:44b:b0:43a:53e6:9cf6 with SMTP id y11-20020a056512044b00b0043a53e69cf6mr263558lfk.154.1645631870936;
        Wed, 23 Feb 2022 07:57:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bc08:0:b0:245:fd14:b9ff with SMTP id b8-20020a2ebc08000000b00245fd14b9ffls49905ljf.0.gmail;
 Wed, 23 Feb 2022 07:57:49 -0800 (PST)
X-Received: by 2002:a05:651c:12c5:b0:23e:1f55:35b4 with SMTP id 5-20020a05651c12c500b0023e1f5535b4mr81320lje.58.1645631869719;
        Wed, 23 Feb 2022 07:57:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1645631869; cv=none;
        d=google.com; s=arc-20160816;
        b=Z4giNqyTq3vmd5MB8rMx2GftJ4NgQmVah4hyA83rf7U/stY4O7sdTQ5oupU+NP1y5M
         GS28tr4uSMy4S+OfulO1GmNafQ3gfcozYkBbMKripWyvAqjYYPSU4K5mUKBdCi5FF2o4
         AXaIGbr4DnbDW5LD0oS0Apj9RjJ1AoDHuuQzgE6svHHk/smR+2OKGrR9YxgJYRM1ELwP
         OUCN53snyKcrnU+6q9hnKGwg1swwCcEyfpSKqyWuduA87gV4oGeU5mT+tCS6g7i52aww
         r2pEUVZUyJC1qfOfCr4dyZ3v9PUq6Q563PFGKDWEQUzSLbAPHfIqyPew8atYb7diU2ql
         PQ4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=uXk1MGUsv8v6oGJOsMXEHVi/joF9B1QvQYTsEJEW03o=;
        b=x63pgRWFIrZM8XYt92z5vn4x/2ocr0D7xQEiWwbY1bIcXwNWYqJ2jpNXT39YGtg3gJ
         CpsxXcSnL4LlnKHjr+RV43MngWb0puWRJIder+fSynPPAwjcd/b3/eWhc2gvRxg4ZNQl
         BE3zKscdzRZxDx65eDUKxTz7f4mGRiKP9VNj6zQGyKKkqp+d0B4P11/Z+HoCSrLT2JUT
         0rPbXsveC3Hzu8SZgZBnwrKF/EVvhtWSngekAUvOrpXj97r8tRz/ROzv/Ex9qmyqOAif
         1a8EY/HQUo+X5kpv4qRcYj/LPykVY7KglnbnjQHqtR3l9ur41/0dq/vfEuCmH73I5wOn
         kPeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id x24si206ljh.2.2022.02.23.07.57.49
        for <clang-built-linux@googlegroups.com>;
        Wed, 23 Feb 2022 07:57:49 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1nMu1U-00073R-00; Wed, 23 Feb 2022 16:57:48 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 03722C2761; Wed, 23 Feb 2022 16:03:50 +0100 (CET)
Date: Wed, 23 Feb 2022 16:03:50 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Kees Cook <keescook@chromium.org>
Cc: Tiezhu Yang <yangtiezhu@loongson.cn>,
	Xuefeng Li <lixuefeng@loongson.cn>,
	Juxin Gao <gaojuxin@loongson.cn>, linux-mips@vger.kernel.org,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH] MIPS: Modernize READ_IMPLIES_EXEC
Message-ID: <20220223150350.GA15128@alpha.franken.de>
References: <20210901194208.2420671-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210901194208.2420671-1-keescook@chromium.org>
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

On Wed, Sep 01, 2021 at 12:42:08PM -0700, Kees Cook wrote:
> I'm doing some thread necromancy of
> https://lore.kernel.org/lkml/202007081624.82FA0CC1EA@keescook/
> 
> x86, arm64, and arm32 adjusted their READ_IMPLIES_EXEC logic to better
> align with the safer defaults and the interactions with other mappings,
> which I illustrated with this comment on x86:
> 
> /*
>  * An executable for which elf_read_implies_exec() returns TRUE will
>  * have the READ_IMPLIES_EXEC personality flag set automatically.
>  *
>  * The decision process for determining the results are:
>  *
>  *                 CPU: | lacks NX*  | has NX, ia32     | has NX, x86_64 |
>  * ELF:                 |            |                  |                |
>  * ---------------------|------------|------------------|----------------|
>  * missing PT_GNU_STACK | exec-all   | exec-all         | exec-none      |
>  * PT_GNU_STACK == RWX  | exec-stack | exec-stack       | exec-stack     |
>  * PT_GNU_STACK == RW   | exec-none  | exec-none        | exec-none      |
>  *
>  *  exec-all  : all PROT_READ user mappings are executable, except when
>  *              backed by files on a noexec-filesystem.
>  *  exec-none : only PROT_EXEC user mappings are executable.
>  *  exec-stack: only the stack and PROT_EXEC user mappings are
>  *  executable.
>  *
>  *  *this column has no architectural effect: NX markings are ignored by
>  *   hardware, but may have behavioral effects when "wants X" collides with
>  *   "cannot be X" constraints in memory permission flags, as in
>  *   https://lkml.kernel.org/r/20190418055759.GA3155@mellanox.com
>  *
>  */
> 
> For MIPS, the "lacks NX" above is the "!cpu_has_rixi" check. On x86,
> we decided that the READ_IMPLIES_EXEC flag needed to reflect the
> expectations, not the architectural behavior due to bad interactions
> as noted above, as always returning "1" on non-NX hardware breaks
> some mappings.
> 
> The other part of the issue is "what does the MIPS toolchain do for
> PT_GNU_STACK?" The answer seems to be "by default, include PT_GNU_STACK,
> but mark it executable" (likely due to concerns over non-NX hardware):
> 
> $ mipsel-linux-gnu-gcc -o hello_world hello_world.c
> $ llvm-readelf -lW hellow_world | grep GNU_STACK
>   GNU_STACK      0x000000 0x00000000 0x00000000 0x00000 0x00000 RWE 0x10
> 
> Given that older hardware doesn't support non-executable memory, it
> seems safe to make the "PT_GNU_STACK is absent" logic mean "assume
> non-executable", but this might break very old software running on
> modern MIPS. This situation matches the ia32-on-x86_64 logic x86
> uses (which assumes needing READ_IMPLIES_EXEC in that situation). But
> modern toolchains on modern MIPS hardware should follow a safer default
> (assume NX stack).
> 
> A follow-up to this change would be to switch the MIPS toolchain to emit
> a non-executable PT_GNU_STACK, as this seems to be unneeded.
> 
> Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> Cc: Tiezhu Yang <yangtiezhu@loongson.cn>
> Cc: Xuefeng Li <lixuefeng@loongson.cn>
> Cc: Juxin Gao <gaojuxin@loongson.cn>
> Cc: linux-mips@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/mips/kernel/elf.c | 16 +++++-----------
>  1 file changed, 5 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/mips/kernel/elf.c b/arch/mips/kernel/elf.c
> index 7b045d2a0b51..5582a4ca1e9e 100644
> --- a/arch/mips/kernel/elf.c
> +++ b/arch/mips/kernel/elf.c
> @@ -328,16 +328,10 @@ void mips_set_personality_nan(struct arch_elf_state *state)
>  
>  int mips_elf_read_implies_exec(void *elf_ex, int exstack)
>  {
> -	if (exstack != EXSTACK_DISABLE_X) {
> -		/* The binary doesn't request a non-executable stack */
> -		return 1;
> -	}
> -
> -	if (!cpu_has_rixi) {
> -		/* The CPU doesn't support non-executable memory */
> -		return 1;
> -	}
> -
> -	return 0;
> +	/*
> +	 * Set READ_IMPLIES_EXEC only on non-NX systems that
> +	 * do not request a specific state via PT_GNU_STACK.
> +	 */
> +	return (!cpu_has_rixi && exstack == EXSTACK_DEFAULT);
>  }
>  EXPORT_SYMBOL(mips_elf_read_implies_exec);
> -- 
> 2.30.2

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220223150350.GA15128%40alpha.franken.de.
