Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB25DUD3QKGQEQ4WMGZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id B566A1FA51F
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 02:27:25 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id b6sf14576175pfr.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 17:27:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592267244; cv=pass;
        d=google.com; s=arc-20160816;
        b=DU9V4JgwCMjf7DFj/CVJs2PBEq9OdglYJgACBNsPrfc8ivKWWjc8A0kgbDQjeWt74g
         j+1lSoLBLHBbOnS6D95NQ4CMMuBXNEysCUA+Vgf/NSLGLb15BUMYqwGt35EgjH/a2ZVC
         GFbzbwjwZGww1vdDp1YPIaOLw3V+zP6LUkYComagkppb8uLTcGPNuP5m4/J0YNHNr3CJ
         zSFPyvmqfMHUsPf2YrMhksGjIrkOFsM7eB/Qa1isI4vMUV6hcsmP70qowqRmjgvVxycg
         xKy2ZVBfUsMBNPuGbwtmht0Dngpo65Ev9eoMimfTYa9RCnC1srqbGgOPK+JUXDyb3udH
         XIag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=LiROI2oNPhPOm7Hemz7q/lNib2+em6C/wpzlnqxbvxc=;
        b=rHxz7iKI74gEGfTTL+L+aHlcgxe8MGW8oJmNVIKZLtQoNhasNyEKfVyZduUVoVq0ay
         3hQdBBmZ8jV+gw5mGTVqH9/7ijE73dnmETMw17gkEMFblIHg2JwRNXSXjpXSogaKRtsj
         AnwlgcarauhS4zANk+uvIaIemuNRvvvtlMPpeLguPJK93uZspxeXuMXPvHsm/FeoR6En
         rqvrpRHfRPNq6XwYj1/frXBJp3crtyLrsST0EFI2a8IGeLnVdwogk4LR2U0aVc1WB7z4
         KIzScQbCLlEPl/Qj9+J7gJQIvLvrIWzafwKfHz0EZFHaJ9iq+jq3UNXqdLui6zp/5y4F
         zENw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ujLlWxkA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LiROI2oNPhPOm7Hemz7q/lNib2+em6C/wpzlnqxbvxc=;
        b=ViGjoxfoUH8cfn6gcQYaXLdUnj2pa26UDIylsPPXRXNdW6Aa3VQvz3MSX6Zr1n3vR1
         bIoCXdqdB4w5bEkp6HfFYM9A7l4y0XLYl+mSxqLZf9Do/EzbJwvrapAO+dSAykb/TKek
         7zhVPrkuMlJy9QIAihBJZOcbZyLi8XzRPY1ETwn4bz4cFVZCy3UddCFUGiKyLjVsUlh1
         AuetYEAzk5diHmKV0pAuo6GMp27CW0fJeg3oYJQ6OApJc55hL+CHs/sRYFB2hYO9FqzK
         Ga3z/aigrvP3xeg131xL9nFkN5WuY9hE2lCUX8dWjSLdnLJBB0Ug7/NPTAZ7ytcY7sBK
         zmKQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LiROI2oNPhPOm7Hemz7q/lNib2+em6C/wpzlnqxbvxc=;
        b=qFqfVFi5iOFX4f85Jhu6ZeaFl/ej0SVLQyjtJeEI7IJaX89RjcftzQfmHku1wNu3L8
         E4kt6lOO1yCbUj9YJRnTcKwAHQmXGrcMNkUnc94nDKRgDxw5oh4n6/1r0Gj/NAWwuLZ7
         m/I/5XWtGmB505DhN/olC5kUvBLXPk9exbp7n0Cw9Ac8Bsm7R1JeTc2sjyL7A1mIp8AJ
         nBxm0kPsrCXf8u7vB7fVRVU4ZuuO8Z1loEmwVGL7V1x42XdP9vw5BNhNFk584qM00Bed
         PuBxzZwSUMEpt5I7ZorVoy6FQORYvXWSCPwURoB6ZKjra8RE2xN42e86oe46CQYlaKXJ
         4i8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LiROI2oNPhPOm7Hemz7q/lNib2+em6C/wpzlnqxbvxc=;
        b=MXhtHVb84m7RGCzF2oGMEC4p8YO9DuYOYQxSZGi+HMyO6pPVgQvjltA50UkSAVAqG2
         xjPnZJDQ784C9Kbn4WnXb2rTlggG8Y27LL0HG/5AnZMUt+fA8hZKa7yhgGvc5lAhxT/w
         BZTEmVaBcJcT2MhxBn538ICcDHcmv+0semVmVS5/oQFd1NG/QoyCgERGKMw396t+uGFo
         mfvOGhvzzaFs+UpWT/kQzPlqndBPltCvfAKlCMuwcPQ/MvUi31Bm1hcIPevs3JeksxaJ
         0pOSaNJOqzaArjehzk9iowIi19IKyp14ApxZuHIoBOkzoeJpYt1kQGiu2TknuflCoJzp
         bCEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ttWoPxO6R/yrYdfeVRdZpgvm4AbrPDXInC/I9bTRYHFZnYDUS
	ONx2InaMZYy/KJNJzvDyDkw=
X-Google-Smtp-Source: ABdhPJxXlVHNOK8i1glTPeSzglCftlPAUv6kjtgcMH7WgcRyTQsRoQt3AMa4yz0pxVKvrGF8Lp02Ww==
X-Received: by 2002:a17:90a:aa88:: with SMTP id l8mr241497pjq.145.1592267244033;
        Mon, 15 Jun 2020 17:27:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:dd4d:: with SMTP id w74ls4016741pff.4.gmail; Mon, 15 Jun
 2020 17:27:23 -0700 (PDT)
X-Received: by 2002:a63:6e4c:: with SMTP id j73mr97737pgc.69.1592267243669;
        Mon, 15 Jun 2020 17:27:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592267243; cv=none;
        d=google.com; s=arc-20160816;
        b=pVknGE1P4XMZ0pU30jgBD/3U1WrF8Skj7iej83kPfl7woqLiKp8lakPhtokFTYieW8
         vSLdb+czqBQ2uNmfF+fmNHmcCYCLaAPrXkU65D+v87MyPC5fRDNLVvYeDWAOP/awDHr6
         W908F3mhTNmWBQiESjy/aR8p4srsGUPOAuea3XNAHwYVm9SAbIrZ8+rZhFNDwl4V7Xef
         AI+Ev29NmmM5h2cd7nfZqpF+Wp3TrKxQDzLMCpQZqlTGsljqvggB6XeEyBL1c8LVk4K0
         S8XoOMiS9KvnG4Dykxr6rPBo/VluyI5nfMGM8V4L/cUmDO1lKGUY2ydOdZM7CGjwjfVK
         9iPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QgmGpiw00RUbPn0dElJPKuqibpwqFCkOpmWT1FnzDzI=;
        b=qqsArml0xC+d5R7Y2m1bKsWTsVv0gQ0ppEbg08uMcoSGUHNPkZ8BOgYaNDrjt45XGN
         xpR5cvCXyMMeXtGN1E+Xt7ePwC6gRj99r/iQe/v31ucR2tRzwhfJVAOJVPRe1h8HG2Kp
         tkbXpdE5yQqhdPb9CVQPOxpte2b1P/HrKXfQ8vbrKI2e6X62gsWoRJVJDjNIl1EmKBQm
         Z9EDzfzGWgLOzcgE/tRE8ty0jlvJ/ApJ3DjwXwnO1XyjObgMqfWvTuhuSt4zGoAZRUZ/
         brasA9J6LbxxAiJ0yzMwUYo2sGbBgQtI7N+JdpGdf6ZlAWz+Q3xSJOLzetYZVqj//3th
         PPwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ujLlWxkA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id a22si33687pjv.3.2020.06.15.17.27.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2020 17:27:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id g5so14624319otg.6
        for <clang-built-linux@googlegroups.com>; Mon, 15 Jun 2020 17:27:23 -0700 (PDT)
X-Received: by 2002:a9d:6c03:: with SMTP id f3mr467685otq.291.1592267242901;
        Mon, 15 Jun 2020 17:27:22 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id f11sm3769430oib.43.2020.06.15.17.27.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2020 17:27:22 -0700 (PDT)
Date: Mon, 15 Jun 2020 17:27:20 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>, michal.simek@xilinx.com,
	arnd@arndb.de, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5 01/13] powerpc: Remove Xilinx PPC405/PPC440 support
Message-ID: <20200616002720.GA1307277@ubuntu-n2-xlarge-x86>
References: <cover.1590079968.git.christophe.leroy@csgroup.eu>
 <8c593895e2cb57d232d85ce4d8c3a1aa7f0869cc.1590079968.git.christophe.leroy@csgroup.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <8c593895e2cb57d232d85ce4d8c3a1aa7f0869cc.1590079968.git.christophe.leroy@csgroup.eu>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ujLlWxkA;       spf=pass
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

On Thu, May 21, 2020 at 04:55:52PM +0000, Christophe Leroy wrote:
> From: Michal Simek <michal.simek@xilinx.com>
> 
> The latest Xilinx design tools called ISE and EDK has been released in
> October 2013. New tool doesn't support any PPC405/PPC440 new designs.
> These platforms are no longer supported and tested.
> 
> PowerPC 405/440 port is orphan from 2013 by
> commit cdeb89943bfc ("MAINTAINERS: Fix incorrect status tag") and
> commit 19624236cce1 ("MAINTAINERS: Update Grant's email address and maintainership")
> that's why it is time to remove the support fot these platforms.
> 
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Acked-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>

This patch causes qemu-system-ppc to fail to load ppc44x_defconfig:

$ make -skj"$(nproc)" ARCH=powerpc CROSS_COMPILE=powerpc-linux- O=out/ppc distclean ppc44x_defconfig zImage

$ timeout --foreground 30s unbuffer \
qemu-system-ppc \
-machine bamboo \
-no-reboot \
-append "console=ttyS0" \
-display none \
-initrd ../../cbl/github/boot-utils/images/ppc32/rootfs.cpio \
-kernel out/ppc/arch/powerpc/boot/zImage \
-m 128m \
-nodefaults \
-serial mon:stdio
qemu-system-ppc: could not load kernel 'out/ppc/arch/powerpc/boot/zImage'

$ ls out/ppc/arch/powerpc/boot/zImage
out/ppc/arch/powerpc/boot/zImage

Is this expected? Is there some other config or machine that we should
be testing instead?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616002720.GA1307277%40ubuntu-n2-xlarge-x86.
