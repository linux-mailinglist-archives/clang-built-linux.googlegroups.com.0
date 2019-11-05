Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBL5MQTXAKGQE4T6SIPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC50EF580
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Nov 2019 07:26:56 +0100 (CET)
Received: by mail-yw1-xc3b.google.com with SMTP id o130sf15570333ywo.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 22:26:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572935215; cv=pass;
        d=google.com; s=arc-20160816;
        b=OzffuKTCyiuu6OEUJOT0gdJIW0Cqp5QJCsS4x8K5hGph9/YAg5LX9jKHMARo4jEzUD
         pMu7JuU0L+o5JSJwtp7eMMWhQZ/Wvsjym+lR+t486SHWXmDeuu+hgkeicK0pUFZLqSWY
         vYnkrDBQJnkgUqx+VTcxWuD/xZWjrRJTszM1TlOlxcD9fCTR/wAg1sTqSupFRiG6dXbR
         JgIkFE/4gONL5koXtNe3CKCbOCxBkZ2TWD6k9OEK7Yd8Twim1+qhcqvS9DW9wj3VV90R
         lKEZHOrqfbtsqMHI0pJe4oRsRmn1UHKiX6bY0QtVxMMbgWxWmMzN5eOYjU0uvnphuUxg
         d10w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=jsL3uNYoAOa1vZZOSyFjAge/4XeGNIAMjkaxthcg/vk=;
        b=WtfgT6VNb//WXGBu/VX0whGxp0w+pUaaWxmoh+bXkRCq7b3/hkURIlkY0oki6z2Edr
         y+IQ+HTTKIg0PhUcg+oBjqv5Jy5R1dQamT+BYuKrV8NefyYXmgC21mf3UEeH1q4nPVz+
         UZHKWCo10rT0BOBe09TaEM3KGp8y/pMABo5kr840YzfLvzDeFLFhEOaaedJgfS6aWn5S
         qMcdbrLwyNeIboXkLOIwQRtl0IsM/2h3Lc8FakckHo4YG4C9wea4wOr1Sm4nootgr4Tp
         0EyorrjKNHftdsORmCFBwLDpxMG/BGwlvmPs0qm8lUijkSPWoXgzRd7Z0elQRyCiJdZG
         21uA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dvDWRFhO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jsL3uNYoAOa1vZZOSyFjAge/4XeGNIAMjkaxthcg/vk=;
        b=ExBdIJMBm2viofaK5RiMpp8DtHCLZQAHfITLvvQiwwumK1V5eQgyB0T3JQPY6BSTDo
         mhQCgAua3DdrsXafeUxXbNpdIAywJtY7tQynsCXu3TfLAvEDUrqiHnYu3Me/qGtVdPUN
         yLIgOSMMRLnA0A8QE0NMyo3UwV4KXXgeGFsXAE2xAeDyTEp3vMfelwv5AEzW/rzXlX06
         w9Bno4coVKMqsbwTA0nWaBjoImLBNUUdn58QfziKu+Y8nu+IPl9/JvxEwMstEsbEEDY2
         sOtoThPWceOEaXeQUYmrdgZzOzLgCv26bN7KtrxJIlhfKemcRviXlqe0uk/oYwfHkT52
         HXtA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jsL3uNYoAOa1vZZOSyFjAge/4XeGNIAMjkaxthcg/vk=;
        b=lhHm16bnsiKP8xS4GsLgpJVPPWQMva8wz+bGDBHA/z15BWOVLwyialVLx/GeMWbuY4
         YzEbE8lK8YtypZqtK2UqXI4YkXSe5VdCa783BVZIi5J5+jv/DXhAubnRtE/93Ny+uTCg
         ZhNLfZHyLxHJAzNVkz7AzRaj2p9qcjreFfy0F6Xgbb9g2Ov15ZBKFI6H2m6ZSBhPeGMM
         iNEWEBlqsKKpqm63U4XtV55sXsV7XhLVjWjSc5U17w1e4k2mxezdpUq7IySFPMMXKp+2
         mGjR1KzsrXs2KYZwDRvA9V11vEwBS/QqyMw8MNczH0kZUbFbGX1f2J7Ar+ZxCHM/lM80
         3r7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jsL3uNYoAOa1vZZOSyFjAge/4XeGNIAMjkaxthcg/vk=;
        b=HiD2R4wZjeY4dDiBJOSWcLqTpGfE9Zeb1PZD9cI7OO/EegjTQaSIcMDB/ybnJIGjI1
         Ll0xoC+5Lie5/NWFH/Wp1+XaTzmXC4ALd09IcyoBZzdu52Db1wJh4ziqks1P/0IPWn8E
         sP6UvZrL+9SPzb3CldHSZocZ2bnHSW/aHIWinR7na69Mnog2OrjmvaXy7NwuoIAlxFGf
         Wv73NOpfJDym0leg6fFQ2qqOeieby6hX6vv9qVAk1u7PqXPlls0XZ3GeTDMPyHDRkDT/
         x42sTX37qbCW9SmzBoOq65xN4caVw9UEe10X9316IHM+1vwJ0IhRYECBgdinn1J2+2wF
         J/rQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVY//SbnoLeEBmKrYqbvCaaA2pSw+es+9wBhe0NJh6F3A6wilwL
	FJINTVWMSKewXJdX3VJsNM4=
X-Google-Smtp-Source: APXvYqyqgYnWZCehwh+4f+2VKQY3a+gTqySrjsZjI8UW3kkcqpHsef4eIXP+6zTOEi0jelDrdWnwIQ==
X-Received: by 2002:a25:4643:: with SMTP id t64mr26807026yba.498.1572935215245;
        Mon, 04 Nov 2019 22:26:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:dc6:: with SMTP id 189ls2637054ybn.3.gmail; Mon, 04 Nov
 2019 22:26:54 -0800 (PST)
X-Received: by 2002:a25:b6ca:: with SMTP id f10mr27811675ybm.376.1572935214848;
        Mon, 04 Nov 2019 22:26:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572935214; cv=none;
        d=google.com; s=arc-20160816;
        b=hfg+bnuht3elGZFuEBfC7JlW9tqFpOfqjSACEJNbIvrytvhLxSF7dgP0+ghvOXHfl4
         zC9IEQGuIZzdTqPFT2XrobLPbaNMIQr/deGYrw4pBTJCuFf5sOXKjhtifrrXxpoCvsp6
         oOjOHAHY38QeWb2iT4brtxVKnvZhvS2dvTM8LfmnUnIFESYyJv+weRhV3BUCEoMAThIM
         fSqI6dOLWWwEXt6qcNeNc7L/OYCIOP/MBKxNE8QpFozlalDcDIUQgUiMJZZcQRri3p87
         yIk36wI5QhIbQZPzPsh8PHW1JVxtupidjXZDgr92C+nXAuWoCpQhMUjDGrQ9JKQ4Wplk
         jKiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CaNCEd81BjRvLOlUPrvzpS8sYf2mI9wPJzemtji2y7A=;
        b=HVYoDje6i4wONtn7oJjkisP/3DGVZJ7MzCm41p9v1B+DKf5goKcPJAtYNBINzwYIFk
         0xPSeYrWyRJoxGAH3ra+GBXrF8XCR8KQkbNjhAbp6GCijavD1ZSIm9nhoMfHu/hsYqnt
         RE3N9bLXIBiFFg3KaPwNOZbacfKy9TZQwbWrV5+UAv5DY1lf3HkLci+bnbyIqUVv30vI
         +7U8yEy1373wwmKzgVZBY0zIdxHJFI7BIhkdfsrIByFqnw8hAAzZ45UGi0ZvLCv8lenz
         BJT8y9tsBC1Yd6oun29fma8dAz9PxLhJsHKNwlSgblgpkTJmHKwj7RI48vhqUMG6D9ws
         ZdNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dvDWRFhO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com. [2607:f8b0:4864:20::944])
        by gmr-mx.google.com with ESMTPS id f184si124720ybg.3.2019.11.04.22.26.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 22:26:54 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::944 as permitted sender) client-ip=2607:f8b0:4864:20::944;
Received: by mail-ua1-x944.google.com with SMTP id o9so4035518uat.8
        for <clang-built-linux@googlegroups.com>; Mon, 04 Nov 2019 22:26:54 -0800 (PST)
X-Received: by 2002:ab0:7058:: with SMTP id v24mr13328236ual.83.1572935214251;
 Mon, 04 Nov 2019 22:26:54 -0800 (PST)
MIME-Version: 1.0
References: <201911051437.l3eD5Hp3%lkp@intel.com>
In-Reply-To: <201911051437.l3eD5Hp3%lkp@intel.com>
From: Nathan Chancellor <natechancellor@gmail.com>
Date: Mon, 4 Nov 2019 23:26:41 -0700
Message-ID: <CAEVzpNmXGq+xw4HxvT5YNUqijH8vwuWhEL=UFok8udddBd5yQA@mail.gmail.com>
Subject: Re: [boqun:arm64-hyperv-vpci 23/24] drivers/pci/controller/pci-hyperv.c:818:5:
 warning: 'CONFIG_PCI_DOMAINS_GENERIC' is not defined, evaluates to 0
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dvDWRFhO;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Nov 4, 2019 at 11:24 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> TO: Boqun Feng <boqun.feng@gmail.com>
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/boqun/linux.git arm64-hyperv-vpci
> head:   73a45c99547231f8c65366595848a1e0a1169114
> commit: d5f8c8476483ad659da80ea808c5234b776f6627 [23/24] pci: arm64: Allow use arch-specific pci sysdata
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 403739b2fdb64e90118017355bd01f88a0640b3f)
> reproduce:
>         git checkout d5f8c8476483ad659da80ea808c5234b776f6627
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/pci/controller/pci-hyperv.c:818:5: warning: 'CONFIG_PCI_DOMAINS_GENERIC' is not defined, evaluates to 0 [-Wundef]
>    #if CONFIG_PCI_DOMAINS_GENERIC
>        ^
>    1 warning generated.
>
> vim +/CONFIG_PCI_DOMAINS_GENERIC +818 drivers/pci/controller/pci-hyperv.c
>
>    813
>    814  /* PCIe operations */
>    815  static struct pci_ops hv_pcifront_ops = {
>    816          .read  = hv_pcifront_read_config,
>    817          .write = hv_pcifront_write_config,
>  > 818  #if CONFIG_PCI_DOMAINS_GENERIC
>    819          .use_arch_sysdata = 1,
>    820  #endif
>    821  };
>    822
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
>

This appears fixed with the latest branch:

https://git.kernel.org/pub/scm/linux/kernel/git/boqun/linux.git/commit/?h=arm64-hyperv-vpci&id=c68b670a983ce05da28a6e21835e7c34d7c691e5

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEVzpNmXGq%2Bxw4HxvT5YNUqijH8vwuWhEL%3DUFok8udddBd5yQA%40mail.gmail.com.
