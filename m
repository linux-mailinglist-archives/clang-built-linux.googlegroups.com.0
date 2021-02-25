Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBW7U36AQMGQEVNCCYXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A283256A1
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 20:28:28 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id c17sf3495025ots.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 11:28:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614281307; cv=pass;
        d=google.com; s=arc-20160816;
        b=Eu9z+frv/bmR4CaaBQnje7LRefpfMwFIhmG8bj+hsJ1ahlEJXVh/QXlpECVrlFNDvq
         hDnAmPeEXTdOBTVZYjb2Nm6b6adqYyfca5UcR/WhME/0CEd8WNPgNfyJLi4HFZ/mnHv4
         x2Lw+t8Qo7d/M5FFdvyBVxAJc3jgfwdqmogL7XWXfK13hNPgttBjb1Iw6IV9NQLHtNCp
         VA8q0hLbLyQMG6Dmqs2Qsmw0B4c1V+dimB9ER1qTZdQW57FVrQMrG8Nm+f1msr3wrVha
         E2ZA6O/1pafJuxBHDEm6oQ/WdiX1BaMyFqDV9b16GLjmuaxZwoveSrTrSxydBmCvYw1C
         N8CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=BYikZN/3DT+kTmYBalEdtWaV5aGLAfrsBi0JnBogwYg=;
        b=T78Ivr2yYwdwn7mOWAyAQUOtom9qLfYKwKMgMUG17F4vkYG9N38lf8KIlncpCVWALI
         rL4YxAfRmRULMZ65NL2dHyK6ak/NHrrI1nQykSaJy3VExPbQOCJjb6Pe4UL46HRvp0B4
         is/NtnS009ixgeqEIMsGfTwkGyafTHYkZUcXnubLr7O1TPCp85RS47IAbAO5F9vpI81I
         7H8LDb4GMkq/Z7i8UdDPS7zkMuyCNfTlDz6RaOdCqChxG3csJRxXEvNylqqics+yKhvo
         84KEyZoDJ/2BEouXms5o3nG3Bf9KRcI1Cj27wtdYoOfO22cwdEy22PiBbM9dyhjehnpe
         ULmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mlPvP0Jb;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BYikZN/3DT+kTmYBalEdtWaV5aGLAfrsBi0JnBogwYg=;
        b=N0RJ2f5AQ8kLfdQl7mJJ7dc3Q2MzmwrGBU+BSZXCEih3tw/axUtYoQXW5VmtIazV1g
         3KW0wyeYs4jlgNUAb93lX3EnfWczdV/lSz0aQFerHbPnvUnKzhp9JSjaICMeeoz3W5Wc
         IYGzjFBCIZweS7keeEBXQ1z/eU7L+AkA3Wuep2R8ZU3Q5F0L+Yjnwe1ZUjDWG8rDhGj7
         Ua88BRgy/MEJjVt3shFtowHeqZyDkivpMmX/3QL9xa0T0TKT6hydP9tNXJ0M2lbrCkj4
         pmxbOWIOs3VdTkvyG8LaN/tRcHzc1ClW1QDUHVLWq0DqzJUaGN7BhGv7zVsHfgQdjk20
         6lsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BYikZN/3DT+kTmYBalEdtWaV5aGLAfrsBi0JnBogwYg=;
        b=JA6TzRF4P5x65Nzo0fsnsH6M/7l/mjHWGtifSVIjzcKFBTXLmjjbczucvBg/AcEfLh
         5bYAtVqirADyGOnSE8g1Ud/6gthiemKQWdB0MHKFQGKBNJh//ayCZAA6s7m+IWeMmGs+
         8sbHgfXEvvVpBJDU4qG+OUPSHpMPAQUVjGpOggMBB2lw/eRB3O5yUZk8Bjsb1kI+ivZ/
         FIXh4C2Gw5e3jHEnhf7IBhbuBY/CMkQAX1Z9aN+iQ85bd0NJvdh4y9RIDeaOVjMlsxEP
         m7eUJKxfJ4ZFe3+DrqSJ4cT/ZOXo2/sC7bDMLlIqnY+S70rJ2xI+1X3NsFIv2F1RFDbD
         meCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532NwNsnxqwONiJe9q7WKS2CpTWrpDbk8FF/h9Esn7kPsGzCLend
	FouhKDV6DGmS+mus6E5FBik=
X-Google-Smtp-Source: ABdhPJwLUXGFnGw35RG7vrE7Frcz0yvXh7MCiW6QFQWKP53xaIWZZuIv7KGgazJei/Hj+5H+3mlwCw==
X-Received: by 2002:a05:6830:14d0:: with SMTP id t16mr3715312otq.220.1614281307669;
        Thu, 25 Feb 2021 11:28:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:69da:: with SMTP id v26ls1421987oto.9.gmail; Thu, 25 Feb
 2021 11:28:27 -0800 (PST)
X-Received: by 2002:a9d:6247:: with SMTP id i7mr3620901otk.75.1614281307336;
        Thu, 25 Feb 2021 11:28:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614281307; cv=none;
        d=google.com; s=arc-20160816;
        b=dhTFaomD0xKPV2UL+33e9OzhyVznN0Tp304WGFMYQfJ6yOkX0QmxgAmeieB0N8aROt
         F298c9KiuiIWk9E29TjYbtQtZDqO1FBOxSsQ+iZXMroINsAaOk4nx6N07KCduqOVBS3S
         b3YqVLC/ME9RwUc2z7OFunNHVjbdjRZ5YCFjWbzZVYilygVLb++ypoOvqSwd8S1KhQzM
         OW8e595yyvtJpSdvrkkR+KbUsy3f/bR5GTcTI+SmWIkesv9EQbt0RRgis2ma1xoDNJfo
         m2v3mkpAIUgsb0OMbiLe7CtJWcEeW+leCcCu2uWsL5DCf1sVxaUtp9W8h++cF6OJHoYZ
         52uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=melKlVHov21xGHB9YM4QBGXB1JpFsitDA9Xs8UrrycM=;
        b=VgrUliuI4s81AWcAEqoQb55RSZjwMjqbhGWdWqekm8JzoG7+6IOZdZPszMVEQOwkz8
         PEvi2mT4G96ZtsHUYJQfu8V0thlx40WsssdsnT0s9vDM40u41OBpEQFAqHsy0E+1jWLj
         ODceZ4FSkbcUWbnEv5HFN0+QPPGrzBLfM/TRdoqK3VcF58wvzUsN4VD54izO8hktiq14
         osElgMiXpqpMFObvIwiijiI53Cc/9r3oUzqZXPdVXi4p9DQiOnXvhQ9QGuBRbZIyehX7
         0LVfO2NI0m6xCF2MVDklWzPeJx2ocG5xr0QCoxDDWyvn5VK8fc7Vt7bhgVMWqH/N+NEh
         FHvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mlPvP0Jb;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y26si601446ooy.1.2021.02.25.11.28.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 11:28:27 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7E15564EFA;
	Thu, 25 Feb 2021 19:28:25 +0000 (UTC)
Date: Thu, 25 Feb 2021 12:28:21 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel test robot <lkp@intel.com>,
	Fangrui Song <maskray@google.com>
Subject: Re: [PATCH v3] vmlinux.lds.h: Define SANTIZER_DISCARDS with
 CONFIG_GCOV_KERNEL=y
Message-ID: <20210225192821.GA1975@MSI.localdomain>
References: <20210130002557.2681512-1-nathan@kernel.org>
 <20210130004650.2682422-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210130004650.2682422-1-nathan@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mlPvP0Jb;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Jan 29, 2021 at 05:46:51PM -0700, Nathan Chancellor wrote:
> clang produces .eh_frame sections when CONFIG_GCOV_KERNEL is enabled,
> even when -fno-asynchronous-unwind-tables is in KBUILD_CFLAGS:
> 
> $ make CC=clang vmlinux
> ...
> ld: warning: orphan section `.eh_frame' from `init/main.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/version.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/do_mounts.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/do_mounts_initrd.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/initramfs.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/calibrate.o' being placed in section `.eh_frame'
> ld: warning: orphan section `.eh_frame' from `init/init_task.o' being placed in section `.eh_frame'
> ...
> 
> $ rg "GCOV_KERNEL|GCOV_PROFILE_ALL" .config
> CONFIG_GCOV_KERNEL=y
> CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
> CONFIG_GCOV_PROFILE_ALL=y
> 
> This was already handled for a couple of other options in
> commit d812db78288d ("vmlinux.lds.h: Avoid KASAN and KCSAN's unwanted
> sections") and there is an open LLVM bug for this issue. Take advantage
> of that section for this config as well so that there are no more orphan
> warnings.
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=46478
> Link: https://github.com/ClangBuiltLinux/linux/issues/1069
> Reported-by: kernel test robot <lkp@intel.com>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
> 
> v2 -> v3:
> 
> * Fix double "unwanted" in comment section per Sedat.
> 
> v1 -> v2:
> 
> * Keep configs and flag names alphabetized.
> 
> * Drop mention of -ftest-coverage since it does not cause this issue per
>   Fangrui.
> 
> * Pick up review tags from Fangrui and Nick.
> 
>  include/asm-generic/vmlinux.lds.h | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index b2b3d81b1535..b61b537177fb 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -988,12 +988,13 @@
>  #endif
>  
>  /*
> - * Clang's -fsanitize=kernel-address and -fsanitize=thread produce
> - * unwanted sections (.eh_frame and .init_array.*), but
> - * CONFIG_CONSTRUCTORS wants to keep any .init_array.* sections.
> + * Clang's -fprofile-arcs, -fsanitize=kernel-address, and
> + * -fsanitize=thread produce unwanted sections (.eh_frame
> + * and .init_array.*), but CONFIG_CONSTRUCTORS wants to
> + * keep any .init_array.* sections.
>   * https://bugs.llvm.org/show_bug.cgi?id=46478
>   */
> -#if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN)
> +#if defined(CONFIG_GCOV_KERNEL) || defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN)
>  # ifdef CONFIG_CONSTRUCTORS
>  #  define SANITIZER_DISCARDS						\
>  	*(.eh_frame)
> 
> base-commit: bec4c2968fce2f44ce62d05288a633cd99a722eb
> -- 
> 2.30.0
> 

Andrew, Arnd, or Kees:

Would one of you be able to pick this up and get it to Linus? I think
the 0day bot just tripped over this again:

https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/message/BXBY7OPVMOCCUZSCFEZXI7RG65RJWJ52/
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/message/QF62LWM6YSNWWNOM7AXYK4734AKH2SVT/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225192821.GA1975%40MSI.localdomain.
