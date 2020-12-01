Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBIPOTD7AKGQEZV24KJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id F30512CA2A9
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 13:29:22 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id e13sf1052515qvl.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 04:29:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606825762; cv=pass;
        d=google.com; s=arc-20160816;
        b=rDXc3GyT0DZ317sS66nhV2Jflrs6998ew+teNvvIJtQm5rbfXOyJ3ktDLAOOOahlaU
         kvxeQ9MnbhP9jqvC9mmdOXGm/TYEDB7p0bgMDwmK9hhHcyVaj7oSVlxkpy0YlBqi3E62
         98CaqsHmahVvINHH5qa+sAW6QFM3Sxb+liug/e6m8z3fhjw3bTSSSE+LnMPtELLJ++/0
         6ONtM8MWyw/1ub2cPr0lcD2Bxfn6CmWFFmpPfuXZ6pwmrs8W0bpLeF12qKWmZ+FdZVog
         GYb3BdOSy7LKgqhOGvoe68FCM01ef6g/hbzyDuhHXNOlM5z63nG9JcPe5XK5V13gykbL
         Sg2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=FPdaNCNUKfYssodpuMkiUMd1HpLm3hkq+idsqc6229Q=;
        b=MnJQej58Ta4woBU6DVPB4/+/DaVdJiruet4BNIMYXqLWNH8IasrfOgzQBosLHDEDWM
         8rCQmpFdnhdRihpFKeMoq92FizWkFaL8ES9GZFjyYuBfrR90naonhtFdr8jtGVXPHb6G
         jkReJ4CL89Jt9E0BYlpnlH0qwzwiY2oR3AH9MU2LVvrI66waoDwsA2qzu1I8/mgyclk8
         DOl6TXJb6H6DtoIsuntWFFa/cnW90V74miIjy1sD1rNcZg3Z221Eo19HG46DIWqaA4OD
         8qY8lch/f8CBt1W8y+plW89MyW+kbJmPWe/Vici5Qmsyt+V3tewVco4ca/sDYVPqmoKT
         L8FA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FPdaNCNUKfYssodpuMkiUMd1HpLm3hkq+idsqc6229Q=;
        b=XvlswxXdr9WLejXvuNhZNRME6Mbk2i/GCon/AgFJbcwVxkSDny618DyiMt5DmwRf8h
         E1OO44Nv3jG4Qf6g7AFnWrOSZkdnIW5vHRvhRr/3UZUdDX1EFDuZJs19P6MouI7rHrU9
         FpF24lWa3KN48RYH7g2rpf06pvspHlGmkY+B955qG9Oz7IuJX+T2zPjmQ7j/WKk2sZFo
         w65kMTzsCCX5MucZ5Ex1WF5fZtZskgJmWqUYm6SvYtUoiNckZFvCc/K1AcxcTRt851Sc
         xrIm7V/hc448ne2+GlhENWDsELFfPX343/nwlZeHbXufZzm1sAwbWiY/FQaBSNVwlOK/
         yWvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FPdaNCNUKfYssodpuMkiUMd1HpLm3hkq+idsqc6229Q=;
        b=SRjS5amK5wNXqjrpPpPL/85WoyCe6DOJMx0xRfHMDDMFBkWyctxVIrAzpM4zbojKb6
         PsBdt0U/aNgz3GJCdeo2HcctKkBMe3+dv9QZF9ds4+cMlFFfDcVj2U11o3S89unDapRQ
         Y/ry1OLsfvGv89b5r1mgLIn/0CZUusWh4nXw2ATnkL70zsTnc0j8AwbfnlO+x/U63z8c
         zfDECA0q8Yr4I63KHyjwsQryaCQCYv5+c+uWaQ5gvCOwztC3sFqf45X8ouFBoVoXIInE
         wDzs1CzOcZ8TPc01t1VsGTjCcw1tXdU8VqnllDDcQomEy2/mNQRWUgWVKZK8p8L2Lqut
         p1Dw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LN4SG2g+aB/hZHG+DnIo6FqmjnWUNTgwGeu7fXgjdaLDwONcH
	sL+SHn3pr9erhss56uXhQ00=
X-Google-Smtp-Source: ABdhPJwW845O4uIL9acQTy3CbrFK4mz+Hz5u+sS0Q+yih6mfG50vWzIGA6bZS+7ZRvcMaIh1IOtC/A==
X-Received: by 2002:a05:622a:d1:: with SMTP id p17mr2470543qtw.233.1606825761792;
        Tue, 01 Dec 2020 04:29:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a493:: with SMTP id n141ls882085qke.8.gmail; Tue, 01 Dec
 2020 04:29:21 -0800 (PST)
X-Received: by 2002:a37:606:: with SMTP id 6mr2486176qkg.326.1606825761353;
        Tue, 01 Dec 2020 04:29:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606825761; cv=none;
        d=google.com; s=arc-20160816;
        b=Ohlekje3SaGZUjgH0mxeq5oc1LDsCgxv+jQ5XpjxcgF/fVNGsEll910yMgG5Vtzngd
         ZmXJPzPirQ0tfkWVWbq9son75cVMfHRcmFp/zhBOEMKYCDrw4ciXrXZlADlA4h6T8dLq
         WoyfkjN9LXuO33CXuNBQ46BUcQt+3uVDDL4YgqYY5oYjnwhhrKKQEtBFCzaEEDpu0XI7
         3813ZLijhp61opx2dYOMgJhQe4twzq6Im/koXI55kEV6CSRxWnjboI/h5c48psbAklpD
         Omko6RlHYO/DmM4jaLb4BsQtUkUBlJmzAqHxbHoQWqn89cGzOGO/KcB83UWn5OPZnb0w
         yjxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=2FLs4EHDs2Kr+Ik5D4YQUs1gQUzkm3IJYRpzTJAUHlg=;
        b=lRjxxg8F1BLvapi2hpoZsscJwt8hfeNmbFaU4VkCfiuQs1/Xw65bu85DVn2L9wFFI9
         tm+hVWQaQdKrcQF0ltJqszCYzWaw4vzxR0WIdTAIMbRrC3J0Ubt9v4obs9NkX++RqCNv
         iVn5NEy2YDseHWEgeqKo2nFb4MxPEE4NUxy14co4rh5e1wUvDxwclfV9qcqNt16gRKwQ
         pogHgVgqd5ZK3WsrRpPN6hNpPLTXTCKV0ErOUtkOoeuJVRGCH9XpLRsXarZnXy6pDWqI
         WQrGIrQm5AmgScBTx1TFU1EJ5H/SbORzgTzkl8I9rSMfqXkMlPNBBrlJTUz5BhhQ0He7
         8RMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f21si162719qtx.5.2020.12.01.04.29.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Dec 2020 04:29:21 -0800 (PST)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gaia (unknown [95.146.230.165])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AD7FD206DF;
	Tue,  1 Dec 2020 12:29:18 +0000 (UTC)
Date: Tue, 1 Dec 2020 12:29:16 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: kernel test robot <lkp@intel.com>
Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Rob Herring <robh@kernel.org>
Subject: Re: [linux-next:master 6272/9613] unittest.c:undefined reference to
 `of_dma_get_max_cpu_address'
Message-ID: <20201201122915.GC31404@gaia>
References: <202012011747.PIcmivAO-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012011747.PIcmivAO-lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

On Tue, Dec 01, 2020 at 05:32:51PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   c6b11acc5f85b6e11d128fad8e0b7b223aa7e33f
> commit: 07d13a1d6120d453c3c1f020578693d072deded5 [6272/9613] of: unittest: Add test for of_dma_get_max_cpu_address()
> config: s390-randconfig-r034-20201201 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ac40a2d8f16b8a8c68fc811d67f647740e965cb8)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390x-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=07d13a1d6120d453c3c1f020578693d072deded5
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 07d13a1d6120d453c3c1f020578693d072deded5
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_declare_coherent_memory':
>    coherent.c:(.text+0xf8): undefined reference to `memunmap'
>    s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_init_coherent_memory':
>    coherent.c:(.text+0x174): undefined reference to `memremap'
>    s390x-linux-gnu-ld: coherent.c:(.text+0x344): undefined reference to `memunmap'
>    s390x-linux-gnu-ld: drivers/of/unittest.o: in function `of_unittest':
> >> unittest.c:(.init.text+0x120): undefined reference to `of_dma_get_max_cpu_address'

Thanks for the report. I think it needs the diff below. If Rob/Nicolas
are ok with it, I'll add it to the arm64 tree (with some commit text):

diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
index 98cc0163301b..799125ef66fc 100644
--- a/drivers/of/unittest.c
+++ b/drivers/of/unittest.c
@@ -871,6 +871,7 @@ static void __init of_unittest_changeset(void)
 
 static void __init of_unittest_dma_get_max_cpu_address(void)
 {
+#ifdef CONFIG_OF_ADDRESS
 	struct device_node *np;
 	phys_addr_t cpu_addr;
 
@@ -884,6 +885,7 @@ static void __init of_unittest_dma_get_max_cpu_address(void)
 	unittest(cpu_addr == 0x4fffffff,
 		 "of_dma_get_max_cpu_address: wrong CPU addr %pad (expecting %x)\n",
 		 &cpu_addr, 0x4fffffff);
+#endif
 }
 
 static void __init of_unittest_dma_ranges_one(const char *path,

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201122915.GC31404%40gaia.
