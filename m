Return-Path: <clang-built-linux+bncBCLI747UVAFRBLXV4PZQKGQEWAA5RGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C312E18FC4C
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 19:06:39 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id c7sf12555232iog.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 11:06:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584986798; cv=pass;
        d=google.com; s=arc-20160816;
        b=gOHG2Pf5zuJfd/5SL5EH58HIE60S8wDbthUIOl4uhPlR6R9ORU/LscY671spFOrFXW
         DIRrBaa61J9uToj8GHn/Wr27lAXCjpYoCuu4885KkbIgWmFDl8KUS2ZfZCGio71qX7gy
         7b3F1ixVIu3Hq+t5n+MiPZcC53TrdazaM2DMH5DuMfhW/HdIsL4phBaJSqcBxg7CIEoD
         aeX5olN5uCB6zFPdqahnishq2fb3THUixT+bWcrbOJDkGOfnQ/PodtuqK1sMGrXnK8gj
         41+GqIbQzAsrnhr+OYWfrfZ+PB36A0VyuVH367YoigUDLsjfLvcsSbOUQ7ucCYEUJvSE
         u7Vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=m7TO1RPLAVa6jBMqXyOo1FfCDXoJJpCbwKdv/MkrVmA=;
        b=VCI0NevGgHrvEXA5rNkXUs0J8oZmtB9n8DYtE5YqMJpb1XimLFX7SJHADe10F6vMJS
         B54r9lu9KMvTpHcne26RddVaMdTa/buP81mWAYLWhJaS+7MmlAXIm9rZar4QpugnCaCc
         G50BorVE+dQYJ1Jnf8QNTpKRscyBzacV3+hU/3kJjifdnsd8Gomy0f4BkspQKjtnWGHb
         rqX0RowwsY3wQ5fv+aVslg7+fhwCf0GLbs9PvTB5DAfYINj4UjWGIBhlEJsA7PCm4f9G
         3uE7WkkvYY+o3jCKkrPzYXzncuQLoozICOiDCYRJegQlwR3ESaU4pl6AxYApVlcEZ9mx
         8D5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=kLckJLXz;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m7TO1RPLAVa6jBMqXyOo1FfCDXoJJpCbwKdv/MkrVmA=;
        b=boajVAyoV43FIH484FhdZaRWFbrb5j22YPHK5dHpVSSW2fCAVYXOqn0cBkdqONKjzx
         T9WryiRjtjMkIVsNFBTPvbC7T9qzZGdb9/WO5Dtlq/YJM4eSPf6OlF40LkCJXLtgMYzR
         P64xhPbx55NoUhgx4ZXB6N5juCFgBd86iBgHDi2a8+a9899GuSdZzckfXbUmRO8r+P+r
         wnLfaZKE7eYFnUxPf2y/Ol/BPaPvvXq2ladNoBLXHdmDGuNKSeYK05WlD2Q/w/J1JAar
         NPxER0cPz1unRAjoG/aonrdJiYdL9SH9Z7zY+QZrSWMyAH0Jk/Na/UmOpmeh87qzeVww
         Jz6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m7TO1RPLAVa6jBMqXyOo1FfCDXoJJpCbwKdv/MkrVmA=;
        b=kOdBBGc6rHoW+Rr+UTbVDNzXX/uRkuzL+kr/Va8QgiRHfPvJr2sIj+C43e6zNQBcwX
         dXm7kvnqn+7QRXDvN3g+rqDhbcPJgRkJ9aWUKbavVb3xq8NSbVJsuC6ULB2qhOLkH5vM
         HzRDLbOdKCAyKxHTRblIQ6dudFmJc0fDFlxUGhKa8+CSczc1pdtQxXD2XWw4iSngWNeo
         EVrwRrF/PBvI3wiQns5TlG9+cMREeUhJXIH05sdW+5z1KFscCpnJmMU5MY9tFd5TXBII
         NYXmHKJ5rPKXCnQWDMmn+IQ6e+RLFos/kuRmAMtVLCk3jDj8Nc/HGKpPyKO2nq3PgYGp
         npuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2e/a4inFwtqPtGsZOJ6bUFwYFsA96JPOxX4BU7fEbappj5257N
	cH5/ApNXiUmRMApHTjOVFrw=
X-Google-Smtp-Source: ADFU+vuXPBPhT1g/Y+IDs/X6LBBUs5RYbyvQfxMaaWGlmI8Fz7m/urSBGn3eXJyu5tEjRW88qEBT7Q==
X-Received: by 2002:a02:9648:: with SMTP id c66mr1722728jai.13.1584986798753;
        Mon, 23 Mar 2020 11:06:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9cc6:: with SMTP id x67ls3626320ill.1.gmail; Mon, 23 Mar
 2020 11:06:38 -0700 (PDT)
X-Received: by 2002:a92:ce06:: with SMTP id b6mr9880799ilo.102.1584986798422;
        Mon, 23 Mar 2020 11:06:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584986798; cv=none;
        d=google.com; s=arc-20160816;
        b=npuLnELMyUUN2td8si2fwRyMZR0t5bhkqi0P3gg435uMRJ1mgzzzU9fFfwyyuEAopi
         fuFBnhR7UIDkR0+d7YjqcjQlWLMduCRdNR6HaJzKXirMKj9Pv7ImQLW40Z4htdAsnOCW
         s9dLUSaeJD85/xhfAUwOURm1D5rs8D4hRll9Cic0SABEIICKybsdYCZ2rK68M2m1pY40
         WzizolqzPKdswO6MTtUxA6HrD1An9LMc76+poqI22hzbgs8hVbpLFdf0AZ64PwCbkCQc
         VFxyrqcJD9li8IQ7TvtiL+okT8dhDdgQXGYx8EOgntfjjaetUAuXb3uxsIbXWleW1Huh
         y2gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ATaRoxHcwncclMx/Db9I98Gfk7ZeQg3Rdd+txnwlUKs=;
        b=oKGVWt9sOaNGZqLKwfZIIrLOUSYNv+YT1+P09a1A9Xl7aH7kpU+4IG3cJ7YPF9pCBT
         Fy0QuI+idUfWke9APnjNXMI1PA3dfYZrMxOdMHDXnDAlQwk72RdLxeqOuoKl0pLQAzXd
         A4wsMNrUgKvVPpm4EHLkpJAdPzf/NYhtv0G5A8Tq0YPLtZkRlqP6ADe2iZa7nyEZ+mtp
         G8sFFAc4t1PMsNAMeNj2cgBkxzbu4xxsuPHgWIWX+qyE1dRBMPcyrCgex9M258mxuxXt
         ++lZRCTIpUjR4npnXP4EgJpepBb7EOBdv0HdldaUUGkB91wNCBX0Vjs+6s3DoL4Yggbb
         t4CA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=kLckJLXz;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id s201si1001208ilc.0.2020.03.23.11.06.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Mar 2020 11:06:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id c7b9be23
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 17:59:35 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 28128698 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 17:59:33 +0000 (UTC)
Received: by mail-io1-f49.google.com with SMTP id c19so15200663ioo.6
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 11:06:34 -0700 (PDT)
X-Received: by 2002:a05:6638:308:: with SMTP id w8mr20677307jap.108.1584986793763;
 Mon, 23 Mar 2020 11:06:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200323020844.17064-1-masahiroy@kernel.org> <20200323020844.17064-6-masahiroy@kernel.org>
In-Reply-To: <20200323020844.17064-6-masahiroy@kernel.org>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 23 Mar 2020 12:06:22 -0600
X-Gmail-Original-Message-ID: <CAHmME9p3LAnrUMmcGPEUFqY5vOASe8MVk4=pzqFRj3E9C-bM+Q@mail.gmail.com>
Message-ID: <CAHmME9p3LAnrUMmcGPEUFqY5vOASe8MVk4=pzqFRj3E9C-bM+Q@mail.gmail.com>
Subject: Re: [PATCH 5/7] x86: remove always-defined CONFIG_AS_SSSE3
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: X86 ML <x86@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, 
	LKML <linux-kernel@vger.kernel.org>, Allison Randal <allison@lohutok.net>, 
	Armijn Hemel <armijn@tjaldur.nl>, "David S. Miller" <davem@davemloft.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Ingo Molnar <mingo@redhat.com>, Kate Stewart <kstewart@linuxfoundation.org>, 
	Song Liu <songliubraving@fb.com>, Zhengyuan Liu <liuzhengyuan@kylinos.cn>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=kLckJLXz;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

On Sun, Mar 22, 2020 at 8:10 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> diff --git a/lib/raid6/algos.c b/lib/raid6/algos.c
> index bf1b4765c8f6..77457ea5a239 100644
> --- a/lib/raid6/algos.c
> +++ b/lib/raid6/algos.c
> @@ -103,9 +103,7 @@ const struct raid6_recov_calls *const raid6_recov_algos[] = {
>  #ifdef CONFIG_AS_AVX2
>         &raid6_recov_avx2,
>  #endif
> -#ifdef CONFIG_AS_SSSE3
>         &raid6_recov_ssse3,
> -#endif
>  #ifdef CONFIG_S390
>         &raid6_recov_s390xc,
>  #endif

algos.c is compiled on all platforms, so you'll need to ifdef that x86
section where SSSE3 is no longer guarding it. The pattern in the rest
of the file, if you want to follow it, is "#if defined(__x86_64__) &&
!defined(__arch_um__)". That seems ugly and like there are better
ways, but in the interest of uniformity and a lack of desire to
rewrite all the raid6 code, I went with that in this cleanup:

https://git.zx2c4.com/linux-dev/commit/?h=jd/kconfig-assembler-support&id=512a00ddebbe5294a88487dcf1dc845cf56703d9

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9p3LAnrUMmcGPEUFqY5vOASe8MVk4%3DpzqFRj3E9C-bM%2BQ%40mail.gmail.com.
