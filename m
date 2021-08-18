Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBU5Z6KEAMGQEHHTQDXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id A909F3EFA2D
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 07:38:28 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id 21-20020a370815000000b003d5a81a4d12sf1050215qki.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 22:38:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629265107; cv=pass;
        d=google.com; s=arc-20160816;
        b=WpkootSQSxKRsDHX9nKC2QsRxYrfWqO2SgxKLlKTdPOJRivYnhpXFR+VosbezDIt9C
         kfpmjnC3FHh/GrcmwjjFOlvmVfiYIvaaFJftiUbGreTCTQe67EtURHS4elwOmz/Sln7a
         elPIXCicu2FhYG59Du2/Wd4lc3B0nWPlwSHKAWby+sqLb+6VytlikdfVmlKSvNlHQEoS
         vL8eERJMEb0MdLPMunNRB3vr5FpMsLEwghumpVcCnzagkbHyI8YnCIYutk4kOlX7FixB
         dl4rmAH5k54scP0NsvyieivGJ6VGbzkPwDyMCsJQvt9YCPQ4UA/+QRi0TwzZHj7US18c
         h6xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mbOaMTCaIdm1V1wvqkdIN7jVvjWiQ206tJzlDswXSII=;
        b=igckqA6akuGtfTmK2qTu0aprqjpGl/rRPh8q14/kwMpIerQiU7xciqrOjHws7HqZm2
         tjafFEtVLVIGHRu/J62P1oYGooe/T+5ks0f8BsM3Ba+H+WdRMpKB0e61Wc6h5nL8WNio
         B0XXdsPagg+KDjdZSi9E0/kVDarXBN4jwIdrMhPMMXl8Qw9epSRBuA7BONAMbPGnbhqv
         g3TpuNy6Z/ZIaS+qGDflBLtbtJ38gwYdIysF31RtnmrG1GvmLgSP8/DiqZfV3GzikK0j
         IgiGcNbZNfJ0uM+hr7zjJ1lA7KasO7CPwiSMNCfjQVGXWoiBZAk5YwBS5AFJGLxGtBSV
         Zeew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="E/fdnrMh";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mbOaMTCaIdm1V1wvqkdIN7jVvjWiQ206tJzlDswXSII=;
        b=hSj9h9ZxkJLTtXtoXHnkmFyzS3CnpF9aDiG96KU0lKZdHO8XYlBj+55tlY2DKkOykn
         3JTwMtPQw+bRVahVSP/89t5bn0SSzPXqfiQ0aj65hpQPLCaYTeHEi+suR2wsywzxjlG3
         33jEhv3yF1dcrsOfG1DAwf/bNOmml4+FX036Chbx2cIulQAAIrCHuVjpR0zqSeYlc07F
         Ofg0+gl6iFZ7gI3sW/c73zIPQ+cQXYAzsmw4v8Wvrg7R1xjEQbqV4BkwRsLgAnZ2jYwX
         /uHwTqjtbA3RvrBBIQzriCkeNE8FDNG8CmXWyYTak/jyYU+PZskFyMIXX2pweTZ4jwnx
         MbTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mbOaMTCaIdm1V1wvqkdIN7jVvjWiQ206tJzlDswXSII=;
        b=QVr/8p0vyPL43kglTXe0gHf5DIerD0Y+Xpgx4rXd9qE/RmUd6wRV5dgWt99GY4tPik
         ddNmHioz26PmNvggAnwXkqJmNkun9BAVmcwHQUFiJjmbB9v0GYYRCdsUapfiJsDoZzDR
         jbMOL5RA96uIAk0p+zCALm2xua1UDkS9Cp+Bfe1hJkPhtBc2oz7vTMNkh4m4jY01cv4/
         IrERY1swel25z2dUKSwDULRB/VYwDbCFFuitlSDlOHeStHyAMJafRBSRvYPUeBTH6rfK
         1kI2/l5H7FLVr3Mzk5hYQoxNjk7oMrReQMF1+piMZc/s4q1ixADCiuek95gAptOFFfuy
         wZ3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VeXF6sw+uGW2eCrQZQ18GCSVprc0cG42qntWaeYGoAI1XrzQc
	Na1QwmDNTrmi+Xla2U2w+RI=
X-Google-Smtp-Source: ABdhPJyRcvcr5zqimNc9fgQviLaku0w8ythxMfJYJLCBfGzydTGJ5VS3jjdj+XFqXaLeWEHDBxxShA==
X-Received: by 2002:a05:620a:2456:: with SMTP id h22mr7845001qkn.272.1629265107449;
        Tue, 17 Aug 2021 22:38:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:c6b:: with SMTP id t11ls307123qvj.9.gmail; Tue, 17
 Aug 2021 22:38:27 -0700 (PDT)
X-Received: by 2002:a0c:be8e:: with SMTP id n14mr7265652qvi.16.1629265107023;
        Tue, 17 Aug 2021 22:38:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629265107; cv=none;
        d=google.com; s=arc-20160816;
        b=EyEnJlxkG62U/n5+cvb3E58AKoGGsrvP+e5Z7C7pkziy+8sN1JJkI4CY6KNCkodPge
         T03bkfzP2Wrv7KbFd5Yhgz29XpF/XRZSY3RLpQqBtoQOmVkL1oS88dMVgTtBW1beix4k
         3jbvR5HhLyC9Y9UqD5jhHtmNZ14w6/3ErK/hu2WgB3kS9U0iRkjkYQnq/UcQ4BfuDDcp
         JE+jYImVTNkZoiJgR/16nR/PNUqW5HxZe0WMyF3PbMYoz4RedVCKyGLdAP27nVaR2ztu
         wWq7hFZ0DkQyeb0UHvSy2gPwEULgfOPV828zCUAXW8fmYUxV9ZWTLWG4kpKJB4eiIBJg
         n20g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ctp3zw40JHYSYFONAZ40umwhaIV7YMGJi/BhVMz+RJs=;
        b=VIpz1cZ+eMQJ3PnvGv+FIX/Js/CtpDriD3sqpKeGik4dXf/sgiqY4hRbF+HBYxbDCb
         mG3iA3/cb1R40O9Xz4UbaQHBMjymdPo16l/wUWyy0wbzEV5FMxcWE22UhaeiPoMb2xl2
         5FYfUUJeAGHwXB7So4PPlVO4t//OY47mNt0DYchgw8mkHZu+sT1bVZ1/4Zxd7K66onFC
         4IqjqZmYubKHSvbQUucmEy0TsCrzZcu2KTOn2PgmIul1PsPqZnIi8omMBNVaQ/eCmy3X
         rGkVtco6oxlRRrmnZ5EMFO2uAklAf9q9bc4pw3ocvWr4BlMt0wDTSLbHnXs4X5g+9ues
         jD2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="E/fdnrMh";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 12si205641qtp.2.2021.08.17.22.38.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 22:38:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 20FEF61029;
	Wed, 18 Aug 2021 05:38:24 +0000 (UTC)
Date: Wed, 18 Aug 2021 07:38:22 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: ci_notify@linaro.org
Cc: tcwg-validation@linaro.org, linaro-toolchain@lists.linaro.org,
	clang-built-linux@googlegroups.com, arnd@linaro.org
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-lts-allmodconfig - Build # 6 - Successful!
Message-ID: <YRyczv2OCq51edQh@kroah.com>
References: <2088047326.3857.1629264127981@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <2088047326.3857.1629264127981@localhost>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="E/fdnrMh";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Aug 18, 2021 at 05:22:07AM +0000, ci_notify@linaro.org wrote:
> Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-lts-allmodconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
> 
> Culprit:
> <cut>
> commit 132a8267adabd645476b542b3b132c1b91988fe8
> Author: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Date:   Thu Aug 12 13:22:21 2021 +0200
> 
>     Linux 5.10.58

<snip>

And what am I supposed to do with this information?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YRyczv2OCq51edQh%40kroah.com.
