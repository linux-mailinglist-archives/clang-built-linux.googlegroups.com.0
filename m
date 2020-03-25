Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVOY53ZQKGQE6EFEO5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D931930E5
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 20:09:13 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id r16sf2923745qtt.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 12:09:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585163352; cv=pass;
        d=google.com; s=arc-20160816;
        b=io1aQlAZ4NF5hiP8UpAbB7YBkxx5O68Lzq4wQcATd8zP/reFUzk3LE7MmusTehHt0X
         I9QUIzbqih7jFAvVviSkwGIjni5/yXroyYAErdRXnTpaUgTXHTVRmUvQYDTnWU+fXhus
         0wkhli96eDJcOIBexuRI9ipGxOQtaSC7h63Ov90QKR2n/KhqSmBznQhoUD7wPRY9J6nA
         F/K1zAk+rvwMULe9lZZBfD9pCfW0RegiU8SPGQFLOe2Ds/Q8R4uvhMdk1KtSerWbSoqq
         Ebh6atjfbsSxPGhKVLsjLqAl9Eb9YFqeLssemUxuIaI6WRxQ8wr5iy5q+L6C+Jw+omrB
         DdSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=6DPuK0bqN8C6nF/5eFpfJ1z4ELS9/7oSQ7wuNNGxuco=;
        b=dPvwhJL8VX3DZmz5Q2S/RkwrQAzMAwX9StyyW7RF2Voz00pdpNpGxdECd/s9raBnWS
         tXKMx8rP/fr/puWW3NN3d4n9FBl3DDOpEJXMn3Wt/9ekpo2qt11IWxsmhHSfTAdbsN6c
         9X7VemV7EVH3VNX4omvkNP+LU+SWDnM8+2HQdkIQvafoAwCXJdrFxUmEOO1DgBbbsTJh
         dyWL2SpP46S11U8gWMSx363k3CKWMvEV8kRrucBt9MJGqK7oZRxgtdjaH9OEXoVhWrNC
         uWODWiX0IKjBDwO1ZaoS4XiKsYVUs6PvMalM2VWK2jVGTvBTKe+QjfW1eqst/NqDgNkF
         eD7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ATC1rQu5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6DPuK0bqN8C6nF/5eFpfJ1z4ELS9/7oSQ7wuNNGxuco=;
        b=CFKYqJELan6xiPTfqqsQIYtAwrNKR5kjXKDIzPVXM2Go6XYwmDjPP3TC1Pq2fsEJtk
         jZ15+fq4h4G37WeZNKR6BBzErIC9uHwFnkC0kUdGNSjZJxQz8aA6SgfebJRt35NLk/7a
         HlgEHsGjkqmbAjkTp0PMadIlipcoUQUIoyK8s3+dnTjHZ/IExdq9CReOsgUn3ul5Oo7m
         w0E1iyKFtF3HJON1YGv31SL/X3e7ZuxzderuGuTXRCxX5wPZJ3F9vL32wdx4HmEqmcgT
         vy9K1rrOZJJzzrSUurhMElHZhDnmwnR+psXj2IciEvX19EL7fk8iu38j7pjMgv3IAneq
         jrig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6DPuK0bqN8C6nF/5eFpfJ1z4ELS9/7oSQ7wuNNGxuco=;
        b=td3I/fhikdPTdkydKHuTDgHYnC/8orQXaTMK7S2hS5ZcG169CPk9a2gFwjN6jl1Oyj
         nGDXuGp8BmD9+pMqY1DFuOG5J9Gmc1kZJ11QvyJDsHGPvVRMvYkKW1j8kROnpz5WE7La
         /pNcOMNpjhwEFVJfij8RJC5L9gI6zEc4rCQgxM8n8WlVszXvfWEt2v5YAi+NuAuif0O3
         3bGQK8GxkOiD8Ze9FEfc3qo4pM+CIZ2U7zW1F0KbjSIjNIcdkkqMYC7I5xDVpIs13Okz
         5i7NThg8u4oEi5SIGAnnMKMrL/++LapJ+whdnbdPByH56g8FJBXyX7f7vfmFj1wO8AXW
         8z8g==
X-Gm-Message-State: ANhLgQ2D8rPFWIbjFu8DCJUhB/Gc6Hjx9fRBQCIKpycbU0t6bONZH5aS
	C57loimiI6oosJ8e5Rm1MiI=
X-Google-Smtp-Source: ADFU+vs3RCDlZXUpqT0jPAn86yKr59aDngoOD0iBOryYKeY4AJcmtk/MY/YTIp0FJKS8jjLxms64cg==
X-Received: by 2002:ac8:4f04:: with SMTP id b4mr4795813qte.0.1585163349838;
        Wed, 25 Mar 2020 12:09:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b7c4:: with SMTP id h187ls1380156qkf.1.gmail; Wed, 25
 Mar 2020 12:09:09 -0700 (PDT)
X-Received: by 2002:a37:9d10:: with SMTP id g16mr4621463qke.85.1585163349355;
        Wed, 25 Mar 2020 12:09:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585163349; cv=none;
        d=google.com; s=arc-20160816;
        b=Tq0nDMaqCuftp7h/NUCTGeKoT7SZgo69VNdBpmF7hKlq2i0h4Yfkhvs/2vsarW9oqY
         Lg3vtjPiAT/kGvMq0QwKKYkJq9pHvuOuN9kn+ZYbfE6113UP6TLeD7MSqcDAPy92hlqm
         RFKVFiPYR/IROftRMhhlFnEIdWemHIIsGU0CPrLul/g0EAgLbi3yPAtlOa/288LTTfdQ
         vP7VLx2apH7g11odoEJRB0GpMT6S94WvvZIXVFXkQUsmnUkL+xF06YaHIMQG8JmJbV5c
         z0lH4RiXdoJ1EqADohaDy4yMlM8len+mUhJME8e8E0NGVje3NvaqxB8Wgq06w0d9WSRK
         pW6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=j5As5vZBtX7CJrqUu+exYrozA+XktnvPoJFDmpdZJYA=;
        b=g3lUUvn6m6SF1jydxd75ni+6dpeo64u/KO7NK+zmKZ9mAGdxC2tpcCHq2mvSpnfX4y
         RrU4Cms8nUOYhxNjnT7xLI9n2kDfslALWe/imn84U8imC8kKPdoiza4y3fHCAJGOmEgv
         DAB3OYVqKc/zwGlCCYfdLA0RYbI8IoYj+NSchQKtqaIGHyKBFDkV+olmGWfbfj45QHfi
         4A4dbhMqDqu9fyMUSE4MGEzb4Pt5N+95WE1Ejjtq7EziwbNKUdG3Jr8t8pK9fV4yqzcv
         +NYH0GvDFRUVnRfKrVrcbcQinYuT/08RF0rTmgvvYBjyU/xVLyBOgfyS0bCbSxJk7R3O
         Mvtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ATC1rQu5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id x11si1330856qka.4.2020.03.25.12.09.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 12:09:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id np9so1435385pjb.4
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 12:09:09 -0700 (PDT)
X-Received: by 2002:a17:90b:230d:: with SMTP id mt13mr5312747pjb.164.1585163347953;
 Wed, 25 Mar 2020 12:09:07 -0700 (PDT)
MIME-Version: 1.0
References: <202003260212.EDh6YemF%lkp@intel.com>
In-Reply-To: <202003260212.EDh6YemF%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Mar 2020 12:08:56 -0700
Message-ID: <CAKwvOdnQY-w0mad2=D936i7BYOshH5Heo+naE4uC9MrEPC6G3w@mail.gmail.com>
Subject: Re: [linux-next:master 7819/11710] security/integrity/ima/ima_crypto.c:514:5:
 warning: stack frame size of 1152 bytes in function 'ima_calc_field_array_hash'
To: kbuild test robot <lkp@intel.com>
Cc: Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Rob Herring <robh@kernel.org>, 
	David Gibson <david@gibson.dropbear.id.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ATC1rQu5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Wed, Mar 25, 2020 at 11:37 AM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Dirk,
>
> First bad commit (maybe != root cause):
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   bfd7a248502373da8b1c8eb0e811fdb19cc3f8b6
> commit: 35595372d95c0d10784bce1aec8cc144a39eb66d [7819/11710] Remove redundant YYLOC global declaration
> config: arm-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2093fdd429d52348e08969180ac6b1e705fc4ff6)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 35595372d95c0d10784bce1aec8cc144a39eb66d
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=arm
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):

Please ignore, these warnings and the identified commit are unrelated;
we have a few -Wframe-larger-than= warnings to clean up for 32b arm.
I have a tool that parses debug info to find these:
https://github.com/ClangBuiltLinux/frame-larger-than

>
> >> security/integrity/ima/ima_crypto.c:514:5: warning: stack frame size of 1152 bytes in function 'ima_calc_field_array_hash' [-Wframe-larger-than=]
>    int ima_calc_field_array_hash(struct ima_field_data *field_data,
>        ^
>    1 warning generated.
> --
> >> sound/soc/codecs/cros_ec_codec.c:757:12: warning: stack frame size of 1152 bytes in function 'wov_hotword_model_put' [-Wframe-larger-than=]
>    static int wov_hotword_model_put(struct snd_kcontrol *kcontrol,
>               ^
>    1 warning generated.
> --
> >> drivers/staging/exfat/exfat_super.c:2072:12: warning: stack frame size of 1576 bytes in function 'exfat_readdir' [-Wframe-larger-than=]
>    static int exfat_readdir(struct file *filp, struct dir_context *ctx)
>               ^
>    1 warning generated.
> --
> >> drivers/crypto/inside-secure/safexcel_cipher.c:404:12: warning: stack frame size of 1128 bytes in function 'safexcel_aead_setkey' [-Wframe-larger-than=]
>    static int safexcel_aead_setkey(struct crypto_aead *ctfm, const u8 *key,
>               ^
>    1 warning generated.
>
> vim +/ima_calc_field_array_hash +514 security/integrity/ima/ima_crypto.c
>
> 3323eec921efd81 Mimi Zohar      2009-02-04  513
> b6f8f16f41d9286 Roberto Sassu   2013-11-08 @514  int ima_calc_field_array_hash(struct ima_field_data *field_data,
> b6f8f16f41d9286 Roberto Sassu   2013-11-08  515                               struct ima_template_desc *desc, int num_fields,
> a71dc65d30a4724 Roberto Sassu   2013-06-07  516                               struct ima_digest_data *hash)
> ea593993d361748 Dmitry Kasatkin 2013-06-07  517  {
> ea593993d361748 Dmitry Kasatkin 2013-06-07  518         struct crypto_shash *tfm;
> ea593993d361748 Dmitry Kasatkin 2013-06-07  519         int rc;
> ea593993d361748 Dmitry Kasatkin 2013-06-07  520
> ea593993d361748 Dmitry Kasatkin 2013-06-07  521         tfm = ima_alloc_tfm(hash->algo);
> ea593993d361748 Dmitry Kasatkin 2013-06-07  522         if (IS_ERR(tfm))
> ea593993d361748 Dmitry Kasatkin 2013-06-07  523                 return PTR_ERR(tfm);
> ea593993d361748 Dmitry Kasatkin 2013-06-07  524
> b6f8f16f41d9286 Roberto Sassu   2013-11-08  525         rc = ima_calc_field_array_hash_tfm(field_data, desc, num_fields,
> b6f8f16f41d9286 Roberto Sassu   2013-11-08  526                                            hash, tfm);
> ea593993d361748 Dmitry Kasatkin 2013-06-07  527
> ea593993d361748 Dmitry Kasatkin 2013-06-07  528         ima_free_tfm(tfm);
> ea593993d361748 Dmitry Kasatkin 2013-06-07  529
> ea593993d361748 Dmitry Kasatkin 2013-06-07  530         return rc;
> ea593993d361748 Dmitry Kasatkin 2013-06-07  531  }
> ea593993d361748 Dmitry Kasatkin 2013-06-07  532
>
> :::::: The code at line 514 was first introduced by commit
> :::::: b6f8f16f41d92861621b043389ef49de1c52d613 ima: do not include field length in template digest calc for ima template
>
> :::::: TO: Roberto Sassu <roberto.sassu@polito.it>
> :::::: CC: Mimi Zohar <zohar@linux.vnet.ibm.com>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003260212.EDh6YemF%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnQY-w0mad2%3DD936i7BYOshH5Heo%2BnaE4uC9MrEPC6G3w%40mail.gmail.com.
