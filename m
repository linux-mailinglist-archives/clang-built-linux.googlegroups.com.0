Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJNKYT2AKGQEAL7T63Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9B11A4D0F
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Apr 2020 02:53:58 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id w7sf2907549ply.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 17:53:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586566437; cv=pass;
        d=google.com; s=arc-20160816;
        b=IfOFlW0t9YcV5dWNLe17kNYNzSU8B8IY564Ed9M465u2ta5dF6ASTLCxQtSB6rZ9GR
         Ii4i7NfnClOMg8ZsafAGI7J+s2Zw1X2IkuyarpowkWicKF7tL1qL1CNDdwzG2JO6yuAq
         NJYfu9KCBRKOJQy6oAdrz9BCrrv11wwGg7iemewR9d8TTyXJrl49Hn+woyXJDZRkxquj
         O8mA2eeIB6GVvwyR9+YSg89ZOcDKImQw2I4moqaZiPBTMYwlpT07AAKgnCTo6nvJtum+
         RKZtEkSd3x6983V8krP1jyBo4Em2xIfsaGI5qpuF2q9pLJH6AhIE2mNQWzxzTW55Bn6f
         wvbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=D8v6g1pDSEFLWpGPr9EmRko0Y0OBuKUQ1kBcoRFfI2o=;
        b=LMnFor/pdrfQzh/KzKLFDk/9ZSwtqwHsBQiMKxbVlh3hWMdxnfZ7F7gyrwS/k5FYda
         0t/3hzCmlMky5sPSM/akNAn8A6u4XfoEy4nEq5rjCO6Ipa2fXReU6Ha6bimYJzh6b6gz
         xrGYGv2kbPJIlowEo9m9nOOzfDLokbqm7Kdp36JR0vsBAP79l/bu6Ncx4gzh2/2uQz/m
         UGgBq/aKZb3lOj/QIcF6GT3REvovia4DHlKm4fLN6fZnFFLapjbim8UgttCThrW3GMfl
         q1eBgT2ecOn2CcP+yPsEVO3UtBkhXBQ9sBeIpzhKoewQBXpu8XIyjdqUpSLnkVWd3AX5
         USFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nYQkCG/t";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D8v6g1pDSEFLWpGPr9EmRko0Y0OBuKUQ1kBcoRFfI2o=;
        b=Dr8pr8n00QRw3AKSydpb9tSAkKgj6tM7FOHxwFZuzM3/YKGBvJaU5gbvwW/78Tpw2x
         kRhqCcBjNM9hKGOVoDSXb8EOayNWH827mrGBP1SqYFiGqHXqfrwB8M+LZBnS0tvZkuKG
         717nGdgzwB6cMwvuM8jI1eRrOhZ5s6DMYSLI4n3OkTZP3KorFvzCZZtzLfE1iKBfcX9M
         e4R9ZB9j98aiB1W2CI5iGQw1QthmParQ/80MlOiw/koLp2+/LG/rZmwb5mMrnt0K2dg7
         7OP2/55tdDlHZkvzZadHE+Ut3Z8kORD2IXJPOQr37j8RFBFNekSrpgOGwxBMyFXZZa1T
         7K8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D8v6g1pDSEFLWpGPr9EmRko0Y0OBuKUQ1kBcoRFfI2o=;
        b=nD9SgFhG4AU97fU5gXDh3NxMSEPXWqM4ocQhswSzwBvI1lh7UM0Stl+rKdmqNM5gk2
         aTUKeIygVCryAYx2oYvlghyVnRKbaCp5757ozviCxU8PGG1Jlh7+d5FZCPy6/8rbnyUw
         3o6AEEw7sJijx1K9ZI2d0kovwVT5+tNEcQeKG2uuiYHWH4goZGRiKtZSty/qW7yPVJ28
         +8lG+AqZSuLLgdR6VJtC2+O24GU0Xlr6q4BnVr3lgcCKjfXNwzUpxjvgOWtwlW1msKRI
         JRM8SkMAVfOurPcLrDFefElNO2oL+Q/Qi+6PA0C60Hf25Vf8G5iMRJZMZfyiUXU9eCpl
         4u4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D8v6g1pDSEFLWpGPr9EmRko0Y0OBuKUQ1kBcoRFfI2o=;
        b=qrbUVcZ8UyasNYqWw9dX+zm1m60Sp6uMEOh3LRdh8C2WSoMu/gn1CSKTT4W00fA4B8
         GbVRnXHDGKyfvCvv5weploLyPOx3fvzgEwHF6QQpsXsvPq2EDScjbPp9aQHtj4deUBMJ
         7vQr+RE8qsunS4pn4ovIiqNILADM4d3yPD/F/t5zai2kcTTbKmw3kT9JJL2MhufONKrY
         92sc5h/hyndTLPnm4T6A1myBN3m3p6iUf5WcsUeripUnt0UDirxCFVY8+9JrTppJETSG
         AvLadNMMZ9qNVqS9uhiVLpazWsV8X0z86UNVX1qrHU8ygUT2GW15lg011uFDYdqXI/BU
         6QMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaAguuw8m2b9N0eOx5Ag7Fn5nC8baVUZAJLvCW/prlknpfsdWSb
	YRICJVIkixjP7wYFsbN7EJQ=
X-Google-Smtp-Source: APiQypIIh7ffDzVD+pkTg7SxeyGzbbJTDKSSZa3BAoLa7AHCUmsA6BEaeG5+nY/HDt/ZD4Bk1wBnvw==
X-Received: by 2002:a17:902:fe81:: with SMTP id x1mr7055088plm.193.1586566437248;
        Fri, 10 Apr 2020 17:53:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9a03:: with SMTP id v3ls11187425plp.11.gmail; Fri,
 10 Apr 2020 17:53:56 -0700 (PDT)
X-Received: by 2002:a17:902:8eca:: with SMTP id x10mr7304882plo.60.1586566436702;
        Fri, 10 Apr 2020 17:53:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586566436; cv=none;
        d=google.com; s=arc-20160816;
        b=CUgsSygkRyLVSF7VaNpqCFKqTdE7FwTA6PQchFzqY4sqIfMw0l011Z5hhtdjTk0x0V
         QHYRbahH+CRTogH9MnotJtzg+sIAZGGxmNh+6jAlDrxSNebId28WQ3gWBt2eIuJYUI4r
         foswumuc1CQ5y3WH+giD6ygNt8sX9DLzQAznHcYs3bm5rOcAAorlWKHVHNJU0nNiW3dg
         U+E6a/DMOJCof627ffuE+peUtwkHbs5pxXBAbcnD5sU3Tz90pI9wXFkwsAJCiz1X1BkF
         zSLTfcK+lHFYnCwhaEIfi19gx7cP1tg7qSUrcsIkz0vQ06/5dHluo8XNVFGPuNjvCEnB
         Gxvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JBgJASJfnDwkgMQN4l8ATKxMtMfeF+zEyoNKOHKE83k=;
        b=YVr7hYo4rbZmMHuLAUOeKeMAo2k9QRohzH664TBqzjJaKVy/yyBYeSVNvOqGguZDDh
         I9G/4UEaSFoq8FSpllhigZ9YfFUe5D+YyfDNx+yuHJgwwQSsoS6zvq1nz5k0c7ySFTth
         a7smHmzeXJfe1fOjSNOSLgy9LNeZ5r+OwgS1zx2GTaWkdT+Q3ggeswrNh887t0vk8FG1
         zOKffgJEY62WsOZK8WI5iLKwOMCw1CFpiH/8vkv6HOUYCkFzcAGwUgSXcPqHCWJl4Sn3
         zmUItTKDujB91X6pUPMLWYu4Zi+Q++Yl4CtWYSJIYevv7YZwyC7FJAFlE2Iq77iu+Pfh
         dFrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="nYQkCG/t";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id c207si209122pfc.3.2020.04.10.17.53.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Apr 2020 17:53:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id 60so3414322otl.12
        for <clang-built-linux@googlegroups.com>; Fri, 10 Apr 2020 17:53:56 -0700 (PDT)
X-Received: by 2002:a9d:2dc1:: with SMTP id g59mr5945804otb.90.1586566435854;
        Fri, 10 Apr 2020 17:53:55 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id q187sm2109546oih.48.2020.04.10.17.53.55
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 10 Apr 2020 17:53:55 -0700 (PDT)
Date: Fri, 10 Apr 2020 17:53:54 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nicholas Piggin <npiggin@gmail.com>
Cc: clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org
Subject: Re: Boot flakiness with QEMU 3.1.0 and Clang built kernels
Message-ID: <20200411005354.GA24145@ubuntu-s3-xlarge-x86>
References: <20200410205932.GA880@ubuntu-s3-xlarge-x86>
 <1586564375.zt8lm9finh.astroid@bobo.none>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1586564375.zt8lm9finh.astroid@bobo.none>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="nYQkCG/t";       spf=pass
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

Hi Nicholas,

On Sat, Apr 11, 2020 at 10:29:45AM +1000, Nicholas Piggin wrote:
> Nathan Chancellor's on April 11, 2020 6:59 am:
> > Hi all,
> > 
> > Recently, our CI started running into several hangs when running the
> > spinlock torture tests during a boot with QEMU 3.1.0 on
> > powernv_defconfig and pseries_defconfig when compiled with Clang.
> > 
> > I initially bisected Linux and came down to commit 3282a3da25bd
> > ("powerpc/64: Implement soft interrupt replay in C") [1], which seems to
> > make sense. However, I realized I could not reproduce this in my local
> > environment no matter how hard I tried, only in our Docker image. I then
> > realized my environment's QEMU version was 4.2.0; I compiled 3.1.0 and
> > was able to reproduce it then.
> > 
> > I bisected QEMU down to two commits: powernv_defconfig was fixed by [2]
> > and pseries_defconfig was fixed by [3].
> 
> Looks like it might have previously been testing power8, now power9?
> -cpu power8 might get it reproducing again.

Yes, that is what it looks like. I can reproduce the hang with both
pseries-3.1 and powernv8 on QEMU 4.2.0.

> > I ran 100 boots with our boot-qemu.sh script [4] and QEMU 3.1.0 failed
> > approximately 80% of the time but 4.2.0 and 5.0.0-rc1 only failed 1% of
> > the time [5]. GCC 9.3.0 built kernels failed approximately 3% of time
> > [6].
> 
> Do they fail in the same way? Was the fail rate at 0% before upgrading
> kernels?

Yes, it just hangs after I see the print out that the torture tests are
running.

[    2.277125] spin_lock-torture: Creating torture_shuffle task
[    2.279058] spin_lock-torture: Creating torture_stutter task
[    2.280285] spin_lock-torture: torture_shuffle task started
[    2.281326] spin_lock-torture: Creating lock_torture_writer task
[    2.282509] spin_lock-torture: torture_stutter task started
[    2.283511] spin_lock-torture: Creating lock_torture_writer task
[    2.285155] spin_lock-torture: lock_torture_writer task started
[    2.286586] spin_lock-torture: Creating lock_torture_stats task
[    2.287772] spin_lock-torture: lock_torture_writer task started
[    2.290578] spin_lock-torture: lock_torture_stats task started

Yes, we never had any failures in our CI before that upgrade happened. I
will try to run a set of boot tests with a kernel built at the commit
right before 3282a3da25bd and at 3282a3da25bd to make triple sure I did
fall on the right commit.

> > Without access to real hardware, I cannot really say if there is a
> > problem here. We are going to upgrade to QEMU 4.2.0 to fix it. This is
> > more of an FYI so that there is some record of it outside of our issue
> > tracker and so people can be aware of it in case it comes up somewhere
> > else.
> 
> Thanks for this I'll try to reproduce. You're not running SMP guest?

No, not as far as I am aware at least. You can see our QEMU line in our
CI and the boot-qemu.sh script I have listed below:

https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/318260635

> Anything particular to run the lock torture test? This is just 
> powernv_defconfig + CONFIG_LOCK_TORTURE_TEST=y ?

We do enable some other configs, you can see those here:

https://github.com/ClangBuiltLinux/continuous-integration/blob/c02d2f008a64d44e62518bc03beb1126db7619ce/configs/common.config
https://github.com/ClangBuiltLinux/continuous-integration/blob/c02d2f008a64d44e62518bc03beb1126db7619ce/configs/tt.config

The tt.config values are needed to reproduce but I did not verify that
ONLY tt.config was needed. Other than that, no, we are just building
either pseries_defconfig or powernv_defconfig with those configs and
letting it boot up with a simple initramfs, which prints the version
string then shuts the machine down.

Let me know if you need any more information, cheers!
Nathan

> Thanks,
> Nick
> 
> > 
> > [1]: https://git.kernel.org/linus/3282a3da25bd63fdb7240bc35dbdefa4b1947005
> > [2]: https://git.qemu.org/?p=qemu.git;a=commit;h=f30c843ced5055fde71d28d10beb15af97fdfe39
> > [3]: https://git.qemu.org/?p=qemu.git;a=commit;h=34a6b015a98733a4b32881777dafd70156c5a322.
> > [4]: https://github.com/ClangBuiltLinux/boot-utils/blob/5f49a87e272fbe967a8d26cf405cec15b024702c/boot-qemu.sh
> > [5]: https://user-images.githubusercontent.com/11478138/78957618-b1842080-7a9a-11ea-8856-279c3dcc6c19.png
> > [6]: https://user-images.githubusercontent.com/11478138/78955535-62d38800-7a94-11ea-9e61-9e3d8c068ace.png
> > 
> > Cheers,
> > Nathan
> > 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200411005354.GA24145%40ubuntu-s3-xlarge-x86.
