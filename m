Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOVJUL2QKGQEPDER4LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 535BD1BCD95
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 22:40:28 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id s9sf4733135plq.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 13:40:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588106427; cv=pass;
        d=google.com; s=arc-20160816;
        b=eh37RGFdquAgHCE449gbX22p/LRji0UZfJv9FAl6Qsdrm/3qkMQT3yVnNtjgvvFqN6
         3dRxGmSz6jlnNGRL4Qgvjaco+gktNGsFT/I42upJZ3OrgW8SXPbW+UdEHxo1TfpBqiON
         1NtUGwKL0kNXO69LRnQ28YZsyzoogZ4/VU+pv0a0czaNVC2e0szJy50cL+AoZgp7LimG
         EcnRtm71Y5c6jxMEAMDiGA6Mrmj/j7NFqEiYOCPlku1SDWMxFhzZ4q0wMLziHpnXv30j
         zL9lBIhiHgI4LFmNBFJwfJpOF6RVh9c/wb2huS32cAtxG5XGyBugsm4Vb1DxSanTwLLM
         nWcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=qRuoeAAvtB+8wjwbKiK3NEU5rzGGi4YbenIsm9tRIvM=;
        b=CbCx5sUOI2sYimvdZqDcVzgSfEttBOPaEqWP3jE9gRp87z0qULkHsx/x1EwhWgInSE
         eoYTUzm5jJM6GQQUdMMivp6nV+ItRev9YkalmO4+av57CHsip/tlC/eKDOzS/kje8Mnp
         ZRK2oTbCVn6BNwANb7ungWfqQs9TBj+904LoMb0PgCHrQhADJn1qJWpUv+BFE36tBWWO
         K01EwM0CyA97Z9b+LmNUiniku/9lC1LTLC84FPpfJJXDiaDkg0Kbk6dIxcRGXmlilE0K
         nrQsm9MQSBMTghR32xXS7K5vUmg5PC+B0Wr2JpR2vcMFSDO3Ryt+VegUkej3unGm+QW7
         7AWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cyJSskGx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qRuoeAAvtB+8wjwbKiK3NEU5rzGGi4YbenIsm9tRIvM=;
        b=RTv9/QMXaGjfubzO6GTa+iBCS5/RU+ZmWLeJAbsJDQYBWQtXN34VMxQr2PTmvnk+Re
         OfXK41g3KUtPEurbhREfJRHilcY0YLmK2q/62+NBTQxBjvMk4Rv9+1QnBUBu3Jw9Kx3H
         BF2/ipv2BgbeNDW2Vqoi7z3rvUmxy24ku7iY1fLPVMFuIzu0aOFSS1w5YbPI1xJSfsPB
         PcLNfNB+XuIceqquhuA7zZ6iJzHKCzAlR/CQ9/o0nDeBJ0F2OEltFiDLmPnDp8u8DCxZ
         xOWtGXgQtYIMWgaVgKZ1IoPkzKkyOim88xcSjwkcI4y6myi76XxkgQ9yNd2WW4fAo580
         IL+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qRuoeAAvtB+8wjwbKiK3NEU5rzGGi4YbenIsm9tRIvM=;
        b=NLnR2kBuIDPHhGSdxyMZLkv0p3ed1AabfDcOnOpLXJW4qcISq05piJWPoFKyyaCiqI
         OnZLWTPGsv6OFrm/SXCTq+AuZo043CVRRlLSP8I/0F4znlYLZVFA6fbP8MOu4Fa37rWK
         PXy5I+fhhJ/hTsbUbUegFvDF1fuo0hGvfViGvNccdhehtRaEckk58mP6EQrsgjReKYaF
         Eq37iqAkuIbMHMEHYUPQEWAaN4qt2/B2HJqbzFkTDcneMkbMpqYrWJVHVBDomeANe+rQ
         AkB6EXhCE2dB3Qw8lYRhv47ShzwNFqKnBC3F+wJpEwLtUiImVnM56kd2jadz8OOVlieC
         vsOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qRuoeAAvtB+8wjwbKiK3NEU5rzGGi4YbenIsm9tRIvM=;
        b=Javd2O85EunTX7XECT7jAHRqah8QqOGjaewSSlDuFwFDu5lFyvuEaPCTtXHL2CvEjD
         j8p7ysHaP1pqg7dVLSuskrtCa+11wETxXquMh8xmUOsEtgkBGn3QfLskzdC9z/QRrCqi
         Fam/FZnjze4mb5a/P9bTSIx1nIdnq12/pHpSTLicxBz6wrW1i4c2moiSDihaWwzDrpKY
         SijZzG1cjOUOoMepsefgyEGL5RSJ2bqBZlTkgmHfb9dSOF/uCgWCY4iSJTfI3yU0sEPf
         8mNjfdqrxRV5Px5k7oiSV3hSewxkZzNcU+x6o4oJvdh4zsELHwhMyhJ87JcrzI6cf+bh
         PM/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub7nnl0Q2/genjoLfgrMQYCwy/NiaOHFkSEG6ZEIQbKoHSnqwZF
	9gcuZbNqN8a+BqPsfg/3SOI=
X-Google-Smtp-Source: APiQypLU8E+Pjim5kIwzkON2vbkAcUCa6KSRXkFFPk0cBPQa/HcwWRMLiNFFtgIxSEhSN2HIzZMLnQ==
X-Received: by 2002:a17:902:a515:: with SMTP id s21mr31498136plq.41.1588106427041;
        Tue, 28 Apr 2020 13:40:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4b5c:: with SMTP id k28ls7378966pgl.0.gmail; Tue, 28 Apr
 2020 13:40:26 -0700 (PDT)
X-Received: by 2002:a62:2783:: with SMTP id n125mr33194988pfn.133.1588106426614;
        Tue, 28 Apr 2020 13:40:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588106426; cv=none;
        d=google.com; s=arc-20160816;
        b=jZG5fFP+g1cs7hxb5GC2/te+M0Z5TXJ4saI6VmVrIalqYoZulP2MiRx+DNAnS7DYjl
         OfJUnlKbW7fPRWPNR+ca7Oa8NdyUjX/9pCGnH+BSXr9DBnnqsGToRiozeEKDrsG59ZMo
         AxM4anY9GF4tnaNqJUJQPx3xo2CP6mm45rFq+KOIV5g0IskfSZ05ZbBMP1zJaJB1TfKZ
         8gePBh/JvmhiGoAXcJkZHwqFSSZLuwwnh7iHbh+S/UEcnjjoHf2jhQYco92xgjE1ercS
         J209W2MqzZ30qeiJPFgnjqCqTUvFyyYubqLOdHzukSUUgkxJnlOOnaJErr9pqmh8fAWv
         OT4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Y7sQPV4x4ZwbIZ9u/HiTna4hvbXAL89YzvLkfuby4bg=;
        b=uprTXVDrCoz93IRhfkM74HlwRu4EqWUlRmFnNE9VuCCjD0Sm+Kvqk6rXX3WRFN7Al2
         roeb8incViUor3cvUjoPKTpQrpezvai7foBfyf5/IVVYItE5/rAdOLyMpfjq/MDKLr9i
         PV3/eedTbCVqYmgvCUEV0biERdJLvv6bG0FJh+W7Yn+EG6nHgUphDnUBkdb0fVQCpa1a
         ntI74ubVKXjAlyqkCVmPCTE0F4Kpqw5E/cbcX7VrN0KZaCKhHhT3WboWjosBQvdlvLhq
         0HV7RwWeIRaPBC/iG1TpGbJT2zKIBDWkmIksq7hIvCZAYLlqGqZyi1FYCnc3zgEdJmbO
         aqGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cyJSskGx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id a13si198982pjv.2.2020.04.28.13.40.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 13:40:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id e20so35187922otk.12
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 13:40:26 -0700 (PDT)
X-Received: by 2002:aca:c78d:: with SMTP id x135mr4396686oif.91.1588106426235;
        Tue, 28 Apr 2020 13:40:26 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id u1sm2803659oif.54.2020.04.28.13.40.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2020 13:40:25 -0700 (PDT)
Date: Tue, 28 Apr 2020 13:40:24 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: ci_notify@linaro.org
Cc: tcwg-validation@linaro.org, arnd@linaro.org,
	clang-built-linux@googlegroups.com
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allmodconfig - Build # 65 - Successful!
Message-ID: <20200428204024.GA2357460@ubuntu-s3-xlarge-x86>
References: <939302357.19287.1588105834030.JavaMail.javamailuser@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <939302357.19287.1588105834030.JavaMail.javamailuser@localhost>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cyJSskGx;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Apr 28, 2020 at 08:30:33PM +0000, ci_notify@linaro.org wrote:
> Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allmodconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/llvm-release-arm-next-allmodconfig
> 
> Culprit:
> <cut>
> commit 02b925a9104d994191cdc7210a5ef07f0f3e7a4e
> Author: Andrej Picej <andpicej@gmail.com>
> Date:   Thu Apr 23 15:27:33 2020 +0200
> 
>     hwmon: (lm70) Add support for ACPI
>     
>     This commit adds support for lm70 commpatible drivers with systems that
>     use ACPI.
>     
>     Signed-off-by: Andrej Picej <andpicej@gmail.com>
>     [groeck: Drop direct include of acpi_bus.h and acpi_drivers.h]
>     Signed-off-by: Guenter Roeck <linux@roeck-us.net>
> </cut>
> 
> Results regressed to (for first_bad == 02b925a9104d994191cdc7210a5ef07f0f3e7a4e)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 20445
> # First few build errors in logs:
> # 00:35:38 drivers/hwmon/lm70.c:186:34: error: use of undeclared identifier 'lm70_acpi_ids'; did you mean 'lm70_of_ids'?
> # 00:35:38 make[2]: *** [drivers/hwmon/lm70.o] Error 1
> # 00:37:06 make[1]: *** [drivers/hwmon] Error 2
> # 00:38:56 make: *** [drivers] Error 2

Probably due to lack of CONFIG_ACPI with arm32 allmodconfig. Looks like
it should be fixed in Guenter's current branch:

https://git.kernel.org/groeck/linux-staging/c/65b7e54c6adb10314544676bdc544189180d51e7

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200428204024.GA2357460%40ubuntu-s3-xlarge-x86.
