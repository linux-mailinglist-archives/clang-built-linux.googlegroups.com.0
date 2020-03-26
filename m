Return-Path: <clang-built-linux+bncBDG4PRFWUIDBBV7E6LZQKGQERLYLYMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E70F194036
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 14:47:05 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id f14sf5160370pfk.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 06:47:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585230424; cv=pass;
        d=google.com; s=arc-20160816;
        b=p8KZueNc/5uieNjaq8RFJdeAu7xkmqhe7mDfGZ3IbuBqA6gGi3FDdte3V9pychg2Gb
         hr/L+7YxsPmDlXJmHfwQYEz8P7y1+Rk+xFvzyLgpsVYIWmIGK8sy0/3BltffLL2cVJqZ
         mDBHHT5WGQgekeUyvGpMXnwNq4roae6wMYq4ivXGgGPt5pP+8DxTyuFvn+SwNzsImVxf
         7kH4dW1iYG5SPnFqN5B7xSdT4Hmp2vD4apB7X9Avqe4K7yEt8abIl+PPdbknkkWbA+xA
         44HFNK2Df/PeOb/tdDALWQ/TIs01+AN76RP2iKw8kcP2L81wbdSPI6Y8Wh90sGikf/un
         OjwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=GYZL65HHfEmAMKJblyeYXjd9P0Bq6lYdtgQYxzCLjhw=;
        b=cIM+ySP5j3mv8K6NybL/cBAJgu0aZHZBLW6rZHBKrt/XSrNHTJbpFVprHK0+H9J4Uv
         eMfX2mCbZkSZYq8dluN/srihNzvvn4IZml+ZQlskg057y8Ro4M+dLGPVBObV2ojjNE4K
         qBhXahONzdsetS6SmpIcjdOnXy/Ybq0i1M8G2Zjdinep+BKhrfCNYCLu5w2MH1Va+nf6
         IR4ziI6yPmoKSnBd6zEFcIDcu5THO6PAExmKlxHmX0Ox/kVzNIqKs4EYimgc9kYz7qsz
         Xu1bL4jkgw2DCIm9QLXqhQidTbASBeZtIQGKmeVvB04JpVfeRUtKFYBMgrki/Ftcc+aB
         BZhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mhelsley@vmware.com designates 208.91.0.189 as permitted sender) smtp.mailfrom=mhelsley@vmware.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=vmware.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GYZL65HHfEmAMKJblyeYXjd9P0Bq6lYdtgQYxzCLjhw=;
        b=tmg1Iw+gz2KeXWEAENEx6naZRMUV/eqvbn7oxSnHjZpK1gI6/dRSk1T+1iIn7w7k9g
         d5KPXXkDPkqpiAY5i+mRb2CiXAzlXEu3+VmNRCY4d1ajseG2GGD/gvTDWfMeB//9lYG3
         Dkkfivew6TtFzaaA4YqwlXkQxschdpCHX/pgS8Xna9bpc4oAJvQLz4DU77hcqbMBk5L4
         cdzcrOKFDBDbtidOA0zddJXiU4/Fyp4lw90SFqfud4vUpPXliRA2OC8MqF5dnC+ihG3N
         uquJEoFGBPK+dUvydWyRWSPwgcAgGEe7gPka8ub2I53Cks0YJp9NUKnD0AIk4qVnreRN
         9/+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GYZL65HHfEmAMKJblyeYXjd9P0Bq6lYdtgQYxzCLjhw=;
        b=jQBYbj9ECt4z1Vopr1+uIPKV9QMbE61JiR3MiTnWURj89rfUKEVCEyGAwxxSW1xTRS
         Bm1gQO3wQ/2d6FPHSV4ATpJBNkrewhCTwPASjzWyu9Dk1xxJ2dnbZd6p5K4pq7sQR0+G
         KhcipCC9euiUdXFHUx6zbThotQbbNpBq++Fnsna2iUFZycoP7pE0WuXkbUrqvrFFIq9q
         TxFyORbwnKivmcnUAlX9gNiJVH6aiwwoMZQxGv4dZj91qFeW6lnlz3x7W4a5Y9dpuQ7h
         jVxdhbxWqqYno5EB+yORvymGQ575PXi83qWconn8R9bHs6E3jWCbN3VPL7qNAJaRTZxD
         X1RQ==
X-Gm-Message-State: ANhLgQ1x0X8dhem9vF1GkDhQ0+DxAIFfvO4KbHzEy/PQ0CroquoME14d
	nO3ZVYYImJ8z9guvEu5AnPI=
X-Google-Smtp-Source: ADFU+vtzv9pEvquMMHWEip0Niz2/t9Ph/ZX5083ghQp9z3C/k/QcvOI1xQFNYEgTnXfc+tU20WvxEw==
X-Received: by 2002:a17:902:a407:: with SMTP id p7mr8180234plq.257.1585230423914;
        Thu, 26 Mar 2020 06:47:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6455:: with SMTP id s21ls3548088pgv.9.gmail; Thu, 26 Mar
 2020 06:47:03 -0700 (PDT)
X-Received: by 2002:a63:2b54:: with SMTP id r81mr8854681pgr.453.1585230423361;
        Thu, 26 Mar 2020 06:47:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585230423; cv=none;
        d=google.com; s=arc-20160816;
        b=D58SQWS0ddcXBSFWPnCm53PIrjIikXXY/bsLq0IyFi8vuBnrXPhYu/ln/Y7SMh/zSb
         88tsghx5iyV11pPiNcMrC/azRpYpnjeFjKKUv7lN7XGsIpvXcRR5IauNdexsZLfsrCo9
         7vqfReUjcOP+zt9OtOOsq8ClAHEW2U0VbwylO/VOD6NvSV93e6ptMh/Mdqi5Ehz4XwOI
         sY9Yl5zDCZ7IeqBYk/hC0VUpXOF6KCJ6PrRihzBM6338Sd4YVlyxkLzN9LGwXKhx5zxb
         qKn8lcn6y64HijcszFaAnLix36538GzKDdqaLz13JxvzB7/U1zsvjk7XmAWz/qEZ5Ga5
         Niow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date;
        bh=GeIyWY/wActIbhIbE7NVEw2wfceJ8b1KyQg3INlSTrQ=;
        b=YC2xfZdJR90sVTAa+kvG6WMecMEIiPc23wqUqD9Jgg2xU0dqM/fMr8K31wIpuT8VtO
         WclzzuAUL2b+X7YkpBPi6mHnrZVmtXM2g6s9GlYuKJ/EbD/j3+E7gQsnWdB+dmYJbqmj
         FhxmhX9bEQcryM4FINdfdl0zu09/uuO+A6Z6qNCZQ2KEPVx4VYcFGH2fUeY18F9Dp89x
         yRcvHihsYgoFmmdZvR6BzT1i8dAuFh57IkTXBtoYYMzUrhFd4YvsM30m9Nh+Q4nVUNgk
         VPecPBzfeT0XYjhI2KzFr7YJMOR11dP40MHl2kzReUalskgCxuisEFyEZboknxiMNKSE
         xoTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mhelsley@vmware.com designates 208.91.0.189 as permitted sender) smtp.mailfrom=mhelsley@vmware.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=vmware.com
Received: from EX13-EDG-OU-001.vmware.com (ex13-edg-ou-001.vmware.com. [208.91.0.189])
        by gmr-mx.google.com with ESMTPS id ng2si130247pjb.0.2020.03.26.06.47.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 26 Mar 2020 06:47:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of mhelsley@vmware.com designates 208.91.0.189 as permitted sender) client-ip=208.91.0.189;
Received: from sc9-mailhost3.vmware.com (10.113.161.73) by
 EX13-EDG-OU-001.vmware.com (10.113.208.155) with Microsoft SMTP Server id
 15.0.1156.6; Thu, 26 Mar 2020 06:46:58 -0700
Received: from localhost (unknown [10.129.220.242])
	by sc9-mailhost3.vmware.com (Postfix) with ESMTP id 3112B40CAD;
	Thu, 26 Mar 2020 06:47:02 -0700 (PDT)
Date: Thu, 26 Mar 2020 06:47:01 -0700
From: "'Matt Helsley' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: <jpoimboe@redhat.com>, <peterz@infradead.org>, Mauro Carvalho Chehab
	<mchehab+samsung@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Wolfram Sang
	<wsa@the-dreams.de>, Kamalesh Babulal <kamalesh@linux.vnet.ibm.com>, Raphael
 Gault <raphael.gault@arm.com>, <linux-kernel@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] objtool: Documentation: document UACCESS warnings
Message-ID: <20200326134701.GA118458@rlwimi.vmware.com>
Mail-Followup-To: Matt Helsley <mhelsley@vmware.com>,
	Nick Desaulniers <ndesaulniers@google.com>, jpoimboe@redhat.com,
	peterz@infradead.org,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, Wolfram Sang <wsa@the-dreams.de>,
	Kamalesh Babulal <kamalesh@linux.vnet.ibm.com>,
	Raphael Gault <raphael.gault@arm.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
References: <20200323212538.GN2452@worktop.programming.kicks-ass.net>
 <20200324001321.39562-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200324001321.39562-1-ndesaulniers@google.com>
Received-SPF: None (EX13-EDG-OU-001.vmware.com: mhelsley@vmware.com does not
 designate permitted sender hosts)
X-Original-Sender: mhelsley@vmware.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mhelsley@vmware.com designates 208.91.0.189 as
 permitted sender) smtp.mailfrom=mhelsley@vmware.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=vmware.com
X-Original-From: Matt Helsley <mhelsley@vmware.com>
Reply-To: Matt Helsley <mhelsley@vmware.com>
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

On Mon, Mar 23, 2020 at 05:13:20PM -0700, Nick Desaulniers wrote:
> Compiling with Clang and CONFIG_KASAN=y was exposing a few warnings:
>   call to memset() with UACCESS enabled
> 
> Document how to fix these for future travelers.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/876
> Suggested-by: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  .../Documentation/stack-validation.txt        | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/tools/objtool/Documentation/stack-validation.txt b/tools/objtool/Documentation/stack-validation.txt
> index de094670050b..156fee13ba02 100644
> --- a/tools/objtool/Documentation/stack-validation.txt
> +++ b/tools/objtool/Documentation/stack-validation.txt
> @@ -289,6 +289,26 @@ they mean, and suggestions for how to fix them.
>        might be corrupt due to a gcc bug.  For more details, see:
>        https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70646
>  
> +9. file.o: warning: objtool: funcA() call to funcB() with UACCESS enabled
> +
> +   This means that an unexpected call to a non-whitelisted function exists
> +   outside of arch-specific guards.
> +   X86: SMAP (stac/clac): __uaccess_begin()/__uaccess_end()
> +   ARM: PAN: uaccess_enable()/uaccess_enable()
I think you meant to put "disable" here  ^^^^^^

Cheers,
    -Matt Helsley

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326134701.GA118458%40rlwimi.vmware.com.
