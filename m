Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBD4BVH2QKGQE2O6OLIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AB01BEE7B
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 05:05:54 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id 84sf4057355pfx.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 20:05:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588215952; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jpiat0VQaZhnp5XiOgOPpZW4FdIEI+P49Iod/kSwE9+OOWxLBVE2HOoQtz7nBmZUJL
         /CUTfZ2Uz4cyhOO+APTfB9y2beHH71vheAxdquCohOJTYB2N4fNVD8IJNAwjiDfR4QGB
         lbHZGEnk0zkC+4qDo9S/kgKMjrn6rN+41cKgknn4dnt/00H+o+GBd4iiC5vcqu0MXaNd
         2tFQdheD8vIjsqwE9mNqyKPvFH6bbKb4soLNrcw20ex8wVchUd4yqie7Xr2dtIOp4raw
         Lk9Ubop9Su8nHyO9CV+0sy6puzOLH4d+rwGnKhfbghgdKziN4VQo67J5zsIhiFU+MObT
         9QGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=cbZxpycQW3E27TKWxH423HQkQSzuJJzOCLNvvPbd3wE=;
        b=R0EqQFgzAvyaMHn1sUkIjJh6JvcoJSgeMrJJr/NxLTVYj63QyNSGgF2p/lp3Ds1YN+
         3z8mu8ItrN11Q8q7TpbvAtLsYKv8b1jAiHbf+PUsCTtlWLNCGKB989d5dzaHsPouctHJ
         itrLdJ/zNn5LGYilpGCwUyOb8rVnmQGcnTfLlGwygYfWIEHo8cLMdogaOVMPWD6r46V5
         nOJ0RxKJN5bsop86tEL48VPq2EC3mKhWMSgv23C8KDVUmZu1XGBjcsWDQSITsOX+lRJo
         B9STxs0869pZc7aWy7GHUW3TjbkyltLS51NiIpu+BzDDnYxhQ/mtdHlzNBeHZMj1N11t
         IKoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uENcP0JH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cbZxpycQW3E27TKWxH423HQkQSzuJJzOCLNvvPbd3wE=;
        b=OGdbUVir/FTRufVFsf9kWmdMHG60fRPmVE5V0IBQb22e+7u6XV+LCOH7xm/IBYEU1J
         44RMtwzRxQnGP6F/jhRNqy3b91RFkYK19x13DgEwhErLsVKv7jYnGfPfA6g3LycEvXHn
         M8KIjMGlaZjNRjlnuJwmW/zJArmnNwdi2jZv5o+1l2Gykcdb/mq8pdGG3k3Qc7UxwWEz
         zU5PtedkUGvMqF+SkCGcbxSaxVri8gmdxnHJVKkcGEHMVxcbljguMZsPeV8g5bCxsvyN
         b9MfNnoEIr/rr5J07KHyEjaYqdBSpp5L7nBspqMP1I7vRxPLOSkK1FWvCeajjJlhXN71
         KBpA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cbZxpycQW3E27TKWxH423HQkQSzuJJzOCLNvvPbd3wE=;
        b=HNZ0XoVo6m338COf3utcCfYtTjIBWerJcWm1gbzHEv662dHnzxp/j32knVHd6r5OG9
         /SVUixTuorEybiTb5zt3dptL1IYDpbOiNOrPXyqFYIHP06fidHKSto5Ciydq7vG4yTvo
         eFrBwhI0Y8sNetxmLQZ53GWlyhaX5ER5MAhiRNeEn107g45BeMUFDcWW3w1Z40Y958rg
         I9NOUQU4oNt5plYKvqkioR/I4W/jXyizBKCuFVS6dyIJ3AzKjPNb9gZbzO8+6zL0PEs8
         vEs/J50PyCjRLHxGMtQNKuhP0RvkWeCzKtKhVezon9p7jfpU8yq3pjNV2QXGhdWuTMrM
         yFbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cbZxpycQW3E27TKWxH423HQkQSzuJJzOCLNvvPbd3wE=;
        b=gMvkkM10lAT8ZRCCNMAMoj4732fNZGejEs7Ie64+5uFV82cN/DtOnDheNHDX3V6Y04
         MMRvPnzKAqAzlvysw00eFENxIz+D3Ae6j6hQkn5qYRKYF5K+Q0VIiD4hLuvFNbBxi/cp
         tN25BSj+gJaOdsSaVDfad0zXBoPiY1xt+zxr425TgpkKpfWfxNnpWy3wFBRSfQr3G5w1
         +YKF9HlLvKRCMEjNcQE8V0489AyPO5Xdwub26wa6VgTn/FuZRYr4kTMccweSJlotG7KA
         vGsMQqVtMHVogJlWguTG23mhgX5fDIGqTxbtjekUuXAd+CwKohBRJY21/Pb5tLh37UbE
         Z1DQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ5EbY263bdfiY7IEKjO03Ajn9ZyyhJobcTnmAJ5y4RWPU0urOS
	rUoH7PPlyLFB/GAWEqF25bE=
X-Google-Smtp-Source: APiQypINdmpE7Sl1YA/4QFYkvkPNiwscnALkpq/noTRNpX9E+lMq3HOWvhXIoT13zXEzlSROCBj/dA==
X-Received: by 2002:a63:f30a:: with SMTP id l10mr1316636pgh.372.1588215952216;
        Wed, 29 Apr 2020 20:05:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fe52:: with SMTP id x18ls1682580pgj.6.gmail; Wed, 29 Apr
 2020 20:05:51 -0700 (PDT)
X-Received: by 2002:a63:8ac4:: with SMTP id y187mr1298405pgd.294.1588215951631;
        Wed, 29 Apr 2020 20:05:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588215951; cv=none;
        d=google.com; s=arc-20160816;
        b=bOOOyxslvZs8NgZ9QfaqD6J7szy2H8IkBNh2eV4FZxAm0IoEvgKw1WO2slm22wtBOa
         GCfFC04v/mNgAzRtd6d9GOpy7fS3YE+4UbxltexGL9TfR3ehae9Hq8hgeVeLaB+nsBjP
         miYCBO1PycEoWfi51wlnTVS4WdsWjGXCeBGcP5koHumgknsghPRv/5bkRWEjQ6usbBhW
         edIKB/DvfGrMu6SMAp1udMNm415qzm1P8FccjMdCIBIqo7C79b2FIegluI7+igg3GJEV
         Il3YoNuS0UkrL5VI7X6s4VCqjXYFIU1xFbL54LnS88DmwvSLhWtKDktodUe5vLsQ82Wb
         YUvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VUvIqhD5Rxtvk/jJNTE+TX+Ap06+KNlY2PxWsoF7YmE=;
        b=oZx5ZBpe/8G6r1vEKsDoDHvjy3RogBSDCBK/vLOckm89uBVg950cBApPKpJoPYtImC
         qiSks/9/nGiyMUbfDfrNZ2NTngEpdFgrxOov4qxoE3Z/mCjwBelN8l2vkH9cHhmlx2aP
         ffcfZlu4KyQpaIl7C/OX7Q1atG+9RLW2Ek/KYp9bRrNJo7oR6Tu5rTXPDrFpcKJ4HuIj
         OXtPfrhSyybA9Hu4mZvnOkOP5yhR6t+LgXYc6rqIK/faqEZopXUO+2tBjEPkkGLhIJ+E
         JtWxQmDTLeiRl/SeBzC3EPMyDtDA7puvBAjGDGayhkJBfbV+rtOf45V/7NiJg0b+gXsO
         kIgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uENcP0JH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id u131si250265pfc.6.2020.04.29.20.05.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Apr 2020 20:05:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id i13so3949140oie.9
        for <clang-built-linux@googlegroups.com>; Wed, 29 Apr 2020 20:05:51 -0700 (PDT)
X-Received: by 2002:aca:53cd:: with SMTP id h196mr311956oib.104.1588215950910;
        Wed, 29 Apr 2020 20:05:50 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id h65sm916166oth.34.2020.04.29.20.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Apr 2020 20:05:50 -0700 (PDT)
Date: Wed, 29 Apr 2020 20:05:48 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>
Subject: Re: [PATCH v4 1/5] kbuild: add CONFIG_LD_IS_LLD
Message-ID: <20200430030548.GA3546299@ubuntu-s3-xlarge-x86>
References: <20200423171807.29713-1-natechancellor@gmail.com>
 <20200428221419.2530697-1-natechancellor@gmail.com>
 <20200428221419.2530697-2-natechancellor@gmail.com>
 <CA+icZUXa3JBittjDVdNyV1M08dRt_pwACi2-0nLPEwao6yNABw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUXa3JBittjDVdNyV1M08dRt_pwACi2-0nLPEwao6yNABw@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uENcP0JH;       spf=pass
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

On Wed, Apr 29, 2020 at 09:13:40AM +0200, Sedat Dilek wrote:
> On Wed, Apr 29, 2020 at 12:14 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > From: Sami Tolvanen <samitolvanen@google.com>
> >
> > Similarly to the CC_IS_CLANG config, add LD_IS_LLD to avoid GNU ld
> > specific logic such as ld-version or ld-ifversion and gain the
> > ability to select potential features that depend on the linker at
> > configuration time such as LTO.
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Acked-by: Masahiro Yamada <masahiroy@kernel.org>
> > [nc: Reword commit message]
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
> 
> Testing on Debian/testing AMD64 (since Linux v5.3):
> #1: LLVM/Clang/LLD version 9.0 and 10.0
> #2: Debian's GCC 9.3 with ld.lld-9 and ld.lld-10
> 
> I am linking my Linux-kernels with ld.lld despite there are issues -
> then check with ld.bfd.

What issues are these? Have they been reported?

Cheers,
Nathan

> - Sedat -
> 
> > ---
> >
> > v3 -> v4:
> >
> > * No changes.
> >
> > v2 -> v3:
> >
> > * Add Masahiro's ack.
> >
> > v1 -> v2:
> >
> > * No changes.
> >
> > Sami, please scream if you are unhappy with how I worded this commit.
> >
> >  init/Kconfig | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/init/Kconfig b/init/Kconfig
> > index 9e22ee8fbd75e..c15ee42b82726 100644
> > --- a/init/Kconfig
> > +++ b/init/Kconfig
> > @@ -23,6 +23,9 @@ config LD_VERSION
> >  config CC_IS_CLANG
> >         def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
> >
> > +config LD_IS_LLD
> > +       def_bool $(success,$(LD) -v | head -n 1 | grep -q LLD)
> > +
> >  config CLANG_VERSION
> >         int
> >         default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
> >
> > base-commit: 96c9a7802af7d500a582d89a8b864584fe878c1b
> > --
> > 2.26.2
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200430030548.GA3546299%40ubuntu-s3-xlarge-x86.
