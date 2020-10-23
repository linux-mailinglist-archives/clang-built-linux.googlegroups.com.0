Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQWEZT6AKGQEBB4QJZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 972282976F7
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 20:34:43 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id s10sf1958636iot.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 11:34:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603478082; cv=pass;
        d=google.com; s=arc-20160816;
        b=rtZfKSYj+ws182DSyAY5wLNgg0hYA4Adt5pjSprx8ucO1YPYzv4tyHjZcYWLkHeUGd
         XSpHGIBnnX54X38/3WHWWRCdxN9gHtG+5Tm6z/WPCxzIV5XomTSvUzjxwGa8i1+wnNBr
         LiCGkFlkgyl1gwMkzvg0rhz2ielqEq3TBaCL+5K5wTDcHdfSni1KGEY+rxCl8bCwh4m8
         6geJY3NS9MjIFFw6dIc/Ho0+H0P2O8sa8IcxXRyFH4wBZZxyKeG2X4M0IQTCBPhQC5WB
         hmQcQEMaoRfw8OK3unu8jQ9dXKMH8XRektawz7SxRna/+i3CEh4duF6WOtW3/oTs0QIS
         5G+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6LsW1zIIoopK46mwO2eg3QvjEwS2naYYpjKk6izHhEw=;
        b=F5edazpJ1ZaKnR1IuzWn1ErOkj52f16qkHgNRiTfElnYJBEPGCZg9pJ6PS7djj8fLR
         p8mtfCmTErgG2Rq35Tfk7rEpNQ2s9/CRRjEjKm+J44B0L3OfmgJPfVMrvLhVFkxzc5F2
         /EYwy/seU1sGUvf01G0p9T42/Ju5h5CIx6Kn5eB1iMAqedCug9lbQL/fIzpgTqXxk17n
         xN4/y2pjToXQiYGaS/080nzY4Tah2Ewmfku2lSNf3jDH+HLx/36hAyChxe9mg0AsH00p
         t4cd6PwjeNuwgJ9f5qeR4F0Ihzzs4lyOa9hv+MzWw0vsURR8V7FEB5dWOvt+e3MzYYIQ
         sQUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="YiZ8fpc/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6LsW1zIIoopK46mwO2eg3QvjEwS2naYYpjKk6izHhEw=;
        b=kACJIeB0584xHdCTdij39ZUtRPtF6NCkr+uBrGT5Vj5E+PRLXeWZpAto7OWOmF2abE
         kkW18oFnDwznWgBOnXqZ9BRxlw9mYM/6J0vKpdpxuWnbYCGSDr4hyqB1mTZkD3NPkrp3
         i6GIO7nlVLXAzGlPgfpJQ01yrvXMeLc1tD+xX6NJy3SdyfEmFEJEe3N2TdYuLxi47ccD
         TlUtv9/ZQc8bHHhu9faxTnodPzLrhgnlUku5gz3TzvB+saLL75UiS0moZzEL9PXWst75
         vUo4QVb1fJNyMljbBArtyvOl1mEBcPqhRmxVgRt8MdXOhWcY3Vj6j4YpkDNucqHGajQ5
         4FAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6LsW1zIIoopK46mwO2eg3QvjEwS2naYYpjKk6izHhEw=;
        b=nGrmJDvytynmBBRzHcr2NizBGbw57hHd2FfQ+vB3fF58PgTo27/A9Q4YNnA2RAPswd
         lbR4Nz6+pMpQbk50vuNcr8hCWH512wcU186QzrZxabEUpBNRmtMFjU/KP5MYXbh8tKDU
         ecvW/tsEs0Pvd77ggJslkxCSe3mqEpLs6C6R+efk70FZc9V5Faw0ksaNu8ZyElpP0XZ6
         1P+Iv5cpzR9YNQzaDkO+oOVTEUH0p701Qz9GXMD12D2HeWrpHfIquSC3DBPopUoLhRen
         c7uFrVwM08ab2eGH/gKnaotSjnJqzm6GL2fkwo8Z4Az/R92MwUmbO2IVpT8CjS1gbOXu
         Km/Q==
X-Gm-Message-State: AOAM533nANPkSSi9rez1KofEEf7BuqihUcyB5/UNcO07Wh1dhKAsHKxx
	HGKHS87ULaiitd5iFaYxIP8=
X-Google-Smtp-Source: ABdhPJyGR7rjcOVRbI0BcddF6LwPrwucME360SmgmYhZrL1c7ZASNv9PyeNCJX9t9Egh8+9VNkyJlw==
X-Received: by 2002:a5e:9307:: with SMTP id k7mr2745071iom.129.1603478082535;
        Fri, 23 Oct 2020 11:34:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:2394:: with SMTP id q20ls265866jat.1.gmail; Fri, 23
 Oct 2020 11:34:42 -0700 (PDT)
X-Received: by 2002:a02:234f:: with SMTP id u76mr3087249jau.117.1603478082135;
        Fri, 23 Oct 2020 11:34:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603478082; cv=none;
        d=google.com; s=arc-20160816;
        b=fSOA9WWYsGjuUfWQWRtD1vbHJzHzfTXdI6Y8opdLdGgs5a56r1kp79mawCTLQPIhsm
         tx97mEh6X2ZdB/L3GiauR/0Lew8T2tSmST4tmO9FEJZpyFMdgWRzaqBPvJhLkdcU2jpb
         eZWD0n6eeCYjqYUjfNkPsHFnenVlIP0R6WAzqS6rCufDb2v1JLHdIPEuSB4BDk9t1biQ
         Z7hwzPPw/iWZd1Mc+axQD1fn6fuuLrvPDljkRfMY/yDpB/mIBc4IqmaQFvXIsjsdyrLA
         WEQLALX3D0tSeb8vdonIP0cnXiT4+fnFhi7PnAhaf1fcTY+nd/KoDVVFntXNsngLhQT+
         +cWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iFkIdDI8phFoen6e5X/NZgjRcRd7RhXS/seVZ6TaniI=;
        b=AtzozS1o4lhPoJo3JTxHmkTGNr0q5I79Ja/qxEfE68Lw8MEWWWTrr35w6NMZEXfDCh
         M6/5NbUH/urhLfUVzm24XdUg+CzHnZktlJH9dbrx0Xvg9ep7bx5dj0f/GUM/ZaxNI0A3
         EaxVoC42m/x/b5vaE7xSgtgMmVOLBhb6/BH3R+m9+oMRLAVur1XPCWAcc3S8eXctYEHI
         I1bGLbIlmKmxLcYgi/PtLPidzQReF4DjAkXisz9kfWDBPvvH4t+GiS5em6UqIsF2fNZc
         PeMz/l3tJI+Gj5FLuxXxcpDwFfuk+HxHK48Vw5WqzdiHBxX9dEBK8f/5jL7zEbOnhr4o
         hyRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="YiZ8fpc/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id j68si164216ilg.3.2020.10.23.11.34.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 11:34:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id h7so2037850pfn.2
        for <clang-built-linux@googlegroups.com>; Fri, 23 Oct 2020 11:34:42 -0700 (PDT)
X-Received: by 2002:a17:90a:6b04:: with SMTP id v4mr4159929pjj.101.1603478081319;
 Fri, 23 Oct 2020 11:34:41 -0700 (PDT)
MIME-Version: 1.0
References: <202010240235.eqelQLfG-lkp@intel.com>
In-Reply-To: <202010240235.eqelQLfG-lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 23 Oct 2020 11:34:30 -0700
Message-ID: <CAKwvOd=Y+PxTci0ChrH1U_TvaCb+Yfb=DgdkHjacRi9QRmHgrQ@mail.gmail.com>
Subject: Re: [cifs:for-next 10/32] ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_17)
 is being placed in '.data..L__unnamed_17'
To: Kees Cook <keescook@chromium.org>
Cc: Steve French <stfrench@microsoft.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-cifs@vger.kernel.org, 
	samba-technical@lists.samba.org, Ronnie Sahlberg <lsahlber@redhat.com>, 
	kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="YiZ8fpc/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::430
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

https://github.com/ClangBuiltLinux/linux/issues/1185

On Fri, Oct 23, 2020 at 11:08 AM kernel test robot <lkp@intel.com> wrote:
>
> tree:   git://git.samba.org/sfrench/cifs-2.6.git for-next
> head:   1bfcaa4b7f0b84d397f0080aec64c4c948fc84c0
> commit: fbfd0b46afa9a8b50a061b0f28204fc94c7bddcf [10/32] smb3.1.1: add new module load parm require_gcm_256
> config: powerpc64-randconfig-r004-20201022 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 147b9497e79a98a8614b2b5eb4ba653b44f6b6f0)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         git remote add cifs git://git.samba.org/sfrench/cifs-2.6.git
>         git fetch --no-tags cifs for-next
>         git checkout fbfd0b46afa9a8b50a061b0f28204fc94c7bddcf
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_23) is being placed in '.data..L__unnamed_23'
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_24) is being placed in '.data..L__unnamed_24'
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_25) is being placed in '.data..L__unnamed_25'
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_26) is being placed in '.data..L__unnamed_26'
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_20) is being placed in '.data..L__unnamed_20'
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_21) is being placed in '.data..L__unnamed_21'
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_27) is being placed in '.data..L__unnamed_27'
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_33) is being placed in '.data..L__unnamed_33'
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_29) is being placed in '.data..L__unnamed_29'
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_30) is being placed in '.data..L__unnamed_30'
>    ld.lld: warning: fs/built-in.a(cifs/dir.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/dir.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/dir.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_15) is being placed in '.data..L__unnamed_15'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_16) is being placed in '.data..L__unnamed_16'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_18) is being placed in '.data..L__unnamed_18'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_17) is being placed in '.data..L__unnamed_17'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_20) is being placed in '.data..L__unnamed_20'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_19) is being placed in '.data..L__unnamed_19'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_21) is being placed in '.data..L__unnamed_21'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_22) is being placed in '.data..L__unnamed_22'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/inode.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/inode.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/inode.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/inode.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(cifs/inode.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(cifs/inode.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(cifs/inode.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(cifs/inode.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(cifs/inode.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(cifs/link.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/misc.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/misc.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/misc.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/transport.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/transport.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/transport.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/transport.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(cifs/transport.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(cifs/transport.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(cifs/transport.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(cifs/cifsencrypt.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/cifsencrypt.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/readdir.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_15) is being placed in '.data..L__unnamed_15'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_16) is being placed in '.data..L__unnamed_16'
>    ld.lld: warning: fs/built-in.a(cifs/smb1ops.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/smb1ops.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/smb1ops.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/smb2ops.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/smb2ops.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/smb2ops.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(cifs/smb2ops.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/smb2ops.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(cifs/smb2ops.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(cifs/smb2transport.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/smb2transport.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/smb2transport.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/smb2misc.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_15) is being placed in '.data..L__unnamed_15'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_16) is being placed in '.data..L__unnamed_16'
> >> ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_17) is being placed in '.data..L__unnamed_17'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: fs/built-in.a(cifs/smb2file.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/cifs_spnego.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/cifs_spnego.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/compr.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/nodelist.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/nodelist.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/nodelist.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(jffs2/nodelist.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(jffs2/nodelist.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(jffs2/nodelist.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(jffs2/nodelist.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(jffs2/nodelist.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(jffs2/nodemgmt.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/nodemgmt.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(jffs2/nodemgmt.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(jffs2/nodemgmt.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(jffs2/nodemgmt.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/readinode.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/readinode.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(jffs2/readinode.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(jffs2/readinode.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/readinode.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(jffs2/readinode.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(jffs2/readinode.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(jffs2/readinode.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(jffs2/write.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/write.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/scan.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(jffs2/scan.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/scan.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/scan.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(jffs2/scan.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(jffs2/build.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/build.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/build.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(jffs2/erase.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/erase.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/background.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/fs.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/fs.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/super.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/debug.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/debug.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_15) is being placed in '.data..L__unnamed_15'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_16) is being placed in '.data..L__unnamed_16'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_17) is being placed in '.data..L__unnamed_17'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_18) is being placed in '.data..L__unnamed_18'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_19) is being placed in '.data..L__unnamed_19'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_20) is being placed in '.data..L__unnamed_20'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_21) is being placed in '.data..L__unnamed_21'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_23) is being placed in '.data..L__unnamed_23'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_22) is being placed in '.data..L__unnamed_22'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_26) is being placed in '.data..L__unnamed_26'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_25) is being placed in '.data..L__unnamed_25'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_24) is being placed in '.data..L__unnamed_24'
>    ld.lld: warning: fs/built-in.a(ubifs/journal.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/dir.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/dir.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/sb.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/sb.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/sb.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
> --
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_23) is being placed in '.data..L__unnamed_23'
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_24) is being placed in '.data..L__unnamed_24'
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_25) is being placed in '.data..L__unnamed_25'
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_26) is being placed in '.data..L__unnamed_26'
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_20) is being placed in '.data..L__unnamed_20'
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_21) is being placed in '.data..L__unnamed_21'
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_27) is being placed in '.data..L__unnamed_27'
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_33) is being placed in '.data..L__unnamed_33'
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_29) is being placed in '.data..L__unnamed_29'
>    ld.lld: warning: fs/built-in.a(cifs/connect.o):(.data..L__unnamed_30) is being placed in '.data..L__unnamed_30'
>    ld.lld: warning: fs/built-in.a(cifs/dir.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/dir.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/dir.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_15) is being placed in '.data..L__unnamed_15'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_16) is being placed in '.data..L__unnamed_16'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_18) is being placed in '.data..L__unnamed_18'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_17) is being placed in '.data..L__unnamed_17'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_20) is being placed in '.data..L__unnamed_20'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_19) is being placed in '.data..L__unnamed_19'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_21) is being placed in '.data..L__unnamed_21'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_22) is being placed in '.data..L__unnamed_22'
>    ld.lld: warning: fs/built-in.a(cifs/file.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/inode.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/inode.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/inode.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/inode.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(cifs/inode.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(cifs/inode.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(cifs/inode.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(cifs/inode.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(cifs/inode.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(cifs/link.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/misc.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/misc.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/misc.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/transport.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/transport.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/transport.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/transport.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(cifs/transport.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(cifs/transport.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(cifs/transport.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(cifs/cifsencrypt.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/cifsencrypt.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/readdir.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_15) is being placed in '.data..L__unnamed_15'
>    ld.lld: warning: fs/built-in.a(cifs/sess.o):(.data..L__unnamed_16) is being placed in '.data..L__unnamed_16'
>    ld.lld: warning: fs/built-in.a(cifs/smb1ops.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/smb1ops.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/smb1ops.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/smb2ops.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/smb2ops.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/smb2ops.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(cifs/smb2ops.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/smb2ops.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(cifs/smb2ops.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(cifs/smb2transport.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/smb2transport.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/smb2transport.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/smb2misc.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_15) is being placed in '.data..L__unnamed_15'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_16) is being placed in '.data..L__unnamed_16'
> >> ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_17) is being placed in '.data..L__unnamed_17'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: fs/built-in.a(cifs/smb2pdu.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: fs/built-in.a(cifs/smb2file.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/cifs_spnego.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(cifs/cifs_spnego.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/compr.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/nodelist.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/nodelist.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/nodelist.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(jffs2/nodelist.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(jffs2/nodelist.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(jffs2/nodelist.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(jffs2/nodelist.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(jffs2/nodelist.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(jffs2/nodemgmt.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/nodemgmt.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(jffs2/nodemgmt.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(jffs2/nodemgmt.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(jffs2/nodemgmt.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/readinode.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/readinode.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(jffs2/readinode.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(jffs2/readinode.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/readinode.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(jffs2/readinode.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(jffs2/readinode.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(jffs2/readinode.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(jffs2/write.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/write.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/scan.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(jffs2/scan.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/scan.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/scan.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(jffs2/scan.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(jffs2/gc.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(jffs2/build.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/build.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/build.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(jffs2/erase.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/erase.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/background.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/fs.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/fs.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/super.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/debug.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/debug.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_10) is being placed in '.data..L__unnamed_10'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_11) is being placed in '.data..L__unnamed_11'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_6) is being placed in '.data..L__unnamed_6'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_7) is being placed in '.data..L__unnamed_7'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_12) is being placed in '.data..L__unnamed_12'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_13) is being placed in '.data..L__unnamed_13'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_15) is being placed in '.data..L__unnamed_15'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_8) is being placed in '.data..L__unnamed_8'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_9) is being placed in '.data..L__unnamed_9'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_5) is being placed in '.data..L__unnamed_5'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_14) is being placed in '.data..L__unnamed_14'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_16) is being placed in '.data..L__unnamed_16'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_17) is being placed in '.data..L__unnamed_17'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_18) is being placed in '.data..L__unnamed_18'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_19) is being placed in '.data..L__unnamed_19'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_20) is being placed in '.data..L__unnamed_20'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_21) is being placed in '.data..L__unnamed_21'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_23) is being placed in '.data..L__unnamed_23'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_22) is being placed in '.data..L__unnamed_22'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_26) is being placed in '.data..L__unnamed_26'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_25) is being placed in '.data..L__unnamed_25'
>    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_24) is being placed in '.data..L__unnamed_24'
>    ld.lld: warning: fs/built-in.a(ubifs/journal.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/dir.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/dir.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
>    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/sb.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/sb.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/sb.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_3) is being placed in '.data..L__unnamed_3'
>    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_4) is being placed in '.data..L__unnamed_4'
> ..
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010240235.eqelQLfG-lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DY%2BPxTci0ChrH1U_TvaCb%2BYfb%3DDgdkHjacRi9QRmHgrQ%40mail.gmail.com.
