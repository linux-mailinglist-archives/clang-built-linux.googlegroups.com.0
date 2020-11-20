Return-Path: <clang-built-linux+bncBC2ORX645YPRBMWM4D6QKGQEZXXM2JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E36C2BB69A
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 21:25:23 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id f66sf4950319oib.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 12:25:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605903922; cv=pass;
        d=google.com; s=arc-20160816;
        b=RlxOqt0czO5ZAqrGOWmhx01d4Z0YSdV3Gn8j5YE3M/bq06uKGtQIweUAsEGyUYrDY1
         RlRpGDKu21yQS/h8k3kothkblovzS8KUhFvMlJ3/HYKaeHO5OGo4i+dpBQPrjjG9vqZ2
         +MOFC53GkWOQpthghPggwSm5JvL9IkMV9qounbY9udGhOWS7+uKqPcTK+4dNgmaAT+Iz
         A+0t6/gzNe7VphSXGsKgYd5gy2L9IUzaeDlBoy10HL3C/DVfF4B9aNydU1VQIsn4ZmSJ
         IaSON8zkg+D9ch+9iv2+MXJGyhnmGt0qSgAH/r3REwbXmQwShDel0EENQ14NlabcjM22
         cb7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KN01XNja0yczt/lc66zNReiRf3FrwwiSriB5xjWo15A=;
        b=FMGmRlm7UmjPtYm1gTjLpX/IXSps+vyGx3yMgMzE23uR5sB5kgCYcHCXBl5PjdOIuH
         iCFLThVEHlGOcFLjGnazvqGjxNFuj37zp02vC+oh1VVLludPPo8aifO/I8kfrRPsqWPT
         vs+qWxg27lXvIhkwRQcVC0XBTTz5sgoKX9Yk0uFAQE25wLmUbuStjKDYK7goDzPRgndx
         OpoFoMxDUtAJJ9O/k/lrWtxRP69NzpBOHF8cjSFDlDfHN9jMNR5r8ae8C9OqgGRAFxQF
         +wrEnu2NVFvBfyHTSMOR0HMQMl3sGXGbv75Z2y6nda9wJULyDFP7YohnQ4RwLWiBp8z5
         vqAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nQ48JfzX;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KN01XNja0yczt/lc66zNReiRf3FrwwiSriB5xjWo15A=;
        b=SKoCkyyZyQ6I0/pNWFgibzDY4aXAabYbWSd2R91I77WcfvWepnlOPniTacVQ27qXaD
         Gu97lM3UfVuqf7hN9byeyZOlSU4n6qjplIILifcr+eAo0N/Ab53aSOPjO54/xn5LkYwz
         Xc4DpUkeRxqKvYQg4vzpLWEEr/IV20seCfuvJyjampDUJc7vz5uXjk39V3x2r0jwEo+k
         NbiWj25qSSdavN8wIuJlK6w54Txn4qVaL6894Dah/Z5VnSVJQmpR2b+c3A1VO6i1FOam
         LDp/DI6PhMw/cf9b3lxrqofsGZRivHVqi0wRaHtTRS36eDC8TxSEXIdHIMJMXslcbiXg
         6SQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KN01XNja0yczt/lc66zNReiRf3FrwwiSriB5xjWo15A=;
        b=qUOv0ps8BvVTbkbV7hppChAzY1aG48CULcxq4Zfq3mA4VQkL+SOdhmvWWl+tDGR5Ce
         S9otNqRy8MS1g3o1dy4UtSTaDK64d1089bBdQDfI5a3clRTCzpY+4mNFMwugB6dwje0j
         lYrGGcuFHqkCvJuwP01IoIJcS//owfhNALr4ekk1mWDGhLoBL20TT7qC0Nnu3VtthEZ8
         NmcwmhQxgrh7FXnK0dUE5qstTXSnchuNX0NZetBqShaGYqdpmOLL515kVgX0Ax6xjEbQ
         kppSQV9TSvcgZ8+OOTyQIwG6su1ku6kC2i2xtnRUaZmhtFdHCCJz1+FkVz/Rlu7pa1C1
         vI4w==
X-Gm-Message-State: AOAM530AcoN1fisEf7ckVDFXxbBrnBhhu9C2PJWVPni+TYn2o4pYMIK1
	voiwMk3KFzlyNJjc49iseqU=
X-Google-Smtp-Source: ABdhPJzBYJWvcLdGp75v07Ofi+36wbVIEcr1YWNxYaHidM6bR5SWlivxsOr4So2DSvCD36nomScaSQ==
X-Received: by 2002:a05:6808:2:: with SMTP id u2mr7190869oic.94.1605903922374;
        Fri, 20 Nov 2020 12:25:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e9e6:: with SMTP id w6ls498864ooc.11.gmail; Fri, 20 Nov
 2020 12:25:21 -0800 (PST)
X-Received: by 2002:a4a:e542:: with SMTP id s2mr6973611oot.80.1605903921852;
        Fri, 20 Nov 2020 12:25:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605903921; cv=none;
        d=google.com; s=arc-20160816;
        b=Bgo/onDOppRIPh6TQJDMmp4tlsFFG1R0LKqMP1izHH5UY78WSr284kHJQ01v5uQeDS
         QrBtWbsLzH/Lilow/NH9GN9j7H0yJqR7h1oZt3RtkHLdHEw27ec9sa+6NOuiOKAYwH3C
         pSG8yxznJT7/xCaGMKnNLA4/eTOewt7Jn2OdLSRIxO+y8EQGoLtzm//WYlIUlFWqfeq9
         gmm8f4ahm9sD1uKJrI+zlEtWQWV4Bp175QYoYo4uyFGrWwZmp6uwhjR6dS1NMzCpipBe
         V3JF0zd5AFjoa+RoBd0m2lwfxJSRSoHuUZx5ygk7UwR0tNviNA3rGwMYVNcLtirA1MeE
         4Bpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=984nJeLydsE3/GDg3HBO6Z6L/1lt0gFfqkKrV/lzSfk=;
        b=Vvr1dTnWY3MKkX4er4AJgitC2ZpewqGy6hDDXhg4dkzVHykeJR2ufdjJYP0bVM7TAf
         GJ6+9s+e0gf08KdYzdzoCbQqT4p+LqhOwiNxOylRkRK6gG/HGkV+XOTxSWV56pZOHipe
         tehQHrRq7aKaVAxEQuH7DRP4kTbxw/mgJeuPO4sP8yeNHaoa5shZaLZL2NmedNpaM5rp
         3mWUferFgDZC14fcx5yuYLU5l6cnGQpuUW7yt215hDWV4PZHYr6ROjpCNNNOdMu+GT7s
         qkCseDZRzKWrgAfYKfkUjfvSsieYgRp8OZDh5P9LSRcC5UssAn2+G8pqBercu11lZCpm
         NwBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nQ48JfzX;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com. [2607:f8b0:4864:20::944])
        by gmr-mx.google.com with ESMTPS id w26si257053oih.1.2020.11.20.12.25.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 12:25:21 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944 as permitted sender) client-ip=2607:f8b0:4864:20::944;
Received: by mail-ua1-x944.google.com with SMTP id h26so3523946uan.10
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 12:25:21 -0800 (PST)
X-Received: by 2002:a9f:2595:: with SMTP id 21mr10567817uaf.33.1605903921022;
 Fri, 20 Nov 2020 12:25:21 -0800 (PST)
MIME-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com> <20201120040424.a3wctajzft4ufoiw@treble>
In-Reply-To: <20201120040424.a3wctajzft4ufoiw@treble>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Nov 2020 12:25:09 -0800
Message-ID: <CABCJKueTjhjSY=oOD3bWqn7E_1X9k-MK+6r_Z35AiCKDTNK18g@mail.gmail.com>
Subject: Re: [PATCH v7 00/17] Add support for Clang LTO
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nQ48JfzX;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::944
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Nov 19, 2020 at 8:04 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Wed, Nov 18, 2020 at 02:07:14PM -0800, Sami Tolvanen wrote:
> > This patch series adds support for building the kernel with Clang's
> > Link Time Optimization (LTO). In addition to performance, the primary
> > motivation for LTO is to allow Clang's Control-Flow Integrity (CFI) to
> > be used in the kernel. Google has shipped millions of Pixel devices
> > running three major kernel versions with LTO+CFI since 2018.
> >
> > Most of the patches are build system changes for handling LLVM bitcode,
> > which Clang produces with LTO instead of ELF object files, postponing
> > ELF processing until a later stage, and ensuring initcall ordering.
> >
> > Note that v7 brings back arm64 support as Will has now staged the
> > prerequisite memory ordering patches [1], and drops x86_64 while we work
> > on fixing the remaining objtool warnings [2].
>
> Sami,
>
> Here are some patches to fix the objtool issues (other than crypto which
> I'll work on next).
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux

Thanks, Josh! I can confirm that these fix all the non-crypto objtool
warnings with LTO as well.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueTjhjSY%3DoOD3bWqn7E_1X9k-MK%2B6r_Z35AiCKDTNK18g%40mail.gmail.com.
