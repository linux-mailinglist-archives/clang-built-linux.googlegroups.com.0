Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAPZ3X6AKGQE3G4UUWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1AA29A24F
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 02:48:50 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id t9sf832485oon.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 18:48:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603763329; cv=pass;
        d=google.com; s=arc-20160816;
        b=QJRgrKgPCoTYqsmw5aK0jYEYOK+Qn1SDxRJhC1OEgYqtQ0jUBMKYY8I8DBviIwykfW
         gIcS2yzA7wxekaIrFw/xNoyubADnvQOpf952e8DudgucYaLNkE1igFF/t0phlDcKgedL
         xBxDUQOJu0uKHt6pkCSYtYCwwlktBsmFRyfNIjmoGlnBGx/bfM0eja7gQC6nQ4Cwbzhh
         UbuxoF0oRLFCxovRbx16yhJ2xYPjE4UCTZReE8GiUtuNbfOGcMmV+dv8fyFfLVDeadL+
         J7VdjbjwQRB/6kEuEqBwSH8zRZkwJ2cci0ZXVbgqlr5RVwThP07RQcrJxFL3OWWRoMYi
         B0TA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=vqoQUzmaQ1Z2PPlcDu9gJS2u3E9AuI2iAg0i5Pz0Sbg=;
        b=d5SvDDHoy2MbUfdkDSWuh8CVC0tV4pND7vxJv5O4nIFpJ86Wd1VQ8k+qjAI4abCUXX
         CiXju9+0kORFMsCQJ7jOxPO13pAO128JFVMZ6pO8JMj2kWOd1PLWtVMvSOTG53YUnzZo
         jBoXywUU9SXTW5IswM9vakihXM8gaLLodceqUZa8u4VuqkglcZ1vxsL16gbJCZKMjkA1
         caacxpzpaK43aNX/9eNp+5SGgtjWIC+pqVJAaihv1NizTBaQRlkefsJK5ZvRXFc05xTt
         Tv0wixjHRcXsU78XwKOBchyPJVxtAlB/FfcBklssEA6ETRld+SXpVa/UmfuAf/JWvzRo
         cq/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nDO6a3B4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vqoQUzmaQ1Z2PPlcDu9gJS2u3E9AuI2iAg0i5Pz0Sbg=;
        b=nXp/POiMYPMhL20N5R9xh/9P9jmdoZdXfqWoJceCY3Mx2RDs6aAVE0qgbO75U9K5JI
         CM/7qKCzN3B+5HiZ9aOMVPzbpKF6fnsoOCiHCzGyjHMA1SUb2VFVfpXfQTUVQCcXgOYP
         SuR2bBk3SgVzsLLOPBKcaE4rVvjEdPAD6N/PvCP0+Y01IbCTlH/x8yzkIEetVg/gI0Qb
         tnyU1XaYYZ/AzCdos7GSa86Y3CJbgFPgpkcWaS7h4kVmgqap1tdEYiV2kAaHK0VYGLJi
         /w6kcEdpu5LXZJ40frdIAsyztQFJF+F15zTDtYnq+V6EE3laebVmXysfeXS3g3QzrmCs
         M/og==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vqoQUzmaQ1Z2PPlcDu9gJS2u3E9AuI2iAg0i5Pz0Sbg=;
        b=ZqG7uThAZvuJW42vi09pxE5tH7ncXLDJ6aL1PlQNCwVNKx5YA+ZvHsaw5uPY/4vzzn
         BzLS6L92KD4Cvqdw4yFFdoZQac51Ch2VagfzvIs9zhlL5mYaI2P72rONhvHf5OFXqPse
         oQUcVSEbsk1SZyn4gJtynG+KKrtUf1rLqNKU1keRWwZ3AL4t13H+df6SYNT+KHY0gg6U
         0XJVjiCHYIDuWEFy60b1E1t0TI0Kxtjv4QBVc8z7oM06E1px5quuxT3jXT7porzd8Nh0
         p+U1J7AmDnL4bSZcMCLoum8Lw1vAdP44c4ePZgTl5Rp+7Vsp2OJ03b9TeXnlZ8VYmgxs
         h9ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vqoQUzmaQ1Z2PPlcDu9gJS2u3E9AuI2iAg0i5Pz0Sbg=;
        b=ICD36SCdVnOgMSxty0MiTF/2aSOgBRNWxRq9w7wOz88IQ2Bhe3RIUZUb3Un79r+65d
         2S0/sMfqPWNHZ7Ijxjt1vbbuBZ5NejzKl9vLn5VziGabdVsPhzH3vN9XOl0lb3/8Hvbv
         MB9+5tJgO7NnresjbB+cq32cPEFL+teufnxhk1qpTtGEe3CmYx+J/44E7PZGlISUyerZ
         v2c6etyOFFKrpYLansS7yo6TtDS+HaLZNg2ykn//A4nT4mtl/gfPhspmxx3eL7/p89zO
         Sz0eYqZOTntCvHkI2qKudPBfwbEuNky1sx5WkqQS1YAD7tT8vIMjUFAzhdMEMHf1r/6H
         HJEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BspjVFjj+0cZHVPrmwudAtJq/7n9xmkCrhDgtuFUYXZ89Q8O/
	1Vi/lPtzjY/qEL17surtqA4=
X-Google-Smtp-Source: ABdhPJwH8UpyFEV+GbAN/i0wQ4cQHKGTdv0GQTG03Gq0lt/m8m1vZwcAWDBIfDXRHl/98A6RMa7b0A==
X-Received: by 2002:aca:4257:: with SMTP id p84mr83795oia.176.1603763329777;
        Mon, 26 Oct 2020 18:48:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:b12:: with SMTP id s18ls357764oij.3.gmail; Mon, 26
 Oct 2020 18:48:49 -0700 (PDT)
X-Received: by 2002:aca:3242:: with SMTP id y63mr79009oiy.25.1603763329406;
        Mon, 26 Oct 2020 18:48:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603763329; cv=none;
        d=google.com; s=arc-20160816;
        b=CxUTX1jj11gQZ0qJ6V40X4kuc/LARZtPZHUIk5vyF08m8Tt+1zSHo38yBKGHGKlK+D
         Cm29jhtD+4XkASBOrX4X3OHYS6H/MpZYGJXTtYYmaHQGokmKmuV9hFpqj7ykMPxrTisY
         GWVybhTbQqP9P4FTkkv3+/lFEWcrzN4NE5sOVFwJ3up0SGEvCGd7KDoPEGw1AsY3vodS
         XY26tBFmUV4CozYxBxMpGbqSQZfOaXxV0yy8P9RtHi7uFz1jptZui/6xZWkr/5NJpSGO
         7wIRr4QgH5FQqXHH1VVFM2tK27HuolXGMomk48vOfhtSBEML0NE99oS1gE/AY7PKBAPT
         4j3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IHnoTQTxFaddUzMLOYWjmOEc9t/QaHFCSwo3W2FfFvc=;
        b=ePnq8o8vl3DRRo1UadiLVx4JXqyuLGkOzOwJ5fLbp0BztGSYyIrlumIPlUf5js9ksS
         beZTSZ5J8rZz18yNFj6SqP0uAtb997ZRBUwYjX8ixpvFXIY3kat7UiQLmQbfNXuyImXk
         TR+cyFcKBarPBC4v85oCJMn4ZMla5b+c6QTXKjpS9AwQ4imLyzwPTAlNj9/oJvTWTxmy
         2UcPjATFH9R2fAn8BbqNu/pgmkyhZtY375dGqGdLPIkDKBxoIE/suDYZzMgeoD6n+UqP
         uuSm9M++Wnb9H8XGtzkxq/B20XUc2Z00PMwgM93gjfCUMsEkUIl3k0tqbZS6PgxDkJmf
         V4aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nDO6a3B4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id w26si2765oih.1.2020.10.26.18.48.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 18:48:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id w5so5325361qvn.12
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 18:48:49 -0700 (PDT)
X-Received: by 2002:a0c:eacc:: with SMTP id y12mr156150qvp.31.1603763329046;
        Mon, 26 Oct 2020 18:48:49 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45d1:2600::3])
        by smtp.gmail.com with ESMTPSA id u16sm8337815qth.42.2020.10.26.18.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 18:48:48 -0700 (PDT)
Date: Mon, 26 Oct 2020 18:48:46 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] Makefile.extrawarn: limit -Wnested-externs to clang
Message-ID: <20201027014846.GA368335@ubuntu-m3-large-x86>
References: <20201026220331.3896226-1-arnd@kernel.org>
 <20201026220331.3896226-2-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201026220331.3896226-2-arnd@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nDO6a3B4;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Oct 26, 2020 at 11:03:14PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> The -Wnested-externs warning has become useless with gcc, since
> this warns every time that BUILD_BUG_ON() or similar macros
> are used.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Also see:

2486baae2cf6 ("objtool: Allow nested externs to enable BUILD_BUG()")
6cf4ecf5c51d ("perf build: Allow nested externs to enable BUILD_BUG() usage")

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  scripts/Makefile.extrawarn | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> index 6baee1200615..9406f752e355 100644
> --- a/scripts/Makefile.extrawarn
> +++ b/scripts/Makefile.extrawarn
> @@ -61,7 +61,10 @@ endif
>  ifneq ($(findstring 2, $(KBUILD_EXTRA_WARN)),)
>  
>  KBUILD_CFLAGS += -Wdisabled-optimization
> +ifdef CONFIG_CC_IS_CLANG
>  KBUILD_CFLAGS += -Wnested-externs
> +endif
> +
>  KBUILD_CFLAGS += -Wshadow
>  KBUILD_CFLAGS += $(call cc-option, -Wlogical-op)
>  KBUILD_CFLAGS += -Wmissing-field-initializers
> -- 
> 2.27.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027014846.GA368335%40ubuntu-m3-large-x86.
