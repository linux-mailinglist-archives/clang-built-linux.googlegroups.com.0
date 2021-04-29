Return-Path: <clang-built-linux+bncBDYJPJO25UGBBL7QVOCAMGQEIODRULA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 069A036EF63
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 20:17:21 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id r71-20020a632b4a0000b02901fc8e59f9a4sf23461586pgr.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 11:17:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619720239; cv=pass;
        d=google.com; s=arc-20160816;
        b=nApgrkTXF8ou2ThMKDchTXdErw83BSvj6NH4F5P/3NF4suEDalzMgHPRRi89VTnVLn
         OcH2qMp6ipiwzMbzWJ1ZsApvzsnS+FhN13vxEgfQl6ud2v6JfhswDIaQ2Za1yDZj5CcK
         Nt7MTwIwGVkw5yGHESczh/SBpdFXuX/mGpKOlvNpDHWPPYuOkhvp98v+bFNj2KqywWbg
         COR+mnRZdWl/3lfkXTXj0Qv5Xha0gPwfXEj/wIHfegvV3MaZwBzYGWrQvRGVzcqnLlw9
         HnWBT+olaopVxoceQZVZoBeeRFDcwPs8WzRGzdd7MsDqC/Qnk+mxDLQwMB5kcjC9bzos
         dZJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=EXYp4hb8pZeXfs4JGfe3OLfHhggrg8cFEuyyaXUwWA0=;
        b=HCBd7ezWZ2JQ5F0E2soiaz8n2FFsIBaMHblRP2ovzJjK/KXp4lcbrCsyElftv//ZaU
         j9AZUdfpg0eBHabkplKGwhKtgNmdO5MBVw+lghS6+ZWUxkVsKW7otl7I+703BAnD7TKd
         EgC0oKCZOKyXhJsMVj3uG+XVSFUHjflXd57GfALmdyQjBZHfxQNNz6B3zZhAkBnLojxq
         A1yIEcXB+BO8xGLR+xNTBX2bw+bnjKeK8Kjl6j1FkEkywYoW3JcRxLhMGL4YBxyn9Jb6
         jGu8u9VJcEsVGky6XnzuakYSWf2wHdYlzD/e9A5w2YfaeOUtdALk6oI7rVCfKGcgHdLE
         qbfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YPwdYIni;
       spf=pass (google.com: domain of 3lvikyawkafua01fxh8a51ef3bb381.zb9@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3LviKYAwKAFUA01FxH8A51EF3BB381.zB9@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EXYp4hb8pZeXfs4JGfe3OLfHhggrg8cFEuyyaXUwWA0=;
        b=VYz/EUyAJxUfcX7rjNOjt+KrahuZWOM3TnhVEKvxBoKkvzvPrne7bI7Zwudo49TBe3
         6kJjlOmfMlreWx8IJ85+XcuSL2/WYtqekYI2mL7aDgreOMSLT3pnONLzv0RbTY1tzZ1I
         de6kBLlFDNgA34xq8GVcV780IofEdcgTTor5tBsNs63NzuxGHH/kFes8sJeFkzzZQcK3
         DksBxXnzv4//izVfmEGbEpa8dK+HDMEp63ocuU0yFcxM/hpZNK3WAaENW3XRsPogwIfy
         qyaIBMYMbIzQW9adKs2sS3ThQt0K0JaS0VCKwE7BdzRe7Pb+WHv8nyxOyeQJFzeZrled
         DFKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EXYp4hb8pZeXfs4JGfe3OLfHhggrg8cFEuyyaXUwWA0=;
        b=i4zh8islE4zx3bZ4DBOa9kQiTQhTOSN8RPBOeACKIxPcPyTnP/9cNJCvzJ8MQkUvQO
         aRgxRizbXTg9NNqHrAT0bwCQX1hyhMvKOm3OW92FVrpWNSIt4wDF9Xb7YY8SHnNgaiJ7
         XUaGLKGiSfWGMFr09Dhk6n4bVItD1PqsGYMEcuiBbM0hD4A13M24nOphBEhtfl2tU/2q
         Sak4OKRQ9P7mHKUPhpxLS037p4yFfmFeaCC4aKp8xVG82cUvdgecN+rImvyt2Iakac9m
         Plbd8CJG2I7iqafUz5YZBCcyx8zj9lV4J77rcP6RNBDiJCGRR3wwmga0llnm5YC3sBo6
         vsCQ==
X-Gm-Message-State: AOAM5305FDAoP566HX+KDEMSXYh/433kt5A35APLW/J+n9Tx2jKK0XzZ
	OyuIyHciy48ZMyr15iji3HI=
X-Google-Smtp-Source: ABdhPJzMx2/aOvWRmjSBbi3uh67s3LcibCze5TQqMGyyfqtOA8sL0cwZfUGt9wOHVCt2xP1TKF6Cmg==
X-Received: by 2002:a17:90b:224d:: with SMTP id hk13mr1183156pjb.218.1619720239736;
        Thu, 29 Apr 2021 11:17:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1c59:: with SMTP id s25ls1518420pfw.8.gmail; Thu,
 29 Apr 2021 11:17:19 -0700 (PDT)
X-Received: by 2002:a62:5209:0:b029:278:648f:99b6 with SMTP id g9-20020a6252090000b0290278648f99b6mr980294pfb.9.1619720239159;
        Thu, 29 Apr 2021 11:17:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619720239; cv=none;
        d=google.com; s=arc-20160816;
        b=CgPRZzMh9GNyqfn3SAWVngCR+RUNMzOmEUW55EtyfGFQYhQAOHzZZR6LqEDd1cast7
         qC3GbIzKxlpJ+O7KkAKgnSn9UJwvWaBLJERLpoftaOeQ1eeo0rRGe/vcClag9IRc5tgQ
         fdG1DhoIxcE5qTHX45OshPcYf7diBpjbmQS7EpvoQh2iI/AhJCpAA8Yjlc0+45rmRa4j
         +biXofFGeeUPoEcRsM92TAqDukgubSm46EVU8jdXsUrOdLiSnkcB7c1Aa5t1ZSSJK0pG
         e6M0OSC4dBUhcF6UPUCU8LQTj/ALQTkXUAw/6PHNfIm6IY04sOzTRPPUvDxRY3+eBtES
         faIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=MpCPitAmm122m51pt+u1hw6SH26S0A84lD3VDR+ZTJQ=;
        b=vRghowosP/xpeZSCWYyEmmL0m+kI+Rf8cOHXF0ieH3ZqFpzLud1+AxJUdErP/rxAi9
         5z+qUEiOvr1je2et2RHqa8v+P+2NmZVjmMunzlY4SN3sOnIGcSW2gDBxJefkxjfAKPg2
         rhWfjt8kcYgWg05WKaHjoux/SlysPugfhpql6MHzQIfKiULdYtyPc42tQ37OFzJS7Uh5
         847bNpTsd5eEXiGyQiUv+YZXbfJHMs5MTP27lMbXRsFUt6kSo490xjaMyMohkpnKSrB0
         h2Fn4NP/m4FiQZkQPM9SVX8T94rY3nBb5wF12Zwnrbq88F1FA7LFxdzeE392+SBkkZZ7
         Qx2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YPwdYIni;
       spf=pass (google.com: domain of 3lvikyawkafua01fxh8a51ef3bb381.zb9@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3LviKYAwKAFUA01FxH8A51EF3BB381.zB9@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id b17si449163pgs.1.2021.04.29.11.17.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 11:17:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lvikyawkafua01fxh8a51ef3bb381.zb9@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id d11-20020a0cdb0b0000b02901c0da4391d5so3854987qvk.12
        for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 11:17:19 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:8d4f:4280:c6de:de17])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:486:: with SMTP id
 ay6mr1283593qvb.18.1619720238157; Thu, 29 Apr 2021 11:17:18 -0700 (PDT)
Date: Thu, 29 Apr 2021 11:17:16 -0700
In-Reply-To: <20210429150940.3256656-1-arnd@kernel.org>
Message-Id: <20210429181716.2409874-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210429150940.3256656-1-arnd@kernel.org>
X-Mailer: git-send-email 2.31.1.527.g47e6f16901-goog
Subject: Re: [PATCH] smp: fix smp_call_function_single_async prototype
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: arnd@kernel.org
Cc: arnd@arndb.de, axboe@kernel.dk, bp@suse.de, eric.dumazet@gmail.com, 
	jgross@suse.com, jiancai@google.com, linux-kernel@vger.kernel.org, 
	linux@roeck-us.net, mpe@ellerman.id.au, peterz@infradead.org, 
	tglx@linutronix.de, ying.huang@intel.com, 
	Nathan Chancellor <nathan@kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YPwdYIni;       spf=pass
 (google.com: domain of 3lvikyawkafua01fxh8a51ef3bb381.zb9@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3LviKYAwKAFUA01FxH8A51EF3BB381.zB9@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

(replying manually to
https://lore.kernel.org/lkml/20210429150940.3256656-1-arnd@kernel.org/)

Thanks for the patch; with this applied I observe the following new warnings
though (for x86_64 defconfig; make LLVM=1 LLVM_IAS=1 -j72)

kernel/smp.c:515:19: warning: passing 8-byte aligned argument to 32-byte
aligned parameter 1 of 'csd_lock_record' may result in an unaligned pointer
access [-Walign-mismatch]
                csd_lock_record(csd);
                                ^
kernel/smp.c:516:14: warning: passing 8-byte aligned argument to 32-byte
aligned parameter 1 of 'csd_unlock' may result in an unaligned pointer access
[-Walign-mismatch]
                csd_unlock(csd);
                           ^
kernel/smp.c:525:14: warning: passing 8-byte aligned argument to 32-byte
aligned parameter 1 of 'csd_unlock' may result in an unaligned pointer access
[-Walign-mismatch]
                csd_unlock(csd);
                           ^

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210429181716.2409874-1-ndesaulniers%40google.com.
