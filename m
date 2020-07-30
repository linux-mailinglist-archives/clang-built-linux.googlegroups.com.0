Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBQHVRP4QKGQEBDGYZCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id E752D23372A
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 18:52:17 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id q28sf2675464oij.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 09:52:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596127937; cv=pass;
        d=google.com; s=arc-20160816;
        b=FT3jAOcqrtO9RaJQtrZhlpa9OvYssg5xyJyonWeiwzz2wnGX/wt7l1dglS2qVoM0Fm
         OXb00k8FBUGmO9pKgXu9UpjMd44FToVMVGB2n523+AIija1D5ifRNb2Lc0g34d0o0Uy0
         /Xd5m2PDFFujhbc/n1XzgHYmHn30zrHJmdKeLLYMmwmPCrlKJJquL4iEXvObgAxxeIOc
         4zbhlAyDitzm2C1LRrrMPjRYdP8dF0StOeGuQ/fKeVVvrnGt0ASoGqPYY7eeSjAVaSSk
         O8hw/f/jHvTpuzS5gBrORmhoUlqR0PbfTQzvcs95iYK5g1RyQFRznYUUpVVfdkft7p5t
         YVfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HssF+H+5II5jbygErpQGAAcyn7c8VVrqrLieqxJOT7M=;
        b=x1reZCJnkMsgkbqOd0Vo2BCmLD1y9+byL5SbYq0Eg8+URVIjpNdsyMP9OCGcK6adRe
         56komSEmlIUCY/tW/36IH23u8+HU7g5A5BY9nDtZhvgsD30CHUhwga5zcfqex3vRJgDB
         JN3TOCH+oE9tUoeq58E+GtbS7cz1+45JkN58FoRiNauCjbwlAtXyiZLN3ESPMTn0meUw
         5VY6zs4A1ooCWcJGvVxf9+Oc2DVCcJLkvQlwqhIi4rdL7tqCxpAKtqts6lc/fcoXKVp9
         JQzCrXk5DgRFMP+npsEB/Zf7qyULDuJ+ZNbLZSizD4JLBpNWbs9b5W+6MQqgBus8tLmo
         LHnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SDxtCfue;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HssF+H+5II5jbygErpQGAAcyn7c8VVrqrLieqxJOT7M=;
        b=MF/63WvxpdW7kcZLbPwjzJeV7eky5F4vODofNJZL4uCkyOZNmcieQH/xr3xP/sfb5l
         +jcIiNJOTLp6kDu1ILIqG0vqNbJdaMR3zTrEwIl9yQ+VriO9E7bR8NYfxK27Xg+dXmHo
         ee2H++R8w0YS997NzaT6po9Hb5cROkJJJJzddQVVXqZCjwX/LH35vDldMUzvFpImJzXN
         27+Qwli4lJnTTynJR6PUfAZoj6VQb9W52DPMBAmz+8DNilqLvLa77Y3mcVWzxZoNIUch
         /XXCXC/AT1u57gbE3JUpODH5XOPioGppTIUXP00LHjItJ1gpNMNcKhmQ3j6nrkZsOZqp
         fjNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HssF+H+5II5jbygErpQGAAcyn7c8VVrqrLieqxJOT7M=;
        b=k6Abq24kUNvx01/OGHLSp8qsORB4+cESElic4JyDj8gZlt4rSx5OqkcGVZFd2/P83k
         yFTxwNxNVFxhy3XVNcXKuKzaqA/8GEuAumoVHbJZjVkv6HQR3cB7MFWWmme+P+CBYdA6
         LxFKfzRrZZ/pwNHxQXLXTGKNFAYUCPe/ZAyJvvGem6opgSjVh4xe8dIMQRcG5bQoTwFW
         UnOYPX1+z4hk7azSxujywAPMqXf1uhzObGSbRxzODR+qYYgOWn6gSYyiNgNVnm6hW0Zq
         9uxQOe8fNIgoPkrd8bmlp0L4ZU2UXS+zFpVPG/Qg8mMJlZpURtETAlCqG7Dsr9eCR8vq
         kB2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53192j9Tvyv2bu32U+hVHKuHVku+9DKrAMKrpFCEirnqeK2iu6Vj
	8ryswNeOaebzloCQ6C4ObRs=
X-Google-Smtp-Source: ABdhPJxckxit6TpDp3Wi4UQCQXOJcH5zMDG1h5agE+Ebby/oLWKDvEU92CEkN0WdklH7qQg63/MNsA==
X-Received: by 2002:a9d:801:: with SMTP id 1mr3091295oty.345.1596127936858;
        Thu, 30 Jul 2020 09:52:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:fc57:: with SMTP id a84ls1293049oii.2.gmail; Thu, 30 Jul
 2020 09:52:16 -0700 (PDT)
X-Received: by 2002:a05:6808:1ca:: with SMTP id x10mr2118834oic.166.1596127936593;
        Thu, 30 Jul 2020 09:52:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596127936; cv=none;
        d=google.com; s=arc-20160816;
        b=Xz1uU6aq3bfGGcIXf1n3+i6sLnutKMQi/TY4nVKqxYVhqQI1kvzgNF+EnqJtsre+FQ
         oe+32x/geUTKklhJdKtDucza0wtK03+MjWYcKA07FTjzJyoIGe0ennK9+/6mD1BMcQOo
         egUG5jVM9My5jb7oX2EMnRGihEPxl8N6eklZjRl6taU9R8an+GuyHioRmimA6QJvH0h8
         Hg3it3HsQ84VNQ5aVg5KrpBiBG6ozlOOjgOGwEXWsPTwbufZdH/n8HLGz8JNJl6tT2c4
         Z/cwSaOomzfLC+KmtvS/n7AOZbiY9p1B8Y8WQMX5aGL587LtV7wmMSPFqtcJUJWGyxTc
         8Y/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=af2fVlFhVdNkeE8czkrRtD8Cny0reRnuNfLSV/Vazhs=;
        b=Q5qtD3V3AnWA5YLFp2BMx2TUuelVTvkjuWa1PRUM6s5FvVorsn9havuK/nxZ0/xc2F
         IOKXmUWsM0hYqD8cEPuBCR/6njKBL2Tvk6QqkXu98wzA89CU0ktZ3Y4HPViTC/3hx9hj
         n71KbBTneY8TAT1RlW0YdToPU0mhKVdc/XOkxHmAZ8VHH0cdAUbypE5o4s6a/kTXvqwn
         xrWmB4l0vvdEgqdBRf2RzmS1EMt1xpqKDbSHIJuhhqPj5f1kZLem/s3KCcMeZ9X2roPj
         MO52yAa1aPuA/UKfkvz9lhK1n2ZZ4uSZr2sheRwdEyua0GxlR/FRSjtb4GmIWXPkgwHX
         E4aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SDxtCfue;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i189si386987oib.0.2020.07.30.09.52.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jul 2020 09:52:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1AAE1208A9;
	Thu, 30 Jul 2020 16:52:13 +0000 (UTC)
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Sami Tolvanen <samitolvanen@google.com>
Cc: kernel-team@android.com,
	Will Deacon <will@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Kees Cook <keescook@chromium.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64/alternatives: move length validation inside the subsection
Date: Thu, 30 Jul 2020 17:52:08 +0100
Message-Id: <159612421491.1041762.16502562347274669841.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730153701.3892953-1-samitolvanen@google.com>
References: <20200729215152.662225-1-samitolvanen@google.com> <20200730153701.3892953-1-samitolvanen@google.com>
MIME-Version: 1.0
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SDxtCfue;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

On Thu, 30 Jul 2020 08:37:01 -0700, Sami Tolvanen wrote:
> Commit f7b93d42945c ("arm64/alternatives: use subsections for replacement
> sequences") breaks LLVM's integrated assembler, because due to its
> one-pass design, it cannot compute instruction sequence lengths before the
> layout for the subsection has been finalized. This change fixes the build
> by moving the .org directives inside the subsection, so they are processed
> after the subsection layout is known.

Applied to arm64 (for-next/fixes), thanks!

[1/1] arm64/alternatives: move length validation inside the subsection
      https://git.kernel.org/arm64/c/966a0acce2fc

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159612421491.1041762.16502562347274669841.b4-ty%40kernel.org.
