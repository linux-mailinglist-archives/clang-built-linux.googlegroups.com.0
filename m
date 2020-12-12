Return-Path: <clang-built-linux+bncBDULZYNR2QMRBY7T2T7AKGQEAG2UDGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8452D8A33
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 22:45:08 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id m67sf1769902lfd.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 13:45:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607809507; cv=pass;
        d=google.com; s=arc-20160816;
        b=C/sHKCOxfcuJu5b4Kt43o1K3uKSpDj0/dgixuySG76umTX6SH3cOSkcT2aAqdu/5aU
         I9HT9Kq5dKQYB+ixWNBVMeUwjgeJqr3l9enQVqULJvTLBtksaNjn3KNklqKYGRLuWzHJ
         H7znMXZnd81SKgx3R40yJO8yRi8+CG3wpCOL/LVRSKpqLURrrHGHei2rzwxZLmAOZkBD
         xKPpHPRAEdCq1FfEmRvostTbMekj3yhIYYKDzBVJTvpcxM89jocndT+pTthae44kkMmi
         6ZEMkZMaoU7PeRsPgoMB8CfJxmgO67soyC/Vwy45WfvhsxqZrSCJe49C65iAVHSouueL
         VarA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=fHphkM6GD9tdOMtgzcXqNBipBdekuEpBG8Ztm0WCYpo=;
        b=hLdpt9DeLOVb3RAaBCAcSBw3SdNhWARmrHZXrBu2Az1USgINm4wNAZW1R36KQo48tR
         0LZynqAOZ5x4BTrLPZ8zbN59QbbOF87EUNVtGaW1XBR7NUIjXmYjb6jQMGuwEVB+D9So
         UtakuF91Eg+pXZQC5PJQ0NjMeSCiYiP973er+uuXeeP++JRjh/KtiMfi+azs75YD2P4j
         1z2iio2zF3UH9JDfuUJzPf2W+X8hjo/TKM+v+W2n87nHPvxAGhpKTKa/1vBuT8XDYbny
         kbtHPi889HFOtOMJLHGtlNXW/zO5oh8Hg5cPyjFdZVWH6EbQesxnaQivMCOLuoWitCC/
         qCdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="TW/1LpWv";
       spf=pass (google.com: domain of festevam@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=festevam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fHphkM6GD9tdOMtgzcXqNBipBdekuEpBG8Ztm0WCYpo=;
        b=HOFsoLMCoibbWr0WKalhmMvLgejkoeMsclOzFs+vHIV33te+4HrcRtdTsqVmKw5WU3
         4c6zuZOG5M00PPSwuwo7LTrX5EPlnky3oWTkLX4iOT3/XBp6ABs210P0xxmRUYxF4Xza
         JZH2d2uxQpSawnNRRO3DORWUFqyuT978tKmfsxx1qGOOu4CfIfJNUu4GQI6p+2G9BUbY
         kriHVngxWPwKIO8le0pbuw6yOLjazR2SM3Oqn4vTPa8tQ3RXPgVTFLCtyyPIE+FfiG+8
         Wu45kfX8Av3uxHK4Lyicku0fus0zEDhZWRbIKfJ8jUl+k2qKHIPtnyuIA+L+XbIy1KdP
         y+Pg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fHphkM6GD9tdOMtgzcXqNBipBdekuEpBG8Ztm0WCYpo=;
        b=TBi/CQ5yibqA9guApb0aXIPasurenI7GyW07qpOh3TRQZ20AQZpkBy8knyBOCLBgr8
         zjAVGyvv7ornv6qQ/+N69PMlssTScDi4uWrRLHIHJKzhvq8sV7BrrnuDCyzs/RikYfNm
         njYmqMobszasRNwqu6q6qnLRvagRwlPrKLZkyQ6rc9e3HMHJlsbqopx5RmcWH7zQMhj/
         EDMytK7o1R4E9EYFH1zZv9d3EzPZjeg7ZaDO99y5l/ve8UYgERCiMB78SH1zfxCX7oWJ
         m2L6kNfg9vQo1hC4Vwk8xdmffTVzkDxzXbj5G4MVJX1VI/SEeNPsCMpSn6w4aqLlp+QY
         lMJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fHphkM6GD9tdOMtgzcXqNBipBdekuEpBG8Ztm0WCYpo=;
        b=OoFJOlr/OmbVNBd75TF74aRWVtSK/7gKNJ2i3p1p2H0rQCEQIktouhad8f9tFqV2ZF
         HekwnmQDKlsWPmGlFkF7H7QyZ4jYV3NDxtcd04rUNN+yYMCw17kDccBAaPgqcBHfZsPU
         QM5mKzUVkQuQ2qgrwAu6bm4ZtPP17DlJgoUDQ32yMMzh+8RueaZLriFBJGqLzxgRdRm2
         5CVTQAIAatih+05k+M2HIcL7EWFbHAOkJPOYFXeUsDn8/9TUNCqavlPv2R9LudAPoTg6
         hn/FNnQOJsll1zthHxdbJEbjDWYC1vQeAVfkFG/yfreMUddAjVufK64QYQEw+FNR4+SU
         3cPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533GEgJXvn1AmD54JoWUq1E3xU2gIJa8VpyumsMGoPYViEzsR/Sz
	EnEK8mYDU1wTuP83xSayhrg=
X-Google-Smtp-Source: ABdhPJzZGDw4G3n9GxR41wIxAuLKMYKMfWnJv+1ujGDR6wg4zEa0NdIr1+0YjCHJCifjCIHN33RDFA==
X-Received: by 2002:a2e:bc16:: with SMTP id b22mr7735407ljf.166.1607809507629;
        Sat, 12 Dec 2020 13:45:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1a5:: with SMTP id c5ls1611845ljn.10.gmail; Sat, 12
 Dec 2020 13:45:06 -0800 (PST)
X-Received: by 2002:a2e:898c:: with SMTP id c12mr1616029lji.193.1607809506714;
        Sat, 12 Dec 2020 13:45:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607809506; cv=none;
        d=google.com; s=arc-20160816;
        b=nklAm0QbbeRDsvWgCO6ccAb7uvGTk+a3XY8A9092nnwn0WS2I9HWjDKbJZIamrU19c
         ORY59+Xi+wPwT9X1GOIFOQ56WM/KDArxBxMUrdYXTREn/DAhR8opl+819w6wNprxoQEp
         iO70WUuLPuUy4U45vzxVaXA9H2u6MtNKM5SPOSo0NZN7rd080CSwoD6xgTzf89ygwAnJ
         t+l/O6asbvtyYHlcqkadccdTqPiWD9/dBNR3sEWK0cFXKbfybhowgTGNpn81ut9Zibp4
         DrSvS5QElW8oHy1aVXkrGZFXPS/gcqmASP+OKfvM27zoRsMJ/wj+UCBTmyMmjALMgtmI
         GgNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FmUh3lr9Sym7AthnJ9whaTtDNuGwXwqGNvZozj+NkFk=;
        b=kdAZblSdo8satqXFuo7LxiCpjgbJUKrHepQV4/rhwPYypTDd50vIcTIT5BpGb32Llk
         DbHB22nAc9EMCJEb1uTr/FRr9hSnnCHqVoNMYwvHuj56qUW9+tYwxzVVjSB8Jxa8vR3W
         IqjbuRGyPAMVgU2tfgTRNljLxzgmSqvM6cEWwDA2p3D9xcAon/XLh94AO25P2ow1hboj
         2zK9JwfRDRd49LQvW2rjSpiUGhyQ5QB3V805MmT7oHgUW3N3ut54kwuT9+Tl0dYgQaRv
         41ayjWN+P4Py9tnXWoNG9zqrFbTJ45Oaxq0PdoNgKBFMCYkJREAPf4fK72uBLwMNx0cr
         DftA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="TW/1LpWv";
       spf=pass (google.com: domain of festevam@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=festevam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id e18si401929lfn.6.2020.12.12.13.45.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Dec 2020 13:45:06 -0800 (PST)
Received-SPF: pass (google.com: domain of festevam@gmail.com designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Received: by mail-lf1-x134.google.com with SMTP id m25so20548448lfc.11
        for <clang-built-linux@googlegroups.com>; Sat, 12 Dec 2020 13:45:06 -0800 (PST)
X-Received: by 2002:a2e:b4b3:: with SMTP id q19mr7181263ljm.121.1607809506466;
 Sat, 12 Dec 2020 13:45:06 -0800 (PST)
MIME-Version: 1.0
References: <202012112150.CCpStiwY-lkp@intel.com> <CAFqt6zb8O+yvwGAcv-n1mHJgWrCpOBL2XQZz4CTw_7NqDZ7VDg@mail.gmail.com>
 <CAOMZO5AE6sxRrZiLws5LJ3-iVpGFx+eK=8N38863g2hG-Jmn=w@mail.gmail.com> <20201212200312.GA1773888@ubuntu-m3-large-x86>
In-Reply-To: <20201212200312.GA1773888@ubuntu-m3-large-x86>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 12 Dec 2020 18:44:55 -0300
Message-ID: <CAOMZO5AtPkciomabbe01Rg1BvqOzPx_omiytgXgNCQNbZTJ+=g@mail.gmail.com>
Subject: Re: [linux-next:master 6953/13205] drivers/dma/imx-dma.c:1048:20:
 warning: cast to smaller integer type 'enum imx_dma_type' from 'const void
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Souptick Joarder <jrdr.linux@gmail.com>, kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Vinod Koul <vkoul@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: festevam@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="TW/1LpWv";       spf=pass
 (google.com: domain of festevam@gmail.com designates 2a00:1450:4864:20::134
 as permitted sender) smtp.mailfrom=festevam@gmail.com;       dmarc=pass
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

Hi Nathan,

On Sat, Dec 12, 2020 at 5:03 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:

> Correct. The clang developers explicitly wanted this behavior so I moved
> it under a new warning that could be disabled on regular builds but show
> up on W=1 in case people wanted to fix these occurrences.
>
> https://reviews.llvm.org/D72231
> https://github.com/ClangBuiltLinux/linux/issues/887
> 82f2bc2fcc01 ("kbuild: Disable -Wpointer-to-enum-cast")
>
> > Not sure how to make clang happy in this case.

Thanks for the clarification.

> Added a cast to unsigned long or uintptr_t before the cast to the enum
> should fix it.

Great, thanks. Maybe someone could send patches fixing these W=1 clang
warnings for the different subsystems.

Regards,

Fabio Estevam

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAOMZO5AtPkciomabbe01Rg1BvqOzPx_omiytgXgNCQNbZTJ%2B%3Dg%40mail.gmail.com.
