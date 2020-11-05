Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKGFR36QKGQEDVU5LDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E142A77A0
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 07:58:49 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id z19sf326060oop.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 22:58:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604559528; cv=pass;
        d=google.com; s=arc-20160816;
        b=kYodtcxc/Qup4xnkA2jWuvUaTJNvEtwc3+6UR/HYCu46sq9q8Vp6TXXyM1zP1aejjs
         5vWPWj/oBs3FtZ7PAjqLYc6FOgUULTGH+IDNAb9+QD98ep2A9anRtPkerRzE10876OVH
         LzYriHc0Uq9aI9RiwsJdt0YoRyGBRMu4f9Ek6R1VodOFp8mWQuS0a60Wsj1z8zhLSgxC
         hW56h0Ba8vYZZt93JZvK2yYZWCmoPiyEMjB0fZ/SRU5Q420vGA4hCcj5mWtT1whjaFPb
         ssfgi2kTfBKl6hggwibiSqrNvvyoeLUv1fANzbeLvg2xqrrDD4ihgTxwYqFh3rdNRoN6
         ENVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=mMiIjZYmU2JpYgdqQszlmHDg047zEnXzGUTxwQ7PeSM=;
        b=Cov93kmGV0HVs+WWF8RMbkeAk5bDzmc2Uy4LYAiB506Y/w2wDW46404N9pv3QVd7DN
         F29nYpchYBJvF0vj6AGMjPF7n6k0sQVm9x4mmN+0BBs6Lxxq/J/oNKUPJjAO49/sIp3y
         HKRpkvVlW9HeeCfUurmOgJh+CN2oyiKvuJvbmeCQcDbkjTh/oyd6zcSPBH2PADLrZwh4
         JGDMMNl5lOfCHQcROWmDEZ9xUzl9O64zIDJ9ggsQZn1nPY8nzOiit++q3Zyfzag6765w
         Brwmm4coSKRyb/M/XF1vL3ISTfrK/qHs3F6ZohisShZZwQFk9oN/Wvgyqz+rGP2WSPlo
         C6eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qU8KRHAW;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mMiIjZYmU2JpYgdqQszlmHDg047zEnXzGUTxwQ7PeSM=;
        b=omMdJUf6j1684OWX1Qr1HoWKeSPXWoBA94Kb1gkLeyigFdOA+X8t4yBZVS3ZVjJAWV
         lTSKhp/0TeGUmy16u/3xzHCJuC680x4SrzUj/I0Rf1VVaDePcAjbNnrIgAJp2I7c7OTv
         MhrMZzvkEmBZHByL06Eko1nKAvZrPMAgaLwCNvFAeDboZOxpG/EinS1nd9N1gspdGtGI
         ZtKX42M8v+gVO7BjqEjud5zpj8a2LiZXHSTM1PvZ+rzjbd2BcIZMnZHP2ah2ubKmnZ4K
         HYJXR4hi+EAN0wPI1qxNnEQAOhWElBUJFvheCI54x1zfY2uqfET2zZ5qTR7y/msR/0y5
         4odw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mMiIjZYmU2JpYgdqQszlmHDg047zEnXzGUTxwQ7PeSM=;
        b=ZR2kcnJEr/HDe0qgbJuUTJo5nd0cLufVOxsQv2NpbrK4gpn+ohlqg5r1yNcxs1EdOp
         huUsXlfqff/n+E7oo4+AZZo6GmarmkDszuwxGdeVXJFnvYvS3i5LDuLJ0rcwO1wG/SdQ
         UU7TrG+wTogMkhrrHBtlh6VUp2IwYfLvSKoPn94fXjhlMm3g5xpjcZ9tl2VolO4dlCZs
         aUSi207u6aGAslcSvxeiX/gxuop9sXKPczurQ/N2wQ6gBZoga7DpDvQGTfHt4aEEqEfV
         hUkgu/fpDrMFsLFRAM/sOKsA7Bm3uRyi0z+dJBie6fm5Ag8Dj/qizyTYJacM056qXyCW
         fSrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mMiIjZYmU2JpYgdqQszlmHDg047zEnXzGUTxwQ7PeSM=;
        b=hhE9Zy3gDoXXYtYy5869/HDBeaU5l9cFZ8JE+wZYidMJer5TXGW+3dyV5Q1HRhGvWI
         DvEzMR+3WOL4jmKt0aIQLsQ1/0PhMI7ozACq2ARnMjzF29s9IbhBKciw77rcIC5xTGlt
         Jlb3p099eHgSn7b+20qfZ9XX9ydWQ8P/JlIPtYJI7pi3djEMZLJ22cjSklhGqi1Xq5e6
         +4k0aryRarwRXlIWzY1A6U8SfF7np+nR0wBA6KnwKsQuGAT/wpUkmwQhrdjfUrhJCH9R
         SRAZOjxIwDnCXMCD8fJ/0GEhajobm4vKQUPdz0JjZ7HqkSyGa6oFWYMG9rF9vJTV2J9B
         226Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533R9H99q+/8OyZoXWajATlD+48zZ0jSOoue2Stucq+H3Bts7DVd
	87sPqipig8ws1wVd4dwGYjc=
X-Google-Smtp-Source: ABdhPJyR7m3B4zgv9lUREXE2mp12fmu40MSd9FRxwPNFTwclI23eIHWqtTe66GP0Iqw8bRJ7uib4Uw==
X-Received: by 2002:a05:6808:ab9:: with SMTP id r25mr694778oij.79.1604559528568;
        Wed, 04 Nov 2020 22:58:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:53cc:: with SMTP id i12ls180370oth.7.gmail; Wed, 04 Nov
 2020 22:58:48 -0800 (PST)
X-Received: by 2002:a05:6830:2054:: with SMTP id f20mr770243otp.119.1604559527795;
        Wed, 04 Nov 2020 22:58:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604559527; cv=none;
        d=google.com; s=arc-20160816;
        b=0qBYN+a78XixSVqDCwIMM/j4MS0HV8xT0pniptHr95qyyWkRVD3zlMNLy1AWdx5GHg
         XXaR8jy92b74iVcY1iXIPi7rQzWRQ7fQCEtwQKWiXzEZJC8n4ITAhYeE+nFFiDNP7qUs
         H4IpltiiyjEA63IqVyMrZ5mBZakx0mSJNbYB8IedmQYIEO6HZNFAha51tV6Ch+nBaaQ9
         1WZqlFNvjdB+/LHPVqLUJlgCibPjlTar2mJIhZzCQ0ea3RCgPX4wIka4AkPiBV4TB3Ff
         4uZwNiXmGj207avlMvBD+hUTQTajiS0sgTQeoSZbUuDWICngvfWvb+bPwmYua3iDo+1Y
         C4uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xgK5C/kmHCdYMo/R51mOn46TRz+P9lQZN5x72FBClZg=;
        b=v3hnpI+n6ZH3gPXGhMQQFlg0Glwqo75t05MvFIF6Wgzg2v3k7PGCi+FDnT+gTTzDbG
         JKp62XSAiXwup4tCy2izDO3kYYUvrKIw5sdZ8vUDt7hrsgMSyoJPE09byAMZ0e/cB6WG
         gVaQ6YqemZ1x+WRjs7l2YFarT2rv2t3/1Eox4l4d0ldffsrwI3GRbT4EJKv0XdspeDG+
         8SvrnCIrXVpQyCMaMUFZTD3qJDlvi1V4O15L5Z5iVVnySUPxtjDemh1awr2C1viup6qt
         9j9ywCQuY/SWrVYMG2drQfb2sfXBAcsj8M2T+njRHn22xzcT6jtMKuhV/bCJxR/G1xen
         MTvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qU8KRHAW;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id p17si54501oot.0.2020.11.04.22.58.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 22:58:47 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id n12so758816ioc.2
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 22:58:47 -0800 (PST)
X-Received: by 2002:a02:3842:: with SMTP id v2mr981798jae.50.1604559527215;
        Wed, 04 Nov 2020 22:58:47 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id i3sm520813iom.8.2020.11.04.22.58.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2020 22:58:46 -0800 (PST)
Date: Wed, 4 Nov 2020 23:58:44 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Jakub Jelinek <jakub@redhat.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-toolchains@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Dmitry Golovin <dima@golovin.in>,
	Alistair Delva <adelva@google.com>, stable@vger.kernel.org
Subject: Re: [PATCH v2 2/4] Kbuild: do not emit debug info for assembly with
 LLVM_IAS=1
Message-ID: <20201105065844.GA3243074@ubuntu-m3-large-x86>
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com>
 <20201104005343.4192504-3-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201104005343.4192504-3-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qU8KRHAW;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Nov 03, 2020 at 04:53:41PM -0800, Nick Desaulniers wrote:
> Clang's integrated assembler produces the warning for assembly files:
> 
> warning: DWARF2 only supports one section per compilation unit
> 
> If -Wa,-gdwarf-* is unspecified, then debug info is not emitted.  This

Is this something that should be called out somewhere? If I understand
this correctly, LLVM_IAS=1 + CONFIG_DEBUG_INFO=y won't work? Maybe this
should be handled in Kconfig?

> will be re-enabled for new DWARF versions in a follow up patch.
> 
> Enables defconfig+CONFIG_DEBUG_INFO to build cleanly with
> LLVM=1 LLVM_IAS=1 for x86_64 and arm64.
> 
> Cc: <stable@vger.kernel.org>
> Link: https://github.com/ClangBuiltLinux/linux/issues/716
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Suggested-by: Dmitry Golovin <dima@golovin.in>

If you happen to respin, Dmitry deserves a Reported-by tag too :)

> Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Regardless of the other two comments, this is fine as is as a fix for
stable to unblock Android + CrOS since we have been running something
similar to it in CI:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  Makefile | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Makefile b/Makefile
> index f353886dbf44..75b1a3dcbf30 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -826,7 +826,9 @@ else
>  DEBUG_CFLAGS	+= -g
>  endif
>  
> +ifndef LLVM_IAS

Nit: this should probably match the existing LLVM_IAS check

ifneq ($(LLVM_IAS),1)

>  KBUILD_AFLAGS	+= -Wa,-gdwarf-2
> +endif
>  
>  ifdef CONFIG_DEBUG_INFO_DWARF4
>  DEBUG_CFLAGS	+= -gdwarf-4
> -- 
> 2.29.1.341.ge80a0c044ae-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201105065844.GA3243074%40ubuntu-m3-large-x86.
