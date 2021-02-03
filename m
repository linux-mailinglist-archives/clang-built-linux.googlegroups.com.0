Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBH575OAAMGQE3V3N5FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 422C530E13A
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 18:38:41 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id q12sf328792plr.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 09:38:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612373920; cv=pass;
        d=google.com; s=arc-20160816;
        b=E/NCG4gg02jFgKa8dgn5uXk/q8lX/cfW/2J+h34PIz6un1DfYT4KFiUyRN9FYvcSfK
         ukNZKvRhwCZAL5Kb5/ijW+P/OKtW4WoxKBTL/nqIlvQSLQoHSmsEMMnVxiTN/NTSHnQM
         YqgPSN1N5YauuiitCQ8kh9+5A/r6ukm/BzLF1d3eNEJjgDqSpWo7njv/8jwy+SC9BtYX
         9LDcnpNXXx50gglNMeYXS0cmTk7rpPQ5U/oy37zCig/PUyEA3AxKc4mRNUT1ixQZXZmk
         gprqXnb5GusLL6b17QUCj8HvH+0CgHxZKRrfpgNR7W8f2TU+QK+lBALsMD42mHRmFmLf
         OyCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4CbPZ6P27gBFvCtQHUQDvSkAULP2O/P7xbOFrxBtDo4=;
        b=eBtTsTdlOwZjiQztWCwC2DjQZreI9/DWUQr+Kf2fq6AGfnBgc/e7RAYnrJjskih6uv
         zHOpD65NC93gN2aMRABwmdWSA01klJ/6vCvqBlRpbdkiulNvdDqOvZnGhxIjlo4aZqFV
         eNBLjDW1dWRd8IDqW+CPtYB2XmgSUivLd9NeB7cUw9q3zx8C6cdG0pNMQUK+xklSdWu7
         N4Pe9RK1lgTu7AAoU/sC+xLUYU+T1V7wX29CW6v1eI1zsMf0i3VP9js1YhX9PXJNInM5
         4vFEmD2qcVMpTcfugPyN3QXkOXDtdtrQJA7OGdG5CQUgx4sbFtxC0tDto56hnxKZf4Z4
         4XcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JyBWrrOl;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4CbPZ6P27gBFvCtQHUQDvSkAULP2O/P7xbOFrxBtDo4=;
        b=oH5S2R0Wf6CGmwuMqq1Gm4AcVJB3ooolzyT5Oq1dEbCmInYXpYaZNnfxIm8BujJx1E
         UVs1vGiHZ7FnqOv+RB0L3VFMjoCCl8od7N65MWIY0IxdQdPMTXqvm6Fx7uspP68U9gMJ
         I/efGbwtcnjb4NnrKhSRdaL5nAoznpZ5HZhQSw9MVr51Kpjkw4jHOD2RxbeYIXESXrL1
         jLp5DpGgnHl0KpS6yNa4tEWxdw+//39Cl557rVQ039mqQwA2sxWl7T1T8M1Ks5SED22q
         89KOCJiik8cUEUm9GkJGfz8aTU846/+vknisCVZsYkBq5BRnOpyBWW/PDRzZzROXedEh
         PwGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4CbPZ6P27gBFvCtQHUQDvSkAULP2O/P7xbOFrxBtDo4=;
        b=Y762ar9KxHSb7wES5304scNf1RZGpr5K4gfW3CTkdDqaK5JHaksM2+ad19Q8sS8ZN1
         qgFzidk2Q6CO4r6+8yUGHTqg8YN0gOYKOP5GrBl+zzrzMac4MMJ9rGuudRfpZ5XSApiG
         n7dW11SeSlpNPRA8i3HGAwV1YM0chDZPiaqOB+P55CHNOQQU4Oh7aB1fevWunGDSY1Wj
         KdsgQiqfPZ4+TzvljcwlPXqHj5CYfHvNiL79UNztvAuXNxGOgy7DvVRRPJdMXXJMHg0n
         rBKEvZVO1qxARE1P3AdZ5AsrgiixvgDhMSmc1Ch1Wfu3kEamZiYOc8bxcT+ugAhKwj+y
         EMGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ddoeAHOPO1jb16qAvSjq22O1OYgp8Qm6Fjd5TCZ7g6xzJMokg
	B60noBcD4ogp27P4pYU0WW8=
X-Google-Smtp-Source: ABdhPJy5SBFat2PaLFAJqzDRbL05yfhwd3lHtfo3UwYX9bg2THD4epQMzmpCoDIP953RpoLUM2QaDg==
X-Received: by 2002:a17:902:a383:b029:e0:10e6:6ed7 with SMTP id x3-20020a170902a383b02900e010e66ed7mr4232670pla.5.1612373919903;
        Wed, 03 Feb 2021 09:38:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:f683:: with SMTP id l3ls1351707plg.4.gmail; Wed, 03
 Feb 2021 09:38:39 -0800 (PST)
X-Received: by 2002:a17:90b:17c8:: with SMTP id me8mr4328939pjb.197.1612373919248;
        Wed, 03 Feb 2021 09:38:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612373919; cv=none;
        d=google.com; s=arc-20160816;
        b=OYwcaEolU43T3dSd+ZNcN/sNfGLjnXMfunrf+98UeocqPcaEp7YQls5IX2LvtTqKE5
         ZzlCJn92Yu6AqzXhikySwSwO1X1TOs2YN3B1iCoJzwFphsTZy2/FnHsw3+PweMH+Vazd
         d/fr/UgcEbDJFfIUC8S2Bner+qAufs1MVo79SVM5hYptgVuTnMWjIvhfyby53opWGE9R
         vjYGCQ4CdA30AYKSbykXLto197Lc39hgGP979IcT4VHvNGG8lPjsn2bhjHXLvMgolxDo
         d9SrjtWHz1zy4x+lxUKO80AHrPa6BmDrIBUDUmsecbTT6nXEiEOYAV7y9p75gSJ3EdKg
         ZWPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=j20y6jyGhkmqXki0etElsSSgiJEoijWSIt+5xU3YB9I=;
        b=Ln1vN6cVXE9PplHEZ3plIdWT47nQJpV35maU1okKnBhBLLlGdJYRA7Ea4GWz3uJKTX
         PQqRYlp6UWzcrAXPBzDB1sMLZzi2r+a1Bo5PxIFjSBsCaVyBlfk6sAIivXU6qtYWRyWR
         OoegE5hB6NVqIi3ylhoUO0134SD4v/lPa2BcrGM/PyWf03zF98JeaACXF5dkj+L/oapb
         0OAODvNi+diASciie8sSvdNqDGAQsaxY9/lDfP5dFs1IsdwF+Slfn1Gjyz0CYFU0+gcB
         9W6tG9ZY7kW4IvFgfbi2VtFXE115kY9NRpTzr9mi+wVQXC8WK0gbEIO41ISD7ConLRaF
         GTVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JyBWrrOl;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d7si131736pjg.2.2021.02.03.09.38.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 09:38:39 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CCC2C64F8C;
	Wed,  3 Feb 2021 17:38:37 +0000 (UTC)
Date: Wed, 3 Feb 2021 10:38:35 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Sedat Dilek <sedat.dilek@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andi Kleen <andi@firstfloor.org>, Ian Rogers <irogers@google.com>,
	Mark Wielaard <mark@klomp.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] kbuild: fix duplicated flags in DEBUG_CFLAGS
Message-ID: <20210203173835.GA765175@localhost>
References: <20210203075239.5505-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210203075239.5505-1-masahiroy@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=JyBWrrOl;       spf=pass
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

On Wed, Feb 03, 2021 at 04:52:39PM +0900, Masahiro Yamada wrote:
> Sedat Dilek noticed duplicated debug flags passed when building C
> files with CONFIG_DEBUG_INFO.
> 
> I do not know much about his build environment, but yes, Kbuild
> recurses to the top Makefile with some build targets. For example,
> 'make CC=clang bindeb-pkg' reproduces the issue.
> 
> With commit 121c5d08d53c ("kbuild: Only add -fno-var-tracking-assignments
> for old GCC versions") applied, DEBUG_CFLAGS is now reset only when
> CONFIG_CC_IS_GCC=y.
> 
> Fix it to reset DEBUG_CFLAGS also when using Clang.
> 
> Fixes: 121c5d08d53c ("kbuild: Only add -fno-var-tracking-assignments for old GCC versions")
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> 
>  Makefile | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 3d3f67b98ca2..769a38ee81b9 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -811,10 +811,12 @@ KBUILD_CFLAGS	+= -ftrivial-auto-var-init=zero
>  KBUILD_CFLAGS	+= -enable-trivial-auto-var-init-zero-knowing-it-will-be-removed-from-clang
>  endif
>  
> +DEBUG_CFLAGS	:=
> +
>  # Workaround for GCC versions < 5.0
>  # https://gcc.gnu.org/bugzilla/show_bug.cgi?id=61801
>  ifdef CONFIG_CC_IS_GCC
> -DEBUG_CFLAGS	:= $(call cc-ifversion, -lt, 0500, $(call cc-option, -fno-var-tracking-assignments))
> +DEBUG_CFLAGS	+= $(call cc-ifversion, -lt, 0500, $(call cc-option, -fno-var-tracking-assignments))
>  endif
>  
>  ifdef CONFIG_DEBUG_INFO
> -- 
> 2.27.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210203173835.GA765175%40localhost.
