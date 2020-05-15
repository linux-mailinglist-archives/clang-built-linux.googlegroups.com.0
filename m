Return-Path: <clang-built-linux+bncBAABBFOL672QKGQE2HDX5WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B5E1D4239
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 02:43:04 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id k54sf498465qtb.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 17:43:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589503382; cv=pass;
        d=google.com; s=arc-20160816;
        b=Aw0GMO3yBISQ35cv+GcRAoJQjse2Twkuinz1dg3HEb79XQFEr6jFN4FA6/zBB970zE
         wCm18u0FoywEUspWDfTjIvjHuoELFZE/Eo3il6+6or5bkIUo7cdEFyEnhO9InzxyyTKO
         7KbUVHR7pPo4A2T/zJBsk3tmeUokn1Oyv0tzi9s08JFsw4KPN54QzOfqmRK3/+70l3AG
         ioUqZ0jnbiztqre2RgJJh2ADsp4OjUzZg02eMG7GwU1ajvQCJ/43GqG9PXYy1PkgV7OS
         ICMlMUBUJIZk8GvHvb2cugnrjJ2idyASyfA5nFY3mLuhcBadHR9cGGzobu0e7JnXVMix
         RjeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=tRi3oPGkGmWXQpTQ6d9JotDZ/9Boo+9UwMTEB8tpzr4=;
        b=DZx7rNrRhX3F4X8FVF7lXTVQqvYDVZfvydss62EJcxUWVEDV9xNNR/CzzclA2dFAqO
         XUvy2oYy3EE0ZYBFzy3G8epSsVRU+mCv9wIRmBJvr0QYHVOi1I50MarE0XXmKwilfimh
         Urg8v/9SNHdlkz3GV17gABdePq33+ElEdmFTTPWg/4xeFRuK/UOtym7lZ/Yf39KzM4BO
         1O3/tSplZfrLSZDSjeAD7nmOCVbpDXuaq+ta8p6r70GCZkgi+vPsxpa2EpXCzjsIp61+
         JYlza4vSRbGh8s3lOKLl9e/b0G4er2+GzIQrd6yhzXT/tB2kYdlarivtJk8vfSf6JcSz
         ORyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=jUdD7odt;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tRi3oPGkGmWXQpTQ6d9JotDZ/9Boo+9UwMTEB8tpzr4=;
        b=MkhsOdOIwsNGWIJUElTqZg8a3hCtfAErV9ocyygrhbNPS/OxLbyYSjY0M+gNDLjt7Q
         FqCPmTBNXsL0TVcWM/Y2nGyHvp77HuI2Tp77am0eMCb3mEX2Ixm4iNK3BK19lEi5snzv
         7HrRaY+t5cpzZrkVX2v91d1Xk/091r+2oEHvFABULEH02S+2rxJCenyXDuz7uyW1ZBGI
         cO9ZKOCH90vRYiMvP3eG1sz3FEWjd31se0KzoelXG7yDpOlndGXhu+3dXdnKLKBkD5HO
         MpVcLOh9sAVhwLAg9MP+9P8bpYe2nbrF21NOV7DTOkxNIdgfuy5nRevLw8O7CCYcMDXD
         xpFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tRi3oPGkGmWXQpTQ6d9JotDZ/9Boo+9UwMTEB8tpzr4=;
        b=LDg6ltMgQ4ltV0+xVc1I2KZ7oPTcGsnaBPa394QJQxkhipwGio6WbSugy/YhcGXIhP
         mCKovtxlCtgVlx2zJLaP1LQ91vsIyqC9+DyZZiB5nKI3sUt8mm8LngC8WJLQIONOCKK2
         bSuT9sgofos6YGIjktxighB67t53ZHeCNrpEQQH3ukyJjBVpG8chobcUPqvkVqbm6lpI
         7WP2AJqVVDKNfAnYoXhO919dP3+q1rpYKgFQ6JjuA4kc/DcbKe3tJdUHAiiCzJmPoGSM
         obr94VlHKsRageoSgwhDWP6AnycJalAvV6BTS0O2JrPfvBaUatdeqJX28yT0FqwqeuCB
         PDhg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336lOCvVRAL0L6Sb3Bo25V010N797qUXQdvSJKMzCKqxqaOuxCm
	YEB9iXOQyycT3dI3CG/brhc=
X-Google-Smtp-Source: ABdhPJyyoMtdf72e5SYm3kicQ2X9LnN0QSjWrbNBpCojBgg89A5SY82wTjpPO2/IbSD5PutszMU3Xw==
X-Received: by 2002:a0c:8c4f:: with SMTP id o15mr1116367qvb.201.1589503381374;
        Thu, 14 May 2020 17:43:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a394:: with SMTP id m142ls250402qke.6.gmail; Thu, 14 May
 2020 17:43:01 -0700 (PDT)
X-Received: by 2002:a37:a193:: with SMTP id k141mr1036995qke.147.1589503381111;
        Thu, 14 May 2020 17:43:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589503381; cv=none;
        d=google.com; s=arc-20160816;
        b=tiGlLamfQ5rJCXShKFqo7oPuxImLZbhVAKIipFCR9D7xdksOlf1Z3AigrMknZEwt6w
         tw0sXLP2rvCbzqMz3lNGB/a6wFc+arZPJ0JqWPTGG94ccVAWmcP+dO7IZqbABxj5jRDj
         5a9pWpDtUmLsoEUkwmUQ5S06vsSAAFutHcvG6Rgn0aT0xIBf8Vqagd0GoB9BO12e0tCk
         5fWeANNWTNxrtGYCbiv7m8aY6UBVIFdabDYntMa6hqDmbZ3uhXP4uzn7lp6Ta0obYFev
         E003vMZ+CJNz4TRtpWEXWpsZl59HhE8STa0E+H9wYQk9265jLFf3+q7MfUQ9ePrk4R6U
         0wwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=pAEN3YWmHNyYopbj1izroY7IInG57bR+xcNL9DJ7U3w=;
        b=WKK/GMk/8/SJTnUi7VbJdQNRVC059v55Uq1TRhG3P333ES7VRYNywjJo/J/KuE6ses
         +c48gxhyTj19A86lZ6UbFvoD7K3vJFcvk+9DnhEbybwy6i42dS2W7fNLo5K6oklM3Uzh
         ea4yw3wz9yb113YuxdYq1T83R4tM8OElsY1bQFMt/LrByy7JUbF+QY8hT3WoaxGElMXp
         3Vtr2lo3QJtoaGu1Q1yCeFQwnXqyyOiKcOOUHNTw+LuKkO98k47rS7l+AL6bKyFS6ohG
         +LwRh6Xbq6vxSOrr+xfPpNwojZYPoMPReQKc5bgZtnW2wh775Ei4kZJrfdyHgm5CsK7i
         rGCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=jUdD7odt;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id p187si46564qke.1.2020.05.14.17.43.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 17:43:01 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 04F0gjsg011459
	for <clang-built-linux@googlegroups.com>; Fri, 15 May 2020 09:42:46 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 04F0gjsg011459
X-Nifty-SrcIP: [209.85.222.51]
Received: by mail-ua1-f51.google.com with SMTP id g35so171479uad.0
        for <clang-built-linux@googlegroups.com>; Thu, 14 May 2020 17:42:46 -0700 (PDT)
X-Received: by 2002:ab0:7298:: with SMTP id w24mr973182uao.95.1589503365097;
 Thu, 14 May 2020 17:42:45 -0700 (PDT)
MIME-Version: 1.0
References: <87imgykunh.fsf@m5Zedd9JOGzJrf0>
In-Reply-To: <87imgykunh.fsf@m5Zedd9JOGzJrf0>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 15 May 2020 09:42:09 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQKz9Cu2aPxM2xo22Y_1b2+E1NQibi0ZgLRyGr5+ZLWoQ@mail.gmail.com>
Message-ID: <CAK7LNAQKz9Cu2aPxM2xo22Y_1b2+E1NQibi0ZgLRyGr5+ZLWoQ@mail.gmail.com>
Subject: Re: [PATCH] kbuild: compile_h: fix compiler version detection with clang
To: Yuxuan Shui <yshuiv7@gmail.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=jUdD7odt;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, May 15, 2020 at 7:43 AM Yuxuan Shui <yshuiv7@gmail.com> wrote:
>
>
> In some setup clang will print a line about CUDA version it detects,
> like this:
>
>     Found CUDA installation: /opt/cuda, version 10.1
>
> So grepping ' version ' matches 2 lines, and results in a broken string in
> compiler.h, which doesn't compile.
>
> This commit adds a "head -n1" to fix this problem.
>
> Signed-off-by: Yuxuan Shui <yshuiv7@gmail.com>


I do not know what to do about this.


This problem had already been fixed by a different
patch, which is queued up in linux-next.

9a950154668729a472d17b8e307d92e7c60f45f7

This patch
https://patchwork.kernel.org/patch/11505803/

So, the future releases will be OK.


For back-porting to the stable kernel,
your one-liner fixup is simpler.




> ---
>  scripts/mkcompile_h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/scripts/mkcompile_h b/scripts/mkcompile_h
> index 5b80a4699740..8e6b4fc6fdd9 100755
> --- a/scripts/mkcompile_h
> +++ b/scripts/mkcompile_h
> @@ -62,7 +62,7 @@ UTS_VERSION="$(echo $UTS_VERSION $CONFIG_FLAGS $TIMESTAMP | cut -b -$UTS_LEN)"
>    printf '#define LINUX_COMPILE_BY "%s"\n' "$LINUX_COMPILE_BY"
>    echo \#define LINUX_COMPILE_HOST \"$LINUX_COMPILE_HOST\"
>
> -  CC_VERSION=$($CC -v 2>&1 | grep ' version ' | sed 's/[[:space:]]*$//')
> +  CC_VERSION=$($CC -v 2>&1 | grep ' version ' | head -n1 | sed 's/[[:space:]]*$//')
>    LD_VERSION=$($LD -v | head -n1 | sed 's/(compatible with [^)]*)//' \
>                       | sed 's/[[:space:]]*$//')
>    printf '#define LINUX_COMPILER "%s"\n' "$CC_VERSION, $LD_VERSION"
> --
> 2.26.2



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQKz9Cu2aPxM2xo22Y_1b2%2BE1NQibi0ZgLRyGr5%2BZLWoQ%40mail.gmail.com.
