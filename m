Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLOZTDWQKGQENXLNRVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 20129D810C
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 22:31:42 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id m20sf22453119qtq.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 13:31:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571171501; cv=pass;
        d=google.com; s=arc-20160816;
        b=KNKvqYUkiWqXiQ2rcuB3UDzoAl7wtn8wzijU7s3MAVA+y6GKwZeTKcg8t9km3+hf79
         wJWnbwf1zD1XEE6oFGB9mePv8n46WkvtcFWcQ8n+I/KqrdT2xqSOJh6sqncDbxEuhqWJ
         pqRMrDjXEpaNPXo4bk+29F+lc2xViAlhU0g9uowv2Ku3nq4M5llPMbro7D6D8b2F+b1A
         53VqrtGX2sHxNNUBC1RqoAa5luJBtffgw3AYPQKqpcPFbCzN7n3Myh6eN+0jSGZIxLGn
         Ssgun9wi7TOS6UAoK0A6zO1B83zaFiQjLIIT36jkQFkSxhME1rxCnHfSlAB6/oJzg6d8
         qDqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hQvDeZTB2r9YnmGC89NQ/ulWoTYHv7ukeJMi3Y7axOs=;
        b=O6EQ1uoXGZVTEXHwcprBBcktss5en+TTMNuYosJbmsYjJJlF/RmquGP9iC7TaTm0Sk
         ONB2oMJhoWLIEJTFibhvQgD8kBAjxGk3hRoekEa0/2hRAxrzpKoSpR5SH/uPR6DjkWd2
         INdvHWr9HHzpC+Ys9R9a3fiGDY1VRN7WFq28d6R7GaBpXkZqi32DLO7qvlfea15eKZ8c
         4daHdt9CmO6xEF5uLNeaNmR4+vCaxuV9MmEJHzt8Iwm6te+uYF4Z3uwfyHX0PutKbgw1
         +OARqx5O21nEnSl0ihw4kATzzZdPCKwixxlzTiHAupFhlnQWUGZbOvxKCsxp5ajUQXW0
         trQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QbwZlkJl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hQvDeZTB2r9YnmGC89NQ/ulWoTYHv7ukeJMi3Y7axOs=;
        b=GwQSps0H7dWE9tZiaXLdgOq+C7Db9sPexENXS+rs/c9sr/n9gxkKMQlvmz4q61FII/
         VLBTQjyDi8KQFWb3LognYfeZICvzgWVRv7QVtwucGnVJ1VAwp4VUJu4hF56+A2aIDIPU
         mxxxPwWEmLBAurf4E2dExyk492Ttysb3wcKWz8H6Cx6qeMpQiGtoPF7Ha7xCu/OusGFf
         Xgzp+kpVaf16n4wnczeIIYpKb19DXMyn5u0hlzkLkr8F59/qGCPUz9t3nYek7wBhdtn/
         ioJb4kGHSeWEanNioX8ixdI+7SwYktOkbyf9IoGHLeTNZY13xqr7f8Lxv00NBSsfri0H
         ovlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hQvDeZTB2r9YnmGC89NQ/ulWoTYHv7ukeJMi3Y7axOs=;
        b=KTp9R11D6T1fwOgw0P2XV8XYU9GjIG4Hk6xFQG7nyIN3Nk8LmwCeqF9Wm3vg0EVMuP
         epHJIdb35SrWevNyEhxqFM65lYEnFfDbxoZfGb1F3JLBIKm4TS4cDCRMjNJqZcd1DUUE
         ds6IkPHVYRsreBDcD+j3aq5P1VijLG/nVHxr+OjjBRqNHlvqoTBwseXFCj0Ux2E9Oxlm
         5Wn8WXRlVxDbjvONfiVL77VFD2iC53rTpMXev38l9AnyE6hDFqFTtc9NKKuExZKzTDHD
         AZWnN0itn0B0jDZ18qIm9dTDgR/exfm5GbTxIVwC/J8uvjB0R5FNK487Z3sl42McSWxF
         5hWw==
X-Gm-Message-State: APjAAAWIWY4hqHuHEl70G4sFwA2LWxjrp6Y77ADZ3vh3px5+NamY2jSU
	HMBuGjQzbWEF5XWeFIFlUKc=
X-Google-Smtp-Source: APXvYqwncYF3m2fG7VWaeFzKngqEmvFsM452wP0eFW1LI8F8wRsDTUyXqiWuiSL2INm+reDc2woV2A==
X-Received: by 2002:ac8:1b6e:: with SMTP id p43mr39983533qtk.94.1571171501178;
        Tue, 15 Oct 2019 13:31:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:436a:: with SMTP id u10ls3422528qvt.1.gmail; Tue, 15 Oct
 2019 13:31:40 -0700 (PDT)
X-Received: by 2002:ad4:4488:: with SMTP id m8mr2560796qvt.89.1571171500851;
        Tue, 15 Oct 2019 13:31:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571171500; cv=none;
        d=google.com; s=arc-20160816;
        b=uIeGDofaZBZ6qtd6rqGSq4mqFRycstnKujN5i/Vy8/CIcLNbKfn1EYGMgzMiRCRxbV
         iGqyMy1yQR8SMkXa7Ad1FpBAZOrXld3YAcQE6jQaE4hqy8ehNjboiAhiZajOLtt4ExyL
         lfPJl6am7yKZkNdd2DCzh/fc5NqU9rdlxvWsHuJOgIjUHeDPph37zca8gAPuYuHNFh+v
         In38kZNT31ykk6aulfHIN7S3ndTD3HXjkDxHW06fdd8FyBjFaEHD50M8lsS27IqrU5/q
         YMJmrQCzFoENWKczVYzUp0qzLI8fXpMMf1HMrh0AROy3+bwqcShvSE2l9+jOPO26vSL9
         lotQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=b1Wx7T8Y9ZqViOXmHCItw7Yhq2PJK0YZHH8H14s5lUc=;
        b=UoSlKgrXNhyfjoBv6VElM4C6agNfpG9hpfct5ywC19XZiBE5UYTkRtv4o3/vI5OMUz
         IlMxiRuBYpg29kX32LK+diBT+Bf69aW79o/zEb2Xew6Gil0qpdqZRp0sWPSRuZWIW6i8
         m9EeMwIVuAKX7IcIZ7ztRigehhYHhi8HxOQQsa9Ixa2ppLNYCl113Trw7VEtIjfYROS0
         v4vZWmCGAkOCZoMyvBJz5snoyYG/AW98PEelsZxTxPbSIKbPERhwjvRdVdElbp0oT9Y3
         TC/PHOiuj8/7RSKbqPODSkhptNJ0VQltR82AoVXZMNisZsNt050zh7QNPfCENhYWAX8G
         S+kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QbwZlkJl;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id h4si892086qkm.2.2019.10.15.13.31.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2019 13:31:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id r1so11646036pgj.12
        for <clang-built-linux@googlegroups.com>; Tue, 15 Oct 2019 13:31:40 -0700 (PDT)
X-Received: by 2002:a63:5a03:: with SMTP id o3mr3628128pgb.381.1571171500038;
 Tue, 15 Oct 2019 13:31:40 -0700 (PDT)
MIME-Version: 1.0
References: <20191007211418.30321-1-samitolvanen@google.com>
 <CAKwvOdnX6O0Grth11R8JLoD9bp-BECheucZKHbiHt4=XpQferA@mail.gmail.com> <CABCJKudGtvVazLpZFdbhe9z-4mx_t16zxzkcwYbdAJriakrWqw@mail.gmail.com>
In-Reply-To: <CABCJKudGtvVazLpZFdbhe9z-4mx_t16zxzkcwYbdAJriakrWqw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Oct 2019 13:31:28 -0700
Message-ID: <CAKwvOdk_BJob16HkuKazfpX43mXnhEzBwfM21Tebf_vcbxoPoA@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix alternatives with LLVM's integrated assembler
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Marc Zyngier <maz@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QbwZlkJl;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Mon, Oct 7, 2019 at 4:47 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Mon, Oct 7, 2019 at 2:34 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > Should the definition of the ALTERNATIVE macro
> > (arch/arm64/include/asm/alternative.h#L295) also be updated in this
> > patch to not pass `1` as the final parameter?
>
> No, that's the default value for cfg in case the caller omits the
> parameter, and it's still needed.
>
> > I get one error on linux-next that looks related:
> > $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang
> > -j71 arch/arm64/kvm/
> > ...
>
> This patch only touches the inline assembly version (i.e. when
> compiling without -no-integrated-as), while with AS=clang you are
> using clang also for stand-alone assembly code. I believe some
> additional work is needed before we can do that.

Got it, thanks.
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

>
> > arch/arm64/kvm/hyp/entry.S:109:87: error: too many positional arguments
> >  alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) |
> > ((!!1) << 8)), 4, 1
> >
> >                ^
> >
> > Since __ALTERNATIVE_CFG now takes one less arg, with your patch?
>
> __ALTERNATIVE_CFG (with two underscores) is only defined for C code,
> and this patch doesn't change the definition of _ALTERNATIVE_CFG (with
> one underscore) that's used for stand-alone assembly.
>
> Sami



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk_BJob16HkuKazfpX43mXnhEzBwfM21Tebf_vcbxoPoA%40mail.gmail.com.
