Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZVRT2AAMGQE33CEO6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 350F62FC826
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 03:43:51 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id a48sf7978957uad.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 18:43:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611110630; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qhg7oHESZ6U7gBamEpeEySqX1fDAexX3xYGOI/Q68pXqMJJQrZO1b+eaWeSsZBMTe1
         1C+3O04/WUuaXy/10iUsn1LF8g0F3RCeNq4sDgku0aRT/rxuQC/uJl5dA42jVqGnB7pT
         qkkBIioiH38+kAOahQgQMoCVOXSmFA8Zkj2VC4CyciPh4NtVIGdMhP0iSRtkHNgJ24SA
         w6rvkoRnNPUYhVol9j/8GI4npQ4NdLkR/9MOf1F3ZKqub6TgL49EmL3hv7TT0alylBHo
         4MpHK3lv8L6654rXA8aQuVBWRITnrP6pOwuOp3JOcsyY1ZjaGvBaTsOzgHDV5aeuJZor
         e+oQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bi/6gzycZhhhKQI6AEAmiHeOMlHxDqISQgY5Gyu/604=;
        b=rRO+iyBXrvro6KDyDS5hNHVRltPtHvevT80AcJVIdf+0EQFYyWAXVB//fiei408p1U
         vzX70ibg+9qXivNLqdFx1P6LxbqnZopTu96JyriM8BnhnvCINgFU4x64lwvuKyhuV5Yg
         obfh/1B8CiQwpO9ne3JqyQh2d0uWCEBsoP6//x47uxXEptT8dRbhRkecYvIKq5IkswmB
         u79vDWqxSeSIaBXZZzUpN1sisMHH2xbvx8bC+dtbURg2yMLL4Qjt0JvC4TnTekRCSWUu
         qrkKvFEJVn+GWQ8PTENzjK9Vu62d2wuYmZXBv6Uq/wndo8uW9h3mQmQe22xu3zvqy3kZ
         LoNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=payUoMdP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bi/6gzycZhhhKQI6AEAmiHeOMlHxDqISQgY5Gyu/604=;
        b=VO6kDw/mLnJrNeacftzwaPSlxZN20pokNmbEyEuWI2cQLCjTRujtP7T9dHnGrJjHsp
         /U3qt4mio8tynd7GmqKziM84bW4zf8aOF6bJCPSh6h9D1M0Fp3bzs7YS2DzzSvbRboTL
         CEtUvl+1Z+Wcgzp1uB6DEPIOt2BT90Q/TMgN7taE8WT4rMxfJCI+LVlOdaN8x+gsqPDn
         yQGZJaQ60pgkb/6N+e1SK5eZQ15pJhD0LY2j/S2U799JiZH1bcANz28nk9r759XBiqXW
         phZM4U48/H1uksvNYHw7pAmMETt7oJ6LNtoL7YeJcpus11E7zsBseedS21Eh2eq5/zIe
         1IBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bi/6gzycZhhhKQI6AEAmiHeOMlHxDqISQgY5Gyu/604=;
        b=SxmwoPZAROra5RzkJ3UK+5I8h5DTLKiqaiMsjep+ydaEd+Qmsd/jPQ3FCKruPQetgA
         L1GwkrIbLHl3uptrY0jRDAbERQAiTbQnR9ytAAFSGMstk2ju5bZd7jWFv7UbLgZJgMiU
         rnUcCbl89HqvU5i3b8U2X8Ux5AKtmJx4CP4kSiUx+eZIoNs7MFF3ScSRffreubzGBdw+
         U35DEOwSDZDK7xefkk/AWwFuDNKAUZD/SHsf+P1HAeLOxd+BfnuiVHuKNHb+cn5Ch8ze
         tUtPPeTcNWw7d4VBdeMG15XKAN8znIcbPU6jm/hZevwAN7Jc+hSRCUvm7jmzthHBRGyB
         JP2w==
X-Gm-Message-State: AOAM531ExdSDOXuilw00fQuWuWeQi+ZcN75iG0sntnRjEt8jfG7UwgsR
	+QmhQnX45NDetVAmyhSVmU4=
X-Google-Smtp-Source: ABdhPJwS/gBTsFuPxtfp221JM4AS+t2U5mEQd+k8jwOvQsioG8LmN4Y43L+3mxNRMDXc+f4SALFRWg==
X-Received: by 2002:ab0:6393:: with SMTP id y19mr4491519uao.88.1611110630272;
        Tue, 19 Jan 2021 18:43:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ea12:: with SMTP id g18ls3238549vso.9.gmail; Tue, 19 Jan
 2021 18:43:49 -0800 (PST)
X-Received: by 2002:a67:fd51:: with SMTP id g17mr4959075vsr.38.1611110629845;
        Tue, 19 Jan 2021 18:43:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611110629; cv=none;
        d=google.com; s=arc-20160816;
        b=vHxvpYhyTWur3FZhAyQG5BGMoyTxJa6AX1mFt561FEL7362x91p3yFvYcib5nKPOz2
         QkCfbZ3Hn0VIkZRVehzB1D6CLNfgPr3ooezUicxSgnAzj/apfIKxq7PlhvfmOHTHdpZu
         EVMqqbjwsNJjOA1ShCmbNLBTi3iYVoPdln5qXDy2oQro5X2XCocEpv4SD6XIox+V8Zfe
         IVHL72aYtHxOYW/3mNnyqW0xNQe3pHpzl+Dithqn1PT/SsC5/4WzBlWm1rjYwiCO+arx
         DWiiYhRGVRhRh/wEbXxwRzPM2EZWfL3OYpdqRPWwwYWE5UoG3RRiGajpPEpcu/KMd/Ox
         WwAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IoAS2iYBLHsRua0ToD9jNwcwJKOxvef2a5weUgRGbk0=;
        b=NWbJ7lTrQt9GmTl6MqGbW8VHBfMvDCuArLp2BviwPWGbmRGD8Err8lgRjqeiT062jX
         Bozpeh2el2hBV/45L4XLYoAy5qEEhIoFsZYe/mK6KH+myPIXrHiI3+tP9YGgfMxr/59k
         tj6Q1t39Jxa+0odFGhYE1Xrolvgfc3qtiLNASKJgIB6DdMu+89MpG8wRZkbVF+S14NLc
         WZOLtRMwpyhOwMltFLdjx+4j7tLO8tX7p/NTfpne9z3J/L5Z1PVYE7y/o1wmeC+nPwBk
         CkFTtPnHQymLBUzSQ80xMWTBKBtIf2MnNfemzZGJtQlnXdgF6n+aPYPvdEy5YU8Qh9un
         srQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=payUoMdP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com. [2607:f8b0:4864:20::434])
        by gmr-mx.google.com with ESMTPS id e11si65465vkp.4.2021.01.19.18.43.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jan 2021 18:43:49 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434 as permitted sender) client-ip=2607:f8b0:4864:20::434;
Received: by mail-pf1-x434.google.com with SMTP id y205so7759238pfc.5
        for <clang-built-linux@googlegroups.com>; Tue, 19 Jan 2021 18:43:49 -0800 (PST)
X-Received: by 2002:a63:1f47:: with SMTP id q7mr7252992pgm.10.1611110628633;
 Tue, 19 Jan 2021 18:43:48 -0800 (PST)
MIME-Version: 1.0
References: <1611042978-21473-1-git-send-email-yangtiezhu@loongson.cn>
In-Reply-To: <1611042978-21473-1-git-send-email-yangtiezhu@loongson.cn>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 19 Jan 2021 18:43:36 -0800
Message-ID: <CAKwvOdkXGx-WogH0o5iuNnEe07sqRfxMpOg5fEEnTWcOfBrbAQ@mail.gmail.com>
Subject: Re: [PATCH bpf-next v2] samples/bpf: Update README.rst and Makefile
 for manually compiling LLVM and clang
To: Tiezhu Yang <yangtiezhu@loongson.cn>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Network Development <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Xuefeng Li <lixuefeng@loongson.cn>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=payUoMdP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::434
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

On Mon, Jan 18, 2021 at 11:56 PM Tiezhu Yang <yangtiezhu@loongson.cn> wrote:
>
> The current llvm/clang build procedure in samples/bpf/README.rst is
> out of date. See below that the links are not accessible any more.
>
> $ git clone http://llvm.org/git/llvm.git
> Cloning into 'llvm'...
> fatal: unable to access 'http://llvm.org/git/llvm.git/': Maximum (20) redirects followed
> $ git clone --depth 1 http://llvm.org/git/clang.git
> Cloning into 'clang'...
> fatal: unable to access 'http://llvm.org/git/clang.git/': Maximum (20) redirects followed
>
> The llvm community has adopted new ways to build the compiler. There are
> different ways to build llvm/clang, the Clang Getting Started page [1] has
> one way. As Yonghong said, it is better to just copy the build procedure
> in Documentation/bpf/bpf_devel_QA.rst to keep consistent.
>
> I verified the procedure and it is proved to be feasible, so we should
> update README.rst to reflect the reality. At the same time, update the
> related comment in Makefile.
>
> [1] https://clang.llvm.org/get_started.html

There's also https://www.kernel.org/doc/html/latest/kbuild/llvm.html#getting-llvm
(could cross link in rst/sphinx).

>
> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
> Acked-by: Yonghong Song <yhs@fb.com>
> ---
>
> v2: Update the commit message suggested by Yonghong,
>     thank you very much.
>
>  samples/bpf/Makefile   |  2 +-
>  samples/bpf/README.rst | 17 ++++++++++-------
>  2 files changed, 11 insertions(+), 8 deletions(-)
>
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index 26fc96c..d061446 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -208,7 +208,7 @@ TPROGLDLIBS_xdpsock         += -pthread -lcap
>  TPROGLDLIBS_xsk_fwd            += -pthread
>
>  # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
> -#  make M=samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
> +# make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc CLANG=~/git/llvm-project/llvm/build/bin/clang
>  LLC ?= llc
>  CLANG ?= clang
>  OPT ?= opt
> diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
> index dd34b2d..d1be438 100644
> --- a/samples/bpf/README.rst
> +++ b/samples/bpf/README.rst
> @@ -65,17 +65,20 @@ To generate a smaller llc binary one can use::
>  Quick sniplet for manually compiling LLVM and clang
>  (build dependencies are cmake and gcc-c++)::
>
> - $ git clone http://llvm.org/git/llvm.git
> - $ cd llvm/tools
> - $ git clone --depth 1 http://llvm.org/git/clang.git
> - $ cd ..; mkdir build; cd build
> - $ cmake .. -DLLVM_TARGETS_TO_BUILD="BPF;X86"

Is the BPF target not yet on by default?  I frown upon disabling other backends.

> - $ make -j $(getconf _NPROCESSORS_ONLN)
> + $ git clone https://github.com/llvm/llvm-project.git
> + $ mkdir -p llvm-project/llvm/build/install
> + $ cd llvm-project/llvm/build
> + $ cmake .. -G "Ninja" -DLLVM_TARGETS_TO_BUILD="BPF;X86" \
> +            -DLLVM_ENABLE_PROJECTS="clang"    \
> +            -DBUILD_SHARED_LIBS=OFF           \
> +            -DCMAKE_BUILD_TYPE=Release        \
> +            -DLLVM_BUILD_RUNTIME=OFF
> + $ ninja
>
>  It is also possible to point make to the newly compiled 'llc' or
>  'clang' command via redefining LLC or CLANG on the make command line::
>
> - make M=samples/bpf LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
> + make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc CLANG=~/git/llvm-project/llvm/build/bin/clang
>
>  Cross compiling samples
>  -----------------------
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1611042978-21473-1-git-send-email-yangtiezhu%40loongson.cn.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkXGx-WogH0o5iuNnEe07sqRfxMpOg5fEEnTWcOfBrbAQ%40mail.gmail.com.
