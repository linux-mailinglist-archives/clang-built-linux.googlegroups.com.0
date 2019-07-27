Return-Path: <clang-built-linux+bncBDTI55WH24IRBUP653UQKGQEKSFTFFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id A53B577627
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jul 2019 05:04:50 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id n199sf21832706oig.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 20:04:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564196689; cv=pass;
        d=google.com; s=arc-20160816;
        b=VilvF6I//PJT17QBaQ6QaFSq+qwQA5dEcnjUZR4rm+tJwmOoWXawTZuAeCPdgtusDe
         YhhBhMTU9qguDGvHV/VugppB0+Rs3LWx7IuNpiOU0YxA4NjNGLlfyh24OSnzF31sBxNl
         rSzO3IEaDoSAw9JCoYTHKwsyXIXM9w7JPIt1xNSR39FVe28+a0Vx/foZ2twX97O4rtFN
         u9+qZTqY1gilbwJ9JFDu9Gwua63TSmb0JxcWPf+sq3F+Lfzne9YjKL6we2DrUyrNH2jm
         5Yw46x6bOR4vliY4o2MlhpehsY+2Ff3wzN/A/7Y7qHPWPdd9z88LY5KzETXz9Kmj5ckE
         TvqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=MDMfkpi9DZjcUNMRL3RU6j62UbmT2u6Jlzpk3E4DRsI=;
        b=JGr0RaKofGpWJMhlyWTs6goNLho41G2rm8YJ1rbCQVoOV2gnlvaopMuD9xZ0FcTkSO
         +Zi1aMALDnLYuXQ8Hw+P8QUgxOKpPRDDtiHVnugIQ++bebUdKb4RWMUDZlHsk2hn6uZX
         sSrV1WyweTNVZWh9TRMoC6yIDHP7/1tF2b/d/GQZFd6d+UlDKaCw+fFMInuX/dzmKkqa
         OCnLpxuBJ/j3d7FHflByPWovo630lG7ASNWerxgP4Eubxs3VpoLPGm2G6WwigRKSNGX8
         a/GTKxS5oJGhDk6rPtB2mV6QxB5m+vC0Tk3wJ7KgFBuv5qvaOs2hPhedY6WYzdrIWuDX
         jO0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=OwjLjNvB;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MDMfkpi9DZjcUNMRL3RU6j62UbmT2u6Jlzpk3E4DRsI=;
        b=TwI5yPpPrefz9aGv/arJ7zlNIV4IiBbFfov4RXAFK++1xixO9c/Y4iWucZzQA2N+Qk
         qg5a7s8LUeJrox2CUAvOdz/fjU3fkZyqaDBEOwtGXvWv4arX+ypXa6b2nPrrOt9vHxEa
         f8gwYnVJRiqRBsZsrkZZ0q2LlPxUY+pxb4r5RNBprXnKWoulEhbib18mXF0USwXRGnvS
         1fZgGEAKd9bvSCnsg5LqwHWlfEg/8AG4ULa5uOXBnqm8Eop/+PI3Y5YcqxGjLPQ2Sbj9
         zzSuG8aBWk9P8tOyTdj7eiJ+29ATrnp756rqYz48G3cpi5drI/dkRusCY9r0oNokhYfF
         ODpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MDMfkpi9DZjcUNMRL3RU6j62UbmT2u6Jlzpk3E4DRsI=;
        b=k82cAgZvqHg9Uhn/7FGOQt5+eCnQBnlib8Bq+E0kO8bNoPWlneVvQaVnFY24m07Aw7
         gQurZWcBrMkleefS9/x5KJE7ahbyrsAaz2chuyBuDh8MHBJSZBPSILO5Rk/uS6JIw1Lt
         W7FWuyy59G6KqXDFm4sQIkhmdo8pf7FpZ3zFAvSBwk0bBEPbqtHAxtPO9venqemIfJpy
         cdwj0QD/syNdGlnkRHhAI5oDAfFjliQrT532oevDAebp+ULpwjRVjGWyp2ax4Gh/ct1H
         XVYT/XuEy9CuJyNQ6BeCHF6dGjZYYrwGPmzpbZXy92CxCdInNovBQtUNxwUrlEBYJ4lt
         gP6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXfJGHuw8xHaSIUE0xaLGIjgoFvJSModSLviORS1Ei4+cQUHNLz
	gSzCZXEKboVgE3xGipIKR4M=
X-Google-Smtp-Source: APXvYqwzJhfMi/qkab01Bl8m8vpyNi1ZpEKNT1xTSpJinDG3nZLW2oNN5KFxV5+yOVEVB2ZfSxqdzg==
X-Received: by 2002:a9d:a76:: with SMTP id 109mr66976067otg.252.1564196689214;
        Fri, 26 Jul 2019 20:04:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:afd2:: with SMTP id y201ls7655341oie.7.gmail; Fri, 26
 Jul 2019 20:04:48 -0700 (PDT)
X-Received: by 2002:aca:b06:: with SMTP id 6mr49632151oil.175.1564196688921;
        Fri, 26 Jul 2019 20:04:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564196688; cv=none;
        d=google.com; s=arc-20160816;
        b=bCC4HvhaHr6GoCVDnOSGDTRlFYDRLW7+SzB/CAfa/I1qmkmJBNf4VMDWn3KgbBtB8o
         /VQxqoym+k+4V3OgsDCbACwIEU69ZX+C8+PRGV1mDzqnLnTF6mAUifMKCx2P6h8tvOuD
         agV5i5qp5aVOlilX7aJf9iGW0LP6iBkN2EtEN/7SFGVysH2A6f29lan6C9g9xY5wzmDH
         8ZXzd2ZjkwWPLWVGuenwMTm45cVcnEkdcIXmUgxvib+T4/1hqWxdCw4ZSYpgrhfvd1Io
         wey4k5Zadw8FstGI5jh1YlvpzSAe4O4YQ+cAQNMCeh2vjUN574dXO6kYCIDg7Lt90lEB
         cMiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=KyUt/4DdOLcXzf6+RCuqvGSbJ9eJh3Y/n22t3XzqEBE=;
        b=PBPmL45qW6i06KxqcAkEXFqdGE+igR6f+UAZXJxiC/z0ZVYrCruiFgzVkVPwF1+ggF
         o/X53icC1pk+FS1Nf0rPlnoHLhBhN03eqXHmlgPdoeL77NW2ir/0NHwvSBfBCcNqziFn
         1KkxWE6IjL/NK32rS2ftC+ceoCh+nRb00UIv68kJe+1A6YbSnJzAelGhgyS23NfbISld
         eZWFhAg0WCguyabwS2zzW3LX/7fecGre+r3+4VLD6JmYuOyQn68/TIkVvk59D9Av69+6
         aonlM+yG4Dk+sg4eLwBbU9DxYnq/DmtI6inrNcKJTw2YLNdUc64O7DYaUecoPbFxBy64
         cr1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=OwjLjNvB;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id n27si2682170otj.1.2019.07.26.20.04.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 20:04:48 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id x6R34KZr001113
	for <clang-built-linux@googlegroups.com>; Sat, 27 Jul 2019 12:04:20 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x6R34KZr001113
X-Nifty-SrcIP: [209.85.217.52]
Received: by mail-vs1-f52.google.com with SMTP id m23so37403726vso.1
        for <clang-built-linux@googlegroups.com>; Fri, 26 Jul 2019 20:04:20 -0700 (PDT)
X-Received: by 2002:a67:8e0a:: with SMTP id q10mr38762600vsd.215.1564196659404;
 Fri, 26 Jul 2019 20:04:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190724002233.9813-1-k0ma@utam0k.jp>
In-Reply-To: <20190724002233.9813-1-k0ma@utam0k.jp>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 27 Jul 2019 12:03:43 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQa528Qq4Sm4DSQQeGiyGtwVD1eYBDJ414mhM_FqaAffA@mail.gmail.com>
Message-ID: <CAK7LNAQa528Qq4Sm4DSQQeGiyGtwVD1eYBDJ414mhM_FqaAffA@mail.gmail.com>
Subject: Re: [PATCH v2] .gitignore: Add compilation database file
To: Toru Komatsu <k0ma@utam0k.jp>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=OwjLjNvB;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Wed, Jul 24, 2019 at 9:22 AM Toru Komatsu <k0ma@utam0k.jp> wrote:
>
> This file is used by clangd to use language server protocol.
> It can be generated at each compile using scripts/gen_compile_commands.py.
> Therefore it is different depending on the environment and should be
> ignored.
>
> Signed-off-by: Toru Komatsu <k0ma@utam0k.jp>
> ---
>  .gitignore | 3 +++
>  1 file changed, 3 insertions(+)

Applied to linux-kbuild/fixes. Thanks.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQa528Qq4Sm4DSQQeGiyGtwVD1eYBDJ414mhM_FqaAffA%40mail.gmail.com.
