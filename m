Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB55LS35AKGQE4CPNUVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A575E2523CC
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 00:51:36 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id m10sf154057ild.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 15:51:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598395895; cv=pass;
        d=google.com; s=arc-20160816;
        b=sTNimA8Reb1mGYxo0OZrh1lEdnYOfOZVd/Ik8QAuEX51VbLo+mJHMQjcgXD5e0LieZ
         bg/b4LghOLgCJ08LxyFxlUyAxwnCKtdTGoNajyu52elhcpoOombdwLuw/TzX9cztUk4e
         u/Q0cUVnzt11PNWVs9bDY6//RcvlxdHjnEf8YIUOy2+ztYd19sxmwzzEW97+PuqgSu3G
         iS34LSAenGVOR+WX21/TFJHkGL6gbXK2CQghBsTQYJx6OrwfFNVzNdbRCg6WPHCQlTPh
         yB35+lTp1tSgP26dryinxyJfHzMbRYriY0GCCENi1ua4VWT/45K7RvywZSZn/3yrJYT9
         ABtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=GwDk8djPBY3Arcijyz1H+FkRKREYFqi18tGjEBukdAA=;
        b=f6KFgD8YiIq6ersYOxNM6I1ve48l5As6FoSIO2Dh+t2T0vZfWELw/NECE9Yt+rSXAP
         JTXBuDUTeZy6XxA6zvQ43oHu4RE0Z2HFgEhb8K4iCDIK9J8p1BMMFxpsfdzW/sFxyC/g
         oUveFxvRUxznKkaAEiJATlys5/k6RQCd/L3DYT/PQK5teEQAfrIDBaH5A6QxMRXxXJAO
         ksYeXbV9DSqmRYfnjacY/Ba92beSToWB3qpzPirV/Nfj6eefyxjkPapR6crpKiUzWN8y
         QSE263tdhD5xkj5drA0uUEtGHT/YTH2cFRwW60XYXxxxa3G+ToJmjilodl7DYCTJzKL1
         uGog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rchlr1Gb;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GwDk8djPBY3Arcijyz1H+FkRKREYFqi18tGjEBukdAA=;
        b=ZisxskgaXKyv/udCor7c/TOZ50oG5zhYhYBjLx+9aDPDBTxiJ5MGYkHA0K9WXfS1Wr
         ttLHClLTy5ZG+P1SKiZnDlYi/qBMzMJ396MSoS2GOgrVlT3Qgjq5b82Qg3SOUbtYYF6r
         7D+ueNakZGX5tHPSkDGbqvY6Jf2x9aVn+Fmsj3ataugwx+uOwMhYDP81woKWriwlB/wP
         d0Zr7tU2vASzNFesodYg3w6QeLh160DXCE9HdS+zV9Z58gAzMeh5mhzato8uj693lAR+
         jtOsXAIzXg54/iLCP9ZoA0LQuR+iZxh/bU3o/jX1ONY1PFEgzM1QL+9R/MljMc3e10FB
         rinw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GwDk8djPBY3Arcijyz1H+FkRKREYFqi18tGjEBukdAA=;
        b=VmWBxd1ul69vYx79uFWqkyBNR+75UlcKA2jtQOv+zmU082L8Pa3nqO9g3HmEWrVr7w
         nEsy++jVREH3EUC1/73zgwOCg6GNaTdSVSOedfBA69F8hf3ZN+K8j1/GS+E6eZNWPBkQ
         cHVnarWm2GIUr1pcwVGqx53eqDav2KJabP3rp+/tQ6RqVdID1cosjHt2cX4gCJqDqXwm
         5INbEzdOWXF+jc6MC7zl5mD/wtwJwPJibWOKY2/VaiJ0J/tdqEvzRKA4JpzJzg4NJDUH
         hxkxBxyPSltvuxOOwpygmLOZUbA7rlbDpZdagzsOpq/qR+FGR5HDFDb1S8Ug5WiQ8GBT
         /soQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GwDk8djPBY3Arcijyz1H+FkRKREYFqi18tGjEBukdAA=;
        b=pQWFmmkU3d0KUq5NERjUJearIM1bQFbjeDCX3F5rQJKrxis7DCQAgsKvfApzbX1X2i
         cBA4ugQLzUXt0iAOiIrbi99f1D72qMSMOTwoUbT9UnExQfk8ZLmIOplA+64J09eKWPiO
         w9Ij7hq5V5q4DHGNXJ9e3Th2CrkjygMgIwk84HLYQElNqNJnxsIiYHaLsVd2pDUysH/f
         P2XrnMK8WHoXtOevrI0XstRhBWtD4OpNpv7YX6AA2Fiyd1WHeBk8+NlESAZQ6N/6vSBY
         2MrQyxWRvsaOfm3+wE+Ffhme5ETVGezQW1QquiE5Sh3JcKKQoQn3yeez8E9jmZ2Ri7F0
         fXRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531BYOhx8baT9kYjGXtUviLb/XWnn1O0OiYGt8cs7cAYdlU7Fr62
	ZTFiXbLtjIrjN3KFEbCwo28=
X-Google-Smtp-Source: ABdhPJyWLuo7Ze4Be16LZ4k/Pxkblb7/CB5mpCNWOo4ZSCTYGyvg5Hmd4+BI3Wo1v2V6rzMV5QmIuA==
X-Received: by 2002:a92:5209:: with SMTP id g9mr11147436ilb.72.1598395895430;
        Tue, 25 Aug 2020 15:51:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:d90f:: with SMTP id r15ls43124ioc.8.gmail; Tue, 25 Aug
 2020 15:51:35 -0700 (PDT)
X-Received: by 2002:a5d:8b4f:: with SMTP id c15mr10694641iot.146.1598395895036;
        Tue, 25 Aug 2020 15:51:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598395895; cv=none;
        d=google.com; s=arc-20160816;
        b=EtlCeU8scBiH1B0d9ZQCvGe1aRM/k9DmOFKtfU+GYAwAmS+Z2heEpKROwY9MPTOrhd
         QL9ZczcXBNE8hdrMWOiuh2jn01nP1bQkx+jtdwx6iNlGi0VtJtTH3gO4nbhz8qHs2bNg
         pwBTOaFbCvSr0daC5UhplCbTOEJdrKlqFsqoRiUx1rbyu50CgvjTAQxsoMR71b0YpPbu
         XhINAeuVV3nAbahtoj/m5oz1AaLq9lA4zghAPyohZubWMAefiVM/ZMq4gfOW1EsiKkHp
         ClHEK/3lavfiqywKCAf1WXePKo3phXLwG4OBuliBjDlnnG8PB4k8UKz8T94D2uMgpk1C
         0SpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RRYm8K54iTM0KmZ7diI013rBcUcgsXrhjLGzNHRl7Rg=;
        b=yGPukT5ThpNSFYzz7F5hdGOM2ZY3v3egYLnqCtDg1rbNTlQm8Y0B9sLbwNIyqnNxv/
         GYdURCdBMBzx5dcfJcp269l3Cz8ZT96BJHgBDSMBv7k1W44U3suwTUBkG2ezf3zHvPTg
         9flP2l6lQhR2wJodro7cyAfbUH8Z5N8jckd2nYoN/X7YyCDjMwbkoCYNDOpDl/9RQgCn
         SDNWs1PPjwtgU9eWh0aKRTdnvMjBfi33LD4agMswofHPI1jUUGbyY64galopI9xmmIiI
         YriaN9+elnNm7NEafELPU1s2HlzhP08Knp6uKDhVBaa1QUU0UOiR0P9cUAoPwVyEIu5I
         5/OQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rchlr1Gb;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id v15si10277iow.1.2020.08.25.15.51.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 15:51:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id t23so13568qto.3
        for <clang-built-linux@googlegroups.com>; Tue, 25 Aug 2020 15:51:35 -0700 (PDT)
X-Received: by 2002:ac8:75c8:: with SMTP id z8mr11468112qtq.327.1598395894379;
        Tue, 25 Aug 2020 15:51:34 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id g13sm254959qki.62.2020.08.25.15.51.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2020 15:51:33 -0700 (PDT)
Date: Tue, 25 Aug 2020 15:51:31 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Jonathan Corbet <corbet@lwn.net>,
	Randy Dunlap <rdunlap@infradead.org>, Theodore Ts'o <tytso@mit.edu>,
	Kees Cook <keescook@chromium.org>, Will Deacon <will@kernel.org>,
	Borislav Petkov <bp@suse.de>,
	"Alexander A. Klimov" <grandmaster@al2klimov.de>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Documentation: add minimum clang/llvm version
Message-ID: <20200825225131.GA2702183@ubuntu-n2-xlarge-x86>
References: <20200825222552.3113760-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200825222552.3113760-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rchlr1Gb;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Aug 25, 2020 at 03:25:51PM -0700, Nick Desaulniers wrote:
> Based on a vote at the LLVM BoF at Plumbers 2020, we decided to start
> small, supporting just one formal upstream release of LLVM for now.
> 
> We can probably widen the support window of supported versions over
> time.  Also, note that LLVM's release process is different than GCC's.
> GCC tends to have 1 major release per year while releasing minor updates
> to the past 3 major versions.  LLVM tends to support one major release
> and one minor release every six months.
> 
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Note to reviewers: working remote, I'm having trouble testing/verifying
> that I have the RST links wired up correctly; I would appreciate it if
> someone is able to `make htmldocs` and check
> Documentation/output/process/changes.html properly links to
> Documentation/output/kbuild/llvm.html.

I ran 'make O=out htmldocs' and can confirm that the link works properly
in process/changes.html, pointing to kbuild/llvm.html.

>  Documentation/kbuild/llvm.rst     |  2 ++
>  Documentation/process/changes.rst | 10 ++++++++++
>  2 files changed, 12 insertions(+)
> 
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index 2aac50b97921..70ec6e9a183b 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -1,3 +1,5 @@
> +.. _kbuild_llvm:
> +
>  ==============================
>  Building Linux with Clang/LLVM
>  ==============================
> diff --git a/Documentation/process/changes.rst b/Documentation/process/changes.rst
> index ee741763a3fc..6c580ef9f2a3 100644
> --- a/Documentation/process/changes.rst
> +++ b/Documentation/process/changes.rst
> @@ -30,6 +30,7 @@ you probably needn't concern yourself with pcmciautils.
>          Program        Minimal version       Command to check the version
>  ====================== ===============  ========================================
>  GNU C                  4.9              gcc --version
> +Clang/LLVM (optional)  10.0.1           clang --version

Maybe it is worth making the "(optional)" a footnote like Sphinx? Seems
to just kind of stick out to me but I do not have a strong opinion
unless others do.

>  GNU make               3.81             make --version
>  binutils               2.23             ld -v
>  flex                   2.5.35           flex --version
> @@ -68,6 +69,15 @@ GCC
>  The gcc version requirements may vary depending on the type of CPU in your
>  computer.
>  
> +Clang/LLVM (optional)
> +---------------------
> +
> +The latest formal release of clang and LLVM utils (according to
> +`releases.llvm.org <https://releases.llvm.org>`_) are supported for building
> +kernels. Older releases aren't gauranteed to work, and we may drop workarounds
> +from the kernel that were used to support older versions. Please see additional
> +docs on :ref:`Building Linux with Clang/LLVM <kbuild_llvm>`.
> +

Do we maybe want to add a section for LLVM/clang in the "Getting updated
software" section? Maybe just a link to the existing section that we
have in kbuild/llvm.rst?

>  Make
>  ----
>  
> -- 
> 2.28.0.297.g1956fa8f8d-goog
> 

Regardless of the nits above:

Reviewed-and-tested-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200825225131.GA2702183%40ubuntu-n2-xlarge-x86.
