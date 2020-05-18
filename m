Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBE5MRH3AKGQEGNZBXAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C67E1D7413
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 11:32:05 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id ck14sf5671402pjb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 02:32:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589794324; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sj0wELg6eRbLDJTj0OBYIKMru0KJ6qbWHQLmHZix4g6YjJzHIvH5g7yBiel3Kwhsng
         mCn5f3F2ynt7NZaF3t3TD2Kko2n9WxYPCH9qWEtvdFfMy5pqdwF4jPe/L+iTlzQ+BM+8
         IiHAIZzkrHqgyls3PlrurJM8JWfP9of7YjAa6tW0dVWTfYRtoV2CdWHXCU++AlemFFmv
         r6rTtpM3anIvFGtgrPWjGQ+mfbPe2vfXCoELjze8u8Nn9+tvb6FYzB1CxTlDfhx4kPVd
         6l0N2slKqrr9f7+6al/6oF37ZL96SYhewPsRelEaPVL3adtfyYoSwFvrSLH8ko1aUmBT
         H2Rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=dlCmn0IrQ0wyibH9VH5B2nCkJGQcOVwZOxchtVynXXo=;
        b=CRVh2UigS1olQ63So7Za87LQbYFFznvRyOofinQeEl9N4dec6qdu9XuZXVochrK1Vn
         lt01bnsLXUqfFjKFs2jQXa1rZPaPZiiQk/GYrscFEmbCGbBthIm2MD1mvtqpQfgfWIGt
         bTkBVnvUhBULLigASzEzsFLc5QgSCAc2nEvt7btq2wTT3Zw+NSOpZoMtXotWVnqAYg4d
         nmKm7iYU0RnrDrePmvRia2cCc0+Jf6uFi2kSnh7BYjDGFcmdaxM3JtrW8j1U50LYVzNA
         ycrc4AsoZLwq+Mfqa+LEW1dbtE1YSfepMh4uSLJwvFRkzFwjoybb/Ad3X3XGmU1G6zFc
         Dpdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OMjsPKlR;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dlCmn0IrQ0wyibH9VH5B2nCkJGQcOVwZOxchtVynXXo=;
        b=fk0A4VttZyXBlg8BKg5cIWY1QuYy5KJKTzPwpqdCCSs5BZnu5AK+yaplWmww5mLUah
         h/2r+cI8qF2361ujovocrKhWtdhOjH9J2vAVNN2p6jv9yD5y4AfFVW0QkyFQqsYymt7y
         7/X8WDsTkYIh3korbIzljmTVm8thokwl6SgVETpKdDeoARb6E1X5eV545tdbztaCk7ic
         jBq+CCaRmRrqcBl7/8ETSBZYhWq6sA4xL/ZlP3uM4jIvWZ4XqdxJdJO/7Wojp3aGMaw4
         wWyum1JTlkCIH5Gr4LtXvYZ0ez44LWwbXXi84Olfpda/+j0euQ5WV4ukiERNMWztQZXN
         jBEg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dlCmn0IrQ0wyibH9VH5B2nCkJGQcOVwZOxchtVynXXo=;
        b=UJG8T0pG8t9BtdEFUuDg9VT33Ame2L4g556t5yDcnrWHRkPGJEFgUJQsywFBLBzmcx
         327fEaqx6FIp4ri9vWOk9LqtJ8V73zl7ShawLIQJaWyXbqDZNXWkJxdqp++dk7J/Q31j
         uMAnCoN2yczMcWT/6QVuXq9ECnHaTizWTg1twJX4TZAG+F/FcGv/tOKLNEiMDXrZcOIo
         sXRew2ye4u+I5kH+c8pJKJhW83tZU0qzILunWxaQDG4ETo4lRpLX7kVPowcdxhRoQFyX
         qUbHusojGJqU4D9HnYD0iqGPl6/OxKY6y/iqHkWs1LzaNptIdio3MP2yzryvp/ISBMY4
         rjvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dlCmn0IrQ0wyibH9VH5B2nCkJGQcOVwZOxchtVynXXo=;
        b=OTOX7mMqSg7HU/8T4TPqESpmT/RrgTN9SexCTEY9ncVPr/pEy3z91qrDlrBPdfXK8x
         Gth17zl/pVN+dPy08F5umHpv4qO7i1bTwu6DXJGbjCkRUglIIx7oBT9pJ5WKTGaxD0p/
         I71hUhEvyszYnDCh76c/1H/dgsGwp8qxS6m0SZGt5FuiT0jQE0Wz9GR0GAGQa/TglD8M
         RJsOI85KHr0MIqSqUe5+eT65V81HlbOPuJXe3UZyTtMlTfnKPi7wLjPY3hvF6wv6sAeM
         EmbBZ6di6NqNy/31Yd+SO2kFPphdUo+FoZtIzwsvmgsJNzkbckRvYnmdNyDoyt69rjS7
         2HAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PSyS7LEfXk3Imb9jBKUI7AuzRwykVp0vGZ7/PQOs2XwTLic+2
	cSeqPsBDMrWqEL2WQ4JLsFE=
X-Google-Smtp-Source: ABdhPJykoz2gkA6+4NX8k1FpqHENbRmc6yi5Gk7qlhNyVcIdPp0r7X06cP1El6EubSKvM2zguhFkUg==
X-Received: by 2002:a17:902:6ac3:: with SMTP id i3mr16089862plt.261.1589794323861;
        Mon, 18 May 2020 02:32:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7d97:: with SMTP id a23ls2272428plm.0.gmail; Mon, 18
 May 2020 02:32:03 -0700 (PDT)
X-Received: by 2002:a17:90a:5289:: with SMTP id w9mr17646768pjh.97.1589794323452;
        Mon, 18 May 2020 02:32:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589794323; cv=none;
        d=google.com; s=arc-20160816;
        b=FUq971Ebo7j5PUhvvgkZ5Cu1A6c85UPvJc8DZU3TvKmUbAqA97AFLeLVPrsVq9NAL/
         0sfsf1uLGwGLO7PcvnU67N2fjq/f3+WNy2g3F7XffNx1RRvRCw89ittJsV9caQ5U6uVV
         OBEn9F8JX3laHA7JC7Ctp99lh9xboaYG8OC0w39WH2CK+CPmB8VHT92QDoizPE1ZX9uz
         u5CZO6u41PIXEXlUFgb/0U7qy3xigLsDnUUM0dWuudQVsKAVWNdL4cVHX8dYJxyu9u0F
         +4/icsT4Xfrh006DnucXxQkEKmRo0NKjn23yjXJ+EBNugYJNZLTXNiizWwyfyblA/WTd
         id4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=V4KeqXR0hNSztYcChgmQJ2RuPcBryFoEBZpBxPtEK1g=;
        b=VlIw/btr5MTk1xBtbohR88ZKY0GR41GlFr9zjnLLn4MpYWQj9x+HY0O/tIiYB580A+
         h4qSKISUH5iokD8nUoLk2GCUeD2mivrMwdPnbxIpYCH/9kItpnMeA3KboS4YS/+upbpP
         7DWqlKwZp08muIhEIN+UA9XE5agnc2XpydZJpXrXugMCTiSDyLb0HLaFs69MH5HIF62x
         ksZz3J+ek999yHyxYbAadWKi1g3B7CLUdwZ53ymsyXAReuyfIMJWSVC0m5knFJOa8ZHh
         Ed0yGweRwicISCj/PQ4wwXvvF7iDFOQ6Z6vHwmhWFWOGfVblCqY3u5yFAa4QDXU/Hk2w
         +OIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OMjsPKlR;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id j204si821157pfd.1.2020.05.18.02.32.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 02:32:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id j145so8439301oib.5
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 02:32:03 -0700 (PDT)
X-Received: by 2002:aca:e1d6:: with SMTP id y205mr1544032oig.142.1589794322753;
        Mon, 18 May 2020 02:32:02 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id r14sm2820213otk.60.2020.05.18.02.32.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2020 02:32:02 -0700 (PDT)
Date: Mon, 18 May 2020 02:32:00 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH] powerpc/wii: Fix declaration made after definition
Message-ID: <20200518093200.GA719945@ubuntu-s3-xlarge-x86>
References: <20200413190644.16757-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200413190644.16757-1-natechancellor@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OMjsPKlR;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Apr 13, 2020 at 12:06:45PM -0700, Nathan Chancellor wrote:
> A 0day randconfig uncovered an error with clang, trimmed for brevity:
> 
> arch/powerpc/platforms/embedded6xx/wii.c:195:7: error: attribute
> declaration must precede definition [-Werror,-Wignored-attributes]
>         if (!machine_is(wii))
>              ^
> 
> The macro machine_is declares mach_##name but define_machine actually
> defines mach_##name, hence the warning.
> 
> To fix this, move define_machine after the is_machine usage.
> 
> Fixes: 5a7ee3198dfa ("powerpc: wii: platform support")
> Reported-by: kbuild test robot <lkp@intel.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/989
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/powerpc/platforms/embedded6xx/wii.c | 25 ++++++++++++------------
>  1 file changed, 12 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/powerpc/platforms/embedded6xx/wii.c b/arch/powerpc/platforms/embedded6xx/wii.c
> index 67e48b0a164e..a802ef957d63 100644
> --- a/arch/powerpc/platforms/embedded6xx/wii.c
> +++ b/arch/powerpc/platforms/embedded6xx/wii.c
> @@ -172,19 +172,6 @@ static void wii_shutdown(void)
>  	flipper_quiesce();
>  }
>  
> -define_machine(wii) {
> -	.name			= "wii",
> -	.probe			= wii_probe,
> -	.setup_arch		= wii_setup_arch,
> -	.restart		= wii_restart,
> -	.halt			= wii_halt,
> -	.init_IRQ		= wii_pic_probe,
> -	.get_irq		= flipper_pic_get_irq,
> -	.calibrate_decr		= generic_calibrate_decr,
> -	.progress		= udbg_progress,
> -	.machine_shutdown	= wii_shutdown,
> -};
> -
>  static const struct of_device_id wii_of_bus[] = {
>  	{ .compatible = "nintendo,hollywood", },
>  	{ },
> @@ -200,3 +187,15 @@ static int __init wii_device_probe(void)
>  }
>  device_initcall(wii_device_probe);
>  
> +define_machine(wii) {
> +	.name			= "wii",
> +	.probe			= wii_probe,
> +	.setup_arch		= wii_setup_arch,
> +	.restart		= wii_restart,
> +	.halt			= wii_halt,
> +	.init_IRQ		= wii_pic_probe,
> +	.get_irq		= flipper_pic_get_irq,
> +	.calibrate_decr		= generic_calibrate_decr,
> +	.progress		= udbg_progress,
> +	.machine_shutdown	= wii_shutdown,
> +};
> 
> base-commit: 8f3d9f354286745c751374f5f1fcafee6b3f3136
> -- 
> 2.26.0
> 

Gentle ping for review/acceptance.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200518093200.GA719945%40ubuntu-s3-xlarge-x86.
