Return-Path: <clang-built-linux+bncBCT4XGV33UIBBJ4A6SFAMGQEP4UAXRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F40423595
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Oct 2021 03:47:21 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id n25-20020a05680803b900b00276671ea7d6sf732410oie.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Oct 2021 18:47:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633484840; cv=pass;
        d=google.com; s=arc-20160816;
        b=KQPJwEmigv2WqMs2ojvZjkoghoO5k4lc12182jBw3GFmzvwM1wzyGxB34TDjMFAdzp
         U8qEyQDJuqmuoOvT+ZeKM6jy8BQm+2hj10AIlXC7UtXAMl7xdbxtSXDRXx7wO4Iajmwa
         7lhyD9vQ+EL3tCo5yIdg4sjRdW7f+mfGNB5ndNt7hgk7yZWZPsXFxMw5Jw5Cm81/eiwt
         TIXu2bXou7K30B7CxzQIfji7kL750LPX+8aOqcPI+0dHSfUsVFLYafoKYxVm/Fsek+WR
         aCr8G4iemMYU49CzIgnbp8EH1kuv5hcPx82E01GSFskTONvo8bEIj8p1DsdeLrrjhGKC
         4hoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=BNRkWPbsaEiEL6E/NIE6PfblZo9uFmn5cM99n659ncY=;
        b=pYqSMHGy5iV4eAjYvHT0fDlWm7tVEMdKPOP3NzKOZVbUheN2Rojk67gRdNi314FeM9
         bJdSXyhKvA5Xeq05NjRtlVYGQaqYY+iW5BfomntSH0GBQ+8Tl+L0XfKR09huq3PYfawo
         Fm1vgaDgc1FRef06KPHx7Xvzo8hRQj17rxPRNbQSUmUsHuSkWzzBf6W/l16yV4pMfIAZ
         58Zkaq01J4FdPWXrpGbGlQQjLShAr04+YxovC6qAalYl+18DJqnPff3Ck1SsfRxpCG5s
         QWnsCsSvGghLZ6divz2EYYPDYQyhZHAmKcEUvlxQ9YURFE32OkGHY/ZzqkR/VzAV5fZD
         Ru7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=IxA2DMOO;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BNRkWPbsaEiEL6E/NIE6PfblZo9uFmn5cM99n659ncY=;
        b=shI0YgMhmH8a4UGk6EE2aavUaRrmcLslwfzgV7dzr1RzjQb2ZBjlP0SjM1fEJrtk/F
         WPOkrXm1yCnhVxI/jopGDFW+whnQPDpVSrN3cLp5siu+dB6H9//HVry2Tce5NDV1VgXi
         iJ8DpZehVhuKlmSKgE50MHDVDoQeN6DXKwZpJCSM8p5eG9zmap4zmVLaBPjGd+bWSB8Y
         Kq/MOobfwvnoyvnR60diy3W4l6mGoqorn2lWjBWEsUVuen/HcmApOpdN2oFeucTVxaHJ
         dbOsRoxi5qxKK92gmSGSTZ06KhRHYBORPQVL4K1d99w6+/fY8EcpdYQcYrmmniNdlH5D
         6A1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BNRkWPbsaEiEL6E/NIE6PfblZo9uFmn5cM99n659ncY=;
        b=A8qpQwuTDBVAtjg7lRv3E3pF13MevfjObn9XaWJspPqiQQFuCc5NZGYRKE17TArEEn
         YhZuTUwmsaTTn6Z6BLIedRhZDf01Xan7Z7R20IZAs0yMJA55bDhiOtxq8EJHI3Z1/XdR
         NRJtSEKDrTpwfq1FHBZK7ZvKPNFSRl074YfVsmoFcp2Pn5vfDj+5PHlfAalmPLq/5fcO
         OAGGXV8UysScmi7UEWNit7sY9r3MOBFIVFgUANsCDiqSSBxoEs77jdoBGZ1S1Sy19hhM
         gxymVB7aXl4NVZsXwtY1+BksuxclFSLpyu+FLUl3Ey9V2XzFSrgG+bGiH9hzkDboMZyR
         KSmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313yJCxKNe3+RGrG0ZW/ozrwH9Uh4/19I+jCFsxtGdqTXaIDFgC
	thFEEkv+dBkXI1Dsfs2etfI=
X-Google-Smtp-Source: ABdhPJxjnP5L/j/qnn5/pMLKxo0WhpdHgDFoSFLyTep+bH1KMDQ/NqfYLZ0MfAR2w9C8ymGOaIoUng==
X-Received: by 2002:a05:6830:b8c:: with SMTP id a12mr17290621otv.182.1633484839807;
        Tue, 05 Oct 2021 18:47:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2f5:: with SMTP id r21ls4938357ote.3.gmail; Tue, 05
 Oct 2021 18:47:19 -0700 (PDT)
X-Received: by 2002:a9d:4b85:: with SMTP id k5mr16332186otf.103.1633484839383;
        Tue, 05 Oct 2021 18:47:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633484839; cv=none;
        d=google.com; s=arc-20160816;
        b=gEw7WKBFhUH641nYwFGFXJpJPQ0pj7Zbj6Ctq8DNLWHc5YURzXriI4hhUp6yz8sKIs
         Eea4XT3lZsPFX1pUlD/S5MprYOk10aAfWpR1IO543LwxO1/ftBYgiL8mpEq/+aC7ivsf
         liuXFuiD1EZ1uNrMlKJ8BnLWHG9oxqtlGe/WaLhyhL3lolf27XnAg7shbow3dSYyTlbA
         chUp2eZZiOaZykp3WoQ/CgR6qgd8kFg7Jh3o2y804+TpOql9w3ouvPyGPwPAxUbnaUSp
         cmvIo2vbY+++r96NttnkrZ4A4e/tNDE2Ol+csrrQkTtbTbDfU812rUSFGt+3vOt80SuL
         L1gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9lVsR8viyeOaNuq1ktr/jxXNA4FJbIMaWzpFsunm0o4=;
        b=O3puxenTSooQodLuVlSgo5jp8ii5kGCAoQX3J6CDMxcvI6nKmtdFq4RwmJxjprijCL
         gIddq2iYChEN4RdsqD+5PFYdmTlOCkrVa0EYJZMX4ZwBib3/L+IusAt/uVMXx0lHxPJV
         BZKHIsvq91DSw+FDXsM5LU3KSFlI3JjAreb77MS9nRBjT1ViC20xxlF7c2qjcl2fXghw
         U1oO+nSQ73XZxNrH73gDGc4OiTWmYlIzN3CZis+IQM+OCINJUWqQgZd5YOgBs3v5KZRE
         W4uR62PHqUBev2UyK+GQBoLiR4LNkdygAzODVclCZNwwtuyfZapIFtFQX9RysuNyvAeN
         +VUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=IxA2DMOO;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m30si1946896ooa.1.2021.10.05.18.47.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Oct 2021 18:47:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9D00A611CC;
	Wed,  6 Oct 2021 01:47:17 +0000 (UTC)
Date: Tue, 5 Oct 2021 18:47:17 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Kees Cook <keescook@chromium.org>
Cc: Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
 David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Vlastimil Babka <vbabka@suse.cz>, Andy Whitcroft <apw@canonical.com>,
 Dennis Zhou <dennis@kernel.org>, Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Joe Perches <joe@perches.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Miguel Ojeda <ojeda@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Tejun Heo <tj@kernel.org>, Daniel Micay <danielmicay@gmail.com>, Nick
 Desaulniers <ndesaulniers@google.com>, Masahiro Yamada
 <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>,
 clang-built-linux@googlegroups.com, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
 linux-hardening@vger.kernel.org
Subject: Re: [PATCH v3 4/8] slab: Add __alloc_size attributes for better
 bounds checking
Message-Id: <20211005184717.65c6d8eb39350395e387b71f@linux-foundation.org>
In-Reply-To: <20210930222704.2631604-5-keescook@chromium.org>
References: <20210930222704.2631604-1-keescook@chromium.org>
	<20210930222704.2631604-5-keescook@chromium.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=IxA2DMOO;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Thu, 30 Sep 2021 15:27:00 -0700 Kees Cook <keescook@chromium.org> wrote:

> As already done in GrapheneOS, add the __alloc_size attribute for regular
> kmalloc interfaces, to provide additional hinting for better bounds
> checking, assisting CONFIG_FORTIFY_SOURCE and other compiler
> optimizations.

x86_64 allmodconfig:

In file included from ./arch/x86/include/asm/preempt.h:7,
                 from ./include/linux/preempt.h:78,
                 from ./include/linux/spinlock.h:55,
                 from ./include/linux/mmzone.h:8,
                 from ./include/linux/gfp.h:6,
                 from ./include/linux/mm.h:10,
                 from ./include/linux/mman.h:5,
                 from lib/test_kasan_module.c:10:
In function 'check_copy_size',
    inlined from 'copy_user_test' at ./include/linux/uaccess.h:191:6:
./include/linux/thread_info.h:213:4: error: call to '__bad_copy_to' declared with attribute error: copy destination size is too small
  213 |    __bad_copy_to();
      |    ^~~~~~~~~~~~~~~
In function 'check_copy_size',
    inlined from 'copy_user_test' at ./include/linux/uaccess.h:199:6:
./include/linux/thread_info.h:211:4: error: call to '__bad_copy_from' declared with attribute error: copy source size is too small
  211 |    __bad_copy_from();
      |    ^~~~~~~~~~~~~~~~~
make[1]: *** [lib/test_kasan_module.o] Error 1
make: *** [lib] Error 2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211005184717.65c6d8eb39350395e387b71f%40linux-foundation.org.
