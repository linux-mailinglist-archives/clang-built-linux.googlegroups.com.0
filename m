Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBZNERD3QKGQEGIE6Y3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F75B1F6661
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 13:15:51 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id q21sf4480209qtn.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 04:15:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591874150; cv=pass;
        d=google.com; s=arc-20160816;
        b=jeShWbJQQGEJgQfXLa0ji2GZUIQa74LpH+IbV1U6atXnlmzL0oh9JAwQN3h8X+zs/b
         ISI+Z3QRwaV4HyeuicbbbabXQu42TbV/P2LXvjicGKsFc+IYnQt1MuW9lrGcYrqB/IES
         dpXjT0uzD9grjTUCOqIcTrf9g8nAVXhwN8vKTn00MEks/OabofQojFmQt7LKObisq0dc
         9N71BfRpKCfBXctoDtVRqRXVvj+TiyZd61OnUnwCcpA2Mc1zhB6vToZBI/AFb06DVbwH
         tL9WECPgUaumH2/dxO4qGNWmCCOYCjB260/8nHnoZ4Z4kp1jvUpXz4KGO9wTq73Cm5TO
         X8xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=MgXmyhV0jhQvwC8+8KH34YUPn+maeUXPGhOGChOSMB0=;
        b=G0ABthYUPLfxbVhOMiP64VHNnsqxtHvBDzD/qK6pKTueKxf1rS9pof/D8v5uRwartP
         DRAuJhG7kDNlP3tO/+F3fXshcHF0L6sqPoG/kqF8DRVKQQ0vP4+jD7QJ/uwrGVXzzTcx
         aqiL+MYjWnLZ7nO1frbnmgLRTeNfcPiZpDoPnVsFeEf6bBTw022iY+gTkgVKHxdsXYNi
         8sIBKkkaZJiZhVOIwxizR95s8dD+f1JvmkgqN9KEIyDeHg4GpfmBXJmFKdn4K5Ri4JOA
         YPGkgWD9XC1CPe55LCF+qNi9SR1GelPAP/UVMsfxNwo/u/ogMSWIldW0Jjh3U1yOcshP
         DFRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=E7DG2kuP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MgXmyhV0jhQvwC8+8KH34YUPn+maeUXPGhOGChOSMB0=;
        b=nrQ4fb/YtEkEVGa6m5DQsMZ+OUJvF6OG2WFuqyV7/341Kkisn/rMMjOHdq4zPotiiq
         JgFk+zLjesKeHt8mY2dPHKreRlFndlf+ckRoiNWNOdorco1ujLL+4EmDgoFxTbwr8N88
         BAWsoKUkRbN3d7kj02s+yhNOaA+eowod5YLje1uTp/PBTpEmBQY6E6OlIJYxAvOE/v8v
         rXZyofeJYB0jHbebLM7+7Ve5k+7Hh54aL7CdiY2zfoatJt64urmfOzGI+Nc6dOqwZpaR
         kv6swE4AQ1vN/b3c9hPREbwtM92ILm/jYfoLOyNmujgk6qATIWWXQM/sdJ8e04SZqcVV
         flRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MgXmyhV0jhQvwC8+8KH34YUPn+maeUXPGhOGChOSMB0=;
        b=jqLneCWSc6vodRpYtA4yCqp/JcKZuuAV7yddnZFYDBCiO/tWb0JhQPaHdhGTvMDEIy
         +LEpuovXIylSY01DT1+AyuRrlzh/SFlJa5Zd9P7TEdKbHmEFVXekLYaKy/KaiF4PNdZ3
         qH3B7VcOqt+5v3rUWojsYuV2bl5zustI6LEauGpVKqDWYLORiJpcASHJ1EGdP8UBkJGl
         iNLYuWZpehBe6zn94iPMYn6vTJzqdAH2Og9kGYV0NqL5Wyhl78RaLXs8vm5ed5dS4MBz
         IU8wlLD2ZRJ5yJw82T1F3j0BzDibRXj+6AhBIses2uPYHCOWRBfklXi7lJj1ZiSSvgRr
         pAaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530imvZSc9OcIr8Y6BgWevk3B7uRqqHRxA5AHJmw7CW6pB1OTbA3
	mhQFTBti6RpAaXZ3wzvEZgk=
X-Google-Smtp-Source: ABdhPJwGnbvQoNGhj64Ov0koHrynS0zuRVC8fE6zkifzCiAEjvAwHYQ874QvWZWU7AxpinioZcshWQ==
X-Received: by 2002:ac8:1942:: with SMTP id g2mr8155738qtk.107.1591874150057;
        Thu, 11 Jun 2020 04:15:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:56a7:: with SMTP id bd7ls380854qvb.6.gmail; Thu, 11 Jun
 2020 04:15:49 -0700 (PDT)
X-Received: by 2002:a05:6214:b30:: with SMTP id w16mr7430353qvj.28.1591874149678;
        Thu, 11 Jun 2020 04:15:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591874149; cv=none;
        d=google.com; s=arc-20160816;
        b=WVikDxOd7vQMF6y2sSH4O5ckUJI82ZWow8zp7vwjEZu0QBo8HPIdaynkZCZbaRR3GG
         NdI/L+DMpl5kGrQbXlIB4f2vxiI+xftUQLCvOf4BouniQLX/+YuOyuH4mjne+3Tgcnos
         j0sxszfRoa2rGv0GcPT86WlcUKUlxRoeX1MnWj9dSjO15m3II/4Reh9ZanPxVogHbGv9
         jtsdCkQ1AsyEfnhJ+HxrBD5xKcPCX75dphO/W+P8C0LeFrLc6MFpBESzHeqQ7wb8L9GO
         ncwnTnGmK4Na1kEq1jQPRJA4s3OeUtcc2taZMq2peTMFUV5LR/HpdyKEk5ILYbusbVo8
         ZDqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lAAD4el8sFBmJIpMawSA2OPFmzvicTWf8Li5y5ixdEU=;
        b=duyjHp3MVToU7e/g0v4Luesjzix6ItOaT/PxjERihQBO8U/tzvsJljUWqhrDkmnx6N
         3tZH6L+FNr9MYsfeH0lTfVEkmaF8N95+/QgSNo9y15ZApNQynPLbAUWDf3xihsiYRWXr
         t1hJ6G9fZkq6gt82Bu0ign6rPt7eglBlIXVZMc2WpDXv7cj22bPZ84qKp+AzHYrQechg
         QrCqc10Im6MSkwRFGPdBuv3J6oBeCcDXxgVK/Dfn3q6rCIa/iwtJfLUu7HIJ0/bi7AqA
         XVjs6ByTdMYB2+HHtw/wHlmChlZqdFh0SZ11y3r6fqFwTGF0c5Vv2UFBCQSvtvYVT2q2
         Gecg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=E7DG2kuP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x37si127834qtk.5.2020.06.11.04.15.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 04:15:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 171342063A;
	Thu, 11 Jun 2020 11:15:47 +0000 (UTC)
Date: Thu, 11 Jun 2020 13:15:42 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jian Cai <jiancai@google.com>
Cc: sashal@kernel.org, stable@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Luis Lozano <llozano@google.com>,
	Manoj Gupta <manojgupta@google.com>
Subject: Re: Cherry pick 51da9dfb7f20911ae4e79e9b412a9c2d4c373d4b
Message-ID: <20200611111542.GF3802953@kroah.com>
References: <CA+SOCL+ntBRGoA2qttMo=bt_VVKJMm8GEq+bfEoVvgq-j-Y1KA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+SOCL+ntBRGoA2qttMo=bt_VVKJMm8GEq+bfEoVvgq-j-Y1KA@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=E7DG2kuP;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Wed, Jun 10, 2020 at 01:41:59PM -0700, Jian Cai wrote:
> Hello,
> 
> @Nick Desaulniers <ndesaulniers@google.com>  made a patch
> (51da9dfb7f20911ae4e79e9b412a9c2d4c373d4b) and it was accepted to mainline
> as part of ClangBuiltLinux project to make the kernel compatible with
> Clang's integrated assembler. Please consider cherry picking it back to 5.4
> so that we can use Clang's integrated assembler to assemble ChromeOS' Linux
> kernels.
> 
> 
> commit 51da9dfb7f20911ae4e79e9b412a9c2d4c373d4b
> Author: Nick Desaulniers <ndesaulniers@google.com>
> Date:   Thu Jun 4 16:50:49 2020 -0700
> 
>     elfnote: mark all .note sections SHF_ALLOC
> 

Now queued up,t hanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200611111542.GF3802953%40kroah.com.
