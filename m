Return-Path: <clang-built-linux+bncBDRPZAGFRAFBBVEFQGEAMGQENIIWX7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B99223D7C27
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 19:31:00 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id j30-20020a056512029eb0290387ad3bb6e0sf5917981lfp.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 10:31:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627407060; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sip8zNKyf10ELnnEbbyjQcdqipATqUD4KpQdNvoldMagt4ECQUeyGTy5ROqBL27axM
         lAMLzx7T76HnJ3ShKVBwqDZl4iyiyN6uepJ+r2zA0m9nyg5JHiTbsZHwdU9KE+0z9dO+
         RxG3xbCtnvKrbiYzSHquxdKtvXWoTRqb847h9dAiSrtclm8PWd+cxi0P9MR99qJqNMPd
         36B6Wi6um7VvdSTKvw9NWw5SAJ6hhFVNoEgKEBQP342+LA8OoGQ31g257398yYkPGbQl
         okiIOk1vhVApVhwEYW9hMYmEtsJRx4aHjPr/F1fADDrXRmS+/vBs8ZY5D9/mTdaaLsCZ
         dTow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=A2AsoCQ6H/c5WzgJt3PEWOF56K7iKy5m+IMCG7baekM=;
        b=t8pwy7i7CvPQzTKijveGENz8aThDGRNhnIvGgtxf9BeDnsHbX7vrr34xMjqBTb+60g
         kfGrZ1DSkNlA46X94dTG9EVY7qj7T2eZAtw6hU6mGU8LNeziF+wgvXg4Un7KjTWaOqua
         mGqJInLCzRtEpPp8xzK0pvHrhnC6hxsO1Rbdxef7ATCfTvz3qSSbS9hqyrwbEoAc0Gir
         nsLKOPPUhzPMCYE3QGusQee3vsWcbkW9ktSzAXY6Hd8mebfDRxh8aixnn6SAJgScuEZq
         9NA4DiTzE3iA9/22zh3ncV4KouJ5wDugyyMFtV0ZLXrKvOtJBuwItt5AmQadbivS/Pxz
         /ewA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ki2TicAW;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A2AsoCQ6H/c5WzgJt3PEWOF56K7iKy5m+IMCG7baekM=;
        b=pl7189cnPEnpUiBRHv7AmU4bX7irhyOpWLp0ILdGK3VCjc04PRdKRnnqUh5XuPgpgZ
         XWMkxDEqornQBuwaNNQqdg0lsBNESDFTQXxpRMg1ajf78brFNM3GPtDZIuSPBUhgSnJ6
         HkDLeVgZoRs5topegTE83ugdqQC4C6MjvwDKZPwmQTlesAvKec+kol2akIaUkkyouRlw
         PkQI9TtothFYBFunD8q8ZihJpwJwTc/W1GvCoR/m2gWiM+mJppYepWCfa3zAHpD5KVwu
         KOhRW7wnpLJfQeELgl/3f5oSSD4/sotpXoPhBztTuqsp7v8IgaOpvs/X7um7wEMLUdPY
         2dbA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A2AsoCQ6H/c5WzgJt3PEWOF56K7iKy5m+IMCG7baekM=;
        b=HdkeNFgoizIwHZ6/Dz0dYpGaLIuK0tN24+m4ze7Yu5M3zgvUlLAtvAO+sBCZ6r0NXt
         NJqaUXsgzdqqOxMdvJxK0NoBI6O3QEWjTTyNSWjd3Z28tjoCrGhHOtMNKz2kEtVoSqIr
         qifrVIwlHCOlB3TT5tdu92ukhuthYjNhwslIn8Yfs4VE+vyFdQC2SQtaOrKw+7UXOJon
         LBwEL5L3B2pLs6tdhQYTBPh439KCPR35y3oxcEqFLhb/zpdXldi7UbMbPJhe3PUlblQe
         8fL9TOxB0SQQrw0hwCHlMYWLn+wEScJfclclnUPeO57mF9wZAq2yyZQfETRLK+fGY0Cn
         WYzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A2AsoCQ6H/c5WzgJt3PEWOF56K7iKy5m+IMCG7baekM=;
        b=rPxZCfBycqmNcFkYv+FFzwEd06FpnlBJte7DBejm8BltefDd8J7/Pa/536ySX3Z8lh
         PVq4vxXDdWqgn8w4quSvWNNe4LoXl/TaFaEnq8oaZsZ+U8/3KooGJ56l9Z/DDqtYkJau
         4gbhRRkS76tpkHl0MiI837C9qgpemt3f01scwwtwefFn0YvjNS370NRJj63X5/KQmGTO
         pymvCa1/gZtukf6hf/uVQ9RveVUVY8kB0Xl6S8lPtPjIFGHemeU+A8GVNvT2ZJF41JFY
         9hO7dERnrIAQ5tnSX0sA67ggliASBb1HHtg3LYV7eljwjTWbKsnEz0XniG55cYP/jPme
         6e7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533eGesqIADs9siIGaghcQrOhsohgKFAFtWQpbYZYKaQqNyZLBmW
	Tn45EFbh/nHjU6ocBQ9+OtM=
X-Google-Smtp-Source: ABdhPJyhkIyaJ3TfQv7G9AQq/Fa2ybJRLWB4mNSvMKW28JtDtiSmUzb+1NeCbZUQtvh9yPgd3/rONw==
X-Received: by 2002:a2e:a36d:: with SMTP id i13mr16459211ljn.510.1627407060282;
        Tue, 27 Jul 2021 10:31:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b1e:: with SMTP id f30ls879385lfv.0.gmail; Tue, 27
 Jul 2021 10:30:59 -0700 (PDT)
X-Received: by 2002:a19:c20c:: with SMTP id l12mr18027632lfc.296.1627407059205;
        Tue, 27 Jul 2021 10:30:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627407059; cv=none;
        d=google.com; s=arc-20160816;
        b=XZXdT1qJRkG3NUC0ayAUILuvVxCE0d4Sjn/Yz3j5pjy9IpnxS0EPFIZh+2xKD6RlaV
         WF2X8uh0wDDAFJcuA/8Gy/6dWjYUvSsgiBdn0hxrqbPzXYr4yDuDAavuIX2UmM5ET9ZM
         e3r81WUMyw3lyuJGYiBbIS5HJEyW0tDBfpgaNzowphvfU4kNEDXwluItBfJXzWA869Bc
         mSDREDioJ8R3DpUFvThKWNhHNSaPAoi68PzgfnU2m9ZfW7M87+g+5iEYpCDk9/+JcLsT
         48Aa0VYqhhQ3XKdgEG5wZATZs4cFakMYoHuxDqQ9bZXMKUffI4XZ2Mrg1KSd44+XpJ2w
         g7aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=WmlkGbrkM3a2AT1p/6eYnuGLhgp+ub6+Yuxgg6oi8yY=;
        b=GH69usa63Eml+KQxYt1L3nMS1l7mSEXoOtGn0IH93bfzx6Quy+yVpnB2XHVjOJnfDH
         tzJxhsP/BxYBwev9qdhwbraJ/TZm8IFz1kZtPYwB9cZhPv1LGZfH8PJxY5fMr+LCWa1H
         m0axaCJLFB8crT/reG5bN5zV+8hYQZ2IDxVnNGBxZwYfdzV50y2wfsx83mcedG9gjFUI
         yV1WbWU/BaDvxlKHDa+SdbSm94ZdLi7knHLiJuu2j/i4q3yqoaoZeF61o0vscBrkUbfW
         1tCjwBz/z78nJmdk1fMbwKAawDENmSakVKJI7WDNnMYPU+Um+Hx1BNrqNP1pMZ6aSkJE
         4Npw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ki2TicAW;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id a2si169452lji.5.2021.07.27.10.30.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 10:30:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id g13so22963996lfj.12;
        Tue, 27 Jul 2021 10:30:59 -0700 (PDT)
X-Received: by 2002:ac2:5e9a:: with SMTP id b26mr17876604lfq.362.1627407058841;
        Tue, 27 Jul 2021 10:30:58 -0700 (PDT)
Received: from localhost.localdomain ([94.103.227.213])
        by smtp.gmail.com with ESMTPSA id n28sm346380lfh.176.2021.07.27.10.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 10:30:58 -0700 (PDT)
Date: Tue, 27 Jul 2021 20:30:56 +0300
From: Pavel Skripkin <paskripkin@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: syzbot <syzbot+9cd5837a045bbee5b810@syzkaller.appspotmail.com>,
 clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 davem@davemloft.net, herbert@gondor.apana.org.au, kuba@kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 steffen.klassert@secunet.com, syzkaller-bugs@googlegroups.com
Subject: Re: [PATCH] net: xfrm: fix shift-out-of-bounce
Message-ID: <20210727203056.377e5758@gmail.com>
In-Reply-To: <202107280113.ykJy6Oc4-lkp@intel.com>
References: <20210727174318.53806d27@gmail.com>
	<202107280113.ykJy6Oc4-lkp@intel.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-suse-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MP_/w+5mWJ0hzkLOGrIDgVYQu8r"
X-Original-Sender: paskripkin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ki2TicAW;       spf=pass
 (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::12e
 as permitted sender) smtp.mailfrom=paskripkin@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--MP_/w+5mWJ0hzkLOGrIDgVYQu8r
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Wed, 28 Jul 2021 01:25:18 +0800
kernel test robot <lkp@intel.com> wrote:

> Hi Pavel,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on ipsec-next/master]
> [also build test ERROR on next-20210726]
> [cannot apply to ipsec/master net-next/master net/master
> sparc-next/master v5.14-rc3] [If your patch is applied to the wrong
> git tree, kindly drop us a note. And when submitting patch, we
> suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:
> https://github.com/0day-ci/linux/commits/Pavel-Skripkin/net-xfrm-fix-shift-out-of-bounce/20210727-224549
> base:
> https://git.kernel.org/pub/scm/linux/kernel/git/klassert/ipsec-next.git
> master config: s390-randconfig-r034-20210727 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project
> c658b472f3e61e1818e1909bf02f3d65470018a5) reproduce (this is a W=1
> build): wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross chmod +x ~/bin/make.cross # install s390 cross
> compiling tool for clang build # apt-get install
> binutils-s390x-linux-gnu #
> https://github.com/0day-ci/linux/commit/0d1cb044926e3d81c86b5add2eeaf38c7aec7f90
> git remote add linux-review https://github.com/0day-ci/linux git
> fetch --no-tags linux-review
> Pavel-Skripkin/net-xfrm-fix-shift-out-of-bounce/20210727-224549 git
> checkout 0d1cb044926e3d81c86b5add2eeaf38c7aec7f90 # save the attached
> .config to linux build tree mkdir build_dir
> COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> O=build_dir ARCH=s390 SHELL=/bin/bash net/xfrm/
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    In file included from net/xfrm/xfrm_user.c:22:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:10:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:75:
>    include/asm-generic/io.h:464:31: warning: performing pointer
> arithmetic on a null pointer has undefined behavior
> [-Wnull-pointer-arithmetic] val = __raw_readb(PCI_IOBASE + addr);
> ~~~~~~~~~~ ^ include/asm-generic/io.h:477:61: warning: performing
> pointer arithmetic on a null pointer has undefined behavior
> [-Wnull-pointer-arithmetic] val = __le16_to_cpu((__le16
> __force)__raw_readw(PCI_IOBASE + addr)); ~~~~~~~~~~ ^
> include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from
> macro '__le16_to_cpu' #define __le16_to_cpu(x) __swab16((__force
> __u16)(__le16)(x)) ^ include/uapi/linux/swab.h:102:54: note: expanded
> from macro '__swab16' #define __swab16(x)
> (__u16)__builtin_bswap16((__u16)(x)) ^
>    In file included from net/xfrm/xfrm_user.c:22:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:10:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:75:
>    include/asm-generic/io.h:490:61: warning: performing pointer
> arithmetic on a null pointer has undefined behavior
> [-Wnull-pointer-arithmetic] val = __le32_to_cpu((__le32
> __force)__raw_readl(PCI_IOBASE + addr)); ~~~~~~~~~~ ^
> include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from
> macro '__le32_to_cpu' #define __le32_to_cpu(x) __swab32((__force
> __u32)(__le32)(x)) ^ include/uapi/linux/swab.h:115:54: note: expanded
> from macro '__swab32' #define __swab32(x)
> (__u32)__builtin_bswap32((__u32)(x)) ^
>    In file included from net/xfrm/xfrm_user.c:22:
>    In file included from include/linux/skbuff.h:31:
>    In file included from include/linux/dma-mapping.h:10:
>    In file included from include/linux/scatterlist.h:9:
>    In file included from arch/s390/include/asm/io.h:75:
>    include/asm-generic/io.h:501:33: warning: performing pointer
> arithmetic on a null pointer has undefined behavior
> [-Wnull-pointer-arithmetic] __raw_writeb(value, PCI_IOBASE + addr);
> ~~~~~~~~~~ ^ include/asm-generic/io.h:511:59: warning: performing
> pointer arithmetic on a null pointer has undefined behavior
> [-Wnull-pointer-arithmetic] __raw_writew((u16
> __force)cpu_to_le16(value), PCI_IOBASE + addr); ~~~~~~~~~~ ^
> include/asm-generic/io.h:521:59: warning: performing pointer
> arithmetic on a null pointer has undefined behavior
> [-Wnull-pointer-arithmetic] __raw_writel((u32
> __force)cpu_to_le32(value), PCI_IOBASE + addr); ~~~~~~~~~~ ^
> include/asm-generic/io.h:609:20: warning: performing pointer
> arithmetic on a null pointer has undefined behavior
> [-Wnull-pointer-arithmetic] readsb(PCI_IOBASE + addr, buffer, count);
> ~~~~~~~~~~ ^ include/asm-generic/io.h:617:20: warning: performing
> pointer arithmetic on a null pointer has undefined behavior
> [-Wnull-pointer-arithmetic] readsw(PCI_IOBASE + addr, buffer, count);
> ~~~~~~~~~~ ^ include/asm-generic/io.h:625:20: warning: performing
> pointer arithmetic on a null pointer has undefined behavior
> [-Wnull-pointer-arithmetic] readsl(PCI_IOBASE + addr, buffer, count);
> ~~~~~~~~~~ ^ include/asm-generic/io.h:634:21: warning: performing
> pointer arithmetic on a null pointer has undefined behavior
> [-Wnull-pointer-arithmetic] writesb(PCI_IOBASE + addr, buffer,
> count); ~~~~~~~~~~ ^ include/asm-generic/io.h:643:21: warning:
> performing pointer arithmetic on a null pointer has undefined
> behavior [-Wnull-pointer-arithmetic] writesw(PCI_IOBASE + addr,
> buffer, count); ~~~~~~~~~~ ^ include/asm-generic/io.h:652:21:
> warning: performing pointer arithmetic on a null pointer has
> undefined behavior [-Wnull-pointer-arithmetic] writesl(PCI_IOBASE +
> addr, buffer, count); ~~~~~~~~~~ ^
> >> net/xfrm/xfrm_user.c:1975:54: error: expected ';' after expression
>            dirmask = (1 << up->dirmask) & XFRM_POL_DEFAULT_MASK
>                                                                ^
>                                                                ;

Oops :) Thank you, kernel test robot.

#syz test
git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master


With regards,
Pavel Skripkin


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727203056.377e5758%40gmail.com.

--MP_/w+5mWJ0hzkLOGrIDgVYQu8r
Content-Type: text/x-patch
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename=0001-net-xfrm-fix-shift-out-of-bounce.patch

From e7cf3838979bf3079a511b6809e971945f50eb25 Mon Sep 17 00:00:00 2001
From: Pavel Skripkin <paskripkin@gmail.com>
Date: Tue, 27 Jul 2021 17:38:24 +0300
Subject: [PATCH] net: xfrm: fix shift-out-of-bounce

We need to check up->dirmask to avoid shift-out-of-bounce bug,
since up->dirmask comes from userspace.

Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>
---
 net/xfrm/xfrm_user.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/net/xfrm/xfrm_user.c b/net/xfrm/xfrm_user.c
index acc3a0dab331..4a7bb169314e 100644
--- a/net/xfrm/xfrm_user.c
+++ b/net/xfrm/xfrm_user.c
@@ -1966,9 +1966,14 @@ static int xfrm_set_default(struct sk_buff *skb, struct nlmsghdr *nlh,
 {
 	struct net *net = sock_net(skb->sk);
 	struct xfrm_userpolicy_default *up = nlmsg_data(nlh);
-	u8 dirmask = (1 << up->dirmask) & XFRM_POL_DEFAULT_MASK;
+	u8 dirmask;
 	u8 old_default = net->xfrm.policy_default;
 
+	if (up->dirmask >= sizeof(up->action) * 8)
+		return -EINVAL;
+
+	dirmask = (1 << up->dirmask) & XFRM_POL_DEFAULT_MASK;
+
 	net->xfrm.policy_default = (old_default & (0xff ^ dirmask))
 				    | (up->action << up->dirmask);
 
-- 
2.32.0


--MP_/w+5mWJ0hzkLOGrIDgVYQu8r--
