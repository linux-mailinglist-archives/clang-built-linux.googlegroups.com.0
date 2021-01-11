Return-Path: <clang-built-linux+bncBDM3FG7YWUNBBCWJ6L7QKGQEYR7FBRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id D81922F1ECD
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 20:18:35 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id j28sf16999oig.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 11:18:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610392715; cv=pass;
        d=google.com; s=arc-20160816;
        b=RIkniUXc/aSRb5Qh+65ShruBgRTPo8n5YaW5a/fN+haD/0Yb5ZUDskN7L7SGOOs70N
         6e7R3Gc6ZdY3zQhCexebn+b2F8Pc21B0p2n4bKWY9Ixp7hsxlwPj38S/o5xvXCJLu+G1
         mg3uTLZqGPhpZAUyiui7TmAT5QYVcuG+I5kPiIIQjwNEYoCvQQTveOq9/GH+8cfbrIyN
         UFET5q+kwFYdA6vnO/Y9hiR3QTQbPqZiBhb0NEJsi5VEdSwuRjijBWT4RxB0DaHuTi7T
         a/xI3LZ+tygwQRheGy1WTn3xg98xc90lXlG3NDB8IhX7gXgJCaFV3K/GL0cdXdNjpV19
         mVfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=JywrCwNzT72jBZUzgZupPpmNemLAJMpmf6OBx+lKkkk=;
        b=NKy+ncQ4d0zsl7RcW2T0jCVRFHewE6cknm4Ahh7HGRu6TQXRBZsOCEYpbuykB7zo9t
         RqMGeauXs1Ll0Z9Qzmh9cEuLLcSzke8jh88KJO6aMeLeTzxBHVoJ9SDqA+iDdCbPbWEy
         sSbPxoS/+dsGb9O9+7oszlJsfvZP2WAvTdZ7B9auC6dcgYyWFbybvwcrjbGGk7dQts0m
         aDDIQeoN31rzaY1h6dQp+AJc3tabbwne8AF0XlF61KJ3Oj6kN2dvpztFNAwy2QuX55+Q
         RP9AYsK/n9KT9IdNEOQQ9sqx17+ZQsAqYqaSLvvLwHJpXGxjNsJn6bo+foM7Jw+lj66u
         FXXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DqnMChe+;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e29 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JywrCwNzT72jBZUzgZupPpmNemLAJMpmf6OBx+lKkkk=;
        b=PR0dHyj5i4YtkLUfwTvkuBG+FBi9frZs2pvDPBfBT+mW3bs/sjOa3m/7CJvtMZtTO4
         iq6UD5inUjtzhpYodRz1e+8JdM67jp0vbkqDt29R9pDulfX+2L1dN6Ri6k/Oas9HBcRs
         T+ILmNy8w5WrFI3HzZF0yak9/l978K+h6ezCmYrVOMIQY9n/R2/TWz/HJZpUtEoxOJGP
         6eu7m6zdK/xLd9yiLGFUV/3Gr+X0nuF9l8SHE2fvWCSkNhOv6Y3GLxVVwaKdQI8sDXlS
         fYJb5NB1aAMQG9NLrmhxlkxLm1QREn/2wyeEp4MZa7fuqFzQRkF67NfAjgpSxRy7UmoR
         BU3w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JywrCwNzT72jBZUzgZupPpmNemLAJMpmf6OBx+lKkkk=;
        b=AesqBp7rNHCpRPU0dYcOL/CUbQUGewp9Y9M1KyGcs876jqjx+Dp+zUL42wycD3diVn
         YeSt0s1iC33kp8fGX0nY0HcXElQlskTZB426Ri+b5jMCKmb1UxPSGADrG2PONj4/CIVX
         SqTIcme5S6wCfaFuB1MFgfLX1uLfXicykAvRD/fuHoenrxpepcI1fHz3axYvMC+dX7BH
         fo77b26wUx6JA9GM1PZJZVAYf9PKZx/tsZz+6nn7ABsfsJFaI1ctRxbKxKaFH+4nyYHc
         RHI+Uz89st7gy+ppFkbgQw6IVpdnSn74XX/7zmvtrIhHjOTMgYxQluCY2wIKbVYxzBU4
         6GeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JywrCwNzT72jBZUzgZupPpmNemLAJMpmf6OBx+lKkkk=;
        b=isHQgeHSnz9svf4PhV24IEtI41X9aZyrIpAcmWMcE3eTuLGwrI0fLl6ceKWUp0DPWq
         jqtQs/IJSxUld1BOSwiWcV9PjgoWWAHAWbeajF2uO44OXZUoAJiEbLZ3FDEx7Z09XbGM
         foUAOW/Ge0sRK01cnqUJVF+A3k2tRyVXwv5iSORYILjg/aLvOubibL2tRwMcVfnoyZU1
         YEqe7HdL0ML5Ya56dSaIL6Qe09tDBZHiN9kZbt23L/l6nsCcdC2bsF7uV8tEozLV6Drf
         5z6eiFWmqoGzWE+X/O0LA/fpDPMvoReYLu42Xsr3uALgTFfSOnmIJwyM2uUNTuzIxvcS
         +XVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oglzsfKHoZpCg2pi/BgsQw09YKGH5plrsdOmDHjUWDmjL0rz3
	CYqPLoTkveFygDkSNjis8iw=
X-Google-Smtp-Source: ABdhPJx5cIKS4Gwx0bHuubczviKnYqHPw6NKwfdb8NeZtJf1fRbBKt3Yd57MydSX2Qw1/DS5Vd4SDQ==
X-Received: by 2002:a05:6830:1de8:: with SMTP id b8mr462760otj.204.1610392714831;
        Mon, 11 Jan 2021 11:18:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1204:: with SMTP id 4ls131312ois.6.gmail; Mon, 11 Jan
 2021 11:18:34 -0800 (PST)
X-Received: by 2002:aca:3ad6:: with SMTP id h205mr206666oia.119.1610392714425;
        Mon, 11 Jan 2021 11:18:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610392714; cv=none;
        d=google.com; s=arc-20160816;
        b=zv4gl7gpvrcyYCcq/r2qe6jvubIIBPYEJGvvq3A/QiV0tbDqH5nH104B0mAdTZSkZM
         O7JIuctN7fU5I8Y2fEjtyBe7UrRpzbBpsd5ifhfpG0yIk0Yz3jGJ1teH2ZOG9WLq3emx
         LR3c9UeGv4R4SRXLKEhyPi4rx0gO4+hTqMx4YhWr9J7Zp/uL+ihOBR3DORRBA3ryam4u
         B7mtUKg83bRj2C5FkN95WQGjHkDrQTIkbwOZ7G/o5rGhHqoTJ5see51wEI5gJjPiFeia
         Pen/3Yv6k+2HdrG2CiYmtnRcIJrvrXWg9kcH1B7TC4aejD8+hj6IclDrvkTqbVPSVMdK
         9tEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CIx5IVtuLGFxUnj8AsuBBDk8yTgBFIvAgNcRfRep6yY=;
        b=rqu/ReqAA8g8f+pBjRZZkJXd9Q/vSJQ8xS/SSCTwlf94IroR/WGa9Ohnh91sIXWJRL
         NuyyoAbvzxgPwNrFUcVchphYfA/c4BEau5QzzRXArxwbyzd2huT/4KSIRThReGd2vh7D
         NFbIRBypl+XF0U7nH1T2/MC9bEvJo5eCeze1IWf6mwdmF+yGTswyHmMREEvkzgySImvT
         QEjmWws2LMnKuw6WzH2bwpoPbLSLp/UjR5g6S8JmWhUsPal5vv7ggSqEN4IwmK+0AVT5
         N/w540cyi8xqlwaPJ7bSNQfC/WPEtmHNvDtYWF8AU3npG/6j6Qftmf9r9M8FGB1NV01Y
         AG7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DqnMChe+;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e29 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe29.google.com (mail-vs1-xe29.google.com. [2607:f8b0:4864:20::e29])
        by gmr-mx.google.com with ESMTPS id x20si97072oot.1.2021.01.11.11.18.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 11:18:34 -0800 (PST)
Received-SPF: pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e29 as permitted sender) client-ip=2607:f8b0:4864:20::e29;
Received: by mail-vs1-xe29.google.com with SMTP id j140so131493vsd.4
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 11:18:34 -0800 (PST)
X-Received: by 2002:a67:eb55:: with SMTP id x21mr1158508vso.9.1610392713811;
 Mon, 11 Jan 2021 11:18:33 -0800 (PST)
MIME-Version: 1.0
References: <202101100936.GwZyiMDo-lkp@intel.com>
In-Reply-To: <202101100936.GwZyiMDo-lkp@intel.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Tue, 12 Jan 2021 00:48:22 +0530
Message-ID: <CAFqt6zaAd1Oe7FmD8HfumbssyuFO=DkVDzLuq=_Ficg10LRzrg@mail.gmail.com>
Subject: Re: [linux-stable-rc:linux-4.19.y 1441/2773] drivers/base/node.c:429:5:
 warning: no previous prototype for function 'register_mem_block_under_node_early'
To: kernel test robot <lkp@intel.com>
Cc: Laurent Dufour <ldufour@linux.ibm.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, David Hildenbrand <david@redhat.com>, 
	Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jrdr.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DqnMChe+;       spf=pass
 (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e29
 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;       dmarc=pass
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

On Sun, Jan 10, 2021 at 6:33 AM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
> head:   610bdbf6a174c9a91e34e276a9594114b44bef74
> commit: b6f69f72c15d7f973f5709c5351f378f235b3654 [1441/2773] mm: don't rely on system state to detect hot-plug operations
> config: x86_64-randconfig-a001-20210110 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bc556e5685c0f97e79fb7b3c6f15cc5062db8e36)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=b6f69f72c15d7f973f5709c5351f378f235b3654
>         git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
>         git fetch --no-tags linux-stable-rc linux-4.19.y
>         git checkout b6f69f72c15d7f973f5709c5351f378f235b3654
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/base/node.c:429:5: warning: no previous prototype for function 'register_mem_block_under_node_early' [-Wmissing-prototypes]
>    int register_mem_block_under_node_early(struct memory_block *mem_blk, void *arg)
>        ^
>    drivers/base/node.c:429:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int register_mem_block_under_node_early(struct memory_block *mem_blk, void *arg)
>    ^
>    static
>    1 warning generated.

It is fixed in the mainline. Will stable tree pick it from there ?
>
>
> vim +/register_mem_block_under_node_early +429 drivers/base/node.c
>
>    427
>    428  /* register memory section under specified node if it spans that node */
>  > 429  int register_mem_block_under_node_early(struct memory_block *mem_blk, void *arg)
>    430  {
>    431          int nid = *(int *)arg;
>    432          unsigned long pfn, sect_start_pfn, sect_end_pfn;
>    433
>    434          sect_start_pfn = section_nr_to_pfn(mem_blk->start_section_nr);
>    435          sect_end_pfn = section_nr_to_pfn(mem_blk->end_section_nr);
>    436          sect_end_pfn += PAGES_PER_SECTION - 1;
>    437          for (pfn = sect_start_pfn; pfn <= sect_end_pfn; pfn++) {
>    438                  int page_nid;
>    439
>    440                  /*
>    441                   * memory block could have several absent sections from start.
>    442                   * skip pfn range from absent section
>    443                   */
>    444                  if (!pfn_present(pfn)) {
>    445                          pfn = round_down(pfn + PAGES_PER_SECTION,
>    446                                           PAGES_PER_SECTION) - 1;
>    447                          continue;
>    448                  }
>    449
>    450                  /*
>    451                   * We need to check if page belongs to nid only at the boot
>    452                   * case because node's ranges can be interleaved.
>    453                   */
>    454                  page_nid = get_nid_for_pfn(pfn);
>    455                  if (page_nid < 0)
>    456                          continue;
>    457                  if (page_nid != nid)
>    458                          continue;
>    459
>    460                  return do_register_memory_block_under_node(nid, mem_blk);
>    461          }
>    462          /* mem section does not span the specified node */
>    463          return 0;
>    464  }
>    465
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFqt6zaAd1Oe7FmD8HfumbssyuFO%3DDkVDzLuq%3D_Ficg10LRzrg%40mail.gmail.com.
