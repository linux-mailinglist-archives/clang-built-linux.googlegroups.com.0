Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIVH72EQMGQEAXVLAUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 228EC409BC8
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 20:08:36 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id u13-20020a17090a4bcd00b00198e965f8f4sf29943pjl.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 11:08:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631556515; cv=pass;
        d=google.com; s=arc-20160816;
        b=eCpNuryEGUNkyzx7vFT38Xk2s5OBxsTfEE4fyu99XtQgiJlKKuHTyp3kEI95ZTiStX
         7+E1J+4edfy6Km9H9jogrdV7Q2oZcfI3q6HpsDMlhFyHTCA++5BwRywklc8FszuzZ+if
         WQjOQqm6vDFf6SgHYIArC8bwp2v8Ueq5wjK0QwikvtmBsQoFzn645zMd65AreknoaG0j
         WYqLVihUz+zl2skK9IK+JIZUAQrNPgpbWK4e58MtPmWAZ1a/D7AxJF6rF7VMiU9pD/hA
         W0QVuP8HvsGC+0IUWGXouCj9pR8DoS2aNAPCePC3emwrQgDs+L0dzuu7LJALJQ1HWmcB
         qqqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=d1u+dlW351i/vZ+7f49pRuRf9mPoVea3gC58ltZbXHU=;
        b=Izc+9WZUnHmW1Kz1xCNyl0etUPRm//iG75pwSfVRKnQmdoHPGs8SFnPfzNQRX0JIYe
         DB5d4AdFGoM7fMmFGMyhR+cpdf1UtnCqYII0LYuZkkD4HLky2r0o/SADCoag3xuF/ypK
         gMzGINApDi4Cv8oHwUT+RL7IsJy77/mdrYJGIXC3nNuGDt+/BGVS79CuP8Kfkrz7hoL3
         dr/82KMcuJemmj0wO2rTBcJK03MjOvvgpUZfz/XSEhJwq0IRBMy05zSNv/S4xPZ1DEgX
         nz4lzqgV3yW43PMMHgZ8TjF1G7fibuEpvVVQTyEpNO+x6VS0E0/bbK/mef+MgO4azU2Y
         cUgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ebY5qZQg;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d1u+dlW351i/vZ+7f49pRuRf9mPoVea3gC58ltZbXHU=;
        b=gd9QeGbg6drLpDAUVoQHLVVybhQ52lY5YfDK2ALQXnPIV9vEVw0B5r+86g172C0o2v
         Ck5x3Aa3vu3T2nRa3LWbJ7SZ9YgEBrExvg4tnT81oDwsIBW0gSHpgzGm34pp7kzHL/QM
         pB+ID4bST4TwqnktgHmWLmJOP0X1DqNI84zeHb2TNypzQIGnvBAloRZJLnvoG+gdWTFK
         sJcC0jdV9pSLW3UjkhYff/GyldDWXdggG1QLA4Lhb5yvU5jnbmpEcw3xvgsgFD2T2YB6
         udhvFYGNl9yZUQVN5KGOZgQjDIn/yeur+tS98eo2YlDTeeU6nrgM74gzea3dtrkeP/50
         4sPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d1u+dlW351i/vZ+7f49pRuRf9mPoVea3gC58ltZbXHU=;
        b=STJ/oZIEarCjFtvV6tp043wiUR6rt1txf7seR7DIpB3Oj9addFrVk5sDcyvGW9Ws1z
         YOG+UOAr9qYcuEd1Hth6/SurljXD6fqEnhPM5lez8ZX3+P6Jx8i3ctV+DnG4HZcRsa6x
         3/vujFsNxbhUjp4im7nx/cu2Ztdup8RjInoShH3lJwQH7fYoSOj2q0KlDPQHOReXKEGi
         5JlQKFWhG0egALcPaIyloqKUqwlK6dvGMPvgLdRN8Ngwd7pZYQrgT41E6oPvpB+ZJ/Uf
         Vh+LgQ+D2ENSLhYEMUhYMCGHn2EkMfTgf1v1ywBsACuBJxQVTG5jiiLbrPMZKpEUWjfy
         DBDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335Fx1PX9mWmTvD1M6dvYXvH4CnmKM2omairKkJbIeRkB5prOD4
	mQ5J+J4/tof9Sbind/NEDoI=
X-Google-Smtp-Source: ABdhPJwBSfKKgaIO1QibzZWbbOOyeilSCvuQRjQMHPreeIVMAvNBEprTVluEcLHm8zE0zE76AMYzmw==
X-Received: by 2002:a17:90b:4b07:: with SMTP id lx7mr867947pjb.103.1631556514856;
        Mon, 13 Sep 2021 11:08:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2c01:: with SMTP id m1ls3997088pjd.2.gmail; Mon, 13
 Sep 2021 11:08:34 -0700 (PDT)
X-Received: by 2002:a17:90a:654a:: with SMTP id f10mr823321pjs.94.1631556514307;
        Mon, 13 Sep 2021 11:08:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631556514; cv=none;
        d=google.com; s=arc-20160816;
        b=RnboqH24xo2K7CQAfr6kkqDJuTGHwSh19NAOQDMtgei6PrHF8N06YeY/T7cP1skqLv
         Sxjquand5pGMX7Lnz/lTPt4fRd6I41g1OhqzEUgd7YExwe18ougYoraJsPcjNIhMSwCu
         bcG3rh5Jh21Pn+kqpt9fzylKJJWN5AA8/vtJJZqpQ8LZCbtzzXG0AGo0s2sINu6sm3R7
         2eTrKJJzjiXvAbpb8j3SyfliSqLTIIavy+nCAz2R4toqhkLweaMywK1jTrkX8I/5tjo7
         PHFdeyI3HJe1koufbvgYBEDgZavoOW/OztMoLanw15mWcBaM0HZGhrIHT2V8nA07lDIJ
         JTMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yZb+6jHpLXgDS+RjlYVLfFk/TtsBuHsSO+ulaD2ZrcM=;
        b=hyxM5I6RoYTOQ17GTD0OmELQLrsi+YoeQFQl0tN03xMtepwP5OOJyFueP5JGBZezR4
         dJCVt++ZU6sMR+cZlASd0jMccKocj+OWvDXt49qKLHFi62zmwLcpjFQrcDY7EBVO0uD9
         vcikKz1QFZlqDY6chWurMPxXRP3WmBCas5nIN3N/nuFSsAKmZslmUptfHgy6pWm+Dll+
         rzRv2UtqVS9xyw0jf1Sg4se8oXoNhNay6Z/TOBZDjcQ1KsaC5pQyAFHuBMDO/W88G6vH
         fx6oNbrY7RK8oLEQr0K0fNIBrRela9dmeqLt8hzEPvjciEcShbGDulP7T6GdS93BsfVp
         iniA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ebY5qZQg;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c6si591793pjg.1.2021.09.13.11.08.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Sep 2021 11:08:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1037560EE9;
	Mon, 13 Sep 2021 18:08:28 +0000 (UTC)
Date: Mon, 13 Sep 2021 11:08:19 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, x86@kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: "H. Peter Anvin" <hpa@zytor.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com, llvm@lists.linux.dev
Subject: Re: [PATCH 0/2] Harden clang against unknown flag options
Message-ID: <YT+Tk55IKG/PyYgr@archlinux-ax161>
References: <20210824022640.2170859-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210824022640.2170859-1-nathan@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ebY5qZQg;       spf=pass
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

On Mon, Aug 23, 2021 at 07:26:38PM -0700, Nathan Chancellor wrote:
> Hi all,
> 
> This series cleans up an issue that was noticed by the kernel test robot
> where flags that clang does not implement support for are
> unconditionally added to the command line, which causes all subsequent
> calls to cc-{disable-warning,option} to fail, meaning developers are
> flooded with unnecessary and pointless warnings.
> 
> I hope the patches in and of themselves are reasonable and
> non-controversial. This is based on Masahiro's kbuild tree as there was
> a fairly large refactor around where clang's flags were added so I
> figured it would be best to go there with an x86 ack since the first
> patch does not depend on anything in -tip.
> 
> Cheers,
> Nathan
> 
> Nathan Chancellor (2):
>   x86: Do not add -falign flags unconditionally for clang
>   kbuild: Add -Werror=ignored-optimization-argument to CLANG_FLAGS
> 
>  arch/x86/Makefile_32.cpu | 12 +++++++++---
>  scripts/Makefile.clang   |  4 ++++
>  2 files changed, 13 insertions(+), 3 deletions(-)
> 
> 
> base-commit: fb3fdea450305d932d933d7e75eead0477249d8e
> -- 
> 2.33.0
> 
> 

Hello x86 folks,

Would you guys be able to give me feedback on this series or accept it?
We are continuously getting false positive warning reports from i386 randconfigs.

https://lore.kernel.org/r/ece61908-f8eb-4c45-5d5f-bfc52f3b8f45@kernel.org/
https://lore.kernel.org/r/YT+RqrkQAOVhbkWu@archlinux-ax161/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YT%2BTk55IKG/PyYgr%40archlinux-ax161.
