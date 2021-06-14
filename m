Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBV4CT6DAMGQEHDHOMHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4AF3A70C0
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 22:51:36 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id e13-20020a37e50d0000b02903ad5730c883sf1532028qkg.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 13:51:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623703895; cv=pass;
        d=google.com; s=arc-20160816;
        b=kKyPrF5lbFOuBeo0BeFzBRLUfkPbnPfyDAnlzzuPJHPcwWVVvw8YHwnlSM8Z0SEYos
         c6ZERFoNqh67uknhGxQU76cyymBPMtQ1fZxa9iG3Li28VQeqi83IzbQATOx0/PHbCmhR
         sZ6f4JTdxMPkTvzvVCFlmglDkpkpX+65cDoeFg63ma1AEfo691dda8Agyn6Ag1w7aJWu
         ISMV1xgi3/mjV2Yl1cA1hWqy6TMc/uIXeNyTtB2YeIsvqTV3yxMdZEm7qB4/R1isXs+T
         fQvnfMutgh6Rd/juQQsKMm2iIqfidV7SB47STdwP/CJTHC5HtayolFWwuRfGgKWScpph
         BPGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=+WtZs3J2xJ06X+BOWfojZFn2qseRyFQRSLfgsPtXyUY=;
        b=lnB25qBZiR+vQzgb5DpgsjtSGTpFbMcUCMh0TWdwKKHvF1CiiLGLIfNqf54HOFF/XM
         QMkk6dG2QIcXL7ybXVfhd6iDsXlv4vrZujjmAQzOX0XWY++BORfS4nzrSWitaSqycLIi
         jIae1VNWowKE+WWodp4K9SSYILsAkAHtw7P5zsmROC1rxONPyKQMdHphR9tMlrUsIOK6
         09T0cf2uzfCtpI8ptIt2GlrYTkdrnJxRMrL5n4CxLXWXka5TcWh7RVTkhOHoXkV88MnW
         NFi//sCh5TFIQLqV9iTAxDS+Wn5rcGaWoZhoA/12mitlHdKkKKfbLZURyOMAshQqHrVh
         0AHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=orDVM1No;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+WtZs3J2xJ06X+BOWfojZFn2qseRyFQRSLfgsPtXyUY=;
        b=FA/iMXx6k4qBhGfOENVeZDABQm1o++zFBkNOzIH1GGic3c6xWmk7Ya3jGro18JUppu
         KsqHMNIcQHeYO31xTC1747mdbnssdC2U332UA4uV6Cllpjxkglf+KALw1UMVl4CI2Hdu
         r+QKlXuAp0Z023NbvMS7bcpx3h9KCtEPemdRwLXBdiiMqJV86Khcuewszj6EDuSnbmA8
         ntEbStMbyeAWDy73FpIBCegliBJz6eHh0feZ7eFSVpfZkw1TPzVvFM2k3SSME/WD76QU
         BmTtrbfdnxAr+ojqeuOBLRwcdhhTRvmnv2zovCVpJRL2ZlYwkx8MEOfjXHmcA7m6Aewx
         rzvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+WtZs3J2xJ06X+BOWfojZFn2qseRyFQRSLfgsPtXyUY=;
        b=dWHSidrLxcmlvod/ZQYHoY7BBnOkmnUtCGuMuaumiQrh7eOcGzCh9hY/TjUlZTgu06
         Qlqt2vadRniHaTbf9e1TUMEZ36p8ilEpzprQ3HOGKaWJ0tXHKgSc/bjp2WTTztgzQXnf
         O6Ukl7EKUPCEjhd+IdNb05LlwhpkJnxGuKyWiuIBa/PQhj44/qFlbmbXzPafiSv+HKW2
         5LTDCtulUdcpmggHm8j8Qx7hyL041HLac+X8go/iTIt09643CETAsnkDGtuAh8hjJbxZ
         JdQ3ZFH0nmd1g3L9Ybwdbe0Abe6If2TCITGPyQu7OmfehSh9JW3PmQVdfoHEkRNciVk0
         mRBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303lTyENN6egyO+xOHGx0JdQKQwVVi4LkI2l8LSJyrPv4hHN742
	LW9V0kRVfIJL/Rca82kWf7A=
X-Google-Smtp-Source: ABdhPJxmsIKN1DsbWLNkwX79x1ujL8P6y39crE8WagpV/CRa67htE98ebQ2Jn41sTLF+AJt6TiQ7tQ==
X-Received: by 2002:ac8:5c51:: with SMTP id j17mr11017726qtj.171.1623703895621;
        Mon, 14 Jun 2021 13:51:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a08d:: with SMTP id j135ls6784669qke.3.gmail; Mon, 14
 Jun 2021 13:51:35 -0700 (PDT)
X-Received: by 2002:a37:a70d:: with SMTP id q13mr18032228qke.295.1623703895199;
        Mon, 14 Jun 2021 13:51:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623703895; cv=none;
        d=google.com; s=arc-20160816;
        b=J/qaShxZKMllh52AYO9LQFCAk9NK25zk+qH5rYiEmpVZX6uPSl8a6XizsYMmcAjmhX
         Pz/VmlYe5wYST8nfMCsBc8UQbCyHpLFuKRD5tps7ggwgg3tlyXOJF8A7thHD8nXqKCIU
         gZ7SrX6PiQnpaPS7zt3tww7Vodr3qN1x4pq8wcDSeJNNRpSYDOc163aPAqifqGj5+5M8
         1rQTa2VZ37TlZARBJ+bFUAc8TvkR9cJxVGI9+z6SvwN9I0yqO35Y1OU0xtXAUlRTd8eC
         ucTTP5Kx6dF2GsoejiXqxLzSnr72XLbyV0IFaYetIzoOaPLiuu0ODPGDA+lxiLhAyiLr
         rD6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=mQBhhS0tJlIxIr6PbbwGBNVpYPDUdLG3RXKez9OMyMI=;
        b=tmzpODdWMmA/2KCiCvtKu4ln2ZrmZ1M7fG9rVIosTr4fx0rckWEkaFKCHHV0wFdSwS
         Ei+6uQbpjlxDqghEgbso4hEfFakqIBO3GJaVNVpw+3STQIjV3yVesmCY/g5DOURPiQF/
         fMkPYlPAyVTxoP4elm5mctVqU+TtE7qBENR0OclnK+j1Y97PHPLerC5IZYocMKtbfewK
         +21yzb+FBQ0UZrrKSMCIrgCYqHyeyOFXtsEX4YZEszKWsyTQcDqbXlWb3WlVRdmvWpNa
         L3dhCP5KPr/XTH8UqwTlkBfnnDKMF9iL0wuU3BvKf1KoaPJCgJxwrhUV3pOGq1moxtrj
         2mvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=orDVM1No;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l21si77760qtj.2.2021.06.14.13.51.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Jun 2021 13:51:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 96C18601FC;
	Mon, 14 Jun 2021 20:51:33 +0000 (UTC)
Subject: Re: [PATCH 1/1] Makefile: Pass -warn-stack-size only on LLD < 13.0.0
To: Tor Vic <torvic9@mailbox.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 masahiroy@kernel.org, "ndesaulniers@google.com" <ndesaulniers@google.com>,
 keescook@chromium.org
Cc: "clang-built-linux@googlegroups.com"
 <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org
References: <7631bab7-a8ab-f884-ab54-f4198976125c@mailbox.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <51c33b62-1e91-7c69-5b77-75ffe0ad6e77@kernel.org>
Date: Mon, 14 Jun 2021 13:51:32 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <7631bab7-a8ab-f884-ab54-f4198976125c@mailbox.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=orDVM1No;       spf=pass
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

On 6/13/2021 6:07 AM, 'Tor Vic' via Clang Built Linux wrote:
> Since LLVM commit fc018eb, the '-warn-stack-size' flag has been dropped
> [1], leading to the following error message when building with Clang-13
> and LLD-13:
> 
>      ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument
>      '-warn-stack-size=2048'.  Try: 'ld.lld --help'
>      ld.lld: Did you mean '--asan-stack=2048'?
> 
> In the same way as with commit 2398ce80152a ("x86, lto: Pass
> -stack-alignment only on LLD < 13.0.0") , make '-warn-stack-size'
> conditional on LLD < 13.0.0.
> 
> [1] https://reviews.llvm.org/D103928
> 
> Fixes: 24845dcb170e ("Makefile: LTO: have linker check -Wframe-larger-than")
> Cc: stable@vger.kernel.org
> Link: https://github.com/ClangBuiltLinux/linux/issues/1377
> Signed-off-by: Tor Vic <torvic9@mailbox.org>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

The commit that this fixes went into 5.13-rc4 and our CI builds are 
currently failing without this so it would be nice if it could go into 
5.13 but I understand it is getting late in the cycle and there has 
already been a fixes pull request with a similar fix.

Cheers,
Nathan

> ---
>   Makefile | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 144d4f8b7eb3..51a1b6b2c2ab 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -929,11 +929,14 @@ CC_FLAGS_LTO	+= -fvisibility=hidden
>   # Limit inlining across translation units to reduce binary size
>   KBUILD_LDFLAGS += -mllvm -import-instr-limit=5
> 
> -# Check for frame size exceeding threshold during prolog/epilog insertion.
> +# Check for frame size exceeding threshold during prolog/epilog insertion
> +# when using lld < 13.0.0.
>   ifneq ($(CONFIG_FRAME_WARN),0)
> +ifeq ($(shell test $(CONFIG_LLD_VERSION) -lt 130000; echo $$?),0)
>   KBUILD_LDFLAGS	+= -plugin-opt=-warn-stack-size=$(CONFIG_FRAME_WARN)
>   endif
>   endif
> +endif
> 
>   ifdef CONFIG_LTO
>   KBUILD_CFLAGS	+= -fno-lto $(CC_FLAGS_LTO)
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/51c33b62-1e91-7c69-5b77-75ffe0ad6e77%40kernel.org.
