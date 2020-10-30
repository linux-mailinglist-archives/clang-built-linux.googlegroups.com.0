Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLPC5X6AKGQES6N3EFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D30B29FAB6
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 02:49:34 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id q8sf1721479otk.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 18:49:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604022573; cv=pass;
        d=google.com; s=arc-20160816;
        b=F2uvvQSUNr2ELFCHjkZo4TFBNgK4cwEqFG6f3MJezNADB3JHID42JI9ynGqVaYhi7I
         BnfXv3WMRcLYEmT9TH5X1XTSdS9cDIseuMsd+2Dd2T+UKXooZ/EXwUHPk4FwSa/zLTWF
         4lh/BCPvzdNhaRiGZg0xfydd/kg3epahYtp6yWvGhwW2BhQPDyYCdR9HgQ/w0MJW8FcT
         b+mjFEfKZYgElHZStNyP4TBg+xcPVVd7dW/4XjaWn7UOvnWKhGMoaGqyD+9rGfj2ykI2
         ULvuQszZ60v9YcxOb3JgdHBbVwG4N9kZyJCO7NLtU2LwLU/AG2BiSLVC0fKg5ly/A6E3
         9zmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=bt/kJiq1ZCd7oesNyunGAwCFQY9nMlDYOfIdpwmQh3M=;
        b=O3BzWTvKd6FgdjLFfIOihxR0iad1c9PNA5y0lrudn3KsNHrJLWzOl+WYezHs2pZ7e1
         mwzN3eXAvYnHGEuUAZStcH/fMLoRVUHQSr/YcS5eBBeIYsSf8RGTeZB4yqSrk36o6KEs
         nSltmIiaJkLp47wC1bGNIOVJ90VlG7otRX//C+ch578Jocv6ychR++3gB3zpFmnUAHhB
         L/Q/X/0uYUmOHlng6ahZTJDEID7jgzU1AuppW5tj+3jht16RKwzbB1msb0yjt9AusmLq
         JHi0+tecyviQnN8RUWxpb6GFo5OwXLPTeOfhkK3E7akehCH1ABL5ShLz9uxUcA7ZgRCj
         MR4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LK2Grv4v;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bt/kJiq1ZCd7oesNyunGAwCFQY9nMlDYOfIdpwmQh3M=;
        b=O4b2jLF6PtmF5rrgHHVzICZt3sF8NCzyjuIHk1OPtybNSkdt4FbioMBNocg81K/2Nz
         vb/hX438VTAl5XNQ2G8OlseNN9mUSbGMG3WfXaKazPM6hw93a7z0aYBg1nHHYUCst1HH
         i+IWettGTmh7GTG/y2qUT7xVjAvC2B6AHt4836OMwrRsbgvOih4tIea5+oV8VoA36F2f
         2Xdeb3l97P5Kjn0W0vSEPhy8Ewjvk2GthNCdKk230sAnu1UgaL+RBLUjeOU67O9vAgSi
         nWYBM/QZsICtTtccCTualMrp7r5yAhpTjIF705LJjO2ZB3VZb3vxhMP6z6m+dZuc0gQ/
         gCdQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bt/kJiq1ZCd7oesNyunGAwCFQY9nMlDYOfIdpwmQh3M=;
        b=BgzQtw++CICcPo3Sdbog9/2dvYn5QjmshfAFXdBcnkwZbksWBPEOA/ro3wVikhslod
         xVo0rLtjjcgTDqNNCI6XMOsnkkvsKK14kxa6XugFoqkqg5SnS6OXpAp4gIlYRnEj84A0
         7jyxgEHfYl+NnSErglgIIwj8Rtlz3+5vxI4+32KCHkEY+YarooFwYxUmyKv0kcoNb3hz
         1mGRrfc8303IkWPlf+qegOXTlY3BlLqvyUodvYnemMe2tVoR55zFhqz3BgEwdf+WFGla
         Qi6UVAMYo4by+HaYweRocJ/b+uZBAv+EBVzbctYhfE+Miiah86xkTr1Z24q/na7jhTfy
         J0Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bt/kJiq1ZCd7oesNyunGAwCFQY9nMlDYOfIdpwmQh3M=;
        b=h5PMuZsTEvL7GNkIMVX8m949VNbfkMKQsMiMWtZ5zaYcA8pH4+5q4QBZtN6K+X2p4b
         WIiq7JvDC48y2wZAPw04zJUn9N2aaRdI4KQykAi4HGGHYjaATF3XGICvMEe2QaG/qzWH
         tQwBcXrjq7+4bPcaqeZtcdGxTerCXARq5zdttNGxY9UniASe60grab8D1wSFBiSu93SA
         MDLsJO/mVyLYo7lNkAFjdsETibOG4EB9wS9K7+OX/0qWHISNl0nmX6ODzttwBkSb6/x1
         7c9iLVWcefGax+3l2hnWNfDhK631rtG4ct3Bn9VqHAW42w5ciCcfI4rb2V7C++z415Ae
         J4Iw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530b8rEbtCVYl3/1LAZSdbYhBziSC9GnVBwvofHdFAwxB6Qm4KZ+
	BPlSie5A9GleaHVdAY0jo/Q=
X-Google-Smtp-Source: ABdhPJyu83Evr0g50VVpwSEUW3Usvi9eIRSDhgjU+owHX1lrZCgnVSvsHzJm307FF8nexG2ArOfxZw==
X-Received: by 2002:a9d:2daa:: with SMTP id g39mr5718917otb.77.1604022573257;
        Thu, 29 Oct 2020 18:49:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c0b:: with SMTP id o11ls1210899otk.2.gmail; Thu, 29 Oct
 2020 18:49:33 -0700 (PDT)
X-Received: by 2002:a9d:6e17:: with SMTP id e23mr5645380otr.296.1604022572947;
        Thu, 29 Oct 2020 18:49:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604022572; cv=none;
        d=google.com; s=arc-20160816;
        b=AN228tXFgO8ClyBmqnOwjdKYA3UntSPAv6iTWFtrnm/mDzyzygqvDGaRuF9cQiQHRu
         y6odgPPLHhh6CUMKr0r2wSfVnOF5lTGolepdnSrSr0spwbEsbhM/WS0DGIBLnYfzX4L6
         0EdaMrLJRUmFtKNaK/mKf80ZYMx8rwl56mPS9u+s8uPX39y6mKSD1HF+A3C/X+MK8y35
         j4pQR9SHCgDGiGcYqdkXdp/k8egf0l98C6Jyj/qyDwb78EyHwKxzyoaDWN/NuPHC4bT2
         IDQHXa2kvTF5wby10KHTeJrHJljOQcM3nBadaIiinSAzo723bbmLUloSBhoh0JDVwxJX
         ufSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=QOGBGZXS5bceVC+NjRYBtAxKU4B3mv4H3jVxrGPSN/g=;
        b=K4KS7k602mPWY6p22jWYZwAy8Zdsd7UjaEwezRBme+LvWWaofZqqzT+z37yO51a10p
         EG93Us4uQ8JcGvpdmDMhChWWE3jHzLN48BklmrvB9eMqD+Cgc/+p/1mBFQhWtFBd8m/U
         1iLqfWpDaW7ADMzK5WLvMosCQ3kg2ugT62zCIolfRQ6EXCJfHSjSDLls+e3ZSZ04CAQH
         oOpL64KHv1yegzXanTvz4bzBCoO+lgdi/VJjpFo+N+y7gQETY/fwwu9w7+pg5tR+iCYV
         Ou/UIU9ACb2qQo86aYyqsLJlW+wUviGjdrEYY9rtz0eCHO00n+EwkTRj/E+x2YmaxTrb
         Tt/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LK2Grv4v;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id f16si323353otc.0.2020.10.29.18.49.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 18:49:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id v18so5195539ilg.1
        for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 18:49:32 -0700 (PDT)
X-Received: by 2002:a92:8e51:: with SMTP id k17mr235521ilh.270.1604022572586;
        Thu, 29 Oct 2020 18:49:32 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id v88sm3997811ila.71.2020.10.29.18.49.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 18:49:31 -0700 (PDT)
Date: Thu, 29 Oct 2020 18:49:30 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jian Cai <jiancai@google.com>
Cc: Sasha Levin <sashal@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"# 3.4.x" <stable@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Manoj Gupta <manojgupta@google.com>,
	Luis Lozano <llozano@google.com>, Arnd Bergmann <arnd@arndb.de>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: Backport 44623b2818f4a442726639572f44fd9b6d0ef68c to kernel 5.4
Message-ID: <20201030014930.GB2519055@ubuntu-m3-large-x86>
References: <CA+SOCLLXnxcf=bTazCT1amY7B4_37HTEXL2OwHowVGCb8SLSQQ@mail.gmail.com>
 <20201029110153.GA3840801@kroah.com>
 <CAKwvOdkQ5M+ujYZgg7T80W-uNgsn_mmv8R+-15HJjPoPDpES1Q@mail.gmail.com>
 <20201029233635.GF87646@sasha-vm>
 <CAKwvOd=MLOKH-JoaiQcahz3bxXiCoH_hkfw2Q_Wu7514vP3zkg@mail.gmail.com>
 <20201030004124.GG87646@sasha-vm>
 <CA+SOCLJqVjy9QRssE9AZ1nQBwZB5mAcanpVTVOd4kO3=r5jrfA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+SOCLJqVjy9QRssE9AZ1nQBwZB5mAcanpVTVOd4kO3=r5jrfA@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LK2Grv4v;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Jian,

On Thu, Oct 29, 2020 at 06:13:07PM -0700, 'Jian Cai' via Clang Built Linux wrote:
> Thanks @Nick Desaulniers <ndesaulniers@google.com>  and @Sasha Levin
> <sashal@kernel.org> for the tips. For this particular change, it seems we
> do not need to backport all the dependencies (if they have not been merged
> into 5.4 stable). @Greg KH <gregkh@linuxfoundation.org>, please find the
> custom backport as below. It has passed all the tests on ChromeOS (
> http://crrev.com/c/2504570).
> 
> Thanks,
> Jian

The below patch won't apply because it appears to be copy pasted into
this message:

Applying: Backport 44623b2818f4a442726639572f44fd9b6d0ef68c to kernel 5.4
error: git diff header lacks filename information when removing 1 leading pathname component (line 6)
Patch failed at 0001 Backport 44623b2818f4a442726639572f44fd9b6d0ef68c to kernel 5.4
hint: Use 'git am --show-current-patch=diff' to see the failed patch
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

I would recommend resending the patch with git send-email or attaching
the patch file created by 'git format-patch -1' to a future email for
proper application.

> From 60891062750a39d8bba9710d500e381a26c11f75 Mon Sep 17 00:00:00 2001
> From: Jian Cai <jiancai@google.com>
> Date: Thu, 29 Oct 2020 17:49:39 -0700

Authorship and date should be fixed to retain the information of the
original commit.

It is trivial to just redo the cherry-pick to fix that information in
this instance but this is the command I usually run for more non-trivial
backports that I have already done:

$ git commit -s --amend -C <sha> --date "$(git show -s --format=%ai <sha>)"

This should allow you to retain the commit message of the original
message along with the author's date.

> Subject: [PATCH] crypto: x86/crc32c - fix building with clang ias
> 
> commit 44623b2818f4a442726639572f44fd9b6d0ef68c upstream
> 
> The clang integrated assembler complains about movzxw:
> 
> arch/x86/crypto/crc32c-pcl-intel-asm_64.S:173:2: error: invalid instruction
> mnemonic 'movzxw'
> 
> It seems that movzwq is the mnemonic that it expects instead,
> and this is what objdump prints when disassembling the file.
> 
> NOTE: this is a custom backport as the surrounding code has been
> changed upstream.

A note of this nature is traditionally placed after the signoffs of the
original patch like my example below:

> Fixes: 6a8ce1ef3940 ("crypto: crc32c - Optimize CRC32C calculation with
> PCLMULQDQ instruction")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
[jc: Backport to 5.4]
> Signed-off-by: Jian Cai <caij2003@gmail.com>

I usually like to notate why the patch did not apply cleanly so that it
is easier for others to audit, such as:

[jc: Fixed conflicts due to lack of 34fdce6981b969]

That is merely a suggestion, not required by any means.

Otherwise, the backport seems obvious fine to me.

Cheers,
Nathan

> ---
>  arch/x86/crypto/crc32c-pcl-intel-asm_64.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
> b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
> index d9b734d0c8cc..3c6e01520a97 100644
> --- a/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
> +++ b/arch/x86/crypto/crc32c-pcl-intel-asm_64.S
> @@ -170,7 +170,7 @@ continue_block:
> 
>   ## branch into array
>   lea jump_table(%rip), bufp
> - movzxw  (bufp, %rax, 2), len
> + movzwq  (bufp, %rax, 2), len
>   lea crc_array(%rip), bufp
>   lea     (bufp, len, 1), bufp
>   JMP_NOSPEC bufp
> -- 
> 2.29.1.341.ge80a0c044ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201030014930.GB2519055%40ubuntu-m3-large-x86.
