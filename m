Return-Path: <clang-built-linux+bncBC2ORX645YPRBLGT6LWAKGQEIGCCWLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B6DCFD7A
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Oct 2019 17:22:21 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id h188sf5188614yba.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Oct 2019 08:22:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570548140; cv=pass;
        d=google.com; s=arc-20160816;
        b=ebAc9u5nz6zxScx1tkhoP7wNpvjEfb5fMczuQs2VSuZYkbDuGhGeXfST8Xt0YqMNlJ
         yQr/wzNUSURye2Cx7qN/3ri8jATT6ppSVe8jnYSMzK5Y7l6DO0mGFVgryEfZfaX691tJ
         TmSaqCzXOJK23eIf2Pm7zHSWqj6yiFQ+MfLw61kBn08CFs9H8ZCYcB4OygRGoR/pT+Jw
         R3F6xrfdv8vYOsR8TrBAq287l/QQxn7GsKfa3tM5eEjwbza9D2jaZF2sR/iFw5k55MbD
         vcpHdkbkxgHX4q1n/Cun14vUst9XGFLYic+O0W3j7tqqiKWLlOiD0ilaG5/vOQtSwcI5
         XjHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pVHByeqCi5H3fE1p7q87ifkXe6Og4h21x6ADXOQgmgY=;
        b=lnp1VLkEzkZtoTAaSF9KKe0j6Y5QSoQ/pPEZxc2pjqLfklGyX5HIW7RN5dIJpEcdeN
         2aZI9x3c0fu+2IxVYqGQTpEU0bGooECZic6mNA8WSz6iRxt3DqWVYK6r02Ma5Dn5NUmu
         1mSt93D11/0yMhOTzVU7ErXUmGA0cRmQq7GaziCyN2mRdUG+HqPN4WokIAE2/PXJTlhc
         sZWp+VVGYGsvyflhcG4JdyAuKIGzjSpXzHYat9demkKcYISXEeSRxQF/ndGLA7uVRTYm
         Wl9kcg/iqLeF6Xr1q5f8LjwzBLaY7TfPPpN+e+L+9fNwHfIjZgFASPjBfx9GHafRHTpQ
         yoAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v8a8BLbd;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pVHByeqCi5H3fE1p7q87ifkXe6Og4h21x6ADXOQgmgY=;
        b=TWM3/+rpTesJ0nXiMQuQgx3xS3MljjL/9F1S0oLkohYLQtahEMPQ4++Gqyt6GK5xWA
         yrU2WkdveTqNWWFVgwbSYL2DNVUG+SMb1HYQhDlrIIe1dcJIUUAKa9MflQobfjblLQnD
         5IRph+cQe2RvkBHvX7zD++FmSqIE2KFnTr60XxY9eBjwPk/YzJdafQfqaiNyN0OQjIi/
         9hVdip03v/JQpOK/xyHgSho0RRoBGbvR2mQhbbpojrCB5Oj3dNQ2m/ovUn3MG6YzgRcN
         61NJyhaByyjxwIjnsgGBS+VO/8qjwIr2kmRW1/mIK2jsOkExMivpGZGq683R5vTud9DY
         OC1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pVHByeqCi5H3fE1p7q87ifkXe6Og4h21x6ADXOQgmgY=;
        b=apcsIGeCeYSiE0g6zZr1Z2VORqxyCrTLIMLWGL3UszIP4sZL4Bm+wQY2R4/CROoxqD
         UJgoPfEDJhQs6FcJTy8I8dOqFhH7enIPL0DvybXC8zLX+pSmZ/9CcvLhRl7f7wOa/qhR
         nsmoICvQX/4qPuukBslRGev8Hj5wIrQV1mYX6gl93LHtbx+7Vw4FmPGlwWySUpIC1W4f
         AKG6SH/c8z3huTMxScrWRcrMU8fdQqlrln03tiLMEXDwIzUgb7OJwn/7rVfL8GJW2DZc
         qmTBTicQpKaSro7va6t3CUHlXvm4BnWPCYL5RTSfl1xiX2BNO9vSoSlECPbbUboHLpPo
         SEMQ==
X-Gm-Message-State: APjAAAUtn6TIo2Ox8AFj5zuiK4eHoQ+nMZ0S1Z7JFUj4bTJ0G3v5FSGL
	+/HeBJsqroFgMIFmphLEpys=
X-Google-Smtp-Source: APXvYqzvjJhw6C8ApOkWTv14pnvOAXvk1RzTCTpLjKWqqRcNmED7PROf7iULoe699yAuoO/O+8FJjQ==
X-Received: by 2002:a25:3202:: with SMTP id y2mr16020880yby.282.1570548140201;
        Tue, 08 Oct 2019 08:22:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9d84:: with SMTP id v4ls631087ybp.0.gmail; Tue, 08 Oct
 2019 08:22:19 -0700 (PDT)
X-Received: by 2002:a25:77d2:: with SMTP id s201mr15574961ybc.418.1570548139848;
        Tue, 08 Oct 2019 08:22:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570548139; cv=none;
        d=google.com; s=arc-20160816;
        b=cX+zuHUBRNvVt/bEiGAdVTleA5T2ecTDBSvew1HIXQ8i4URsy2wL/+qTXE280OFQk7
         52edFk+UQq96VZQV0P1Vdl/znczUWZ5gpzpIfqgXl3AY8JEDTkRivbHW++9MLrFUIgy1
         u8oTPsAD6YFS+7ZmwRS45zAkBOx0kD4dF5WOTwg6M0jLh+HE0XyH22hdnSKSMjCdpkZh
         hdtPR/ys+lM+WQjnI3oL92cZaQplP1dyR3aZCu9B2MWh4QZcRYxeDt19XzouhyyxN3aN
         QTNmMu9CO/LCUgkc+24yVW6Y09KJ48VW4KAP0oBqIWzSuSEdEhztgclgsfu3MgeK6/wv
         o5dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OaNDrHWuf2YNQdBBfgofGBEnuYpRlrKz3qdtkWdVupc=;
        b=OWAwjt/lJ8mg6eOY56CAvunIwG/eh/7M+q8h6HiW9mOT6FMQw02lXWJH6JwCG/XYYY
         6fhKak7ng5g2fb7GwqLkscvhsyWE/Fp2rFNL5jfFhhh4/resyiP2zGDn7A/RgdJBkG07
         bo1hm8ixGwmTdvfjfrhiBvklbagpIWU/BXCHfN21FyRFOj8AqINP9vpw7OOkehVdYGzW
         OoLzXI7+UgC5Jdyr5E/tY0I0AdB4POa9Q73DDkppBRdbA1ljzwQaIYVp9tPXFqN2qh1/
         xZngIs8CFmXG/UZu8JnRjIo2Az1JW/xmYmZVrI3TVb6m5sCuc+feOpwyGhS8u65jKnzg
         0mYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v8a8BLbd;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com. [2607:f8b0:4864:20::a41])
        by gmr-mx.google.com with ESMTPS id t73si1569002ybi.4.2019.10.08.08.22.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2019 08:22:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) client-ip=2607:f8b0:4864:20::a41;
Received: by mail-vk1-xa41.google.com with SMTP id d126so3854373vkf.7
        for <clang-built-linux@googlegroups.com>; Tue, 08 Oct 2019 08:22:19 -0700 (PDT)
X-Received: by 2002:a1f:5003:: with SMTP id e3mr3693062vkb.35.1570548138747;
 Tue, 08 Oct 2019 08:22:18 -0700 (PDT)
MIME-Version: 1.0
References: <20191007201452.208067-1-samitolvanen@google.com>
 <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com>
 <CABCJKufxncBPOx6==57asbMF_On=g1sZAv+w6RnqHJFSwOSeTw@mail.gmail.com> <CAKwvOd=k5iE8L5xbxwYDF=hSftqUXDdpgKYBDBa35XOkAx3d0w@mail.gmail.com>
In-Reply-To: <CAKwvOd=k5iE8L5xbxwYDF=hSftqUXDdpgKYBDBa35XOkAx3d0w@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 8 Oct 2019 08:22:07 -0700
Message-ID: <CABCJKucPcqSS=8dP-6hOwGpKUYxOk8Q_Av83O0A2A85JKznypQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: lse: fix LSE atomics with LLVM's integrated assembler
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Andrew Murray <andrew.murray@arm.com>, Kees Cook <keescook@chromium.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=v8a8BLbd;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41
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

On Mon, Oct 7, 2019 at 2:46 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
> I'm worried that one of these might lower to LSE atomics without
> ALTERNATIVE guards by blanketing all C code with `-march=armv8-a+lse`.

True, that's a valid concern. I think adding the directive to each
assembly block is the way forward then, assuming the maintainers are
fine with that.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucPcqSS%3D8dP-6hOwGpKUYxOk8Q_Av83O0A2A85JKznypQ%40mail.gmail.com.
