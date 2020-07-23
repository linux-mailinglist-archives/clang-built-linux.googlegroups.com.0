Return-Path: <clang-built-linux+bncBDIPVEX3QUMRBB7F474AKGQE6MFKTYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 449EA22B7B1
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 22:26:49 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id v25sf4755709pfm.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 13:26:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595536007; cv=pass;
        d=google.com; s=arc-20160816;
        b=eOTQTmzPCWWAYEng+Vo/0xGTKIwn75BPvK4R2WdrFdh+C6I6fh8CDHT2MSA3Kuo4DA
         TOECTeEZF3QHvcpVGbHlLD/g8/mEan6/2U/IZp+5o2tx0mKPHFy/+fKepNOnIxPML/8r
         GQclXhDZ3NO+giHnTSFMu90nms4t4qFkdNqALqJS+j22tGZvUF348EjNhTmCZDi034ik
         kudy6WwNBhmy4KOnI6StNsP1EGPcR67QYYiicsNsG6HUjl3qplko/yI0iSCk2F6TETA+
         uVrrinxJPi2PboFdXoNXa2uk2qIocLCqhrZzjD+owxkMiqkoTtK11iyxxOe1fgk8orQy
         z2pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kG58zuUC4UIsOK8R6llGovhJOrUeb4UfVqxFJGZ393I=;
        b=ZRr3JqOsrU11FtUaOVw62xGD7rshd6ryLCbv2kp23FUtrIh26J7fpnmljM3MSMbFr8
         cWCFwfRt0hW1fy82+2PlnnQcF8Goi6cbZFv1w8Ur1CXv/suTTblgcnAuNPgua7Qq4NPq
         lNOZ9pKCvuRF8Hmkwb7SjyUlagdQ7rta+aE0U2Tq0v50eFNb34nWrK6kOBKRpj68dZ+i
         ErXmMfMs0FK0qift77fdawEUYPwHv+5BM1qs2qw3XbKamDT372O1Pn2WbbydgpgjcJkm
         A1+ioKmwf06q/OSvl9eInp4GkO/Ff0yIHSDRUoAVTv/ghi9oYVdX9cZ7Fc4mfk7SOI5v
         hyog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kG58zuUC4UIsOK8R6llGovhJOrUeb4UfVqxFJGZ393I=;
        b=i0yzaXJi0fNe72VIB1W2Q/mAw+vMz7w/2l8mdcL+/F/mVFUsPJpjpYPhPNwPzkFAHW
         rv1esWC8I0EUzQiJ+9BCKEs+HhM6mfUFFiUi8Bcj0sbi8Tbje3/AxCs9wcFFWvJFWZpM
         8fRqIV5mAdQ12Rfzjkti5exlrihZOkmixW/MxEsmumMKVuw/f52yKEHTIEFlkLGq6xsu
         gNIheEF/iwTWOTt2OpWHrq9/YwjlUBfqhjQ+gxUij4yBLC078AK0dOuPl4HI4vuzo9eo
         dUMS2WPm56u/9ox9+2v+n3PHnLgXgm3vm0buVQtwRQmIj9v1h1A+hfEgl0J73Ly0Pefz
         DJbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kG58zuUC4UIsOK8R6llGovhJOrUeb4UfVqxFJGZ393I=;
        b=mIr+kW3FYA++xrZ4+FP3oPY+5PSbImqvAR8GPA8E2vUg/ZlXGh4rdiWQo+yP14qG8s
         1U81qwtPmuDn0IkCmFI8xwb4/DfmBucVBP+nakt25MbMOjejb6xkoImqjZaN2aBpyVLT
         1QWj8rOG4Fec9qkGXl7wjeG9BsTHbRhvcpyj1om7JBhlOvcO7/soDlOETqHa2CnnAGyK
         7TcFV6hD7ZLbARASq7dX4Xqbx4Ejrs/n/HTRsVTHQBFTLhgBfkyYJYM4tAeNpYdmmswU
         yqVFyA3Yok1ich+f7hjosQHiNqRjitkjl5uFimGcJamKnpRIhp0F5GzF99WgRxl9eoo+
         zzDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+8QCjsJpJgjDlPWJhfP9ui/LHcz3YyN7YiLR3AXEptfKkK7+U
	WSL5vDQv6Uj3DW4ciWeYu38=
X-Google-Smtp-Source: ABdhPJzmXxWxno9OrfK7/t6WPQ+KdYQa7rVAb+HtVXd+LJshskmuZrQuTXOcUmsyHPb1WApQjzbkyA==
X-Received: by 2002:a17:90a:cc0f:: with SMTP id b15mr1998584pju.83.1595536007483;
        Thu, 23 Jul 2020 13:26:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7757:: with SMTP id s84ls2058010pfc.9.gmail; Thu, 23 Jul
 2020 13:26:47 -0700 (PDT)
X-Received: by 2002:a62:1c08:: with SMTP id c8mr6134235pfc.143.1595536007127;
        Thu, 23 Jul 2020 13:26:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595536007; cv=none;
        d=google.com; s=arc-20160816;
        b=Jy69eWPf5baLBK4xHAVOcBP/bKFsBw5IjZD5vf+/SDkKSVGWuAe9LRy4OQDt67CZgg
         ZunyaXQyDtRjnUkJSANU8nSfwhpxKdP1NscRe0okN6m6dMGejkNnMRbmFE8oXR8cYbvy
         qZGIL2OrVZ2mMw8GflttwHm0ZP4LCTGkyfBstEUdeFwqH440dJguv8cFgEBjH3LVyS4/
         20oL8/bS7fipoR8B7n3hrTwCb7P5V1MCsIkMw9IhJVZhZLQ7j8W4wncAOT59KB+8e6/v
         NPcqv8BMwk2gKUrkRiEffcjG4uYFOnoU9QXGdtlf8CU64t0vM+0HQkB/sWcHVPOx/WVQ
         zdFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=Sp3c3ABCdF3Tn3B4VEcLMhPWb1Mw7X00cOc22Bc2RUg=;
        b=Ch3V21cT2MU10Y7p36qqRXBsJRHa5VTb47w3Q6yk4f7ntY1ogQnIS6HR7/gsWtcZEo
         fcvRWI4PnZ+oDBSXy7vGKoM4E88DVLXO2ZK3kNImYiCq84L13Oyt/oOYTNSFQsJjtqpX
         NKJSwh8erJXF/i5e949x163OJLPoTIIfxPyJ5rTjzFOCMYje8YAZdnNkOyen/VX8INpA
         /7XyCLZHpMzeEmcCGVsfTuozvfELWaSSBCgAM+5uWiJFbfUNCrsfni5dCqZBKFxGTBGM
         HksmJNMHtYb8zE9xWR9eDgGpW2L1jIBJagIQtEF7Q7HRUvqkyycyJRcQM6H3Mw+sFQaS
         YvWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [45.79.88.28])
        by gmr-mx.google.com with ESMTPS id g5si108208pll.0.2020.07.23.13.26.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jul 2020 13:26:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) client-ip=45.79.88.28;
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 6EE382BA;
	Thu, 23 Jul 2020 20:26:45 +0000 (UTC)
Date: Thu, 23 Jul 2020 14:26:44 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>
Cc: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 gregkh@linuxfoundation.org, tyhicks@canonical.com, jpoimboe@redhat.com,
 jkosina@suse.cz, tglx@linutronix.de, keescook@chromium.org, steve@sk2.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] docs: process/index.rst: Fix reference to nonexistent
 document
Message-ID: <20200723142644.5dd89bd4@lwn.net>
In-Reply-To: <20200718165107.625847-5-dwlsalmeida@gmail.com>
References: <20200718165107.625847-1-dwlsalmeida@gmail.com>
	<20200718165107.625847-5-dwlsalmeida@gmail.com>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: corbet@lwn.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted
 sender) smtp.mailfrom=corbet@lwn.net
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

On Sat, 18 Jul 2020 13:50:59 -0300
"Daniel W. S. Almeida" <dwlsalmeida@gmail.com> wrote:

> From: Daniel W. S. Almeida <dwlsalmeida@gmail.com>
> 
> Fix the following warning:
> 
> WARNING: toctree contains reference to nonexistent document
> 'process/unaligned-memory-access'
> 
> The path to the document was wrong.
> 
> Signed-off-by: Daniel W. S. Almeida <dwlsalmeida@gmail.com>
> ---
>  Documentation/process/index.rst | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/process/index.rst b/Documentation/process/index.rst
> index f07c9250c3acb..dd231ffc8422d 100644
> --- a/Documentation/process/index.rst
> +++ b/Documentation/process/index.rst
> @@ -32,7 +32,7 @@ Below are the essential guides that every developer should read.
>     kernel-enforcement-statement
>     kernel-driver-statement
>  
> -Other guides to the community that are of interest to most developers are: 
> +Other guides to the community that are of interest to most developers are:
>  
>  .. toctree::
>     :maxdepth: 1
> @@ -61,7 +61,7 @@ lack of a better place.
>     botching-up-ioctls
>     clang-format
>     ../riscv/patch-acceptance
> -   unaligned-memory-access
> +   ../core-api/unaligned-memory-access

Applied, but the right solution is probably just to list it in the
core-api book rather than here.

Thanks,

jon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200723142644.5dd89bd4%40lwn.net.
