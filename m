Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB5V45DVQKGQEJ2KMSDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A24DB0CEE
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 12:31:19 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id 101sf14427427oth.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 03:31:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568284278; cv=pass;
        d=google.com; s=arc-20160816;
        b=ATCgGxiE4Bd6cOucfiwYjWrc+JIBGTmfWye4Ub497E1MDj5dieiy8BwAqQtzvhFfaK
         F45ywwTv66qE3Xaw7HvjI7BXdDwi9e8yVYyVqu09cSLd49YIX2LTcjG1AjqkZoR0kEvv
         sShF0ykBN2HGBplSte2ReZFTCx/b5dCL+Zvd9wOxlp0ierV9ZutPyNRnSOHUPrL5T5lG
         ZBFp+JttzaElW+NpzWid10S3lIiyMUFyrucTUWMe1ik83aL23xJg+2B16y7o7TUn0Xk8
         aOjPqS53hBbTG0pRbLHaf4RB5RVcY/xfU1aRnJmxHoJfj7Dmvf2myQUd6PGUeZzDYJ71
         MkRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=UnmcQ3h01BwKlQPemK44X/AsCvVm7IhzwlHmYontCeg=;
        b=lDsG99QcZ8HKAqoyV5FUFI3ZVqTO56CVDO04h6AM+F/9Hwx+AimQR15xrxGtxKDYwy
         PGU2LcRYmitova5FgtrQBsR4fmeY/A5/qQBqEBdMvPfUzuMAQ+MozqOsWSt1tryAcFI0
         IkbFFrvPHWt3lbkTdtF8C+7IzeqwI2p/auxmvmDfNQKTjuYiIcba9lsDEf3bKq6cNzSU
         cr8h1xLZxoRgPCEH0JKG0FKWrCZVWkqsvKU0Z2MaA4KiUA+o8/Fi/OFS/s4b4aq2C8wS
         WD+Gkide9t5WtyOyf+ZHuSgmS5aB80Hr/kqBG0j5VSh/rM6DpbAUx4dz4L2RPIjYuOWE
         Hojw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=db+Uzp7C;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UnmcQ3h01BwKlQPemK44X/AsCvVm7IhzwlHmYontCeg=;
        b=MjeRTePWMd9NSEmDb6apAmp7DTV7yg0JbgdS2A1G9bHvGKUUIIrKc77YtAl7SJHbJs
         wINcfbTdOBprKI8NlExE3O1xzZ/SPC8OeaWWvXNDhFMPX367Itqfo1j8R+ZooxCbUt1d
         3EoXKIrd490TrA8QWOldn6Tzbt/47s/vJQpzrIBZIldNttN/2yrFUoBLncEGqzHtABbH
         kE5KZQ8bfXXfvGYJqThpYTyX4sPajoaci1FY6cg98AQ0hEprMcbskC9meDBVrDJqyImp
         gW8cId9DOuk1NfFUDzal1dXDYuwyg7H7L35nYabZiszLFQJXwasRZQvsspegsqe7peJv
         KooQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UnmcQ3h01BwKlQPemK44X/AsCvVm7IhzwlHmYontCeg=;
        b=iH1aVkK53SzxZt4+leC1Z5SvTd65P7+Ckylm3+RuAl6BMkSp02mop35IEDO7GelipL
         4TFjrDD98hwNrQNgv5U9ktSG5ZO8vYB9pIvnwUGS93fTJmm7G7kupA0InMftBKrk4VBT
         fwGgtvQ/BJaS3A9V9j/ZPjdtXGtdWkINyJWq+Sr1e78fyDkTHsyPjH704EwXDaD12wlE
         xpQvvPVFq7F8o2sU3GcPRhKBVp5y3bh5ZXDaIqfLl9Vq0JY2v33qqikOYkhDPFZmZvJ5
         OSGEhF19Q988KIT7y5yc4EkcL3hPKpHwU3hnaX2XLK1CzT3BRBfFl6OzEJgeypsAv2Gb
         gwVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVbHRWyYJtJXbBE3v0dMALU2MrCHONynfofHlIbWanJqjbx+zHk
	3rExcBPKSFU0M2UxTXYZ4CU=
X-Google-Smtp-Source: APXvYqwiZACNE7E24UyU+cIwJFVfZru/C0n4+bd57PJ2lKzuFndXy7lSNRSVLqlqqCVp4gMusbHQBQ==
X-Received: by 2002:aca:bac2:: with SMTP id k185mr181324oif.0.1568284278163;
        Thu, 12 Sep 2019 03:31:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f0b:: with SMTP id u11ls5489795otg.4.gmail; Thu,
 12 Sep 2019 03:31:17 -0700 (PDT)
X-Received: by 2002:a9d:1eb:: with SMTP id e98mr11463204ote.244.1568284277895;
        Thu, 12 Sep 2019 03:31:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568284277; cv=none;
        d=google.com; s=arc-20160816;
        b=FWSrlKpzh/PwZH3LAP9cJvGrocZL0bFWPzKDGq6a718NfZUghuyJUSHx/oZOqjcZBY
         JUuF7Lp83CAzecpc8Oe9fTuweLTlGHi1SuCfJnAVcQxLKYvZX4QPUr373crcQNomNPgK
         BV0Vr81ByOSMNsJKZVh9EX6GajJIJ5IodQnEsBPE+0EY20m+CTOY/g1taNoYHgdGzVF5
         73qBH+jfxlprkPFROQ9yTFHblk3wOrOFi3Z7781vc4veLQnDCbDv2eLM8mGFeZmC+auf
         tY3xdArBQnMXM8ptaJmQNPAeuTOYBDysA8tQbBvATMbluYMk/UPotPzL6Y522wq0dXl+
         LPGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=16RCkFtQz2yMMtnu/nx/ysNK7x20Vc2ZfqUUd7zuwp4=;
        b=YUUIM2asMPNW/k2gMNZpsteHIZeOQRjamxMVz6VR/iEb1UVaAw5u4hmYsYhV4BVBRF
         N/y5VjzJc6+AVOildgDfwW1Op+Qgg0ZTH6w4xwax82Zi7isJUblaJgckJXkKuXv4zqJ2
         S6enAd+EmE7GMQLJJg3Wx5D6Bhg4c9RIK8Xe6+NizrOq+Ih3/xyRYkGlCoigeU3MrY+C
         qfXD3JFUrnWjz5/3+xXukfRAaK1kgc63vLSTIjDGEk+5AtwpV0w9vyk4LCL1xju2HMAy
         a/NBukCQph5gXOLAGI2iqvOApxjSc/f52euCcCReoaQNfIT821GB2JG2Tm6YaKkmGzaA
         lWLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=db+Uzp7C;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z21si185833oic.2.2019.09.12.03.31.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Sep 2019 03:31:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [148.69.85.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5F48320692;
	Thu, 12 Sep 2019 10:31:16 +0000 (UTC)
Date: Thu, 12 Sep 2019 11:31:14 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Sasha Levin <sashal@kernel.org>, stable@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ilie Halip <ilie.halip@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Zhenzhong Duan <zhenzhong.duan@oracle.com>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 4.4] x86, boot: Remove multiple copy of static function
 sanitize_boot_params()
Message-ID: <20190912103114.GA56013@kroah.com>
References: <20190912072146.68410-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190912072146.68410-1-natechancellor@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=db+Uzp7C;       spf=pass
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

On Thu, Sep 12, 2019 at 12:21:48AM -0700, Nathan Chancellor wrote:
> From: Zhenzhong Duan <zhenzhong.duan@oracle.com>
> 
> commit 8c5477e8046ca139bac250386c08453da37ec1ae upstream.
> 
> Kernel build warns:
>  'sanitize_boot_params' defined but not used [-Wunused-function]
> 
> at below files:
>   arch/x86/boot/compressed/cmdline.c
>   arch/x86/boot/compressed/error.c
>   arch/x86/boot/compressed/early_serial_console.c
>   arch/x86/boot/compressed/acpi.c
> 
> That's becausethey each include misc.h which includes a definition of
> sanitize_boot_params() via bootparam_utils.h.
> 
> Remove the inclusion from misc.h and have the c file including
> bootparam_utils.h directly.
> 
> Signed-off-by: Zhenzhong Duan <zhenzhong.duan@oracle.com>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Link: https://lkml.kernel.org/r/1563283092-1189-1-git-send-email-zhenzhong.duan@oracle.com
> [nc: Fixed conflict around lack of 67b6662559f7f]
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> 
> Hi Greg and Sasha,
> 
> Please consider applying this to 4.4 as it resolves a compilation error
> with clang on 4.4 and it has already been applied to 4.9 and newer:
> 
> https://travis-ci.com/ClangBuiltLinux/continuous-integration/jobs/232287034
> 
> https://github.com/ClangBuiltLinux/linux/issues/654
> 
> Thanks to Ilie Halip for debugging this; TL;DR: clang pretends that it
> is GCC 4.2.1 for glibc compatibility and this trips up a definition of
> memcpy for GCC < 4.3. This is not an issue on mainline because GCC 4.6
> is the earliest supported GCC version so that code was removed and this
> patch resolves it because string.h redefines memcpy to a proper version.

Now queued up, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190912103114.GA56013%40kroah.com.
