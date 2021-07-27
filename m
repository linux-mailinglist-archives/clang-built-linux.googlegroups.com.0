Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBPVS72DQMGQEZY27K5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B603D6E08
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 07:27:28 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id t15-20020a17090ad14fb0290176eb5a6cf3sf6574906pjw.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 22:27:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627363647; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZXyTd4F4nOjI6lC4yJmO2ysHYHdzSu8hs+E8+Bit87a2aI5RA+Sb8gECGETHhhus18
         4Yq+Mu4gDYSrH9or8jl5JVGpfffJ4QkoAyVcinfYngezHOA2e9CJevjgVSe2PJX23+m2
         vRfoWIlWFNVE8out9rJFjWazeNOHF1IU95Wwzp+0FZI4Wq/pHrdobxRd9w2aMsvw0WNJ
         mIxxIagMcdmBqFycqLa9SaiEtEvAnKxp3IAPKJeuNOjzkSRr3k0fu0xbz3RjnDK733aH
         bRbzvTtA2kvT1e26Xmt9bSFONZzLrensG1x2HNW7FordONDzzPrbgk8v7VtuBI5h3FuC
         LPRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fFx57RCHXeAP70JT2o5w6ILFdJHZQuPS1Vvs6rz2E+4=;
        b=g3YVJCpauyLsifR/qk7qaRDb+sa0d/WcxiS0sxmaOUufZGYQ4DHXg4SDKHMro3aUTy
         lxLOc7kl83N93eR2NXi1plFIlejbaB3jDZovk/jEUqF3lnXtiQNwZtbVmzsKwonHZJn3
         NlrNYnVYw9nOblxn8KB1HXN4X1UNwauQZAmPukbnx+4PpZNcDFfKXPmLYjisYoQPvj8J
         YthVMo7FYCZI7sQldy1J49uklWt29wOFYhIipNydyV5Ea5rHypl+v5bB2Q4DqwOjhqHU
         GGXuPAj7XOr31IiECsnT/vAd5tlNPkuX6Q4UX38JLxv8uR0eQYBwEedUe3YSXy8mYZ/W
         jjWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=pnJvORGf;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fFx57RCHXeAP70JT2o5w6ILFdJHZQuPS1Vvs6rz2E+4=;
        b=k+g1foogvqz+cYggu6fyJVkCEUGXGrRrLYUYTAk3LQc1JWtleT3XrsVHUF37hoNP2h
         8Na4p+zVJMinzdHKxcrCwSQBvG6YL41d1kl1eaRYdh4JYhXswYCKI0Wle4nGTHhvGsCn
         lgpArgRFT3GLRaDPqOW+seiTLcU2XaX0KK7Xd11qxmUF0LiqlVNsEdbGl2swiQFKviEl
         KExuj4UdOh28oOBqPJ2wtm69gLhtIpk99vJOXqoxfeTg7rl6liggROC1lWgi1uQvJd2S
         9xGVEShHgaWezxwHE/jkLZklAGNa2V9kx9ARVNc3AeC4d2mOTsILttmC2UXAIj5T1E0U
         X25Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fFx57RCHXeAP70JT2o5w6ILFdJHZQuPS1Vvs6rz2E+4=;
        b=ikT7EfahGmqUSeYzIOmrXsjMz2ynRm55kqNPwqXJTBWiK18uWNv9ZAeg4mQpTPDJJI
         MHAnd0PG3mgZZ+ynbGypxu4ipPW6X0M/Ybz0pItXmGzC+UaMocMUqt/RGVbXzUlmUlhj
         aZE+BHuVOnYQoVK31Jo5rBhdDvvACUlG7KTlU6c+y8q3zv1dcDPirrPZo2d39m+TqQbU
         Gtav6C/p6jQcDIQdDF2Vp+XbT3e6btM7c3TxQBBnYrp40GMjfrxQCaLBBCJyZxXeTXpV
         aGotaYgg7vf437dmSsY+pkAQ02+0jmYkaVPirdOGpw3wCpNUR/Vu8kRgCM95fcD3S9de
         e2Aw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533X7MmGz3I0gSWv/e1VtrMkkxzh+lFkl3Q2dV7DlStsJ/DSEEaz
	mbNlO1lx1lLT/EJG5vZOduE=
X-Google-Smtp-Source: ABdhPJzn9K858ozdd5GFQOj2D2CIqnHKumq4DfISFzgcA5+RhP9hwyqB9NFt77DpRJFlwClAB/pwAg==
X-Received: by 2002:a17:902:868b:b029:12b:84f8:d916 with SMTP id g11-20020a170902868bb029012b84f8d916mr17422053plo.75.1627363646949;
        Mon, 26 Jul 2021 22:27:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed82:: with SMTP id e2ls10042537plj.2.gmail; Mon, 26
 Jul 2021 22:27:26 -0700 (PDT)
X-Received: by 2002:a17:90a:af8c:: with SMTP id w12mr9488071pjq.109.1627363646351;
        Mon, 26 Jul 2021 22:27:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627363646; cv=none;
        d=google.com; s=arc-20160816;
        b=G2OG3MZg3bM15iW/yIzHQy6fShvnD4f63AkS73sjxNnSmRGoRyRadOXOnHc0/STNR5
         9PWd/u6mkX/OKL5Vdt2LbCYcnL+J2nGdIIjOg1RyOFh3NrFj2kl8YHoSO0xjEznS2N/d
         9k9/MlfevCTzsnNLU/8Ky382Fb+VYPlZN08HP4EJs1Jj3N9kPlUYB8c0D8+RRgKutJxw
         wiy6PW2okt/UK00HY1RY1TYYJcz0jiX5go56H+mhewvihPL0SNj4N/L3Kz1K14JJulWN
         idS9OOduAiWI1dmOJsiP50sqQKchI9rA8j4BQ0ENHHIkNqBvMsAj4/GerBJZrIRFsF+j
         az3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZTyPPB+/24h7aSJ+Gcxs4ia/PINExYMIXP7bvUvgtSM=;
        b=Kgfwd06anMXNa1gij/OumXEACgTv8basNtAFqhTEamwv/3ZX7qmK2NBTo9D7UA3J5I
         KdIJGz3taRn+Qew0czBUr2TscOB9uKMJ5O3vu/fN6J48l6dll9EDPwnaQ3XN+04Kh0bZ
         Mf1RFtj8EFyIRqE3mw7RF9horoJhEk7ulmMVaENJHQs74q8xeEwz6FuIVMjdjis2sgp3
         SgkqgB/kzAkPniRoZuY0h9nnSXnX0c2qUdqbLZTBGcBX0gUsITxlTT+vJseYx5Nq6i6P
         9Voq14nJLRWQsC1QiYSNWR9eOvGxyLm6XpZGxJbCKoBeN/VnXg7DxZZ8qaARevJdgM8y
         1kFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=pnJvORGf;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g3si120850plp.2.2021.07.26.22.27.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Jul 2021 22:27:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C8747610D0;
	Tue, 27 Jul 2021 05:27:25 +0000 (UTC)
Date: Tue, 27 Jul 2021 07:27:23 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Bill Wendling <morbo@google.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
Message-ID: <YP+ZOx8BETgufxBS@kroah.com>
References: <20210714091747.2814370-1-morbo@google.com>
 <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com>
 <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=pnJvORGf;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Jul 26, 2021 at 01:47:33PM -0700, Nathan Chancellor wrote:
> + Greg and Rafael as the maintainer and reviewer of drivers/base/module.c
> respectively, drop everyone else.

Odd no one cc:ed us originally, I guess they didn't want the patch ever
merged?  :(

> 
> Original post:
> 
> https://lore.kernel.org/r/20210726201924.3202278-2-morbo@google.com/
> 
> On 7/26/2021 1:19 PM, 'Bill Wendling' via Clang Built Linux wrote:
> > Fix the following build warning:
> > 
> >    drivers/base/module.c:36:6: error: variable 'no_warn' set but not used [-Werror,-Wunused-but-set-variable]
> >          int no_warn;

That's not going to be a good warning to ever have the kernel use due to
how lots of hardware works (i.e. we need to do a read after a write but
we can throw the read away as it does not matter).


> > 
> > This variable is used to remove another warning, but causes a warning
> > itself. Mark it as 'unused' to avoid that.
> > 
> > Signed-off-by: Bill Wendling <morbo@google.com>
> 
> Even though they evaluate to the same thing, it might be worth using
> "__always_unused" here because it is :)

But it is not unused, the value is written into it.

So this isn't ok, sometimes we want to write to variables but never care
about the value, that does not mean the compiler should complain about
it.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YP%2BZOx8BETgufxBS%40kroah.com.
