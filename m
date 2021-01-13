Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5M27H7QKGQET24TXKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D952F4139
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 02:31:34 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id u9sf200377qkk.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 17:31:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610501493; cv=pass;
        d=google.com; s=arc-20160816;
        b=cd1hjWGx9JSz/tR3Yx178eBhqsIUa/qi+SLEOTqhXQq3htReuQTihbB6JEc9pxQGu6
         7I02yudIg5tKL+y3j5drMX+Kd/lwvGY7l9nwAjgObjiJXjgGc8ct9J1esSHJnp5blt+9
         xvqSn2B75jXO0FfHrqUnB7KFskv3c5XvFJSumlYAc+Khj8nxCXAOV9pTvguu27IZzRvc
         LWZATxm9OYaV7iIV6e4fTaU+99fk3Exoa8Qv9xYleSVvt1BYQH32TrhLflNLV10/FkEA
         K4Vlpp9uMJzBZ9AvssjSU7GSaiSR7ATir6RmyU7vUb/VStTaIe/sar/GCb6XMDkwG/Vu
         O5hQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=9GLGBATEBSuQZl8ExTI55G+Yz0FciI41TbLfmvy8MnA=;
        b=KVPd/QDa7xuVT0QgO82TxdGeB8c0Njn+isBHwPdvYhHlJCyFfdoxX1sxUsJFdQNtz4
         bM7/4KfplIfFc+wrgk9pxD/b4dwiVsnNDzpb3/LxS73kIkxOXsVuEOpF6VCJdRcmaaSW
         OJlM4lZDjfAn3XK2jRDQsEJjQWP3KU+PkhFD3wXUmPt0jZrQxIfJRVDO7/QuZj3YjS29
         pEtoWBt2SsDfrKGgvHLwT0lAKeHQTVVSHtnxA1+xq4MRp5jJ0YGf3Jap55rCZMSJzpLk
         RN4wgYhxzMkKS6GcN2TrYw7+EISMfKJCoVnmWO/f/nZg02hp/K0V2u/XKehezjXM6BIj
         zoww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z5V6pwug;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9GLGBATEBSuQZl8ExTI55G+Yz0FciI41TbLfmvy8MnA=;
        b=IdswfJXcsC4gInQbo4yuwC+/eLc+oawxKp/kAq9UzUQQedGROo/FY/vYVQuxnLZTeL
         iz1MFy52efTdnzwnUsWgIOu6AZFit9KlM1Ca9Re9f6sTjRGVuPc+dpCQN3bQ6aQs+i3q
         njGvou57SYNYGTSSyI2xPlBDO0ziQn1N7k8BBpkBIcHX8966qGsvdpTOV7LFTFGdY38j
         LY810qEEt3FTTO814QymUbVyWj3NgyQbEq4PSd1ZTOZQNSVPhLD8a87KTKQuyChuQX3j
         60z0/EqVhiRjfZLUYPB33RzXG6IPflIt0CnZWigE3XJYw84Yyi0GpqOwi1F7Bu2wgHzc
         a8YA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9GLGBATEBSuQZl8ExTI55G+Yz0FciI41TbLfmvy8MnA=;
        b=O+zTK1/7vv306jU0eM0E4GGPVPqS9WdarZgXmriAZXKE47AeIrnVi8QPODwox95t0h
         gFVwygRUdmV36r4t9FkTPD4zdXVuTLvB0xrr5+scaYZH2qK3xmySU1FAvYYCyff3opmb
         128fTy/DR8/c2a+RsVcINguMOd90o/Y+OD7rd5pwW4Kdkp58WlPVvlS34YVe7geXOSvh
         Q6cqRXhnSKSE0Fxcg8K/lHWc5tm6PDlbuQtPwrbY7MrLm3UQRCrt4VPgsL39QdZ1MyOb
         ST0WCuJSEI56lYkWI1kOEz+HjfT3U8HC3iaSZ6rWnxkRS7bkHQBt/P2F4WihMtJxGTRS
         LiLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9GLGBATEBSuQZl8ExTI55G+Yz0FciI41TbLfmvy8MnA=;
        b=bTIjfjjbpFIYocX9W1yPAL5e21eyJxl8XHXB3Nyuoom6Mx08ZqJDso2NN751hGrBHC
         TKQiYhhEb3gf3sucyoowSDmyM3GYhv9jvNKCsAF6puS5cq2189lEUeHrQZ9dhxD1tlr1
         29gDIq93OVFh5cfbsPzUBV2vauwqSe0ztd8gebeEFO4YpTYG7kjUtOOttz3msovaeppf
         rF6icRrSWo6H9T2swH0gGjuo00sw9+8LfFIZHMui+Sy+r0Jo1vY68Di0/pn2JIUbOo55
         PO2Q0AChGfRPdLQUgENwRZ4XlcUJFixRQdsUgxNBdRlkfwhFL10reijBpbvZi0K94onv
         3CXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326HYhEyvnPDfT50IdYABG5/HT4z/Cp2uJ0ODXr8hCiR8k5uslQ
	zdwTd3N3QHCgQ+pILfzMQxs=
X-Google-Smtp-Source: ABdhPJxrOtqCYBRxbtxTg9rfrkJTUlZ/Ju8wFt+Yo3S53Qq8Zhukzty6h0O9sE3gNZfgztIMLOkeJw==
X-Received: by 2002:ad4:4888:: with SMTP id bv8mr2683933qvb.0.1610501493367;
        Tue, 12 Jan 2021 17:31:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:132f:: with SMTP id p15ls355327qkj.0.gmail; Tue, 12
 Jan 2021 17:31:33 -0800 (PST)
X-Received: by 2002:a37:4a82:: with SMTP id x124mr2581335qka.458.1610501493022;
        Tue, 12 Jan 2021 17:31:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610501493; cv=none;
        d=google.com; s=arc-20160816;
        b=azaIW1QnZGdvnWounpfRdrPLeL45y9DDzgGySO7qS/Zu4TusVXAlLYqkscfZWuPJ6r
         7EynNKhAuE0J4ckjGCaQW6sLLQSg6CtgN2j3h59qYe/c728mKU+oLxy3XzX61ORphM3b
         UtT03Ifl7NdoWnkj5cao9WRbjtHBHHFuGRam8td1p16WvvnKePaFLG+tt1yKY82OLkX6
         qdZMkfpy050xjF8rOIu2Il0tPhhpfhZsMLf9Q+sGafSDZ3wPu9drhsVcNp0IhEEp/UFu
         CtoepolaoSL8Tr415q8kiPuIJf0ddENnHFfyyrTrb8qffHi+eeR2ZV+pHZCCqeTpgshM
         UDmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fq9Plgov79IhfrzoAKOz8rulKlgb6ke/+f1nKnQxxW0=;
        b=A1Y0GHD8MT7h7X9FyqXxzt+aqlD+yagOSz8L/rFRr76YhdYS6lz1ZJuqk9BqdZZK1Q
         9GtmQQCcA0xL0e1JtoxI99hbXxjDJXNWwAfJhavdzwtFEsaeWn7EpTJAuIsqVY4QOIor
         pWM8SL9Sr6iZM59UuzyVq5kG+RPtGm3VkIy3Oojv2NzotDW4wSo0SlyOFz8uopsI2Z8O
         s9oOBvgb9SZdA89J2nhjYEbuFeMHJULO1pNNAsut5/uB8ZLHaei1EYVoufjUwfvzhYQG
         9Ln5W/4uPXXzKIZyExT+cUd7lRRXfBAgSTH+bipcrzKQ7KS/ZQlv0k1Fl6fOE+XKSJq+
         CFaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z5V6pwug;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com. [2607:f8b0:4864:20::733])
        by gmr-mx.google.com with ESMTPS id q66si16477qkd.3.2021.01.12.17.31.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 17:31:33 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::733 as permitted sender) client-ip=2607:f8b0:4864:20::733;
Received: by mail-qk1-x733.google.com with SMTP id n142so294507qkn.2
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 17:31:33 -0800 (PST)
X-Received: by 2002:a37:9b8a:: with SMTP id d132mr2556778qke.81.1610501492549;
        Tue, 12 Jan 2021 17:31:32 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id p15sm248369qtu.26.2021.01.12.17.31.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 17:31:31 -0800 (PST)
Date: Tue, 12 Jan 2021 18:31:30 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ubsan: Implement __ubsan_handle_alignment_assumption
Message-ID: <20210113013130.GA3446359@ubuntu-m3-large-x86>
References: <20210112205542.1375847-1-natechancellor@gmail.com>
 <202101130859.JSORPQUn-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101130859.JSORPQUn-lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Z5V6pwug;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::733 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Jan 13, 2021 at 08:39:52AM +0800, kernel test robot wrote:
> Hi Nathan,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on 7c53f6b671f4aba70ff15e1b05148b10d58c2837]
> 
> url:    https://github.com/0day-ci/linux/commits/Nathan-Chancellor/ubsan-Implement-__ubsan_handle_alignment_assumption/20210113-055714
> base:    7c53f6b671f4aba70ff15e1b05148b10d58c2837
> config: arm64-randconfig-r031-20210112 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 32bcfcda4e28375e5a85268d2acfabcfcc011abf)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/775adad26a60878926c0ee6cd460a1375bbe51e6
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Nathan-Chancellor/ubsan-Implement-__ubsan_handle_alignment_assumption/20210113-055714
>         git checkout 775adad26a60878926c0ee6cd460a1375bbe51e6
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    lib/ubsan.c:192:6: warning: no previous prototype for function '__ubsan_handle_add_overflow' [-Wmissing-prototypes]
>    void __ubsan_handle_add_overflow(void *data,
>         ^
>    lib/ubsan.c:192:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    void __ubsan_handle_add_overflow(void *data,
>    ^
>    static 
>    lib/ubsan.c:200:6: warning: no previous prototype for function '__ubsan_handle_sub_overflow' [-Wmissing-prototypes]
>    void __ubsan_handle_sub_overflow(void *data,
>         ^
>    lib/ubsan.c:200:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    void __ubsan_handle_sub_overflow(void *data,
>    ^

Given that these are compiler inserted functions, there is not much of a
point to having prototypes to them. If people feel shutting these
warnings up is worthwhile, we can just add the prototypes right above
the function definition in a follow up patch.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210113013130.GA3446359%40ubuntu-m3-large-x86.
