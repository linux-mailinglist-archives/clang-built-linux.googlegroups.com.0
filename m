Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPEK3SDQMGQE7YRSNHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6BA3D0004
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 19:17:50 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id k133-20020a1f3d8b0000b02902589585c3bbsf3996138vka.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 10:17:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626801469; cv=pass;
        d=google.com; s=arc-20160816;
        b=UWNfBG1AGtUgCLQP1HS+moop7vG9NBmok/sF3ARYSISDz9++UuMByq0giu8mCroXdv
         9OMufCnnpGqRsiJ8KdU944UZA2JLACjMqkgKlp4dEXeFGGoTUx9WaDUWHA8ZRoTjt64L
         Mfn9XZbcbh/aYMYudbXngMRPsSGprLE9jpxBdRwCPwr6N14vroMtZXKNMOVG+HrxOyzx
         rZwNNVHHYEhqmFHtZpkv2eaBJKYE9u/jQVmHsHGVr3/L6/Ni5UU96IiZXUsy3L2cyGFb
         kG1J83JK6PCTyJHZjGeEfc18F/pNoqc5Q2IR1F0SStT2sHracuHIFLK32TcXtVs0m8dT
         SK6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=FyETXJ0E9ZHnPD3MEHKj7CrsrRFBOrVcTcOZb8/NcvI=;
        b=VPD+iD5LfmjEpLoS/QzkJZHOgbNPZZDdHVsCtz7m9zNuabycgnShcPqOIdt33z+YgN
         SYa/xjm686eoIdYGl2fJfkIc1TZa7xBxoZBuF0fHgb+Yp25LvArh6ruvb1ojYxbr4Sw3
         Bu4q9tJmx4bELTNV+CDMjVnUaZwNZM/cxhgcPHFtt3TlSfMFNxryHp1AGWvOo7NqfE2S
         HErvlBULFllikxCUOuNpkoImJfUg2IWm3GSrVc9L4BCTiPwJ449Yd99tUZuwcazlBYa/
         DiIxrqBzU8LIni1o0rj8eiyfNZe8efSRoOUL8RceOEx4SLQ73jzXznT+mjgIT8fVTnuf
         2AQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VzQLszJy;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FyETXJ0E9ZHnPD3MEHKj7CrsrRFBOrVcTcOZb8/NcvI=;
        b=O3XNCsg2wqJhc1jhwxu7PsVO0tYJSBwhg37kM9NKOpz1WnCYVqJYtS9mnBenorFFGe
         74rJ1Pfx9lMSxJA/S+3KXQn6VM4r6fQ0FVDbF3Z3uT6kJGGgKNfpspZY+xDI7BX4/5aI
         E8Lo/KHwqx9SrG3/+LAiUMRgGT1adwCwf4LNzA86SHuUXiAeT4j4pEZMXLMs8smcdMlR
         Dd0th9V1YqYIz6l77/p/bKv3nf7VK1E+XJA/D7s/tDkoWaaqis5/xjglplY7yW64MTUj
         KWzP3dEkS6WDMw/i6DZNlnLAD79neGXOQVBUIuPl+twgckYExiOaWV+6BrnkyqM9buhU
         4a4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FyETXJ0E9ZHnPD3MEHKj7CrsrRFBOrVcTcOZb8/NcvI=;
        b=Ij750U74iD4B6BVX/XS7hyPVu6hol69LEfgnM5XaUfbxVISr2UmiBs1YYetdkbW7Gm
         glks8CWVgFx+AyeyfN1HicaovQg2kWlKIH+0LFR8qFa8OfnPbivZ8ba6FFXZYtGyXoP9
         I+M4cM/UCPBe4NISQoFsGUwoLWZxraqMsagMrM2Ebh3b3eV3D15tB+OGqP7loHTQXgKs
         JcrAHgUsV3v63Mjfyii1YUfzBFFA++0WL8aWoMMIUxD55Z8hW9vfNkK/ehDhO5owirwN
         AEiLtMKeMgzTimzgAjibU6LOIdVVZ1qdj1q5fh5I/hgroW6KDP2+QS7w42ycNbjuvPm1
         Pf9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dNBSBd7XnQWxgtfcB9PzpmjQPPec2LCbnGF2tFgAXlxehpfW1
	FSMSIQFFsQUGpGUhPFd2Mgc=
X-Google-Smtp-Source: ABdhPJw6iTtLh4ZhAzN/3lX3eTXV/fPTRI7UlKPHjIphEN9qyBDEiIYIDokyjFiDNZ6UiEUWjCAAEw==
X-Received: by 2002:a67:7c58:: with SMTP id x85mr31172603vsc.8.1626801468951;
        Tue, 20 Jul 2021 10:17:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cb59:: with SMTP id s25ls557080vkl.6.gmail; Tue, 20 Jul
 2021 10:17:48 -0700 (PDT)
X-Received: by 2002:a1f:2bd4:: with SMTP id r203mr7188747vkr.8.1626801468379;
        Tue, 20 Jul 2021 10:17:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626801468; cv=none;
        d=google.com; s=arc-20160816;
        b=M03c3FdPXGnbwSpGz5H9+BtFxF1tqd4ZEAS7OFoDRzQOz3hlJ1MhMnyxZk/1rr4Fl4
         jdud9EjIU8Al+3CUrYRmTML18sWsa7DJ8sk7t+UKA+Nx5gAiki/Ymc9y6DZrY0pN45/f
         +AcUZjH3mcibK8ax2nFn7WVhYuJPcFNXKlOvFcqdqpFrQzGGloN5LE4oXDUIHV3yKI9w
         Le+l5M94lD1QPlA9muZNrvHzTQ3EnaLVlUF7wkMC3wTkOR746qJOm40kIap59JD2Q5Qt
         Bao90yDvTxjH+fvNE2il3dF+PlGpKmCL+TeU9Fzy7+xiilAYm3vLM6mDE2yZB+ea8GSv
         nWjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=q1TgFyMbXVlvegkXCoDC/htXXBzx5GpwIG92fGYha+0=;
        b=L9LO5Ik0wNNb5zqT9QenV5n6lImU1/NUT7DpCKZfdgINFIf3NttgzELq/zPRuKoF8D
         Z4WCCLctUG3im+AKUryXUr22xUNKLUKv2dZyc72/WcQOxj90CM03CWidESojT0i6BKcQ
         GEtZo3qeBWCQ83r14SnbtHM/lwSk5BgpMCW+VLYJWfMWhmm5GYLcxWs7QDiJQXRDQAdk
         o5WIK842baWBWhkRNkPX+JtjfxneYCJGQDkG5HSCbk6AZHwHmqruCw+sM69g/Qs1qyxm
         AEvPAy0DFlhv+veoai8k/EAw5JfSP0K1Glz2+Ym7oFEKQl0tCLr1TRv3IPKX9yiTrd5S
         uUOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VzQLszJy;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v23si1815416vsm.1.2021.07.20.10.17.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Jul 2021 10:17:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E3387610D2;
	Tue, 20 Jul 2021 17:17:46 +0000 (UTC)
Subject: Re: [PATCH] atm: idt77252: clean up trigraph warning on ??) string
To: Colin King <colin.king@canonical.com>, Chas Williams <3chas3@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org,
 clang-built-linux@googlegroups.com
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20210720124813.59331-1-colin.king@canonical.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <fd4f465b-86bd-129d-c6d9-e802b7c4815e@kernel.org>
Date: Tue, 20 Jul 2021 10:17:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210720124813.59331-1-colin.king@canonical.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VzQLszJy;       spf=pass
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

On 7/20/2021 5:48 AM, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The character sequence ??) is a trigraph and causes the following
> clang warning:
> 
> drivers/atm/idt77252.c:3544:35: warning: trigraph ignored [-Wtrigraphs]
> 
> Clean this by replacing it with single ?.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

This looks good to me but I am curious how you say this warning in the 
first place since the main Makefile disables this unconditionally. Did 
you just pass -Wtrigraphs via KCFLAGS or something similar?

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   drivers/atm/idt77252.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/atm/idt77252.c b/drivers/atm/idt77252.c
> index 9e4bd751db79..81ce81a75fc6 100644
> --- a/drivers/atm/idt77252.c
> +++ b/drivers/atm/idt77252.c
> @@ -3536,7 +3536,7 @@ static int idt77252_preset(struct idt77252_dev *card)
>   		return -1;
>   	}
>   	if (!(pci_command & PCI_COMMAND_IO)) {
> -		printk("%s: PCI_COMMAND: %04x (???)\n",
> +		printk("%s: PCI_COMMAND: %04x (?)\n",
>   		       card->name, pci_command);
>   		deinit_card(card);
>   		return (-1);
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fd4f465b-86bd-129d-c6d9-e802b7c4815e%40kernel.org.
