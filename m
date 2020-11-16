Return-Path: <clang-built-linux+bncBDRZHGH43YJRBC6EZH6QKGQEUUPDN7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3DD2B42C7
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 12:27:08 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id q8sf7283807otk.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 03:27:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605526027; cv=pass;
        d=google.com; s=arc-20160816;
        b=PnjY+1CUIl9H17gpR78B+SqwZt/ErO79HDXd3pcaPbIdr8f/fLxVxZ/OYqyhfXfK7l
         fNfEEm+0W4uIPv0XR9/auT01biImoXLGP7zYOG9kEbh1ARvYoJUxBY2cK0jhr7ZELZsK
         TFK1wWDVe/1DtWc6lYFN9AV7P9WzZzXwQ0QrFEMhcDor3AMrgA7RH2o/yBL5H4OTY9rZ
         VMa2mDJnHbo4l0sUvlWtIhpStRyQbU/KYmKNydfSzSyOs40NLVv1PsiRv2Pu7COy6B2k
         J2BMYDOm2BQCGBf40mypHnpMgSdLLFBkJCyHIsvuwdQHInXYkX2u2YUY7fIFswPWliaw
         ESww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=4ZI3umfdmUIZym5xHR7DAy+kSUiHiaX/nshA4RdCQgY=;
        b=WHJBrn4Ys9dq5sjNR/RtxgHUqN12qn7Y1oqEACU8rMsdLQuLmQVkyFaq12398j1vYN
         3f33A8FtYMYF+ZjbvBA1fuw+hFYQQq9nLfSXB2ZpGqA3Bkc+pOX0cYe/K+PerRQrxuCS
         4aBeiBdryk6ei5q2mSFBQXaw8rQXBfbifDb2wtZBqfvmA8SeTrZYQ7jUc/vj7bapcN4F
         3KcJQS3Bkyypvh9A6CQYnxRirBz8B7nYzfsNvxhsPDXs5rRpyMgtuvaMdtjFfZ8YuykP
         2NDgDEBKXoT8SaCKrTM1Kch+eXwwm2RMwqoum83RdxnGxRJfQcdmfjMX/oVpCdCL+p2x
         bj+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QnkJ2u35;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4ZI3umfdmUIZym5xHR7DAy+kSUiHiaX/nshA4RdCQgY=;
        b=hQYnyCwqwh6Cf64zyVxdvcE8P4yWDcBevN4+myXnuMCfx8/AjRGU7fCm27ce3imzLr
         o3WXkUEX2h/oCRYupmtWUzWTxjd89dNnNVakFDIPWxdERXfve1D59ysxISLrB3rC3Uov
         q1q9CkMcCsLmxjlySykQ7EKskGHkBhu4xgQM4W72FVs5gKYPN16oU3igW25Q1oDyTos/
         aQ1s6WcTICVUohMqO+0chtwaxzh6bXUMqj07CgsgKcri4RDECqLRfulhVgggtbDCDBJj
         MzpA8HS7Hr2wGNLfVqggaIWC6kzwkbnDjiYg/35OoFsGa7Ec+rCZfhSXK8uAeDh9m6wu
         UZuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4ZI3umfdmUIZym5xHR7DAy+kSUiHiaX/nshA4RdCQgY=;
        b=FoJYsTL2Gw6B39OdoFk+N2WRUSIFeraYPjZcTDWMKNjO7OWeboc8YybydC5xIbBwiU
         RCfw6wrWjcRVNGT6Egl4EK8THydNQvku2+NPatlUqjNCaX0uwQWBI/MQWwffYMNRhERW
         WjfWPMSHfz/c/jDD8LdhKeZNYoO0+6jR/IW+EiLfcs1g/EdEHTczVnsyDl2ySfIuePAH
         U7cifejZJunCW107asrKweDkf+g4dmZSfSnqC7XvbNF0lbw9IxKdiTMCATBoo5pXKU/3
         CDjAI7DsntV4unR3vFh1LnNOUFyZvvzIu1h6qDAZteD2XOcm0PVfj0Lg+dOvkL+SEKzr
         RusA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4ZI3umfdmUIZym5xHR7DAy+kSUiHiaX/nshA4RdCQgY=;
        b=ghA1N++gFh3Wi3eGtKOE9Bhw3715MKDxSePq2u8wnNHWGUBTW8+mhBsALzxUX+gYVY
         U/7tT9Z7hJsFUAsiXkGDLdmeIcIyXn6PWaiFA2rctA1y725VZS9kTkzB8Orz5Kz2xQXj
         rWwA7UR5CXsFRFnKxHyqGOjrQ/HZE439iWEAVHkIGfPAdqrHRuU2mrHMMUdpIjneEnlf
         +L+wwoIzrRcpNIYJ8O6z2KnrbGskC3mrFf7HxWwxmUJ2qM5RxLKdj+usXlKu3g0LAIPn
         jX28I6qgbT1UvFv1S7g0Y+3/pAiPNdKpXUn6EQeimwybQn6r1YFIIqpEerJCNn0SY+ay
         WQ5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531vwer8CtqRhtwpCnoFMyEcL6Dztl7dXkct5Nu6U1GrwhKVve+a
	a8Wt2y+raT5HCMVYCTdD+DU=
X-Google-Smtp-Source: ABdhPJxg8ZbKTG5Oo4oGGZloeDyY2vdClU6TizZaR0TT7sP2vseL6I4WkKi35oQx150Q+ltL+Yx18A==
X-Received: by 2002:a05:6830:4b2:: with SMTP id l18mr9580637otd.246.1605526027335;
        Mon, 16 Nov 2020 03:27:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7e9a:: with SMTP id m26ls3178277otp.7.gmail; Mon, 16 Nov
 2020 03:27:07 -0800 (PST)
X-Received: by 2002:a9d:754a:: with SMTP id b10mr4051425otl.140.1605526026973;
        Mon, 16 Nov 2020 03:27:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605526026; cv=none;
        d=google.com; s=arc-20160816;
        b=0Xm1Lt32dR6Ugp6KZjpjfLphBPcr5aQPlW8sTQAecdK5NjIfUohpB1wxziJS8eeykP
         2c9+b9Yq3bz2WcAmtXLKH7NTRTXDO3NvaxP+1G+70CVKg6qVVSzaCfJIUkqn4vDXfXMQ
         WHSlAvkOEWb3yOu4bz81PkCODuF7xznNUEFeO8RUYXegdsAL37Fyn5MdSFPL+kHvpqhl
         TI9J6EZCscoGPEfbfDz/txaeY+zXXjFLWig2/rovsDhw7v0Ba0DIiujlhcdqxc5wiMxQ
         z7nZRg/JNdWC4gNSw2ETn0Z+HMiI3kRWzChRmx/VWHyJ8WMH6sqJC3FrAQ1c2FHHWfaZ
         7cOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RA52pn8MaZH7xZTx5g2jPIp9RO4lpE9y7bIaH6ByAsk=;
        b=z2aVl3bwjWwOIgJc/jdVYHW/+vtETCCfFfSYQuOuDHFq4bG7xPZjTxteCZIW8P0PuE
         0YuFAXRZpMqWslSZbHdgRhO4qNh/I6zxO6U4QhpV/qrJgpJbWAGPNwjqVg2Sy6huWlRF
         Y/W2FgfaXyrz+DfsEuplsrMQx22uOa146pW8kGBNQGaxhirltFmMRG+vcv1+dM2FY8GI
         MHf2d8G3PTLq4b8GU5necA7ryFz18rbzsUqjaztVm0bP4wJ8zCrgAFdNPXIi5NhFxI9c
         9J0MZHGNWGWR/XCaHM1x+gHJrJS2oulht4G8wTMwIZ+tUGMQQuPT+Hv/OqC1cTyp6NGI
         O8NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QnkJ2u35;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com. [2607:f8b0:4864:20::b41])
        by gmr-mx.google.com with ESMTPS id i23si1117198oto.5.2020.11.16.03.27.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 03:27:06 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) client-ip=2607:f8b0:4864:20::b41;
Received: by mail-yb1-xb41.google.com with SMTP id v92so15337294ybi.4
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 03:27:06 -0800 (PST)
X-Received: by 2002:a25:2e0d:: with SMTP id u13mr11652278ybu.247.1605526026684;
 Mon, 16 Nov 2020 03:27:06 -0800 (PST)
MIME-Version: 1.0
References: <20201116043532.4032932-1-ndesaulniers@google.com> <20201116043532.4032932-3-ndesaulniers@google.com>
In-Reply-To: <20201116043532.4032932-3-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 16 Nov 2020 12:26:55 +0100
Message-ID: <CANiq72=1qmMYa9kejXqCDyjTU1RSgKc1VC-C4AdFFqQkwFVLog@mail.gmail.com>
Subject: Re: [PATCH 2/3] Revert "lib: Revert use of fallthrough pseudo-keyword
 in lib/"
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Gustavo A . R . Silva" <gustavoars@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QnkJ2u35;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Mon, Nov 16, 2020 at 5:35 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> This reverts commit 6a9dc5fd6170 ("lib: Revert use of fallthrough
> pseudo-keyword in lib/")
>
> Now that we can build arch/powerpc/boot/ free of -Wimplicit-fallthrough,
> re-enable these fixes for lib/.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/236
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Looks fine on visual inspection:

Reviewed-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3D1qmMYa9kejXqCDyjTU1RSgKc1VC-C4AdFFqQkwFVLog%40mail.gmail.com.
