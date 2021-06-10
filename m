Return-Path: <clang-built-linux+bncBCT4XGV33UIBB6EIRKDAMGQE6O77D2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id C63EF3A35F7
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 23:30:33 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id 190-20020a3708c70000b02903aa60e6d8c1sf13316906qki.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 14:30:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623360633; cv=pass;
        d=google.com; s=arc-20160816;
        b=KC5T4Vx+j/0AlAHSJl5dKUODRglm0g8ME8UXEOmxuk6+M0XpfwBXrO0fr6FbXUwNCS
         U/oZYFBfpfYiCkfJslRAy6tXzIzgO5KHuGiIoJ+XGonM+lsw9laKtRsQ3dCL3xsQfM5d
         IBjJFLgcVK+mkyeN6F7aLpIIJ/d3souZ2e+Nw3vV6Xfd+c2IMWbTfxeUrzi3Q+VaJA63
         VfY7y8xamkjUBvq98MO0aOgP4X/89bS3d29fJ7p+oti8qRS40xKBXS3/8OmnCBPW7PKl
         ONJvlb0qwnEBt8Yg80f48hSkm8eYnHQpCA54G64GuHJBlgw3nwnuOc7B7YG5ooHtpl+J
         hpJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=L6yLyQUyc6PKmC5najlGNIvxF+mj9cW4jrwBi6ThrXs=;
        b=D8o+sVdc9BdN7bGxIlHaAZi6C/jAsACrQft04cMM1Rv/T6FyOaCDdPmlhR3n5pQDD6
         bDu/CSCYMvPYh0GC3QEtwS1ERmtKkHC/ViQ7Y9YV10RIoysBMSKUOpkk2ChyX1QDPEfl
         lclFDNKANV0zNOp5QiXf6DQrVfLqK9+sANv0Zq8yfr196r++O9p2q3mCG/elE+HEZa4q
         I9+qMA9pS+/LUnjciUJPoKZEgjrH3s4IkRNiavaEvfJZi6Pef0jvXLyQ/pS0mEuRSAE4
         L80uHOqn2CeoKtGDcPY5SXLCVN2/Pm1kGwOElySOjt71axDoW3XkQ/X8/yW6lU+kGFqq
         EWtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=gMKJVJIK;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L6yLyQUyc6PKmC5najlGNIvxF+mj9cW4jrwBi6ThrXs=;
        b=k2hzZ1fkl5OrGirg1JdOnp2tbG33JJv8Fuv1395Di/QQRSGWyYs4tF+T3EMcTZcC/4
         AhVvo/yAiXkshQ4R1iF+3nSGgnmXtFnYdYmEz8+m3v2FGPak+0XMldgFBMCzCKmTaIXC
         i5jNHSSGVaWipx/ARPhxvhxlxdPxkUclH1vhLvjIHm47MlQHZSeLwsd51FQ60pDrC9wx
         nA9RfsKqYM9uGlOW4sl+XgTkxEAGUus1BxZUlo1/kSTH8e3GeborGMKf8eGuln1o3yPf
         HQas2Suv6LZI3CcLFdrI5O9H+7cogoUa7ZXxA/iyDZa2Orth82bAAqgNbnlXXT/qk44k
         C53w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L6yLyQUyc6PKmC5najlGNIvxF+mj9cW4jrwBi6ThrXs=;
        b=h3skszFuK/mS58bVlqP23+c/+FwsWcF74KNCjTVEsqIpBqdGAnijzPlVheBfR+s3Rm
         W36dLVB3SPC64389TWYZ8W9guSyzoaQeXrcAoPiTvsVj7bR1TxcB5bsb6vYDZeVLepKS
         szMnq7oZ86ZHu+YKjaPfrRHVwfYmyhXLzKYGNlXbW2UKVHGv08Nvr3OLs6iZyDfi6fRm
         i20vZcFrqAO9dNpTUSFJLh9hmY6NNXwGWQmLfjnhKr8+cIy5MLI3m4wrW4LW4tj5wwmb
         Tmn2bz3ejm0BHUVAGENHUBftViXFaAqjIn/NFh9+mO1BYqrirjFQViUzyCgtCi2SY859
         AQ8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531b4/KkJVHMS4dfRAR95+Vq+nJ4oSnBiRFsqFGWJo9KexM/uLF+
	vX9DlJ6pj/oDCzbepr4xj3s=
X-Google-Smtp-Source: ABdhPJx+1xxlt8kM2QnkRqDWlGn3+Z+rApcVCbzKsuW1L9Ii13vLvFWg6H/xzt3fNRg53S7bcmZrOg==
X-Received: by 2002:a37:68c7:: with SMTP id d190mr718239qkc.142.1623360632859;
        Thu, 10 Jun 2021 14:30:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6a17:: with SMTP id t23ls3430831qtr.2.gmail; Thu, 10 Jun
 2021 14:30:32 -0700 (PDT)
X-Received: by 2002:a05:622a:15c5:: with SMTP id d5mr894716qty.77.1623360632430;
        Thu, 10 Jun 2021 14:30:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623360632; cv=none;
        d=google.com; s=arc-20160816;
        b=sRfJe2sQf7nsa0vA2TDyoCiyVsEXtli+dXXnmoYZqIJhiNtLCnP4dfxrBnGTL5z28Y
         ByHC0FM/aPk0UGfFLG0j4PQ/AZ/QY8nKFkta8jXlFugmcdsvWzBal90Eu9eTON1/8P7z
         iG/gPRaVCSM/jmKu0q/zaWgQ2jkwYsQPp9QVvDCI/VuPBSDVKoQwzOJxuwjmtpxHvSU+
         10Rbpn5aVKKPufzzKVJcvGRIdPi1dBM1Tu4WzURkTK/xomgeJwNMPCoF/oXEBXQxTX8q
         1jf8RkQKaA2CkVrR3rcG3fOc4hZDwC5DyUZ35vQDSOJdK1xIN/8FS6A1kt2NXi+B6JyF
         j8Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=d3ZABJpePafWBbJIEJmNViKIIt91qTopm1f+g/4/zJA=;
        b=cQLeMsCjSwuerccei3WMz/xqfHc/AJyecpt/D8yaICQ1Tbc/Fk9xDf1+YIdHf7F1xu
         rNAyR8uBXOKs7SCnT9jMHYvLCV53aT/nzL7aQQKRiLczxjPQSprJTOEZeJhW5FXxsng8
         zF8Kicp6qOkSr2IVmfCXWc4JBquYAmcGGQNA2NZlCljLLM7bzCQIVPT1uOf8a99FOpLu
         aNaRd6wcuhDPrAn/g8shvq44Vc6XAwjS6YSOXZsOLnRrKFh5A8QSrOTJmA7rBnekCjUm
         sRE2DfXHthcw6805BJNjqkk8PmFM4oUYoAxCD3vlti3vhjEiMa4IMb1qCsaxr5++O1fu
         83Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=gMKJVJIK;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v64si516175qkc.1.2021.06.10.14.30.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Jun 2021 14:30:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EE45761362;
	Thu, 10 Jun 2021 21:30:30 +0000 (UTC)
Date: Thu, 10 Jun 2021 14:30:30 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Petr Mladek <pmladek@suse.com>
Cc: Martin Liu <liumartin@google.com>, Oleg Nesterov <oleg@redhat.com>,
 Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Tejun Heo <tj@kernel.org>, minchan@google.com,
 davidchao@google.com, jenhaochen@google.com,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] kthread: Prevent deadlock when
 kthread_mod_delayed_work() races with kthread_cancel_delayed_work_sync()
Message-Id: <20210610143030.f599946ec11e1eccde6af4f0@linux-foundation.org>
In-Reply-To: <20210610133051.15337-3-pmladek@suse.com>
References: <20210610133051.15337-1-pmladek@suse.com>
	<20210610133051.15337-3-pmladek@suse.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=gMKJVJIK;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Thu, 10 Jun 2021 15:30:50 +0200 Petr Mladek <pmladek@suse.com> wrote:

> The system might hang with the following backtrace:

Well that's not good.

> Fixes: 9a6b06c8d9a220860468a ("kthread: allow to modify delayed kthread work")
> Reported-by: Martin Liu <liumartin@google.com>
> Signed-off-by: Petr Mladek <pmladek@suse.com>

Was a -stable backport considered?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210610143030.f599946ec11e1eccde6af4f0%40linux-foundation.org.
