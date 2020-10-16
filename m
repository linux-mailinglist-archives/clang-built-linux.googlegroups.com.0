Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBPOUVD6AKGQEGS7YWQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9604A290E17
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 01:18:22 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id k190sf856254vsk.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 16:18:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602890301; cv=pass;
        d=google.com; s=arc-20160816;
        b=osMvcLVlMj/TUggdJqPoAUmBtTseZbYMm4y4ggt53FI8FAv+SCBKtP/tqk8HyYBgar
         YBmK404smA/ZJyTWuG5ZXoTXBWd1PuNSPKdHcevKSXofWYa/u+SLPg6U6M3PpPiIHVeH
         8OGGyWUOlan4YhregMznriBFMZpcboVKIT5LvNdLNrd8aXMBqauoEdbheh/VI4epP/Um
         vy2j+QqujNKuIJnigDrgzhFnysZfW2j5Wkru6t9NscOVQ7aCokTKUn/iRQsdAhvWuCfN
         RcjSEq3Ncy84JRDidVdLnLsagk9VXEYVSlCOCFCHgN+esFFYnJAiI64WiTwzKcTgGDAA
         13GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=uUi6E1WYbgwMuQKKZeEdVNo7RSl7rdZvGBMxDIzU43Y=;
        b=powrnjXmL2w82uzk5qvMyY7/HjhSJnOEMCs0/cs8dU5d2Ys5pBBQN0TSNaAAcLeIox
         aYWt/eea/f210smIN1V4JYfnGfjnlh7C7C59a+CvTYx+vvk1Gu9zmB5SxevtEF+wGw3N
         OZyeaNzUSttHD/X+yXg8mxLhq83NKhvIx/YprlQz0odfRmpFDU3+arF7YW/vTyUAMbKf
         oNPBQym15D62+ApDITlh69p/LTHc/RGquannBgJyzUCdCzLEl5wRFaW9OBKfq7tmy2Q6
         3FeDsruJR3+qKqSRomLlbKEr4oFkCQmvbaRwjNRCmaHaUFN+ChjLbxwL2pJ2OpRtlgnR
         A8pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="G/y9mwpY";
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uUi6E1WYbgwMuQKKZeEdVNo7RSl7rdZvGBMxDIzU43Y=;
        b=Mcc7GlmUhev7JLlWpcCWJUsDTxUkzdtqT0VxLDD24iBWRJHA/hsApk9kGKOPkgOUDh
         EecFRzOmeUfZr1I7UbNRKHwWoi6/jEil6ZiCX5ihlKDuk2+Wh27CQrXPid0xFq4AoSMZ
         5mSuvSlYBeAnVJa7qJTDQa939/QNAXaggByK8gqK06DxOe2KaWByssCpGn+X2wN0mILm
         BE313lXaLnFsYvb8NfKNe78+PqVpPs05SHyTyV1c8tvJ9wTXiRWroUJ7sIcOEnVLE6bl
         6ObO1kEZGi3lSP+cPViZFGjzZLOwEU8qS1sianfnD5sSURvCYn3VO/tlU+HFTcI5vXv6
         6LgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uUi6E1WYbgwMuQKKZeEdVNo7RSl7rdZvGBMxDIzU43Y=;
        b=fxzlHUN4i3EZrNKYA6o364nrrA8Pd1xQnsRLivfdOcMM4kkl4v2iHtELyUdcq1J8ny
         ZkYJvEa4pQOofvd+ZUSP8l/wQeMk5LAg7+jsyz27LTMdnOY8VUMXiU2Gvt6S9OkAzxv9
         BtYvJp+XJ3vzzItL3QWgn+PAVV9LnHhUR+6NBrEYsdSztD+AHJIDO3wA5hMItNvSTJWT
         PtD0d58QmWVhFapIDfMG5H/PCSC2t8Yi5T2G4rB1lVUDsg7xdZJ2ZaOJWAw/btLHFInD
         oHdWT6fw4AqStjSWhPG3emfUsc3Iv+XMSR0wvxbKOjGdHuImQeB2jTnMorLb224yUpOf
         2OLw==
X-Gm-Message-State: AOAM532IuPg9FrbfBRprlK1cdVefhxcSg0utqBhQjs6iWMjf9C6vZV7V
	2eS0Q4LVx+wRnZyYkowua18=
X-Google-Smtp-Source: ABdhPJwgyHZffEZT3Bbs5YQVGqGBS0CoUPcDzfD5dmr4CTIwYNKbLMqZ3VPoyZsJCRG3jwEZgMK/NA==
X-Received: by 2002:a1f:204e:: with SMTP id g75mr4129217vkg.24.1602890301524;
        Fri, 16 Oct 2020 16:18:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3037:: with SMTP id v23ls558613vsa.11.gmail; Fri,
 16 Oct 2020 16:18:20 -0700 (PDT)
X-Received: by 2002:a67:ba13:: with SMTP id l19mr3911433vsn.30.1602890300906;
        Fri, 16 Oct 2020 16:18:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602890300; cv=none;
        d=google.com; s=arc-20160816;
        b=Zo2hisoXyxNv1a5Owgs6BSSs0VwAvPNoAlmoyzXWphx70rZ5QNwWjyf3DYd4pf08dK
         waLKyh5vRkCM9lowkMtkGPJfuH4UYsqAunimL0asQELBZUQPpM6FQiOvQsBxeavUBiii
         6NANYZExqiiHqOw18Vbv1mJlMWwOXvba+rHXw7LSfFNuCBG8oszSy8JDnNdi9hgkGeIF
         h/62CvlQH6ailonm1LSB0PpEtLcR5+MczPDuGyUrdZgNqe/zNcwRXxrGPCjzUgp4ojQO
         G2QM/Ns43QQE/mIcGBrEDxXxQT9c5o0fSxHOYTaOqIjyD5bMDhye8IW/91WiLyCQLvwK
         7N6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :sender:dkim-signature;
        bh=yFeodx+++6H5IZCOudFZ+pFMKNbTTXh7U0LTT5CQ2ME=;
        b=NwDPyNtgY0Bpo7rtVb7qEjs3rRkeHkTETKN8OgCtFApjhdtAxBDKUzqNMiDH4iB3px
         6JWu7AjwpCc/gbNM7WTqsAuVb3EnqI6Ss2FYuVwoRBmzQR0cjkw9Lg3J9FXRwgzthDQt
         9yF9+4G82hgjq6mqqB5wJ5HUVB2LEAKlMzOXiJnuNXsHWS+qOWw14eQBqZ7eO2rnU8W1
         fGJTMrNmqg97zvwqpOMN9D+RiAlv9WMyfxLTA8JNbib1ExQcw3U9PEM1/NVcWLk6aqgt
         1gATq44frAdimKmY4YYwffQJcZ0k+lV+6+s2ksEh0VF06CX8eYCTuu+wvGvSAZX6ydGd
         Y2Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="G/y9mwpY";
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id j77si234420vkj.1.2020.10.16.16.18.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 16:18:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id m11so4028489otk.13
        for <clang-built-linux@googlegroups.com>; Fri, 16 Oct 2020 16:18:20 -0700 (PDT)
X-Received: by 2002:a05:6830:1d8e:: with SMTP id y14mr4468843oti.267.1602890300390;
        Fri, 16 Oct 2020 16:18:20 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id o10sm1475450oib.1.2020.10.16.16.18.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 16:18:19 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Subject: Re: s390 - buildroot + qemu
To: Nick Desaulniers <ndesaulniers@google.com>, egorenar@linux.ibm.com,
 Vasily Gorbik <gor@linux.ibm.com>
Cc: Joel Stanley <joel@jms.id.au>, Ulrich Weigand
 <Ulrich.Weigand@de.ibm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-s390 <linux-s390@vger.kernel.org>
References: <CAKwvOd=0nOhK4KoLb1_Jni5u3ENDx10QeAxfYcSbtFQs77FxAw@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
Message-ID: <30b7bea6-1135-609b-f1e5-a4f243e1dcc1@roeck-us.net>
Date: Fri, 16 Oct 2020 16:18:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=0nOhK4KoLb1_Jni5u3ENDx10QeAxfYcSbtFQs77FxAw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="G/y9mwpY";       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::341 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On 10/16/20 4:11 PM, Nick Desaulniers wrote:
> Hello all,
> I'm working on integrating the latest release of buildroot (2020.08.1)
> into our CI for ClangBuiltLinux.
> 
> https://github.com/ClangBuiltLinux/boot-utils/pull/25
> https://github.com/ClangBuiltLinux/boot-utils/pull/26
> https://github.com/ClangBuiltLinux/continuous-integration/pull/327
> 
> I'm seeing the following error from QEMU:
> KASLR disabled: CPU has no PRNG
> Linux version 5.9.0-00732-g04ed4527465f (ndesaulniers@<myhost>) #30
> SMP Fri Oct 16 15:49:05 PDT 2020Kernel fault: interruption code 0005
> ilc:2
> PSW : 0000200180000000 000000000001779e
>       R:0 T:0 IO:0 EX:0 Key:0 M:0 W:0 P:0 AS:0 CC:2 PM:0 RI:0 EA:3
> GPRS: 0000000000000001 0000000c00000000 00000003fffffff4 00000000fffffff0
>       0000000000000000 00000000fffffff4 000000000000000c 00000000fffffff0
>       00000000fffffffc 0000000000000000 00000000fffffff8 00000000008a75a8
>       0000000000000009 0000000000000002 0000000000000008 000000000000bce0
> 
> This is via a kernel built by:
> $ ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- make CC=clang -j71 defconfig
> $ ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- make CC=clang -j71
> 
> The booting qemu:
> $ qemu-system-s390x -M s390-ccw-virtio -append 'rdinit=/bin/sh '
> -display none -initrd /android1/boot-utils/images/s390/rootfs.cpio
> -kernel /android0/kernel-all/arch/s390/boot/bzImage -m 512m
> -nodefaults -serial mon:stdio
> 
> Is there a preferred kernel config or additional flags to QEMU I
> should be using to avoid this error?  It's also possible that there's
> a bug in the kernel image, but given that it fails very early with no
> other output, I am slightly suspicious of that.
> 

Maybe that helps ? From my builders:

    # qemu only supports MARCH_Z900. Older kernels select it as default,
    # but newer kernels may select MARCH_Z196.
    sed -i -e '/CONFIG_MARCH_Z/d' ${defconfig}
    sed -i -e '/HAVE_MARCH_Z/d' ${defconfig}
    echo "CONFIG_MARCH_Z900=y" >> ${defconfig}
    echo "CONFIG_PCI=y" >> ${defconfig}

Guenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/30b7bea6-1135-609b-f1e5-a4f243e1dcc1%40roeck-us.net.
