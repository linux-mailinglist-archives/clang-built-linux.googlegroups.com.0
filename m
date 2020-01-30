Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCONZXYQKGQETT2VBYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8AF14E61D
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jan 2020 00:28:10 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id z201sf3009402iof.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 15:28:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580426889; cv=pass;
        d=google.com; s=arc-20160816;
        b=ca1eAPtf00zTwLt4TuCnDuqnj5vbcqAL15L8RDfLhohEheEXTOgD29gKVKnZzIiuey
         UXs/ic2gzVzUY3qsu6mZGEx/Y9vRBMHYSs55bAh+DDxySokwm3s7ePOs3kxkSpDiqlAM
         0VpaoqwG6ggU8OzjnO+jUUHs9kwGXWP3R5k0HsqfiuCsbvIby/ozqSVy5nMpVNCdhidl
         N4v1diE8iy+i5WVyUFsOmt0DBrJbeTv1+Y5JeRmqEoCgpruWf6hsSSNh1Ee0wFHL3VQE
         FF4/jZ7EcfDvWvQkqetzIEBtHQs1STPYdR6Rc60yoiVtU5mo1wGSOCNdFJiOcuvp4SZC
         rHaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=bpaiuCh1BLN9UjC0O/0bfGznvm4nCyPIuMEeJ4NpwfM=;
        b=UY1GWWcHUVC6VH/MR044B+jrdOEcHGvvu5M60SHbrl1eV2ISsGaofyqgFfO6ccI7Zn
         0KmL0y1pqcFaTUY3RwEeXacC0Xd3Drn8db0AabrBfepkew/Gca09GaFKdImXZ4vzb+wh
         4E+2MUZErTRIgCUSOdKi9wRo3XlO10hz3ThzwA6RNBR/3qj7SxCa9nwcOM+vRD6L4HfX
         NVfjNy22PZTCN/+/HIexi+4zh16Rt0pIORe49HxkeG9iDxkVL8kr51Tw3oJZOMTyR6Uk
         kNQs3VxL6QD/9S68w2ECDMUMbMA85KDJnb9JNa0SqRcpSPZ7LnHxICQxfPDeDRdk2Got
         cG5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tjLPZv3g;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bpaiuCh1BLN9UjC0O/0bfGznvm4nCyPIuMEeJ4NpwfM=;
        b=sJA07+wQU8CiPJUp0ukhcGG1eDqGGeoSv6GmHr9BDYvvNmQMRIvoPY20evnRCexz13
         CP863/IB6DeS9dH3Nxmcj4U96NEJExkc/IkCvli2v+bXFXC+oau/CupzK3y4NBKmJBGn
         RHIbLaopQleGiPEuO7d3snOKLBv4bWoYCAu1KuT+K1NAaEdELd4bMv7V6U5Hhpa3wzul
         hifw7yI565VHwn0t8sLoNpuRLEJvfhug4pVeaWfm8t6BfRwEskxxjVU4O9CrSY9OdivU
         rDGJtiHzXuEdJ88+NxAzkSqKNc2COlVVozQbs6H7uoWlpOBYvNJoj5k5+06tQmXlx13O
         1Bow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bpaiuCh1BLN9UjC0O/0bfGznvm4nCyPIuMEeJ4NpwfM=;
        b=IvFwtj00tKrJvAFzqVavVYYWi+7nAn3Gd84eaUdAs+4TO+tFp3JBY0rsdoNMZTZbbS
         GaKLoWGlikpeChEH/Zj0Ssa0bhtfUWrwGoJFHDoYWj0q2GeuBwwtId5RYwoylTjn1Auu
         REWzZEFA4OoteUm3QyazHZ+VgmZgJ2IG1XEjtHEltwDRrtsk1vwhuvacqy+SrXmv4xyc
         +uX31mUunC7/zr6Rdv8EKL4APOzHAKH0lzv9cYtO7LDMeS/aOw09HHCKciFVZMqAuiuu
         AN5t5VfjpiifvkT/j7Ed+Dqn9nEcmqOw2o7qGjMKTU/cnFYHl4qIu/gTwe/fUwqXutvM
         WL1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bpaiuCh1BLN9UjC0O/0bfGznvm4nCyPIuMEeJ4NpwfM=;
        b=nJYURSb0LG06TaO6rER2IFsBFN4qz+UJVCKYJ7wUC/eU5VKc4EGmHcR8UZUhllDdzc
         yzi7mmStEGidYCheW/mBmmeyDr7iIr9C3BxYeiDqcE2zT7h3UZYDiF0I4+09MpestJJQ
         Ag8uE5oqL+1p/DF6hvzs5yfrGqBMXV6mK4l6jQQnphbbcOOlL/yZkRt3rrBl0aq3h1Zg
         Eul54h1qHtQZAlNHFus3dbes6RXT+7j7jRvm2LmKsphjVVPlaReSZyyljO3yr1HR8DfZ
         HODFd2yg3l9x8uvtx4Hety6xkl1HEfPcDWKkO+kctZ98I3pk89N6ruxUriCczwpdDdmt
         yyLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXU/xgcvUXt5fN/zfUSrXAfk+CwfVk5VOn/Qhmoo3XlGMajYDgB
	WjDENP2zAcQXXEEcR6XhZX0=
X-Google-Smtp-Source: APXvYqwh5qrLIHvBmBeCewE3/kqKptbVVXF/shYZGJPcKV4FfxJ3Dvhs8ooDCp6JQ5G95zhBzs7Ixw==
X-Received: by 2002:a92:8f46:: with SMTP id j67mr6628992ild.125.1580426889629;
        Thu, 30 Jan 2020 15:28:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5d90:: with SMTP id e16ls1002686ilg.4.gmail; Thu, 30 Jan
 2020 15:28:09 -0800 (PST)
X-Received: by 2002:a92:ca8b:: with SMTP id t11mr7133379ilo.227.1580426889304;
        Thu, 30 Jan 2020 15:28:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580426889; cv=none;
        d=google.com; s=arc-20160816;
        b=jm7mUPbri7XbbN10R2aXP3Z8wHdWwd1Dpb/wsBGZuTnTTmyWOK0Br65Hos/98EplNK
         eL4vg7p3XVN2Hy/twwE71qRX6wWmUf0VMenwBmWHnEnSAT8kGhihaf8CWQMk/5EzCBoD
         e1VmKthEJX1P4DCnrngT8rH0lSTdzzIq76YnP24uPgu85TrLN5k++PWkloOiuZCd2YQ8
         C5/UJRdxEwIbK5ymIDLrZo4JZsmepgnQElQ13SJ1+iEqpRzdSogU/4sjohqnIMfp1Ikp
         Oz+8iLUp7rx2S4S3N2TZFO9bfiCcJI1jwUnVufJYwid+iTy2K/dQAUu/kJqgcFnEv6pz
         OwdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=HhWgiLuLRP/XUyJ6Tu3o6rCOtqQ6XBZMf7ZITJD2Z0w=;
        b=fCwKh8BUNhzr2H6dHBMhPHu2RRY2E/cOH2mhXFCvUY7+tK/QiTzOY2oGwcWjL3APi3
         jSHFhufoEefZOQPDXgKPtO5h5FKjafnqs7NP6CamkCHyn5BSzTPIHWkjv8bH8AYcwTFm
         LaMb1+UpFXqdXgHONgNHFeNLAoPGepbWi5HkYHH+P8o8bICfPjucOoFfjjBP35Vt92F4
         kzmTyGXemF9+uI3VKrkKxpGH8D6MgQdHYJQ49aM/8IeT33xWdqn++86laYwx++J4JSBr
         eYr/O/+C9HkCHNqDpZCM7AvCPK8tZve6sPiSb1yPsr1WBYygX7M0CY267ucygDkO7CCS
         nIhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tjLPZv3g;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id u22si412737ioc.3.2020.01.30.15.28.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2020 15:28:09 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id a22so5397438oid.13
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jan 2020 15:28:09 -0800 (PST)
X-Received: by 2002:aca:c646:: with SMTP id w67mr4461276oif.171.1580426888882;
        Thu, 30 Jan 2020 15:28:08 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id r2sm2369485otk.22.2020.01.30.15.28.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 30 Jan 2020 15:28:08 -0800 (PST)
Date: Thu, 30 Jan 2020 16:28:06 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: ci_notify@linaro.org
Cc: tcwg-validation@linaro.org, arnd@linaro.org,
	clang-built-linux@googlegroups.com
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-mainline-allyesconfig - Build # 44 -
 Successful!
Message-ID: <20200130232806.GA51237@ubuntu-x2-xlarge-x86>
References: <1935299941.159.1580425149724.JavaMail.javamailuser@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1935299941.159.1580425149724.JavaMail.javamailuser@localhost>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tjLPZv3g;       spf=pass
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

On Thu, Jan 30, 2020 at 10:59:08PM +0000, ci_notify@linaro.org wrote:
> Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-mainline-allyesconfig.  See 'Bisect log' in the links below for bisection details.
> 
> First few errors in logs of bad:
> 00:40:41 spectrum_qdisc.c:(.text+0x19a4): undefined reference to `__aeabi_uldivmod'
> 00:40:41 spectrum_qdisc.c:(.text+0x1a6c): undefined reference to `__aeabi_uldivmod'
> 00:40:46 make: *** [vmlinux] Error 1

Not a clang error but patch sent:

https://lore.kernel.org/netdev/20200130232641.51095-1-natechancellor@gmail.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200130232806.GA51237%40ubuntu-x2-xlarge-x86.
