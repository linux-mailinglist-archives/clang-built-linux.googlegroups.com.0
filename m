Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPEVZ77AKGQEP7USOIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2B52D7F79
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 20:38:38 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id j5sf7111080qvu.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 11:38:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607715516; cv=pass;
        d=google.com; s=arc-20160816;
        b=ICb5dHk740pqYLUc+oOe2DQkAI+D50Qi0d677smT3Mqw1mcD+n5j0jkIe6bjvGYlG6
         2+mLh6swXnrwHMh02b4YIMerOZJjzhPkuYkmkC3pwQ9X2h4prumApfIWimsC0Gs7UpvB
         sFjuqSZuqL3t66tyPdFlUh308tXimw/rUxz6+keMU+3AtaiEbZ+p0e5AZmVP+SI+pTF5
         V5xR+YE+RXJmCqK9bqSa2zOmLb+iwJBOKeH62lGYXdRdgNdMygeg4ID3+txqDGlVtQ9K
         Bafb3DZGzSVBSWU3XIUrp6cFH2g/F+cX01I/lD+kAG0kfYks7B/nBF+tz3Bk5I4aGZfD
         ou8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=iSawOkBBOZF5mq3phjHYBxLBMGNBdyjoo1e/hJGiudk=;
        b=l3c5enJfae97jMFoIoc6LKqJhHAJIMAO277FO9hb61o9Hu52uPY7PPZB4EnJcIeS+L
         FEci4qCx3BAYZpeVpzzvsWfO/yCp7r65Sq23tln77lv/9sbeaOuk2u4a/8cYNCGt1cU+
         ba+X3QRZkRQXtSS/tYzQ6u8MpqiCtx68K8XtY7k2DBCdJbw+WaDdWEFHwNZhvygjK2oI
         cQncmquzDo/Dc81YnaVTHzRvgrjVQYgcKmbdX09SRBbDKjuo0uTnSdZxstJYssdebmiK
         gS8HSUR+ZjE81MjfPNP8Go8XWneUJbeysmtZwAZm9DSPR7WXVlUkIFxQPPsWnsRTrmFi
         nxXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FEC9uEup;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iSawOkBBOZF5mq3phjHYBxLBMGNBdyjoo1e/hJGiudk=;
        b=iEpZWnyfYj224kTlEMGBq13YVxAMVhjNf11+ZgMxDhFr0uXULGjISprqz3JZWHOiUL
         GMyrKvLcHq+XNbwScOM2NfvefYSpmfiE0CBFt2VNCgVXwrEdadPBJIKbtaywpAo89Io4
         d7gF631GwrXuCOcU7BFbxvcB4L9vciRAPtfFjxJepGphRR1WT1qY0/Lx2Hi3WbztdFpC
         X7BOy/Wdr3/3m/TV/wG0NYr2WTLc2YcelM3GBnRhPRCo598Bvf4P2qW7cZfWSdFfKMUC
         kLddlLGRdm8KRlS3chXZGyHDmF6sXaIbDmRIJtCY4ZHeyGtONcdZWc25X7e1jQl3Hv/C
         G7kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iSawOkBBOZF5mq3phjHYBxLBMGNBdyjoo1e/hJGiudk=;
        b=dZBnxNIKpshbNHzhIZVOrY/ckvndeUbkTAgRcIAlM4ttYyMuo687FVyr6f6D/iuMlg
         4WQ5yVLbRSneFLlESBl0HcBxQfRUDBNMMWt7ROMMrPyC48uwkzCrEwqkAxf6Sl7k1KUr
         YRhyUtBmEUp8BAEqm000L4Yb2tv63NZRDZS196zZdG8MjWGQyF/Sh4SkeSRiPi+69fMk
         x+Y0D9maZYIUxzJBjPf9v0Y18zxSIYL4ugYz/gk5AZ4BtASu7jsyZj3ciIpFh+iNeJyP
         XaS92Bt1otw2UgdMQPwWpvsmHxNZj6xxl01qwCqKasm8cSFOMuAxpBCF2t35bGIhX5Yq
         LGgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ErY8+REGykaF53WkxXJIaqzBF65TjAEoONy1e/FKTAh3HmQwD
	82rlEdiKOa/BuZDxw2S5uRo=
X-Google-Smtp-Source: ABdhPJylAez3oj1ZZObB+LVDvcnBkpkBjkFk3dq2oO34D3GUu2WkNZ6RcGv/Qot/95mXuIeH3QOFjg==
X-Received: by 2002:ac8:3656:: with SMTP id n22mr17927751qtb.242.1607715516706;
        Fri, 11 Dec 2020 11:38:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:346:: with SMTP id r6ls2348780qtw.8.gmail; Fri, 11
 Dec 2020 11:38:36 -0800 (PST)
X-Received: by 2002:a05:622a:285:: with SMTP id z5mr17344938qtw.355.1607715516299;
        Fri, 11 Dec 2020 11:38:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607715516; cv=none;
        d=google.com; s=arc-20160816;
        b=aL9c7HlEm8pThbjU8ZTz/JcCvq2nWoE+D5e+AbRpusrwAPQ5Ah/uSqu+CkZEgLPiJJ
         SegkJ2zdcGjhqbDMp8cT5QaE6mp624l+BfIuYiObvkVlZp9lMDvpLwmaNlxijSWm6qA7
         m7W3JdLV6Kl1gGASH+uMhhNkiUumIp7Qncz4VElMp+FtUXyFNw8UvBNn9myZH2zB6VKd
         dfaoQSI/9jobI31iVeJVCwgs6QeDjGrolDx2lStlNkUiprz+32YStFvGKCsIZFdZ9mg3
         QffHTo3fUaSSoeNHwGXWEVzrTfu7Dpg3M8X6n6S7xSbJGwkhQ5lVBMHCM29pxmlxAcQc
         PTcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VNfUmoHugTzMNVPlGX+wnRh5Cf/stQAzYSuLpPo56Do=;
        b=LqdczlCI5wykZ6DQziWQHfvGZ2IiVrkdfbqGrum5BZ8tZtUpO8KH5I15kStIsVrSIP
         uw00e8JzXH8BU25IxL74MkDgIvyppvsz9OREGgvA7NALghQVg9EN+h8iWUnPQ91qpkKv
         zvGhEjLsDJfa2gFVZ6zeNzyfokL+kjQp3c1bWKXgxeWe401dr1UBoc4eKPn1sapn/iIp
         dIFGramiBAmVj+M0LIm23mU3BaGJEHWPFyXChVnzXysx4tUncYVPStZxpqG5TMtwZ8jy
         bRnd3bnHIJNhVVyAQBF7IJnmDBNL88lZcs0w6iYY6yMMzQtIATNAfNi/OVs3e3nmz3RO
         wIJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=FEC9uEup;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id f23si424304qta.2.2020.12.11.11.38.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 11:38:36 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id n1so5099542pge.8
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 11:38:36 -0800 (PST)
X-Received: by 2002:a63:f456:: with SMTP id p22mr13270729pgk.360.1607715515417;
        Fri, 11 Dec 2020 11:38:35 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h11sm11456024pjg.46.2020.12.11.11.38.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 11:38:34 -0800 (PST)
Date: Fri, 11 Dec 2020 11:38:33 -0800
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v9 00/16] Add support for Clang LTO
Message-ID: <202012111134.209A6D311@keescook>
References: <20201211184633.3213045-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201211184633.3213045-1-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=FEC9uEup;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Dec 11, 2020 at 10:46:17AM -0800, Sami Tolvanen wrote:
> This patch series adds support for building the kernel with Clang's
> Link Time Optimization (LTO). In addition to performance, the primary
> motivation for LTO is to allow Clang's Control-Flow Integrity (CFI)
> to be used in the kernel. Google has shipped millions of Pixel
> devices running three major kernel versions with LTO+CFI since 2018.
> 
> Most of the patches are build system changes for handling LLVM
> bitcode, which Clang produces with LTO instead of ELF object files,
> postponing ELF processing until a later stage, and ensuring initcall
> ordering.
> 
> Note that arm64 support depends on Will's memory ordering patches
> [1]. I will post x86_64 patches separately after we have fixed the
> remaining objtool warnings [2][3].
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/lto
> [2] https://lore.kernel.org/lkml/20201120040424.a3wctajzft4ufoiw@treble/
> [3] https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git/log/?h=objtool-vmlinux
> 
> You can also pull this series from
> 
>   https://github.com/samitolvanen/linux.git lto-v9
> 
> ---
> Changes in v9:
> 
>   - Added HAS_LTO_CLANG dependencies to LLVM=1 and LLVM_IAS=1 to avoid
>     issues with mismatched toolchains.
> 
>   - Dropped the .mod patch as Masahiro landed a better solution to
>     the split line issue in commit 7d32358be8ac ("kbuild: avoid split
>     lines in .mod files").
> 
>   - Updated CC_FLAGS_LTO to use -fvisibility=hidden to avoid weak symbol
>     visibility issues with ThinLTO on x86.
> 
>   - Changed LTO_CLANG_FULL to depend on !COMPILE_TEST to prevent
>     timeouts in automated testing.
> 
>   - Added a dependency to CPU_LITTLE_ENDIAN to ARCH_SUPPORTS_LTO_CLANG
>     in arch/arm64/Kconfig.
> 
>   - Added a default symbol list to fix an issue with TRIM_UNUSED_KSYMS.

This continues to look good to me. I'd like to see it in -next ASAP so
we can continue to find any little needed tweaks. Since it works in the
general case, we can add on top of this series once it's in -next.

Masahiro, let me know if you'd rather I not carry this in -next. AFAICT,
the bulk of the changes in the build system continue to be confined to
the LTO-only cases, so it should not be disruptive to anyone doing
non-LTO builds.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012111134.209A6D311%40keescook.
