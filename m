Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAMD7OCAMGQEWWGNH7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C14380FBB
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 20:29:22 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id s11-20020ac85ecb0000b02901ded4f15245sf193788qtx.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 11:29:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621016962; cv=pass;
        d=google.com; s=arc-20160816;
        b=g+xTpG9+LrZUCzBUYAmiRoqe+YhztELJ0RBrEaVsxG2mNAER72c3p8RQXLID4dxpXB
         SewoE7KtQzBgxhsRabTaxWDTlN3YDfytpfFT96PjLIc94inatvZ3+Gcxlncw1g9WJOHw
         W8h3QWbGBe47Y/ZoSSRQSUmpVhM02gglTOqpDnnI4NRQpjd09P3RH6IWVumu5uE27IPR
         15cO/GaAkMQ55yY+LWSavq6bagij3HrpRomL9SZHl6qNNLVCU/EOhjrRlwzx/FxOykCg
         6MRgEjsk+ZrCLKdtji33TxDsDLL2yj3MuOIRSR3nU4WlmJ1L0PSOVqAeUQgyQjhwxCvy
         W9aQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=MKWX6JgWEunIXO/tkA4lR++LQOrr8ajH8LSd4CX/1bg=;
        b=jSI40ysms7cMFN1WzbHx1x/FW1vDStwWnkPffp8i9m4EdWPCj76SEo/WCick4IzlHG
         7dmI8stJgL/B9C8nwrjkuMKVgp9isHX41T06jU4GKLk/oQiHdTE2xhZ0VuSS0LCIaKFv
         1PqPVZfHHA+15vytP7LABCOXOHrgibHl74A5KucmivwV0/JXICHneyL+ugYMD8XerDre
         FPwQ4cPbje9bDiDrbSUjXWChiDSGwhU3Zj15e324V5Xk0muk8wJ24SOayywhV8DthF3U
         q7SPNQBDv9S6OqdWTo3UrL4R2cvhDHG8/xc8HcqhUaUz5lFPsLBv2QZaabI8zW/UICcE
         OguQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tXUuvnKN;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MKWX6JgWEunIXO/tkA4lR++LQOrr8ajH8LSd4CX/1bg=;
        b=UqY8Ti2pBYuBkNLDtICHveDm9tURbVD20Vf33jwPqrQw787WOOBYn7Ho78YnTNv8/N
         oD5a6T46V5c9N1BitwIgsrqAHqagHshqEn1DurenDZvhli3fpRQH3Dk7TJSYT1rUC63E
         jI73PcfAMe4SwwIfm0jIlmZ0nmpa74E+W/XXg2u2Ut4JROmz/V5GwYRSrVHZWTizcTsn
         Sgx6WSZ+Y3rG5caysWgT4mkAcnpR54KZ62UZQviyUOyXD2v8X3f1hFSQyFZ3SMIf0V0z
         +n756KiprC44vhsSme5ADtRVYv145G8cMBRZbh41IGTsQptSO0L5KhMq096V/U1v1tfJ
         ntjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MKWX6JgWEunIXO/tkA4lR++LQOrr8ajH8LSd4CX/1bg=;
        b=cV3S/nBQooCRU5nuNq02Dl5k357cnoKQBDUU5n71Gw4H0zuS6DuzAuKilJVLbwfaT8
         VcMVsR8Ei1oixD+oTqAzCuqapFzLvuWUlr1PqICDN6TpBlhXi3J6ucbDE8WFtmHoesDq
         iVqfuXIfo2f0FJXavsHosu5CACUFe6plNZOfvCz6vwlwH6VMfacsYV2yzjz3/3iOxDNe
         WAqsesez2nhcsmaDdX5UFtcG1fiTSIxdDRiRmA4qOdisuXzwLgWz6awDw1cONiBumvGY
         UPM0jCnb9AgYbJGb0Jod5QIpIJ0KrAN8t6YAUAsFrDDF3SQrjbj82ScbN2zxZMyMm6ku
         Z91A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530LA9E9Va/JbteTaDy7HhcYRfPlfoHyWqUMY+4T3FZSr0ywQ0LZ
	qLeH8FitWJc6r8O+8uMUIok=
X-Google-Smtp-Source: ABdhPJyCzhAtKJKRwF9a/qFvkMhZ3lM6RMaLpPM/WyMr18JvWCEOKiV8/3relTMax77F9C2Sg05EDg==
X-Received: by 2002:a05:620a:552:: with SMTP id o18mr11832407qko.365.1621016961837;
        Fri, 14 May 2021 11:29:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5810:: with SMTP id g16ls4998692qtg.11.gmail; Fri, 14
 May 2021 11:29:21 -0700 (PDT)
X-Received: by 2002:a05:622a:40d:: with SMTP id n13mr44899399qtx.59.1621016961414;
        Fri, 14 May 2021 11:29:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621016961; cv=none;
        d=google.com; s=arc-20160816;
        b=IViUT7TVZWSXWT0iO9/0d3TRJPLhmYgnsO4UvUkGp8JTikDBbpsDXzO693XQ8XLueo
         ifz9C957VVH0rqahbcOKWYyI/yvJadn4jCrz5MkDYKVr9Vgc33YVBpgZUeuqsi3xgZT5
         r/i1jVdjTtxClBZMrKTMuxicu6Tkj2VsgeLSaQPUJ/14O6dMgG9f3zC/EVNoZUJMGKRp
         0LZYoo+PULq4HZ+dtB47x+7hKLvfNffkGIi1v1sw973fYDX1EBs5h50JSI/JhhOgYWxd
         1zlQM3EEW6PXWhNlmEJi+M90T45S3thrw4oNDccMq3Mfe2LtZThNSiWeuF6GGAGfMmWC
         9c3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=DVkh83Us4Gtqht2wF2X6mkkdk/eMRZQpRtWlxQ/Vnz4=;
        b=TeHsFu6lwtRKjemEONY/1/YD1wZ4rwubhFLzbhhhQu46hdjn7IoZQPwxJMN0CoJNFc
         ZqvADArQ3fp40FIUMoNaRzd28CLBVCFBM46yI4GxAKfDZbQrvhjMQqt1CF25Pi93FV64
         v+4v0yEup9ze3heAd1ixCEJBrur84Ufpal69Tbk09MR4mko2+MPK9rEiWBY5gZ1M9VeJ
         EP0W1E4dMGuL/Brc6vajDozkCguEaszKW80rg3OirfRYyAna3WUlKhxXB45Z5qd1wxD6
         4QdxNUeUrbeS26c2DfFSDnksoinzeoVR0kqSzLvAHVbtbAefulkJB84Oz1W0vAPgew3Q
         +dJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tXUuvnKN;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q5si759519qke.0.2021.05.14.11.29.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 11:29:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6694561442;
	Fri, 14 May 2021 18:29:19 +0000 (UTC)
Subject: Re: [PATCH] kcsan: fix debugfs initcall return type
To: Arnd Bergmann <arnd@kernel.org>, Marco Elver <elver@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "Paul E. McKenney" <paulmck@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Dmitry Vyukov <dvyukov@google.com>,
 kasan-dev@googlegroups.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210514140015.2944744-1-arnd@kernel.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <0ad11966-b286-395e-e9ca-e278de6ef872@kernel.org>
Date: Fri, 14 May 2021 11:29:18 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210514140015.2944744-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=tXUuvnKN;       spf=pass
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

On 5/14/2021 7:00 AM, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang points out that an initcall funciton should return an 'int':
> 
> kernel/kcsan/debugfs.c:274:15: error: returning 'void' from a function with incompatible result type 'int'
> late_initcall(kcsan_debugfs_init);
> ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
> include/linux/init.h:292:46: note: expanded from macro 'late_initcall'
>   #define late_initcall(fn)               __define_initcall(fn, 7)
> 
> Fixes: e36299efe7d7 ("kcsan, debugfs: Move debugfs file creation out of early init")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

For the record, this requires CONFIG_LTO_CLANG to be visible.

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   kernel/kcsan/debugfs.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/kernel/kcsan/debugfs.c b/kernel/kcsan/debugfs.c
> index c1dd02f3be8b..e65de172ccf7 100644
> --- a/kernel/kcsan/debugfs.c
> +++ b/kernel/kcsan/debugfs.c
> @@ -266,9 +266,10 @@ static const struct file_operations debugfs_ops =
>   	.release = single_release
>   };
>   
> -static void __init kcsan_debugfs_init(void)
> +static int __init kcsan_debugfs_init(void)
>   {
>   	debugfs_create_file("kcsan", 0644, NULL, NULL, &debugfs_ops);
> +	return 0;
>   }
>   
>   late_initcall(kcsan_debugfs_init);
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0ad11966-b286-395e-e9ca-e278de6ef872%40kernel.org.
