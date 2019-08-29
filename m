Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB5FKT3VQKGQE4DDY45Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDECA1450
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 11:05:57 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id u21sf1482425wml.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 02:05:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567069557; cv=pass;
        d=google.com; s=arc-20160816;
        b=OUiZCTVzxrxT3M4EoIQCKFNEMVucz7J254YffDhS3Kw+stQrxv7sUhOwkVs7XaM5H3
         fvLgbpN8I0Yg8/gJ8yhCT0Ea495hpW6qrzP8faCysP9AryjhXJfW0GPORoJ1Dw9reAVk
         /JMrugDqcK4ZERoeTHUTx4BYKhvhvIyZZjdBEaq5Z8TlZJT1yMi9XJiNe8kgAvcwYknW
         NEjJPS/DYcjuQ3mf+3TpvunFETZ9vkoDXHXao0QBIMHf40W8ajEi/rc8rmDm41ddFf6T
         NaT91241bgm6cTgQ3Pf5O86hI3OqgpLiaJuJMUaxrgR2BLD+JjvzUe+yKs4jOduik9s4
         2xfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Z5DYgPS/8yUbyqsGVu7zm+knSjoQHK9dEr9nsJCMXHA=;
        b=wvgn5nTqaB7moW/McgX1Fqc8bajEx4xBQSEAztllEtMUo6Lmu6YLX2z7C/O+O80HXP
         zeRABZJcWlGv8/lvjyJJTLhJoMD+Llu+o9vzs21njdOZ2d5pRO3gnU2YP7Nub4bBvDBB
         I73r8KbmI1jwEvMqn3YrlIFzszXM0AahHULmazaf7SariGyncHikFB84cXFnKODutth1
         ovcHNVw2vdMs7Ii51jYDIM0TfreQ/2nhC6b4F9WtihtuikU+kaJy7xGnVoNKPaFG16mZ
         7tabRPSu4DIeaGM+pymgj6MLzZlPwOwtulkn2OL6LVLdLFWLVPQ6ffnmDTjhLw2bqmBI
         kLpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nf6IKzbN;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z5DYgPS/8yUbyqsGVu7zm+knSjoQHK9dEr9nsJCMXHA=;
        b=rRSv1vHYyBHZBlZMfaOGyz1oWg+2eWZFD1OmH+/lkwtWDSDlTHJ1Z40diGlsX8o+aN
         8KtrhtX45MS9i/G0gtp5iea3sMgP+awCMFMue74k4bztSL5HHd18OYmXl5oAjVGGpDIE
         N1LLivS9FXi0Wsl6uiJtlLssQVJORAlh9mvzKrv4cxS+DAqOQD6CsfAAwlLbkkBidGin
         RO/WtnKpOAY7nbWXsBxgPxEQy+VkRf937ZwM5pyQFD9OnZcsF1hiNwGdjCo7E9HioB8F
         ueA9f2tNpsCSWWh3+ZjbwmWy1j0FcByjq4J16L2cYN2tRvEbDzJFg8SuP+xsbZ8rKBeZ
         ymuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z5DYgPS/8yUbyqsGVu7zm+knSjoQHK9dEr9nsJCMXHA=;
        b=UHRKpOG/jqch9U28mBTnlozD/Jwkrzsb0m5ksvv7UMDWBfPqrYxMSF61psY/Ryr4++
         ryiOruvkG9Hzp30ZFlaefu3fAG58qbbMvEgB1iBIc6HtL+uLNg37HCPjzvI6LjQ5Fb1z
         PjmEZMyqs9tBJeM8WPwslB3TmdgqOPRObxmMkjIKPdrYp5TsDJ3b4blZsNj7IKMVs/lN
         6geWqG29AnF1WfOeKeEqtHUeA6HKGl7sQuYEYMN2CEtjivq8wevZBGLHg5VKSCDg8lN7
         yxGjnJZfBXypxlZDTEYLk2Dur34rinuBEQY/B84KSdEautdMxdyD6t5dtIOmDoBH+zxs
         fBtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z5DYgPS/8yUbyqsGVu7zm+knSjoQHK9dEr9nsJCMXHA=;
        b=MOeODxZwcQCtC4j4NRP8VpcRPtlZjul4OS8hXNJgjcS5AHeJgCYtrONLpkEDdOujFi
         nHnDlWzJ7ljz9a6VUP5B+/OGijbjjpdHQSsx6YQkn5VYVTbOyx3PAy65PaSKZqS9l+ix
         W3g8um2aKyRWPYng2vQxGTqk4SRQ4FwskHgph3soiC43Pd9GNS/Mf32eziSEzF9xm0ll
         d3HfbEtI0621Kr0zTsd/ydUtY4fdVBjnghOritY+mE4+9yFMAwgUlnhwzqch3ZbkX/8q
         L4M8FRCY03VxzUvwFVEU1/4u4RsX7XzNuFfzm9w5mHCbkehfrO+zIN8sOYzAQs0ghXH1
         GbXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW4oB36PVKoCZNIElOepjNHW2n083mQaQw6bgkKK00YR9wdphOs
	nyTcIcZ8EI5PvpVtLrLgRmY=
X-Google-Smtp-Source: APXvYqw1LD5yQvpoPWELaqgWbiX6OYxot9AvJ+0Ql9YYJwjxGmlqiLXwUYv5IMS47vaSyUtE+680ww==
X-Received: by 2002:adf:e74c:: with SMTP id c12mr9843982wrn.173.1567069557090;
        Thu, 29 Aug 2019 02:05:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4e0c:: with SMTP id g12ls742386wmh.4.gmail; Thu, 29 Aug
 2019 02:05:56 -0700 (PDT)
X-Received: by 2002:a1c:c78f:: with SMTP id x137mr3310865wmf.42.1567069556272;
        Thu, 29 Aug 2019 02:05:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567069556; cv=none;
        d=google.com; s=arc-20160816;
        b=RDwHvc9aiYGsb2RXm0djQ8DbsC1y1nwlyKDluQ1vTL6h5BAxzaKm4z77OQDpK7cDXJ
         4ndbOSpdRsrxH0zS7g029To/HOI6nYv51scDJKwoo/hJgl5oc0cUHOMcbbDFmqL5UqG/
         CarYDqbDqo06lhTF5tIo0TUIFoBC05F39VLpqpbRSBwh/YXsjj8HlSaUwRq7gQMIFiG/
         oYXDH7AOtI5FRTzFuRv2oqAZEIEZf/SFM0Wz01F9py7LYhb7cSX6zksvAt4l3r3ekgGJ
         QjTJIwPt1X/GYDbgCV2gLnzfZFi5mYv+12JNL1bm9z4dgs0TmmTrZncuvjB9PEqK0RHC
         UfFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PH15CXoUWSHFT2n3BVwBS++iyb/uJ0CNVO0a7Vt6EJk=;
        b=oSXvjjESMnIi2vnp9qpd0cm56WazcM+OrVZZpS4zPy6KKTD1vkV61/BUME/Skb459G
         kcFxSBDNoATEntLKb7CBecll3DrYatgwIZQxMBl4WHI9Z7aguNiXeVqaDJ8nTcQbv2EW
         uZy87t70p+FZqiTNnoxuIiYDbHs/aBgJli/ilGP96IRZVBRoNj7c+oCaMWcnKtUjIvle
         B7QUiwRpEo7FvJlMHZkr/DRNuVV0DdZkCZrGeZi8rzWeMiM3u6HjDluwsqG23F3rJBiN
         zuzGrLWwyS5GfF1kyaAASfMGOQFYFnMhNNViElBtp0hmEX2Jc0yUz5T0245cLmfHYAcI
         d7ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nf6IKzbN;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id l9si102958wmc.0.2019.08.29.02.05.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 02:05:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id p13so2999244wmh.1
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 02:05:56 -0700 (PDT)
X-Received: by 2002:a05:600c:225a:: with SMTP id a26mr10663798wmm.81.1567069555930;
 Thu, 29 Aug 2019 02:05:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190827204007.201890-1-ndesaulniers@google.com> <CA+icZUVT8GJCPSSB=jLKLu=-OrWAj5W3Rkbx1ar0SGcEq0-D0g@mail.gmail.com>
In-Reply-To: <CA+icZUVT8GJCPSSB=jLKLu=-OrWAj5W3Rkbx1ar0SGcEq0-D0g@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 29 Aug 2019 11:05:45 +0200
Message-ID: <CA+icZUXwz96kO97djorQuBVo-Q-SMJe4m6gBKp5=gp6hSHZp3A@mail.gmail.com>
Subject: Re: [PATCH v2 00/14] treewide: prefer __section from compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Nf6IKzbN;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

> $ grep -e __section\(\" -e __section__\(\" -r
>
> arch/um/include/shared/init.h:  __attribute__((__section__(".initcall"
> level ".init"))) = fn
>

2. Only use __attribute__((__section__(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

Who reads commit messages?
/me hides

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXwz96kO97djorQuBVo-Q-SMJe4m6gBKp5%3Dgp6hSHZp3A%40mail.gmail.com.
