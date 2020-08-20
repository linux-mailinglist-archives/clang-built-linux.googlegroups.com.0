Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTPO7P4QKGQEGX6L6GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A5824C7B5
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 00:21:03 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id mu14sf59390pjb.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 15:21:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597962062; cv=pass;
        d=google.com; s=arc-20160816;
        b=edzJjD8KVNluxfPoWOquYsXXqESbuPDJ2d1uBZ3LCNCQnE8T+Ym+C+JC1JOmXgjkas
         Ji5K1mCPNli876xt4HIULy8/cuYLCAk/tB2d/8XE5+DgrNETYs9A0q8ZBWInmgX4rrRU
         HvXqBzm+sKoRx3bN7EisjAnqIq2CF6shCv4742BvgRzNoYoxeEhmbxI7RT+iLLZvu0FB
         zLYIZxHr7Jq5Q5ejHVVbl/fywsLpLeSKQnNApI4MLAA1nT0xNh/++NsMyZN8JY/ODa+7
         3pd8vfARu10KSpIbiq22KwwuinJ5AZRDATEbUPOHrGYNJRD366Qk4RWFjt4sp1q1xGV0
         THvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=4RV2VFdqbBmTheoVSOjLS61wzGwoslKbjOqJv5bBfFc=;
        b=Ra9wOQNKcjB+8GaJMjnGpFC9eVwoGcs4lkdCp805UvjCw3+CfIGcPICZL/3XSyiy+R
         lCr0LAe/8MRPVsE/4CKaJHjdNpA+kM9ujVEwJQHIKd+BxOzWNyLj+CN96TQyxHKH2UGr
         8edRpRxDqt3rfM5pbaVukH0VRuT1Vk4lAY9HRrmZtcc8XMSabLaz0stfkTl6dy2ITlhe
         L7DOOLTDAdwBFnpYfJ8DQgzDfyjQWeeh/J7G7bFoyH42kkNwuysvngog8fJ02Aoxqnr2
         gd0TlPJAdluch13lj3b8mCddNFdc8CGibvtIHn/9UU5wlU1YkHOsEFVJfoH0C9G4ccPS
         W2tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gksUqMBT;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4RV2VFdqbBmTheoVSOjLS61wzGwoslKbjOqJv5bBfFc=;
        b=k3u8K0zvYcv284Nb3CcQrgQls1pj0+xj/0eKftiiJ8UOS/+XL0mYG7xvCB3B5bMRgo
         MYH0/pMZ5CI/vt5ZSVsZSW3skugLAOKpKLy73h4d3LLrF5EU/TaiE7RF0pUfLW0S9AUf
         Yxg04hlhIFEgapZOqX/FVDNY7FnjJDJzsqk0MLMzY7C64B6+PPHZbGARxn5tZkyB3Mba
         epHytmHe0Zs4J65NI7roqyvO4IqlFwr+xkk5eCTgsUrZ3J15Ag7y9ljKHRyZeDT7Htm8
         g87CZQkLR7LhnAwHYQHiW8+FadEHwHlyUfjq7mxcYkVOguf3mQhk+0FrXOigXNSJF+rm
         W9Dg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4RV2VFdqbBmTheoVSOjLS61wzGwoslKbjOqJv5bBfFc=;
        b=QJVpXCwhxEAm+G6ncp0cZuZnnK7FoOiy7HGmf/gamIWanlAbSdowHTKBwj17ESdKwH
         tU9wOonetGNUZTMfKbR+T04caXvyO+vnkp3zbgPnANHZKj14AjXI+cRfyWbxX7eLORpU
         kkx6o9mR+9mkVDzli9ruo10QdfDCp2N9lm6aGt/6Ksx2ql/euRnXPrJ0jygA2MQQfFqP
         6LymBAPudCw2K61djvsHaBj+NFqrF3yfU/5fB/x8gM9O5clzeYA4W8G25wP6Zy+HgG/J
         famJU7pGDsDww6JcNTkZMs1bq1jqS5VhGpRRAt8NwsiwvyNq2B5iQ7tHzGyLn2bIkyr/
         R5TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4RV2VFdqbBmTheoVSOjLS61wzGwoslKbjOqJv5bBfFc=;
        b=pVy0AS646mPswb5nnRabxPA4c3RsYWlpHogyeiejY5nH0jXyK0alepLaTXQC2kuS2+
         rAeppTGKh+qHcX7zYl1PrPxG3aS/zpQfh21mACPhWk+6hWejHC7DESzHBwApfITSbEGk
         hnmPGUhEwsvnnyQl2rrIK+Wnj4AefFX85oDivdkoP6H5UUAlmYD5yxbJ1jwEUmh5MgpY
         HD/Grn9xKPfOy6u0Ms74FusCWJulyhggGOESOpoxXPTAaxWYyGpg1rG3orAdzOVWsIbS
         NhexILZj5933qgFQkAzCr6wLavmXtyH+30X6CNmrWB8++VdagWZefsdQ+BkfGhcDwwMr
         V6ZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531AgdAAaSXocytfUDaC4JaKQrYGCUPquiwAVKnIRm3ux89xZgq/
	OhdSkdbA/s+RScnKJ6vK0iQ=
X-Google-Smtp-Source: ABdhPJxXvTpGvHM1af/5KZuXVnL34xkD29i9Y7x2h89T+k6V46Lub3poVNFg3iR6Jv+Mj0XSyG0LRQ==
X-Received: by 2002:aa7:943a:: with SMTP id y26mr704709pfo.244.1597962062159;
        Thu, 20 Aug 2020 15:21:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:79d3:: with SMTP id u202ls370301pfc.1.gmail; Thu, 20 Aug
 2020 15:21:01 -0700 (PDT)
X-Received: by 2002:a63:c902:: with SMTP id o2mr168533pgg.264.1597962061610;
        Thu, 20 Aug 2020 15:21:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597962061; cv=none;
        d=google.com; s=arc-20160816;
        b=CfLUtfreax4oVPFnAaqWd69UpxyURxyznXp1Lf8VPT4Tm1D5aQ42Y2DmOGTBYdbRHU
         KsB72osk/x/si+5vHr6HeM1/NezTY9oWxPc/J9rZrB4odBh6wNwO1bJgINBC7/QE8cxA
         CMtEi/eD9Fa8EQvO5tItKxUEYJz2GfviUvclpKiENLcSkq8lYe9EEf9IGSVo9w8zW2Ku
         r2qVtDuDdC+iw3OteE95FCI8sBL5qWyJcPt/P37XjHtFlcZ6cxDw7R+MfRUhM7pvMFkb
         KjSV4b0+nxFCG+QZB07AMrqgtPvySI3yBf7X5DT8UpxjYv7/oZJbqRx0qVy3aO+ooZqz
         0LBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UFbUcaXhdibf9fMHCSPTDSV1bpL4d5QWyfKneZ3Yr/k=;
        b=kaxQ3nUwbXyRmcCwu1PY0rGLpVMEAdZPSWknH7k/J2/X/g3QEHkry8i3D/70fadmzU
         4EjmnZVRNioTR8b02tRRdk2X0WQDywdlay1ZvkjLbOV///dW0UAdPFgNMN58a6iH14gI
         BKbsUzhl24lKi4uyzuL2KwysOShpWIp+toreUTPmWFvTPbIKpin6Rt2Wiosi9bRlIC3t
         QH6jCXZhKli0p90fIrdDEjWE2ISiDJybqPIT4DLDIDUusq+fO1f5EPYAQnK7zP/adDdn
         PDKb5t7SQxlc3gZ1xN8NbA8/KZMV2Atrc7YjxfdDlMEhDf7vBMm0bl/E6JALPf2EsAmz
         25Cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gksUqMBT;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id x18si1702pgx.2.2020.08.20.15.21.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Aug 2020 15:21:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id g15so1679730plj.6
        for <clang-built-linux@googlegroups.com>; Thu, 20 Aug 2020 15:21:01 -0700 (PDT)
X-Received: by 2002:a17:90b:8c5:: with SMTP id ds5mr365851pjb.110.1597962061288;
        Thu, 20 Aug 2020 15:21:01 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain ([89.46.114.77])
        by smtp.gmail.com with ESMTPSA id w23sm49072pgj.5.2020.08.20.15.20.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2020 15:21:00 -0700 (PDT)
Date: Thu, 20 Aug 2020 15:20:59 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, stable@vger.kernel.org,
	Matthias Maennich <maennich@google.com>,
	Michal Marek <michal.lkml@markovi.net>,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Makefile: add -fuse-ld=lld to KBUILD_HOSTLDFLAGS when
 LLVM=1
Message-ID: <20200820222059.GA10485@Ryzen-9-3900X.localdomain>
References: <20200820220955.3325555-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200820220955.3325555-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gksUqMBT;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 20, 2020 at 03:09:55PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> While moving Android kernels over to use LLVM=1, we observe the failure
> when building in a hermetic docker image:
>   HOSTCC  scripts/basic/fixdep
> clang: error: unable to execute command: Executable "ld" doesn't exist!
> 
> The is because the build of the host utility fixdep builds the fixdep
> executable in one step by invoking the compiler as the driver, rather
> than individual compile then link steps.
> 
> Clang when configured from source defaults to use the system's linker,
> and not LLVM's own LLD, unless the CMake config
> -DCLANG_DEFAULT_LINKER='lld' is set when configuring a build of clang
> itself.
> 
> Don't rely on the compiler's implicit default linker; be explicit.
> 
> Cc: stable@vger.kernel.org
> Fixes: commit a0d1c951ef08 ("kbuild: support LLVM=1 to switch the default tools to Clang/LLVM")

Minor nit, "commit" is unnecessary here and might be flagged by some tag
checking scripts.

> Reported-by: Matthias Maennich <maennich@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Regardless of the above, this should work fine so:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  Makefile | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Makefile b/Makefile
> index def590b743a9..b4e93b228a26 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -436,6 +436,7 @@ OBJDUMP		= llvm-objdump
>  READELF		= llvm-readelf
>  OBJSIZE		= llvm-size
>  STRIP		= llvm-strip
> +KBUILD_HOSTLDFLAGS	+= -fuse-ld=lld
>  else
>  CC		= $(CROSS_COMPILE)gcc
>  LD		= $(CROSS_COMPILE)ld
> -- 
> 2.28.0.297.g1956fa8f8d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200820222059.GA10485%40Ryzen-9-3900X.localdomain.
