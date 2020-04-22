Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTUEQP2QKGQEU5H2SUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD0F1B4FF8
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 00:16:48 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id t26sf1962387uar.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 15:16:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587593807; cv=pass;
        d=google.com; s=arc-20160816;
        b=w097TeFIkPtxCJI89z/eQMlZ6qY3HSeufNeq/F5pHUcnMiE024LsY4Y4sBUONU/1CG
         5pUWqAh17HEb3IqsmmAOVLo1jC8F0h/TaUi9/pPmr0f7Xn3+nI+FvnxU4KieyDbd0ter
         pP2nEkpH8uxhJxpGgBUtJIYsgdpA5+i53YrdplHfEojfWECPHyI9eqqJYLqfym+vvsje
         9InojULtNTWRI4u61Qs/R7XektY5Whg73wTdtc6mJ+KmK9agfk8gzX2vCagZJ5/kf0J5
         bUgaZCvPkMEiDlmzRTxB8FoMx6u939IENrAJ+uwL18bHSPAHhUyy+l7NV67FG+j5BT1f
         ZbCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=xNMwbcq/cPJaCvvOh9lZwWlz4DuCRpBDuP+L1qDIWwM=;
        b=PGmYFNhArqmnLqi1JP7rMiFcx65DHRHt1aBdLZ7zHjBURy6h/pXVbfMnY8sTLrlIeP
         h+r1gQkJw4XMCgn8TewPFEcBPi5UstYxGYBKo8i3fxYTGiTuo2o8U423wnKFBMCuLNVQ
         Kbe0LNc6LNWdQAeSRtgZW87GXL+f+4YMFA7vOZA/JLJemj7WcpKtw3cTfjBd5j3je+Wk
         +Bq0IBr2fKZPaAT99Kqt9Msm3o9YPPpchAcgwj8bsdH1n3lCloU+tfGkLHOgeREAlTta
         QiNE0r2ngjfbwJNyta3Ofj9NwvQDCpvYlnaPowj2mDpGfAZucUdIVP75dn/xWVxKQznj
         Sn0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UnJh9sM7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xNMwbcq/cPJaCvvOh9lZwWlz4DuCRpBDuP+L1qDIWwM=;
        b=eU/2xzt0ZEeL/l8mTBB5Lqd0EI6QRk08ZknfASD97UljbqfiXy2vGnyOOrYVWHMXSg
         Lntf4tLEj6yZFCEMINl3dD9rvaQ4h0IkLuxHjDEqcecK/mOUJDP80eJfW/B3iHrigB3V
         6uu2sqe+HFVjIziLXIwyf/wgbsmsB6kIFxZbjgHXzHUZDpmNWGJTMR1npef+J8KBnhoO
         rA+NTwFSmDYKPq7CykuIPXoIDu/i2jCWoTXNDcj+tj2mGaXAmvKYPN2lvJ1G/kassrO9
         p+JSuDqgVXXB/9xbRCsgm0ZrEkCm3nBof29z4DkLuZUWxNTXFZSXpCJnokTTbuIN74i+
         /FGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xNMwbcq/cPJaCvvOh9lZwWlz4DuCRpBDuP+L1qDIWwM=;
        b=MZPjvtmAvCIwoek0kHGBmf468lMFl6lzyv3e58XS1aJfpesAH/CxPDhpaPdThZBcBj
         vUYEm0US9OU5dFU5ig/eaaf66Pz7faGNMLj++4rd0x+iBobH+OjinWU7d+jfKKgEsELN
         sw8Cf8LfCBKMA+0WSB2o7cCyTR8ANfqQar5CY7fk539aW80uiY0l06BSbUCotnbWT+dt
         vf6vK03cGsmnIm+UNM23RB8pzlZeALUUWntRhwaoIR3kwCfDTRZFyKuF7+HZiJwxnQXK
         dFq6i6EIYC/rpx/ibK2Yb623Y+yCOsxerYaj+uFTAjWHQ2+6WvGmqAcE2Qk6Sy+5VHeC
         nyMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xNMwbcq/cPJaCvvOh9lZwWlz4DuCRpBDuP+L1qDIWwM=;
        b=DaDjCM0cgEIcHA9SSpcn4XB1NZKAY9yb40Gnc7AU3fZiusXtrkCrLFf+dXCfiH213K
         +RJHbrq1EGvII69wtXKIoUNYAzXCivY49z18CufmwADkV+SRN77SLV7A3SC5FAy0Bd1R
         +KFdCeBC0E6Gjb7NNI+3nLL6w1ZYKk1oDZB4D/YzjG6LofBioq+vnI5HQHhx0d248Dbz
         72gE4eHbsG74li6f6z4ma8+Q5JOE5ZGu4bdRmn+0jumSPIKBRgXTmDmD77FMVf8WOq1W
         1eWF6aI9OHh0PT/f7ai5OGttwjMHjAsAtbFpb1pJsmlHMSmmQe70vs/nlWGkDKDjmzqW
         UFGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PualcWzhQTVtUSyRltH6I91uaB6MfJhATJ0+P+sbWroimEKJDf4y
	pMAv1IRhvhc+OX4cjrp7QtE=
X-Google-Smtp-Source: APiQypLM4h16Cf4jzoUfOFp9CP8YBRnWpkGQUKTQlRd5ny7emxbR8UfStsl8Jddf3n5PkfCluZdIEQ==
X-Received: by 2002:a67:eed0:: with SMTP id o16mr931052vsp.170.1587593806842;
        Wed, 22 Apr 2020 15:16:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:66c5:: with SMTP id a188ls595745vsc.5.gmail; Wed, 22 Apr
 2020 15:16:46 -0700 (PDT)
X-Received: by 2002:a05:6102:14f:: with SMTP id a15mr892140vsr.229.1587593806376;
        Wed, 22 Apr 2020 15:16:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587593806; cv=none;
        d=google.com; s=arc-20160816;
        b=GQvIzB+WGQ0DkbW0KgTS23VMybfpIkqC9ooZ14CLl1SSEQ3eFMZ+EMcuu4TbL3GT7P
         +bD6mE+V/VLygJCNX5T28WwhBB1OqEl50sBfMy9FIGbFSbWDz98GQqYBrIh1UMR7BTGj
         lFBeLwkpQa66RdIIB/aHFjf4UIy66q0esWEcuXa3rARBndH1zhkducbjDTZ3teNO6p+/
         CAUp7SGG8qqUVoC2nG6TBfeM4UvZ+qlLremQgIOfdGDP6KfNLMyx9E0tYnI+K1ODigEF
         iTcDY6LPAcqh+wpXJ3YB35Aa5fJrtX36tHfn4UjSUkb6SiBUCyb39IjIWyEt/H7dtDze
         Jcog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hdhi8o/uOWcv18fMCxckchm+UgJLFPrhgXGldfLApj0=;
        b=GiVLHyXfTCZ4IQG14j3fujgq7H3Vx1RbfJPszUfn8UwIoG7/bcG+Wk4E0I9WYqvzzO
         VEyIGPCifJBXCtoyHpfsNP97GTyoCtWBXGHA5zRI+qM8JNt8UQy3BZScxQ+Q8VJhzeBM
         jcAAC+k9wPxjr869a5/BvdtP4TsrBlh29hpDgwPJh15ljc5YWITuqe+6uksy/McaCxAd
         H3QFUpoxj4qepFe+9bZxUTVBAgMH5U0gpkDl+VlBn7uLdGr4TF0Z3pbvbKwGfq6C8tWV
         xl5UOqHh+JsxZjTtG+CZUzdrU75HLo8NW4ObgLJronHhQaZSaLFQGP5hnYSdcCQw2lav
         569g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UnJh9sM7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id i26si17245vsk.0.2020.04.22.15.16.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 15:16:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id b13so3672182oti.3
        for <clang-built-linux@googlegroups.com>; Wed, 22 Apr 2020 15:16:46 -0700 (PDT)
X-Received: by 2002:a05:6830:18e3:: with SMTP id d3mr1034479otf.117.1587593805830;
        Wed, 22 Apr 2020 15:16:45 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 186sm194282ooi.30.2020.04.22.15.16.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 22 Apr 2020 15:16:45 -0700 (PDT)
Date: Wed, 22 Apr 2020 15:16:43 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com,
	"Maciej W . Rozycki" <macro@linux-mips.org>,
	Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Paul Burton <paulburton@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Jouni Hogander <jouni.hogander@unikie.com>,
	Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
	Borislav Petkov <bp@suse.de>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] MIPS: Truncate link address into 32bit for 32bit
 kernel
Message-ID: <20200422221643.GA46781@ubuntu-s3-xlarge-x86>
References: <20200413062651.3992652-1-jiaxun.yang@flygoat.com>
 <20200422143258.1250960-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200422143258.1250960-1-jiaxun.yang@flygoat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UnJh9sM7;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Apr 22, 2020 at 10:32:54PM +0800, Jiaxun Yang wrote:
> LLD failed to link vmlinux with 64bit load address for 32bit ELF
> while bfd will strip 64bit address into 32bit silently.
> To fix LLD build, we should truncate load address provided by platform
> into 32bit for 32bit kernel.
> 
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/786
> Link: https://sourceware.org/bugzilla/show_bug.cgi?id=25784
> Reviewed-by: Maciej W. Rozycki <macro@linux-mips.org>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Cc: Nathan Chancellor <natechancellor@gmail.com>
> --
> V2: Take MaskRay's shell magic.
> 
> V3: After spent an hour on dealing with special character issue in
> Makefile, I gave up to do shell hacks and write a util in C instead.
> Thanks Maciej for pointing out Makefile variable problem.
> 
> v4: Finally we managed to find a Makefile method to do it properly
> thanks to Kees. As it's too far from the initial version, I removed
> Review & Test tag from Nick and Fangrui and Cc instead.
> 
> v5: Care vmlinuz as well.

Tested-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200422221643.GA46781%40ubuntu-s3-xlarge-x86.
